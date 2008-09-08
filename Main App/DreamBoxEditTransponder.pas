unit DreamBoxEditTransponder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, registry, StdCtrls, ComCtrls;

type
  TFormTransponder = class(TForm)
    Panel1: TPanel;
    bCancel: TButton;
    bSave: TButton;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    ntLabel26: TLabel;
    Label6: TLabel;
    ntLabel30: TLabel;
    lFEC: TLabel;
    ntlmFEC: TLabel;
    lSymb: TLabel;
    ntlMSymb: TLabel;
    lPol: TLabel;
    ntlMPol: TLabel;
    Label23: TLabel;
    ntLabel35: TLabel;
    Label7: TLabel;
    ntLabel28: TLabel;
    Label8: TLabel;
    ntLabel40: TLabel;
    Label31: TLabel;
    ePos: TComboBox;
    eTSID: TEdit;
    eFEC: TComboBox;
    eSymb: TEdit;
    ePol: TComboBox;
    eNamespace: TEdit;
    bCalculate: TButton;
    eNID: TEdit;
    eFreq: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    lvTransp: TListView;
    _lCntServices: TLabel;
    Label2: TLabel;
    ntLabel3: TLabel;
    eTrExtra: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSaveClick(Sender: TObject);
    procedure bCalculateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvTranspCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvTranspColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvTranspCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
  private
    { Private declarations }
    saveNamespace, saveTSID,saveNID: String;
    lvTranspColumnToSort: Integer;
    ttype: String;
  public
    { Public declarations }
  end;

var
  FormTransponder: TFormTransponder;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormTransponder.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
  i,p,c: Integer;
  servsif: String;
  servflt: Boolean;
  item: TListItem;
