unit DreamBoxEditDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, registry, StdCtrls, ComCtrls;

type
  TFormDetail = class(TForm)
    Panel1: TPanel;
    bCancel: TButton;
    GroupBox1: TGroupBox;
    gbMemo: TGroupBox;
    Memo1: TMemo;
    bSave: TButton;
    Label31: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    ePos: TComboBox;
    Label6: TLabel;
    eTSID: TEdit;
    Label11: TLabel;
    eFEC: TComboBox;
    Label10: TLabel;
    eSymb: TEdit;
    Label9: TLabel;
    ePol: TComboBox;
    Label23: TLabel;
    eNamespace: TEdit;
    bCalculate: TButton;
    Label7: TLabel;
    eNID: TEdit;
    Label8: TLabel;
    eFreq: TEdit;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ntLabel25: TLabel;
    ntLabel24: TLabel;
    eName: TEdit;
    ePack: TEdit;
    Label16: TLabel;
    eType: TEdit;
    ntLabel27: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    ntLabel36: TLabel;
    ntLabel29: TLabel;
    eSID: TEdit;
    eNr: TEdit;
    Label20: TLabel;
    ntLabel21: TLabel;
    eLock: TComboBox;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    eVPID: TEdit;
    eAPID: TEdit;
    eTPID: TEdit;
    ePPID: TEdit;
    e3PID: TEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    cbNODVB: TCheckBox;
    cbNoShow: TCheckBox;
    cbNoPMT: TCheckBox;
    Panel2: TPanel;
    lReminder: TLabel;
    ntLabel1: TLabel;
    ntLabel2: TLabel;
    ntLabel3: TLabel;
    ntLabel4: TLabel;
    ntLabel5: TLabel;
    ntLabel6: TLabel;
    ntLabel7: TLabel;
    ntLabel8: TLabel;
    Label30: TLabel;
    ntLabel9: TLabel;
    eTrExtra: TEdit;
    Label33: TLabel;
    eC07BSDelay: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    eC08PCMDelay: TEdit;
    Bevel1: TBevel;
    Label21: TLabel;
    eExtra: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSaveClick(Sender: TObject);
    procedure bCalculateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    servrecnr: Integer;
    new: Boolean;
    stype: String;
  public
    { Public declarations }
  end;

var
  FormDetail: TFormDetail;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormDetail.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  s,Key: String;
  i,p: Integer;
  sl: TSTringList;
  pListData: ^TListData;
  flags: Integer;
