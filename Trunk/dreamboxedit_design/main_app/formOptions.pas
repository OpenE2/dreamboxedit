unit formOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, LWPanel, Spin;

type
  TfrmOptions = class(TForm)
    lwpnlBG: TLWPanel;
    gbxDreamboxProfiles: TGroupBox;
    btnDone: TButton;
    tvNavigation: TTreeView;
    pnlLocationIcon: TPanel;
    imgLocationIcon: TImage;
    lbxDreamboxes: TListBox;
    gbxNetwork: TGroupBox;
    Label1: TLabel;
    eIP: TEdit;
    Label13: TLabel;
    eHTTPPort: TEdit;
    Label15: TLabel;
    Button1: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    eUsername: TEdit;
    Label4: TLabel;
    ePassword: TEdit;
    Label5: TLabel;
    eFTPPort: TEdit;
    Label16: TLabel;
    Label8: TLabel;
    eFTPPassive: TRadioButton;
    eFTPActive: TRadioButton;
    Button2: TButton;
    gbxFilePaths: TGroupBox;
    Label20: TLabel;
    ePathServices: TEdit;
    Label21: TLabel;
    ePathUserBouquets: TEdit;
    Label22: TLabel;
    ePathSatellites: TEdit;
    brnDreamboxProfileApply: TButton;
    btnAddProfile: TButton;
    btnRemoveProfile: TButton;
    brnDreamboxProfileCancel: TButton;
    gbxResetSettings: TGroupBox;
    chkResetPaths: TCheckBox;
    chkResetNetwork: TCheckBox;
    rgpResetPathSettings: TRadioGroup;
    btnReset: TButton;
    lbxDreamboxProfileToReset: TListBox;
    lblDreamboxProfileToReset: TLabel;
    gbxGeneralSettings: TGroupBox;
    cbShowDetails: TCheckBox;
    cbAutoload: TCheckBox;
    cbSortUseService: TCheckBox;
    cbSaveTVRadio: TCheckBox;
    cbHidePassword: TCheckBox;
    cbAutoCheckVersion: TCheckBox;
    _SpinEdit1: TSpinEdit;
    Label12: TLabel;
    cbEnableZAP: TCheckBox;
    cbZAPKey: TComboBox;
    cbZAPNoErrorCheck: TCheckBox;
    btnApplyGeneralSettings: TButton;
    gbxResetGeneralSettings: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button6: TButton;
    gbxApplicationMessages: TGroupBox;
    cbConfirmDelete: TCheckBox;
    cbConfirmSort: TCheckBox;
    cbShowResult: TCheckBox;
    cbShowDetHint: TCheckBox;
    btnApplyApplicationMessages: TButton;
    gbxFTPSettings: TGroupBox;
    Label6: TLabel;
    eUserTelnetCmd: TEdit;
    Label9: TLabel;
    eDreamboxCmdPrompt: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    cbQuickFTP: TCheckBox;
    rbReload: TRadioButton;
    rbReboot: TRadioButton;
    rbCustomCmd: TRadioButton;
    rbNothing: TRadioButton;
    btnApplyFTP: TButton;
    gbxAdvancedSettings: TGroupBox;
    cbAllowDuplicates: TCheckBox;
    cbNewSatXMLBottom: TCheckBox;
    cbShowReboot: TCheckBox;
    pctlAdvancedSettings: TPageControl;
    tshtServicenameFormatWordlist: TTabSheet;
    Label17: TLabel;
    mWordList: TMemo;
    tshtTVServiceTypes: TTabSheet;
    Label10: TLabel;
    mTVTypes: TMemo;
    tshtRadioServiceTypes: TTabSheet;
    btnAddToHDTVServices: TButton;
    btnResetTVServces: TButton;
    Label11: TLabel;
    mRDTypes: TMemo;
    Button3: TButton;
    btnAdvancedSettingsApply: TButton;
    gbxPiconSettings: TGroupBox;
    cbPiconActivate: TCheckBox;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    cbPiconUpload: TCheckBox;
    ePathPicons: TEdit;
    btnApplyPicon: TButton;
    gbxResetPiconSettings: TGroupBox;
    RadioGroup1: TRadioGroup;
    btnResetPicon: TButton;
    gbxLanguage: TGroupBox;
    btnApplyLanguage: TButton;
    lbxLanguage: TListBox;
    procedure tvNavigationChange(Sender: TObject; Node: TTreeNode);
    procedure btnDoneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure ExpandAllNodes(ATreeView: TTreeView);
  public
    { Public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

{$R *.dfm}

procedure TfrmOptions.tvNavigationChange(Sender: TObject; Node: TTreeNode);

  procedure AllOff;
  begin
    gbxDreamboxProfiles.Visible := False;
    gbxResetSettings.Visible := False;
    gbxGeneralSettings.Visible := False;
    gbxResetGeneralSettings.Visible := False;
    gbxApplicationMessages.Visible := False;
    gbxFTPSettings.Visible := False;
    gbxAdvancedSettings.Visible := False;
    gbxPiconSettings.Visible := False;
    gbxResetPiconSettings.Visible := False;
    gbxLanguage.Visible := False;

  end;

begin
  AllOff;

  if ((Node.Text = 'Reset settings') and
      (Node.Parent.Text = 'Dreambox profiles')) then
  begin
    gbxResetSettings.Visible := True;

  end
  else if (Node.Text = 'General settings') then
  begin
    gbxGeneralSettings.Visible := true;

  end
  else if ((Node.Text = 'Reset settings') and
           (Node.Parent.Text = 'General settings')) then
  begin
    gbxResetGeneralSettings.Visible := True;

  end
  else if (Node.Text = 'Application messages') then
  begin
    gbxApplicationMessages.Visible := True;

  end
  else if (Node.Text = 'FTP settings') then
  begin
    gbxFTPSettings.Visible := True;

  end
  else if (Node.Text = 'Advanced settings') then
  begin
    gbxAdvancedSettings.Visible := True;

  end
  else if (Node.Text = 'Picon settings') then
  begin
    gbxPiconSettings.Visible := True;

  end
  else if ((Node.Text = 'Reset settings') and
           (Node.Parent.Text = 'Picon settings')) then
  begin
    gbxResetPiconSettings.Visible := True;

  end
  else if (Node.Text = 'Language') then
  begin
    gbxLanguage.Visible := True;

  end
  else
    gbxDreamboxProfiles.Visible := True;

  ExpandAllNodes(tvNavigation);
end;

procedure TfrmOptions.btnDoneClick(Sender: TObject);
begin
  Close;
end;
procedure TfrmOptions.FormActivate(Sender: TObject);
begin
  ExpandAllNodes(tvNavigation);
end;

procedure TfrmOptions.ExpandAllNodes(ATreeView: TTreeView);
var
  I: Integer;
begin
  for I := 0 to ATreeView.Items.Count-1 do
    ATreeView.Items[I].Expand(True);
end;

end.
