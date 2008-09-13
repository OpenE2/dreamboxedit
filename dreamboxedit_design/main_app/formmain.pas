unit formmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ToolWin, ActnMan, ActnCtrls, ActnMenus, BandActn,
  StdActns, ActnList, ExtCtrls, XPStyleActnCtrls, ActnColorMaps, ComCtrls,
  frameServices, StdCtrls, LWPanel, formDataTransfer, formOptions, formabout,
  formlog, formprogress, Buttons, JvBalloonHint, JvProfilerForm,
  JvComponentBase, JvEasterEgg, JvTrayIcon, JvWinHelp, JvBaseDlg,
  JvSelectDirectory, formFiles, formImportFilesSatcoDX, JvDialogs,
  formEditSatellitesXML, formCompareSets, formImportUserBouquets;

type
  TfrmMain = class(TForm)
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    FilePrintSetup1: TFilePrintSetup;
    FilePageSetup1: TFilePageSetup;
    FileExit1: TFileExit;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    CustomizeActionBars1: TCustomizeActionBars;
    ilCommon16: TImageList;
    acFileSave: TAction;
    XPColorMap1: TXPColorMap;
    acFilePrint: TAction;
    acEditRedo: TAction;
    ilCommon32: TImageList;
    sb: TStatusBar;
    LWPanelB: TLWPanel;
    Splitter1: TSplitter;
    LWPanelR: TLWPanel;
    Splitter2: TSplitter;
    LWPanelRR: TLWPanel;
    Image1: TImage;
    LWPanel3: TLWPanel;
    Label4: TLabel;
    _lBouqT: TLabel;
    tv: TTreeView;
    LWPanelRL: TLWPanel;
    lvDet: TListView;
    LWPanel4: TLWPanel;
    Label8: TLabel;
    _lDetT: TLabel;
    pDetName: TLWPanel;
    _lDetName: TLabel;
    LWPanelL: TLWPanel;
    lvServ: TListView;
    LWPanel2: TLWPanel;
    Label1: TLabel;
    _lServT: TLabel;
    Label3: TLabel;
    _lServD: TLabel;
    cbTVRadio: TComboBox;
    cbSatName: TComboBox;
    ePackage: TEdit;
    lwpnlTop: TLWPanel;
    ctlbrTop: TControlBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    Label2: TLabel;
    tbarTools: TToolBar;
    tbtnSave: TToolButton;
    Toolbutton2: TToolButton;
    tbtnTransfer: TToolButton;
    tbtnOpen: TToolButton;
    tbtnOptions: TToolButton;
    tbtnFileset: TToolButton;
    ToolButton8: TToolButton;
    tbtnFind: TToolButton;
    ToolButton10: TToolButton;
    pnlCornerImage: TPanel;
    imgCorner: TImage;
    Label5: TLabel;
    tbrDreamboxSelect: TToolBar;
    cbxDreamboxSelect: TComboBox;
    acImportUserBouquetFiles: TAction;
    acImportSatcoDXFiles: TAction;
    acReimportExportedServicesFile: TAction;
    acReImportExportedBouquetFile: TAction;
    acHelpAbout: TAction;
    ctlbrTools: TControlBar;
    ToolButton11: TToolButton;
    tbtnShutdown: TToolButton;
    ilCommon24: TImageList;
    tbtnAbout: TToolButton;
    tbtnHelpContents: TToolButton;
    JvWinHelp1: TJvWinHelp;
    JvTrayIcon1: TJvTrayIcon;
    ilTrayIconInfo: TImageList;
    JvSelectDirectory1: TJvSelectDirectory;
    acSaveAs: TAction;
    acFileSet: TAction;
    acExportAllServicesExcel: TAction;
    acExportAllBouquetsExcel: TAction;
    acExportAllServicesSatcoDX: TAction;
    JvOpenDialog1: TJvOpenDialog;
    JvSaveDialog1: TJvSaveDialog;
    acCompareSetsDreambox: TAction;
    acCompareSetsOther: TAction;
    acShowLog: TAction;
    procedure tbtnTransferClick(Sender: TObject);
    procedure tbtnOptionsClick(Sender: TObject);
    procedure acHelpAboutExecute(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure HelpContents1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvTrayIcon1BalloonClick(Sender: TObject);
    procedure tbtnOpenClick(Sender: TObject);
    procedure acSaveAsExecute(Sender: TObject);
    procedure acFileSetExecute(Sender: TObject);
    procedure acImportUserBouquetFilesExecute(Sender: TObject);
    procedure acImportSatcoDXFilesExecute(Sender: TObject);
    procedure acReimportExportedServicesFileExecute(Sender: TObject);
    procedure acReImportExportedBouquetFileExecute(Sender: TObject);
    procedure acExportAllServicesExcelExecute(Sender: TObject);
    procedure acExportAllBouquetsExcelExecute(Sender: TObject);
    procedure acExportAllServicesSatcoDXExecute(Sender: TObject);
    procedure acCompareSetsDreamboxExecute(Sender: TObject);
    procedure acCompareSetsOtherExecute(Sender: TObject);
    procedure acShowLogExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.tbtnTransferClick(Sender: TObject);
var
  frmDataTransfer: TfrmDataTransfer;
begin
  frmDataTransfer := TfrmDataTransfer.Create(Self);
  try
    frmDataTransfer.ShowModal;
  except
    if Assigned(frmDataTransfer) then frmDataTransfer.Free;
  end;
end;

procedure TfrmMain.tbtnOptionsClick(Sender: TObject);
var
  frmOptions: TfrmOptions;
begin
  frmOptions := TfrmOptions.Create(self);
  try
    frmOptions.ShowModal;
  except
    if Assigned(frmOptions) then frmOptions.Free;
  end;
end;

procedure TfrmMain.acHelpAboutExecute(Sender: TObject);
var
  frmAbout: TfrmAbout;
begin
  frmAbout := TfrmAbout.Create(Self);
  try
    frmAbout.Show;
  except
    if Assigned(frmAbout) then frmAbout.Free;
  end;
end;

procedure TfrmMain.ToolButton6Click(Sender: TObject);
var
  frmLog: TfrmLog;
begin
  frmLog := TfrmLog.Create(Self);
  try
    frmLog.Show;
  except
    if Assigned(frmLog) then frmLog.Free;
  end;
end;

procedure TfrmMain.HelpContents1Execute(Sender: TObject);
begin
//
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var
  NewVersionFound: Boolean;
begin
  NewVersionFound := False;
  // TODO: Check for new version and if there is one show this baloon...
  if NewVersionFound = True then
    JvTrayIcon1.BalloonHint('New version', 'DreamBoxEdit 2.2.0 found', btInfo,
      10000, False);
end;

procedure TfrmMain.JvTrayIcon1BalloonClick(Sender: TObject);
begin
  // Show update window...
end;

procedure TfrmMain.tbtnOpenClick(Sender: TObject);
begin
  if JvSelectDirectory1.Execute then
  begin
    //
  end;
end;

procedure TfrmMain.acSaveAsExecute(Sender: TObject);
begin
  if JvSelectDirectory1.Execute then
  begin
    //
  end;
end;

procedure TfrmMain.acFileSetExecute(Sender: TObject);
var
  frmFiles: TfrmFiles;
begin
  frmFiles := TfrmFiles.Create(Self);
  try
    frmFiles.Show;
  except
    if Assigned(frmFiles) then frmFiles.Free;
  end;
end;

procedure TfrmMain.acImportUserBouquetFilesExecute(Sender: TObject);
var
  frmImportUserBouquets: TfrmImportUserBouquets;
begin
  frmImportUserBouquets := TfrmImportUserBouquets.Create(Self);
  try
    frmImportUserBouquets.Show;
  except
    if Assigned(frmImportUserBouquets) then frmImportUserBouquets.Free;
  end;
end;

procedure TfrmMain.acImportSatcoDXFilesExecute(Sender: TObject);
var
  frmImportSatcoDXFiles: TfrmImportSatcoDXFiles;
begin
  frmImportSatcoDXFiles := TfrmImportSatcoDXFiles.Create(Self);
  try
    frmImportSatcoDXFiles.Show;
  except
    if Assigned(frmImportSatcoDXFiles) then frmImportSatcoDXFiles.Free;
  end;
end;

procedure TfrmMain.acReimportExportedServicesFileExecute(Sender: TObject);
begin
  JvOpenDialog1.Title := acReimportExportedServicesFile.Hint;

  if JvOpenDialog1.Execute = True then
  begin
    //
  end;

  JvOpenDialog1.Title := '';
end;

procedure TfrmMain.acReImportExportedBouquetFileExecute(Sender: TObject);
begin
  JvOpenDialog1.Title := acReImportExportedBouquetFile.Hint;

  if JvOpenDialog1.Execute = True then
  begin
    //
  end;

  JvOpenDialog1.Title := '';
end;

procedure TfrmMain.acExportAllServicesExcelExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin

  end;
end;

procedure TfrmMain.acExportAllBouquetsExcelExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin

  end;
end;

procedure TfrmMain.acExportAllServicesSatcoDXExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin

  end;
end;

procedure TfrmMain.acCompareSetsDreamboxExecute(Sender: TObject);
var
  frmCompareSets: TfrmCompareSets;
begin
  frmCompareSets := TfrmCompareSets.Create(Self);
  try
    frmCompareSets.Show;
  except
    if Assigned(frmCompareSets) then frmCompareSets.Free;
  end;
end;

procedure TfrmMain.acCompareSetsOtherExecute(Sender: TObject);
var
  frmCompareSets: TfrmCompareSets;
begin
  frmCompareSets := TfrmCompareSets.Create(Self);
  try
    frmCompareSets.Show;
  except
    if Assigned(frmCompareSets) then frmCompareSets.Free;
  end;
end;

procedure TfrmMain.acShowLogExecute(Sender: TObject);
var
  frmLog: TfrmLog;
begin
  frmLog := TfrmLog.Create(Self);
  try
    frmLog.Show;
  except
    if Assigned(frmLog) then frmLog.Free;
  end;
end;

end.
