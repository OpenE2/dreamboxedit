unit DreamBoxEditOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry, Sockets, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, ComCtrls, StrUtils,
  Spin, IdExplicitTLSClientServerBase, DB, DBClient, Grids, DBGrids;

type
  TFormOptions = class(TForm)
    Panel1: TPanel;
    bSave: TButton;
    bCancel: TButton;
    tc: TTcpClient;
    ColorDialog1: TColorDialog;
    FTP1: TIdFTP;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsProfiles: TTabSheet;
    TabSheet3: TTabSheet;
    bResetWidth: TButton;
    cbShowDetails: TCheckBox;
    cbAutoload: TCheckBox;
    cbSaveTVRadio: TCheckBox;
    cbSortUseService: TCheckBox;
    cbEnableZAP: TCheckBox;
    bSetOptionsToDefaults: TButton;
    Label2: TLabel;
    pMainColor: TPanel;
    bDefaultColors: TButton;
    pSplitterColor: TPanel;
    cbZAPKey: TComboBox;
    TabSheet4: TTabSheet;
    cbShowResult: TCheckBox;
    cbConfirmDelete: TCheckBox;
    TabSheet5: TTabSheet;
    cbNewSatXMLBottom: TCheckBox;
    cbZAPNoErrorCheck: TCheckBox;
    cbAutoCheckVersion: TCheckBox;
    cbAllowDuplicates: TCheckBox;
    cbShowDetHint: TCheckBox;
    Label12: TLabel;
    _SpinEdit1: TSpinEdit;
    TabSheet7: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    cbQuickFTP: TCheckBox;
    rbReload: TRadioButton;
    rbReboot: TRadioButton;
    rbCustomCmd: TRadioButton;
    rbNothing: TRadioButton;
    Label6: TLabel;
    eUserTelnetCmd: TEdit;
    Label9: TLabel;
    eDreamboxCmdPrompt: TEdit;
    cbShowReboot: TCheckBox;
    cbConfirmSort: TCheckBox;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    mWordList: TMemo;
    gbPrNetwork: TGroupBox;
    Label1: TLabel;
    eIP: TEdit;
    Label13: TLabel;
    eHTTPPort: TEdit;
    Label15: TLabel;
    bTestIP: TButton;
    ePassword: TEdit;
    eUsername: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label16: TLabel;
    eFTPPort: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    eFTPPassive: TRadioButton;
    eFTPActive: TRadioButton;
    bResetTCPIP: TButton;
    bTestFTP: TButton;
    lProfiles: TLabel;
    bDeleteProfile: TButton;
    gbPaths: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ePathServices: TEdit;
    ePathUserBouquets: TEdit;
    ePathSatellites: TEdit;
    Label19: TLabel;
    bDefaultsForSat: TButton;
    bDefaultsForCable: TButton;
    bNewProfile: TButton;
    cdsProfiles: TClientDataSet;
    lvProfiles: TListView;
    lProfilename: TLabel;
    eProfilename: TEdit;
    bDefaultsFor7025: TButton;
    cbHidePassword: TCheckBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    mTVTypes: TMemo;
    bTVDefaults: TButton;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    mRDTypes: TMemo;
    bRDDefaults: TButton;
    TabSheet2: TTabSheet;
    cbPiconActivate: TCheckBox;
    GroupBox5: TGroupBox;
    cbPiconUpload: TCheckBox;
    ePathPicons: TEdit;
    Label14: TLabel;
    bPiconUSB: TButton;
    bPiconHdd: TButton;
    bPiconCF: TButton;
    Label18: TLabel;
    bDefaultsNewEnigma2: TButton;
    bTVAddHDTV: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSaveClick(Sender: TObject);
    procedure bTestIPClick(Sender: TObject);
    procedure tcConnect(Sender: TObject);
    procedure tcError(Sender: TObject; SocketError: Integer);
    procedure tcReceive(Sender: TObject; Buf: PAnsiChar;
      var DataLen: Integer);
    procedure pMainColorClick(Sender: TObject);
    procedure bDefaultColorsClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure bResetWidthClick(Sender: TObject);
    procedure pSplitterColorClick(Sender: TObject);
    procedure bSetOptionsToDefaultsClick(Sender: TObject);
    procedure bResetTCPIPClick(Sender: TObject);
    procedure bTestFTPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bDefaultsForSatClick(Sender: TObject);
    procedure eHTTPPortChange(Sender: TObject);
    procedure eFTPPortChange(Sender: TObject);
    procedure eIPChange(Sender: TObject);
    procedure bDefaultsForCableClick(Sender: TObject);
    procedure bNewProfileClick(Sender: TObject);
    procedure lvProfilesSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure bDeleteProfileClick(Sender: TObject);
    procedure eCheckNotBlank(Sender: TObject);
    procedure tsProfilesEnter(Sender: TObject);
    procedure bDefaultsFor7025Click(Sender: TObject);
    procedure bTVDefaultsClick(Sender: TObject);
    procedure bRDDefaultsClick(Sender: TObject);
    procedure bDefaultsNewEnigma2Click(Sender: TObject);
    procedure bPiconUSBClick(Sender: TObject);
    procedure bPiconHddClick(Sender: TObject);
    procedure bPiconCFClick(Sender: TObject);
    procedure bTVAddHDTVClick(Sender: TObject);
  private
    { Private declarations }
    Loading: Boolean;
    OldMainColor: TColor;
    OldSplitterColor: TColor;
    OnShowTime: Boolean;
    vers:Integer;
  public
    { Public declarations }
  end;

var
  FormOptions: TFormOptions;

implementation

uses DreamBoxMain, DreamBoxEditFiles;

{$R *.dfm}

