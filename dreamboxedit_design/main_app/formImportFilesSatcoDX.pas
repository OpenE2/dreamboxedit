unit formImportFilesSatcoDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, DB, DBClient, LWBtn, ComCtrls,
  ExtCtrls, LWPanel, JvBaseDlg, JvSelectDirectory, JvDialogs;

type
  TfrmImportSatcoDXFiles = class(TForm)
    lwpnlBG: TLWPanel;
    gbxSatcoDXTVAndRadioServices: TGroupBox;
    lvSDX: TListView;
    gbxDisplayOptions: TGroupBox;
    rbAll: TRadioButton;
    rbNew: TRadioButton;
    rbSame: TRadioButton;
    gbxProcessingOptions: TGroupBox;
    cbNewBouq: TCheckBox;
    cbReplace: TCheckBox;
    cbUsePIDs: TCheckBox;
    cbNoDVB: TCheckBox;
    cdsSDX: TClientDataSet;
    pulvSDX: TPopupMenu;
    Check1: TMenuItem;
    N1: TMenuItem;
    Checkall1: TMenuItem;
    Uncheckall1: TMenuItem;
    cdsPck: TClientDataSet;
    chkSelectDeselectAll: TCheckBox;
    btnDone: TButton;
    sbtnStatisticsToggle: TSpeedButton;
    lwpnlStatistics: TLWPanel;
    gbxFilesTransfered: TGroupBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    ntlDS: TLabel;
    ntlTotal: TLabel;
    ntlSkipped: TLabel;
    ntlTV: TLabel;
    ntlRadio: TLabel;
    ntlUnique: TLabel;
    ntlNew: TLabel;
    gbxControl: TGroupBox;
    bProcess: TLWButton;
    bAddPackageName: TButton;
    bGetPackageInfo: TButton;
    btnOpen: TLWButton;
    btnCheckDuplicates: TButton;
    JvSelectDirectory1: TJvSelectDirectory;
    JvOpenDialog1: TJvOpenDialog;
    gbxImportDuplicates: TGroupBox;
    gbxTransponderDetails: TGroupBox;
    lblTransponderID: TLabel;
    lblNetworkID: TLabel;
    _lTSID: TLabel;
    _lNID: TLabel;
    lblNamespace: TLabel;
    _lUniq: TLabel;
    gbxServiceDetails: TGroupBox;
    lblServiceID: TLabel;
    lblServiceType: TLabel;
    _lSID: TLabel;
    _lTyp: TLabel;
    gbxExistingDefinition: TGroupBox;
    lblSatellite: TLabel;
    lblPosition: TLabel;
    lblFrequency: TLabel;
    lblSymbolrate: TLabel;
    lblPolarisation: TLabel;
    lblFEC: TLabel;
    _lSatName: TLabel;
    _lSatPos: TLabel;
    _lFreq: TLabel;
    _lSymb: TLabel;
    _lPol: TLabel;
    _lFEC: TLabel;
    lvSDXDup: TListView;
    btnNext: TButton;
    btnBack: TButton;
    gbxSelectSatcoDXFiles: TGroupBox;
    Panel2: TPanel;
    btnProcess: TButton;
    btnCancel: TButton;
    lvDir: TListView;
    Label9: TLabel;
    procedure sbtnStatisticsToggleClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure bGetPackageInfoClick(Sender: TObject);
    procedure chkSelectDeselectAllClick(Sender: TObject);
    procedure btnCheckDuplicatesClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportSatcoDXFiles: TfrmImportSatcoDXFiles;

implementation

{$R *.dfm}

procedure TfrmImportSatcoDXFiles.sbtnStatisticsToggleClick(Sender: TObject);
begin
  if lwpnlStatistics.Visible = True then
    lwpnlStatistics.Visible := False
  else
    lwpnlStatistics.Visible := True;
end;

procedure TfrmImportSatcoDXFiles.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportSatcoDXFiles.btnOpenClick(Sender: TObject);
begin
  if JvSelectDirectory1.Execute = True then
  begin
    gbxSelectSatcoDXFiles.Visible := True;
  end;
end;

procedure TfrmImportSatcoDXFiles.bGetPackageInfoClick(Sender: TObject);
begin
  if JvOpenDialog1.Execute then
  begin

  end;
end;

procedure TfrmImportSatcoDXFiles.chkSelectDeselectAllClick(Sender: TObject);
begin
  if gbxImportDuplicates.Visible = True then
  begin

  end
  else if gbxSelectSatcoDXFiles.Visible = True then
  begin

  end
  else
  begin

  end;
end;

procedure TfrmImportSatcoDXFiles.btnCheckDuplicatesClick(Sender: TObject);
begin
  gbxImportDuplicates.Visible := True;
end;

procedure TfrmImportSatcoDXFiles.btnBackClick(Sender: TObject);
begin
  gbxImportDuplicates.Visible := False;
end;

procedure TfrmImportSatcoDXFiles.btnNextClick(Sender: TObject);
begin
//
end;

procedure TfrmImportSatcoDXFiles.btnCancelClick(Sender: TObject);
begin
  gbxSelectSatcoDXFiles.Visible := False;
end;

procedure TfrmImportSatcoDXFiles.btnProcessClick(Sender: TObject);
begin
  //
end;

end.
