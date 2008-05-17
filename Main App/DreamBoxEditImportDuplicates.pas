unit DreamBoxEditImportDuplicates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Registry;

type
  TFormImportDuplicates = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    bCancel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    _lTSID: TLabel;
    _lNID: TLabel;
    _lSID: TLabel;
    lvSDXDup: TListView;
    _lTyp: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    _lSatName: TLabel;
    _lSatPos: TLabel;
    _lFreq: TLabel;
    _lSymb: TLabel;
    _lPol: TLabel;
    _lFEC: TLabel;
    bNext: TButton;
    bUncheckAll: TButton;
    bCheckAll: TButton;
    Label11: TLabel;
    _lUniq: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bNextClick(Sender: TObject);
    procedure lvSDXDupDblClick(Sender: TObject);
    procedure lvSDXDupCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvSDXDupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvSDXDupClick(Sender: TObject);
    procedure bUncheckAllClick(Sender: TObject);
    procedure bCheckAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function CheckDup(): Integer;
  public
    { Public declarations }
  end;

var
  FormImportDuplicates: TFormImportDuplicates;

implementation

uses DreamBoxEditImport, DreamBoxMain;

{$R *.dfm}

function TFormImportDuplicates.CheckDup(): Integer;
var
  i,j,ss,styp: Integer;
  sid,tsid,nid,typ,uniq: String;
  item: TListItem;
begin;
  _lSID.Caption := 'n/a';
  _lUniq.Caption := 'n/a';
  _lTSID.Caption := 'n/a';
  _lNID.Caption := 'n/a';
  _lTyp.Caption := 'n/a';
  _lSatName.Caption := 'n/a';
  _lSatPos.Caption := 'n/a';
  _lFreq.Caption := 'n/a';
  _lPol.Caption := 'n/a';
  _lSymb.Caption := 'n/a';
  _lFEC.Caption := 'n/a';

  lvSDXDup.Items.Clear;
  sid := '';
  uniq := '';
  tsid := '';
  nid := '';
  typ := '';
  ss := 0;
  for i := 0 to FormImport.lvSDX.Items.Count - 1 do begin;
    if (FormImport.lvSDX.Items[i].Checked) and
       (FormImport.lvSDX.Items[i].SubItems[6] = sid) and
       (FormImport.lvSDX.Items[i].SubItems[15] = uniq) and
       (FormImport.lvSDX.Items[i].SubItems[7] = tsid) and
       (FormImport.lvSDX.Items[i].SubItems[8] = nid) and
       (FormImport.lvSDX.Items[i].SubItems[2] = typ)
    then begin;
      _lTSID.Caption := tsid;
      _lNID.Caption := nid;
      _lSID.Caption := sid;
      _lUniq.Caption := uniq;
      _lTyp.Caption := typ;
      if typ = 'T'
      then styp := 1
      else styp := 2;
      if FormMain.cdsSERV.Locate('servSid;servUniq;servTsid;servNid;servType',
                                 VarArrayOf([sid,uniq,tsid,nid,styp]),[])
      then begin;
        _lSatPos.Caption := FormMain.cdsSERV.FieldByName('servPos').AsString;
        _lFreq.Caption := FormMain.cdsSERV.FieldByName('servFreq').AsString;
        _lPol.Caption := FormMain.cdsSERV.FieldByName('servPol').AsString;
        _lSymb.Caption := FormMain.cdsSERV.FieldByName('servSymb').AsString;
        _lFEC.Caption := FormMain.cdsSERV.FieldByName('servFEC').AsString;
        if FormMain.cdsPos.FindKey([_lSatPos.Caption])
        then _lSatName.Caption := FormMain.cdsPos.FieldByName('posName').AsString
        else _lSatName.Caption := '';
      end;

      for j := ss to FormImport.lvSDX.Items.Count - 1 do begin;
        if (FormImport.lvSDX.Items[j].SubItems[6] = sid) and
           (FormImport.lvSDX.Items[j].SubItems[15] = uniq) and
           (FormImport.lvSDX.Items[j].SubItems[7] = tsid) and
           (FormImport.lvSDX.Items[j].SubItems[8] = nid) and
           (FormImport.lvSDX.Items[j].SubItems[2] = typ)
        then begin;
          if FormImport.lvSDX.Items[j].Checked
          then begin;
            item := lvSDXDup.Items.Add;
            item.Checked := True;
            item.Caption := FormImport.lvSDX.Items[j].Caption;
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[0]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[1]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[3]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[4]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[5]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[9]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[10]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[11]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[12]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[13]);
            item.SubItems.Add(FormImport.lvSDX.Items[j].SubItems[14]);
            item.SubItems.Add(IntToStr(j));

            FormImport.lvSDX.Items[j].MakeVisible(False);
          end;
        end
        else break;
      end;
      FormImport.lvSDX.Items[ss].MakeVisible(False);
      break;
    end;
    if FormImport.lvSDX.Items[i].Checked
    then begin;
      sid := FormImport.lvSDX.Items[i].SubItems[6];
      uniq := FormImport.lvSDX.Items[i].SubItems[15];
      tsid := FormImport.lvSDX.Items[i].SubItems[7];
      nid := FormImport.lvSDX.Items[i].SubItems[8];
      typ := FormImport.lvSDX.Items[i].SubItems[2];
      ss := i;
    end;  
  end;

  Result := lvSDXDup.Items.Count;
