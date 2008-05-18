unit DreamBoxEditFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LWPanel, ExtCtrls, Registry, ShellApi, ComCtrls;

type
  TFormFiles = class(TForm)
    Panel1: TPanel;
    bBack: TButton;
    bRestToLBU: TButton;
    bRestToOrg: TButton;
    lvFiles: TListView;
    Label1: TLabel;
    lDir: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRestToLBUClick(Sender: TObject);
    procedure bRestToOrgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lvFilesCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvFilesCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
  private
    { Private declarations }
    FileList: TStringList;
    procedure BuildDisplay();
    function GetFileSize(const fn: String): String;
  public
    { Public declarations }
  end;

var
  FormFiles: TFormFiles;

implementation

uses DreamBoxMain;

{$R *.dfm}

function TFormFiles.GetFileSize(const fn: String): String;
var
  f: File of byte;
  sz: Longint;
begin
  if not FileExists(fn)
  then result := 'n/a'
  else begin;
    AssignFile(f,fn);
    Reset(f);
    sz := FileSize(f);
    CloseFile(f);
    Result := Format('%.0n',[StrToFloat(IntToStr(sz))]);
  end;
end;

procedure TFormFiles.BuildDisplay();
var
  item: TListItem;
  i: Integer;
  f: String;
  pLD: ^TListData;
begin
  FileList.Clear;
  FileList.Add('services');
  FileList.Add('services.locked');
  FileList.Add('bouquets');
  FileList.Add('satellites.xml');
  FileList.Add('userbouquets.tv.epl');
  FileList.Add('lamedb');
  FileList.Add('bouquets.tv');
  FileList.Add('bouquets.radio');
  for i := 0 to FormMain.tvBouquets.Items.Count - 1 do begin;
    if (FormMain.tvBouquets.Items.Item[i].Level = 1) and
       (FormMain.tvBouquets.Items.Item[i].Parent.Text[1] = 'T')
    then begin;
      pLD := FormMain.tvBouquets.Items.Item[i].Data;
      FileList.Add(pld.FileName);
    end;
  end;
  FileList.Add('userbouquets.radio.epl');
  for i := 0 to FormMain.tvBouquets.Items.Count - 1 do begin;
    if (FormMain.tvBouquets.Items.Item[i].Level = 1) and
       (FormMain.tvBouquets.Items.Item[i].Parent.Text[1] = 'R')
    then begin;
      pLD := FormMain.tvBouquets.Items.Item[i].Data;
      FileList.Add(pld.FileName);
    end;
  end;

  if FormMain.Dir = ''
  then exit;

  lDir.Caption := FormMain.Dir;
  lvFiles.Items.Clear;

  for i := 0 to FileList.Count - 1 do begin;
    item := lvFiles.Items.Add;
    item.Checked := False;
    item.Caption := FileList[i];
    f := FormMain.Dir + '\' + FileList[i];
    if FileExists(f)
    then begin;
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(FileAge(f))));
      item.SubItems.Add(GetFileSize(f));
    end
    else begin;
      item.SubItems.Add('n/a');
      item.SubItems.Add('n/a');
    end;
    f := FormMain.Dir + '\' + FileList[i] + '_bak';
    if FileExists(f)
    then begin;
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(FileAge(f))));
      item.SubItems.Add(GetFileSize(f));
      if item.SubItems[2] <> item.SubItems[0]
      then item.Checked := True
    end
    else begin;
      item.SubItems.Add('n/a');
      item.SubItems.Add('n/a');
    end;
    f := FormMain.Dir + '\' + FileList[i] + '_org';
    if FileExists(f)
    then begin;
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(FileAge(f))));
      item.SubItems.Add(GetFileSize(f));
      if item.SubItems[4] <> item.SubItems[0]
      then item.Checked := True;
    end
    else begin;
      item.SubItems.Add('n/a');
      item.SubItems.Add('n/a');
    end;
  end;
end;

procedure TFormFiles.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['DreamBoxEdit File Info and Restore']);
  
  lvFiles.Columns[0].Caption := FormMain.lwLngTrns(name,['Filename']);
  lvFiles.Columns[1].Caption := FormMain.lwLngTrns(name,['Date']);
  lvFiles.Columns[2].Caption := FormMain.lwLngTrns(name,['Size']);
  lvFiles.Columns[3].Caption := FormMain.lwLngTrns(name,['Backup Date']);
  lvFiles.Columns[4].Caption := FormMain.lwLngTrns(name,['Backup Size']);
  lvFiles.Columns[5].Caption := FormMain.lwLngTrns(name,['Original Date']);
  lvFiles.Columns[6].Caption := FormMain.lwLngTrns(name,['Original Size']);

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
  Reg.CloseKey;
  Reg.Destroy;

  BuildDisplay();
end;

procedure TFormFiles.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormFiles.bRestToLBUClick(Sender: TObject);
var
  i: Integer;
  o,n: String;
  po,pn: pchar;
