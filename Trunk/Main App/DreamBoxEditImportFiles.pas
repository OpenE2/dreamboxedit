unit DreamBoxEditImportFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Registry, FileCtrl, Menus, Grids,
  ShellApi, Sockets;

type
  TFormImportFiles = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    lvDir: TListView;
    bCancel: TButton;
    bProcess: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    pulvDir: TPopupMenu;
    puCheckall: TMenuItem;
    puUncheckall: TMenuItem;
    bRefresh: TButton;
    puBrowsefile: TMenuItem;
    N1: TMenuItem;
    bCheckAll: TButton;
    bUncheckAll: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCheckAllClick(Sender: TObject);
    procedure bUncheckAllClick(Sender: TObject);
    procedure lvDirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvDirCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure bRefreshClick(Sender: TObject);
    procedure pulvDirPopup(Sender: TObject);
    procedure puBrowsefileClick(Sender: TObject);
    procedure lvDirDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    SDXDir: String;
    procedure lvDirBuild(const Dir: string);
  public
    { Public declarations }
    slDX: TStringList;
  end;

var
  FormImportFiles: TFormImportFiles;

implementation

uses DreamBoxMain, DreamBoxEditBrowseFile;

{$R *.dfm}

procedure TFormImportFiles.lvDirBuild(const Dir: string);
var
  SR: TSearchRec;
  FileAttr: Integer;
  rb,c,rc,sp: Integer;
  item: TListItem;
  sdf: File;
  SDir,SatPos: String;
  buf: array[0..127] of char;
  buf2: array[0..127] of char;
  MultSat,Err: Boolean;
label
  Skipped;
begin
  lvDir.Items.BeginUpdate;
  lvDir.Items.Clear;
  lvDir.Items.EndUpdate;
  lvDir.Items.BeginUpdate;

  c := 0;
  FileAttr := 96; { = faReadOnly + faArchive + faAnyFile }
  SDir := Dir + '\*.*';
  rc := FindFirst(SDir,FileAttr,SR);
  while rc = 0 do begin
    if (SR.Name <> '.') and (SR.Name <> '..')
    then begin;
      item := lvDir.Items.Add;
      item.Checked := True;
      item.Caption := SR.Name;

      buf := '';
      MultSat := False;
      Err := False;
      AssignFile(sdf,Dir+'\'+SR.Name);
      try
        Reset(sdf,128);
      except;
        Err := True;
      end;
      if Err
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Not a SatcoDX file');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        goto Skipped;
      end;

      c := FileSize(sdf);
      BlockRead(sdf,buf,1,rb);
      if copy(buf,1,10) <> 'SATCODX110'
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Not a SatcoDX file');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        CloseFile(sdf);
        goto Skipped;
      end;

      SatPos := copy(buf,52,4);
      while rb > 0 do begin;
        BlockRead(sdf,buf2,1,rb);
        if copy(buf2,52,4) <> copy(buf,52,4)
        then begin;
          MultSat := True;
          break;
        end;
      end;
      CloseFile(sdf);

      if SatPos = ''
      then begin;
        item.Checked := False;
        item.SubItems.Add('** empty or invalid file');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        FormMain.log('w',FormMain.lwLngTrns(name,['Invalid SatcoDX file read: no satpos on position 52 of '+
                                             'first line']));
        goto Skipped;
      end;

      if MultSat
      then begin;
        item.SubItems.Add('-- multiple satellites --');
        item.SubItems.Add('-mult-');
        item.SubItems.Add('-mult-');
        goto Skipped;
      end;

      if slDX.Values[SatPos] = ''
      then begin;
        item.Checked := False;
        item.SubItems.Add('** unknown satellite');
        FormMain.log('w',FormMain.lwLngTrns(name,['Invalid SatcoDX file read: unknown satellite position']));
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        goto Skipped;
      end;

      item.SubItems.Add(slDX.Values[SatPos+'N']);
      sp := StrToInt(SatPos);
      if sp > 1800
      then sp := sp - 3600;
      item.SubItems.Add(Format('%.1n',[sp/10]));
      if slDX.Values[SatPos] <> SatPos
      then begin;
        sp := StrToInt(slDX.Values[SatPos]);
        if sp > 1800
        then sp := sp - 3600;
        item.SubItems.Add(Format('%.1n',[sp/10]));
      end
      else item.SubItems.Add('');

Skipped:
      item.SubItems.Add(IntToStr(c));
      item.SubItems.Add(Format('%.0n',[StrToFloat(IntToStr(SR.Size))]));
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(SR.Time)));
    end;
    rc := FindNext(SR);
  end;
  FindClose(sr);

  lvDir.Items.EndUpdate;
end;

procedure TFormImportFiles.FormShow(Sender: TObject);
var
  Reg: TRegistry;
  Key,fn,s: String;
  tf: Textfile;