begin
  Caption := FormMain.lwLngTrns(name,['Transponder data']);

  lvTransp.Columns[0].Caption := FormMain.lwLngTrns(name,['Name']);
  lvTransp.Columns[1].Caption := FormMain.lwLngTrns(name,['Package']);
  lvTransp.Columns[2].Caption := FormMain.lwLngTrns(name,['SID']);
  lvTransp.Columns[3].Caption := FormMain.lwLngTrns(name,['Type']);

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

  screen.Cursor := crHourGlass;

  saveNamespace := FormMain.lvServ.Selected.SubItems[18];
  saveTSID := FormMain.lvServ.Selected.SubItems[10];
  saveNID := FormMain.lvServ.Selected.SubItems[11];

  eTSID.Text := FormMain.lvServ.Selected.SubItems[10];
  eNID.Text := FormMain.lvServ.Selected.SubItems[11];
  eNamespace.Text := FormMain.cdsSERV.FieldByName('servUniq').AsString;
  ePos.Clear;
  FormMain.cdsPos.First;
  while not FormMain.cdsPos.Eof do begin;
    if FormMain.cdsPos.FieldByName('PosInt').AsInteger < 8888
    then ePos.Items.Add(FormMain.cdsPos.FieldByName('PosStr').AsString);
    FormMain.cdsPos.Next;
  end;
  ttype := FormMain.cdsSERV.FieldByName('servSTC').AsString;
  if ttype = 's'
  then begin;
    for i := 0 to ePos.Items.Count - 1 do
      if ePos.Items[i] = FormMain.lvServ.Selected.SubItems[8]
      then break;
    p := i;
    ePos.ItemIndex := p;
    ePos.Enabled := True;
  end
  else begin;
    if ttype = 't'
    then begin;
      ePos.Clear;
      ePos.Items.Add('Terrestrial');
      p := 0;
      ePos.ItemIndex := p;
    end
    else begin;
      ePos.Clear;
      ePos.Items.Add('Cable');
      p := 0;
      ePos.ItemIndex := p;
    end;
    ePos.Enabled := False;
  end;
  eFreq.Text := FormMain.cdsSERV.FieldByName('servFreq').Asstring;
  eTrExtra.Text := FormMain.cdsSERV.FieldByName('servTrExtra').AsString;

  if FormMain.cdsSERV.FieldByName('servSTC').AsString = 's'
  then begin; { Satellite }
    eSymb.Text := FormMain.cdsSERV.FieldByName('servSymb').AsString;
    ePol.ItemIndex := FormMain.cdsSERV.FieldByName('servPol').AsInteger;
    eFEC.ItemIndex := FormMain.cdsSERV.FieldByName('servFEC').AsInteger;
    lSymb.Visible := True;
    ntlMSymb.Visible := True;
    eSymb.Visible := True;
    lPol.Visible := True;
    ntlMPol.Visible := True;
    ePol.Visible := True;
    lFEC.Visible := True;
    ntlMFEC.Visible := True;
    eFEC.Visible := True;
  end
  else begin; { Terrestrial or Cable }
    lSymb.Visible := False;
    ntlMSymb.Visible := False;
    eSymb.Visible := False;
    lPol.Visible := False;
    ntlMPol.Visible := False;
    ePol.Visible := False;
    lFEC.Visible := False;
    ntlMFEC.Visible := False;
    eFEC.Visible := False;
  end;

  servsif := FormMain.cdsSERV.IndexFieldNames;
  FormMain.cdsSERV.IndexFieldNames := 'servUniq;servTSID;servNID';
  servflt := FormMain.cdsSERV.Filtered;
  FormMain.cdsSERV.Filtered := False;

  c := 0;
  lvTransp.Items.Clear;
  FormMain.cdsSERV.First;
  while not FormMain.cdsSERV.Eof do begin;
    if (FormMain.cdsSERV.FieldByName('servUniq').AsString = saveNamespace) and
       (FormMain.cdsSERV.FieldByName('servTSID').AsString = saveTSID) and
       (FormMain.cdsSERV.FieldByName('servNID').AsString = saveNID)
    then begin;
      inc (c);
      item := lvTransp.Items.Add;
      item.Caption := FormMain.CleanText(FormMain.cdsSERV.FieldByName('servName').AsString);
      item.SubItems.Add(FormMain.CleanText(FormMain.cdsSERV.FieldByName('servPackage').AsString));
      item.SubItems.Add(FormMain.cdsSERV.FieldByName('servSID').AsString);
      item.SubItems.Add(FormMain.TrnsServType(FormMain.cdsServ.FieldByName('servType').AsInteger));
    end;
    FormMain.cdsSERV.Next;
  end;
  _lCntServices.Caption := IntToStr(c) + ' services';

  FormMain.cdsSERV.IndexFieldNames := servsif;
  FormMain.cdsSERV.Filtered := servflt;

  screen.Cursor := crDefault;
end;

procedure TFormTransponder.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormTransponder.bSaveClick(Sender: TObject);
var
  p: String;
  c,i: Integer;
  servsif: String;
  err,servflt: Boolean;