procedure TFormOptions.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key,pr: String;
  zk,i: Integer;
  itm: TListItem;
begin
  OnShowTime := True;
  Caption := FormMain.lwLngTrns(name,['DreamBoxEdit Options']);
  eProfilename.Left := lProfilename.Left +
                       lProfilename.Width + 10;

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

  cbPiconActivate.Checked := Reg.ReadBool('PiconActivate');
  cbPiconUpload.Checked := Reg.ReadBool('PiconUpload');

  cbZAPKey.Items[1] := FormMain.lwLngTrns(name,['Spacebar']);
  cbZAPKey.Items[2] := FormMain.lwLngTrns(name,['Double Click']);

  cbShowDetails.Checked := Reg.ReadBool('ShowServiceDetails');
  cbConfirmDelete.Checked := Reg.ReadBool('ConfirmBeforeDelete');
  cbConfirmSort.Checked := Reg.ReadBool('ConfirmBeforeSort');
  cbShowResult.Checked := Reg.ReadBool('ShowResultMessages');
  cbAutoload.Checked := Reg.ReadBool('AutoloadAtStart');
  cbSaveTVRadio.Checked := Reg.ReadBool('Save TV and Radio Checkbox');
  cbAllowDuplicates.Checked := Reg.ReadBool('AllowDuplicates');
  cbShowReboot.Checked := Reg.ReadBool('Show Reboot Option');
  cbSortUseService.Checked := Reg.ReadBool('SortUseServicename');
  cbShowDetHint.Checked := Reg.ReadBool('Show Details Hint');
  cbAutoCheckVersion.Checked := Reg.ReadBool('AutoCheckVersion');
  _SpinEdit1.Value := FormMain.AutoCheckDays;
  cbNewSatXMLBottom.Checked := Reg.ReadBool('NewSatXMLBottom');
  cbEnableZAP.Checked := Reg.ReadBool('Enable ZAP function');
  zk := Reg.ReadInteger('ZAP Key');
  case zk of
    26: cbZAPKey.ItemIndex := 0;
    32: cbZAPKey.ItemIndex := 1;
    else cbZAPKey.ItemIndex := 2;
  end;
  cbZAPNoErrorCheck.Checked := Reg.ReadBool('Disable ZAP Error Checking');
  cbHidePassword.Checked := Reg.ReadBool('HidePassword');
  if cbHidePassword.Checked
  then ePassword.PasswordChar := '*'
  else ePassword.PasswordChar := char(0);

  pMainColor.Color := Reg.ReadInteger('MainDisplayColor');
  pSplitterColor.Color := Reg.ReadInteger('MainSplitterColor');
  oldMainColor := pMainColor.Color;
  oldSplitterColor := pSplitterColor.Color;

  cdsProfiles.EmptyDataSet;
  cdsProfiles.Close;
  cdsProfiles.Open;
  Loading := True;
  lvProfiles.Clear;
  for i := 0 to Reg.ReadInteger('Profiles') - 1 do begin;
    pr := Reg.ReadString('Profiles Name ' + IntToStr(i));
    itm := lvProfiles.Items.Add;
    itm.Caption := pr;
    if pr = FormMain.ProfilesName
    then itm.Selected := True;
    cdsProfiles.Append;
    cdsProfiles.FieldByName('prSeqNr').AsInteger := i;
    cdsProfiles.FieldByName('prName').AsString := Reg.ReadString('Profiles Name ' + IntToStr(i));
    cdsProfiles.FieldByName('prIPAddress').AsString := Reg.ReadString('Profiles IP Address ' + IntToStr(i));
    cdsProfiles.FieldByName('prHTTPPort').AsString := Reg.ReadString('Profiles HTTP Port ' + IntToStr(i));
    cdsProfiles.FieldByName('prUsername').AsString := Reg.ReadString('Profiles Username ' + IntToStr(i));
    cdsProfiles.FieldByName('prPassword').AsString := Reg.ReadString('Profiles Password ' + IntToStr(i));
    cdsProfiles.FieldByName('prFTPPort').AsString := Reg.ReadString('Profiles FTP Port ' + IntToStr(i));
    cdsProfiles.FieldByName('prFTPPassive').AsBoolean := Reg.ReadBool('Profiles FTP Type Passive ' + IntToStr(i));
    cdsProfiles.FieldByName('prPathServices').AsString := Reg.ReadString('Profiles Path Services ' + IntToStr(i));
    cdsProfiles.FieldByName('prPathUserbouquets').AsString := Reg.ReadString('Profiles Path Userbouquets ' + IntToStr(i));
    cdsProfiles.FieldByName('prPathSatellites').AsString := Reg.ReadString('Profiles Path Satellites ' + IntToStr(i));
    cdsProfiles.FieldByName('prPathPicons').AsString := Reg.ReadString('Profiles Path Picons ' + IntToStr(i));
    cdsProfiles.Post;
  end;
  Loading := False;
  lvProfiles.Selected.MakeVisible(False);

  eProfileName.Text := FormMain.ProfilesName;
  eIP.Text := FormMain.DBIP;
  eHTTPPort.Text := FormMain.DBHTTPPort;
  eFTPPort.Text := FormMain.DBFTPPort;
  eUsername.Text := FormMain.DBUsername;
  ePassword.Text := FormMain.DBPassword;
  eFTPPassive.Checked := FormMain.FTPPassive;
  eFTPActive.Checked := not FormMain.FTPPassive;
  ePathServices.Text := FormMain.PathServices;
  ePathUserBouquets.Text := FormMain.PathUserBouquets;
  ePathSatellites.Text := FormMain.PathSatellites;
  ePathPicons.Text := FormMain.PathPicons;

  eUserTelnetCmd.Text := FormMain.UserTelnetCmd;
  eDreamboxCmdPrompt.Text := FormMain.DreamboxCmdPrompt;
  cbQuickFTP.Checked := Reg.ReadBool('QuickFTP Enabled');
  rbReload.Checked := Reg.ReadBool('QuickFTP Reload');
  rbReboot.Checked := Reg.ReadBool('QuickFTP Reboot');
  rbCustomCmd.Checked := Reg.ReadBool('QuickFTP Custom Command');
  rbNothing.Checked := Reg.ReadBool('QuickFTP Nothing');

  mWordList.Clear;
  for i := 0 to FormMain.FormatWordsList.Count - 1 do begin;
    mWordList.Lines.Add(FormMain.FormatWordsList[i]);
  end;
  mTVTypes.Text := FormMain.TVTypes.Text;
  mRDTypes.Text := FormMain.RDTypes.Text;

  Reg.CloseKey;
  Reg.Destroy;
  OnShowTime := False;