begin
  Caption := FormMain.lwLngTrns(name,['Select the SatcoDX files to process']);
  
  lvDir.Columns[0].Caption := FormMain.lwLngTrns(name,['Filename']);
  lvDir.Columns[1].Caption := FormMain.lwLngTrns(name,['SatName']);
  lvDir.Columns[2].Caption := FormMain.lwLngTrns(name,['SatPos']);
  lvDir.Columns[3].Caption := FormMain.lwLngTrns(name,['RealPos']);
  lvDir.Columns[4].Caption := FormMain.lwLngTrns(name,['#Services']);
  lvDir.Columns[5].Caption := FormMain.lwLngTrns(name,['Size']);
  lvDir.Columns[6].Caption := FormMain.lwLngTrns(name,['Filedate']);

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Key := Name+'.Top';
  if Reg.ValueExists(key)
  then Top := Reg.ReadInteger(key)
  else Top := 200;
  Key := Name+'.Left';
  if Reg.ValueExists(key)
  then Left := Reg.ReadInteger(key)
  else Left := 300;
  SDXDir := Reg.ReadString('SatcoDX Directory');
  Reg.CloseKey;
  Reg.Destroy;

  GroupBox1.Caption := 'SatcoDX files (*.sdx) in directory ' + SDXDir;

  { try to read the SatcoDX translation table in slDX stringlist }
  fn := ExtractFilePath(application.ExeName) + 'SatcoDX TransTable.txt';
  if not FileExists(fn)
  then slDX.Clear
  else begin;
    AssignFile(tf,fn);
    Reset(tf);
    while not (Eof(tf)) and (LowerCase(s) <> '/start') do
      ReadLn(tf,s);
    ReadLn(tf,s);
    ReadLn(tf,s);
    while not (Eof(tf)) and (LowerCase(s) <> '/end')
    do begin;
      slDX.Add(copy(s,1,4)+'='+copy(s,6,4));
      slDX.Add(copy(s,1,4)+'N='+copy(s,11,length(s)-10));
      ReadLn(tf,s);
    end;
    CloseFile(tf);
  end;

  lvDirBuild(SDXDir);
end;

procedure TFormImportFiles.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Key := Name+'.Top';
  Reg.WriteInteger(key,Top);
  Key := Name+'.Left';
  Reg.WriteInteger(key,Left);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormImportFiles.bCheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvDir.Items.Count - 1 do begin;
    if lvDir.Items[i].SubItems[1] <> '----'
    then lvDir.Items[i].Checked := True
    else lvDir.Items[i].Checked := false;
  end;
end;

procedure TFormImportFiles.bUncheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvDir.Items.Count - 1 do begin;
    lvDir.Items[i].Checked := False;
  end;
end;

procedure TFormImportFiles.lvDirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  if Key = 32
  then begin;
    for i := 0 to lvDir.Items.Count - 1 do begin;
      if lvDir.Items[i].Selected
      then begin;
        if lvDir.Items[i].SubItems[1] <> '----'
        then lvDir.Items[i].Checked := not lvDir.Items[i].Checked;
      end;
    end;
    key := 0;
  end;
end;

procedure TFormImportFiles.lvDirCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvDir.Canvas.Brush.Color := $00F9FAFB
  else lvDir.Canvas.Brush.Color := clWhite;
  lvDir.Canvas.FillRect(Item.DisplayRect(drBounds));
  if Item.Checked
  then lvDir.Canvas.Font.Color := clBlack
  else lvDir.Canvas.Font.Color := clMedGray;
end;

procedure TFormImportFiles.bRefreshClick(Sender: TObject);
begin
  lvDirBuild(SDXDir);
end;

procedure TFormImportFiles.pulvDirPopup(Sender: TObject);
begin
  if lvDir.Selected = nil
  then pulvDir.Items[3].Enabled := False
  else pulvDir.Items[3].Enabled := True;
end;

procedure TFormImportFiles.puBrowsefileClick(Sender: TObject);
var
  fn: String;
  sdf: File;
  buf: array[0..127] of char;
  rb: Integer;
begin
  if lvDir.Selected = nil
  then exit;


  fn := SDXDir+'\' + lvDir.Selected.Caption;
  if not FileExists(fn)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['File % can not be found.',fn]),mtError,[mbOK],0);
    exit;
  end;

  with FormBrowseFile.Memo1 do begin;
    Lines.Clear;
    AssignFile(sdf,fn);
    Reset(sdf,128);
    BlockRead(sdf,buf,1,rb);
    while rb > 0 do begin;
      Lines.Add(trim(buf));
      BlockRead(sdf,buf,1,rb);
    end;
    CloseFile(sdf);
  end;

  FormBrowseFile.ntgbBrowseFile.Caption := SDXDir + '\' +
                                           lvDir.Selected.Caption;

  FormBrowseFile.ShowModal;
end;

procedure TFormImportFiles.lvDirDblClick(Sender: TObject);
begin
  if lvDir.Selected = nil
  then exit;

  if lvDir.Selected.SubItems[1] <> '----'
  then lvDir.Selected.Checked := not lvDir.Selected.Checked;
end;

procedure TFormImportFiles.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  slDX := TStringList.Create;
end;

end.
