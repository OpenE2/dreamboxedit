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
  formEditSatellitesXML, formCompareSets, formImportUserBouquets, DB,
  DBClient, LWLanguage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Menus, formNewVersion, Registry, StrUtils, uHelpers,
  Math;

type
  TListData = record
    FileName: string;
    Number: Integer;
    Locked: Boolean;
  end;

type
  TfrmMain = class(TForm)
    amMain: TActionManager;
    acFileOpen: TFileOpen;
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
    acSearchFind: TSearchFind;
    acSearchFindNext: TSearchFindNext;
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
    acEditSatellitesXML: TAction;
    puServices: TPopupMenu;
    ZAPtoservice1: TMenuItem;
    N7: TMenuItem;
    CreateBouquet1: TMenuItem;
    Addthissatellitetobouquet1: TMenuItem;
    MakeaBouquetperSatellite1: TMenuItem;
    N5: TMenuItem;
    MakeBouquetperPackage1: TMenuItem;
    MakeBouquetforeachPackage1: TMenuItem;
    N4: TMenuItem;
    DeletefromallBouquets1: TMenuItem;
    DeleteService1: TMenuItem;
    Deletesatellite1: TMenuItem;
    N8: TMenuItem;
    ShowDetails1: TMenuItem;
    CopyEditthisservice1: TMenuItem;
    AddaNewService1: TMenuItem;
    EditTransponder: TMenuItem;
    SetKeepFlag: TMenuItem;
    SetKeepFlagOn1: TMenuItem;
    SetKeepFlagOff1: TMenuItem;
    N15: TMenuItem;
    ServCut: TMenuItem;
    ServCopy: TMenuItem;
    ServPaste: TMenuItem;
    N19: TMenuItem;
    SetPackagename1: TMenuItem;
    servLock: TMenuItem;
    ChangetypetoTV1: TMenuItem;
    MarkservicesnotinBouquet1: TMenuItem;
    Renumberallservices1: TMenuItem;
    ClearallNewflags1: TMenuItem;
    puDet: TPopupMenu;
    Zaptoservice2: TMenuItem;
    N11: TMenuItem;
    Deletefromfavourites1: TMenuItem;
    N10: TMenuItem;
    Sortlistalfabeticaly1: TMenuItem;
    N14: TMenuItem;
    DetCut: TMenuItem;
    DetCopy: TMenuItem;
    DetPaste: TMenuItem;
    N18: TMenuItem;
    LocateInServices1: TMenuItem;
    DetLock: TMenuItem;
    N24: TMenuItem;
    InsertMarker1: TMenuItem;
    EditMarker1: TMenuItem;
    AutoInsertMarker: TMenuItem;
    InsertMarkerPos: TMenuItem;
    InsertMarkerPackage: TMenuItem;
    Removeemptymarkers1: TMenuItem;
    N25: TMenuItem;
    Renameserviceinbouquet1: TMenuItem;
    Renameserviceto1: TMenuItem;
    puTV: TPopupMenu;
    tvShowServices: TMenuItem;
    N17: TMenuItem;
    RenameBouquet1: TMenuItem;
    tvInsert: TMenuItem;
    tvDelete: TMenuItem;
    N3: TMenuItem;
    tvSort: TMenuItem;
    N16: TMenuItem;
    tvCollapseAll: TMenuItem;
    tvExpandAll: TMenuItem;
    N2: TMenuItem;
    tvPrefix: TMenuItem;
    N6: TMenuItem;
    tvCleanUp0: TMenuItem;
    tvCleanUp1: TMenuItem;
    N27: TMenuItem;
    oggleParentalLock1: TMenuItem;
    HTTP1: TIdHTTP;
    TimerCheckVersion: TTimer;
    MultiLang: TLWLanguage;
    TimerDetScroll: TTimer;
    TimertvScroll: TTimer;
    cdsPos: TClientDataSet;
    cdsSatXML: TClientDataSet;
    cdsLog: TClientDataSet;
    cdsTSID: TClientDataSet;
    cdsSERV: TClientDataSet;
    cdsServComp: TClientDataSet;
    cdsServSave: TClientDataSet;
    cdsLock: TClientDataSet;
    cdsAlt: TClientDataSet;
    cdsFTV: TClientDataSet;
    wcdsFBQ: TClientDataSet;
    cdsFRD: TClientDataSet;
    cdsFBQ: TClientDataSet;
    acToolsOptions: TAction;
    acToolsTransfer: TAction;
    acLangEnglish: TAction;
    procedure acHelpAboutExecute(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure HelpContents1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvTrayIcon1BalloonClick(Sender: TObject);
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
    procedure acEditSatellitesXMLExecute(Sender: TObject);
    procedure acFileOpenBeforeExecute(Sender: TObject);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acToolsOptionsExecute(Sender: TObject);
    procedure acToolsTransferExecute(Sender: TObject);
    procedure cbTVRadioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  protected
    procedure acGlobalLanguageChange(Sender: TObject);
  private
    DetName: string;
    LastWidth: Integer;
    OriginalEnglish: Boolean;
    Loading: Boolean;
    cbf: Integer;
    ClipBFormat: Integer;
    FMsgTable: TStringList;
    FFormatWordsList: TStringList;
    FTVTypes: TStringList;
    FRDTypes: TStringList;
    FSatXMLHdr: TStringList;
    DetType: string;
    DetSetNr: Integer;
    V3OrderBy1: string;
    V3OrderBy2: string;
    SatCable: string;
    FAutoOpen: Boolean;
    FDir: string;
    FServFilename: string;
    FHighDbeNr: Integer;
    FSettingsVersion: Integer;
    FBlackList: Boolean;
    FtnTV: TTreeNode;
    FtnRD: TTreeNode;
    FtnBQ: TTreeNode;
    FAllowDuplicates: Boolean;
    FEplTVFilename: string;
    FEplRDFilename: string;
    FSaveTVRadio: Boolean;
    FPathServices: string;
    FPathUserBouquets: string;
    FLanguage: string;
    FMaxNr: Integer;
    FDetChanged: Boolean;
    FServEdit: Boolean;
    procedure lvDetSave();
    procedure TotalsBuild();
    procedure FormatToolbar();
    { Private declarations }
  public
    { Public declarations }
    function lwLngTrns(form: string; args: array of string): string;
    function SelDir(var Dir: string; const AllowCreate: Boolean): Boolean;
    function ReadServices(const filename: string; var cds: TClientDataset;
     const Compare: Boolean): Integer;
    function CheckStringsOK(const Descr, Line: string; var psl: TStringList;
     const MinArgs: Integer; const Format: string): Boolean;
    function StrIsNumeric(const S: string;
     const DecPointAllowed: Boolean): Boolean;
    function StrIsHexadecimal(const S: string): Boolean;
    function CleanText(const sc: string): string;
    function TrnsServType(const ServType: Integer): string;
    function NewBouquet(const btype: string): TListData;
    procedure SetMenu(const option: string);
    procedure Log(const sev: string; const text: string);
    procedure SetVersionDefaults(const Version: Integer);
    procedure ParseString(const ss: string; var psl: TStringList);
    property AutoOpen: Boolean read FAutoOpen write FAutoOpen;
    property ServFilename: string read FServFilename write FServFilename;
    property HighDbeNr: Integer read FHighDbeNr write FHighDbeNr;
    property SettingsVersion: Integer read FSettingsVersion
     write FSettingsVersion;
    property BlackList: Boolean read FBlackList write FBlackList;
    property tnBQ: TTreeNode read FtnBQ write FtnBQ;
    property tnTV: TTreeNode read FtnTV write FtnTV;
    property tnRD: TTreeNode read FtnRD write FtnRD;
    property AllowDuplicates: Boolean read FAllowDuplicates
     write FAllowDuplicates;
    property EplTVFilename: string read FEplTVFilename write FEplTVFilename;
    property EplRDFilename: string read FEplRDFilename  write FEplRDFilename;
    property SaveTVRadio: Boolean read FSaveTVRadio write FSaveTVRadio;
    property PathServices: string read FPathServices write FPathServices;
    property PathUserBouquets: string read FPathUserBouquets
     write FPathUserBouquets;
    property Language: string read FLanguage write FLanguage;
    property MaxNr: Integer read FMaxNr write FMaxNr;
    property DetChanged: Boolean read FDetChanged write FDetChanged;
    property ServEdit: Boolean read FServEdit write FServEdit;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

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
var
  frmNewVersion: TfrmNewVersion;
begin
  frmNewVersion := TfrmNewVersion.Create(Self);
  try
    frmNewVersion.Show;
  except
    if Assigned(frmNewVersion) then frmNewVersion.Free;
  end;
end;

procedure TfrmMain.acSaveAsExecute(Sender: TObject);
begin
  if JvSelectDirectory1.Execute then
  begin
    // TODO: Code for save action...
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
    // TODO: Code Re-import exported services...
  end;

  JvOpenDialog1.Title := '';
end;

procedure TfrmMain.acReImportExportedBouquetFileExecute(Sender: TObject);
begin
  JvOpenDialog1.Title := acReImportExportedBouquetFile.Hint;

  if JvOpenDialog1.Execute = True then
  begin
    // TODO: Code Re-import exported bouquets...
  end;

  JvOpenDialog1.Title := '';
end;

procedure TfrmMain.acExportAllServicesExcelExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin
    // TODO: Code Export all services to Excel readable format...
  end;
end;

procedure TfrmMain.acExportAllBouquetsExcelExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin
    // TODO: Code Export all bouquets to Excel readable format...
  end;
end;

procedure TfrmMain.acExportAllServicesSatcoDXExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin
    // TODO: Code Export all services to SatcoDX format...
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

procedure TfrmMain.acEditSatellitesXMLExecute(Sender: TObject);
var
  frmEditSatellitesXML: TfrmEditSatellitesXML;
begin
  frmEditSatellitesXML := TfrmEditSatellitesXML.Create(Self);
  try
    frmEditSatellitesXML.Show;
  except
    if Assigned(frmEditSatellitesXML) then frmEditSatellitesXML.Free;
  end;
end;

procedure TfrmMain.acFileOpenBeforeExecute(Sender: TObject);
var
  tf: TextFile;
  s,b,snr,bnr,descr,ubt,bn,lfn,altfn: String;
  typ, sid, tsid, onid, namespace, pngchname,pngsrname,newDir : String;
  Reg: TRegistry;
  sl,fsl,psl,dbset,alt,servref,misspng: TStringList;
  i,a,e,p,r,ib,ie,pdel,ndel, t1, t2: Integer;
  seqnr,cbq: Integer;
  ServErr,BouqErr,FTVErr, FRDErr: Integer;
  add: Boolean;
  pListData: ^TListData;
begin
  if acFileSave.Enabled
  then begin;
    r := MessageDlg(lwLngTrns(name,[
                    'You made changes that are not yet saved!~~'+
                    'Do you want to save them before opening a new set?~' +
                    '(Choosing "No" means any changes you made, will be lost)']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then acFileSave.Execute
    else
      if r = mrCancel
      then exit;
  end;

  if not AutoOpen
  then begin;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    if Reg.ValueExists('LastUsedDirectory')
    then FDir := Reg.ReadString('LastUsedDirectory')
    else FDir := '';
    Reg.CloseKey;
    Reg.Destroy;
  end;

  if not DirectoryExists(FDir)
  then FDir := '';

  if (AutoOpen) or
     (SelDir(FDir,False))
  then begin;
    AutoOpen := False;
    Log('i',lwLngTrns(name,['Directory % selected',FDir]));
    if not FileExists(FDir + '\lamedb')
    then SetVersionDefaults(2)
    else SetVersionDefaults(3);

    if not FileExists(FDir + '\' + ServFilename)
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "%".~~'+
                 'You must first use the FTP option to copy all necessary ' +
                 'files from the dreambox to your PC.',FDir,ServFilename]),
                 mtError,[mbOk],0);
      Log('e',lwLngTrns(name,['File services not found in "%"',FDir]));
      Exit;
    end;
    if (not FileExists(FDir + '\bouquets')) and
       (not FileExists(FDir + '\lamedb'))
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "bouquets"~~'+
                 'You must first use the FTP option to copy all necessary ' +
                 'files from the dreambox to your PC.',FDir]),
                 mtError,[mbOk],0);
      Log('e',lwLngTrns(name,['File % not found in "%"',
                              'bouquets',FDir]));
      Exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('LastUsedDirectory',FDir);
    Reg.CloseKey;
    Reg.Destroy;

    Self.Caption := 'LlamaWare DreamBoxEdit - ' + FDir;

    //  ToolBar1.Enabled := False;
    //  ShowWait('init',0,9,0);
    Application.ProcessMessages;

    psl := TStringList.Create;

    cdsTSID.EmptyDataSet;
    cdsTSID.Close;
    cdsTSID.Open;

    cdsServ.Filtered := False;
    cdsServ.Filter := '';
    cdsServ.EmptyDataSet;
    cdsServ.Close;
    cdsSERV.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
    cdsServ.Open;
    HighDbeNr := 0;
    cbTVRadio.ItemIndex := 0;
    cbSatName.ItemIndex := 0;
    ePackage.Text := '';
    lvServ.items.Count := 0;

    cdsLock.EmptyDataSet;
    cdsLock.Close;
    cdsLock.Open;
    cdsAlt.EmptyDataSet;
    cdsAlt.Close;
    cdsAlt.Open;

    cdsPos.EmptyDataSet;
    cdsPos.Close;
    cdsPos.Open;

    cdsFTV.EmptyDataSet;
    cdsFTV.Close;
    cdsFTV.Open;
    cdsFRD.EmptyDataSet;
    cdsFRD.Close;
    cdsFRD.Open;
    cdsFBQ.EmptyDataSet;
    cdsFBQ.Close;
    cdsFBQ.Open;

    lvDet.Items.BeginUpdate;
    lvDet.Items.Clear;
    lvDet.Items.EndUpdate;

    V3OrderBy1 := '';

    tv.Items.BeginUpdate;
    for i := 0 to tv.Items.Count - 1 do begin;
      if tv.Items.Item[i].Level = 1
      then dispose(tv.Items.Item[i].Data);
    end;
    tv.Items.Clear;
    tv.Items.EndUpdate;

    BouqErr := 0;
    FTVErr := 0;
    FRDErr := 0;

    { Default settings for satellite }
    SatCable := 's';
    if SettingsVersion = 2
    then sb.Panels[2].Text := lwLngTrns(name,['Satellite'])
    else sb.Panels[2].Text := '';

    { process services file }
    //  ShowWait('pos',0,0,1);

    ServErr := ReadServices(FDir+'\'+ServFilename,cdsServ,False);
    if ServErr < 0
    then begin;
      //  ToolBar1.Enabled := True;
      //  ShowWait('free',0,0,0);
      exit;
    end;

    { process parental lock / blacklist / whitelist file (if present/specified) }
    //  ShowWait('pos',0,0,2);
    BlackList := True; { Default }
    lfn := 'services.locked'; { Default }
    { Check for whitelist setting when settings type is not 2 }
    if SettingsVersion <> 2
    then begin;
      lfn := 'blacklist'; { default for settings version 3 }
      if FileExists(FDir+'\settings')
      then begin;
        dbset := TStringList.Create;
        dbset.LoadFromFile(FDir+'/settings');
        if pos('whitelist',lowercase(dbset.Text)) > 0
        then begin;
          Blacklist := False;
          lfn := 'whitelist';
          sb.Panels[4].Text := 'Parental control: Whitelist';
        end;
        dbset.Free;
      end;
    end;

    if FileExists(FDir+'\'+lfn)
    then begin;
      sl := TStringList.Create;
      sl.LoadFromFile(FDir+'\'+lfn);
      for i := 0 to sl.Count - 1 do begin;
        if pos('parental',lowercase(sl[i])) > 0
        then continue;

        if trim(sl[i]) <> ''
        then begin;
          ParseString(sl[i],psl);
          if not CheckStringsOK(FDir+'\'+lfn,sl[i],psl,7,'NNHHHHH')
          then begin;
            inc(ServErr);
            continue;
          end;

          { process entry }
          cdsLock.Append;
          cdsLock.FieldByName('lockI1').AsString := psl.Strings[0];
          cdsLock.FieldByName('lockI2').AsString := psl.Strings[1];
          if psl.Strings[10] = ''
          then begin;
            cdsLock.FieldByName('lockServType').AsInteger := StrToInt('$0'+psl.Strings[2]);
            cdsLock.FieldByName('lockSID').AsInteger := StrToInt('$0'+psl.Strings[3]);
            cdsLock.FieldByName('lockTSID').AsInteger := StrToInt('$0'+psl.Strings[4]);
            cdsLock.FieldByName('lockNID').AsInteger := StrToInt('$0'+psl.Strings[5]);
            cdsLock.FieldByName('lockUniq').AsInteger := StrToInt('$0'+psl.Strings[6]);
            cdsLock.FieldByName('lockString').AsString := '';
          end
          else begin;
            if psl.Count >= 11
            then begin;
              cdsLock.FieldByName('lockString').AsString := psl.Strings[10];
              psl.Strings[10] := StringReplace(psl.Strings[10],'/','\',[rfReplaceAll]);
              cdsLock.FieldByName('lockFilename').AsString := ExtractFilename(psl.Strings[10]);
            end;
          end;
          cdsLock.Post;
        end;
      end;
      sl.Free;

      { update cdsServ with locks }
      cdsLock.First;
      while not cdsLock.Eof do begin;
        if (cdsLock.FieldByName('lockI2').AsInteger = 0) and
           (cdsServ.FindKey([cdsLock.FieldByName('lockSID').AsString,
                             cdsLock.FieldByName('lockUniq').AsString,
                             cdsLock.FieldByName('lockTSID').AsString,
                             cdsLock.FieldByName('lockNID').AsString,
                             cdsLock.FieldByName('lockServType').AsString]))
        then begin;
          cdsServ.Edit;
          cdsServ.FieldByName('servLock').AsInteger := 1;
          cdsServ.Post;
          cdsLock.Delete;
        end
        else cdsLock.Next;
      end;
    end;

    { process bouquets ('Providers') }
    //  ShowWait('pos',0,0,3);

    tnBQ := tv.Items.Add(nil,'Providers');
    if FileExists(FDir+'\bouquets')
    then begin;
      AssignFile(tf,FDir+'\bouquets');
      SetLineBreakStyle(tf,tlbsLF);
      Reset(tf);
      snr := '';
      cbq := 0;
      ReadLn(tf,s);
      while (s <> 'bouquets') and (not eof(tf)) do
        ReadLn(tf,s);
      ReadLn(tf,s);
      while (s <> 'end') and (not eof(tf))
      do begin;
        bnr := s;
        ReadLn(tf,b);
        new(pListData);
        pListData.FileName := '';
        pListData.Number := StrToInt(bnr);
        if cdsLock.Locate('lockServType;lockSID;lockTSID',
                          VarArrayOf(['-3','18',StrToInt(bnr)]),[]) { -3 = fffffffd }
        then begin;
          pListData.Locked := True;
          cdsLock.Delete;
        end
        else pListData.Locked := False;
        tv.Items.AddChildObject(tnBQ,UTF8ToAnsi(b),pListData);

        ReadLn(tf,s);
        while (s <> '/') and (not eof(tf))
        do begin;
          add := true;
          ParseString(s,psl);
          if not CheckStringsOK(FDir+'\bouquets',s,psl,5,'HHHHH')
          then begin;
            inc(BouqErr);
            add := False;
          end;

          { Temporary(?) set hex servicetype value to decimal }
          if add
          then
            if not StrIsNumeric(psl.Strings[4],False)
            then psl.Strings[4] := IntToStr(StrToInt('$'+psl.Strings[4]));

          if trim(s) = ''
          then add := false;
          if (add) and
             (psl.Count < 5)
          then begin;
            MessageDlg(lwLngTrns(name,['Invalid line found (not enough values) and skipped in file "bouquet"']),
                                  mtWarning,[mbOK],0);
            log('w',lwLngTrns(name,['Invalid line found (not enough values) and skipped in file "bouquet"']));
            log('w','-->'+s);
            Inc(BouqErr);
            add := False;
          end;
          if (add) and
             (not AllowDuplicates) and
             (cdsFBQ.FindKey([bnr,
                              IntToStr(StrToInt('$'+psl.Strings[0])),
                              IntToStr(StrToInt('$'+psl.Strings[1])),
                              IntToStr(StrToInt('$'+psl.Strings[2])),
                              IntToStr(StrToInt('$'+psl.Strings[3])),
                              psl.Strings[4]]))
          then begin;
            log('w',lwLngTrns(name,[
                'Duplicate bouquet not loaded: % type: % (%:%:%:%' +
                ' hex: %:%:%:%)',
                b,psl.Strings[4],
                IntToStr(StrToInt('$'+psl.Strings[0])),
                IntToStr(StrToInt('$'+psl.Strings[1])),
                IntToStr(StrToInt('$'+psl.Strings[2])),
                IntToStr(StrToInt('$'+psl.Strings[3])),
                psl.Strings[0],
                psl.Strings[1],
                psl.Strings[2],
                psl.Strings[3]]));
            Inc(BouqErr);
            add := False;
          end;
          if (add) and
             (not cdsServ.FindKey([IntToStr(StrToInt('$'+psl.Strings[0])),
                                   IntToStr(StrToInt('$'+psl.Strings[1])),
                                   IntToStr(StrToInt('$'+psl.Strings[2])),
                                   IntToStr(StrToInt('$'+psl.Strings[3])),
                                   psl.Strings[4]]))
          then begin;
            log('w',lwLngTrns(name,[
                'Invalid bouquet entry in "%" not loaded: '+
                'SID: %, Namespace: %, TSID: %, NID: %, Type: %: Service not found.',
                b,
                IntToStr(StrToInt('$'+psl.Strings[0])),
                IntToStr(StrToInt('$'+psl.Strings[1])),
                IntToStr(StrToInt('$'+psl.Strings[2])),
                IntToStr(StrToInt('$'+psl.Strings[3])),
                psl.Strings[4]]));
            Inc(BouqErr);
            add := False;
          end;

          if add
          then begin;
            inc(cbq);
            cdsFBQ.Append;
            cdsFBQ.FieldByName('fbqSeqNr').AsInteger := cbq;
            cdsFBQ.FieldByName('fbqName').AsString := CleanText(cdsServ.FieldByName('servName').AsString);
            cdsFBQ.FieldByName('fbqSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[0]));
            cdsFBQ.FieldByName('fbqUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[1]));
            cdsFBQ.FieldByName('fbqTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[2]));
            cdsFBQ.FieldByName('fbqNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[3]));
            cdsFBQ.FieldByName('fbqServType').AsString := psl.Strings[4];
            cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
            cdsFBQ.FieldByName('fbqDescr').AsString := '';
            cdsFBQ.FieldByName('fbqDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
            cdsFBQ.FieldByName('fbqT').AsString := 'n';
            cdsFBQ.Post;
          end;

          ReadLn(tf,s);
        end;
        ReadLn(tf,s);
      end;
      CloseFile(tf);
      tnBQ.AlphaSort(True);
    end;
    if tnBQ.Count = 0
    then begin;
      new(pListData);
      pListData.FileName := '';
      pListData.Number := 1;
      pListData.Locked := False;
      tv.Items.AddChildObject(tnBQ,'Empty',pListData);
    end;

    { process TV User Bouquets Index File and TV User Bouquets Files }
    //  ShowWait('pos',0,0,4);

    tnTV := tv.Items.Insert(TNBQ,'TV User Bouquets');

    if FileExists(FDir + '\' + EplTVFilename)
    then begin;
      fsl := TStringList.Create;
      fsl.Clear;
      AssignFile(tf,FDir + '\' + EplTVFilename);
      SetLineBreakStyle(tf,tlbsCRLF);
      Reset(tf);
      if SettingsVersion = 2
      then begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (LowerCase(LeftStr(s,8)) = '#service') and
             (LowerCase(RightStr(s,3)) = '.tv')
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = '/'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            fsl.Add(s);
          end;
        end;
      end
      else begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if LowerCase(LeftStr(s,8)) = '#service'
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = ':'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            fsl.Add(s);
          end;
        end;
      end;
      CloseFile(tf);

      seqnr := 0;
      //  ShowWait('pos',0,0,5);

      for i := 0 to fsl.Count - 1 do begin;
        { First extract filename with version>2 settings set }
        if (SettingsVersion <> 2) and
           (pos('"',fsl[i]) > 0)
        then begin;
          ib := pos('"',fsl[i]);
          ie := posex('"',fsl[i],ib+1);
          if V3OrderBy1 = ''
          then begin;
            V3OrderBy1 := LeftStr(fsl[i],ib);
            V3OrderBy2 := copy(fsl[i],ie,length(fsl[i])-ie+1);
          end;
          fsl[i] := copy(fsl[i],ib+1,ie-ib-1);
        end;

        { Process user bouquet file }
        if FileExists(FDir+'\' + fsl[i])
        then begin;
          AssignFile(tf,FDir+'\' + fsl[i]);
          SetLineBreakStyle(tf,tlbsLF);
          Reset(tf);
          ReadLn(tf,s);
          s := copy(s,7,length(s)-6);
          new(pListData);
          pListData.FileName := fsl[i];
          pListData.Number := i;
          if cdsLock.Locate('lockFilename',VarArrayOf([fsl[i]]),[])
          then begin;
            pListData.Locked := True;
            cdsLock.Delete;
          end
          else pListData.Locked := False;
          tv.Items.AddChildObject(tnTV,UTF8ToAnsi(s),pListData);
          bn := UTF8ToAnsi(s);

          sl := TStringList.Create;
          while not eof(tf)
          do begin;
            ReadLn(tf,s);
            if (copy(s,1,8) = '#SERVICE') or
               (copy(s,1,12) = '#DESCRIPTION')
            then sl.Add(s);
          end;
          CloseFile(tf);

          for e := 0 to sl.Count - 1 do begin;
            s := sl[e];

            if copy(s,1,8) <> '#SERVICE'
            then continue;

            ParseString(s,psl);
            if not CheckStringsOK(FDir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
            then begin;
              inc(FTVErr);
              continue;
            end;

            { handle alternatives in version > 2 }
            if (SettingsVersion <> 2) and
               (psl.Strings[1] = '1') and
               (psl.Strings[2] = '134') and
               (psl.Count >= 12) and
               (pos('"',s) > 0)
            then begin;
              ib := pos('"',s);
              ie := posex('"',s,ib+1);
              altfn := copy(s,ib+1,ie-ib-1);
              if FileExists(FDir+'\'+altfn)
              then begin;
                alt := TStringList.Create;
                alt.LoadFromFile(FDir+'\'+altfn);
                if alt.Count >= 2
                then begin;
                  s := alt.Strings[1];
                  ParseString(s,psl);
                  if not CheckStringsOK(FDir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
                  then begin;
                    inc(FTVErr);
                    continue;
                  end;
                  for a := 1 to 1 {alt.Count - 1} do begin; { for now: just the irst entry }
                    cdsAlt.Append;
                    cdsAlt.FieldByName('altBQName').AsString := bn;
                    cdsAlt.FieldByName('altSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
                    cdsAlt.FieldByName('altUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
                    cdsAlt.FieldByName('altTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
                    cdsAlt.FieldByName('altNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
                    cdsAlt.FieldByName('altServType').AsString := psl.Strings[3];
                    cdsAlt.FieldByName('altFileName').AsString := altfn;
                    cdsAlt.Post;
                  end;
                end;
                alt.Free;
              end;
            end;

            { Settingsversion >2: set hex servicetype value to decimal }
            if SettingsVersion <> 2
            then psl.Strings[3] := IntToStr(StrToInt('$'+psl.Strings[3]));

            if psl.Strings[1] <> '1'
            then begin;
              log('w',lwLngTrns(name,['Unsupported reference in TV User Bouquet ' +
                                 '(%) to User Bouquet itself skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FTVErr);
              continue;
            end;
            if (psl.Strings[2] = '15') and
               (psl.Strings[3] <> 'fffffffd')
            then begin;
              log('w',lwLngTrns(name,['Unsupported reference in TV User Bouquet ' +
                                '(%) skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FTVErr);
              continue;
            end;

            { handle old references to bouquets }
            if (psl.Strings[2] = '15') and
               (psl.Strings[3] = 'fffffffd')
            then begin;
              log('w',lwLngTrns(name,['Reference in TV User Bouquet ' +
                                '(%) to bouquet skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FTVErr);
              continue;
            end;

            ubt := 'n';
            descr := '';
            { Handle Markers }
            if psl.Strings[2] = '64'
            then begin;
              if (e < sl.Count - 1) and
                 (copy(sl[e+1],1,12) = '#DESCRIPTION')
              then
                if copy(sl[e+1],1,13) = '#DESCRIPTION:'
                then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
                else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
              else begin;
                log('w',lwLngTrns(name,['Empty marker ignored (%)',
                                  fsl[i]]));
                inc(FTVErr);
                continue;
              end;
              ubt := 'm';
            end;

            { handle duplicate references }
            if (descr = '') and
               (not AllowDuplicates) and
               (cdsFTV.FindKey([IntToStr(i),
                                IntToStr(StrToInt('$'+psl.Strings[4])),
                                IntToStr(StrToInt('$'+psl.Strings[7])),
                                IntToStr(StrToInt('$'+psl.Strings[5])),
                                IntToStr(StrToInt('$'+psl.Strings[6])),
                                psl.Strings[3]]))
            then begin;
              log('w',lwLngTrns(name,['Duplicate TV favourite (%) not loaded',fsl[i]]));
              log('w','-- data: ' + s +
                      ' (service: ' + cdsFTV.FieldByName('ftvName').AsString + ', ' +
                      ' bouquet: ' + bn + ')');
              inc(FTVErr);
              continue;
            end;

            { handle reference to unknown service / sub service }
            if (ubt = 'n') and
               (not cdsServ.FindKey([IntToStr(StrToInt('$'+psl.Strings[4])),
                                     IntToStr(StrToInt('$'+psl.Strings[7])),
                                     IntToStr(StrToInt('$'+psl.Strings[5])),
                                     IntToStr(StrToInt('$'+psl.Strings[6])),
                                     psl.Strings[3]]))
            then begin;
              if (e >= sl.Count - 1) or
                 (copy(sl[e+1],1,12) <> '#DESCRIPTION')
              then begin;
                log('w',lwLngTrns(name,['TV Favourite (%) without ' +
                                   'corresponding service not loaded',fsl[i]]));
                log('w','-- data: ' + s);
                inc(FTVErr);
                continue;
              end;
              ubt := 's';
              descr := trim(copy(sl[e+1],14,length(sl[e+1])-1));
            end;

            { handle renamed services }
            if (ubt = 'n') and
               (e <= sl.Count - 2) and
               (copy(sl[e+1],1,12) = '#DESCRIPTION')
            then begin;
              ubt := 'r';
              if copy(sl[e+1],1,13) = '#DESCRIPTION:'
              then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
              else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
            end;

            { process service reference }
            inc(seqnr);
            cdsFTV.Append;
            cdsFTV.FieldByName('ftvSeqNr').AsInteger := seqnr;
            if (ubt = 'n') or
               (ubt = 'r')
            then cdsFTV.FieldByName('ftvName').AsString := CleanText(cdsServ.FieldByName('servName').AsString)
            else cdsFTV.FieldByName('ftvName').AsString := CleanText(descr);
            cdsFTV.FieldByName('ftvSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
            cdsFTV.FieldByName('ftvUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
            cdsFTV.FieldByName('ftvTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
            cdsFTV.FieldByName('ftvNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
            if ubt = 'm'
            then cdsFTV.FieldByName('ftvServType').AsString := '0'
            else cdsFTV.FieldByName('ftvServType').AsString := psl.Strings[3];
            cdsFTV.FieldByName('ftvSetNr').AsInteger := i;
            if descr <> ''
            then cdsFTV.FieldByName('ftvDescr').AsString := CleanText(descr)
            else cdsFTV.FieldByName('ftvDescr').AsString := '';
            if (ubt = 'n') or
               (ubt = 'r')
            then cdsFTV.FieldByName('ftvDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString
            else cdsFTV.FieldByName('ftvDbeNr').AsString := '0';
            cdsFTV.FieldByName('ftvT').AsString := ubt;
            cdsFTV.Post;
          end;
          sl.Free;
        end;
      end;
      fsl.Free;
    end;
    if tnTV.Count = 0
    then begin;
      new(pListData);
      tv.Items.AddChildObject(tnTV,'Favorites',pListData);
      pListData.FileName := 'userbouquet.dbe00.tv';
      pListData.Number := 0;
      pListData.Locked := False;
    end;

    { process Radio User Bouquet Index File and Radio User Bouquet Files }
    //  ShowWait('pos',0,0,6);

    tnRD := tv.Items.Insert(TNBQ,'Radio User Bouquets');

    if FileExists(FDir + '\' + EplRDFilename)
    then begin;
      fsl := TStringList.Create;
      fsl.Clear;
      AssignFile(tf,FDir + '\' + EplRDFilename);
      SetLineBreakStyle(tf,tlbsCRLF);
      Reset(tf);
      if SettingsVersion = 2
      then begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (LowerCase(LeftStr(s,8)) = '#service') and
             (LowerCase(RightStr(s,6)) = '.radio')
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = '/'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            fsl.Add(s);
          end;
        end;
      end
      else begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if LowerCase(LeftStr(s,8)) = '#service'
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = ':'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            fsl.Add(s);
          end;
        end;
      end;
      CloseFile(tf);

      seqnr := 0;
      //  ShowWait('pos',0,0,7);

      for i := 0 to fsl.Count - 1 do begin;
        { First extract filename with version>2 settings set }
        if (SettingsVersion <> 2) and
           (pos('"',fsl[i]) > 0)
        then begin;
          ib := pos('"',fsl[i]);
          ie := posex('"',fsl[i],ib+1);
          if V3OrderBy1 = ''
          then begin;
            V3OrderBy1 := LeftStr(fsl[i],ib);
            V3OrderBy2 := copy(fsl[i],ie,length(fsl[i])-ie+1);
          end;
          fsl[i] := copy(fsl[i],ib+1,ie-ib-1);
        end;

        { Process user bouquet file }
        if FileExists(FDir+'\' + fsl[i])
        then begin;
          AssignFile(tf,FDir+'\' + fsl[i]);
          SetLineBreakStyle(tf,tlbsLF);
          Reset(tf);
          ReadLn(tf,s);
          s := copy(s,7,length(s)-6);
          new(pListData);
          pListData.FileName := fsl[i];
          pListData.Number := i;
          if cdsLock.Locate('lockFilename',VarArrayOf([fsl[i]]),[])
          then begin;
            pListData.Locked := True;
            cdsLock.Delete;
          end
          else pListData.Locked := False;
          tv.Items.AddChildObject(tnRD,UTF8ToAnsi(s),pListData);
          bn := UTF8ToAnsi(s);

          sl := TStringList.Create;
          while not eof(tf)
          do begin;
            ReadLn(tf,s);
            if (copy(s,1,8) = '#SERVICE') or
               (copy(s,1,12) = '#DESCRIPTION')
            then sl.Add(s);
          end;
          CloseFile(tf);

          for e := 0 to sl.Count - 1 do begin;
            s := sl[e];

            if copy(s,1,8) <> '#SERVICE'
            then continue;

            ParseString(s,psl);
            if not CheckStringsOK(FDir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
            then begin;
              inc(FRDErr);
              continue;
            end;

            { handle alternatives in version > 2 }
            if (SettingsVersion <> 2) and
               (psl.Strings[1] = '1') and
               (psl.Strings[2] = '134') and
               (psl.Count >= 12) and
               (pos('"',s) > 0)
            then begin;
              ib := pos('"',s);
              ie := posex('"',s,ib+1);
              altfn := copy(s,ib+1,ie-ib-1);
              if FileExists(FDir+'\'+altfn)
              then begin;
                alt := TStringList.Create;
                alt.LoadFromFile(FDir+'\'+altfn);
                if alt.Count >= 2
                then begin;
                  s := alt.Strings[1];
                  ParseString(s,psl);
                  if not CheckStringsOK(FDir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
                  then begin;
                    inc(FRDErr);
                    continue;
                  end;
                  for a := 1 to 1 {alt.Count - 1} do begin; { for now: just the irst entry }
                    cdsAlt.Append;
                    cdsAlt.FieldByName('altBQName').AsString := bn;
                    cdsAlt.FieldByName('altSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
                    cdsAlt.FieldByName('altUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
                    cdsAlt.FieldByName('altTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
                    cdsAlt.FieldByName('altNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
                    cdsAlt.FieldByName('altServType').AsString := psl.Strings[3];
                    cdsAlt.FieldByName('altFileName').AsString := altfn;
                    cdsAlt.Post;
                  end;
                end;
                alt.Free;
              end;
            end;

            { Settingsversion >2: set hex servicetype value to decimal }
            if SettingsVersion <> 2
            then psl.Strings[3] := IntToStr(StrToInt('$'+psl.Strings[3]));

            if psl.Strings[1] <> '1'
            then begin;
              log('w',lwLngTrns(name,['Unsupported reference in Radio User Bouquet ' +
                                 '(%) to User Bouquet itself skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FRDErr);
              continue;
            end;
            if (psl.Strings[2] = '15') and
               (psl.Strings[3] <> 'fffffffd')
            then begin;
              log('w',lwLngTrns(name,['Unsupported reference in Radio User Bouquet ' +
                                 '(%) skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FRDErr);
              continue;
            end;

            { handle old references to bouquets }
            if (psl.Strings[2] = '15') and
               (psl.Strings[3] = 'fffffffd')
            then begin;
              log('w',lwLngTrns(name,['Reference in Radio User Bouquet ' +
                                 '(%) to bouquet skipped:',fsl[i]]));
              log('w','--data: ' + s);
              inc(FRDErr);
              continue;
            end;

            { Handle Markers }
            ubt := 'n';
            descr := '';
            if psl.Strings[2] = '64'
            then begin;
              if (e < sl.Count - 1) and
                 (copy(sl[e+1],1,12) = '#DESCRIPTION')
              then
                if copy(sl[e+1],1,13) = '#DESCRIPTION:'
                then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
                else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
              else begin;
                log('w',lwLngTrns(name,['Empty marker ignored (%)',
                                  fsl[i]]));
                inc(FRDErr);
                continue;
              end;
              ubt := 'm';
            end;

            { handle references to duplicate services }
            if (descr = '') and
               (not AllowDuplicates) and
               (cdsFRD.FindKey([IntToStr(i),
                                IntToStr(StrToInt('$'+psl.Strings[4])),
                                IntToStr(StrToInt('$'+psl.Strings[7])),
                                IntToStr(StrToInt('$'+psl.Strings[5])),
                                IntToStr(StrToInt('$'+psl.Strings[6])),
                                psl.Strings[3]]))
            then begin;
              log('w',lwLngTrns(name,['Duplicate Radio favourite (%) not loaded',fsl[i]]));
              log('w','-- data: ' + s +
                      ' (service: ' + cdsFRD.FieldByName('frdName').AsString + ', ' +
                      ' bouquet: ' + bn + ')');
              inc(FRDErr);
              continue;
            end;

            { handle reference to unknown service / sub service }
            if (ubt = 'n') and
               (not cdsServ.FindKey([IntToStr(StrToInt('$'+psl.Strings[4])),
                                     IntToStr(StrToInt('$'+psl.Strings[7])),
                                     IntToStr(StrToInt('$'+psl.Strings[5])),
                                     IntToStr(StrToInt('$'+psl.Strings[6])),
                                     psl.Strings[3]]))
            then begin;
              if (e >= sl.Count - 1) or
                 (copy(sl[e+1],1,12) <> '#DESCRIPTION')
              then begin;
                log('w',lwLngTrns(name,['Radio Favourite (%) without ' +
                                  'corresponding service not loaded',fsl[i]]));
                log('w','-- data: ' + s);
                inc(FRDErr);
                continue;
              end;
              ubt := 's';
              descr := trim(copy(sl[e+1],14,length(sl[e+1])-1));
            end;

            { handle renamed services }
            if (ubt = 'n') and
               (e <= sl.Count - 2) and
               (copy(sl[e+1],1,12) = '#DESCRIPTION')
            then begin;
              ubt := 'r';
              if copy(sl[e+1],1,13) = '#DESCRIPTION:'
              then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
              else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
            end;

            inc(seqnr);
            cdsFRD.Append;
            cdsFRD.FieldByName('frdSeqNr').AsInteger := seqnr;
            if (ubt = 'n') or
               (ubt = 'r')
            then cdsFRD.FieldByName('frdName').AsString := CleanText(cdsServ.FieldByName('servName').AsString)
            else cdsFRD.FieldByName('frdName').AsString := CleanText(descr);
            cdsFRD.FieldByName('frdSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
            cdsFRD.FieldByName('frdUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
            cdsFRD.FieldByName('frdTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
            cdsFRD.FieldByName('frdNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
            if ubt = 'm'
            then cdsFRD.FieldByName('frdServType').AsString := '0'
            else cdsFRD.FieldByName('frdServType').AsString := psl.Strings[3];
            cdsFRD.FieldByName('frdSetNr').AsInteger := i;
            if descr <> ''
            then cdsFRD.FieldByName('frdDescr').AsString := CleanText(descr)
            else cdsFRD.FieldByName('frdDescr').AsString := '';
            if (ubt = 'n') or
               (ubt = 'r')
            then cdsFRD.FieldByName('frdDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString
            else cdsFRD.FieldByName('frdDbeNr').AsString := '0';
            cdsFRD.FieldByName('frdT').AsString := ubt;
            cdsFRD.Post;
          end;
          sl.Free;
        end;
      end;
      fsl.Free;
    end;
    if tnRD.Count = 0
    then begin;
      new(pListData);
      tv.Items.AddChildObject(tnRD,'Favorites',pListData);
      pListData.FileName := 'userbouquet.dbe00.radio';
      pListData.Number := 0;
      pListData.Locked := False;
    end;

    { process satellites.xml }
    //  ShowWait('pos',0,0,8);

    if FileExists(FDir+'\satellites.xml')
    then begin;
      AssignFile(tf,FDir+'\satellites.xml');
      SetLineBreakStyle(tf,tlbsLF);
      Reset(tf);
      ReadLn(tf,s);
      while not eof(tf) do begin;
        if pos('position="',s) > 0
        then begin;
          ib := pos('position="',s);
          ie := posex('"',s,ib+10);
          if cdsPos.FindKey([StrToInt(copy(s,ib+10,ie-ib-10))])
          then begin;
            ib := pos('sat name="',s);
            ie := posex('"',s,ib+10);
            cdsPos.Edit;
            cdsPos.FieldByName('PosName').AsString := copy(s,ib+10,ie-ib-10);
            cdsPos.Post;
          end
          else begin;
            cdsPos.Append;
            cdsPos.FieldByName('PosInt').AsString := copy(s,ib+10,ie-ib-10);
            cdsPos.FieldByName('PosStr').AsString := Format('%.1n',[StrToInt(copy(s,ib+10,ie-ib-10))/10]);
            ib := pos('sat name="',s);
            ie := posex('"',s,ib+10);
            cdsPos.FieldByName('PosName').AsString := copy(s,ib+10,ie-ib-10);
            cdsPos.Post;
          end;
        end;
        ReadLn(tf,s);
      end;
      CloseFile(tf);
    end;

    { Ready }
    tv.FullExpand;
    tv.TopItem := tnTV;
    //  ToolBar1.Enabled := True;

    // if PiconActivate then GetPng;
    //  ShowWait('free',0,0,0);

    cbSatName.ItemIndex := 0;
    ePackage.Text := '';
    cdsServ.IndexFieldNames := 'servCleanName;servPackage';
    lvServ.Items.Count := cdsServ.RecordCount;
    lvServ.Refresh;

    //  SetMenu('loaded');

    psl.Free;
    Self.Caption := 'LlamaWare DreamBoxEdit - ' + FDir;

    DetType := '';
    tv.Items.Item[1].Selected := True;

    if saveTVRadio
    then begin;
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_CURRENT_USER;
      Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
      cbTVRadio.ItemIndex := Reg.ReadInteger('TV and Radio Services Selection');
      Reg.CloseKey;
      Reg.Destroy;
      cbTVRadioChange(Self);
    end;

    if (ServErr = 0) and
       (BouqErr = 0) and
       (FTVErr = 0) and
       (FRDErr = 0)
    then log('i',lwLngTrns(name,['Files loaded']))
    else begin;
      log('w',lwLngTrns(name,['Files loaded with errors']));
      log('w',lwLngTrns(name,['-  errors in services file: %',IntToStr(ServErr)]));
      log('w',lwLngTrns(name,['-  errors in bouquets file: %',IntToStr(BouqErr)]));
      log('w',lwLngTrns(name,['-  errors in userbouquet.xxxxx.tv file(s) (TV): %',IntToStr(FTVErr)]));
      log('w',lwLngTrns(name,['-  errors in userbouquet.xxxxx.radio file(s) (Radio): %',IntToStr(FRDErr)]));
      log('w',lwLngTrns(name,['See earlier logged messages for more details']));
      if (FTVErr <> 0) or
         (FRDErr <> 0)
      then begin;
        log('w',lwLngTrns(name,['Explanation of errors found within TV and/or Radio User Bouquet:']));
        log('w',lwLngTrns(name,['.. All files are loaded but unsupported ' +
            ' references were found in the TV and/or Radio User Bouquet list!']));
        log('w',lwLngTrns(name,['.. Those references were skipped as they were references '+
            'to the complete services list, the complete bouquets list']));
        log('w',lwLngTrns(name,['.. or a circular reference to User Bouquet itself, probably ' +
            'created by accident']));
        log('w',lwLngTrns(name,['.. Although you will loose these unsupported references, you '+
            'can still go on editing and saving.']));
      end;
      MessageDlg(lwLngTrns(name,[
                 'All files are loaded, but with errors:~' +
                 ' errors in services file: %~' +
                 ' errors in bouquets file: %~' +
                 ' errors in userbouquet.xxxxx.tv file(s) (TV): %~' +
                 ' errors in userbouquet.xxxxx.radio file(s) (Radio): %~~' +
                 'Check the log file for more information!~~' +
                 'All errors are related to invalid definitions and references ' +
                 'within the selected settings files.~' +
                 'This means the files are now cleaned up and contain only valid items. You ' +
                 'can now go on editing the settings.',
                 IntToStr(ServErr),IntToStr(BouqErr),IntToStr(FTVErr),IntToStr(FRDErr)]),
                 mtWarning,[mbOK],0);
      SetMenu('changed');
    end;

    if (satcable = 's') and (not FileExists(FDir + '\satellites.xml'))
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "satellites.xml"~' +
                 'You can continue editing the file-set but now there is no translation '+
                 'from satellite position to satellite name available.~~'+
                 'You might consider to first copy all necessary ' +
                 'files from the dreambox to your PC with the FTP function.',FDir]),
                 mtWarning,[mbOk],0);
      Log('w',lwLngTrns(name,['File % not found in "%"',
                              'satellites.xml',FDir]));
    end;

  end;
end;

procedure TfrmMain.acFileSaveExecute(Sender: TObject);
var
  tf: TextFile;
  sif,s,fn,v2Sep,lfn,stype: String;
  i,j,c{,p},marker: Integer;
  psl: TStringList;
  pListData: ^TListData;
  servsif: String;
  servflt: Boolean;
  TempStream: TMemoryStream;
begin
  if FDir = ''
  then begin;
    acSaveAs.Execute;
    exit;
  end;

  psl := TStringList.Create;
  marker := 0;

  { first save current Det list }
  lvDetSave();

  { prepare files structure }
  Log('i',lwLngTrns(name,['Saving file-set in %',FDir]));

  if not FileExists(FDir + '\' + ServFilename + '_org')
  then begin;
    if RenameFile(FDir + '\' + ServFilename,FDir + '\' + ServFilename + '_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           ServFilename,ServFilename + '_org',FDir]));
  end
  else begin;
    if FileExists(FDir + '\' + ServFilename + '_bak')
    then begin;
      DeleteFile(FDir + '\' + ServFilename + '_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        ServFilename + '_bak',FDir]));
    end;
    if RenameFile(FDir + '\' + ServFilename,FDir + '\' + ServFilename + '_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           ServFilename,ServFilename + '_bak',FDir]));
  end;

  if SettingsVersion = 2
  then lfn := 'services.locked'
  else
    if Blacklist
    then lfn := 'blacklist'
    else lfn := 'whitelist';
  if not FileExists(FDir + '\' + lfn + '_org')
  then begin;
    if RenameFile(FDir + '\' + lfn,FDir + '\' + lfn + '_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           lfn,lfn + '_org',FDir]));
  end
  else begin;
    if FileExists(FDir + '\' + lfn + '_bak')
    then begin;
      DeleteFile(FDir + '\' + lfn + '_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        lfn + '_bak',FDir]));
    end;
    if RenameFile(FDir + '\' + lfn,FDir + '\' + lfn + '_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           lfn,lfn + '_bak',FDir]));
  end;

  if not FileExists(FDir + '\bouquets_org')
  then begin;
    if RenameFile(FDir + '\bouquets',FDir + '\bouquets_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           'bouquets','bouquets_org',FDir]));
  end
  else begin;
    if FileExists(FDir + '\bouquets_bak')
    then begin;
      DeleteFile(FDir + '\bouquets_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        'bouquets_bak',FDir]));
    end;
    if RenameFile(FDir + '\bouquets',FDir + '\bouquets_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           'bouquets','bouquets_bak',FDir]));
  end;

  //  ToolBar1.Enabled := False;
  Application.ProcessMessages;

  {---------------------}
  { Write services file }
  {---------------------}

  { write transponders }
  cdsTSID.EmptyDataSet;
  cdsTSID.Close;
  cdsTSID.Open;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := '';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;

  TempStream := TMemoryStream.Create;
  cdsServ.SaveToStream(TempStream);
  TempStream.Position := 0;
  cdsServSave.LoadFromStream(TempStream);
  TempStream.Free;

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;

  cdsServSave.First;
  while not cdsServSave.Eof do begin;
    if not cdsTSID.FindKey([cdsServSave.FieldByName('servUniq').AsString,
                            cdsServSave.FieldByName('servTSID').AsString,
                            cdsServSave.FieldByName('servNID').AsString])
    then begin;
      cdsTSID.Append;
      cdsTSID.FieldByName('tsidSTC').AsString := cdsServSave.FieldByName('servSTC').AsString;
      cdsTSID.FieldByName('tsidUniq').AsString := cdsServSave.FieldByName('servUniq').AsString;
      cdsTSID.FieldByName('tsidTSID').AsString := cdsServSave.FieldByName('servTSID').AsString;
      cdsTSID.FieldByName('tsidNID').AsString := cdsServSave.FieldByName('servNid').AsString;
      cdsTSID.FieldByName('tsidFreq').AsString := cdsServSave.FieldByName('servFreq').AsString;
      cdsTSID.FieldByName('tsidSymb').AsString := cdsServSave.FieldByName('servSymb').AsString;
      cdsTSID.FieldByName('tsidPol').AsString := cdsServSave.FieldByName('servPol').AsString;
      cdsTSID.FieldByName('tsidFEC').AsString := cdsServSave.FieldByName('servFEC').AsString;
      cdsTSID.FieldByName('tsidPos').AsString := cdsServSave.FieldByName('servPos').AsString;
      cdsTSID.FieldByName('tsidExtra').AsString := cdsServSave.FieldByName('servTrExtra').AsString;
      cdsTSID.Post;
    end;
    cdsServSave.Next;
  end;

  //p := 0;
  //  ShowWait('init',
      //     0,
        //   cdsTSID.RecordCount +
          // cdsServ.RecordCount +
           //cdsFTV.RecordCount +
           //cdsFRD.RecordCount +
           //cdsFBQ.RecordCount,
           //0);

  AssignFile(tf,FDir + '\' + ServFilename);
  SetLineBreakStyle(tf,tlbsLF);
  Rewrite(tf);
  if SettingsVersion = 2
  then WriteLn(tf,'eDVB services /2/');
  if SettingsVersion = 3
  then WriteLn(tf,'eDVB services /3/');
  if SettingsVersion = 4
  then WriteLn(tf,'eDVB services /4/');

  { write services file - transponder entries }
  WriteLn(tf,'transponders');
  cdsTSID.First;
  while not cdsTSID.Eof
  do begin;
    //inc(p);
    //  if p mod 25 = 0
    //  then ShowWait('pos',0,0,p);

    s := LowerCase(IntToHex(StrToInt(cdsTSID.FieldByName('tsidUniq').AsString),8)) + ':' +
         LowerCase(IntToHex(StrToInt(cdsTSID.FieldByName('tsidTSID').AsString),4)) + ':' +
         LowerCase(IntToHex(StrToInt(cdsTSID.FieldByName('tsidNID').AsString),4));
    WriteLn(tf,s);
    if SatCable = 'c'
    then begin;
      s := #09 + 'c ' +
           cdsTSID.FieldByName('tsidFreq').AsString + ':' +
           cdsTSID.FieldByName('tsidSymb').AsString + ':' +
           cdsTSID.FieldByName('tsidPol').AsString + ':' +
           cdsTSID.FieldByName('tsidFEC').AsString;
    end
    else begin;
      if cdsTSID.FieldByName('tsidSTC').AsString = 's'
      then s := #09 + 's ' +
                cdsTSID.FieldByName('tsidFreq').AsString + ':' +
                cdsTSID.FieldByName('tsidSymb').AsString + ':' +
                cdsTSID.FieldByName('tsidPol').AsString + ':' +
                cdsTSID.FieldByName('tsidFEC').AsString + ':' +
                cdsTSID.FieldByName('tsidPos').AsString +
                cdsTSID.FieldByName('tsidExtra').AsString
      else s := #09 +
                cdsTSID.FieldByName('tsidSTC').AsString + ' ' +
                cdsTSID.FieldByName('tsidFreq').AsString +
                cdsTSID.FieldByName('tsidExtra').AsString;
    end;

    WriteLn(tf,s);
    WriteLn(tf,'/');
    cdsTSID.Next;
  end;
  WriteLn(tf,'end');

  { write services file - service entries }
  WriteLn(tf,'services');
  cdsServSave.First;
  c := 0;
  while not cdsServSave.Eof
  do begin;
    //inc(p);
    //  if p mod 25 = 0
    //  then ShowWait('pos',0,0,p);

    inc(c);
    s := IntToHex(StrToInt(cdsServSave.FieldByName('servSID').AsString),4) + ':' +
         IntToHex(StrToInt(cdsServSave.FieldByName('servUniq').AsString),8) + ':' +
         IntToHex(StrToInt(cdsServSave.FieldByName('servTSID').AsString),4) + ':' +
         IntToHex(StrToInt(cdsServSave.FieldByName('servNID').AsString),4) + ':' +
         cdsServSave.FieldByName('servType').AsString;
    if cdsServSave.FieldByName('servNr').AsString <> ''
    then s := s + ':' + cdsServSave.FieldByName('servNr').AsString
    else s := s + ':' + IntToStr(c+200);
    WriteLn(tf,s);
    WriteLn(tf,cdsServSave.FieldByName('servName').AsString);
    s := 'p:' + copy(cdsServSave.FieldByName('servPackage').AsString,1,50); { was 22 for some unknown reason ... :-( }
    if RightStr(s,1) = ','
    then s := LeftStr(s,length(s)-1);
    if cdsServSave.FieldByName('servC08PCMDelay').AsInteger <> 0
    then s := 'c:08' + IntToHex(StrToInt(cdsServSave.FieldByName('servC08PCMDelay').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servC07BSDelay').AsInteger <> 0
    then s := 'c:07' + IntToHex(StrToInt(cdsServSave.FieldByName('servC07BSDelay').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('serv3PID').AsInteger <> 0
    then s := 'c:04' + IntToHex(StrToInt(cdsServSave.FieldByName('serv3PID').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servPPID').AsInteger <> 0
    then s := 'c:03' + IntToHex(StrToInt(cdsServSave.FieldByName('servPPID').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servTPID').AsInteger <> 0
    then s := 'c:02' + IntToHex(StrToInt(cdsServSave.FieldByName('servTPID').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servAPID').AsInteger <> 0
    then s := 'c:01' + IntToHex(StrToInt(cdsServSave.FieldByName('servAPID').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servVPID').AsInteger <> 0
    then s := 'c:00' + IntToHex(StrToInt(cdsServSave.FieldByName('servVPID').AsString),4) + ',' + s;
    if cdsServSave.FieldByName('servFlags').AsInteger  and 127 <> 0
    then s := 'f:' + IntToHex(cdsServSave.FieldByName('servFlags').AsInteger and 127,4) + ',' + s;
    { Only for version 4  and higher }
    if (SettingsVersion >= 4) and
       (cdsServSave.FieldByName('servExtra').AsString <> '')
    then s := s + ',' + cdsServSave.FieldByName('servExtra').AsString; { Append unknown exra fields }
    WriteLn(tf,s);
    cdsServSave.Next;
  end;
  WriteLn(tf,'end');
  WriteLn(tf,'Edited with LlamaWare DreamBoxEdit ' + GetAppVersion +
             ' on ' + FormatDateTime('ddmmmyyyy hh:mm:ss',now()));
  CloseFile(tf);
  Log('i',lwLngTrns(name,['services saved in %', FDir]));

  {----------------------------------------------------}
  { Write services.locked / whitelist / blacklist file }
  {----------------------------------------------------}
  AssignFile(tf, FDir + '\' + lfn);
  SetLineBreakStyle(tf,tlbsLF);
  Rewrite(tf);
  if SettingsVersion = 2
  then WriteLn(tf,'Parentallocked Services');
  { original lock entries that are not processed by dreamboxedit + locks on subservices}
  cdsLock.First;
  while not cdsLock.Eof do begin;
    s := cdsLock.FieldByName('lockI1').AsString + ':' +
         cdsLock.FieldByName('lockI2').AsString + ':' +
         {cdsLock.FieldByName('lockServType').AsString + ':' +}
         IntToHex(StrToInt(cdsLock.FieldByName('lockServType').AsString),1) + ':' +
         IntToHex(StrToInt(cdsLock.FieldByName('lockSID').AsString),1) + ':' +
         IntToHex(StrToInt(cdsLock.FieldByName('lockTSID').AsString),1) + ':' +
         IntToHex(StrToInt(cdsLock.FieldByName('lockNID').AsString),1) + ':' +
         IntToHex(StrToInt(cdsLock.FieldByName('lockUniq').AsString),1) + ':0:0:0:' +
         cdsLock.FieldByName('lockString').AsString;
    s := UpperCase(s);
    WriteLn(tf,s);
    cdsLock.Next;
  end;
  { locked services }
  cdsServSave.First;
  while not cdsServSave.Eof do begin;
    if cdsServSave.FieldByName('servLock').AsInteger = 1
    then begin;
      s := '1:0:' +
           LowerCase(IntToHex(StrToInt(cdsServSave.FieldByName('servType').AsString),1)) + ':' +
           LowerCase(IntToHex(StrToInt(cdsServSave.FieldByName('servSID').AsString),1)) + ':' +
           LowerCase(IntToHex(StrToInt(cdsServSave.FieldByName('servTSID').AsString),1)) + ':' +
           LowerCase(IntToHex(StrToInt(cdsServSave.FieldByName('servNID').AsString),1)) + ':' +
           LowerCase(IntToHex(StrToInt(cdsServSave.FieldByName('servUniq').AsString),1)) + ':0:0:0:';
      s := UpperCase(s);
      WriteLn(tf,s);
    end;
    cdsServSave.Next;
  end;

  { locked (user) bouquets }
  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items[i].Data = nil) or
       (tv.Items[i].Level = 0)
    then continue;
    pListData := tv.Items.Item[i].Data;
    if not pListData.Locked
    then continue;
    if tv.Items[i].Parent.Text[1] = 'P'
    then begin;
      s := '1:15:fffffffd:12:' +
           LowerCase(IntToHex(pListData.Number,1)) +
           ':ffffffff:0:0:0:0:';
    end
    else begin;
      fn := pListData.FileName;
      j := pos('.',fn);
      fn := RightStr(fn,length(fn)-j);
      j := pos('.',fn);
      fn := LeftStr(fn,j-1);
      s := '4097:7:0:' +
           fn +
           ':0:0:0:0:0:0:' +
           PathServices +
           pListData.FileName;
    end;
    WriteLn(tf,s);
  end;
  CloseFile(tf);
  Log('i',lwLngTrns(name,['services.lock saved in %', FDir]));

  cdsServSave.EmptyDataSet;
  cdsServSave.Close;
  cdsServSave.Open;

  {---------------------------------}
  { Write bouquets (providers) file }
  {---------------------------------}

  { write bouquets }
  if SettingsVersion = 2
  then begin;
    AssignFile(tf, FDir + '\bouquets');
    SetLineBreakStyle(tf,tlbsLF);
    Rewrite(tf);
    WriteLn(tf,'eDVB bouquets /2/');
    WriteLn(tf,'bouquets');
    sif := cdsFBQ.IndexFieldNames;
    cdsFBQ.IndexFieldNames := 'fbqSetNr;fbqSeqNr';
    for i := 0 to tv.Items.Count - 1 do begin;
      if (tv.Items.Item[i].Level <> 1) or
         (tv.Items.Item[i].Parent.Text[1] <> 'P')
      then continue;

      pListData := tv.Items.Item[i].Data;
      s := IntToStr(pListData.Number);
      WriteLn(tf,s);
      s := AnsiToUTF8(tv.Items.Item[i].Text);
      WriteLn(tf,s);
      cdsFBQ.FindKey([pListData.Number]);
      while (not cdsFBQ.Eof) and
            (cdsFBQ.FieldByName('fbqSetNr').AsInteger = pListData.Number)
      do begin;
        //inc(p);
        //  if p mod 25 = 0
        //  then ShowWait('pos',0,0,p);

        s := LowerCase(IntToHex(StrToInt(cdsFBQ.FieldByName('fbqSID').AsString),4)) + ':' +
             LowerCase(IntToHex(StrToInt(cdsFBQ.FieldByName('fbqUniq').AsString),8)) + ':' +
             LowerCase(IntToHex(StrToInt(cdsFBQ.FieldByName('fbqTSID').AsString),4)) + ':' +
             LowerCase(IntToHex(StrToInt(cdsFBQ.FieldByName('fbqNID').AsString),4)) + ':' +
             cdsFBQ.FieldByName('fbqServType').AsString;
        WriteLn(tf,s);
        cdsFBQ.Next;
      end;
      WriteLn(tf,'/');
    end;
    cdsFBQ.IndexFieldNames := sif;
    WriteLn(tf,'end');
    WriteLn(tf,'Edited with LlamaWare DreamBoxEdit ' + GetAppVersion +
               ' on ' + FormatDateTime('ddmmmyyyy hh:mm:ss',now()));
    CloseFile(tf);
    Log('i',lwLngTrns(name,['bouquets saved in %', FDir]));
  end;

  {---------------------------------}
  { Write all TV User Bouquet files }
  {---------------------------------}
  if SettingsVersion = 2
  then v2Sep := ':'
  else v2Sep := '';
  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items.Item[i].Level <> 1) or
       (tv.Items.Item[i].Parent.Text[1] <> 'T')
    then continue;

    pListData := tv.Items.Item[i].Data;
    fn := pListData.FileName;
    if FileExists(FDir + '\' + fn)
    then begin;
      if not FileExists(FDir + '\' + fn + '_org')
      then begin;
        if RenameFile(FDir + '\' + fn, FDir + '\' + fn + '_org')
        then Log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_org', FDir]));
      end
      else begin;
        if FileExists(FDir + '\' + fn + '_bak')
        then begin;
          DeleteFile(FDir + '\' + fn + '_bak');
          Log('i',lwLngTrns(name,['% deleted from %',
                                  fn + '_bak', FDir]));
        end;
        if RenameFile(FDir + '\' + fn, FDir + '\' + fn + '_bak')
        then log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_bak', FDir]));
      end;
    end;

    AssignFile(tf, FDir + '\' + fn);
    SetLineBreakStyle(tf,tlbsCRLF);
    Rewrite(tf);
    WriteLn(tf,'#NAME ' + AnsiToUTF8(tv.Items.Item[i].Text));

    sif := cdsFTV.IndexFieldNames;
    cdsFTV.IndexFieldNames := 'ftvSeqNr';
    cdsFTV.Filter := 'ftvSetNr = ''' + IntToStr(pListData.Number) + '''';
    cdsFTV.Filtered := True;

    cdsFTV.First;
    while not cdsFTV.Eof
    do begin;
      //inc(p);
      //  if p mod 25 = 0
      //  then ShowWait('pos',0,0,p);

      { Check alternatives for service within bouquet if settingsversion > 2 }
      if (SettingsVersion <> 2) and
         (cdsAlt.FindKey([tv.Items.Item[i].Text,
                          cdsFTV.FieldByName('ftvSID').AsString,
                          cdsFTV.FieldByName('ftvUniq').AsString,
                          cdsFTV.FieldByName('ftvTSID').AsString,
                          cdsFTV.FieldByName('ftvNID').AsString,
                          cdsFTV.FieldByName('ftvServType').AsString]))
      then s := '#SERVICE 1:134:1:0:0:0:0:0:0:0:FROM BOUQUET "' +
                cdsAlt.FieldByName('altFileName').AsString +
                '" ORDER BY bouquet'
      else begin;
        { Write servicetype in hex for settingsversion > 2 }
        if SettingsVersion = 2
        then stype := cdsFTV.FieldByName('ftvServType').AsString
        else stype := LowerCase(IntToHex(StrToInt(cdsFTV.FieldByName('ftvServType').AsString),1));
         if cdsFTV.FieldByName('ftvT').AsString <> 'm'
        then s := '#SERVICE' + v2Sep + ' 1:0:' +
                  stype + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFTV.FieldByName('ftvSID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFTV.FieldByName('ftvTSID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFTV.FieldByName('ftvNID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFTV.FieldByName('ftvUniq').AsString),1)) + ':0:0:0:'
        else begin;
          inc(marker);
          s := '#SERVICE' + v2Sep + ' 1:64:' +
               IntToHex(marker,1) +
               ':0:0:0:0:0:0:0:';
        end;
      end;
      WriteLn(tf,s);
      if cdsFTV.FieldByName('ftvDescr').AsString <> ''
      then begin;
        s := '#DESCRIPTION' + v2Sep + ' ' + AnsiToUtf8(cdsFTV.FieldByName('ftvDescr').AsString);
        WriteLn(tf,s);
      end;
      cdsFTV.Next;
    end;

    cdsFTV.Filtered := False;
    cdsFTV.Filter := '';
    cdsFTV.IndexFieldNames := sif;

    CloseFile(tf);
    Log('i',lwLngTrns(name,['TV User Bouquet % saved in %',
     tv.Items.Item[i].Text, FDir]));
  end;
  if FileExists(FDir + '\' + EplTVFilename)
  then begin;
    if not FileExists(FDir + '\' + EplTVFilename + '_org')
    then begin;
      if RenameFile(FDir + '\' + EplTVFilename, FDir + '\' + EplTVFilename + '_org')
      then Log('i',lwLngTrns(name,['% renamed to % in %',
                             EplTVFilename,EplTVFilename + '_org', FDir]));
    end
    else begin;
      if FileExists(FDir + '\' + EplTVFilename + '_bak')
      then begin;
        DeleteFile(FDir + '\' + EplTVFilename + '_bak');
        Log('i',lwLngTrns(name,['% deleted from %',
                          EplTVFilename + '_bak', FDir]));
      end;
      if RenameFile(FDir + '\' + EplTVFilename, FDir + '\' + EplTVFilename + '_bak')
      then log('i',lwLngTrns(name,['% renamed to % in %',
                             EplTVFilename,EplTVFilename + '_bak', FDir]));
    end;
  end;
  AssignFile(tf, FDir + '\' + EplTVFilename);
  SetLineBreakStyle(tf,tlbsCRLF);
  Rewrite(tf);
  WriteLn(tf,'#NAME User - bouquets (TV)');
  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items.Item[i].Level <> 1) or
       (tv.Items.Item[i].Parent.Text[1] <> 'T')
    then continue;

    pListData := tv.Items.Item[i].Data;
    s := pListData.FileName;
    for j := 1 to length(s) do begin;
      if s[j] = '.'
      then s[j] := ':';
    end;
    ParseString(s,psl);
    if Settingsversion = 2
    then begin;
      WriteLn(tf,'#SERVICE: 4097:7:0:' +
                 psl[1] +
                 ':0:0:0:0:0:0:' + PathUserBouquets +
                 pListData.FileName);
      WriteLn(tf,'#TYPE 16385');
      WriteLn(tf,PathUserBouquets +
                 pListData.FileName);
    end
    else begin;
      s := pListData.FileName;
      { Add original "FROM ... ORDER BY" or whatever was in the read settings set }
      if V3OrderBy1 <> ''
      then s := V3OrderBy1 + s + V3OrderBy2;
      WriteLn(tf,'#SERVICE: 1:7:1:0:0:0:0:0:0:0:' + s);
    end;
  end;
  CloseFile(tf);
  Log('i',lwLngTrns(name,['TV User Bouquet index file % saved in %',
   EplTVFilename, FDir]));

  {------------------------------------}
  { Write all Radio User Bouquet files }
  {------------------------------------}
  if SettingsVersion = 2
  then v2Sep := ':'
  else v2Sep := '';
  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items.Item[i].Level <> 1) or
       (tv.Items.Item[i].Parent.Text[1] <> 'R')
    then continue;

    pListData := tv.Items.Item[i].Data;
    fn := pListData.FileName;
    if FileExists(FDir + '\' + fn)
    then begin;
      if not FileExists(FDir + '\' + fn + '_org')
      then begin;
        if RenameFile(FDir + '\' + fn, FDir + '\' + fn + '_org')
        then Log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_org', FDir]));
      end
      else begin;
        if FileExists(FDir + '\' + fn + '_bak')
        then begin;
          DeleteFile(FDir + '\' + fn + '_bak');
          Log('i',lwLngTrns(name,['% deleted from %',
                                  fn + '_bak', FDir]));
        end;
        if RenameFile(FDir + '\' + fn, FDir + '\' + fn + '_bak')
        then log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_bak', FDir]));
      end;
    end;

    AssignFile(tf, FDir + '\' + fn);
    SetLineBreakStyle(tf,tlbsCRLF);
    Rewrite(tf);
    WriteLn(tf,'#NAME ' + AnsiToUTF8(tv.Items.Item[i].Text));

    sif := cdsFRD.IndexFieldNames;
    cdsFRD.IndexFieldNames := 'frdSeqNr';
    cdsFRD.Filter := 'frdSetNr = ''' + IntToStr(pListData.Number) + '''';
    cdsFRD.Filtered := True;

    cdsFRD.First;
    while not cdsFRD.Eof
    do begin;
      //inc(p);
      //  if p mod 25 = 0
      //  then ShowWait('pos',0,0,p);

      { Check alternatives for service within bouquet if settingsversion > 2 }
      if (SettingsVersion <> 2) and
         (cdsAlt.FindKey([tv.Items.Item[i].Text,
                          cdsFRD.FieldByName('frdSID').AsString,
                          cdsFRD.FieldByName('frdUniq').AsString,
                          cdsFRD.FieldByName('frdTSID').AsString,
                          cdsFRD.FieldByName('frdNID').AsString,
                          cdsFRD.FieldByName('frdServType').AsString]))
      then s := '#SERVICE 1:134:1:0:0:0:0:0:0:0:FROM BOUQUET "' +
                cdsAlt.FieldByName('altFileName').AsString +
                '" ORDER BY bouquet'
      else begin;
        { Write servicetype in hex for settingsversion 3 and higher }
        if SettingsVersion = 2
        then stype := cdsFRD.FieldByName('frdServType').AsString
        else stype := LowerCase(IntToHex(StrToInt(cdsFRD.FieldByName('frdServType').AsString),1));
        if cdsFRD.FieldByName('frdT').AsString <> 'm'
        then s := '#SERVICE' + v2Sep + ' 1:0:' +
                  stype + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFRD.FieldByName('frdSID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFRD.FieldByName('frdTSID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFRD.FieldByName('frdNID').AsString),1)) + ':' +
                  LowerCase(IntToHex(StrToInt(cdsFRD.FieldByName('frdUniq').AsString),1)) + ':0:0:0:'
        else begin;
          inc(marker);
          s := '#SERVICE' + v2Sep + ' 1:64:' +
               IntToHex(marker,1) +
               ':0:0:0:0:0:0:0:';
        end;
      end;  
      WriteLn(tf,s);
      if cdsFRD.FieldByName('frdDescr').AsString <> ''
      then begin;
        s := '#DESCRIPTION' + v2Sep + ' ' + AnsiToUtf8(cdsFRD.FieldByName('frdDescr').AsString);
        WriteLn(tf,s);
      end;
      cdsFRD.Next;
    end;

    cdsFRD.Filtered := False;
    cdsFRD.Filter := '';
    cdsFRD.IndexFieldNames := sif;

    CloseFile(tf);
    Log('i',lwLngTrns(name,['Radio User Bouquet % saved in %',
                            tv.Items.Item[i].Text, FDir]));
  end;
  if FileExists(FDir + '\' + EplRDFilename)
  then begin;
    if not FileExists(FDir + '\' + EplRDFilename + '_org')
    then begin;
      if RenameFile(FDir + '\' + EplRDFilename, FDir + '\' + EplRDFilename + '_org')
      then Log('i',lwLngTrns(name,['% renamed to % in %',
                             EplRDFilename,EplRDFilename + '_org', FDir]));
    end
    else begin;
      if FileExists(FDir + '\' + EplRDFilename + '_bak')
      then begin;
        DeleteFile(FDir + '\' + EplRDFilename + '_bak');
        Log('i',lwLngTrns(name,['% deleted from %',
                          EplRDFilename + '_bak', FDir]));
      end;
      if RenameFile(FDir + '\' + EplRDFilename, FDir + '\' + EplRDFilename + '_bak')
      then log('i',lwLngTrns(name,['% renamed to % in %',
                             EplRDFilename,EplRDFilename + '_bak', FDir]));
    end;
  end;
  AssignFile(tf, FDir + '\' + EplRDFilename);
  SetLineBreakStyle(tf,tlbsCRLF);
  Rewrite(tf);
  WriteLn(tf,'#NAME User - bouquets (Radio)');
  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items.Item[i].Level <> 1) or
       (tv.Items.Item[i].Parent.Text[1] <> 'R')
    then continue;

    pListData := tv.Items.Item[i].Data;
    s := pListData.FileName;
    for j := 1 to length(s) do begin;
      if s[j] = '.'
      then s[j] := ':';
    end;
    if SettingsVersion = 2
    then begin;
      ParseString(s,psl);
      WriteLn(tf,'#SERVICE: 4097:7:0:' +
                 psl[1] +
                 ':0:0:0:0:0:0:' + PathUserBouquets +
                 pListData.FileName);
      WriteLn(tf,'#TYPE 16385');
      WriteLn(tf,PathUserBouquets +
                 pListData.FileName);
    end
    else begin;
      s := pListData.FileName;
      { Add original "FROM ... ORDER BY" or whatever was in the read settings set }
      if V3OrderBy1 <> ''
      then s := V3OrderBy1 + s + V3OrderBy2;
      WriteLn(tf,'#SERVICE: 1:7:1:0:0:0:0:0:0:0:' + s);
    end;
  end;
  CloseFile(tf);
  Log('i', lwLngTrns(name, ['Radio User Bouquet index file % saved in %',
   EplRDFilename, FDir]));

  //  ToolBar1.Enabled := True;
  //  ShowWait('free',0,0,0);
  SetMenu('loaded');

  psl.Free;
end;

procedure TfrmMain.acToolsOptionsExecute(Sender: TObject);
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

procedure TfrmMain.acToolsTransferExecute(Sender: TObject);
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

function TfrmMain.lwLngTrns(form: string; args: array of string): string;
var
  i: Integer;
  s: string;
  key: string;
begin
  s := args[0];
  if Language <> 'English'
  then begin;
    key := 'm' + form + '.message.' + s;
    if FMsgTable.IndexOfName(key) >= 0
    then s := FMsgTable.Values[key];
    if trim(s) = ''
    then s := args[0];
  end;

  for i := 1 to high(args) do begin;
    s := StringReplace(s,'%',args[i],[]);
  end;
  Result := StringReplace(s,'~',#13,[rfReplaceAll]);
end;

function TfrmMain.SelDir(var Dir: string; const AllowCreate: Boolean): Boolean;
begin
  Result := False;

  if AllowCreate then
    JvSelectDirectory1.Tag := 1
  else
    JvSelectDirectory1.Tag := 0;

  JvSelectDirectory1.Title := FDir;

  if JvSelectDirectory1.Execute then
  begin
    // TODO: Code to open files from disk...

    FDir := JvSelectDirectory1.Directory;
    Result := True;
  end;

end;

procedure TfrmMain.Log(const sev, text: string);
var
  s: string;
begin
  if length(trim(text)) = 0
  then exit;

  cdsLog.Append;
  if sev = 'i'
  then s := 'Info'
  else
    if sev = 'w'
    then s := 'Warning'
    else
      if sev = 'e'
      then s := 'Error'
      else s := '?????';
  cdsLog.FieldByName('Severity').AsString := s;
  cdsLog.FieldByName('Time').AsString := FormatDateTime('yyyy-mm-dd hh:mm:ss',now());
  cdsLog.FieldByName('Text').AsString := trim(text);
  cdsLog.Post;
end;

procedure TfrmMain.SetVersionDefaults(const Version: Integer);
begin
  if version = 2
  then begin;
    SettingsVersion := 2;
    ServFilename := 'services';
    EplTVFilename := 'userbouquets.tv.epl';
    EplRDFilename := 'userbouquets.radio.epl';
    sb.Panels[4].Text := 'Parental control: Blacklist';
  end;
  if version = 3
  then begin;
    SettingsVersion := 3;
    ServFilename := 'lamedb';
    EplTVFilename := 'bouquets.tv';
    EplRDFilename := 'bouquets.radio';
    sb.Panels[4].Text := 'Parental control: Blacklist';
  end;
  if version = 4
  then begin;
    SettingsVersion := 4;
    ServFilename := 'lamedb';
    EplTVFilename := 'bouquets.tv';
    EplRDFilename := 'bouquets.radio';
    sb.Panels[4].Text := 'Parental control: Blacklist';
  end;
  sb.Panels[3].Text := 'Settings-type ' + IntToStr(SettingsVersion);
end;

function TfrmMain.ReadServices(const filename: string;
  var cds: TClientDataset; const Compare: Boolean): Integer;
  function ExtractParm(var line: String; const parm: String; const lvalue: Integer): String;
  var
    s: String;
    ib,ie: Integer;
  begin
    result := '';                      // default result is blank
    s := lowercase(line) + ',';        // Lowercase and suffix string with ',' for easier search
    ib := pos(lowercase(parm),s);      // Find parameter in string
    while ib <> 0 do begin;
      ie := posex(',',s,ib+1);         // Find next parameter delimiter ,
      if ie - ib - length(parm) <> lvalue             // If length is wrong, search again
      then ib := posex(lowercase(parm),s,ie+1)
      else break;                      // Found
    end;
    if ib = 0                          // Not found
    then exit;
    result := copy(line,ib+length(parm),lvalue);  // Copy result from original parameter line
    line := line + ',';                           // Add trailing ',' to be sure stringreplace works
    line := StringReplace(line,parm+result+',','',[]); // Remove parameter from original string
    if RightStr(line,1) = ','
    then line := Leftstr(line,length(line)-1);    // Remove trailing ',' if needed
  end;
var
  tf: TextFile;
  s,prm: String;
  psl,tsl: TStringList;
  i,c,DbeNr,ib,ie,ServErr,l: Integer;
begin
  if FileExists(FileName)
  then begin;
    tsl := TStringList.Create;
    tsl.LoadFromFile(filename);
    c := 0;
    for i := 0 to tsl.Count - 1 do begin;
      if (c = 0) and (tsl[i] = 'transponders')
      then c := 1
      else
        if (c = 1) and (tsl[i] = 'end')
        then c := 2
        else
          if (c = 2) and (tsl[i] = 'services')
          then c := 3
          else
            if (c = 3) and (tsl[i] = 'end')
            then c := 4;
    end;
    if c <> 4
    then begin;
      tsl.Free;
      MessageDlg(lwLngTrns(name,[
               'Invalid or damaged services file found, unable to continue loading!' +
               'The services file is missing one or more required sections.~~' +
               'Check that the file contains the following sections:~~' +
               'transponders~' +
               ' -- data --~ ' +
               'end~~' +
               'services~' +
               ' -- data --~' +
               'end']),
               mtError,[mbOk],0);
      Result := -1;
      exit;
    end;
    tsl.Free;
  end;

  AssignFile(tf,filename);
  SetLineBreakStyle(tf,tlbsLF);
  Reset(tf);
  ReadLn(tf,s);
  if (pos('/2/',s) = 0) and
     (pos('/3/',s) = 0) and
     (pos('/4/',s) = 0)
  then begin;
    CloseFile(tf);

    MessageDlg(lwLngTrns(name,[
               'The directory you selected contains either no services data or ' +
               'an old version of the setting files.~' +
               'This version of DreamBoxEdit only supports file-sets belonging ' +
               'to (unofficial) images 1.04.a.5 released after february 14th 2003.~~' +
               'To edit older file-sets use DreamBoxEdit version 1.41 or older.']),
               mtError,[mbOk],0);
    Result := -1;
    exit;
  end;
  if not compare
  then
    if pos('/2/',s) <> 0
    then SetVersionDefaults(2)
    else
      if pos('/3/',s) <> 0
      then SetVersionDefaults(3)
      else SetVersionDefaults(4);

  psl := TStringList.Create;

  { process services file - transponder entries }
  ServErr := 0;
  while s <> 'transponders' do
    ReadLn(tf,s);
  ReadLn(tf,s);
  while s <> 'end'
  do begin;
    cdsTSID.Append;
    ParseString(s,psl);
    if not CheckStringsOK(filename + ' - Transponders',s,psl,3,'HHH')
    then begin;
      inc(ServErr);
      ReadLn(tf,s);
      ReadLn(tf,s);
      ReadLn(tf,s);
      continue;
    end;

    cdsTSID.FieldByName('tsidUniq').AsString := IntToStr(StrToInt('$'+psl.Strings[0]));
    cdsTSID.FieldByName('tsidTsid').AsString := IntToStr(StrToInt('$'+psl.Strings[1]));
    cdsTSID.FieldByName('tsidNid').AsString := IntToStr(StrToInt('$'+psl.Strings[2]));

    ReadLn(tf,s);
    ParseString(s,psl);
    if (LowerCase(psl.Strings[0]) = 'c') and
       (SettingsVersion = 2)
    then begin;
      SatCable := 'c';
      sb.Panels[2].Text := lwLngTrns(name,['Cable']);
      psl.Strings[5] := '0';
    end;
    if not CheckStringsOK(filename + ' - Transponders',s,psl,6,'SNNNNN')
    then begin;
      inc(ServErr);
      ReadLn(tf,s);
      ReadLn(tf,s);
      continue;
    end;
    cdsTSID.FieldByName('tsidSTC').AsString := LowerCase(psl.Strings[0]);
    cdsTSID.FieldByName('tsidFreq').AsString := psl.Strings[1];
    cdsTSID.FieldByName('tsidSymb').AsString := psl.Strings[2];
    cdsTSID.FieldByName('tsidPol').AsString :=  psl.Strings[3];
    cdsTSID.FieldByName('tsidFec').AsString :=  psl.Strings[4];
    cdsTSID.FieldByName('tsidPos').AsString := psl.Strings[5];

    { Satellite: parameters 6 and further TSIDExtra field }
    { Terrestrial/Cable: parameters 2 and further in tsidExtra field }
    cdsTSID.FieldByName('tsidExtra').AsString := '';
    if cdsTSID.FieldByName('tsidSTC').AsString = 's'
    then begin;
      for i := 6 to psl.Count - 2 do begin;
        cdsTSID.FieldByName('tsidExtra').AsString :=
                 cdsTSID.FieldByName('tsidExtra').AsString +
                 ':' + psl.Strings[i];
      end;
    end
    else begin;
      for i := 2 to psl.Count - 2 do begin;
        cdsTSID.FieldByName('tsidExtra').AsString :=
                 cdsTSID.FieldByName('tsidExtra').AsString +
                 ':' + psl.Strings[i];
      end;
    end;

    cdsTSID.Post;

    if (cdsTSID.FieldByName('tsidSTC').AsString = 's') and
       (not cdsPos.FindKey([StrToInt(psl.Strings[5])]))
    then begin;
      cdsPos.Append;
      cdsPos.FieldByName('PosInt').AsString := psl.Strings[5];
      cdsPos.FieldByName('PosStr').AsString := Format('%.1n',[StrToInt(psl.Strings[5])/10]);
      cdsPos.FieldByName('PosName').AsString := cdsPos.FieldByName('PosStr').AsString;
      if (SettingsVersion = 2) and
         (LowerCase(psl.Strings[0]) = 'c')
      then cdsPos.FieldByName('PosName').AsString := 'Cable';
      cdsPos.Post;
    end;

    ReadLn(tf,s);
    ReadLn(tf,s);
  end;

  { process services file - services entries }
  while s <> 'services' do
    ReadLn(tf,s);
  ReadLn(tf,s);

  DbeNr := 0;
  while s <> 'end'
  do begin;
    ParseString(s,psl);
    if not CheckStringsOK(filename + ' - Services',s,psl,6,'HHHHNN')
    then begin;
      inc(ServErr);
      ReadLn(tf,s);
      ReadLn(tf,s);
      ReadLn(tf,s);
      continue;
    end;

    if cdsTSID.FindKey([IntToStr(StrToInt('$'+psl.Strings[1])),
                        IntToStr(StrToInt('$'+psl.Strings[2])),
                        IntToStr(StrToInt('$'+psl.Strings[3]))])
    then begin;
      cds.Append;
      inc(DbeNr);
      cds.FieldByName('servDbeNr').AsInteger := DbeNr;
      cds.FieldByName('servSid').AsString := IntToStr(StrToInt('$'+psl.Strings[0]));
      cds.FieldByName('servUniq').AsString := IntToStr(StrToInt('$'+psl.Strings[1]));
      cds.FieldByName('servTsid').AsString := IntToStr(StrToInt('$'+psl.Strings[2]));
      cds.FieldByName('servNid').AsString := IntToStr(StrToInt('$'+psl.Strings[3]));
      cds.FieldByName('servType').AsString := psl.Strings[4];
      cds.FieldByName('servTypeTxt').AsString := TrnsServType(cds.FieldByName('servType').AsInteger);
      cds.FieldByName('servNr').AsString := psl.Strings[5];
      if (not Compare) and
         (psl.Strings[5] <> '')
      then MaxNr := Max(StrToInt(psl.Strings[5]),MaxNr);

      ReadLn(tf,s);
      cds.FieldByName('servName').AsString := TrimRight(copy(s,1,50));
      cds.FieldByName('servCleanName').AsString := Cleantext(TrimRight(copy(s,1,50)));

      ReadLn(tf,s);
      if pos('p:',s) = 0      // No p: parameter, so whole string is package name
      then begin;
        l := length(s);
        if l > 50             // Copy max 50 characters
        then l := 50;
        cds.FieldByName('servPackage').AsString := LeftStr(s,l);
      end
      else begin;
        prm := ExtractParm(s,'c:00',4);
        if prm <> ''
        then cds.FieldByName('servVPID').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:01',4);
        if prm <> ''
        then cds.FieldByName('servAPID').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:02',4);
        if prm <> ''
        then cds.FieldByName('servTPID').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:03',4);
        if prm <> ''
        then cds.FieldByName('servPPID').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:04',4);
        if prm <> ''
        then cds.FieldByName('serv3PID').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:07',4);
        if prm <> ''
        then cds.FieldByName('servC07BSDelay').AsString := IntToStr(StrToInt('$'+prm));

        prm := ExtractParm(s,'c:08',4);
        if prm <> ''
        then cds.FieldByName('servC08PCMDelay').AsString := IntToStr(StrToInt('$'+prm));

        { Flags field shoulb be either 2 or 4 bytes }
        prm := ExtractParm(s,'f:',2); { 2 bytes flags field }
        if prm <> ''
        then cds.FieldByName('servFlags').AsString := IntToStr(StrToInt('$'+prm))
        else begin;
          prm := ExtractParm(s,'f:',4); { or 4 bytes flags field }
          if prm <> ''
          then cds.FieldByName('servFlags').AsString := IntToStr(StrToInt('$'+prm));
        end;

        prm := '';
        ib := pos('p:',lowercase(s));                   // Find next parm or end of string
        ie := min(posex(',c:',lowercase(s)+',c:',ib+1),posex(',f:',lowercase(s)+',f:',ib+1));
        prm := copy(s,ib+2,ie-ib-2);
        s := StringReplace(s,'p:'+prm,'',[]);
        cds.FieldByName('servPackage').AsString := prm;
        if s <> ''
        then begin;
          while LeftStr(s,1) = ',' do
            s := RightStr(s,length(s)-1);
          cds.FieldByName('servExtra').AsString := s;      // Remaining parms in servExtra field
        end;
      end;

      cds.FieldByName('servSTC').AsString := cdsTSID.FieldByName('tsidSTC').AsString;
      cds.FieldByName('servFreq').AsString := cdsTSID.FieldByName('tsidFreq').AsString;
      cds.FieldByName('servSymb').AsString := cdsTSID.FieldByName('tsidSymb').AsString;
      cds.FieldByName('servPol').AsString := cdsTSID.FieldByName('tsidPol').AsString;
      cds.FieldByName('servFEC').AsString := cdsTSID.FieldByName('tsidFEC').AsString;
      cds.FieldByName('servTrExtra').AsString := cdsTSID.FieldByName('tsidExtra').AsString;

      if cdsTSID.FieldByName('tsidSTC').AsString = 's'
      then cds.FieldByName('servPos').AsString := cdsTSID.FieldByName('tsidPos').AsString
      else begin;
        if cdsTSID.FieldByName('tsidSTC').AsString = 't'
        then begin;
          cds.FieldByName('servPos').AsString := '8888';
          if not cdsPos.Locate('PosInt',VarArrayOf([8888]),[])
          then begin;
            cdsPos.Append;
            cdsPos.FieldByName('PosInt').AsInteger := 8888;
            cdsPos.FieldByName('PosStr').AsString := 'Ter';
            cdsPos.FieldByName('PosName').AsString := 'Terrestrial';
            cdsPos.Post;
          end;
        end
        else begin;
          cds.FieldByName('servPos').AsString := '9999';
          if not cdsPos.Locate('PosInt',VarArrayOf([9999]),[])
          then begin;
            cdsPos.Append;
            cdsPos.FieldByName('PosInt').AsInteger := 9999;
            cdsPos.FieldByName('PosStr').AsString := 'Cab';
            cdsPos.FieldByName('PosName').AsString := 'Cable';
            cdsPos.Post;
          end;
        end;
        cds.FieldByName('servPos').AsString := cdsPos.FieldByName('PosInt').AsString;
      end;
      cds.Post;
    end
    else begin;
      log('w',lwLngTrns(name,['Service without corresponding transponder definition not loaded']));
      log('w','-- line 1 of 3: ' + s);
      ReadLn(tf,s);
      log('w','-- line 2 of 3: ' + s);
      ReadLn(tf,s);
      log('w','-- line 3 of 3: ' + s);
      Inc(ServErr);
    end;
    ReadLn(tf,s);
  end;
  CloseFile(tf);

  HighDbeNr := DbeNr;

  psl.Free;
  Result := ServErr;
end;

procedure TfrmMain.ParseString(const ss: string; var psl: TStringList);
var
  l,p: Integer;
  t,s,ch: String;
begin
  psl.Clear;
  s := trim(ss);
  while RightStr(s,1) = ':' do
    s := copy(s,1,length(s)-1);
  p := 1;
  l := length(s);
  while p <= l do begin;
    ch := copy(s,p,1);
    if (ch = ' ') or
       (ch = ':') or
       (p = l)
    then begin;
      if p < l
      then t := copy(s,1,p-1)
      else t := s;
      psl.Add(t);
      s := trim(copy(s,p+1,l-p));
      p := 1;
      l := length(s);
      if (psl.Count = 10) and
         (LeftStr(s,1) = '/')
      then begin;
        psl.Add(s);
        break;
      end;
    end
    else inc(p);
  end;
  psl.Add('');
end;

function TfrmMain.CheckStringsOK(const Descr, Line: string;
  var psl: TStringList; const MinArgs: Integer;
  const Format: string): Boolean;
var
  i: Integer;
begin
  { Checks on number of arguments and on type S, N or H }
  Result := False;
  if psl.Count < MinArgs
  then begin;
    log('e',lwLngTrns(name,['Invalid line in settings found and skipped: ' +
                            'not enough parameters:']));
    log('e',Descr);
    log('e',Line);
    exit;
  end;
  for i := 0 to length(Format)-1 do begin;
    if Format[i+1] = 'S'
    then begin;
      if trim(psl[i]) = ''
      then begin;
        log('e',lwLngTrns(name,['Invalid line in settings found and skipped: ' +
                                'missing parameter %',
                                IntToStr(i+1)]));
        log('e',Descr);
        log('e',Line);
        exit;
      end;
    end
    else
    if Format[i+1] = 'H'
    then begin;
      if (trim(psl[i]) = '') or
         (not StrIsHexadecimal(psl[i]))
      then begin;
        log('e',lwLngTrns(name,['Invalid line in settings found and skipped: ' +
                                'missing or invalid not-hexadecimal parameter %',
                                IntToStr(i+1)]));
        log('e',Descr);
        log('e',Line);
        exit;
      end;
    end
    else
    if Format[i+1] = 'N'
    then begin;
      if (trim(psl[i]) = '') or
         (not StrIsNumeric(psl[i],False))
      then begin;
        log('e',lwLngTrns(name,['Invalid line in settings found and skipped: ' +
                                'missing or invalid not-numeric parameter %',
                                IntToStr(i+1)]));
        log('e',Descr);
        log('e',Line);
        exit;
      end;
    end;
  end;

  Result := True;
end;

function TfrmMain.StrIsNumeric(const S: string;
  const DecPointAllowed: Boolean): Boolean;
var
  p: PChar;
begin
  p := PChar(S);
  Result := False;
  while p^ <> #0 do
  begin
    if ((DecPointAllowed) and
        (not (p^ in ['0'..'9','-','.',',']))) or
       ((not DecPointAllowed) and
        (not (p^ in ['0'..'9','-'])))
    then Exit;
    Inc(p);
  end;
  Result := True;
end;

function TfrmMain.StrIsHexadecimal(const S: string): Boolean;
var
  p: PChar;
begin
  p := PChar(S);
  Result := False;
  while p^ <> #0 do
  begin
    if not (p^ in ['0'..'9','a'..'f','A'..'F','-'])
    then Exit;
    Inc(p);
  end;
  Result := True;
end;

function TfrmMain.CleanText(const sc: string): string;
var
  c,s: String;
  p: Integer;
begin
  s := sc;
  SetLength(c,2);
  c[1] := char($c2);
  c[2] := char($86);
  c[3] := char(0);
  p := pos(c,s);
  while p > 0 do begin;
    s := LeftStr(s,p-1) + Copy(s,p+2,length(s)-2);
    p := pos(c,s);
  end;
  c[2] := char($87);
  p := pos(c,s);
  while p > 0 do begin;
    s := LeftStr(s,p-1) + Copy(s,p+2,length(s)-2);
    p := pos(c,s);
  end;
  result := UTF8ToAnsi(s);
end;

procedure TfrmMain.cbTVRadioChange(Sender: TObject);
var
  f,ft,fs,fp: String;
  reg: TRegistry;
  it: Integer;
begin
  if lvServ.Selected <> nil
  then begin;
    it := StrToInt(lvServ.Selected.SubItems[20]);
    lvServ.Selected.Selected := False;
  end
  else it := -1;

  if cbTVRadio.ItemIndex = 0
  then ft := ''
  else
    if cbTVRadio.ItemIndex = 1
    then ft := 'servTypeTxt = ''TV'''
    else
      if cbTVRadio.ItemIndex = 2
      then ft := 'servTypeTxt = ''Radio'''
      else
        if cbTVRadio.ItemIndex = 3
        then ft := '(servTypeTxt = ''TV'' or servTypeTxt = ''Radio'')'
        else
          ft := '(servTypeTxt <> ''TV'' and servTypeTxt <> ''Radio'')';

  if cbSatName.ItemIndex <= 0
  then fs := ''
  else begin;
    cdsPos.First;
    while not cdsPos.Eof do begin;
      if cdsPos.FieldValues['posName'] = cbSatname.Items[cbSatName.ItemIndex]
      then break;
      cdsPos.Next;
    end;
    if not cdsPos.EOF
    then fs := 'servPos = ''' + cdsPos.FieldByName('posInt').AsString + ''''
    else fs := 'servPos = ''' +  cbSatName.Items[cbSatName.ItemIndex] + '''';
  end;

  if trim(ePackage.Text) = ''
  then ePackage.Text := trim(ePackage.Text);
  if ePackage.Text = ''
  then fp := ''
  else fp := 'servPackage = ''' +  ePackage.Text + '*''';

  f := '';
  if ft <> ''
  then f := ft;
  if fs <> ''
  then
    if f <> ''
    then f := f + ' and ' + fs
    else f := fs;
  if fp <> ''
  then
    if f <> ''
    then f := f + ' and ' + fp
    else f := fp;

  if f <> ''
  then begin;
    cdsServ.Filter := f;
    cdsServ.Filtered := True;
  end
  else cdsServ.Filtered := False;

  lvServ.Items.Count := cdsServ.RecordCount;
  if it <> -1
  then begin;
    if cdsServ.Locate('servDbeNr',VarArrayOf([it]),[])
    then begin;
      it := cdsServ.RecNo - 1;
      lvServ.Items[it].MakeVisible(False);
      lvServ.Items[it].Selected := True;
      lvServ.ItemFocused := lvServ.Items[it];
    end;
  end;
  lvServ.Refresh;
  {lvServ.SetFocus;}
  TotalsBuild();

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteInteger('TV and Radio Services Selection',cbTVRadio.ItemIndex);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TfrmMain.SetMenu(const option: string);
begin
  if option = 'off'
  then begin;
    acFileSave.Enabled := False;
    acSaveAs.Enabled := False;
    acExportAllServicesExcel.Enabled := False;
    acExportAllBouquetsExcel.Enabled := False;
    acExportAllServicesSatcoDX.Enabled := False;
    

    //fmSave.Enabled := False;
    //fmSaveAs.Enabled := False;
    //fmExportServicesExcel.Enabled := False;
    //fmExportBouquetsExcel.Enabled := False;
    //fmExportServicesSatcoDX.Enabled := False;
    //fmUpdSatXML.Enabled := False;
    //fmClearSatXML.Enabled := False;
    //fmEditSatXML.Enabled := False;
    //fmCompareDB.Enabled := False;
    //fmCompareDisk.Enabled := False;
    //fmClearLocks.Enabled := False;
    //fmSwitchVersion2and3.Enabled := False;
    //tbFiles.Enabled := False;
    //fmFiles.Enabled := False;
    //fmImportUserBouquets.Enabled := False;
    //fmSearch.Enabled := False;
    //fmSearchRepeat.Enabled := False;
    //tbFFTPUp.Enabled := False;
    //fmFFTPUp.Enabled := False;
  end
  else
  if option = 'loaded'
  then begin;
    acFileSave.Enabled := False;
    acSaveAs.Enabled := True;
    acExportAllServicesExcel.Enabled := True;
    acExportAllBouquetsExcel.Enabled := True;
    acExportAllServicesSatcoDX.Enabled := True;

    //fmSave.Enabled := False;
    //fmSaveAs.Enabled := True;
    //fmExportServicesExcel.Enabled := True;
    //fmExportBouquetsExcel.Enabled := True;
    //fmExportServicesSatcoDX.Enabled := True;
    //fmUpdSatXML.Enabled := True;
    //fmClearSatXML.Enabled := True;
    //fmEditSatXML.Enabled := True;
    //fmCompareDB.Enabled := True;
    //fmCompareDisk.Enabled := True;
    //fmClearLocks.Enabled := True;
    //fmSwitchVersion2and3.Enabled := True;
    //tbFiles.Enabled := True;
    //fmFiles.Enabled := True;
    //fmImportUserBouquets.Enabled := True;
    //fmSearch.Enabled := True;
    //fmSearchRepeat.Enabled := True;
    //tbFFTPUp.Enabled := True;
    //fmFFTPUp.Enabled := True;
  end
  else
  if option = 'changed'
  then begin;
    acFileSave.Enabled := True;
  end
  else MessageDlg('Internal error: invalid option passed for menu settings',
                  mtError,[mbOK],0);
end;

procedure TfrmMain.lvDetSave;
var
  i: Integer;
  wcds: TClientDataset;
  pf: String;
  ld: TListData;
  pListData: ^TlistData;
begin
  if DetType = 'T'
  then begin;
    wcds := cdsFTV;
    pf := 'ftv';
    wcds.Filter := 'ftvSetNr = ''' + IntToStr(DetSetNr) + '''';
    wcds.Filtered := True;
  end
  else
    if DetType = 'R'
    then begin;
      wcds := cdsFRD;
      pf := 'frd';
      wcds.Filter := 'frdSetNr = ''' + IntToStr(DetSetNr) + '''';
      wcds.Filtered := True;
    end
    else begin;
      wcds := cdsFBQ;
      pf := 'fbq';
      wcds.Filter := 'fbqSetNr = ''' + IntToStr(DetSetNr) + '''';
      wcds.Filtered := True;
    end;

  wcds.First;
  while not wcds.Eof
  do begin;
    wcds.Delete;
    wcds.First;
  end;
  wcds.Close;
  wcds.Open;
  wcds.Filtered := False;
  wcds.Filter := '';

  if (DetType = 'P') and
     (DetSetNr >= 0) and
     (DetChanged)
  then begin;
    ld := NewBouquet('P');
    for i := 0 to tnBQ.Count do begin;
      pListData := tnBQ.Item[i].Data;
      if pListData.Number = DetSetNr
      then begin;
        pListData.Number := ld.Number;
        break;
      end;
    end;
    DetSetNr := ld.Number;
  end;

  for i := 0 to lvDet.Items.Count - 1 do begin;
    wcds.Append;
    wcds.FieldByName(pf+'SeqNr').AsInteger := i;
    if lvDet.Items[i].SubItems[11] <> 'r'
    then wcds.FieldByName(pf+'Name').AsString := lvDet.Items[i].Caption
    else wcds.FieldByName(pf+'Name').AsString := lvDet.Items[i].SubItems[8];
    wcds.FieldByName(pf+'SID').AsString := lvDet.Items[i].SubItems[2];
    wcds.FieldByName(pf+'Uniq').AsString := lvDet.Items[i].SubItems[6];
    wcds.FieldByName(pf+'TSID').AsString := lvDet.Items[i].SubItems[3];
    wcds.FieldByName(pf+'NID').AsString := lvDet.Items[i].SubItems[4];
    wcds.FieldByName(pf+'ServType').AsString := lvDet.Items[i].SubItems[5];
    wcds.FieldByName(pf+'SetNr').AsInteger := DetSetNr;
    if lvDet.Items[i].SubItems[11] <> 'r'
    then wcds.FieldByName(pf+'Descr').AsString := lvDet.Items[i].SubItems[8]
    else wcds.FieldByName(pf+'Descr').AsString := lvDet.Items[i].Caption;
    wcds.FieldByName(pf+'DbeNr').AsString := lvDet.Items[i].SubItems[10];
    wcds.FieldByName(pf+'T').AsString := lvDet.Items[i].SubItems[11];
    wcds.Post;
  end;
  DetChanged := False;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  SR: TSearchRec;
  i, rc, FileAttr: Integer;
  Reg: TRegistry;
  Adir: string;
  AnActionClientItem: TActionClientItem;
begin
  ClipBFormat := RegisterClipboardFormat('DreamBoxEdit_Cut_and_Paste_Services');

  ThousandSeparator := '.';
  DecimalSeparator := ',';
  DefaultTextLineBreakStyle := tlbsCRLF;

  Application.HintHidePause := 5000;

  cbf := RegisterClipboardFormat('DBE_Service');

  FFormatWordsList := TStringList.Create;
  FTVTypes := TStringList.Create;
  FTVTypes.CaseSensitive := False;
  FTVTypes.Sorted := True;
  FRDTypes := TStringList.Create;
  FRDTypes.CaseSensitive := False;
  FRDTypes.Sorted := True;

  Loading := True;
  ServEdit:= False;

  cdsTSID.IndexFieldNames := 'tsidUniq;tsidTsid;tsidNid';
  cdsTSID.CreateDataset;
  cdsTSID.LogChanges := False;

  cdsSERV.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  cdsSERV.CreateDataset;
  cdsSERV.LogChanges := False;
  HighDbeNr := 0;
  cdsLock.IndexFieldNames := 'lockSID;lockUniq;lockTSID;lockNID;lockServType';
  cdsLock.CreateDataset;
  cdsLock.LogChanges := False;
  cdsServComp.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  cdsServComp.CreateDataset;
  cdsServComp.LogChanges := False;
  cdsAlt.IndexFieldNames := 'altBQName;altSID;altUniq;altTSID;altNID;altServType';
  cdsAlt.CreateDataset;
  cdsAlt.LogChanges := False;

  cdsLog.IndexFieldNames := 'Time';
  cdsLog.CreateDataset;
  cdsLog.LogChanges := False;

  cdsFTV.IndexFieldNames := 'ftvSetNr;ftvSID;ftvUniq;ftvTSID;ftvNID;ftvServType';
  cdsFTV.CreateDataset;
  cdsFTV.LogChanges := False;
  cdsFRD.IndexFieldNames := 'frdSetNr;frdSID;frdUniq;frdTSID;frdNID;frdServType';
  cdsFRD.CreateDataset;
  cdsFRD.LogChanges := False;
  cdsFBQ.IndexFieldNames := 'fbqSetNr;fbqSID;fbqUniq;fbqTSID;fbqNID;fbqServType';
  cdsFBQ.CreateDataset;
  cdsFBQ.LogChanges := False;
  wcdsFBQ.IndexFieldNames := 'fbqSID;fbqUniq;fbqTSID;fbqNID;fbqServType;fbqSetNr';
  wcdsFBQ.CreateDataset;
  wcdsFBQ.LogChanges := False;

  cdsPos.IndexFieldNames := 'PosInt';
  cdsPos.CreateDataset;
  cdsPos.LogChanges := False;

  cdsSatXML.IndexFieldNames := 'Pos;Freq;Pol;Symb;FEC';
  cdsSatXML.CreateDataset;
  cdsSatXML.LogChanges := False;

  FSatXMLHdr := TStringList.Create;

  { Set language }
  FMsgTable := TStringList.Create;
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if Reg.ValueExists('Language')
  then Language := Reg.ReadString('Language')
  else begin;
    Language := 'English';
    Reg.WriteString('Language',Language);
  end;
  Reg.CloseKey;
  Reg.Destroy;

  OriginalEnglish := False;
  if not MultiLang.SetLanguage(Self,Language,False)
  then begin;
    log('w','Error initializing language to ' + Language + ', defaulted to original English version');
    MessageDlg('Error initializing language to ' + Language + ', defaulted to original English version',
               mtWarning,[mbOK],0);
    OriginalEnglish := True;
    Language := 'English';
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('Language',Language);
    Reg.CloseKey;
    Reg.Destroy;
  end
  else begin;
    if FileExists(ExtractFilePath(application.exename) + Language + '.lng')
    then FMsgTable.LoadFromFile(ExtractFilePath(application.exename) + Language + '.lng');
    if Language = 'English'
    then OriginalEnglish := True;
  end;
  FormatToolbar();

  // Clear language menu...
  //   amMain.ActionBars[2] = MainMenuBar...
  //   amMain.ActionBars[2].Items[3] = Menu item Language...
  //   amMain.ActionBars[2].Items[3].Items = All the language items...
  for I := amMain.ActionBars[2].Items[3].Items.Count - 1 downto 0 do
    TActionClients(amMain.ActionBars[2].Items[3].Items).Delete(I);

  // Add the new languages...
  FileAttr := faAnyFile;

  rc := FindFirst(ExtractFilePath(application.exename) + '*.lng',FileAttr,SR);

  while rc = 0 do
  begin
    if (SR.Name <> '.') and (SR.Name <> '..') then
    begin
      if (SR.Attr and faDirectory) <> faDirectory then
      begin
        AnActionClientItem := amMain.ActionBars[2].Items[3].Items.Add;

        AnActionClientItem.Caption  := LeftStr(SR.Name, Length(SR.Name)-4);
        //TCustomAction(AnActionClientItem.Action).Checked := (Caption = Language);
        AnActionClientItem.Action := TAction.Create(Self);
        AnActionClientItem.Action.OnExecute := acGlobalLanguageChange;

        {with TActionClientItem(amMain.ActionBars[2].Items[3].Items.Add) do
        begin
           Caption  := LeftStr(SR.Name, Length(SR.Name)-4);
           Down := (Caption = Language);


           //TAction(Action).Checked := (Caption = Language);

           TAction(Action).OnExecute := acGlobalLanguageChange;

        end;}

      end;

    end;

    rc := FindNext(SR);

  end;

  FindClose(sr);




  { Set default satellite / cable mode }
  SatCable := 's';

  SetMenu('off');
  //   if System.DebugHook = 0 then _fmUpdateLanguage.Visible := False;

  _lServT.Caption := '0';
  _lServD.Caption := '0';
  _lBouqT.Caption := '0';
  _lDetT.Caption := '0';

  DetType := '';
  Detname := '. . .';
  _lDetName.Caption := '. . .';
  AutoOpen := False;
  LastWidth := 0;


    Adir := ExtractFilePath(ParamStr(0));
   // if not DirectoryExists(Adir+ '\picon') then
   // ForceDirectories(Adir+ '\picon');

end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: Tregistry;
  Key: String;
  r,i: Integer;
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
  Key := 'lwPanelRR.Width';
  Reg.WriteInteger(key,lwPanelRR.Width);
  Key := 'lwPanelRL.Width';
  Reg.WriteInteger(key,lwPanelRL.Width);
  Key := 'lwPanelL.Width';
  Reg.WriteInteger(key,lwPanelL.Width);

  for i := 0 to lvServ.Columns.Count - 1 do begin;
    Key := 'lvServ.' + IntToStr(i) + '.Width';
    Reg.WriteInteger(Key,lvServ.Columns.Items[i].Width);
  end;
  for i := 0 to lvDet.Columns.Count - 1 do begin;
    Key := 'lvDet.' + IntToStr(i) + '.Width';
    Reg.WriteInteger(Key,lvDet.Columns.Items[i].Width);
  end;

  if SaveTVRadio
  then Reg.WriteInteger('TV and Radio Services Selection',cbTVRadio.ItemIndex);

  Reg.CloseKey;
  Reg.Destroy;

  if acFileSave.Enabled then
  begin
    r := MessageDlg(lwLngTrns(name,[
                    'You made changes that are not yet saved!~~'+
                    'Do you want to save them before quiting?~' +
                    '(Choosing "No" means any changes you made, will be lost)']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes then acFileSave.Execute
    else
      if r = mrCancel then
      begin
        Action := caNone;
        Exit;
      end;
  end;

  FMsgTable.Free;
  FSatXMLHdr.Free;
  FFormatWordsList.Free;
  FTVTypes.Free;
  FRDTypes.Free;
end;

function TfrmMain.TrnsServType(const ServType: Integer): string;
var
  I: Integer;
begin
  if FTVTypes.Find(IntToStr(ServType), I) then
    Result := 'TV'
  else
    if FRDTypes.Find(IntToStr(ServType), I) then
      Result := 'Radio'
    else
      Result := 'Data';
end;

procedure TfrmMain.TotalsBuild;
var
  servflt: Boolean;
begin
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  _lServT.Caption := IntToStr(cdsServ.RecordCount);
  cdsServ.Filtered := servflt;
  _lServD.Caption := IntToStr(lvServ.Items.Count);
  if (tnTV = nil) or
     (tnRD = nil) or
     (tnBQ = nil)
  then _lBouqT.Caption := '0'
  else _lBouqT.Caption := IntToStr(tnTV.Count +
                                   tnRD.Count +
                                   tnBQ.Count);
  _lDetT.Caption := IntToStr(lvDet.Items.Count);
  lvServ.Items.Count := cdsServ.RecordCount;
end;

function TfrmMain.NewBouquet(const btype: string): TListData;
var
  s,bt,ets: String;
  i,nr,nnr: Integer;
  fnd: Boolean;
  pLIstData: ^TListData;
  bsl: TStringList;
begin
  result.Locked := False;
  bt := UpperCase(btype[1]);
  if (bt = 'T') or
     (bt = 'R')
  then begin;
    if bt = 'T'
    then ets := 'tv'
    else ets := 'radio';
    for nr := 900608 to 1048575 do begin; { is hex DBE00 to FFFFF }
      s := 'userbouquet.' + LowerCase(IntToHex(nr,5)) + '.' + ets;
      fnd := False;
      for i := 0 to tv.Items.Count - 1 do begin;
        if (tv.Items.Item[i].Level = 1) and
           (tv.Items.Item[i].Parent.Text[1] = bt)
        then begin;
          pListData := tv.Items.Item[i].Data;
          if pListData.FileName = s
          then begin;
            fnd := True;
            break;
          end;
        end;
      end;
      if not fnd
      then break;
    end;
    if nr > 1048575
    then begin;
      MessageDlg(lwLngTrns(name,['Maximum number of 147.967 % user bouquets reached.',ets]),
                 mtError,[mbOK],0);
      exit;
    end;
    Result.FileName := s;

    nnr := -1;
    for nr := 0 to 1000 do begin;
      inc(nnr);
      fnd := False;
      for i := 0 to tv.Items.Count - 1 do begin;
        if (tv.Items.Item[i].Level = 1) and
           (tv.Items.Item[i].Parent.Text[1] = bt)
        then begin;
          pListData := tv.Items.Item[i].Data;
          if pListData.Number = nnr
          then begin;
            fnd := True;
            break;
          end;
        end;
      end;
      if not fnd
      then break;
    end;
    Result.Number := nnr;
  end;

  if bt = 'P'
  then begin;
    bsl := TStringList.Create;
    bsl.Clear;
    bsl.Sorted := True;
    for i := 0 to tv.Items.Count - 1 do begin;
      if (tv.Items.Item[i].Level = 1) and
         (tv.Items.Item[i].Parent.Text[1] = 'P')
      then begin;
        pListData := tv.Items.Item[i].Data;
        bsl.Add(IntToStr(pListData.Number));
      end;
    end;
    for i := -1 downto -999 do begin;
      if bsl.IndexOf(IntToStr(i)) = -1
      then break;
    end;
    bsl.Free;

    if i < -999
    then begin;
      MessageDlg(lwLngTrns(name,['No new bouquet possible. Maximum number of 1000 bouquets is reached.']),
                 mtError,[mbOK],0);
      ModalResult := mrCancel;
      exit;
    end;
    Result.FileName := '';
    Result.Number := i;
  end;
end;

procedure TfrmMain.FormatToolbar;
{var
  i,n,minl,totl: Integer;}
begin
  {for i := 0 to ToolBar1.ButtonCount - 1 do begin;
    ToolBar1.Buttons[i].Caption := Trim(ToolBar1.Buttons[i].Caption);
    while ToolBar1.Canvas.TextWidth(ToolBar1.Buttons[i].Caption) > 52 do begin
      ToolBar1.Buttons[i].Caption := LeftStr(ToolBar1.Buttons[i].Caption,
                                             Length(ToolBar1.Buttons[i].Caption)-1);
    end;
  end;

  n := 0;
  minl := 0;
  totl := 0;
  while (minl <= 35) and (totl <= ToolBar1.Width - 10) do begin;
    totl := 0;
    minl := 100;
    for i := 0 to ToolBar1.ButtonCount - 1 do begin;
      if (ToolBar1.Buttons[i].Caption <> '') and
         (ToolBar1.Buttons[i].Caption <> 'FTP')
      then minl := min(minl,ToolBar1.Canvas.TextWidth(ToolBar1.Buttons[i].Caption));
      if minl = ToolBar1.Canvas.TextWidth(ToolBar1.Buttons[i].Caption)
      then n := i;
      totl := totl + ToolBar1.Buttons[i].Width;
    end;
    if (minl <= 35) and (totl <= ToolBar1.Width - 10)
    then ToolBar1.Buttons[n].Caption := ' ' + ToolBar1.Buttons[n].Caption + ' ';
  end;}
end;

procedure TfrmMain.acGlobalLanguageChange(Sender: TObject);
var
  I: Integer;
  ActionClients: TActionClients;
begin
  if (Sender is TAction) then
  begin
    Language := TAction(Sender).Caption;
    TAction(Sender).Checked := True;

    ActionClients := amMain.ActionBars[2].Items[3].Items;

    for I := 0 to ActionClients.Count - 1 do
      TAction(ActionClients[I].Action).Checked := False;

  end;
end;

end.