end;

procedure TFormOptions.FormClose(Sender: TObject;
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

procedure TFormOptions.bSaveClick(Sender: TObject);
var
  Reg: Tregistry;
  zk,i,c: Integer;
begin
  { Save shown profile }
  lvProfilesSelectItem(Self,lvProfiles.Selected,False);

  { Checks }
  if (cbEnableZAP.Checked) and
     (eIP.Text = '')
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'If you want to enable the ZAP function, you must enter ' +
               'the IP address of the Dreambox!']),
               mtError,[mbOK],0);
    ModalResult := mrNone;
  end;

  { Write all values to registry }
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);


  Reg.WriteBool('PiconActivate',cbPiconActivate.Checked);
  FormMain.PiconActivate := cbPiconActivate.Checked;

  Reg.WriteBool('PiconUpload', cbPiconUpload.Checked);
  FormMain.PiconUpload := cbPiconUpload.Checked;

  Reg.WriteInteger('MainDisplayColor',pMainColor.Color);
  FormMain.MainColor := pMainColor.Color;

  Reg.WriteInteger('MainSplitterColor',pSplitterColor.Color);
  FormMain.SplitterColor := pSplitterColor.Color;

  Reg.WriteBool('ShowServiceDetails',cbShowDetails.Checked);
  FormMain.ShowDetails := cbShowDetails.Checked;

  Reg.WriteBool('ConfirmBeforeDelete',cbConfirmDelete.Checked);
  FormMain.ConfirmDelete := cbConfirmDelete.Checked;

  Reg.WriteBool('ConfirmBeforeSort',cbConfirmSort.Checked);
  FormMain.ConfirmSort := cbConfirmSort.Checked;

  Reg.WriteBool('ShowResultMessages',cbShowResult.Checked);
  FormMain.ShowResultMsg := cbShowResult.Checked;

  Reg.WriteBool('AutoloadAtStart',cbAutoload.Checked);

  Reg.WriteBool('Save TV and Radio Checkbox',cbSaveTVRadio.Checked);
  FormMain.SaveTVRadio := cbSaveTVRadio.Checked;

  Reg.WriteBool('AllowDuplicates',cbAllowDuplicates.Checked);
  FormMain.AllowDuplicates := cbAllowDuplicates.Checked;

  Reg.WriteBool('Show Reboot Option',cbShowReboot.Checked);
  FormMain.ShowReboot := cbShowReboot.Checked;

  Reg.WriteBool('SortUseServicename',cbSortUseService.Checked);
  FormMain.SortUseService := cbSortUseService.Checked;

  Reg.WriteBool('Show details Hint',cbShowDetHint.Checked);
  FormMain.ShowDetHint := cbShowDetHint.Checked;

  Reg.WriteBool('AutoCheckVersion',cbAutoCheckVersion.Checked);
  FormMain.AutoCheckVersion := cbAutoCheckVersion.Checked;

  Reg.WriteInteger('AutoCheckDays',_SpinEdit1.Value);
  FormMain.AutoCheckDays := _SpinEdit1.Value;

  Reg.WriteBool('NewSatXMLBottom',cbNewSatXMLBottom.Checked);
  FormMain.NewSatXMLBottom := cbNewSatXMLBottom.Checked;

  Reg.WriteBool('Enable ZAP function',cbEnableZAP.Checked);
  FormMain.EnableZAP := cbEnableZAP.Checked;

  Case cbZAPKey.ItemIndex of
    0: zk := 26;
    1: zk := 32;
    else zk := 0;
  end;
  Reg.WriteInteger('ZAP Key',zk);
  FormMain.ZAPKey := zk;

  Reg.WriteBool('Disable ZAP Error Checking',cbZAPNoErrorCheck.Checked);
  FormMain.ZAPNoErrorCheck := cbZAPNoErrorCheck.Checked;

  Reg.WriteBool('HidePassword',cbHidePassword.Checked);
  FormMain.HidePassword := cbHidePassword.Checked;
  if cbHidePassword.Checked
  then ePassword.PasswordChar := '*'
  else ePassword.PasswordChar := char(0);

  { Save Profiles }
  c := Reg.ReadInteger('Profiles');
  for i := 0 to c - 1 do begin;
    Reg.DeleteValue('Profiles Name ' + IntToStr(i));
    Reg.DeleteValue('Profiles IP Address ' + IntToStr(i));
    Reg.DeleteValue('Profiles HTTP Port ' + IntToStr(i));
    Reg.DeleteValue('Profiles FTP Port ' + IntToStr(i));
    Reg.DeleteValue('Profiles Username ' + IntToStr(i));
    Reg.DeleteValue('Profiles Password ' + IntToStr(i));
    Reg.DeleteValue('Profiles FTP Type Passive ' + IntToStr(i));
    Reg.DeleteValue('Profiles Path Services ' + IntToStr(i));
    Reg.DeleteValue('Profiles Path Userbouquets ' + IntToStr(i));
    Reg.DeleteValue('Profiles Path Satellites ' + IntToStr(i));
  end;

  c := 0;
  cdsProfiles.First;
  while not cdsProfiles.Eof do begin;
    Reg.WriteString('Profiles Name ' + IntToStr(c),cdsProfiles.FieldValues['prName']);
    Reg.WriteString('Profiles IP Address ' + IntToStr(c),cdsProfiles.FieldValues['prIPAddress']);
    Reg.WriteString('Profiles HTTP Port ' + IntToStr(c),cdsProfiles.FieldValues['prHTTPPort']);
    Reg.WriteString('Profiles FTP Port ' + IntToStr(c),cdsProfiles.FieldValues['prFTPPort']);
    Reg.WriteString('Profiles Username ' + IntToStr(c),cdsProfiles.FieldValues['prUsername']);
    Reg.WriteString('Profiles Password ' + IntToStr(c),cdsProfiles.FieldValues['prPassword']);
    Reg.WriteBool('Profiles FTP Type Passive ' + IntToStr(c),cdsProfiles.FieldValues['prFTPPassive']);
    Reg.WriteString('Profiles Path Services ' + IntToStr(c),cdsProfiles.FieldValues['prPathServices']);
    Reg.WriteString('Profiles Path Userbouquets ' + IntToStr(c),cdsProfiles.FieldValues['prPathUserbouquets']);
    Reg.WriteString('Profiles Path Satellites ' + IntToStr(c),cdsProfiles.FieldValues['prPathSatellites']);
    cdsProfiles.Next;
    inc(c);
  end;
  Reg.WriteInteger('Profiles',cdsProfiles.RecordCount);

  Reg.WriteString('Profiles Name',eProfileName.Text);
  FormMain.ProfilesName := eProfileName.Text;

  Reg.WriteString('Dreambox IP Address',eIP.Text);
  FormMain.DBIP := eIP.Text;

  Reg.WriteString('Dreambox HTTP Port Number',eHTTPPort.Text);
  FormMain.DBHTTPPort := eHTTPPort.Text;

  Reg.WriteString('Dreambox FTP Port Number',eFTPPort.Text);
  FormMain.DBFTPPort := eFTPPort.Text;

  Reg.WriteString('Dreambox Username',eUsername.Text);
  FormMain.DBUsername := eUsername.Text;

  Reg.WriteString('Dreambox Password',ePassword.Text);
  FormMain.DBPassword := ePassword.Text;

  Reg.WriteBool('FTP Type Passive',eFTPPassive.Checked);
  FormMain.FTPPassive := eFTPPassive.Checked;

  Reg.WriteString('Path Services',ePathServices.Text);
  FormMain.PathServices := ePathServices.Text;

  Reg.WriteString('Path UserBouquets',ePathUserBouquets.Text);
  FormMain.PathUserBouquets := ePathUserBouquets.Text;

  Reg.WriteString('Path Satellites',ePathSatellites.Text);
  FormMain.PathSatellites := ePathSatellites.Text;

  Reg.WriteString('Path Picons', ePathPicons.Text);
  FormMain.PathPicons := ePathPicons.Text;

  Reg.WriteString('User Telnet Command',eUserTelnetCmd.Text);
  FormMain.UserTelnetCmd := eUserTelnetCmd.Text;

  Reg.WriteString('Dreambox Command Prompt',eDreamboxCmdPrompt.Text);
  FormMain.DreamboxCmdPrompt := eDreamboxCmdPrompt.Text;

  Reg.WriteBool('QuickFTP Enabled',cbQuickFTP.Checked);
  FormMain.QuickFTPEnabled := cbQuickFTP.Checked;

  Reg.WriteBool('QuickFTP Reload',rbReload.Checked);
  FormMain.QuickFTPReload := rbReload.Checked;

  Reg.WriteBool('QuickFTP Reboot',rbReboot.Checked);
  FormMain.QuickFTPReboot := rbReboot.Checked;

  Reg.WriteBool('QuickFTP Custom Command',rbCustomCmd.Checked);
  FormMain.QuickFTPCustomCmd := rbCustomCmd.Checked;

  Reg.WriteBool('QuickFTP Nothing',rbNothing.Checked);
  FormMain.QuickFTPNothing := rbNothing.Checked;

  for i := 0 to FormMain.FormatWordsList.Count - 1 do begin;
    Reg.DeleteValue('FormatWordsList' + IntToStr(i));
  end;
  FormMain.FormatWordsList.Clear;
  c := 0;
  for i := 0 to mWordList.Lines.Count - 1 do begin;
    if trim(mWordList.Lines[i]) <> ''
    then begin;
      FormMain.FormatWordsList.Add(mWordList.Lines[i]);
      Reg.WriteString('FormatWordsList' + IntToStr(i),mWordList.Lines[c]);
      inc(c);
    end;
  end;
  Reg.WriteInteger('FormatWordsListCount',c);

  for i := 0 to mTVTypes.Lines.Count - 1 do begin;
    mTVTypes.Lines[i] := trim(mTVTypes.Lines[i]);
  end;
  Reg.WriteString('TVTypes',mTVTypes.Text);
  FormMain.TVTypes.Text := mTVTypes.Text;
  for i := FormMain.TVTypes.Count - 1 downto 0 do begin;
    if FormMain.TVTypes[i] = ''
    then FormMain.TVTypes.Delete(i);
  end;

  for i := 0 to mRDTypes.Lines.Count - 1 do begin;
    mRDTypes.Lines[i] := trim(mRDTypes.Lines[i]);
  end;
  Reg.WriteString('RDTypes',mRDTypes.Text);
  FormMain.RDTypes.Text := mRDTypes.Text;
  for i := FormMain.RDTypes.Count - 1 downto 0 do begin;
    if FormMain.RDTypes[i] = ''
    then FormMain.RDTypes.Delete(i);
  end;

  Reg.CloseKey;
  Reg.Destroy;

  FormMain.lvServColumnsAdjust();

  if cbQuickFTP.Checked
  then begin;
    FormMain.tbFFTPDown.Visible := True;
    FormMain.tbFFTPUp.Visible := True;
  end
  else begin;
    FormMain.tbFFTPDown.Visible := False;
    FormMain.tbFFTPUp.Visible := False;
  end;
  FormMain.SetVersionDefaults(vers);
  FormMain.StatusBarShowIPInfo();