end;

procedure TFormImportDuplicates.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['SatcoDX import duplicates']);
  
  lvSDXDup.Columns[0].Caption := FormMain.lwLngTrns(name,['Satellite name']);
  lvSDXDup.Columns[1].Caption := FormMain.lwLngTrns(name,['SatPos']);
  lvSDXDup.Columns[2].Caption := FormMain.lwLngTrns(name,['Service name']);
  lvSDXDup.Columns[3].Caption := FormMain.lwLngTrns(name,['Frequency']);
  lvSDXDup.Columns[4].Caption := FormMain.lwLngTrns(name,['Pol.']);
  lvSDXDup.Columns[5].Caption := FormMain.lwLngTrns(name,['Symbolrate']);
  lvSDXDup.Columns[6].Caption := FormMain.lwLngTrns(name,['FEC']);
  lvSDXDup.Columns[7].Caption := FormMain.lwLngTrns(name,['Serv.name in DB']);
  lvSDXDup.Columns[8].Caption := FormMain.lwLngTrns(name,['VPID']);
  lvSDXDup.Columns[9].Caption := FormMain.lwLngTrns(name,['APID']);
  lvSDXDup.Columns[10].Caption := FormMain.lwLngTrns(name,['PPID']);
  lvSDXDup.Columns[11].Caption := FormMain.lwLngTrns(name,['Lng']);

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

  CheckDup();
end;

procedure TFormImportDuplicates.FormClose(Sender: TObject;
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

procedure TFormImportDuplicates.bNextClick(Sender: TObject);
var
  i,t: Integer;
begin
  for i := 0 to lvSDXDup.Items.Count - 1 do begin;
    t := StrToInt(lvSDXDup.Items[i].SubItems[11]);
    FormImport.lvSDX.Items[t].Checked := lvSDXDup.Items[i].Checked;
  end;

  if CheckDup() = 0
  then ModalResult := mrOK;
end;

procedure TFormImportDuplicates.lvSDXDupDblClick(Sender: TObject);
begin
  if lvSDXDup.Selected = nil
  then exit;

  lvSDXDup.Selected.Checked := not lvSDXDup.Selected.Checked;
end;

procedure TFormImportDuplicates.lvSDXDupCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvSDXDup.Canvas.Brush.Color := $00F9FAFB
  else lvSDXDup.Canvas.Brush.Color := clWhite;
  lvSDXDup.Canvas.FillRect(Item.DisplayRect(drBounds));
  if Item.Checked
  then lvSDXDup.Canvas.Font.Color := clBlack
  else lvSDXDup.Canvas.Font.Color := clMedGray;
end;

procedure TFormImportDuplicates.lvSDXDupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  i: Integer;
begin
  if Key = 32
  then begin;
    for i := 0 to lvSDXDup.Items.Count - 1 do begin;
      if lvSDXDup.Items[i].Selected
      then lvSDXDup.Items[i].Checked := not lvSDXDup.Items[i].Checked;
    end;
    key := 0;
  end;
end;

procedure TFormImportDuplicates.lvSDXDupClick(Sender: TObject);
var
  t: Integer;
begin
  if lvSDXDup.Selected = nil
  then exit;

  t := StrToInt(lvSDXDup.Selected.SubItems[11]);
  FormImport.lvSDX.Items[t].MakeVisible(False);
end;

procedure TFormImportDuplicates.bUncheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvSDXDup.Items.Count - 1 do begin;
    lvSDXDup.Items[i].Checked := False;
  end;
end;

procedure TFormImportDuplicates.bCheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvSDXDup.Items.Count - 1 do begin;
    lvSDXDup.Items[i].Checked := True;
  end;
end;

procedure TFormImportDuplicates.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
