unit DreamBoxEditImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, registry, StdCtrls, DB, DBClient, Grids, DBGrids,
  ComCtrls, LWBtn, FileCtrl, Menus, StrUtils;

type
  TFormImport = class(TForm)
    Panel1: TPanel;
    od: TOpenDialog;
    bCancel: TButton;
    cdsSDX: TClientDataSet;
    GroupBox1: TGroupBox;
    lvSDX: TListView;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    ntlDS: TLabel;
    ntlTotal: TLabel;
    ntlTV: TLabel;
    ntlNew: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    rbAll: TRadioButton;
    rbNew: TRadioButton;
    rbSame: TRadioButton;
    GroupBox4: TGroupBox;
    cbNewBouq: TCheckBox;
    bOpen: TLWButton;
    cbReplace: TCheckBox;
    pulvSDX: TPopupMenu;
    Checkall1: TMenuItem;
    Uncheckall1: TMenuItem;
    cbUsePIDs: TCheckBox;
    Label10: TLabel;
    ntlRadio: TLabel;
    Label11: TLabel;
    ntlSkipped: TLabel;
    Label6: TLabel;
    ntlUnique: TLabel;
    bCheckAll: TButton;
    bUncheckAll: TButton;
    bProcess: TLWButton;
    bCheckDuplicates: TButton;
    cbNoDVB: TCheckBox;
    bGetPackageInfo: TButton;
    cdsPck: TClientDataSet;
    N1: TMenuItem;
    Check1: TMenuItem;
    bAddPackageName: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure rbNewClick(Sender: TObject);
    procedure rbSameClick(Sender: TObject);
    procedure lvSDXColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvSDXCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure lvSDXCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure bProcessClick(Sender: TObject);
    procedure Checkall1Click(Sender: TObject);
    procedure Uncheckall1Click(Sender: TObject);
    procedure lvSDXKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvSDXDblClick(Sender: TObject);
    procedure cbUsePIDsClick(Sender: TObject);
    procedure bCheckDuplicatesClick(Sender: TObject);
    procedure bGetPackageInfoClick(Sender: TObject);
    procedure CheckUncheckClick(Sender: TObject);
    procedure bAddPackageNameClick(Sender: TObject);
  private
    { Private declarations }
    lvSDXColumnToSort: Integer;
    procedure lvSDXBuild();
  public
    { Public declarations }
  end;

var
  FormImport: TFormImport;

implementation

uses DreamBoxMain, DreamBoxEditImportFiles,
  DreamBoxEditImportDuplicates;

{$R *.dfm}

type      { SatcoDX V110 record layout}
  TSatcodx = record
    Hdr:             Array[0..6] of char;
    Rectype:         Char;
    Version:         Array[0..1] of char;
    Satname:         Array[0..17] of char;
    ChannelType:     Char;
    BroadcastSystem: Array[0..3] of char;
    Frequency:       Array[0..8] of char;
    Polarisation:    Char;
    ServiceName1:    Array[0..7] of char;
    SatPos:          Array[0..3] of char;
    Coverage:        Array[0..5] of char;
    Beam:            Array[0..1] of char;
    AnalogAudio:     Array[0..5] of char;
    SymbolRate:      Array[0..4] of char;
    FEC:             Char;
    VPid:            Array[0..3] of char;
    APid:            Array[0..3] of char;
    PPid:            Array[0..3] of char;
    SID:             Array[0..4] of char;
    NID:             Array[0..4] of char;
    TSID:            Array[0..4] of char;
    Language:        Array[0..2] of char;
    Filler1:         Char;
    CountryCode:     Array[0..1] of char;
    LanguageCode:    Array[0..2] of char;
    Crypto:          Array[0..3] of char;
    ServiceName2:    Array[0..55] of char;
    Package:         Array[0..31] of char;
    Networkname:     Array[0..31] of char;
    Various:         Array[0..92] of char;
    LF:              Char;
end;

Procedure TFormImport.lvSDXBuild();
var
  item: TListItem;
  p,sp: Integer;
  show: Boolean;