end;

procedure TFormOptions.bTestIPClick(Sender: TObject);
begin
  if eIP.Text = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['You must first enter the Dreambox IP Address.']),
             mtError,[mbOK],0);
    exit;
  end;
  if eHTTPPort.Text = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['You must enter the Dreambox HTTP port (normally 80).']),
             mtError,[mbOK],0);
    exit;
  end;

  tc.RemoteHost := eIP.Text;
  tc.RemotePort := eHTTPPort.Text;
  screen.cursor := crHourglass;
  try
    tc.Connect;
  except;
  end;
  tc.Disconnect;
  screen.cursor := crDefault;
end;

procedure TFormOptions.tcConnect(Sender: TObject);
begin
  MessageDlg(FormMain.lwLngTrns(name,[
             'Successfully connected to the Dreambox on IP address % (port %)',
             eIP.Text,eHTTPPort.Text]),
             mtInformation,[mbOK],0);
end;

procedure TFormOptions.tcError(Sender: TObject; SocketError: Integer);
begin
  MessageDlg(FormMain.lwLngTrns(name,[
             'Failed to connect to the Dreambox on IP address % (port %)',
             eIP.Text,eHTTPPort.Text]),
             mtError,[mbOK],0);
end;

procedure TFormOptions.tcReceive(Sender: TObject; Buf: PAnsiChar;
  var DataLen: Integer);