begin
  if MessageDlg(FormMain.lwLngTrns(name,[
                'Are you sure you want discard all changes you made since you last saved?']),
                mtConfirmation,[mbYes,mbNo],0) <> mrYes
  then exit;

  FormMain.Log('i',FormMain.lwLngTrns(name,['Restore file(s) to last backup']));
  FormMain.Log('i',FormMain.lwLngTrns(name,['Directory is %',FormMain.Dir]));

  for i := 0 to lvFiles.Items.Count - 1 do begin;
    if lvFiles.Items[i].Checked
    then begin;
      if (lvFiles.Items[i].SubItems[2] <> 'n/a') and
         (FileExists(FormMain.Dir + '\' + lvFiles.Items[i].Caption + '_bak'))
      then begin;
        n := FormMain.Dir + '\' + lvFiles.Items[i].Caption;
        o := FormMain.Dir + '\' + lvFiles.Items[i].Caption + '_bak';
        if FileExists(n)
        then begin;
          if DeleteFile(n)
          then FormMain.Log('i',FormMain.lwLngTrns(name,['File % deleted',n]))
          else begin;
            FormMain.Log('e',FormMain.lwLngTrns(name,['Error trying to delete file %',n]));
            MessageDlg(FormMain.lwLngTrns(name,['Error trying to delete file %',n]),mtError,[mbOK],0);
            exit;
          end;
          po := pchar(o);
          pn := pchar(n);
          if CopyFile(po,pn,False)
          then FormMain.Log('i',FormMain.lwLngTrns(name,['File % copied to %',o,n]))
          else begin;
            FormMain.Log('e',FormMain.lwLngTrns(name,['Error copying % to %',o,n]));
            MessageDlg(FormMain.lwLngTrns(name,['Error copying % to %',o,n]),mtError,[mbOK],0);
            exit;
          end;
          if DeleteFile(o)
          then FormMain.Log('i',FormMain.lwLngTrns(name,['File % deleted',o]))
          else begin;
            FormMain.Log('e',FormMain.lwLngTrns(name,['Error trying to delete file %',o]));
            MessageDlg(FormMain.lwLngTrns(name,['Error trying to delete file %',o]),mtError,[mbOK],0);
            exit;
          end;
        end;
      end;
    end;
  end;

  FormMain.AutoOpen := True;
  //FormMain.tbOpen.Click();
  FormMain.acFileOpenExecute(Sender);
  BuildDisplay();
end;

procedure TFormFiles.bRestToOrgClick(Sender: TObject);
var
  i: Integer;
  o,n: String;
  po,pn: pchar;
begin
  if MessageDlg(FormMain.lwLngTrns(name,['Are you sure you want discard all changes you ever made to this set '#13 +
                'and restore to the original files?']),
                mtConfirmation,[mbYes,mbNo],0) <> mrYes
  then exit;

  FormMain.Log('i',FormMain.lwLngTrns(name,['Restore file(s) to original files']));
  FormMain.Log('i',FormMain.lwLngTrns(name,['Directory is %',FormMain.Dir]));

  for i := 0 to lvFiles.Items.Count - 1 do begin;
    if lvFiles.Items[i].Checked
    then begin;
      if (lvFiles.Items[i].SubItems[4] <> 'n/a') and
         (FileExists(FormMain.Dir + '\' + lvFiles.Items[i].Caption + '_org'))
      then begin;
        n := FormMain.Dir+'\' + lvFiles.Items[i].Caption ;
        o := FormMain.Dir+'\' + lvFiles.Items[i].Caption + '_org';
        if FileExists(n)
        then begin;
          if DeleteFile(n)
          then FormMain.Log('i',FormMain.lwLngTrns(name,['File % deleted',n]))
          else begin;
            FormMain.Log('e',FormMain.lwLngTrns(name,['Error trying to delete file %',n]));
            MessageDlg(FormMain.lwLngTrns(name,['Error trying to delete file %',n]),mtError,[mbOK],0);
            exit;
          end;
        end;
        po := pchar(o);
        pn := pchar(n);
        if CopyFile(po,pn,False)
        then FormMain.Log('i',FormMain.lwLngTrns(name,['File % copied to %',o,n]))
        else begin;
          FormMain.Log('e',FormMain.lwLngTrns(name,['Error copying % to %',o,n]));
          MessageDlg(FormMain.lwLngTrns(name,['Error copying % to %',o,n]),mtError,[mbOK],0);
          exit;
        end;
      end;
    end;
  end;

  FormMain.AutoOpen := True;
  //FormMain.tbOpen.Click();
  FormMain.acFileOpenExecute(Sender);
  BuildDisplay();
end;

procedure TFormFiles.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  FileList := TStringList.Create;
end;

procedure TFormFiles.FormDestroy(Sender: TObject);
begin
  FileList.Free;
end;

procedure TFormFiles.lvFilesCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvFiles.Canvas.Brush.Color := $00F9FAFB
  else lvFiles.Canvas.Brush.Color := clWhite;
  lvFiles.Canvas.FillRect(Item.DisplayRect(drBounds));
end;

procedure TFormFiles.lvFilesCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
var
  ix: Integer;
begin
  ix := SubItem - 1;
  if Item.SubItems[ix] = 'n/a'
  then lvFiles.Canvas.Font.Color := clMedGray
  else begin;
    if (ix = 2) or
       (ix = 3)
    then
      if (Item.SubItems[2] = Item.SubItems[0]) and
         (Item.SubItems[3] = Item.SubItems[1])
      then lvFiles.Canvas.Font.Color := clBlack
      else lvFiles.Canvas.Font.Color := clGreen
    else
      if (ix = 4) or
         (ix = 5)
      then
        if (Item.SubItems[4] = Item.SubItems[0]) and
           (Item.SubItems[5] = Item.SubItems[1])
        then lvFiles.Canvas.Font.Color := clBlack
        else lvFiles.Canvas.Font.Color := clGreen
      else lvFiles.Canvas.Font.Color := clBlack;
  end;
end;

end.