begin;
  lvSDX.Items.BeginUpdate;
  lvSDX.Items.Clear;
  lvSDX.Items.EndUpdate;
  lvSDX.Items.BeginUpdate;

  FormMain.ShowWait('init',0,cdsSDX.RecordCount,0);
  application.ProcessMessages;

  p := 0;
  cdsSDX.First;
  while not cdsSDX.Eof
  do begin;
    inc(p);
    if p mod 25 = 0
    then FormMain.ShowWait('pos',0,0,p);

    show := False;
    if rbAll.Checked
    then show := True
    else
      if (rbNew.Checked) and
         (cdsSDX.FieldByName('DBName').AsString = '')
      then show := True
      else
        if (rbSame.Checked) and
           (cdsSDX.FieldByName('DBName').AsString <> '')
        then show := True;

    if show
    then begin;
      item := lvSDX.Items.Add;
      if cdsSDX.FieldByName('Checked').AsString = ''
      then
        if cdsSDX.FieldByName('DBName').AsString = ''
        then item.Checked := True
        else item.Checked := False
      else
        if cdsSDX.FieldByName('Checked').AsString = '1'
        then item.Checked := True
        else item.Checked := False;
      item.Caption := cdsSDX.FieldByName('SatName').AsString;
      sp := StrToInt(cdsSDX.FieldByName('SatPos').AsString);
      if sp > 1800
      then sp := sp - 3600;
      item.SubItems.Add(Format('%.1n',[sp/10]));
      item.SubItems.Add(cdsSDX.FieldByName('ServName').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('STyp').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('Freq').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('Pol').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('SymbRate').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('SID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('TSID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('NID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('FEC').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('DBName').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('VPID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('APID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('PPID').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('Language').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('Uniq').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('OrgSeq').AsString);
      item.SubItems.Add(cdsSDX.FieldByName('Package').AsString);
    end;
    cdsSDX.Next;
  end;

  FormMain.ShowWait('free',0,0,0);

  lvSDX.Items.EndUpdate;
end;

procedure TFormImport.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  cdsSDX.IndexFieldNames := 'SID;Uniq;TSID;NID;STyp';
  cdsSDX.CreateDataset;
  cdsSDX.LogChanges := False;
  cdsPck.IndexFieldNames := 'pckSatPos;pckFreq;pckSID';
  cdsPck.CreateDataset;
  cdsPck.LogChanges := False;
end;

procedure TFormImport.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Import TV and Radio services from SDX files (SatcoDX)']);

  lvSDX.Columns[0].Caption := FormMain.lwLngTrns(name,['Satellite name']);
  lvSDX.Columns[1].Caption := FormMain.lwLngTrns(name,['SatPos']);
  lvSDX.Columns[2].Caption := FormMain.lwLngTrns(name,['Service name']);
  lvSDX.Columns[3].Caption := FormMain.lwLngTrns(name,['Type']);
  lvSDX.Columns[4].Caption := FormMain.lwLngTrns(name,['Frequency']);
  lvSDX.Columns[5].Caption := FormMain.lwLngTrns(name,['Pol.']);
  lvSDX.Columns[6].Caption := FormMain.lwLngTrns(name,['Symbolrate']);
  lvSDX.Columns[7].Caption := FormMain.lwLngTrns(name,['SID']);
  lvSDX.Columns[8].Caption := FormMain.lwLngTrns(name,['TSID']);
  lvSDX.Columns[9].Caption := FormMain.lwLngTrns(name,['NID']);
  lvSDX.Columns[10].Caption := FormMain.lwLngTrns(name,['FEC']);
  lvSDX.Columns[11].Caption := FormMain.lwLngTrns(name,['Serv.name in DB']);
  lvSDX.Columns[12].Caption := FormMain.lwLngTrns(name,['VPID']);
  lvSDX.Columns[13].Caption := FormMain.lwLngTrns(name,['APID']);
  lvSDX.Columns[14].Caption := FormMain.lwLngTrns(name,['PPID']);
  lvSDX.Columns[15].Caption := FormMain.lwLngTrns(name,['Lng']);
  lvSDX.Columns[16].Caption := FormMain.lwLngTrns(name,['Namespace']);
  lvSDX.Columns[17].Caption := FormMain.lwLngTrns(name,['Nr.']);
  lvSDX.Columns[18].Caption := FormMain.lwLngTrns(name,['Package']);

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
  Key := Name+'.Height';
  if Reg.ValueExists(key)
  then Height := Reg.ReadInteger(key)
  else Height := 635;
  Key := Name+'.Width';
  if Reg.ValueExists(key)
  then Width := Reg.ReadInteger(key)
  else Width := 933;
  Reg.CloseKey;
  Reg.Destroy;

  cdsSDX.EmptyDataSet;
  cdsSDX.Close;
  cdsSDX.Open;
  lvSDX.Items.Clear;

  bOpen.InactiveColor := $00CCFFFF;
  bOpen.ActiveColor := $00CCFFFF;
  bOpen.Default := True;
  FormImport.ActiveControl := bOpen;
  bProcess.InactiveColor := clBtnFace;
  bProcess.ActiveColor := clBtnFace;
  bProcess.Default := False;

  ntlDs.Caption := '0';
  ntlTotal.Caption := '0';
  ntlTV.Caption := '0';
  ntlRadio.Caption := '0';
  ntlSkipped.Caption := '0';
  ntlUnique.Caption := '0';
  ntlNew.Caption := '0';
end;

procedure TFormImport.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Key := Name+'.Width';
  Reg.WriteInteger(key,Width);
  Key := Name+'.Height';
  Reg.WriteInteger(key,Height);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormImport.bOpenClick(Sender: TObject);
var
  Reg: TRegistry;
  rec: TSatcoDX;
  buf: array[0..328] of char; { array[0..127] of char; }
  ir,rb,i,i2,seq: Integer;
  cDS,cTotal,cTV,cRadio,cSkipped,cUnique,cNew: Integer;
  s,servsif,skip: String;
  servflt: Boolean;
  SDXDir,stype,satpos,uniq: String;
  sl: TStringList;
procedure FmtRecord();
var
  i,p,b: Integer;
  ns,ew: String;
  r: TSatcoDX;
begin
  r := TSatcoDX(buf);
  p := pos('MPG2',buf);
  if p {pos('MPG2',buf)} > 30 { Too long satname, probably dvb2000 }
  then begin;
    p := pos('MPG2',buf);
    for i := 28 to 150 do
      buf[i] := buf[i+(p-30)];
    r := TSatcoDX(buf);
  end;
  if r.SatPos = '0000' { No valid satpos, probably a dvb2000 file }
  then begin;
    if (pos('°E',r.Satname) > 0) or
       (pos('°O',r.Satname) > 0) or
       (pos('°W',r.Satname) > 0)
    then begin;
      p := pos('°',r.Satname);
      for b := p-2 downto 1 do begin;
        if pos(r.Satname[b],'0123456789,.') = 0
        then break;
      end;
      ns := copy(r.Satname,b+2,p-b-2);
      ew := copy(r.Satname,p+1,1);
      p := pos(',',ns);
      if p = 0
      then p := pos('.',ns);
      if p > 0
      then ns := leftstr(ns,p-1) + copy(ns,p+1,length(ns)-1)
      else ns := trim(ns) + '0';
      if ew = 'W'
      then ns := IntToStr(3600 - StrToInt(ns));
      while length(ns) < 4 do
        ns := '0' + ns;
      for i := 0 to 3 do
        r.SatPos[i] := ns[i+1];
      TSatcoDX(buf) := r;
    end;
  end;
end;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if Reg.ValueExists('SatcoDX Directory')
  then SDXDir := Reg.ReadString('SatcoDX Directory')
  else SDXDir := FormMain.Dir;
  Reg.CloseKey;
  Reg.Destroy;

  if not FormMain.SelDir(SDXDir,False)
  then exit;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteString('SatcoDX Directory',SdxDir);
  Reg.CloseKey;
  Reg.Destroy;

  if FormImportFiles.ShowModal <> mrOK
  then exit;

  cDS := 0;
  cTotal := 0;
  cTV := 0;
  cRadio := 0;
  cSkipped := 0;
  cUnique := 0;
  cNew := 0;
  seq := 0;
  cdsSDX.EmptyDataSet;
  cdsSDX.Close;
  cdsSDX.Open;

  servsif := FormMain.cdsSERV.IndexFieldNames;
  FormMain.cdsSERV.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := FormMain.cdsSERV.Filtered;
  FormMain.cdsSERV.Filtered := False;

  for i := 0 to FormImportFiles.lvDir.Items.Count - 1 do begin;
    if FormImportFiles.lvDir.Items[i].Checked <> True
    then continue;
    if FormImportFiles.lvDir.Items[i].SubItems[1] = '----'
    then begin;
      MessageDlg(FormMain.lwLngTrns(name,[
                 'Invalid SatcoDX file "%" was checked for processing but file is skipped.',
                 FormImportFiles.lvDir.Items[i].Caption]),
                 mtError,[mbOK],0);
      FormMain.log('w',FormMain.lwLngTrns(name,[
                 'Invalid SatcoDX file "%" was checked for processing but file is skipped.',
                 FormImportFiles.lvDir.Items[i].Caption]));
      continue;
    end;

    FormMain.log('i',FormMain.lwLngTrns(name,['Importing SatcoDX file: %',
                                         FormImportFiles.lvDir.Items[i].Caption]));
    inc(cDS);
    sl := TStringList.Create;
    sl.LoadFromFile(FormImportFiles.lvDir.Items[i].Caption);

    for ir := 0 to sl.Count - 1 do begin;
      if LowerCase(leftstr(sl[ir],7)) <> 'satcodx'
      then continue;

      inc(cTotal);
      s := sl[ir];

      { Translate special characters to single byte characters    }
      { Otherwise the name string is longer and following fields  }
      { are at the wrong position for the record format           }
      { special character are still"garbled", correct translation }
      { should be handled in a next release                       }
      s := UTF8ToAnsi(s);
      for i2 := 0 to length(s) - 1 do
        buf[i2] := s[i2+1];
      FmtRecord();
      rec := TSatcoDX(buf);

      skip := '';
      if (rec.ChannelType <> 'T') and
         (rec.ChannelType <> 'R')
      then skip := 'Channeltype not T or R'
      else
      if copy(rec.BroadcastSystem,1,3) <> 'MPG'
      then skip := 'Broadcastsystem not MPG'
      else
      if pos('_',rec.SatPos) > 0
      then skip := 'Invalid Satpos'
      else
      if pos('_',rec.Frequency) > 0
      then skip := 'Invalid Frequency'
      else
      if pos('_',rec.Polarisation) > 0
      then skip := 'Invalid Polarisation'
      else
      if pos('_',rec.FEC) > 0
      then skip := 'Invalid FEC'
      else
      if pos('_',rec.SID) > 0
      then skip := 'Invalid SID'
      else
      if pos('_',rec.NID) > 0
      then skip := 'Invalid NID'
      else
      if pos('_',rec.TSID) > 0
      then skip := 'Invalid TSID';

      if skip <> ''
      then begin;
        inc(cSkipped);
        FormMain.log('i','SatcoDX record skipped. Reason:' + skip);
        FormMain.log('i','- Satcodx entry: ' + leftstr(buf,127));
      end
      else begin;
        if rec.ChannelType = 'T'
        then stype := '1'
        else stype := '2';

        if FormImportFiles.slDX.Values[rec.SatPos] <> ''
        then satpos := FormImportFiles.slDX.Values[rec.SatPos]
        else satpos := rec.SatPos;
        uniq := FormMain.CalcNameSpace('s',
                                       rec.TSID,
                                       rec.NID,
                                       SatPos,
                                       rec.Frequency);

        if not cdsSDX.FindKey([trim(rec.SID),
                               uniq,
                               trim(rec.TSID),
                               trim(rec.NID),
                               stype])
        then inc(cUnique);
        cdsSDX.Append;
        cdsSDX.FieldByName('SatName').AsString := FormMain.CleanText(rec.Satname);
        cdsSDX.FieldByName('SatPos').AsString := satpos;
        if rec.ChannelType = 'T'
        then begin;
          cdsSDX.FieldByName('STyp').AsString := 'T';
          inc(cTV);
        end
        else begin;
          cdsSDX.FieldByName('STyp').AsString := 'R';
          inc(cRadio);
        end;
        cdsSDX.FieldByName('Freq').AsString := rec.Frequency;
        if rec.Polarisation = '0'
        then cdsSDX.FieldByName('Pol').AsString := '1'
        else cdsSDX.FieldByName('Pol').AsString := '0';
        cdsSDX.FieldByName('SymbRate').AsString := rec.SymbolRate + '000';
        cdsSDX.FieldByName('ServName').AsString := LeftStr(rec.ServiceName1 + rec.ServiceName2,50);
        cdsSDX.FieldByName('Package').AsString := rec.Package;
        if rec.FEC = '7'
        then cdsSDX.FieldValues['FEC'] := 5
        else
          if rec.FEC = '5'
          then cdsSDX.FieldValues['FEC'] := 4
          else cdsSDX.FieldValues['FEC'] := StrToInt(rec.FEC);
        cdsSDX.FieldByName('SID').AsString := rec.SID;
        cdsSDX.FieldByName('uniq').AsString := uniq;
        cdsSDX.FieldByName('TSID').AsString := rec.TSID;
        cdsSDX.FieldByName('NID').AsString := rec.NID;
        if (trim(rec.VPid) <> '') and
           (trim(rec.APid) <> '') and
           (trim(rec.PPid) <> '') and
           (pos('_',rec.VPid) = 0) and
           (pos('_',rec.APid) = 0) and
           (pos('_',rec.PPid) = 0)
        then begin;
          cdsSDX.FieldByName('VPID').AsString := rec.VPid;
          cdsSDX.FieldByName('APID').AsString := rec.APid;
          cdsSDX.FieldByName('PPID').AsString := rec.PPid;
        end;
        cdsSDX.FieldByName('Language').AsString := LowerCase(rec.Language);
        if not FormMain.cdsServ.FindKey([cdsSDX.FieldByName('SID').AsString,
                                         uniq,
                                         cdsSDX.FieldByName('TSID').AsString,
                                         cdsSDX.FieldByName('NID').AsString,
                                         stype])
        then begin;
          inc(cNew);
          cdsSDX.FieldByName('DBName').AsString := '';
        end
        else begin;
          cdsSDX.FieldByName('DBName').AsString :=
                             FormMain.cdsSERV.FieldByName('servName').AsString;
          if cdsSDX.FieldByName('DBName').AsString = ''
          then cdsSDX.FieldByName('DBName').AsString := '* No name in DB *';
        end;
        inc(Seq);
        cdsSDX.FieldByName('OrgSeq').AsInteger := Seq;
        cdsSDX.FieldByName('Checked').AsString := '';
        cdsSDX.Post;
      end;
    end;
    sl.Free;
  end;

  FormMain.cdsSERV.IndexFieldNames := servsif;
  FormMain.cdsSERV.Filtered := servflt;

  lvSDXBuild();

  if lvSDX.Items.Count > 0
  then begin;
    lvSDX.Items[0].MakeVisible(False);

    bOpen.InactiveColor := clBtnFace;
    bOpen.ActiveColor := clBtnFace;
    bOpen.Default := False;
    bProcess.InactiveColor := $00CCFFFF;
    bProcess.ActiveColor := $00CCFFFF;
    bProcess.Default := True;
    FormImport.ActiveControl := bProcess;
  end
  else begin;
    bOpen.InactiveColor := $00CCFFFF;
    bOpen.ActiveColor := $00CCFFFF;
    bOpen.Default := True;
    FormImport.ActiveControl := bOpen;
    bProcess.InactiveColor := clBtnFace;
    bProcess.ActiveColor := clBtnFace;
    bProcess.Default := False;
  end;
  ntlDs.Caption := Format('%.0n',[StrToFloat(IntToStr(cDS))]);
  ntlTotal.Caption := Format('%.0n',[StrToFloat(IntToStr(cTotal))]);
  ntlTV.Caption := Format('%.0n',[StrToFloat(IntToStr(cTV))]);
  ntlRadio.Caption := Format('%.0n',[StrToFloat(IntToStr(cRadio))]);
  ntlSkipped.Caption := Format('%.0n',[StrToFloat(IntToStr(cSkipped))]);
  ntlUnique.Caption := Format('%.0n',[StrToFloat(IntToStr(cUnique))]);
  ntlNew.Caption := Format('%.0n',[StrToFloat(IntToStr(cNew))]);
end;

procedure TFormImport.rbAllClick(Sender: TObject);
begin
  lvSDXBuild();
end;

procedure TFormImport.rbNewClick(Sender: TObject);
begin
  lvSDXBuild();
end;

procedure TFormImport.rbSameClick(Sender: TObject);
begin
  lvSDXBuild();
end;

procedure TFormImport.lvSDXColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  lvSDXColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormImport.lvSDXCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
  f1,f2: Real;
  s1,s2: String;
begin
  if lvSDXColumnToSort = 0
  then Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
    ix := lvSDXColumnToSort - 1;
    if ix = 6
    then ix := 98;
    if (ix = 1) or
       (ix = 2) or
       (ix = 10) or
       (ix = 14) or
       (ix = 17)
    then Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix])
    else
      if (ix = 0) or
         (ix = 15)
      then begin;
        f1 := StrToFloat(Item1.SubItems[ix]) * 10;
        f2 := StrToFloat(Item2.SubItems[ix]) * 10;
        if f1 = f2
        then Compare := 0
        else
          if f1 > f2
          then Compare := 1
          else Compare := -1;
      end
      else
        if ix <>98
        then begin;
          if Item1.SubItems[ix] <> ''
          then s1 := Item1.SubItems[ix]
          else s1 := '0';
          if Item2.SubItems[ix] <> ''
          then s2 := Item2.SubItems[ix]
          else s2 := '0';
          Compare := CompareText(Format('%10d',[StrToInt(s1)]),
                                 Format('%10d',[StrToInt(s2)]));
        end
        else begin;
          Compare := CompareText(Format('%10d %10d %10d %10d %1s',
                                        [StrToInt(Item1.SubItems[6]),
                                         StrToInt(Item1.SubItems[15]),
                                         StrToInt(Item1.SubItems[7]),
                                         StrToInt(Item1.SubItems[8]),
                                         Item1.SubItems[2]]),
                                 Format('%10d %10d %10d %10d %1s',
                                        [StrToInt(Item2.SubItems[6]),
                                         StrToInt(Item2.subItems[15]),
                                         StrToInt(Item2.SubItems[7]),
                                         StrToInt(Item2.SubItems[8]),
                                         Item2.SubItems[2]]));
        end;
  end;
end;

procedure TFormImport.lvSDXCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvSDX.Canvas.Brush.Color := $00F9FAFB
  else lvSDX.Canvas.Brush.Color := clWhite;
  lvSDX.Canvas.FillRect(Item.DisplayRect(drBounds));
  if Item.Checked
  then lvSDX.Canvas.Font.Color := clBlack
  else lvSDX.Canvas.Font.Color := clMedGray;
end;

procedure TFormImport.bProcessClick(Sender: TObject);
var
  i,j,p,ib,ie,stype,flags: Integer;
  s,b,bnr: String;
  bsl: TStringList;
  tf: TextFile;
  add: Boolean;
  ld: TListData;
  pListData: ^TListData;
  servsif: String;
  servflt: Boolean;
begin
  FormMain.ShowWait('init',0,lvSDX.Items.Count,0);
  application.ProcessMessages;
  p := 0;

  ModalResult := mrCancel;
  bsl := TStringList.Create;
  bsl.Sorted := True;
  bsl.CaseSensitive := True;

  servsif := FormMain.cdsSERV.IndexFieldNames;
  FormMain.cdsSERV.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := FormMain.cdsSERV.Filtered;
  FormMain.cdsSERV.Filtered := False;

  for i := 0 to lvSDX.Items.Count - 1 do begin;
    stype := 0;
    inc(p);
    if p mod 10 = 0
    then FormMain.ShowWait('pos',0,0,p);

    add := True;
    if not lvSDX.Items[i].Checked
    then add := False;

    if add
    then begin;
      if lvSDX.Items[i].SubItems[2] = 'T'
      then stype := 1
      else stype := 2;
      if FormMain.cdsSERV.FindKey([lvSDX.Items[i].SubItems[6],
                                   lvSDX.Items[i].SubItems[15],
                                   lvSDX.Items[i].SubItems[7],
                                   lvSDX.Items[i].SubItems[8],
                                   stype])
      then
        if cbReplace.Checked
        then begin;
          FormMain.cdsServ.Delete;
          FormMain.log('i',FormMain.lwLngTrns(name,['SatcoDX entry % deleted',lvSDX.Items[i].SubItems[1]]));
        end
        else add := False;
    end;

    if add
    then begin;
      FormMain.ServEdit := True;
      FormMain.cdsSERV.Append;
      FormMain.cdsSERV.FieldByName('servSID').AsString := lvSDX.Items[i].SubItems[6];
      FormMain.cdsSERV.FieldByName('servUniq').AsString := lvSDX.Items[i].SubItems[15];
      FormMain.cdsSERV.FieldByName('servTSID').AsString := lvSDX.Items[i].SubItems[7];
      FormMain.cdsSERV.FieldByName('servNID').AsString := lvSDX.Items[i].SubItems[8];
      FormMain.cdsSERV.FieldByName('servType').AsInteger := stype;
      FormMain.cdsSERV.FieldByName('servTypeTxt').AsString := FormMain.TrnsServType(FormMain.cdsServ.FieldByName('servType').AsInteger);
      FormMain.cdsSERV.FieldByName('servName').AsString := AnsiToUtf8(lvSDX.Items[i].SubItems[1]);
      FormMain.cdsSERV.FieldByName('servPackage').AsString := AnsiToUtf8(lvSDX.Items[i].SubItems[17]);;
      FormMain.cdsSERV.FieldByName('servNr').AsString := IntToStr(FormMain.MaxNr+1);
      inc(FormMain.MaxNr);
      FormMain.cdsSERV.FieldByName('servFreq').AsString := lvSDX.Items[i].SubItems[3];
      FormMain.cdsSERV.FieldByName('servSymb').AsString := lvSDX.Items[i].SubItems[5];
      FormMain.cdsSERV.FieldByName('servPol').AsString := lvSDX.Items[i].SubItems[4];
      FormMain.cdsSERV.FieldByName('servFEC').AsString := lvSDX.Items[i].SubItems[9];
      FormMain.cdsSERV.FieldByName('servPos').AsString :=
                                 FloatToStr(StrToFloat(lvSDX.Items[i].SubItems[0])*10);
      flags := 0;
      if cbUsePIDs.Checked
      then begin;
        FormMain.cdsSERV.FieldByName('servVPID').AsString := lvSDX.Items[i].SubItems[11];
        FormMain.cdsSERV.FieldByName('servAPID').AsString := lvSDX.Items[i].SubItems[12];
        FormMain.cdsSERV.FieldByName('servPPID').AsString := lvSDX.Items[i].SubItems[13];
        if (lvSDX.Items[i].SubItems[11] <> '') or
           (lvSDX.Items[i].SubItems[12] <> '') or
           (lvSDX.Items[i].SubItems[13] <> '')
        then flags := flags or 4
      end;
      if cbNoDVB.Checked
      then flags := flags or 1;
      FormMain.cdsSERV.FieldByName('servFlags').AsInteger := flags;
      inc(FormMain.HighDbeNr);
      FormMain.cdsSERV.FieldByName('servDbeNr').AsInteger := FormMain.HighDbeNr;
      FormMain.cdsSERV.FieldByName('servSTC').AsString := 's';
      FormMain.cdsSERV.FieldByName('servTrExtra').AsString := ':2:0';
      FormMain.cdsSERV.FieldByName('servCleanName').AsString := lvSDX.Items[i].SubItems[1];
      FormMain.cdsSERV.Post;
      FormMain.ServEdit := False;

      if not FormMain.cdsPos.FindKey([FormMain.cdsSERV.FieldByName('servPos').AsString])
      then begin;
        FormMain.cdsPos.Append;
        FormMain.cdsPos.FieldByName('PosInt').AsString :=
             FormMain.cdsSERV.FieldByName('servPos').AsString;
        FormMain.cdsPos.FieldByName('PosStr').AsString :=
             Format('%.1n',[StrToInt(FormMain.cdsSERV.FieldByName('servPos').AsString)/10]);
        if FormImportFiles.slDX.Values[FormMain.cdsSERV.FieldByName('servPos').AsString] <> ''
        then FormMain.cdsPos.FieldByName('PosName').AsString :=
                  FormImportFiles.slDX.Values[FormMain.cdsSERV.FieldByName('servPos').AsString]
        else FormMain.cdsPos.FieldByName('PosName').AsString :=
                  FormMain.cdsSERV.FieldByName('servPos').AsString {'n/a'};
        FormMain.cdsPos.Post;
      end;

      FormMain.log('i',FormMain.lwLngTrns(name,['SatcoDX entry % added to services',lvSDX.Items[i].SubItems[1]]));

      if cbNewBouq.Checked
      then begin;
        if lvSDX.Items[i].SubItems[17] = ''
        then b := '@SDX ' + lvSDX.Items[i].Caption
        else b := lvSDX.Items[i].SubItems[17];
        bnr := bsl.Values[b];
        if bnr = ''
        then begin;
          for j := 0 to FormMain.tv.Items.Count - 1 do begin;
            if (FormMain.tv.Items.Item[j].Level = 1) and
               (FormMain.tv.Items.Item[j].Parent.Text[1] = 'P')
            then begin;
              if FormMain.tv.Items.Item[j].Text = b
              then begin;
                pListData := FormMain.tv.Items.Item[j].Data;
                bnr := IntToStr(pListData.Number);
                break;
              end;
            end;
          end;
          if bnr = ''
          then begin;
            ld := FormMain.NewBouquet('P');
            new(pListData);
            pListData.FileName := ld.FileName;
            pListData.Number := ld.Number;
            pListData.Locked := False;
            FormMain.tv.Items.AddChildObject(FormMain.tnBQ,b,pListData);
            FormMain.tnBQ.AlphaSort(True);
            bnr := IntToStr(ld.Number);
          end;
          bsl.Add(b + '=' + bnr);
        end;
        if not FormMain.cdsFBQ.FindKey([bnr,
                                        lvSDX.Items[i].SubItems[6],
                                        lvSDX.Items[i].SubItems[15],
                                        lvSDX.Items[i].SubItems[7],
                                        lvSDX.Items[i].SubItems[8],
                                        stype])
        then begin;
          FormMain.cdsFBQ.Append;
          FormMain.cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
          FormMain.cdsFBQ.FieldByName('fbqSeqNr').AsString := lvSDX.Items[i].SubItems[16];
          FormMain.cdsFBQ.FieldByName('fbqName').AsString := lvSDX.Items[i].SubItems[1];
          FormMain.cdsFBQ.FieldByName('fbqSID').AsString := lvSDX.Items[i].SubItems[6];
          FormMain.cdsFBQ.FieldByName('fbqUniq').AsString := lvSDX.Items[i].SubItems[15];
          FormMain.cdsFBQ.FieldByName('fbqTSID').AsString := lvSDX.Items[i].SubItems[7];
          FormMain.cdsFBQ.FieldByName('fbqNID').AsString := lvSDX.Items[i].SubItems[8];
          FormMain.cdsFBQ.FieldByName('fbqServType').AsInteger := stype;
          FormMain.cdsFBQ.FieldByName('fbqDbeNr').AsInteger := FormMain.HighDbeNr;
          FormMain.cdsFBQ.FieldByName('fbqT').AsString := 'n';

          FormMain.cdsFBQ.Post;

          FormMain.log('i',FormMain.lwLngTrns(name,['SatcoDX entry % added to bouquet %',
                                               lvSDX.Items[i].SubItems[1],b]));
        end;
      end;
      ModalResult := mrOK;
    end;
  end;
  bsl.Free;
  FormMain.cdsSERV.IndexFieldNames := servsif;
  FormMain.cdsSERV.Filtered := servflt;
  FormMain.lvServ.Items.Count := FormMain.cdsSERV.RecordCount;

  { process satellites }
  if FileExists(FormMain.Dir + '\satellites.xml')
  then begin;
    FormMain.cdsPos.First;
    while not FormMain.cdsPos.Eof do begin;
      AssignFile(tf,FormMain.Dir+'\satellites.xml');
      SetLineBreakStyle(tf,tlbsLF);
      Reset(tf);
      ReadLn(tf,s);
      while not eof(tf) do begin;
        if pos('position="' + FormMain.cdsPos.FieldByName('posint').AsString + '"',s) > 0
        then begin;
          ib := pos('sat name="',s);
          ie := posex('"',s,ib+10);
          FormMain.cdsPos.Edit;
          FormMain.cdsPos.FieldByName('PosName').AsString := copy(s,ib+10,ie-ib-10);
          FormMain.cdsPos.Post;
        end;
        ReadLn(tf,s);
      end;
      CloseFile(tf);
      FormMain.cdsPos.Next;
    end;
  end;

  FormMain.ShowWait('free',0,0,0);
end;

procedure TFormImport.Checkall1Click(Sender: TObject);
var
  i: Integer;
begin
  Screen.Cursor := crHourGlass;
  cdsSDX.First;
  while not cdsSDX.Eof do begin;
    cdsSDX.Edit;
    cdsSDX.FieldByName('Checked').AsString := '1';
    cdsSDX.Post;
    cdsSDX.Next;
  end;
  for i := 0 to lvSDX.Items.Count - 1 do begin;
    lvSDX.Items[i].Checked := True;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormImport.Uncheckall1Click(Sender: TObject);
var
  i: Integer;
begin
  Screen.Cursor := crHourGlass;
  cdsSDX.First;
  while not cdsSDX.Eof do begin;
    cdsSDX.Edit;
    cdsSDX.FieldByName('Checked').AsString := '0';
    cdsSDX.Post;
    cdsSDX.Next;
  end;
  for i := 0 to lvSDX.Items.Count - 1 do begin;
    lvSDX.Items[i].Checked := False;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormImport.lvSDXKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32
  then begin;
    CheckUncheckClick(Self);
    key := 0;
  end;
end;

procedure TFormImport.lvSDXDblClick(Sender: TObject);
begin
  if lvSDX.Selected = nil
  then exit;

  lvSDX.Selected.Checked := not lvSDX.Selected.Checked;
  if cdsSDX.FindKey([lvSDX.Selected.SubItems[6],
                     lvSDX.Selected.SubItems[15],
                     lvSDX.Selected.SubItems[7],
                     lvSDX.Selected.SubItems[8],
                     lvSDX.Selected.SubItems[2]])
  then begin;
    cdsSDX.Edit;
    if lvSDX.Selected.Checked
    then cdsSDX.FieldByName('Checked').AsString := '1'
    else cdsSDX.FieldByName('Checked').AsString := '0';
    cdsSDX.Post;
  end;
end;

procedure TFormImport.cbUsePIDsClick(Sender: TObject);
begin
  if cbUsePIDs.Checked
  then
    if MessageDlg(FormMain.lwLngTrns(name,[
                  'Warning: Specifying PID settings will work only for non-encrypted services.~' +
                  'Encrypted services with PID settings will not be properly displayed ' +
                  'on the Dreambox.~~' +
                  'Are you sure you want to enable the import of PID settings?']),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then cbUsePIDs.Checked := False;
end;

procedure TFormImport.bCheckDuplicatesClick(Sender: TObject);
begin
  lvSDXColumnToSort := 99;
  lvSDX.AlphaSort;
  lvSDXColumnToSort := 7;
  FormImportDuplicates.ShowModal;
end;

procedure TFormImport.bGetPackageInfoClick(Sender: TObject);
function IsValidLine(var slr: TStringList): Integer;
begin
  if not FormMain.StrIsNumeric(slr[2],False) then result := 3
  else if not FormMain.StrIsNumeric(slr[3],True) then result := 4
  else if not FormMain.StrIsNumeric(slr[9],False) then result := 10
  else if not FormMain.StrIsNumeric(slr[10],False) then result := 11
  else if not FormMain.StrIsNumeric(slr[11],False) then result := 12
  else if not FormMain.StrIsNumeric(slr[12],False) then result := 13
  else if not FormMain.StrIsNumeric(slr[13],False) then result := 14
  else if not FormMain.StrIsNumeric(slr[14],False) then result := 15
  else if not FormMain.StrIsNumeric(slr[15],False) then result := 16
  else if not FormMain.StrIsNumeric(slr[16],False) then result := 17
  else if not FormMain.StrIsNumeric(slr[17],False) then result := 18
  else if not FormMain.StrIsNumeric(slr[18],False) then result := 19
  else if not FormMain.StrIsNumeric(slr[19],False) then result := 20
  else result := -1;
end;
var
  tf: TextFile;
  sl,sli: TStringList;
  s: String;
  i,p,err,col,r,ca: Integer;
begin
  od.FileName := '';
  od.Title := FormMain.lwLngTrns(name,['Select the exported services file to use to append package names']);
  od.Filter := 'Text files (*.txt)|*.TXT|Any file (*.*)|*.*';
  if od.Execute
  then begin;
    { Check choosen file for correct format }
    sl := TStringList.Create;
    sli := TStringList.Create;
    AssignFile(tf,od.FileName);
    Reset(tf);
    Readln(tf,s);
    s := StringReplace(s,#9,#13,[rfReplaceAll]);
    sl.Text := s;
    if (eof(tf)) or
       (sl.Count <> 20) or
       (sl[1] <> 'Package') or
       (sl[19] <> 'Flags')
    then begin;
      CloseFile(tf);
      sl.Free;
      sli.Free;
      MessageDlg(FormMain.lwLngTrns(name,['Empty or invalid file for getting package names.~~'+
                                 'A valid file:~' +
                                 '- is a by DreamBoxEdit exported services file,~' +
                                 '- has 20 columns (tab delimted),~' +
                                 '- starts with a row containing the fieldnames.']),
                 mtError,[mbOK],0);
      exit;
    end;

    FormMain.log('i',FormMain.lwLngTrns(name,['Starting append SatcoDX entries with packagenames from exported services file "%"',
                            od.FileName]));
    while not eof(tf) do begin;
      Readln(tf,s);
      sli.Add(s);
    end;
    CloseFile(tf);

    { fill in-memory clientdataset from file }
    screen.Cursor := crHourGlass;

    cdsPck.EmptyDataSet;
    cdsPck.Close;
    cdsPck.Open;

    err := 0;
    for i := 0 to sli.Count - 1 do begin;
      s := sli[i];
      s := StringReplace(s,#9,#13,[rfReplaceAll]);
      sl.Text := s;

      col := IsValidLine(sl);
      if col > 0
      then begin;
        inc(err);
        FormMain.log('i',FormMain.lwLngTrns(name,['SatcodDx import, appending package names: error in line %, column %',
                                IntToStr(i+1),IntToStr(col)]));
        continue;
      end;

      cdsPck.Append;
      cdsPck.FieldByName('pckSatPos').AsString := FloatToStr(StrToFloat(sl[3])*10);
      cdsPck.FieldByName('pckFreq').AsString := sl[5];
      cdsPck.FieldByName('pckSID').AsString := sl[9];
      cdsPck.FieldByName('pckPackage').AsString := FormMain.CleanText(sl[1]);
      cdsPck.Post;
    end;
    screen.Cursor := crDefault;
    if err > 0
    then begin;
      r := MessageDlg(FormMain.lwLngTrns(name,['Exported services file read with errors: % lines out of % contain errors (see log).~'+
                                               'Do you still want to continue?',
                                               IntToStr(err),IntToStr(sli.Count)]),
                      mtError,[mbYes,mbNo],0);
      if r <> mrYes
      then begin;
        sl.Free;
        sli.Free;
        exit;
      end;
    end;
    sli.Free;
    sl.Free;

    { Process all SatcoDX entries }
    FormMain.ShowWait('init',0,cdsSDX.RecordCount,0);
    ca := 0;
    p := 0;
    cdsSDX.First;
    while not cdsSDX.Eof do begin;
      inc(p);
      if p mod 25 = 0
      then FormMain.ShowWait('pos',0,0,p);

      if cdsPck.FindKey([cdsSDX.FieldByName('SatPos').AsString,
                         cdsSDX.FieldByName('Freq').AsString,
                         cdsSDX.FieldByName('SID').AsString])
      then begin;
        inc(ca);
        cdsSDX.Edit;
        cdsSDX.FieldByName('Package').AsString := cdsPck.FieldByName('pckPackage').AsString;
        cdsSDX.Post;
      end;
      cdsSDX.Next;
    end;
    FormMain.ShowWait('free',0,0,0);

    if ca > 0
    then lvSDXBuild();

    if FormMain.ShowResultMsg
    then begin;
      MessageDlg(FormMain.lwLngTrns(name,['Packagename appended to % SatcoDX entries',
                                    IntToStr(ca)]),
                 mtInformation,[mbOK],0);

    end;
  end;
end;

procedure TFormImport.CheckUncheckClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvSDX.Items.Count - 1 do begin;
    if lvSDX.Items[i].Selected
    then lvSDX.Items[i].Checked := not lvSDX.Items[i].Checked;
    if cdsSDX.FindKey([lvSDX.Items[i].SubItems[6],
                       lvSDX.Items[i].SubItems[15],
                       lvSDX.Items[i].SubItems[7],
                       lvSDX.Items[i].SubItems[8],
                       lvSDX.Items[i].SubItems[2]])
    then begin;
      cdsSDX.Edit;
      if lvSDX.Items[i].Checked
      then cdsSDX.FieldByName('Checked').AsString := '1'
      else cdsSDX.FieldByName('Checked').AsString := '0';
      cdsSDX.Post;
    end;
  end;
end;

procedure TFormImport.bAddPackageNameClick(Sender: TObject);
var
  i: Integer;
  sn: String;
begin
  Screen.Cursor := crHourGlass;
  cdsSDX.First;
  while not cdsSDX.Eof do begin;
    cdsSDX.Edit;
    if cdsSDX.FieldByName('SatName').AsString <> ''
    then sn := '@SDX ' + cdsSDX.FieldByName('SatName').AsString
    else sn := '@SatcoDX';
    cdsSDX.FieldByName('Package').AsString := sn;
    cdsSDX.Post;
    cdsSDX.Next;
  end;
  for i := 0 to lvSDX.Items.Count - 1 do begin;
    if lvSDX.Items[i].Caption <> ''
    then lvSDX.Items[i].SubItems[17] := '@SDX ' + lvSDX.Items[i].Caption
    else lvSDX.Items[i].SubItems[17] := '@SatcoDX';
  end;
  Screen.Cursor := crDefault;
end;

end.