begin
  exit;
end;

procedure TFormOptions.pMainColorClick(Sender: TObject);
begin
  ColorDialog1.Color := pMainColor.Color;
  ColorDialog1.CustomColors.Add('ColorA='+IntToHex(pMainColor.Color,6));
  if ColorDialog1.Execute
  then begin;
    pMainColor.Color := ColorDialog1.Color;
    FormMain.ToolBar1.Color := ColorDialog1.Color;
    FormMain.lwPanelL.Color := ColorDialog1.Color;
    FormMain.lwPanelL.Color2 := ColorDialog1.Color;
    FormMain.lwPanelRL.Color := ColorDialog1.Color;
    FormMain.lwPanelRL.Color2 := ColorDialog1.Color;
    FormMain.lwPanelRR.Color := ColorDialog1.Color;
    FormMain.lwPanelRR.Color2 := ColorDialog1.Color;
    FormMain.Splitter1.Color := pSplitterColor.Color;
    FormMain.Splitter2.Color := pSplitterColor.Color;
    FormMain.lwPanel2.Color1 := ColorDialog1.Color;
    FormMain.lwPanel3.Color1 := ColorDialog1.Color;
    FormMain.lwPanel4.Color1 := ColorDialog1.Color;
  end;
end;

procedure TFormOptions.bDefaultColorsClick(Sender: TObject);
begin
  pMainColor.Color := $00F9E9DB;
  pSplitterColor.Color := clSkyBlue;
  FormMain.ToolBar1.Color := pMainColor.Color;
  FormMain.lwPanelL.Color := pMainColor.Color;
  FormMain.lwPanelL.Color2 := pMainColor.Color;
  FormMain.lwPanelRL.Color := pMainColor.Color;
  FormMain.lwPanelRL.Color2 := pMainColor.Color;
  FormMain.lwPanelRR.Color := pMainColor.Color;
  FormMain.lwPanelRR.Color2 := pMainColor.Color;
  FormMain.LWPanel2.Color1 := pMainColor.Color;
  FormMain.LWPanel3.Color1 := pMainColor.Color;
  FormMain.LWPanel4.Color1 := pMainColor.Color;
  FormMain.Splitter1.Color := pSplitterColor.Color;
  FormMain.Splitter2.Color := pSplitterColor.Color;
end;

procedure TFormOptions.bCancelClick(Sender: TObject);
begin
  if pMainColor.Color <> OldMainColor
  then begin;
    FormMain.ToolBar1.Color := OldMainColor;
    FormMain.lwPanelL.Color := OldMainColor;
    FormMain.lwPanelL.Color2 := OldMainColor;
    FormMain.lwPanelRL.Color := OldMainColor;
    FormMain.lwPanelRL.Color2 := OldMainColor;
    FormMain.lwPanelRR.Color := OldMainColor;
    FormMain.lwPanelRR.Color2 := OldMainColor;
    FormMain.LWPanel2.Color1 := OldMainColor;
    FormMain.LWPanel3.Color1 := OldMainColor;
    FormMain.LWPanel4.Color1 := OldMainColor;
  end;
  if pSplitterColor.Color <> OldSplitterColor
  then begin;
    FormMain.Splitter1.Color := OldSplitterColor;
    FormMain.Splitter2.Color := OldSplitterColor;
  end;
end;