begin
  Caption := FormMain.lwLngTrns(name,['Service Details']);
  
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

  if bSave.Tag = 2
  then new := True
  else new := False;

  screen.Cursor := crHourGlass;

  servrecnr := FormMain.cdsSERV.RecNo;

  if bSave.Tag = 0 { Edit service, button acts as Save }
  then begin;
    epos.Enabled := False;
    etsid.Enabled := False;
    eNid.Enabled := False;
    eNamespace.Enabled := False;
    bCalculate.Visible := False;
    eFreq.Enabled := False;
    eSymb.Enabled := False;
    ePol.Enabled := False;
    eFEC.Enabled := False;
    eTrExtra.Enabled := False;
  end
  else begin; { Copied or new service, button acts as Add }
    epos.Enabled := True;
    etsid.Enabled := True;
    eNid.Enabled := True;
    eNamespace.Enabled := True;
    bCalculate.Visible := True;
    eFreq.Enabled := True;
    eSymb.Enabled := True;
    ePol.Enabled := True;
    eFEC.Enabled := True;
    eTrExtra.Enabled := True;
  end;

  ePos.Clear;
  i := -1;
  p := -1;
  FormMain.cdsPos.First;
  while not FormMain.cdsPos.Eof do begin;
    if FormMain.cdsPos.FieldByName('PosInt').AsInteger < 8888
    then begin;
      ePos.Items.Add(FormMain.cdsPos.FieldByName('PosStr').AsString);
      inc(i);
      if FormMain.cdsPos.FieldByName('PosInt').AsInteger = FormMain.cdsServ.FieldByName('servPos').AsInteger
      then p := i;
    end;
    FormMain.cdsPos.Next;
  end;

  stype := 's';
  if not new
  then begin;
    stype := FormMain.cdsSERV.FieldByName('servSTC').AsString;
    if stype = 't'
    then begin;
      ePos.Clear;
      ePos.Items.Add('Terrestrial');
      p := 0;
    end
    else
      if stype = 'c'
      then begin;
        ePos.Clear;
        ePos.Items.Add('Cable');
        p := 0;
      end;
  end;

  Memo1.Lines.Clear;
  gbMemo.Visible := False;
  if not new { Edit or Copy/Edit service }
  then begin;
    eName.Text := FormMain.CleanText(FormMain.cdsSERV.FieldByName('servName').AsString);
    ePack.Text := FormMain.CleanText(FormMain.cdsSERV.FieldByName('servPackage').Asstring);
    eType.Text := FormMain.cdsSERV.FieldByName('servType').Asstring;
    eSID.Text := FormMain.cdsSERV.FieldByName('servSID').Asstring;
    ePos.ItemIndex := p;
    eTSID.Text := FormMain.cdsSERV.FieldByName('servTSID').Asstring;
    eNID.Text := FormMain.cdsSERV.FieldByName('servNID').Asstring;
    eFreq.Text := FormMain.cdsSERV.FieldByName('servFreq').Asstring;
    ePol.ItemIndex := FormMain.cdsSERV.FieldByName('servPol').AsInteger;
    eSymb.Text := FormMain.cdsSERV.FieldByName('servSymb').AsString;
    if FormMain.cdsSERV.FieldByName('servFEC').AsInteger = 9
    then eFEC.ItemIndex := 6
    else eFEC.ItemIndex := FormMain.cdsSERV.FieldByName('servFEC').AsInteger;
    eTrExtra.Text := FormMain.cdsSERV.FieldByName('servTrExtra').AsString;
    eNr.Text := FormMain.cdsSERV.FieldByName('servNr').AsString;
    eLock.ItemIndex := FormMain.cdsSERV.FieldByName('servLock').AsInteger;
    eVPID.Text := FormMain.cdsSERV.FieldByName('servVPID').AsString;
    eAPID.Text := FormMain.cdsSERV.FieldByName('servAPID').AsString;
    eTPID.Text := FormMain.cdsSERV.FieldByName('servTPID').AsString;
    ePPID.Text := FormMain.cdsSERV.FieldByName('servPPID').AsString;
    e3PID.Text := FormMain.cdsSERV.FieldByName('serv3PID').AsString;
    eC07BSDelay.Text := FormMain.cdsSERV.FieldByName('servC07BSDelay').AsString;
    eC08PCMDelay.Text := FormMain.cdsSERV.FieldByName('servC08PCMDelay').AsString;
    cbNoDVB.Checked := False;
    cbNoShow.Checked := False;
    cbNoPMT.Checked := False;
    flags := FormMain.cdsSERV.FieldByName('servFlags').AsInteger;
    if (flags and 1) = 1
    then cbNoDVB.Checked := True;
    if (flags and 2) = 2
    then cbNoShow.Checked := True;
    if (flags and 4) = 4
    then cbNoPMT.Checked := True;

    eNamespace.Text := FormMain.cdsSERV.FieldByName('servUniq').AsString;
    eExtra.Text := FormMain.cdsSERV.FieldByName('servExtra').AsString;

    if bSave.Tag = 0 { Edit service, button acts as Save }
    then begin;
      sl := TStringList.Create;
      for i := 0 to FormMain.tv.Items.Count - 1 do begin;
        if FormMain.tv.Items.Item[i].Level = 1
        then begin;
          pListData := FormMain.tv.Items.Item[i].Data;
          sl.Add(FormMain.tv.Items.Item[i].Parent.Text[1] +
                 intToStr(pListdata.Number) + '=' +
                 FormMain.tv.Items.Item[i].Text + ' (' +
                 FormMain.tv.Items.Item[i].Parent.Text + ')');
        end;
      end;

      gbMemo.Visible := True;

      FormMain.cdsFTV.First;
      while not FormMain.cdsFTV.Eof
      do begin;
        if (FormMain.cdsFTV.FieldByName('ftvSID').AsString = FormMain.cdsSERV.FieldByName('servSID').Asstring) and
           (FormMain.cdsFTV.FieldByName('ftvUniq').AsString = FormMain.cdsSERV.FieldByName('servUniq').Asstring) and
           (FormMain.cdsFTV.FieldByName('ftvTSID').AsString = FormMain.cdsSERV.FieldByName('servTSID').Asstring) and
           (FormMain.cdsFTV.FieldByName('ftvNID').AsString = FormMain.cdsSERV.FieldByName('servNID').Asstring) and
           (FormMain.cdsFTV.FieldByName('ftvServType').AsString = FormMain.cdsSERV.FieldByName('servType').Asstring)
        then begin;
          s := sl.Values['T'+FormMain.cdsFTV.FieldByName('ftvSetNr').AsString];
          Memo1.Lines.Add(s);
        end;
        FormMain.cdsFTV.Next;
      end;

      FormMain.cdsFRD.First;
      while not FormMain.cdsFRD.Eof
      do begin;
        if (FormMain.cdsFRD.FieldByName('frdSID').AsString = FormMain.cdsSERV.FieldByName('servSID').Asstring) and
           (FormMain.cdsFRD.FieldByName('frdUniq').AsString = FormMain.cdsSERV.FieldByName('servUniq').Asstring) and
           (FormMain.cdsFRD.FieldByName('frdTSID').AsString = FormMain.cdsSERV.FieldByName('servTSID').Asstring) and
           (FormMain.cdsFRD.FieldByName('frdNID').AsString = FormMain.cdsSERV.FieldByName('servNID').Asstring) and
           (FormMain.cdsFRD.FieldByName('frdServType').AsString = FormMain.cdsSERV.FieldByName('servType').Asstring)
        then begin;
          s := sl.Values['R'+FormMain.cdsFRD.FieldByName('frdSetNr').AsString];
          Memo1.Lines.Add(s);
        end;
        FormMain.cdsFRD.Next;
      end;

      FormMain.cdsFBQ.First;
      while not FormMain.cdsFBQ.Eof
      do begin;
        if (FormMain.cdsFBQ.FieldByName('fbqSID').AsString = FormMain.cdsSERV.FieldByName('servSID').Asstring) and
           (FormMain.cdsFBQ.FieldByName('fbqUniq').AsString = FormMain.cdsSERV.FieldByName('servUniq').Asstring) and
           (FormMain.cdsFBQ.FieldByName('fbqTSID').AsString = FormMain.cdsSERV.FieldByName('servTSID').Asstring) and
           (FormMain.cdsFBQ.FieldByName('fbqNID').AsString = FormMain.cdsSERV.FieldByName('servNID').Asstring) and
           (FormMain.cdsFBQ.FieldByName('fbqServType').AsString = FormMain.cdsSERV.FieldByName('servType').Asstring)
        then begin;
          s := sl.Values['P'+FormMain.cdsFBQ.FieldByName('fbqSetNr').AsString];
          Memo1.Lines.Add(s);
        end;
        FormMain.cdsFBQ.Next;
      end;
      sl.Free;
    end;
  end
  else begin; { New empty service }
    eName.Text := '';
    ePack.Text := '';
    eType.Text := '';
    eSID.Text := '';
    ePos.ItemIndex := -1;
    eTSID.Text := '';
    eNID.Text := '';
    eFreq.Text := '';
    ePol.ItemIndex := -1;
    eSymb.Text := '';
    eFEC.ItemIndex := -1;
    eTrExtra.Text := ':2:0';
    eLock.ItemIndex := 0;
    eVPID.Text := '';
    eAPID.Text := '';
    eTPID.Text := '';
    ePPID.Text := '';
    e3PID.Text := '';
    eC07BSDelay.Text := '';
    eC08PCMDelay.Text := '';
    cbNoDVB.Checked := False;
    cbNoShow.Checked := False;
    cbNoPMT.Checked := False;
    eNamespace.Text := '';
  end;

  if stype = 's'
  then begin;
    label9.Visible := True;
    label10.Visible := True;
    label11.Visible := True;
    ntlabel6.Visible := True;
    ntlabel7.Visible := True;
    ntlabel8.Visible := True;
    eSymb.Visible := True;
    ePol.Visible := True;
    eFEC.Visible := True;
  end
  else begin;
    label9.Visible := False;
    label10.Visible := False;
    label11.Visible := False;
    ntlabel6.Visible := False;
    ntlabel7.Visible := False;
    ntlabel8.Visible := False;
    eSymb.Visible := False;
    ePol.Visible := False;
    eFEC.Visible := False;
  end;

  screen.Cursor := crDefault;