begin
  err := False;
  if ttype = 's'
  then begin;
    if (ePos.Text = '') or
       (eNID.Text = '') or
       (eTSID.Text = '') or
       (eFreq.Text = '') or
       (ePol.Text = '') or
       (eSymb.Text = '') or
       (eFEC.Text = '') or
       (eNameSpace.Text = '')
    then err := True;
  end
  else begin;
    if (ePos.Text = '') or
       (eNID.Text = '') or
       (eTSID.Text = '') or
       (eFreq.Text = '') or
       (eNameSpace.Text = '')
    then err := True;
  end;

  if err
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Enter something in all fields marked with a red *!']),
               mtError,[mbOK],0);
    exit;
  end;

  if not FormMain.StrIsNumeric(eFreq.Text,False)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Frequency must be a numeric value!']),
               mtError,[mbOK],0);
    exit;
  end;

  servsif := FormMain.cdsSERV.IndexFieldNames;
  FormMain.cdsSERV.IndexFieldNames := 'servUniq;servTSID;servNID';
  servflt := FormMain.cdsSERV.Filtered;
  FormMain.cdsSERV.Filtered := False;

  if (eNameSpace.Text <> saveNameSpace) or
     (eTSID.Text <> saveTSID) or
     (eNID.Text <> saveNID)
  then begin;
    if FormMain.cdsSERV.FindKey([eNamespace.Text,eTSID.Text,eNID.Text])
    then begin;
      if MessageDlg(FormMain.lwLngTrns(name,['You changed the key data of the transponder definition but ' +
                                             'a transponder with this key already exists.~~' +
                                             'Are you sure you want to add the services of this transponder ' +
                                             'to the already existing transponder?']),
                    mtConfirmation,[mbYes,mbNo],0) <> mrYes
      then begin;
        FormMain.cdsSERV.IndexFieldNames := servsif;
        FormMain.cdsSERV.Filtered := servflt;
        exit;
      end;
    end;
  end;

  screen.Cursor := crHourGlass;

  FormMain.cdsSERV.IndexFieldNames := '';
  FormMain.ServEdit := True;
  c := 0;
  FormMain.cdsSERV.First;
  while not FormMain.cdsSERV.Eof do begin;
    if (FormMain.cdsSERV.FieldByName('servUniq').AsString = saveNamespace) and
       (FormMain.cdsSERV.FieldByName('servTSID').AsString = saveTSID) and
       (FormMain.cdsSERV.FieldByName('servNID').AsString = saveNID)
    then begin;
      inc(c);
      FormMain.cdsSERV.Edit;
      FormMain.cdsSERV.FieldByName('servTSID').AsString := eTSID.Text;
      FormMain.cdsSERV.FieldByName('servNID').AsString := eNID.Text;
      FormMain.cdsSERV.FieldByName('servTypeTxt').AsString := FormMain.TrnsServType(FormMain.cdsServ.FieldByName('servType').AsInteger);
      FormMain.cdsSERV.FieldByName('servFreq').AsString := eFreq.Text;
      FormMain.cdsSERV.FieldByName('servSymb').AsString := eSymb.Text;
      FormMain.cdsSERV.FieldByName('servPol').AsInteger := ePol.ItemIndex;
      FormMain.cdsSERV.FieldByName('servFEC').AsInteger := eFEC.ItemIndex;
      if FormMain.cdsSERV.FieldByName('servSTC').AsString = 's' { can only change for satellite services}
      then p := FloatToStr(StrToFloat(ePos.Items[ePos.ItemIndex])*10);
      FormMain.cdsSERV.FieldByName('servPos').AsString := p;
      FormMain.cdsSERV.FieldByName('servUniq').AsString := eNamespace.Text;
      FormMain.cdsSERV.FieldByName('servTrExtra').AsString := eTrExtra.Text;
      FormMain.cdsSERV.Post;
    end;
    FormMain.cdsSERV.Next;
  end;
  FormMain.ServEdit :=  False;

  FormMain.cdsFTV.First;
  while not FormMain.cdsFTV.Eof do begin;
    if (FormMain.cdsFTV.FieldByName('ftvUniq').AsString = saveNamespace) and
       (FormMain.cdsFTV.FieldByName('ftvTSID').AsString = saveTSID) and
       (FormMain.cdsFTV.FieldByName('ftvNID').AsString = saveNID)
    then begin;
      FormMain.cdsFTV.Edit;
      FormMain.cdsFTV.FieldByName('ftvUniq').AsString := eNamespace.Text;
      FormMain.cdsFTV.FieldByName('ftvTSID').AsString := eTSID.Text;
      FormMain.cdsFTV.FieldByName('ftvNID').AsString := eNID.Text;
      FormMain.cdsFTV.Post;
    end;
    FormMain.cdsFTV.Next;
  end;

  FormMain.cdsFRD.First;
  while not FormMain.cdsFRD.Eof do begin;
    if (FormMain.cdsFRD.FieldByName('frdUniq').AsString = saveNamespace) and
       (FormMain.cdsFRD.FieldByName('frdTSID').AsString = saveTSID) and
       (FormMain.cdsFRD.FieldByName('frdNID').AsString = saveNID)
    then begin;
      FormMain.cdsFRD.Edit;
      FormMain.cdsFRD.FieldByName('frdUniq').AsString := eNamespace.Text;
      FormMain.cdsFRD.FieldByName('frdTSID').AsString := eTSID.Text;
      FormMain.cdsFRD.FieldByName('frdNID').AsString := eNID.Text;
      FormMain.cdsFRD.Post;
    end;
    FormMain.cdsFRD.Next;
  end;

  FormMain.cdsFBQ.First;
  while not FormMain.cdsFRD.Eof do begin;
    if (FormMain.cdsFBQ.FieldByName('fbqUniq').AsString = saveNamespace) and
       (FormMain.cdsFBQ.FieldByName('fbqTSID').AsString = saveTSID) and
       (FormMain.cdsFBQ.FieldByName('fbqNID').AsString = saveNID)
    then begin;
      FormMain.cdsFBQ.Edit;
      FormMain.cdsFBQ.FieldByName('fbqUniq').AsString := eNamespace.Text;
      FormMain.cdsFBQ.FieldByName('fbqTSID').AsString := eTSID.Text;
      FormMain.cdsFBQ.FieldByName('fbqNID').AsString := eNID.Text;
      FormMain.cdsFBQ.Post;
    end;
    FormMain.cdsFBQ.Next;
  end;

  For i := 0 to FormMain.lvDet.Items.Count - 1 do begin;
    if (FormMain.lvDet.Items[i].SubItems[6] = saveNamespace) and
       (FormMain.lvDet.Items[i].SubItems[3] = saveTSID) and
       (FormMain.lvDet.Items[i].SubItems[4] = saveNID)
    then begin;
      FormMain.lvDet.Items[i].SubItems[6] := eNamespace.Text;
      FormMain.lvDet.Items[i].SubItems[3] := eTSID.Text;
      FormMain.lvDet.Items[i].SubItems[4] := eNID.Text;
    end;
  end;

  screen.Cursor := crDefault;

  if FormMain.ShowResultMsg
  then MessageDlg(FormMain.lwLngTrns(name,['Transponder data of % services changed.',IntToStr(c)]),
                  mtInformation,[mbOK],0);
  FormMain.cdsSERV.IndexFieldNames := servsif;
  FormMain.cdsSERV.Filtered := servflt;

  FormMain.lvServ.Refresh;
  Modalresult := mrOK;