procedure TFormOptions.bResetWidthClick(Sender: TObject);
begin
  FormMain.lwPanelL.Width := 526;
  FormMain.LWPanelR.Width := 175 + 188 + 5;
  FormMain.lwPanelRR.Width := 175;
  FormMain.lwPanelRL.Width := 188;

  FormMain.lvServ.Width := FormMain.lwPanelL.Width - 4;
  FormMain.lvDet.Width := FormMain.lwPanelRL.Width - 5;
  FormMain.tv.Width := FormMain.lwPanelRR.Width - 3;

  FormMain.lvServ.Columns[0].Width := 100;
  FormMain.lvServ.Columns[1].Width := 100;
  FormMain.lvServ.Columns[2].Width := 40;
  FormMain.lvServ.Columns[3].Width := 45;
  FormMain.lvServ.Columns[4].Width := 90;
  FormMain.lvServ.Columns[5].Width := 70;
  FormMain.lvServ.Columns[6].Width := 30;
  if FormMain.lvServ.Columns.Count > 7
  then begin;
    FormMain.lvServ.Columns[7].Width := 70;
    FormMain.lvServ.Columns[8].Width := 32;
    FormMain.lvServ.Columns[9].Width := 50;
    FormMain.lvServ.Columns[10].Width := 45;
    FormMain.lvServ.Columns[11].Width := 45;
    FormMain.lvServ.Columns[12].Width := 45;
    FormMain.lvServ.Columns[13].Width := 45;
    FormMain.lvServ.Columns[14].Width := 40;
    FormMain.lvServ.Columns[15].Width := 40;
    FormMain.lvServ.Columns[16].Width := 40;
    FormMain.lvServ.Columns[17].Width := 40;
    FormMain.lvServ.Columns[18].Width := 40;
    FormMain.lvServ.Columns[19].Width := 75;
    FormMain.lvServ.Columns[20].Width := 40;
  end;

  FormMain.lvDet.Columns[0].Width := 95;
  FormMain.lvDet.Columns[1].Width := 40;
  FormMain.lvDet.Columns[2].Width := 46;
end;

procedure TFormOptions.pSplitterColorClick(Sender: TObject);
begin
  ColorDialog1.Color := pSplitterColor.Color;
  ColorDialog1.CustomColors.Add('ColorA='+IntToHex(pSplitterColor.Color,6));
  if ColorDialog1.Execute
  then begin;
    pSplitterColor.Color := ColorDialog1.Color;
    FormMain.Splitter1.Color := ColorDialog1.Color;
    FormMain.Splitter2.Color := ColorDialog1.Color;
  end;
end;

procedure TFormOptions.bSetOptionsToDefaultsClick(Sender: TObject);
begin
  cbPiconActivate.Checked := False;
  cbPiconUpload.Checked := False;
  cbShowDetails.Checked := True;
  cbConfirmDelete.Checked := True;
  cbConfirmSort.Checked := True;
  cbShowResult.Checked := True;
  cbAutoload.Checked := False;
  cbEnableZAP.Checked := False;
  cbZAPNoErrorCheck.Checked := False;
  cbSaveTVRadio.Checked := False;
  cbAllowDuplicates.Checked := False;
  cbShowReboot.Checked := False;
  cbSortUseService.Checked := True;
  cbShowDetHint.Checked := True;
  cbAutoCheckVersion.Checked := False;
  cbNewSatXMLBottom.Checked := False;
  cbZAPKey.ItemIndex := 0;
  cbHidePassword.Checked := False;
end;

procedure TFormOptions.bResetTCPIPClick(Sender: TObject);
begin
  eIP.Text := '192.168.0.5';
  eHTTPPort.Text := '80';
  eFTPPort.Text := '21';
  eUsername.Text := 'root';
  ePassword.Text := 'dreambox';
  eFTPPassive.Checked := True;
end;

procedure TFormOptions.bTestFTPClick(Sender: TObject);
var
  error: Boolean;
  pw: String;
begin
  error := False;
  FTP1.Host := eIP.Text;
  FTP1.Port := StrToInt(eFTPPort.Text);
  FTP1.Username := eUsername.Text;
  FTP1.Password := ePassword.Text;
  FTP1.Passive := eFTPPassive.Checked;
  Screen.Cursor := crHourGlass;
  try
    FTP1.Connect;
  Except
    error := true;
  end;
  if error
  then begin;
    Screen.Cursor := crDefault;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Could not connect to the Dreambox on address %, port %.~~' +
               'Check the IP address and the port number and try again.',
               eIP.Text,eFTPPort.Text]),
               mtError,[mbOK],0);
    exit;
  end;

  try FTP1.Login;
  Except
    error := true;
  end;
  if error
  then begin;
    Screen.Cursor := crDefault;
    if FormMain.HidePassword
    then pw := DupeString('*',length(ePassword.Text))
    else pw := ePassword.Text;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Could not login to the Dreambox with username "%" and password "%".~~' +
               'Check the username and password and try again.',
               eUsername.Text,pw]),
               mtError,[mbOK],0);
    exit;
  end;
  Screen.Cursor := crDefault;
  try FTP1.Disconnect;
  Except
  end;
  MessageDlg(FormMain.lwLngTrns(name,[
             'Successfully connected to the Dreambox FTP server!~' +
             'IP address, FTP port number, username and password are correct.']),
             mtInformation,[mbOK],0);
end;

procedure TFormOptions.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  
  cdsProfiles.IndexFieldNames := 'prSeqNr';
  cdsProfiles.CreateDataset;
  cdsProfiles.LogChanges := False;
end;