end;

procedure TFormDetail.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormDetail.bSaveClick(Sender: TObject);
var
  p: String;
  flags: Integer;
  err: Boolean;
begin
  FormMain.ServEdit := True;
  FormMain.cdsSERV.RecNo := servrecnr;
  err := False;
  if bSave.Tag > 0 { Copy/Edit or New service }
  then begin;
    if stype = 's'
    then begin;
      if (eName.Text = '') or
         (ePack.Text = '') or
         (ePos.Text = '') or
         (eType.Text = '') or
         (eSID.Text = '') or
         (eNID.Text = '') or
         (eTSID.Text = '') or
         (eFreq.Text = '') or
         (ePol.Text = '') or
         (eSymb.Text = '') or
         (eFEC.Text = '') or
         (eTrExtra.Text = '') or
         (eNr.Text = '') or
         (eNameSpace.Text = '') or
         (eLock.Text = '')
      then err := True;
    end
    else begin;
      if (eName.Text = '') or
         (ePack.Text = '') or
         (ePos.Text = '') or
         (eType.Text = '') or
         (eSID.Text = '') or
         (eNID.Text = '') or
         (eTSID.Text = '') or
         (eFreq.Text = '') or
         (eTrExtra.Text = '') or
         (eNr.Text = '') or
         (eNameSpace.Text = '') or
         (eLock.Text = '')
      then err := True;
    end;
  end
  else begin; { Edit service }
    if (eName.Text = '') or
       (ePack.Text = '') or
       (eType.Text = '') or
       (eSID.Text = '') or
       (eNr.Text = '') or
       (eLock.Text = '')
    then err := True;
  end;

  if err
  then begin;
    FormMain.ServEdit := False;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Enter something in all fields marked with a red *!']),
               mtError,[mbOK],0);
    FormMain.ServEdit := False;
    exit;
  end;

  if not FormMain.StrIsNumeric(eFreq.Text,False)
  then begin;
    FormMain.ServEdit := False;
    MessageDlg(FormMain.lwLngTrns(name,['Frequency must be a numeric value!']),
               mtError,[mbOK],0);
    FormMain.ServEdit := False;
    exit;
  end;

  if (e3PID.Text <> '') and
     (eAPID.Text <> '')
  then begin;
    FormMain.ServEdit := False;
    MessageDlg(FormMain.lwLngTrns(name,[
              'Do not specify the audio PID if you also specify the AC3 PID.']),
               mtError,[mbOK],0);
    FormMain.ServEdit := False;
    exit;
  end;

  if bSave.Tag = 0 { Button acts as Save }
  then FormMain.cdsSERV.Edit
  else FormMain.cdsSERV.Append;

  FormMain.cdsSERV.FieldByName('servSTC').AsString := stype;
  FormMain.cdsSERV.FieldByName('servSID').AsString := eSID.Text;
  FormMain.cdsSERV.FieldByName('servTSID').AsString := eTSID.Text;
  FormMain.cdsSERV.FieldByName('servNID').AsString := eNID.Text;
  FormMain.cdsSERV.FieldByName('servType').AsString := eType.Text;
  FormMain.cdsSERV.FieldByName('servTypeTxt').AsString := FormMain.TrnsServType(FormMain.cdsServ.FieldByName('servType').AsInteger);
  FormMain.cdsSERV.FieldByName('servName').AsString := AnsiToUtf8(eName.Text);
  FormMain.cdsSERV.FieldByName('servPackage').AsString := AnsiToUtf8(ePack.Text);
  FormMain.cdsSERV.FieldByName('servNr').AsString := eNr.Text;
  FormMain.cdsSERV.FieldByName('servFreq').AsString := eFreq.Text;
  FormMain.cdsSERV.FieldByName('servSymb').AsString := eSymb.Text;
  FormMain.cdsSERV.FieldByName('servPol').AsInteger := ePol.ItemIndex;
  if eFEC.ItemIndex = 6
  then FormMain.cdsSERV.FieldByName('servFEC').AsInteger := 9
  else FormMain.cdsSERV.FieldByName('servFEC').AsInteger := eFEC.ItemIndex;
  FormMain.cdsSERV.FieldByName('servTrExtra').AsString := eTrExtra.Text;
  FormMain.cdsSERV.FieldByName('servCleanName').AsString := eName.Text;
  if stype = 's'
  then p := FloatToStr(StrToFloat(ePos.Items[ePos.ItemIndex])*10)
  else
    if stype = 't'
    then p := '8888' { Terrestrial }
    else p := '9999'; { Cable }
  FormMain.cdsSERV.FieldByName('servPos').AsString := p;
  FormMain.cdsSERV.FieldByName('servLock').AsInteger := eLock.ItemIndex;
  FormMain.cdsSERV.FieldByName('servVPID').AsString := eVPID.Text;
  FormMain.cdsSERV.FieldByName('servAPID').AsString := eAPID.Text;
  FormMain.cdsSERV.FieldByName('servTPID').AsString := eTPID.Text;
  FormMain.cdsSERV.FieldByName('servPPID').AsString := ePPID.Text;
  FormMain.cdsSERV.FieldByName('serv3PID').AsString := e3PID.Text;
  FormMain.cdsSERV.FieldByName('servC07BSDelay').AsString := eC07BSDelay.Text;
  FormMain.cdsSERV.FieldByName('servC08PCMDelay').AsString := eC08PCMDelay.Text;
  flags := 0;
  if cbNoDVB.Checked
  then flags := flags or 1;
  if cbNoShow.Checked
  then flags := flags or 2;
  if cbNoPMT.Checked
  then flags := flags or 4;
  FormMain.cdsSERV.FieldByName('servFlags').AsInteger := flags;
  FormMain.cdsSERV.FieldByName('servUniq').AsString := eNamespace.Text;
  FormMain.cdsSERV.FieldByName('servextra').AsString := eExtra.Text;
  if bSave.Tag > 0 { Button acts as Add }
  then begin;
    inc(FormMain.HighDbeNr);
    FormMain.cdsSERV.FieldByName('servDbeNr').AsInteger := FormMain.HighDbeNr;
    FormMain.lvServ.Items.Count := FormMain.lvServ.Items.Count + 1;
  end;

  FormMain.cdsSERV.Post;

  {FormMain.ServEdit := False; ===> is done in formmain to prevent problems with empty database}
  Modalresult := mrOK;
end;

procedure TFormDetail.bCalculateClick(Sender: TObject);
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
  if not FormMain.StrIsNumeric(eFreq.Text,false)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Frequency must be a numeric value!']),
               mtError,[mbOK],0);
    exit;
  end;

  eNameSpace.Text := FormMain.CalcNameSpace(stype,
                                            eTSID.Text,
                                            eNID.Text,
                                            ePos.Text,
                                            eFreq.Text);
end;

procedure TFormDetail.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  eLock.Items[0] := FormMain.lwLngTrns(name,['Disabled']);
  eLock.Items[1] := FormMain.lwLngTrns(name,['Enabled']);
end;

end.