end;

procedure TFormTransponder.bCalculateClick(Sender: TObject);
begin
  if (eTSID.Text = '') or
     (eNID.Text = '') or
     (ePos.Text = '') or
     (eFreq.Text = '')
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'You must first enter the satellite position and frequency ' +
               'fields before you can calculate the namespace.']),
               mtError,[mbOK],0);
    exit;
  end;
  if not FormMain.StrIsNumeric(eFreq.Text,False)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Frequency must be a numeric value!']),
               mtError,[mbOK],0);
    exit;
  end;
  eNameSpace.Text := FormMain.CalcNameSpace(ttype,
                                            eTSID.Text,
                                            eNID.Text,
                                            ePos.Text,
                                            eFreq.Text);
end;

procedure TFormTransponder.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormTransponder.lvTranspCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvTransp.Canvas.Brush.Color := $00F9FAFB
  else lvTransp.Canvas.Brush.Color := clWhite;
end;

procedure TFormTransponder.lvTranspColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  lvTranspColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormTransponder.lvTranspCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
  f1,f2: Real;
begin
  if lvTranspColumnToSort = 0
  then Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin;
    ix := lvTranspColumnToSort - 1;
    if (ix = 0) or
       (ix = 2)
    then Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix])
    else begin;        
      if Item1.SubItems[ix] <> ''
      then f1 := StrToFloat(Item1.SubItems[ix])*10
      else f1 := -9999;
      if Item2.SubItems[ix] <> ''
      then f2 := StrToFloat(Item2.SubItems[ix])*10
      else f2 := -9999;
      if f1 < f2
      then Compare := -1
      else
        if f1 = f2
        then Compare := 0
        else Compare := 1;
    end;
  end;
end;

end.