procedure TFormOptions.bDefaultsForSatClick(Sender: TObject);
begin
  ePathServices.Text := '/var/tuxbox/config/enigma/';
  ePathUserBouquets.Text := '/var/tuxbox/config/enigma/';
  ePathSatellites.Text := '/var/etc/';
  if (FormMain.SettingsVersion = 2) and
     (FormMain.lvServ.Items.Count > 0)
  then FormMain.SetMenu('changed');
  vers:=2;
end;

procedure TFormOptions.bDefaultsForCableClick(Sender: TObject);
begin
  ePathServices.Text := '/var/tuxbox/config/enigma/';
  ePathUserBouquets.Text := '/var/tuxbox/config/enigma/cable/';
  ePathSatellites.Text := '/var/etc/';
  if (FormMain.SettingsVersion = 2) and
     (FormMain.lvServ.Items.Count > 0)
  then FormMain.SetMenu('changed');
end;


procedure TFormOptions.bDefaultsFor7025Click(Sender: TObject);
begin
  ePathServices.Text := '/etc/enigma2/';
  ePathUserBouquets.Text := '/etc/enigma2/';
  ePathSatellites.Text := '/etc/tuxbox/';
  if (FormMain.SettingsVersion = 2) or
     (FormMain.SettingsVersion = 4) and
     (FormMain.lvServ.Items.Count > 0)
  then FormMain.SetMenu('changed');
  vers := 3;
end;

procedure TFormOptions.eHTTPPortChange(Sender: TObject);
begin
  if (trim(eHTTPPort.Text) = '') or
     (not FormMain.StrIsNumeric(eHTTPPort.Text,False))
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['HTTP Port must be a numeric value ' +
                                        '(default is 80)']),
             mtError,[mbOK],0);
    eHTTPPort.SetFocus;
    exit;
  end;
end;

procedure TFormOptions.eFTPPortChange(Sender: TObject);
begin
  if (trim(eFTPPort.Text) = '') or
     (not FormMain.StrIsNumeric(eFTPPort.Text,False))
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['FTP Port must be a numeric value ' +
                                        '(default is 21)']),
             mtError,[mbOK],0);
    eFTPPort.SetFocus;
    exit;
  end;
end;

procedure TFormOptions.eIPChange(Sender: TObject);
begin
  if trim(eIP.Text) = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['The IP Address must be a valid IP address like~' +
                                        '192.168.0.5 or MyDreambox.DYNDNS.COM etc.']),
             mtError,[mbOK],0);
    eIP.SetFocus;
    exit;
  end;
end;

procedure TFormOptions.bNewProfileClick(Sender: TObject);
var
  itm: TListItem;
begin
  if lvProfiles.FindCaption(0,'New profile',False,True,False) <> nil
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Can not add a new profile. A profile ' +
                                        'with the name "New Profile" already '+
                                        'exists.']),
             mtError,[mbOK],0);
    eFTPPort.SetFocus;
    exit;
  end;

  itm := lvProfiles.Items.Add;
  itm.Caption := 'New profile';

  cdsProfiles.Append;
  cdsProfiles.FieldValues['prSeqNr'] := itm.Index;
  cdsProfiles.FieldValues['prName'] := itm.Caption;
  cdsProfiles.FieldValues['prIPAddress'] := eIP.Text;
  cdsProfiles.FieldValues['prHTTPPort'] := eHTTPPort.Text;
  cdsProfiles.FieldValues['prFTPPort'] := eFTPPort.Text;
  cdsProfiles.FieldValues['prUsername'] := eUsername.Text;
  cdsProfiles.FieldValues['prPassword'] := ePassword.Text;
  cdsProfiles.FieldValues['prFTPPassive'] := eFTPPassive.Checked;
  cdsProfiles.FieldValues['prPathServices'] := ePathServices.Text;
  cdsProfiles.FieldValues['prPathUserbouquets'] := ePathUserbouquets.Text;
  cdsProfiles.FieldValues['prPathSatellites'] := ePathSatellites.Text;
  cdsProfiles.FieldValues['PrPathPicons'] := ePathPicons.Text;
  cdsProfiles.Post;

  itm.Selected := True;
end;

procedure TFormOptions.lvProfilesSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if Loading
  then exit;

  { For entry to become non-selected: Check and/or correct entries and save to cds }
  if not Selected
  then begin;
    ePathServices.Text := trim(ePathServices.Text);
    if ePathServices.Text = ''
    then ePathServices.Text := '/var/tuxbox/config/enigma/';
    if LeftStr(ePathServices.Text,1) <> '/'
    then ePathServices.Text := '/' + ePathServices.Text;
    if RightStr(ePathServices.Text,1) <> '/'
    then ePathServices.Text := ePathServices.Text + '/';

    ePathUserBouquets.Text := trim(ePathUserBouquets.Text);
    if ePathUserBouquets.Text = ''
    then ePathUserBouquets.Text := '/var/tuxbox/config/enigma/';
    if LeftStr(ePathUserBouquets.Text,1) <> '/'
    then ePathUserBouquets.Text := '/' + ePathUserBouquets.Text;
    if RightStr(ePathUserBouquets.Text,1) <> '/'
    then ePathUserBouquets.Text := ePathUserBouquets.Text + '/';

    ePathSatellites.Text := trim(ePathSatellites.Text);
    if ePathSatellites.Text = ''
    then ePathSatellites.Text := '/var/etc/';
    if LeftStr(ePathSatellites.Text,1) <> '/'
    then ePathSatellites.Text := '/' + ePathSatellites.Text;
    if RightStr(ePathSatellites.Text,1) <> '/'
    then ePathSatellites.Text := ePathSatellites.Text + '/';

    ePathPicons.Text := trim(ePathPicons.Text);
    if ePathPicons.Text = ''
    then ePathPicons.Text := '/media/usb/picons/';
    if LeftStr(ePathPicons.Text,1) <> '/'
    then ePathPicons.Text := '/' + ePathPicons.Text;
    if RightStr(ePathPicons.Text,1) <> '/'
    then ePathPicons.Text := ePathPicons.Text + '/';

    Item.Caption := eProfilename.Text;
    cdsProfiles.FindKey([Item.Index]);
    cdsProfiles.Edit;
    cdsProfiles.FieldValues['prName'] := eProfilename.Text;
    cdsProfiles.FieldValues['prIPAddress'] := eIP.Text;
    cdsProfiles.FieldValues['prHTTPPort'] := eHTTPPort.Text;
    cdsProfiles.FieldValues['prFTPPort'] := eFTPPort.Text;
    cdsProfiles.FieldValues['prUsername'] := eUsername.Text;
    cdsProfiles.FieldValues['prPassword'] := ePassword.Text;
    cdsProfiles.FieldValues['prFTPPassive'] := eFTPPassive.Checked;
    cdsProfiles.FieldValues['prPathServices'] := ePathServices.Text;
    cdsProfiles.FieldValues['prPathUserbouquets'] := ePathUserbouquets.Text;
    cdsProfiles.FieldValues['prPathSatellites'] := ePathSatellites.Text;
    cdsProfiles.FieldValues['prPathPicons'] := ePathPicons.Text;
    cdsProfiles.Post;
  end

  { For entry to become selected: Load from cds }
  else begin;
    cdsProfiles.FindKey([lvProfiles.ItemIndex]);
    eProfileName.Text := cdsProfiles.FieldValues['prName'];
    eIP.Text := cdsProfiles.FieldValues['prIPAddress'];
    eHTTPPort.Text := cdsProfiles.FieldValues['prHTTPPort'];
    eFTPPort.Text := cdsProfiles.FieldValues['prFTPPort'];
    eUsername.Text := cdsProfiles.FieldValues['prUsername'];
    ePassword.Text := cdsProfiles.FieldValues['prPassword'];
    eFTPPassive.Checked := cdsProfiles.FieldValues['prFTPPassive'];
    eFTPActive.Checked := not eFTPPassive.Checked;
    ePathServices.Text := cdsProfiles.FieldValues['prPathServices'];
    ePathuserBouquets.Text := cdsProfiles.FieldValues['prPathUserbouquets'];
    ePathSatellites.Text := cdsProfiles.FieldValues['prPathSatellites'];
  end;
end;

procedure TFormOptions.bDeleteProfileClick(Sender: TObject);
var
  i,d: Integer;
begin
  if lvProfiles.Selected = nil
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['First select the profile you want to delete.']),
               mtError,[mbOK],0);
    exit;
  end;
  if lvProfiles.Items.Count = 1
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Delete not possible. There must always remain ' +
                                        'at least one profile.']),
               mtError,[mbOK],0);
    exit;
  end;

  d := lvProfiles.Selected.Index;

  Loading := True;
  lvProfiles.Items[d].Delete;

  cdsProfiles.FindKey([d]);
  cdsProfiles.Delete;
  i := 0;
  cdsProfiles.First;
  while not cdsProfiles.Eof do begin;
    cdsProfiles.Edit;
    cdsProfiles.FieldValues['prSeqNr'] := i;
    cdsProfiles.Post;
    inc(i);
    cdsProfiles.Next;
  end;
  Loading := False;
  if d > lvProfiles.Items.Count - 1
  then d := d - 1;
  lvProfiles.Items[d].Selected := True;
end;

procedure TFormOptions.eCheckNotBlank(Sender: TObject);
begin
  if OnShowTime
  then exit;

  if trim((Sender as TEdit).Text) = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['All fields must be filled']),
             mtError,[mbOK],0);
    (Sender as TEdit).SetFocus;
    exit;
  end;
end;

procedure TFormOptions.tsProfilesEnter(Sender: TObject);
begin
  lvProfiles.SetFocus;
end;

procedure TFormOptions.bTVDefaultsClick(Sender: TObject);
begin
  mTVTypes.Clear;
  mTVTypes.Lines.Add('1');
  mTVTypes.Lines.Add('4');
end;

procedure TFormOptions.bRDDefaultsClick(Sender: TObject);
begin
  mRDTypes.Clear;
  mRDTypes.Lines.Add('2');
end;

procedure TFormOptions.bDefaultsNewEnigma2Click(Sender: TObject);
begin
     ePathServices.Text := '/etc/enigma2/';
     ePathUserBouquets.Text := '/etc/enigma2/';
     ePathSatellites.Text := '/etc/tuxbox/';
     if (FormMain.SettingsVersion = 2) or
     (FormMain.SettingsVersion = 3) and
     (FormMain.lvServ.Items.Count > 0)
  then FormMain.SetMenu('changed');
  vers := 4;
end;

procedure TFormOptions.bPiconUSBClick(Sender: TObject);
begin
   ePathPicons.Text := '/media/usb/picons/';
end;

procedure TFormOptions.bPiconHddClick(Sender: TObject);
begin
   ePathPicons.Text := '/media/hdd/picons/';
end;

procedure TFormOptions.bPiconCFClick(Sender: TObject);
begin
   ePathPicons.Text := '/media/cf/picons/';
end;

procedure TFormOptions.bTVAddHDTVClick(Sender: TObject);
var
  i: integer;
  hdtv: boolean;
begin
   hdtv:= false;
   for i := 0 to mTVTypes.Lines.Count -1
   do begin
     if trim(mTVTypes.Lines[i]) = '25' then
     hdtv := True;
   end;
   if not hdtv then mTVTypes.Lines.Add('25');
end;

end.


