unit DreamBoxMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, ComCtrls, Math, Menus,
  ExtCtrls, ToolWin, ImgList, LWPanel, Registry, LWBtn, FileCtrl, ShellApi,
  StrUtils, jpeg, DBCtrls, dbcgrids, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Sockets, CommCtrl, LWLanguage, IdFTP, DateUtils,
  MidasLib, IdHTTP, pngimage, UrlMon;

type
  TListData = record
    FileName: string;
    Number: Integer;
    Locked: Boolean;
  end;

type
  TFormMain = class(TForm)
    cdsTSID: TClientDataSet;
    cdsSERV: TClientDataSet;
    sb: TStatusBar;
    MainMenu1: TMainMenu;
    fmFile: TMenuItem;
    fmInfo: TMenuItem;
    fmOpen: TMenuItem;
    fmSave: TMenuItem;
    N1: TMenuItem;
    fmExit: TMenuItem;
    ToolBar1: TToolBar;
    tbOpen: TToolButton;
    ImageList1: TImageList;
    tbSave: TToolButton;
    tbAbout: TToolButton;
    tbExit: TToolButton;
    _ToolButton5: TToolButton;
    puServices: TPopupMenu;
    ShowDetails1: TMenuItem;
    DeletefromallBouquets1: TMenuItem;
    tbFiles: TToolButton;
    fmAbout: TMenuItem;
    fmFiles: TMenuItem;
    DeleteService1: TMenuItem;
    N4: TMenuItem;
    Addthissatellitetobouquet1: TMenuItem;
    cdsLog: TClientDataSet;
    tbLog: TToolButton;
    fmLog: TMenuItem;
    MakeaBouquetperSatellite1: TMenuItem;
    tbHelp: TToolButton;
    fmHelp1: TMenuItem;
    fmHelp: TMenuItem;
    tbOptions: TToolButton;
    cdsPos: TClientDataSet;
    tbFTP: TToolButton;
    _ToolButton3: TToolButton;
    N7: TMenuItem;
    N8: TMenuItem;
    CopyEditthisservice1: TMenuItem;
    puDet: TPopupMenu;
    Deletefromfavourites1: TMenuItem;
    iLogo: TImage;
    _ToolButton2: TToolButton;
    fmFTP: TMenuItem;
    _ToolButton6: TToolButton;
    _ToolButton4: TToolButton;
    N10: TMenuItem;
    Sortlistalfabeticaly1: TMenuItem;
    ZAPtoservice1: TMenuItem;
    N11: TMenuItem;
    Zaptoservice2: TMenuItem;
    _ToolButton7: TToolButton;
    AddaNewService1: TMenuItem;
    Options2: TMenuItem;
    fmImportSatcoDX1: TMenuItem;
    fmSaveAs: TMenuItem;
    fmUpdSatXML: TMenuItem;
    cdsSatXML: TClientDataSet;
    cdsFTV: TClientDataSet;
    cdsFRD: TClientDataSet;
    cdsFBQ: TClientDataSet;
    TimerDetScroll: TTimer;
    LWPanelB: TLWPanel;
    LWPanelR: TLWPanel;
    Splitter1: TSplitter;
    LWPanelRR: TLWPanel;
    Splitter2: TSplitter;
    LWPanelRL: TLWPanel;
    lvDet: TListView;
    LWPanel4: TLWPanel;
    Label8: TLabel;
    _lDetT: TLabel;
    LWPanel3: TLWPanel;
    Label4: TLabel;
    _lBouqT: TLabel;
    LWPanelL: TLWPanel;
    lvServ: TListView;
    LWPanel2: TLWPanel;
    Label1: TLabel;
    _lServT: TLabel;
    Label3: TLabel;
    _lServD: TLabel;
    fmTools: TMenuItem;
    _ToolButton8: TToolButton;
    N12: TMenuItem;
    fmImportUserBouquets: TMenuItem;
    N14: TMenuItem;
    DetCut: TMenuItem;
    DetCopy: TMenuItem;
    DetPaste: TMenuItem;
    N15: TMenuItem;
    ServCut: TMenuItem;
    ServCopy: TMenuItem;
    ServPaste: TMenuItem;
    tv: TTreeView;
    puTV: TPopupMenu;
    tvInsert: TMenuItem;
    tvDelete: TMenuItem;
    N16: TMenuItem;
    tvCollapseAll: TMenuItem;
    tvExpandAll: TMenuItem;
    tvShowServices: TMenuItem;
    N17: TMenuItem;
    N2: TMenuItem;
    tvPrefix: TMenuItem;
    tvSort: TMenuItem;
    N3: TMenuItem;
    wcdsFBQ: TClientDataSet;
    TimertvScroll: TTimer;
    N6: TMenuItem;
    tvCleanUp0: TMenuItem;
    tvCleanUp1: TMenuItem;
    pDetName: TLWPanel;
    _lDetName: TLabel;
    cbTVRadio: TComboBox;
    cbSatName: TComboBox;
    RenameBouquet1: TMenuItem;
    fmExportServicesExcel: TMenuItem;
    expd: TSaveDialog;
    N18: TMenuItem;
    LocateInServices1: TMenuItem;
    N19: TMenuItem;
    SetPackagename1: TMenuItem;
    fmExportBouquetsExcel: TMenuItem;
    fmImport: TMenuItem;
    fmExport: TMenuItem;
    N20: TMenuItem;
    N9: TMenuItem;
    fmEditSatXML: TMenuItem;
    N13: TMenuItem;
    fmCompareDB: TMenuItem;
    tbFFTPDown: TToolButton;
    tbFFTPUp: TToolButton;
    fmFFTPDown: TMenuItem;
    fmFFTPUp: TMenuItem;
    fmCompareDisk: TMenuItem;
    N21: TMenuItem;
    od: TOpenDialog;
    MultiLang: TLWLanguage;
    fmLanguage: TMenuItem;
    _fmUpdateLanguage: TMenuItem;
    N22: TMenuItem;
    _ToolButton1: TToolButton;
    cdsLock: TClientDataSet;
    servLock: TMenuItem;
    DetLock: TMenuItem;
    N23: TMenuItem;
    fmClearLocks: TMenuItem;
    EditMarker1: TMenuItem;
    N24: TMenuItem;
    InsertMarker1: TMenuItem;
    N25: TMenuItem;
    Renameserviceinbouquet1: TMenuItem;
    N26: TMenuItem;
    fmCheckfornewversion: TMenuItem;
    TimerCheckVersion: TTimer;
    fmExportServicesSatcoDX: TMenuItem;
    EditTransponder: TMenuItem;
    fmImportExportedBouquets: TMenuItem;
    InsertMarkerPos: TMenuItem;
    puLogo: TPopupMenu;
    puLogoCheckfornewversion: TMenuItem;
    puLogoGotowebsite1: TMenuItem;
    InsertMarkerPackage: TMenuItem;
    AutoInsertMarker: TMenuItem;
    Deletesatellite1: TMenuItem;
    MakeBouquetperPackage1: TMenuItem;
    CreateBouquet1: TMenuItem;
    MakeBouquetforeachPackage1: TMenuItem;
    N5: TMenuItem;
    MarkservicesnotinBouquet1: TMenuItem;
    fmClearSatXML: TMenuItem;
    Renameserviceto1: TMenuItem;
    SetKeepFlag: TMenuItem;
    SetKeepFlagOn1: TMenuItem;
    SetKeepFlagOff1: TMenuItem;
    ChangetypetoTV1: TMenuItem;
    oggleParentalLock1: TMenuItem;
    N27: TMenuItem;
    ePackage: TEdit;
    HTTP1: TIdHTTP;
    Renumberallservices1: TMenuItem;
    ClearallNewflags1: TMenuItem;
    fmSwitchVersion2and3: TMenuItem;
    ReadVersionNotes: TMenuItem;
    Removeemptymarkers1: TMenuItem;
    fmImportExportedServices: TMenuItem;
    Search1: TMenuItem;
    fmSearch: TMenuItem;
    fmSearchRepeat: TMenuItem;
    cdsServComp: TClientDataSet;
    cdsServSave: TClientDataSet;
    cdsAlt: TClientDataSet;
    Image1: TImage;
    ImageList2: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure tbOpenClick(Sender: TObject);
    procedure tbExitClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbAboutClick(Sender: TObject);
    procedure puServicesPopup(Sender: TObject);
    procedure EditDetails1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbFilesClick(Sender: TObject);
    procedure DeletefromallBouquets1Click(Sender: TObject);
    procedure DeleteService1Click(Sender: TObject);
    procedure tbLogClick(Sender: TObject);
    procedure MakeBouquetforthissatellite1Click(Sender: TObject);
    procedure MakeaBouquetperSatellite1Click(Sender: TObject);
    procedure tbHelpClick(Sender: TObject);
    procedure tbOptionsClick(Sender: TObject);
    procedure CopyEditThisService1Click(Sender: TObject);
    procedure tbFTPClick(Sender: TObject);
    procedure lvDetDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lvDetDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvDetCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure DetDeleteEntryClick(Sender: TObject);
    procedure puDetPopup(Sender: TObject);
    procedure lvDetInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lvDetStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure DetSortClick(Sender: TObject);
    procedure AddANewService1Click(Sender: TObject);
    procedure tbImportClick(Sender: TObject);
    procedure lvDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fmSaveAsClick(Sender: TObject);
    procedure fmUpdSatXMLClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lvServCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvServColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvServEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure lvServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvServStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TimerDetScrollTimer(Sender: TObject);
    procedure LWPanelRLResize(Sender: TObject);
    procedure lvDetCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure cbFTVDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure fmImportUserBouquetsClick(Sender: TObject);
    procedure DetCutClick(Sender: TObject);
    procedure DetPasteClick(Sender: TObject);
    procedure lvDetKeyPress(Sender: TObject; var Key: Char);
    procedure ServCutClick(Sender: TObject);
    procedure ServPasteClick(Sender: TObject);
    procedure lvServKeyPress(Sender: TObject; var Key: Char);
    procedure ServZAPtoservice1Click(Sender: TObject);
    procedure lvServDblClick(Sender: TObject);
    procedure DetZaptoserviceClick(Sender: TObject);
    procedure lvDetDblClick(Sender: TObject);
    procedure tvCollapseAllClick(Sender: TObject);
    procedure tvExpandAllClick(Sender: TObject);
    procedure tvDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvEdited(Sender: TObject; Node: TTreeNode; var S: String);
    procedure tvDeleteClick(Sender: TObject);
    procedure tvInsertClick(Sender: TObject);
    procedure tvPrefixClick(Sender: TObject);
    procedure tvStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tvEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tvCompare(Sender: TObject; Node1, Node2: TTreeNode;
      Data: Integer; var Compare: Integer);
    procedure tvSortClick(Sender: TObject);
    procedure puTVPopup(Sender: TObject);
    procedure tvMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TimertvScrollTimer(Sender: TObject);
    procedure tvCleanUpBouquets(Sender: TObject);
    procedure tvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvChange(Sender: TObject; Node: TTreeNode);
    procedure cbServFilter(Sender: TObject);
    procedure tvRenameClick(Sender: TObject);
    procedure fmExportServicesExcelClick(Sender: TObject);
    procedure _lDetNameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DetLocateInServices1Click(Sender: TObject);
    procedure SetPackagename1Click(Sender: TObject);
    procedure fmExportBouquetsExcelClick(Sender: TObject);
    procedure fmEditSatXMLClick(Sender: TObject);
    procedure cdsSatXMLBeforePost(DataSet: TDataSet);
    procedure lvDetColumnClick(Sender: TObject; Column: TListColumn);
    procedure cdsSatXMLAfterPost(DataSet: TDataSet);
    procedure cdsSatXMLAfterDelete(DataSet: TDataSet);
    procedure fmCompareDBClick(Sender: TObject);
    procedure tbFFTPDownClick(Sender: TObject);
    procedure tbFFTPUpClick(Sender: TObject);
    procedure ToolBar1CustomDrawButton(Sender: TToolBar;
      Button: TToolButton; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure cbSatNameDropDown(Sender: TObject);
    procedure cbSatNameCloseUp(Sender: TObject);
    procedure fmCompareDiskClick(Sender: TObject);
    procedure _fmUpdateLanguageClick(Sender: TObject);
    procedure fmLanguageClick(Sender: TObject);
    procedure servLockClick(Sender: TObject);
    procedure lvServInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure DetLockClick(Sender: TObject);
    procedure fmClearLocksClick(Sender: TObject);
    procedure PopupDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure DetMarkerEdit(Sender: TObject);
    procedure DetMarkerInsert(Sender: TObject);
    procedure lvServData(Sender: TObject; Item: TListItem);
    procedure lvServDataFind(Sender: TObject; Find: TItemFind;
      const FindString: String; const FindPosition: TPoint;
      FindData: Pointer; StartIndex: Integer; Direction: TSearchDirection;
      Wrap: Boolean; var Index: Integer);
    procedure DetRenameService(Sender: TObject);
    procedure fmCheckfornewversionClick(Sender: TObject);
    procedure TimerCheckVersionOnTimer(Sender: TObject);
    procedure fmExportServicesSatcoDXClick(Sender: TObject);
    procedure EditTransponderClick(Sender: TObject);
    procedure fmImportExportedBouquetsClick(Sender: TObject);
    procedure DetInsertMarkerPosClick(Sender: TObject);
    procedure puLogoGotowebsite1Click(Sender: TObject);
    procedure DetInsertMarkerPackageClick(Sender: TObject);
    procedure iLogoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MakeBouquetforthisPackage1Click(Sender: TObject);
    procedure MakeBouquetperPackage1Click(Sender: TObject);
    procedure MarkservicesnotinBouquet1Click(Sender: TObject);
    procedure DetFormatService(Sender: TObject);
    procedure ToggleKeepFlag1Click(Sender: TObject);
    procedure SetKeepFlagOff1Click(Sender: TObject);
    procedure ChangetypetoTV1Click(Sender: TObject);
    procedure tvCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvToggleParentalLock1Click(Sender: TObject);
    procedure Renumberallservices1Click(Sender: TObject);
    procedure ClearNewFlagForSelected1Click(Sender: TObject);
    procedure fmSwitchVersion2and3Click(Sender: TObject);
    procedure puReadVersionNotesClick(Sender: TObject);
    procedure Removeemptymarkers1Click(Sender: TObject);
    procedure fmImportExportedServicesClick(Sender: TObject);
    procedure fmSearchClick(Sender: TObject);
    procedure fmSearchRepeatClick(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure sbMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    lvDetColumnToSort: Integer;
    lvDetSortDescending: Boolean;
    Autoload: Boolean;
    DragDropType: String;
    Loading: Boolean;
    SearchArg: String;
    DetType: String;
    DetSetNr: Integer;
    DetName: String;
    DetFileName: String;
    cbf: Integer;
    ClipBFormat: Integer;
    EditSatXML: Boolean;
    SatXMLHdr: TStringList;
    MsgTable: TStringList;
    OriginalEnglish: Boolean;
    LastPopupWidth: Integer;
    LastWidth: Integer;
    SatCable: String;
    V3OrderBy1: String;
    V3OrderBy2: String;
    procedure TotalsBuild();
    procedure lvDetSave();
    procedure lvDetBuild();
    procedure FormatToolbar();
    procedure GetPng();
    procedure Deletesatellite(Sender: TObject);
    procedure SearchServices(const option: String);
    function CopyToCB(): Boolean;
    function PasteFromCB(): Boolean;
    function DownloadFile(Source, Dest: string): Boolean;
    function CountPos(const subtext: string; Text: string): Integer;
  public
    { Public declarations }
    ServEdit: Boolean;
    HighDbeNr: Integer;
    DetChanged: Boolean;
    Dir: String;
    PiconActivate: Boolean;
    PiconUpload: Boolean;
    AutoOpen: Boolean;
    ShowDetails: Boolean;
    ConfirmDelete: Boolean;
    ConfirmSort: Boolean;
    ShowResultMsg: Boolean;
    EnableZAP: Boolean;
    ZAPNoErrorCheck: Boolean;
    SaveTVRadio: Boolean;
    SortUseService: Boolean;
    ShowDetHint: Boolean;
    AutoCheckVersion: Boolean;
    AutoCheckDays: Integer;
    NewSatXMLBottom: Boolean;
    MaxNr: Integer;
    MainColor: TColor;
    SplitterColor: TColor;
    ZAPKey: Integer;
    ProfilesName: String;
    DBIP: String;
    DBHTTPPort: String;
    DBFTPPort: String;
    DBUsername: String;
    DBPassword: String;
    FTPPassive: Boolean;
    PathServices: String;
    PathUserBouquets: String;
    PathSatellites: String;
    PathPicons: String;
    UserTelnetCmd: String;
    DreamboxCmdPrompt: String;
    QuickFTPEnabled: Boolean;
    QuickFTPReload: Boolean;
    QuickFTPReboot: Boolean;
    QuickFTPCustomCmd: Boolean;
    QuickFTPNothing: Boolean;
    tnBQ: TTreeNode;
    tnTV: TTreeNode;
    tnRD: TTreeNode;
    Language: String;
    AllowDuplicates: Boolean;
    ShowReboot: Boolean;
    FormatWordsList: TStringList;
    TVTypes: TStringList;
    RDTypes: TStringList;
    SettingsVersion: Integer;
    BlackList: Boolean;
    ServFilename: String;
    EplTVFilename: String;
    EplRDFilename: String;
    HidePassword: Boolean;
    procedure ParseString(const ss: String; var psl: TStringList);
    procedure lvServColumnsAdjust();
    procedure log(const sev: String; const text: String);
    procedure SetMenu(const option: String);
    procedure FormatPopupMenu(var puMenu: TPopupMenu);
    procedure StatusBarShowIPInfo();
    procedure SetVersionDefaults(const Version: Integer);
    function TrnsServType(const ServType: Integer): String;
    function CheckStringsOK(const Descr,Line: String; var psl: TStringList; const MinArgs: Integer; const Format: String): Boolean;
    function lwLngTrns(form: String; args: array of String): String;
    function ReadServices(const filename: String; var cds: TClientDataset; const Compare: Boolean): Integer;
    function FormattedStrToInt(const Str: String): Integer;
    function StrIsNumeric(const S: string; const DecPointAllowed: Boolean): Boolean;
    function StrIsHexadecimal(const S: string): Boolean;
    function CalcNameSpace(const stype,tsid,nid,satpos,freq: String): String;
    function NewBouquet(const btype: String): TListData;
    function ReadSatXML(const filename: String): Integer;
    function WriteSatXML(const filename: String): Integer;
    function CleanText(const sc: String): String;
    function SelDir(var Dir: String; const AllowCreate: Boolean): Boolean;
  end;

var
  FormMain: TFormMain;
  tm: TMouse;

implementation

uses DreamBoxAbout, DreamBoxEditWait, DreamBoxEditDetail, DreamBoxEditFiles,
  DreamBoxEditAdd, DreamBoxEditLog, DreamBoxEditOptions, DreamBoxEditFTP,
  DreamBoxEditImport, ClipBrd, DreamBoxEditImportFavs,
  DreamBoxEditEditSatXML, DreamBoxEditCompareSets, DreamBoxEditTransponder,
  DreamBoxEditNewVersion, DreamBoxEditSelDir;

{$R *.dfm}

type
  TCPServRec = record
    servSID:     Integer;
    servUniq:    Integer;
    servTSID:    Integer;
    servNID:     Integer;
    servType:    Integer;
    servName:    String[50];
    servPackage: String[50];
    servNr:      Integer;
    servFreq:    Integer;
    servSymb:    Integer;
    servPol:     Integer;
    servFEC:     Integer;
    servPos:     Integer;
    servVPID:    Integer;
    servAPID:    Integer;
    servTPID:    Integer;
    servPPID:    Integer;
    serv3PID:    Integer;
    servC07BSDelay: Integer;
    servC08PCMDelay: Integer;
    servFlags:   Integer;
    servDbeNr:   Integer;
    servDesc:    String[50];
    servT:       String[1];
    servSTC:     String[2];
    ServTrExtra: String[27];
    ServCleanName: String[50];
    ServExtra:   String[75];
  end;
var
  CPRec: array of TCPServRec;

procedure TFormMain.TotalsBuild();
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

function TFormMain.SelDir(var Dir: String; const AllowCreate: Boolean): Boolean;
begin
  Result := False;
  if AllowCreate
  then FormSelDir.Tag := 1
  else FormSelDir.Tag := 0;
  FormSelDir._lDir.Caption := Dir;
  if FormSelDir.ShowModal = mrOK
  then begin;
    Dir := FormSelDir._lDir.Caption;
    Result := True;
  end;
end;

procedure TFOrmMain.SetVersionDefaults(const Version: Integer);
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

function TFormMain.ReadServices(const filename: String; var cds: TClientDataset; const Compare: Boolean): Integer;
var
  tf: TextFile;
  s: String;
  psl,tsl: TStringList;
  i,c,DbeNr,p,ib,ie,ServErr: Integer;
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
    then SetVersionDefaults(2);
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
      p := pos('f:',s);
      if p = 0
      then p := pos('c:0',s);
      if p = 0
      then begin;
        if LowerCase(copy(s,1,2)) = 'p:'
        then cds.FieldByName('servPackage').AsString := TrimRight(copy(s,3,50))
        else cds.FieldByName('servPackage').AsString := TrimRight(s)
      end
      else begin;
        if pos('p:',s) = 0
        then begin;
          log('e',lwLngTrns(name,['Error reading service % with package line:',
              cds.FieldByName('servName').AsString]));
          log('e','-- ' + s);
          cds.FieldByName('servPackage').AsString := TrimRight(copy(s,3,50));
        end
        else begin;
          p := pos('p:',s);
          if p > 1
          then cds.FieldByName('servPackage').AsString := TrimRight(copy(s,p+2,length(s)-p-1))
          else begin;
            ie := pos('c:0',s);
            if (ie = 0) or
               ((pos('f:',s) <> 0) and (pos('f:',s) < ie))
            then ie := pos('f:',s);
            cds.FieldByName('servPackage').AsString := copy(s,p+2,ie-4);
          end;
          {s := LeftStr(s,p-1);}
        end;

        ib := pos('c:00',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s);
          if ie-ib-4 > 0
          then cds.FieldByName('servVPID').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:01',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s);
          if ie-ib-4 > 0
          then cds.FieldByName('servAPID').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:02',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s);
          if ie-ib-4 > 0
          then cds.FieldByName('servTPID').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:03',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s)+1;
          if ie-ib-4 > 0
          then cds.FieldByName('servPPID').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:04',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s)+1;
          if ie-ib-4 > 0
          then cds.FieldByName('serv3PID').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:07',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s)+1;
          if ie-ib-4 > 0
          then cds.FieldByName('servC07BSDelay').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('c:08',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+4);
          if ie = 0
          then ie := length(s)+1;
          if ie-ib-4 > 0
          then cds.FieldByName('servC08PCMDelay').AsString := IntToStr(StrToInt('$'+copy(s,ib+4,ie-ib-4)));
        end;

        ib := pos('f:',s);
        if ib > 0
        then begin;
          ie := posex(',',s,ib+2);
          if ie = 0
          then ie := length(s)+1;
          if ie-ib-4 > 0
          then cds.FieldByName('servFlags').AsString := IntToStr(StrToInt('$'+copy(s,ib+2,ie-ib-2)));
        end;
      end;
      cds.FieldByName('servExtra').AsString := ''; { AW: Should be filled with not-processed parameters }

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

procedure TFormMain.lvDetSave();
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

procedure TFormMain.lvDetBuild();
var
  servsif,sif,pf: String;
  wcds: TClientDataset;
  item: TListItem;
  servflt: Boolean;
begin
  lvDet.Items.BeginUpdate;
  lvDet.Items.Clear;
  lvDet.Items.EndUpdate;
  lvDet.Items.BeginUpdate;

  _lDetName.Caption := DetName;
  if DetType = 'T'
  then begin;
    wcds := cdsFTV;
    wcds.Filter := 'ftvSetNr = ''' + IntToStr(DetSetNr) + '''';
    wcds.Filtered := True;
    pf := 'ftv';
    LWPanelRL.Caption := lwLngTrns(name,['TV User Bouquet details']);
  end
  else
    if DetType = 'R'
    then begin;
      wcds := cdsFRD;
      wcds.Filter := 'frdSetNr = ''' + IntToStr(DetSetNr) + '''';
      wcds.Filtered := True;
      pf := 'frd';
      LWPanelRL.Caption := lwLngTrns(name,['Radio User Bouquet details']);
    end
    else begin;
      wcds := cdsFBQ;
      wcds.Filter := 'fbqSetNr = ''' + IntToStr(DetSetNr) + '''';
      wcds.Filtered := True;
      pf := 'fbq';
      LWPanelRL.Caption := lwLngTrns(name,['Bouquet details']);
    end;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := 'servDbeNr';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  sif := wcds.IndexFieldNames;

  wcds.IndexFieldNames := pf+'SeqNr';
  wcds.First;
  while not wcds.Eof do begin;
    item := lvDet.Items.Add;
    if wcds.FieldValues[pf+'T'] <> 'r'
    then item.Caption := wcds.FieldValues[pf+'Name']
    else item.Caption := wcds.FieldValues[pf+'Descr'];

    if wcds.FieldByName(pf+'T').AsString = 'm'
    then item.SubItems.Add('----')
    else begin;
      item.SubItems.Add(TrnsServType(wcds.FieldByName(pf+'ServType').AsInteger));
    end;

    if wcds.FieldByName(pf+'T').AsString <> 'm'
    then begin;
      if cdsServ.FindKey([wcds.FieldByName(pf+'DbeNr').AsString])
      then
        if cdsServ.FieldByName('servSTC').AsString = 't'
        then item.SubItems.Add('T')
        else
          if cdsServ.FieldByName('servSTC').AsString = 'c'
          then item.SubItems.Add('C')
          else item.SubItems.Add(Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]))
      else item.SubItems.Add('');
    end
    else item.SubItems.Add('');
    item.SubItems.Add(wcds.FieldByName(pf+'SID').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'TSID').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'NID').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'ServType').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'Uniq').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'SetNr').AsString);
    if wcds.FieldByName(pf+'T').AsString <> 'r'
    then item.SubItems.Add(wcds.FieldByName(pf+'Descr').AsString)
    else item.SubItems.Add(wcds.FieldByName(pf+'Name').AsString);
    if (cdsServ.Findkey([wcds.FieldByName(pf+'DbeNr').AsString])) and
       (cdsServ.FieldByName('servLock').AsInteger = 1)
    then item.SubItems.Add('1')
    else
      if cdsLock.Locate('lockSID;lockUniq;lockTSID;lockNID;lockServType',
                        VarArrayOf([wcds.FieldByName(pf+'SID').AsString,
                                    wcds.FieldByName(pf+'Uniq').AsString,
                                    wcds.FieldByName(pf+'TSID').AsString,
{qqq}                               wcds.FieldByName(pf+'NID').AsString,
                                    wcds.FieldByName(pf+'ServType').AsString]),[])
      then item.SubItems.Add('1')
      else item.SubItems.Add('0');
    item.SubItems.Add(wcds.FieldByName(pf+'DbeNr').AsString);
    item.SubItems.Add(wcds.FieldByName(pf+'T').AsString);

    wcds.Next;
  end;
  wcds.IndexFieldNames := sif;
  wcds.Filtered := False;
  wcds.Filter := '';

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;

  if (DetType = 'P') and
     (DetSetNr >= 0)
  then DetSortClick(Self);

  lvDet.Items.EndUpdate;
  TotalsBuild();

  lvDetSortDescending := False;
  lvDetColumnToSort := 999;

  DetChanged := False;
end;

procedure TFormMain.log(const Sev: String; const text: String);
var
  s: String;
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

procedure TFormMain.SetMenu(const option: String);
begin
  if option = 'off'
  then begin;
    tbSave.Enabled := False;
    fmSave.Enabled := False;
    fmSaveAs.Enabled := False;
    fmExportServicesExcel.Enabled := False;
    fmExportBouquetsExcel.Enabled := False;
    fmExportServicesSatcoDX.Enabled := False;
    fmUpdSatXML.Enabled := False;
    fmClearSatXML.Enabled := False;
    fmEditSatXML.Enabled := False;
    fmCompareDB.Enabled := False;
    fmCompareDisk.Enabled := False;
    fmClearLocks.Enabled := False;
    fmSwitchVersion2and3.Enabled := False;
    tbFiles.Enabled := False;
    fmFiles.Enabled := False;
    fmImportUserBouquets.Enabled := False;
    fmSearch.Enabled := False;
    fmSearchRepeat.Enabled := False;
    tbFFTPUp.Enabled := False;
    fmFFTPUp.Enabled := False;
  end
  else
  if option = 'loaded'
  then begin;
    tbSave.Enabled := False;
    fmSave.Enabled := False;
    fmSaveAs.Enabled := True;
    fmExportServicesExcel.Enabled := True;
    fmExportBouquetsExcel.Enabled := True;
    fmExportServicesSatcoDX.Enabled := True;
    fmUpdSatXML.Enabled := True;
    fmClearSatXML.Enabled := True;
    fmEditSatXML.Enabled := True;
    fmCompareDB.Enabled := True;
    fmCompareDisk.Enabled := True;
    fmClearLocks.Enabled := True;
    fmSwitchVersion2and3.Enabled := True;
    tbFiles.Enabled := True;
    fmFiles.Enabled := True;
    fmImportUserBouquets.Enabled := True;
    fmSearch.Enabled := True;
    fmSearchRepeat.Enabled := True;
    tbFFTPUp.Enabled := True;
    fmFFTPUp.Enabled := True;
  end
  else
  if option = 'changed'
  then begin;
    tbSave.Enabled := True;
    fmSave.Enabled := True;
  end
  else MessageDlg('Internal error: invalid option passed for menu settings',
                  mtError,[mbOK],0);
end;

function TFormMain.TrnsServType(const ServType: Integer): String;
var
  i: Integer;
begin
  if TVTypes.Find(IntToStr(ServType),i)
  then Result := 'TV'
  else
    if RDTypes.Find(IntToStr(ServType),i)
    then Result := 'Radio'
    else Result := 'Data';
end;

procedure TFormMain.ParseString(const ss: String; var psl: TStringList);
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

function TFormMain.CheckStringsOK(const Descr,Line: String; var psl: TStringList; const MinArgs: Integer; const Format: String): Boolean;
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

function TFormMain.lwLngTrns(form: String; args: array of String): String;
var
  i: Integer;
  s: String;
  key: String;
begin
  s := args[0];
  if Language <> 'English'
  then begin;
    key := 'm' + form + '.message.' + s;
    if MsgTable.IndexOfName(key) >= 0
    then s := MsgTable.Values[key];
    if trim(s) = ''
    then s := args[0];
  end;

  for i := 1 to high(args) do begin;
    s := StringReplace(s,'%',args[i],[]);
  end;
  Result := StringReplace(s,'~',#13,[rfReplaceAll]);
end;

function TFormMain.FormattedStrToInt(const Str: String): Integer;
var
  s: String;
  i,l: Integer;
begin
  s := Trim(Str);
  if s = ''
  then s := '0';
  l := Length(s);
  i := Pos('.',s);
  while i > 0 do begin
    s := Copy(s,1,i-1)+
         Copy(s,i+1,l-i);
    l := Length(s);
    i := Pos('.',s);
  end;
  Result := StrToInt(s);
end;

function TFormMain.StrIsNumeric(const S: string; const DecPointAllowed: Boolean): Boolean;
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

function TFormMain.StrIsHexadecimal(const S: string): Boolean;
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

function TFormMain.CalcNameSpace(const stype,tsid,nid,satpos,freq: String): String;
  function isValidONIDTSID(onid,tsid: integer): boolean;
  begin
   case onid of
    $0000,$FFFF,$1111: result := false;
    $0001: result :=  boolean(tsid > $0001);
    $00B1: result :=  boolean(tsid <> $00B0);
    $0002: result :=  boolean(tsid <> $07E8);
    else
      result := true;
   end;
  end;
var
  u,x: Integer;
  uniq: String;
begin
  if stype = 't'
  then begin;
    Result := IntToStr(StrToInt('$EEEE0000'));
    exit;
  end;
  if stype = 'c'
  then begin;
    Result := IntToStr(StrToInt('$FFFF0000'));
    exit;
  end;

  if pos(',',satpos) > 0
  then u := StrToInt(FloatToStr(StrToFloat(satpos)*10))
  else u := StrToInt(satpos);
  if u > 1800
  then u := u - 3600;
  u := u SHL 16;
  if not isValidONIDTSID(StrToInt(nid),StrToInt(tsid))
  then begin;
    x := FormattedStrToInt(freq);
    x := x shl 16;
    x := x shr 16;
  end
  else x := 0 ;
  uniq := IntToStr(u or x);
  result := uniq;
end;

function TFormMain.NewBouquet(const btype: String): TLIstData;
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

function TFormMain.CleanText(const sc: String): String;
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

procedure TFormMain.StatusBarShowIPInfo();
var
  isn: String;
begin
  if ProfilesName = ''
  then isn := '(none)'
  else isn := ProfilesName;
  sb.Panels[0].Text := lwLngTrns(name,['Profile:']) +
                       ' ' + isn;
  sb.Panels[1].Text := 'IP Address: ' + dbIP + ' / ' +
                       'FTP Port: ' + dbFTPPort + ' / ' +
                       'HTTP Port: ' + dbHTTPPort;
end;

function TFormMain.CopyToCB(): Boolean;
var
  mh: THandle;
  i,l: Integer;
  pi: ^Integer;
  mp: pointer;
  pr: ^TCPServRec;
begin
  Result := False;
  if length(CPRec) = 0
  then exit;

  l := (SizeOf(TCPServRec) * length(CPRec)) + 4;
  mh := GlobalAlloc(GMEM_MOVEABLE + GMEM_DDESHARE,l);
  if mh = 0
  then begin;
    MessageDlg('Memory allocation error in processing Cut command',
               mtError,[mbOK],0);
    log('e','Memory allocation error in processing Cut command');
    exit;
  end;
  mp := GlobalLock(mh);
  pi := mp;
  pi^ := l;

  pr := mp;
  inc(pchar(pr),4);
  for i := 0 to length(CPRec) - 1 do begin;
    pr.servSID := CPrec[i].servSID;
    pr.servUniq := CPrec[i].servUniq;
    pr.servTSID := CPrec[i].servTSID;
    pr.servNID := CPrec[i].servNID;
    pr.servType := CPrec[i].servType;
    pr.servName := CPrec[i].servName;
    pr.servPackage := CPrec[i].servPackage;
    pr.servNr := CPrec[i].servNr;
    pr.servFreq := CPrec[i].servFreq;
    pr.servSymb := CPrec[i].servSymb;
    pr.servPol := CPrec[i].servPol;
    pr.servFEC := CPrec[i].servFEC;
    pr.servPos := CPrec[i].servPos;
    pr.servVPID := CPrec[i].servVPID;
    pr.servAPID := CPrec[i].servAPID;
    pr.servTPID := CPrec[i].servTPID;
    pr.servPPID := CPrec[i].servPPID;
    pr.serv3PID := CPrec[i].serv3PID;
    pr.servC07BSDelay := CPrec[i].servC07BSDelay;
    pr.servC08PCMDelay := CPrec[i].servC08PCMDelay;
    pr.servFlags := CPrec[i].servFlags;
    pr.servDbeNr := CPrec[i].servDbeNr;
    pr.servDesc := CPrec[i].servDesc;
    pr.servT := CPrec[i].servT;
    pr.servSTC := CPrec[i].servSTC;
    pr.ServTrExtra := CPrec[i].servTrExtra;
    pr.ServCleanName := CPrec[i].ServCleanName;
    pr.servExtra := CPrec[i].servExtra;

    inc(pchar(pr),SizeOf(TCPServRec));
  end;

  if OpenClipboard(Application.Handle)
  then begin;
    if SetClipboardData(ClipBFormat,mh) = null
    then begin;
      CloseClipBoard;
      GlobalFree(mh);
      exit;
    end;
    CloseClipboard;
  End;

  GlobalUnlock(mh);
  Result := True;
end;

function TFormMain.PasteFromCB(): Boolean;
var
  c: Integer;
  i: Integer;
  mh: THandle;
  mp: Pointer;
  pi: ^Integer;
  pr: ^TCPServRec;
  l: LongInt;
begin
  Result := False;
  if not IsClipboardFormatAvailable(ClipBFormat)
  then exit;

  if OpenClipboard(Application.Handle)
  then begin;
    mh := GetClipBoardData(ClipBFormat);
    if mh <> 0
    then begin;
      mp := GlobalLock(mh);
      pi := mp;
      l := pi^;
      c := l div SizeOf(TCPServRec);
      setlength(CPRec,c);
      pr := mp;
      inc(pchar(pr),4);
      for i := 0 to c - 1 do begin;
        CPRec[i] := pr^;
        inc(pchar(pr),SizeOf(TCPServRec));
      end;
      GlobalUnLock(mh);
    end;
    CloseClipBoard;
  end;
  Result := True;
end;

procedure TFormMain.lvServColumnsAdjust();
var
  i: Integer;
begin
  lvServ.Columns[0].Caption := lwLngTrns(name,['Service']);
  lvServ.Columns[1].Caption := lwLngTrns(name,['Package']);
  lvServ.Columns[2].Caption := lwLngTrns(name,['Type']);
  lvServ.Columns[3].Caption := lwLngTrns(name,['Ch.Nr.']);
  lvServ.Columns[4].Caption := lwLngTrns(name,['Satellite']);
  lvServ.Columns[5].Caption := lwLngTrns(name,['Frequency']);
  lvServ.Columns[6].Caption := lwLngTrns(name,['Pol']);

  if (not ShowDetails) and
     (lvServ.Columns.Count > 7)
  then begin;
    for i := lvServ.Columns.Count - 1 downto 7 do begin;
      lvServ.Columns.Delete(i);
    end;
  end;
  if ShowDetails
  then
    if lvServ.Columns.Count = 7
    then begin;
      lvServ.Columns.Add;
      lvServ.Columns[7].Caption := lwLngTrns(name,['SymbolRate']);
      lvServ.Columns[7].MinWidth := 5;
      lvServ.Columns[7].Width := 70;
      lvServ.Columns[7].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[8].Caption := lwLngTrns(name,['FEC']);
      lvServ.Columns[8].MinWidth := 5;
      lvServ.Columns[8].Width := 32;
      lvServ.Columns[8].Alignment := taCenter;
      lvServ.Columns.Add;
      lvServ.Columns[9].Caption := lwLngTrns(name,['SatPos']);
      lvServ.Columns[9].MinWidth := 5;
      lvServ.Columns[9].Width := 50;
      lvServ.Columns[9].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[10].Caption := lwLngTrns(name,['SID']);
      lvServ.Columns[10].MinWidth := 5;
      lvServ.Columns[10].Width := 45;
      lvServ.Columns[10].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[11].Caption := lwLngTrns(name,['TSID']);
      lvServ.Columns[11].MinWidth := 5;
      lvServ.Columns[11].Width := 45;
      lvServ.Columns[11].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[12].Caption := lwLngTrns(name,['NID']);
      lvServ.Columns[12].MinWidth := 5;
      lvServ.Columns[12].Width := 45;
      lvServ.Columns[12].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[13].Caption := lwLngTrns(name,['Type']);
      lvServ.Columns[13].MinWidth := 5;
      lvServ.Columns[13].Width := 45;
      lvServ.Columns[13].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[14].Caption := lwLngTrns(name,['VPID']);
      lvServ.Columns[14].MinWidth := 5;
      lvServ.Columns[14].Width := 40;
      lvServ.Columns[14].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[15].Caption := lwLngTrns(name,['APID']);
      lvServ.Columns[15].MinWidth := 5;
      lvServ.Columns[15].Width := 40;
      lvServ.Columns[15].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[16].Caption := lwLngTrns(name,['TPID']);
      lvServ.Columns[16].MinWidth := 5;
      lvServ.Columns[16].Width := 40;
      lvServ.Columns[16].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[17].Caption := lwLngTrns(name,['PPID']);
      lvServ.Columns[17].MinWidth := 5;
      lvServ.Columns[17].Width := 40;
      lvServ.Columns[17].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[18].Caption := lwLngTrns(name,['3PID']);
      lvServ.Columns[18].MinWidth := 5;
      lvServ.Columns[18].Width := 40;
      lvServ.Columns[18].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[19].Caption := lwLngTrns(name,['Namespace']);
      lvServ.Columns[19].MinWidth := 5;
      lvServ.Columns[19].Width := 75;
      lvServ.Columns[19].Alignment := taRightJustify;
      lvServ.Columns.Add;
      lvServ.Columns[20].Caption := lwLngTrns(name,['Flags']);
      lvServ.Columns[20].MinWidth := 5;
      lvServ.Columns[20].Width := 40;
      lvServ.Columns[20].Alignment := taRightJustify;
    end
    else begin;
      lvServ.Columns[7].Caption := lwLngTrns(name,['SymbolRate']);
      lvServ.Columns[8].Caption := lwLngTrns(name,['FEC']);
      lvServ.Columns[9].Caption := lwLngTrns(name,['SatPos']);
      lvServ.Columns[10].Caption := lwLngTrns(name,['SID']);
      lvServ.Columns[11].Caption := lwLngTrns(name,['TSID']);
      lvServ.Columns[12].Caption := lwLngTrns(name,['NID']);
      lvServ.Columns[13].Caption := lwLngTrns(name,['Type']);
      lvServ.Columns[14].Caption := lwLngTrns(name,['VPID']);
      lvServ.Columns[15].Caption := lwLngTrns(name,['APID']);
      lvServ.Columns[16].Caption := lwLngTrns(name,['TPID']);
      lvServ.Columns[17].Caption := lwLngTrns(name,['PPID']);
      lvServ.Columns[18].Caption := lwLngTrns(name,['3PID']);
      lvServ.Columns[19].Caption := lwLngTrns(name,['Namespace']);
      lvServ.Columns[20].Caption := lwLngTrns(name,['Flags']);
    end;

  lvDet.Columns[0].Caption := lwLngTrns(name,['Service']);
  lvDet.Columns[1].Caption := lwLngTrns(name,['Type']);
  lvDet.Columns[2].Caption := lwLngTrns(name,['Satpos']);
end;

procedure TFormMain.FormatToolbar();
var
  i,n,minl,totl: Integer;
begin
  for i := 0 to ToolBar1.ButtonCount - 1 do begin;
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
  end;
end;

procedure TFormMain.FormatPopupMenu(var puMenu: TPopupMenu);
var
  i,mls,mlk,mlo,p: Integer;
  s1,s2: String;
begin
  { Determine offset for short-key text and store for customm draw routines }
  mls := 0;
  mlk := 0;
  mlo := 0;
  for i := 0 to puMenu.Items.Count - 1 do begin;
    if pos('  ',puMenu.Items[i].Caption) > 0
    then begin;
      p := pos('  ',puMenu.Items[i].Caption);
      s1 := Trim(LeftStr(puMenu.Items[i].Caption,p-1));
      mls := max(mls,canvas.TextWidth(s1));
      s2 := Trim(RightStr(puMenu.Items[i].Caption,Length(puMenu.Items[i].Caption)-p-1));
      mlk := max(mlk,canvas.TextWidth(s2));
    end
    else mlo := max(mlo,canvas.TextWidth(puMenu.Items[i].Caption));
  end;
  mls := max((mls+10),(mlo - mlk)+10);
  for i := 0 to puMenu.Items.Count - 1 do begin;
    if pos('  ',puMenu.Items[i].Caption) > 0
    then begin;
      p := pos('  ',puMenu.Items[i].Caption);
      s1 := Trim(LeftStr(puMenu.Items[i].Caption,p-1));
      s2 := Trim(RightStr(puMenu.Items[i].Caption,Length(puMenu.Items[i].Caption)-p-1));
      while canvas.TextWidth(s1) < mls do begin;
        s1 := s1 + ' ';
      end;
      puMenu.Items[i].Caption := s1 + s2;
    end;
  end;
  LastPopupWidth := mls;
end;

function TFormMain.ReadSatXML(const filename: String): Integer;
var
  ts,seq,ps,pe: Integer;
  tf: TextFile;
  s,wname,wflags,wpos: String;
  wfreq,wsymb,wpol,wfec: String;
label
  Skipped;
begin
  cdsSatXML.EmptyDataSet;
  cdsSatXML.Close;
  cdsSatXML.Open;

  ts := 0;
  seq := 0;
  AssignFile(tf,filename);
  SetLineBreakStyle(tf,tlbsLF);
  Reset(tf);

  SatXMLHdr.Clear;
  ReadLn(tf,s);
  while (not Eof(tf)) and (pos('<satellites>',s) <= 0) do begin;
    SatXMLHdr.Add(s);
    ReadLn(tf,s);
  end;

  while not Eof(tf) do begin;
    if pos('<sat name="',s) > 0
    then begin;
      ps := pos('<sat name="',s);
      pe := posex('"',s,ps+11);
      wname := copy(s,ps+11,pe-ps-11);
      ps := pos('flags="',s);
      pe := posex('"',s,ps+7);
      wflags := copy(s,ps+7,pe-ps-7);
      ps := pos('position="',s);
      pe := posex('"',s,ps+10);
      wpos := copy(s,ps+10,pe-ps-10);
    end
    else
      if pos('<transponder frequency="',s) > 0
      then begin;
        { Check for all needed fields }
        if (pos('symbol_rate="',s) = 0) or
           (pos('polarization="',s) = 0) or
           (pos('fec_inner="',s) = 0)
        then begin;
          if pos('symbol_rate="',s) = 0
          then log('w',lwLngTrns(name,['Invalid satellites.xml record skipped: symbol_rate not found']))
          else
            if pos('polarization="',s) = 0
            then log('w',lwLngTrns(name,['Invalid satellites.xml record skipped: polarization not found']))
            else log('w',lwLngTrns(name,['Invalid satellites.xml record skipped: fec_inner not found']));
          log('w','--> ' + s);
          inc(ts);
          goto Skipped;
        end;

        { parse key data from read line }
        ps := pos('<transponder frequency="',s);
        pe := posex('"',s,ps+24);
        wFreq := copy(s,ps+24,pe-ps-24);
        ps := pos('symbol_rate="',s);
        pe := posex('"',s,ps+13);
        wSymb := copy(s,ps+13,pe-ps-13);
        ps := pos('polarization="',s);
        pe := posex('"',s,ps+14);
        wPol := copy(s,ps+14,pe-ps-14);
        ps := pos('fec_inner="',s);
        pe := posex('"',s,ps+11);
        wFEC := copy(s,ps+11,pe-ps-11);

        { Check for duplicate entries }
        if cdsSatXML.FindKey([wPos,wFreq,wPol,wSymb,wFEC])
        then begin;
          log('i',lwLngTrns(name,['Duplicate record skipped. Satellite: % (%):',wName,wPos]));
          log('i','-->' + s);
          goto Skipped;
        end;

        { Proces new entry }
        cdsSatXML.Append;
        cdsSatXML.FieldByName('Name').AsString := wname;
        cdsSatXML.FieldByName('Flags').AsString := wflags;
        cdsSatXML.FieldByName('Pos').AsString := wpos;
        cdsSatXML.FieldByName('Freq').AsString := wFreq;
        cdsSatXML.FieldByName('Pol').AsString := wPol;
        cdsSatXML.FieldByName('Symb').AsString := wSymb;
        cdsSatXML.FieldByName('FEC').AsString := wFEC;
        cdsSatXML.FieldByName('SeqNr').AsInteger := seq;
        cdsSatXML.Post;
        inc(seq);
      end;
Skipped:
    ReadLn(tf,s);
  end;
  CloseFile(tf);
  Result := ts;
end;

function TFormMain.WriteSatXML(const filename: String): Integer;
var
  tf: TextFile;
  s,d,wname: String;
  i,p: Integer;
  hl: Boolean;
begin
  d := ExtractFilePath(filename);
  if RightStr(d,1) = '\'
  then d := LeftStr(d,length(d)-1);
  if not FileExists(d + '\satellites.xml_org')
  then begin;
    RenameFile(d + '\satellites.xml',d + '\satellites.xml_org');
    Log('i',lwLngTrns(name,['% renamed to % in %',
                            'satellites.xml','satellites.xml_org',d]));
  end
  else begin;
    if FileExists(d + '\satellites.xml_bak')
    then begin;
      DeleteFile(d + '\satellites.xml_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                              d,'satellites.xml_bak']));
    end;
    RenameFile(d + '\satellites.xml',d + '\satellites.xml_bak');
    log('i',lwLngTrns(name,['% renamed to % in %',
                            'satellites.xml','satellites.xml_bak',d]));
  end;

  hl := False;
  for i := 0 to SatXMLHdr.Count - 1 do begin;
    if (pos('Edited with LlamaWare DreamBoxEdit',SatXMLHdr[i]) > 0) and
       (pos('-->',SatXMLHdr[i]) > 0)
    then begin;
      SatXMLHdr[i] := 'Edited with LlamaWare DreamBoxEdit on ' +
                      FormatDateTime('ddmmmyyyy hh:mm:ss',now()) +
                      ' -->';
      hl := True;
    end;
  end;
  if not hl
  then begin;
    s := SatXMLHdr[SatXMLHdr.Count - 1];
    p := pos('-->',s);
    if (p > 0) and
       (pos('<!--',s) <= 0)
    then begin;
      s := LeftStr(s,p-1);
      SatXMLHdr[SatXMLHdr.Count - 1] := s;
      SatXMLHdr.Add('Edited with LlamaWare DreamBoxEdit on ' +
                    FormatDateTime('ddmmmyyyy hh:mm:ss',now()) +
                    ' -->')
    end;
  end;

  AssignFile(tf,filename);
  SetLineBreakStyle(tf,tlbsLF);
  Rewrite(tf);
  for i := 0 to SatXMLHdr.Count - 1 do begin;
    WriteLn(tf,SatXMLHdr[i]);
  end;

  WriteLn(tf,'<satellites>');
  wname := '';
  cdsSatXML.First;
  while not cdsSatXML.Eof do begin;
    if cdsSatXML.FieldByName('Name').AsString <> wname
    then begin;
      if wname <> ''
      then WriteLn(tf,#9 + '</sat>');
      wname := cdsSatXML.FieldByName('Name').AsString;
      s := #9 + '<sat name="' + wname +
           '" flags="' + cdsSatXML.FieldByName('Flags').AsString +
           '" position="' + cdsSatXML.FieldByName('Pos').AsString +
           '">';
      WriteLn(tf,s);
    end;
    s := #9#9 + '<transponder frequency="' + cdsSatXML.FieldByName('Freq').AsString +
         '" symbol_rate="' + cdsSatXML.FieldByName('Symb').AsString +
         '" polarization="' + cdsSatXML.FieldByName('Pol').AsString +
         '" fec_inner="' + cdsSatXML.FieldByName('FEC').AsString +
         '"/>';
    WriteLn(tf,s);
    cdsSatXML.Next;
  end;
  WriteLn(tf,#9 + '</sat>');
  WriteLn(tf,'</satellites>');
  CloseFile(tf);

  Result := cdsSatXML.RecordCount;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  SR: TSearchRec;
  i,rc,FileAttr: Integer;
  mi: TMenuItem;
  Reg: TRegistry;
begin
  ClipBFormat := RegisterClipboardFormat('DreamBoxEdit_Cut_and_Paste_Services');

  ThousandSeparator := '.';
  DecimalSeparator := ',';
  DefaultTextLineBreakStyle := tlbsCRLF;

  Application.HintHidePause := 5000;

  cbf := RegisterClipboardFormat('DBE_Service');

  FormatWordsList := TStringList.Create;
  TVTypes := TStringList.Create;
  TVTypes.CaseSensitive := False;
  TVTypes.Sorted := True;
  RDTypes := TStringList.Create;
  RDTypes.CaseSensitive := False;
  RDTypes.Sorted := True;

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

  SatXMLHdr := TStringList.Create;

  { Set language }
  MsgTable := TStringList.Create;
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
    then MsgTable.LoadFromFile(ExtractFilePath(application.exename) + Language + '.lng');
    if Language = 'English'
    then OriginalEnglish := True;
  end;
  FormatToolbar();

  MainMenu1.Items[5].OnClick := nil;
  for i := MainMenu1.items[5].count - 1 downto 0 do begin;
    MainMenu1.Items[5].Delete(i);
  end;
  FileAttr := faAnyFile;
  rc := FindFirst(ExtractFilePath(application.exename) + '*.lng',FileAttr,SR);
  while rc = 0 do begin
    if (SR.Name <> '.') and
       (SR.Name <> '..')
    then
      if (SR.Attr AND faDirectory) <> faDirectory
      then begin;
        mi := TMenuItem.Create(Self);
        mi.Name := 'nt' + LeftStr(SR.Name,Length(SR.Name)-4);
        mi.Caption := LeftStr(SR.Name,Length(SR.Name)-4);
        if mi.Caption = Language
        then mi.Checked := True;
        mi.OnClick := fmLanguageClick;
        MainMenu1.Items[5].Add(mi);
      end;
    rc := FindNext(SR);
  end;
  FindClose(sr);

  { Set default satellite / cable mode }
  SatCable := 's';

  SetMenu('off');
  if System.DebugHook = 0
  then _fmUpdateLanguage.Visible := False;

  _lServT.Caption := '0';
  _lServD.Caption := '0';
  _lBouqT.Caption := '0';
  _lDetT.Caption := '0';

  DetType := '';
  Detname := '. . .';
  _lDetName.Caption := '. . .';
  AutoOpen := False;
  LastWidth := 0;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
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

  if tbSave.Enabled
  then begin;
    r := MessageDlg(lwLngTrns(name,[
                    'You made changes that are not yet saved!~~'+
                    'Do you want to save them before quiting?~' +
                    '(Choosing "No" means any changes you made, will be lost)']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then tbSave.Click()
    else
      if r = mrCancel
      then begin;
        Action := caNone;
        exit;
      end;
  end;

  MsgTable.Free;
  SatXMLHdr.Free;
  FormatWordsList.Free;
  TVTypes.Free;
  RDTypes.Free;
end;

procedure TFormMain.sbDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  with sb.Canvas do
  begin
    if pos('Copyright',Panel.Text) > 0
    then begin;
      Font.Color := clBlue;
      TextOut(Rect.left+2,Rect.top,Panel.Text);
    end
    else begin;
      Font.Color := clBlack;
      TextOut(Rect.left+2,Rect.top,Panel.Text);
    end;
  end;
end;

procedure TFormMain.tbOpenClick(Sender: TObject);
var
  tf: TextFile;
  s,b,snr,bnr,descr,ubt,bn,lfn,altfn: String;
  typ, sid, tsid, onid, namespace, pngchname,pngsrname,newDir : String;
  Reg: Tregistry;
  sl,fsl,psl,dbset,alt,servref,misspng: TStringList;
  i,a,e,p,r,ib,ie,pdel,ndel, t1, t2: Integer;
  seqnr,cbq: Integer;
  ServErr,BouqErr,FTVErr, FRDErr: Integer;
  add: Boolean;
  pListData: ^TListData;
begin
  if tbSave.Enabled
  then begin;
    r := MessageDlg(lwLngTrns(name,[
                    'You made changes that are not yet saved!~~'+
                    'Do you want to save them before opening a new set?~' +
                    '(Choosing "No" means any changes you made, will be lost)']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then tbSave.Click()
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
    then Dir := Reg.ReadString('LastUsedDirectory')
    else Dir := '';
    Reg.CloseKey;
    Reg.Destroy;
  end;

  if not DirectoryExists(Dir)
  then Dir := '';

  if (AutoOpen) or
     (SelDir(Dir,False))
  then begin;
    AutoOpen := False;
    Log('i',lwLngTrns(name,['Directory % selected',Dir]));
    if not FileExists(Dir + '\lamedb')
    then SetVersionDefaults(2)
    else SetVersionDefaults(3);

    if not FileExists(Dir + '\' + ServFilename)
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "%".~~'+
                 'You must first use the FTP option to copy all necessary ' +
                 'files from the dreambox to your PC.',Dir,ServFilename]),
                 mtError,[mbOk],0);
      Log('e',lwLngTrns(name,['File services not found in "%"',Dir]));
      Exit;
    end;
    if (not FileExists(Dir + '\bouquets')) and
       (not FileExists(Dir + '\lamedb'))
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "bouquets"~~'+
                 'You must first use the FTP option to copy all necessary ' +
                 'files from the dreambox to your PC.',Dir]),
                 mtError,[mbOk],0);
      Log('e',lwLngTrns(name,['File % not found in "%"',
                              'bouquets',Dir]));
      Exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('LastUsedDirectory',Dir);
    Reg.CloseKey;
    Reg.Destroy;

    FormMain.Caption := 'LlamaWare DreamBoxEdit - ' + Dir;

    screen.cursor := crHourglass;
    ToolBar1.Enabled := False;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := 9;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;

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
    FormWait.pb.Position := 1;

    ServErr := ReadServices(Dir+'\'+ServFilename,cdsServ,False);
    if ServErr < 0
    then begin;
      screen.cursor := crdefault;
      ToolBar1.Enabled := True;
      FormWait.Hide;
      exit;
    end;

    { process parental lock / blacklist / whitelist file (if present/specified) }
    FormWait.pb.Position := 2;
    BlackList := True; { Default }
    lfn := 'services.locked'; { Default }
    { Check for whitelist setting when settings type is not 2 }
    if SettingsVersion <> 2
    then begin;
      lfn := 'blacklist'; { default for settings version 3 }
      if FileExists(Dir+'\settings')
      then begin;
        dbset := TStringList.Create;
        dbset.LoadFromFile(Dir+'/settings');
        if pos('whitelist',lowercase(dbset.Text)) > 0
        then begin;
          Blacklist := False;
          lfn := 'whitelist';
          sb.Panels[4].Text := 'Parental control: Whitelist';
        end;
        dbset.Free;
      end;
    end;

    if FileExists(Dir+'\'+lfn)
    then begin;
      sl := TStringList.Create;
      sl.LoadFromFile(Dir+'\'+lfn);
      for i := 0 to sl.Count - 1 do begin;
        if pos('parental',lowercase(sl[i])) > 0
        then continue;

        if trim(sl[i]) <> ''
        then begin;
          ParseString(sl[i],psl);
          if not CheckStringsOK(Dir+'\'+lfn,sl[i],psl,7,'NNHHHHH')
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
    FormWait.pb.Position := 3;

    tnBQ := tv.Items.Add(nil,'Providers');
    if FileExists(Dir+'\bouquets')
    then begin;
      AssignFile(tf,Dir+'\bouquets');
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
          if not CheckStringsOK(Dir+'\bouquets',s,psl,5,'HHHHH')
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
    FormWait.pb.Position := 4;

    tnTV := tv.Items.Insert(TNBQ,'TV User Bouquets');

    if FileExists(Dir + '\' + EplTVFilename)
    then begin;
      fsl := TStringList.Create;
      fsl.Clear;
      AssignFile(tf,Dir + '\' + EplTVFilename);
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
      FormWait.pb.Position := 5;
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
        if FileExists(Dir+'\' + fsl[i])
        then begin;
          AssignFile(tf,Dir+'\' + fsl[i]);
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
            if not CheckStringsOK(Dir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
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
              if FileExists(Dir+'\'+altfn)
              then begin;
                alt := TStringList.Create;
                alt.LoadFromFile(Dir+'\'+altfn);
                if alt.Count >= 2
                then begin;
                  s := alt.Strings[1];
                  ParseString(s,psl);
                  if not CheckStringsOK(Dir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
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
    FormWait.pb.Position := 6;

    tnRD := tv.Items.Insert(TNBQ,'Radio User Bouquets');

    if FileExists(Dir + '\' + EplRDFilename)
    then begin;
      fsl := TStringList.Create;
      fsl.Clear;
      AssignFile(tf,Dir + '\' + EplRDFilename);
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
      FormWait.pb.Position := 7;
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
        if FileExists(Dir+'\' + fsl[i])
        then begin;
          AssignFile(tf,Dir+'\' + fsl[i]);
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
            if not CheckStringsOK(Dir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
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
              if FileExists(Dir+'\'+altfn)
              then begin;
                alt := TStringList.Create;
                alt.LoadFromFile(Dir+'\'+altfn);
                if alt.Count >= 2
                then begin;
                  s := alt.Strings[1];
                  ParseString(s,psl);
                  if not CheckStringsOK(Dir+'\'+fsl[i],s,psl,8,'SSSHHHHH')
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
    FormWait.pb.Position := 8;

    if FileExists(Dir+'\satellites.xml')
    then begin;
      AssignFile(tf,Dir+'\satellites.xml');
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
    screen.cursor := crdefault;
    ToolBar1.Enabled := True;

    if PiconActivate then GetPng;
    FormWait.Hide;

    cbSatName.ItemIndex := 0;
    ePackage.Text := '';
    cdsServ.IndexFieldNames := 'servCleanName;servPackage';
    lvServ.Items.Count := cdsServ.RecordCount;
    lvServ.Refresh;

    SetMenu('loaded');

    psl.Free;
    FormMain.Caption := 'LlamaWare DreamBoxEdit - ' + Dir;

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
      cbServFilter(Self);
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

    if (satcable = 's') and (not FileExists(Dir + '\satellites.xml'))
    then begin;
      MessageDlg(lwLngTrns(name,[
                 'Directory "%" contains no file called "satellites.xml"~' +
                 'You can continue editing the file-set but now there is no translation '+
                 'from satellite position to satellite name available.~~'+
                 'You might consider to first copy all necessary ' +
                 'files from the dreambox to your PC with the FTP function.',Dir]),
                 mtWarning,[mbOk],0);
      Log('w',lwLngTrns(name,['File % not found in "%"',
                              'satellites.xml',Dir]));
    end;

  end;
end;

procedure TFormMain.tbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.tbSaveClick(Sender: TObject);
var
  tf: TextFile;
  sif,s,fn,v2Sep,lfn,stype: String;
  i,j,c,p,marker: Integer;
  psl: TStringList;
  pListData: ^TListData;
  servsif: String;
  servflt: Boolean;
  TempStream: TMemoryStream;
begin
  if Dir = ''
  then begin;
    fmSaveAsClick(Self);
    exit;
  end;

  psl := TStringList.Create;
  marker := 0;

  { first save current Det list }
  lvDetSave();

  { prepare files structure }
  Log('i',lwLngTrns(name,['Saving file-set in %',Dir]));

  if not FileExists(Dir + '\' + ServFilename + '_org')
  then begin;
    if RenameFile(Dir + '\' + ServFilename,Dir + '\' + ServFilename + '_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           ServFilename,ServFilename + '_org',Dir]));
  end
  else begin;
    if FileExists(Dir + '\' + ServFilename + '_bak')
    then begin;
      DeleteFile(Dir + '\' + ServFilename + '_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        ServFilename + '_bak',Dir]));
    end;
    if RenameFile(Dir + '\' + ServFilename,Dir + '\' + ServFilename + '_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           ServFilename,ServFilename + '_bak',Dir]));
  end;

  if SettingsVersion = 2
  then lfn := 'services.locked'
  else
    if Blacklist
    then lfn := 'blacklist'
    else lfn := 'whitelist';
  if not FileExists(Dir + '\' + lfn + '_org')
  then begin;
    if RenameFile(Dir + '\' + lfn,Dir + '\' + lfn + '_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           lfn,lfn + '_org',Dir]));
  end
  else begin;
    if FileExists(Dir + '\' + lfn + '_bak')
    then begin;
      DeleteFile(Dir + '\' + lfn + '_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        lfn + '_bak',Dir]));
    end;
    if RenameFile(Dir + '\' + lfn,Dir + '\' + lfn + '_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           lfn,lfn + '_bak',Dir]));
  end;

  if not FileExists(Dir + '\bouquets_org')
  then begin;
    if RenameFile(Dir + '\bouquets',Dir + '\bouquets_org')
    then Log('i',lwLngTrns(name,['% renamed to % in %',
                           'bouquets','bouquets_org',Dir]));
  end
  else begin;
    if FileExists(Dir + '\bouquets_bak')
    then begin;
      DeleteFile(Dir + '\bouquets_bak');
      Log('i',lwLngTrns(name,['% deleted from %',
                        'bouquets_bak',Dir]));
    end;
    if RenameFile(Dir + '\bouquets',Dir + '\bouquets_bak')
    then log('i',lwLngTrns(name,['% renamed to % in %',
                           'bouquets','bouquets_bak',Dir]));
  end;

  screen.cursor := crHourglass;
  ToolBar1.Enabled := False;
  application.ProcessMessages;

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

  p := 0;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsTSID.RecordCount +
                     cdsServ.RecordCount +
                     cdsFTV.RecordCount +
                     cdsFRD.RecordCount +
                     cdsFBQ.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;

  AssignFile(tf,Dir + '\' + ServFilename);
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
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

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
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

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
    if cdsServSave.FieldByName('servExtra').AsString <> ''
    then s := s + ',' + cdsServSave.FieldByName('servExtra').AsString; { Append unknown exra fields }
    WriteLn(tf,s);
    cdsServSave.Next;
  end;
  WriteLn(tf,'end');
  WriteLn(tf,'Edited with LlamaWare DreamBoxEdit ' + FormAbout._lVersion.Caption +
             ' on ' + FormatDateTime('ddmmmyyyy hh:mm:ss',now()));
  CloseFile(tf);
  Log('i',lwLngTrns(name,['services saved in %',Dir]));

  {----------------------------------------------------}
  { Write services.locked / whitelist / blacklist file }
  {----------------------------------------------------}
  AssignFile(tf,Dir + '\' + lfn);
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
  Log('i',lwLngTrns(name,['services.lock saved in %',Dir]));

  cdsServSave.EmptyDataSet;
  cdsServSave.Close;
  cdsServSave.Open;

  {---------------------------------}
  { Write bouquets (providers) file }
  {---------------------------------}

  { write bouquets }
  if SettingsVersion = 2
  then begin;
    AssignFile(tf,Dir + '\bouquets');
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
        inc(p);
        if p mod 25 = 0
        then FormWait.pb.Position := p;

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
    WriteLn(tf,'Edited with LlamaWare DreamBoxEdit ' + FormAbout._lVersion.Caption +
               ' on ' + FormatDateTime('ddmmmyyyy hh:mm:ss',now()));
    CloseFile(tf);
    Log('i',lwLngTrns(name,['bouquets saved in %',Dir]));
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
    if FileExists(Dir + '\' + fn)
    then begin;
      if not FileExists(Dir + '\' + fn + '_org')
      then begin;
        if RenameFile(Dir + '\' + fn,Dir + '\' + fn + '_org')
        then Log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_org',Dir]));
      end
      else begin;
        if FileExists(Dir + '\' + fn + '_bak')
        then begin;
          DeleteFile(Dir + '\' + fn + '_bak');
          Log('i',lwLngTrns(name,['% deleted from %',
                                  fn + '_bak',Dir]));
        end;
        if RenameFile(Dir + '\' + fn,Dir + '\' + fn + '_bak')
        then log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_bak',Dir]));
      end;
    end;

    AssignFile(tf,Dir + '\' + fn);
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
      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

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
    Log('i',lwLngTrns(name,['TV User Bouquet % saved in %',tv.Items.Item[i].Text,Dir]));
  end;
  if FileExists(Dir + '\' + EplTVFilename)
  then begin;
    if not FileExists(Dir + '\' + EplTVFilename + '_org')
    then begin;
      if RenameFile(Dir + '\' + EplTVFilename,Dir + '\' + EplTVFilename + '_org')
      then Log('i',lwLngTrns(name,['% renamed to % in %',
                             EplTVFilename,EplTVFilename + '_org',Dir]));
    end
    else begin;
      if FileExists(Dir + '\' + EplTVFilename + '_bak')
      then begin;
        DeleteFile(Dir + '\' + EplTVFilename + '_bak');
        Log('i',lwLngTrns(name,['% deleted from %',
                          EplTVFilename + '_bak',Dir]));
      end;
      if RenameFile(Dir + '\' + EplTVFilename,Dir + '\' + EplTVFilename + '_bak')
      then log('i',lwLngTrns(name,['% renamed to % in %',
                             EplTVFilename,EplTVFilename + '_bak',Dir]));
    end;
  end;
  AssignFile(tf,Dir + '\' + EplTVFilename);
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
  Log('i',lwLngTrns(name,['TV User Bouquet index file % saved in %',EplTVFilename,Dir]));

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
    if FileExists(Dir + '\' + fn)
    then begin;
      if not FileExists(Dir + '\' + fn + '_org')
      then begin;
        if RenameFile(Dir + '\' + fn,Dir + '\' + fn + '_org')
        then Log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_org',Dir]));
      end
      else begin;
        if FileExists(Dir + '\' + fn + '_bak')
        then begin;
          DeleteFile(Dir + '\' + fn + '_bak');
          Log('i',lwLngTrns(name,['% deleted from %',
                                  fn + '_bak',Dir]));
        end;
        if RenameFile(Dir + '\' + fn,Dir + '\' + fn + '_bak')
        then log('i',lwLngTrns(name,['% renamed to % in %',
                                     fn,fn + '_bak',Dir]));
      end;
    end;

    AssignFile(tf,Dir + '\' + fn);
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
      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

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
                            tv.Items.Item[i].Text,Dir]));
  end;
  if FileExists(Dir + '\' + EplRDFilename)
  then begin;
    if not FileExists(Dir + '\' + EplRDFilename + '_org')
    then begin;
      if RenameFile(Dir + '\' + EplRDFilename,Dir + '\' + EplRDFilename + '_org')
      then Log('i',lwLngTrns(name,['% renamed to % in %',
                             EplRDFilename,EplRDFilename + '_org',Dir]));
    end
    else begin;
      if FileExists(Dir + '\' + EplRDFilename + '_bak')
      then begin;
        DeleteFile(Dir + '\' + EplRDFilename + '_bak');
        Log('i',lwLngTrns(name,['% deleted from %',
                          EplRDFilename + '_bak',Dir]));
      end;
      if RenameFile(Dir + '\' + EplRDFilename,Dir + '\' + EplRDFilename + '_bak')
      then log('i',lwLngTrns(name,['% renamed to % in %',
                             EplRDFilename,EplRDFilename + '_bak',Dir]));
    end;
  end;
  AssignFile(tf,Dir + '\' + EplRDFilename);
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
  Log('i',lwLngTrns(name,['Radio User Bouquet index file % saved in %',EplRDFilename,Dir]));

  screen.cursor := crdefault;
  ToolBar1.Enabled := True;
  FormWait.Hide;
  SetMenu('loaded');

  psl.Free;
end;

procedure TFormMain.tbAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal();
end;

procedure TFormMain.puServicesPopup(Sender: TObject);
var
  zks,p: String;
  i: Integer;
  mi: TMenuItem;
  flt: Boolean;
  sl: TStringList;
begin
  if EnableZap
  then begin;
    case ZapKey of
      26: zks := 'Ctrl+Z';
      32: zks := 'Spacebar';
      else zks := 'Dbl-Click';
    end;
    puServices.Items[0].Caption := lwLngTrns(name,['Zap to service                 %',zks])
  end
  else puServices.Items[0].Caption := lwLngTrns(name,['ZAP to service (disabled in options)']);

  puServices.Items[2].Items[0].Caption := lwLngTrns(name,['Make Bouquet for this satellite']);
  puServices.Items[2].Items[3].Caption := lwLngTrns(name,['Make Bouquet for this package']);
  for i := 0 to puServices.Items.Count - 1 do
    puServices.Items[i].Enabled := False;
  puServices.Items[2].Items[0].Enabled := False;
  puServices.Items[2].Items[1].Enabled := False;
  puServices.Items[2].Items[2].Enabled := False;
  puServices.Items[2].Items[3].Enabled := False;
  puServices.Items[12].Items[0].Enabled := False;

  if lvServ.Items.Count > 0
  then begin;
    puServices.Items[10].Enabled := True;
    puServices.Items[21].Enabled := True;
    puServices.Items[22].Enabled := True;
  end;

  if lvServ.Selected <> nil
  then begin;
    puServices.Items[2].Enabled := True;
    puServices.Items[2].Items[1].Enabled := True;
    puServices.Items[2].Items[4].Enabled := True;
    puServices.Items[4].Enabled := True;
    puServices.Items[5].Enabled := True;
    puServices.Items[12].Enabled := True;
    puServices.Items[12].Items[0].Enabled := True;
    puServices.Items[18].Enabled := True;
    puServices.Items[19].Enabled := True;
    puServices.Items[20].Enabled := True;
    if lvServ.SelCount = 1
    then begin;
      puServices.Items[2].Items[0].Caption := lwLngTrns(name,['Make Bouquet for satellite %',
                                              lvServ.Selected.SubItems[3]]);
      puServices.Items[2].Items[3].Caption := lwLngTrns(name,['Make Bouquet for package %',
                                              lvServ.Selected.SubItems[0]]);
      if EnableZap
      then puServices.Items[0].Enabled := True;
      puServices.Items[2].Items[0].Enabled := True;
      puServices.Items[2].Items[3].Enabled := True;
      puServices.Items[6].Enabled := True;
      puServices.Items[8].Enabled := True;
      puServices.Items[9].Enabled := True;
      puServices.Items[11].Enabled := True;

      { Build Delete Satellite submenu items }
      flt := cdsServ.Filtered;
      cdsServ.Filtered := False;
      sl := TStringList.Create;
      sl.Sorted := True;
      cdsServ.First;
      while not cdsServ.Eof do begin;
        if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
        then
          if cdsPos.FieldByName('posName').AsString <> ''
          then p := cdsPos.FieldByName('posName').AsString
          else p := cdsServ.FieldByName('servPos').AsString
        else p := cdsServ.FieldByName('servPos').AsString;

        if sl.IndexOf(p) < 0
        then sl.Add(p);
        cdsServ.Next;
      end;
      cdsServ.Filtered := flt;

      puServices.Items[6].Clear;
      for i := 0 to sl.Count - 1 do begin;
        if Trim(sl[i]) <> ''
        then begin;
          mi := TMenuItem.Create(Self);
          mi.Checked := True;
          mi.Caption := sl[i];
          mi.OnClick := Deletesatellite;
          puServices.Items[6].Add(mi);
        end;
      end;
      sl.Free;
    end;
  end;
  if lvServ.SelCount > 0
  then begin;
    puServices.Items[14].Enabled := True;
    puServices.Items[15].Enabled := True;
    puServices.Items[23].Enabled := True;
  end;
  if (tbFiles.Enabled) and
     (IsClipboardFormatAvailable(ClipBFormat)) and
     (lvServ.SelCount = 1)
  then puServices.Items[16].Enabled := True;

  FormatPopupMenu(puServices);
end;

procedure TFormMain.EditDetails1Click(Sender: TObject);
begin
  if lvServ.Selected = nil
  then exit;

  cdsSERV.Locate('servDbeNr',lvServ.Selected.SubItems[20],[]);

  FormDetail.bSave.Caption := lwLngTrns(name,['Save']);
  FormDetail.bSave.Tag := 0;
  if FormDetail.ShowModal = mrOK
  then begin;
    lvServ.Items.Count := cdsServ.RecordCount;
    ServEdit := False;
    lvServ.Refresh;
    SetMenu('changed');
    TotalsBuild();
  end;  
end;


procedure TFormMain.CopyEditThisService1Click(Sender: TObject);
begin
  if lvServ.Selected = nil
  then exit;

  cdsSERV.Locate('servDbeNr',lvServ.Selected.SubItems[20],[]);

  FormDetail.bSave.Caption := lwLngTrns(name,['Add']);
  FormDetail.bSave.Tag := 1;
  if FormDetail.ShowModal = mrOK
  then begin;
    lvServ.Items.Count := cdsServ.RecordCount;
    ServEdit := False;
    lvServ.Refresh;  
    SetMenu('changed');
    TotalsBuild();
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key,s: String;
  d1,d2: TDate;
  d: Real;
  i,j,wpl,wprl,wprr: Integer;
  wn: TStringList;
begin
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
  else Height := 567;
  Key := Name+'.Width';
  if Reg.ValueExists(key)
  then Width := Reg.ReadInteger(key)
  else Width := 907;

  Key := 'lwPanelL.Width';
  if Reg.ValueExists(key)
  then wpl := Reg.ReadInteger(key)
  else wpl := 526;
  Key := 'lwPanelRR.Width';
  if Reg.ValueExists(key)
  then wprr := Reg.ReadInteger(key)
  else wprr := 175;
  Key := 'lwPanelRL.Width';
  if Reg.ValueExists(key)
  then wprl := Reg.ReadInteger(key)
  else wprl := 188;
  lwPanelR.Width := wprl + wprr + 5;

  lwPanelL.Width := wpl;
  lwPanelRR.Width := wprr;
  lwPanelRL.Width := wprl;

  lvServ.Width := lwPanelL.Width - 4;
  lvDet.Width := lwPanelRL.Width - 5;
  tv.Width := lwPanelRR.Width - 3;

  if Reg.ValueExists('MainDisplayColor')
  then MainColor := Reg.ReadInteger('MainDisplayColor')
  else begin;
    MainColor := $00F9E9DB;
    Reg.WriteInteger('MainDisplayColor',MainColor);
  end;
  if Reg.ValueExists('MainSplitterColor')
  then SplitterColor := Reg.ReadInteger('MainSplitterColor')
  else begin;
    SplitterColor := clSkyBlue;
    Reg.WriteInteger('MainSplitterColor',SplitterColor);
  end;

  ToolBar1.Color := MainColor;
  lwPanelL.Color := MainColor;
  lwPanelL.Color2 := MainColor;
  lwPanelRL.Color := MainColor;
  lwPanelRL.Color2 := MainColor;
  lwPanelRR.Color := MainColor;
  lwPanelRR.Color2 := MainColor;
  LWPanel2.Color1 := MainColor;
  LWPanel3.Color1 := MainColor;
  LWPanel4.Color1 := MainColor;
  Splitter1.Color := SplitterColor;
  Splitter2.Color := SplitterColor;

  for i := 0 to lvServ.Columns.Count - 1 do begin;
    Key := 'lvServ.' + IntToStr(i) + '.Width';
    if Reg.ValueExists(Key)
    then lvServ.Columns.Items[i].Width := Reg.ReadInteger(Key);
  end;

  for i := 0 to lvDet.Columns.Count - 1 do begin;
    Key := 'lvDet.' + IntToStr(i) + '.Width';
    if Reg.ValueExists(Key)
    then lvDet.Columns.Items[i].Width := Reg.ReadInteger(Key);
  end;

  if Reg.ValueExists('ShowServiceDetails')
  then ShowDetails := Reg.ReadBool('ShowServiceDetails')
  else begin;
    ShowDetails := True;
    Reg.WriteBool('ShowServiceDetails',ShowDetails);
  end;

  if Reg.ValueExists('ConfirmBeforeDelete')
  then ConfirmDelete := Reg.ReadBool('ConfirmBeforeDelete')
  else begin;
    ConfirmDelete := True;
    Reg.WriteBool('ConfirmBeforeDelete',ConfirmDelete);
  end;

  if Reg.ValueExists('ConfirmBeforeSort')
  then ConfirmSort := Reg.ReadBool('ConfirmBeforeSort')
  else begin;
    ConfirmSort := True;
    Reg.WriteBool('ConfirmBeforeSort',ConfirmSort);
  end;

  if Reg.ValueExists('PiconActivate')
  then PiconActivate := Reg.ReadBool('PiconActivate')
  else begin
    PiconActivate := False;
    Reg.WriteBool('PiconActivate',PiconActivate);
  end;

  if Reg.ValueExists('PiconUpload')
  then PiconUpload := Reg.ReadBool('PiconUpload')
  else begin
    PiconUpload := False;
    Reg.WriteBool('PiconUpload',PiconUpload);
  end;

  if Reg.ValueExists('ShowResultMessages')
  then ShowResultMsg := Reg.ReadBool('ShowResultMessages')
  else begin;
    ShowResultMsg := True;
    Reg.WriteBool('ShowResultMessages',ShowResultMsg);
  end;

  if Reg.ValueExists('AutoloadAtStart')
  then Autoload := Reg.ReadBool('AutoloadAtStart')
  else begin;
    Autoload := False;
    Reg.WriteBool('AutoloadAtStart',Autoload);
  end;

  if Reg.ValueExists('Enable ZAP function')
  then EnableZAP := Reg.ReadBool('Enable ZAP function')
  else begin;
    EnableZAP := False;
    Reg.WriteBool('Enable ZAP function',EnableZAP);
  end;

  if Reg.ValueExists('ZAP Key')
  then ZAPKey := Reg.ReadInteger('ZAP Key')
  else begin;
    ZAPKey := 26;
    Reg.WriteInteger('ZAP Key',ZAPKey);
  end;

  if Reg.ValueExists('Disable ZAP Error Checking')
  then ZAPNoErrorCheck := Reg.ReadBool('Disable ZAP Error Checking')
  else begin;
    ZAPNoErrorCheck := False;
    Reg.WriteBool('Disable ZAP Error Checking',ZAPNoErrorCheck);
  end;

  if Reg.ValueExists('Dreambox IP Address')
  then DBIP := Reg.ReadString('Dreambox IP Address')
  else begin;
    DBIP := '192.168.0.5';
    Reg.WriteString('Dreambox IP Address',DBIP);
  end;

  if Reg.ValueExists('Dreambox HTTP Port Number')
  then DBHTTPPort := Reg.ReadString('Dreambox HTTP Port Number')
  else begin;
    DBHTTPPort := '80';
    Reg.WriteString('Dreambox HTTP Port Number',DBHTTPPort);
  end;

  if Reg.ValueExists('Dreambox FTP Port Number')
  then DBFTPPort := Reg.ReadString('Dreambox FTP Port Number')
  else begin;
    DBFTPPort := '21';
    Reg.WriteString('Dreambox FTP Port Number',DBFTPPort);
  end;

  if Reg.ValueExists('Dreambox Username')
  then DBUsername := Reg.ReadString('Dreambox Username')
  else begin;
    DBUsername := 'root';
    Reg.WriteString('Dreambox Username',DBUsername);
  end;

  if Reg.ValueExists('Dreambox Password')
  then DBPassword := Reg.ReadString('Dreambox Password')
  else begin;
    DBPassword := 'dreambox';
    Reg.WriteString('Dreambox Password',DBPassword);
  end;

  if Reg.ValueExists('FTP Type Passive')
  then FTPPassive := Reg.ReadBool('FTP Type Passive')
  else begin;
    FTPPassive := True;
    Reg.WriteBool('FTP Type Passive',FTPPassive);
  end;

  if Reg.ValueExists('Path Services')
  then PathServices := Reg.ReadString('Path Services')
  else begin;
    PathServices := '/var/tuxbox/config/enigma/';
    Reg.WriteString('Path Services',PathServices);
  end;

  if Reg.ValueExists('Path UserBouquets')
  then PathUserBouquets := Reg.ReadString('Path UserBouquets')
  else begin;
    PathUserBouquets := '/var/tuxbox/config/enigma/';
    Reg.WriteString('Path UserBouquets',PathUserBouquets);
  end;

  if Reg.ValueExists('Path Satellites')
  then PathSatellites := Reg.ReadString('Path Satellites')
  else begin;
    PathSatellites := '/var/etc/';
    Reg.WriteString('Path Satellites',PathSatellites);
  end;

  if Reg.ValueExists('Path Picons')
  then PathPicons := Reg.ReadString('Path Picons')
  else begin
    PathPicons := '/media/usb/picons/';
    Reg.WriteString('Path Picons', PathPicons);
  end;

  if Reg.ValueExists('Profiles Name')
  then ProfilesName := Reg.ReadString('Profiles Name')
  else begin;
    ProfilesName := '(Default)';
    Reg.WriteString('Profiles Name',ProfilesName);
    Reg.WriteString('Profiles Name 0',ProfilesName);
    Reg.WriteString('Profiles IP Address 0',DBIP);
    Reg.WriteString('Profiles HTTP Port 0',DBHTTPPort);
    Reg.WriteString('Profiles FTP Port 0',DBFTPPort);
    Reg.WriteString('Profiles Username 0',DBUsername);
    Reg.WriteString('Profiles Password 0',DBPassword);
    Reg.WriteBool('Profiles FTP Type Passive 0',FTPPassive);
    Reg.WriteString('Profiles Path Services 0',PathServices);
    Reg.WriteString('Profiles Path Userbouquets 0',PathUserbouquets);
    Reg.WriteString('Profiles Path Satellites 0',PathSatellites);
    Reg.WriteString('Profiles Path Picons 0', PathPicons);
    Reg.WriteInteger('Profiles',1);
  end;

  if Reg.ValueExists('User Telnet Command')
  then UserTelnetCmd := Reg.ReadString('User Telnet Command')
  else begin;
    UserTelnetCmd := '';
    Reg.WriteString('User Telnet Command',UserTelnetCmd);
  end;

  if Reg.ValueExists('Dreambox Command Prompt')
  then DreamboxCmdPrompt := Reg.ReadString('Dreambox Command Prompt')
  else begin;
    DreamboxCmdPrompt := '~ >';
    Reg.WriteString('Dreambox Command Prompt',DreamboxCmdPrompt);
  end;

  if Reg.ValueExists('QuickFTP Enabled')
  then QuickFTPEnabled := Reg.ReadBool('QuickFTP Enabled')
  else begin;
    QuickFTPEnabled := False;
    Reg.WriteBool('QuickFTP Enabled',QuickFTPEnabled);
  end;

  if Reg.ValueExists('QuickFTP Reload')
  then begin;
    QuickFTPReload := Reg.ReadBool('QuickFTP Reload');
    QuickFTPReboot := Reg.ReadBool('QuickFTP Reboot');
    QuickFTPCustomCmd := Reg.ReadBool('QuickFTP Custom Command');
    QuickFTPNothing := Reg.ReadBool('QuickFTP Nothing');
  end
  else begin;
    QuickFTPReload := True;
    Reg.WriteBool('QuickFTP Reload',QuickFTPReload);
    QuickFTPReboot := False;
    Reg.WriteBool('QuickFTP Reboot',QuickFTPReboot);
    QuickFTPCustomCmd := False;
    Reg.WriteBool('QuickFTP Custom Command',QuickFTPCustomCmd);
    QuickFTPNothing := False;
    Reg.WriteBool('QuickFTP Nothing',QuickFTPNothing);
  end;

  if Reg.ValueExists('Save TV and Radio Checkbox')
  then saveTVRadio := Reg.ReadBool('Save TV and Radio Checkbox')
  else begin;
    SaveTVRadio := False;
    Reg.WriteBool('Save TV and Radio Checkbox',SaveTVRadio);
  end;
  if not SaveTVRadio
  then begin;
    cbTVRadio.ItemIndex := 0;
    Reg.WriteInteger('TV and Radio Services Selection',0);
  end
  else cbTVRadio.ItemIndex := Reg.ReadInteger('TV and Radio Services Selection');

  if Reg.ValueExists('AllowDuplicates')
  then AllowDuplicates := Reg.ReadBool('AllowDuplicates')
  else begin;
    AllowDuplicates := False;
    Reg.WriteBool('AllowDuplicates',AllowDuplicates);
  end;

  if Reg.ValueExists('Show Reboot Option')
  then ShowReboot := Reg.ReadBool('Show Reboot Option')
  else begin;
    ShowReboot := False;
    Reg.WriteBool('Show Reboot Option',ShowReboot);
  end;

  if Reg.ValueExists('SortUseServicename')
  then SortUseService := Reg.ReadBool('SortUseServicename')
  else begin;
    SortUseService := True;
    Reg.WriteBool('SortUseServicename',SortUseService);
  end;

  if Reg.ValueExists('Show Details Hint')
  then ShowDetHint := Reg.ReadBool('Show Details Hint')
  else begin;
    ShowDetHint := True;
    Reg.WriteBool('Show Details Hint',ShowDetHint);
  end;


  s := '';
  if Reg.ValueExists('AutoCheckVersionLastVersionChecked')
  then s := Reg.ReadString('AutoCheckVersionLastVersionChecked');
  if s < FormAbout._lVersion.Caption
  then Reg.DeleteValue('AutoCheckVersion');
  Reg.WriteString('AutoCheckVersionLastVersionChecked',FormAbout._lVersion.Caption);

  if Reg.ValueExists('AutoCheckVersion')
  then AutoCheckVersion := Reg.ReadBool('AutoCheckVersion')
  else begin;
    if MessageDlg(lwLngTrns(name,['Do you want DreamBoxEdit to check for a newer version ' +
                                  'on a regular base?~' +
                                  '(You can later always change this setting on the options panel)']),
                  mtConfirmation,[mbYes,mbNo],0) = mrYes
    then AutoCheckVersion := True
    else AutoCheckVersion := False;
    Reg.WriteBool('AutoCheckVersion',AutoCheckVersion);
  end;

  if Reg.ValueExists('AutoCheckDays')
  then AutoCheckDays := Reg.ReadInteger('AutoCheckDays')
  else begin;
    AutoCheckDays := 0;
    Reg.WriteInteger('AutoCheckDays',AutoCheckDays);
  end;

  if Reg.ValueExists('NewSatXMLBottom')
  then NewSatXMLBottom := Reg.ReadBool('NewSatXMLBottom')
  else begin;
    NewSatXMLBottom := False;
    Reg.WriteBool('NewSatXMLBottom',NewSatXMLBottom);
  end;

  if Reg.ValueExists('FormatWordsListCount')
  then begin;
    i := Reg.ReadInteger('FormatWordsListCount');
    for j := 0 to i -1 do begin;
      FormatWordsList.Add(Reg.ReadString('FormatWordsList' + IntToStr(j)));
    end;
  end
  else Reg.WriteInteger('FormatWordsListCount',0);

  if Reg.ValueExists('TVTypes')
  then TVTypes.Text := Reg.ReadString('TVTypes')
  else begin;
    TVTypes.Clear;
    TVTypes.Add('1');
    TVTypes.Add('4');
    Reg.WriteString('TVTypes',TVTypes.Text);
  end;

  if Reg.ValueExists('RDTypes')
  then RDTypes.Text := Reg.ReadString('RDTypes')
  else begin;
    RDTypes.Clear;
    RDTypes.Add('2');
    Reg.WriteString('RDTypes',RDTypes.Text);
  end;

  if (autoload) and
     (Reg.ValueExists('LastUsedDirectory'))
  then Dir := Reg.ReadString('LastUsedDirectory')
  else Dir := '';

  if Reg.ValueExists('HidePassword')
  then HidePassword := Reg.ReadBool('HidePassword')
  else begin;
    HidePassword := False;
    Reg.WriteBool('HidePassword',HidePassword);
  end;

  Reg.CloseKey;
  Reg.Destroy;

  cbSatName.ItemIndex := 0;
  ePackage.Text := '';
  lvServColumnsAdjust();

  lvDetSortDescending := False;
  lvDetColumnToSort := 999;

  log('i',lwLngTrns(name,['DreamBoxEdit % started',
                          FormAbout._lVersion.Caption]));

  { Default blacklist, unless later on specified different in config file from Dreambox }
  BlackList := True;
  sb.Panels[4].Text := 'Parental control: Blacklist';

  Loading := False;

  if Autoload
  then begin;
    if Dir <> ''
    then begin;
      AutoOpen := True;
      tbOpen.Click();
    end;
  end;
  
  if QuickFTPEnabled
  then begin;
    tbFFTPDown.Visible := True;
    tbFFTPUp.Visible := True;
  end
  else begin;
    tbFFTPDown.Visible := False;
    tbFFTPUp.Visible := False;
  end;

  if AutoCheckVersion
  then begin;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    if Reg.ValueExists('AutoCheckLastDate')
    then d1 := DateOf(Reg.ReadDate('AutoCheckLastDate'))
    else d1 := DateOf(now());
    Reg.CloseKey;
    Reg.Destroy;

    d2 := DateOf(Now());
    d := d2 - d1;
    if d >= AutoCheckDays
    then TimerCheckVersion.Enabled := True;
  end;

  StatusBarShowIpInfo();
  
  { First time this version or changed "version notes.txt" file? }
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if (FileExists('Version notes.txt') and
     (Reg.ValueExists('First time ' + FormAbout._lVersion.Caption)))
  then begin;
    if Reg.ReadInteger('First time ' + FormAbout._lVersion.Caption) <> FileAge('Version notes.txt')
    then Reg.DeleteValue('First time ' + FormAbout._lVersion.Caption);
  end;

  if not Reg.ValueExists('First time ' + FormAbout._lVersion.Caption)
  then begin;
    if FileExists('Version notes.txt')
    then begin;
      wn := TStringList.Create;
      wn.LoadFromFile('Version notes.txt');
      if MessageDlg(lwLngTrns(name,['New version notes:~~ % ~~' +
                                    'Do you want to show this message again next ' +
                                    'time you start DreamBoxEdit?',
                                    wn.Text]),
                    mtinformation,[mbYes,mbNo],0,) = mrNo
      then Reg.WriteInteger('First time ' + FormAbout._lVersion.Caption,FileAge('Version notes.txt'));
      wn.Free;
    end;
  end;
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormMain.tbFilesClick(Sender: TObject);
begin
  FormFiles.ShowModal;
end;

procedure TFormMain.DeletefromallBouquets1Click(Sender: TObject);
var
  c,p,i: Integer;
  mult: Boolean;
  DbeNr,sifBQ,sifTV,sifRD: String;
begin
  if lvServ.Selected = nil
  then exit;

  p := 0;
  mult := False;
  if lvServ.SelCount > 1
  then begin;
    mult := True;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvServ.SelCount;
    FormWait.pb.Position := 0;
    FormWait.Show;
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
  end;
  lvServ.Items.BeginUpdate;

  c := 0;
  sifBQ := cdsFBQ.IndexFieldNames;
  cdsFBQ.IndexFieldNames := 'fbqDbeNr';
  sifTV := cdsFTV.IndexFieldNames;
  cdsFTV.IndexFieldNames := 'ftvDbeNr';
  sifRD := cdsFRD.IndexFieldNames;
  cdsFRD.IndexFieldNames := 'frdDbeNr';
  while lvServ.Selected <> nil
  do begin;
    if mult
    then begin;
      inc(p);
      FormWait.pb.Position := p;
    end;
    DbeNr := lvServ.Selected.SubItems[20];
    while cdsFBQ.FindKey([DbeNr])
    do begin;
      log('i',lwLngTrns(name,['Deleted % from bouquet number %',
                         lvServ.Selected.Caption,cdsFBQ.FieldByName('fbqSetNr').AsString]));
      cdsFBQ.Delete;
      inc(c);
    end;

    while cdsFTV.FindKey([DbeNr])
    do begin;
      log('i',lwLngTrns(name,['Deleted % from TV user bouquet number %',
                         lvServ.Selected.Caption,cdsFTV.FieldByName('ftvSetNr').AsString]));
      cdsFTV.Delete;
      inc(c);
    end;
    while cdsFRD.FindKey([DbeNr])
    do begin;
      log('i',lwLngTrns(name,['Deleted % from Radio user bouquet number %',
                              lvServ.Selected.Caption,
                              cdsFRD.FieldByName('frdSetNr').AsString]));
      cdsFRD.Delete;                                                   
      inc(c);
    end;

    for i := lvDet.Items.Count - 1 downto 0 do begin;
      if lvDet.Items.Item[i].SubItems[10] = DbeNr
      then begin;
        lvDet.Items.Item[i].Delete;
        DetChanged := True;
      end;
    end;

    lvServ.Selected.Selected := False;
  end;
  cdsFBQ.IndexFieldNames := sifBQ;
  cdsFTV.IndexFieldNames := sifTV;
  cdsFRD.IndexFieldNames := sifRD;

  lvServ.Items.EndUpdate;
  if mult
  then begin;
    FormWait.Hide;
    Screen.Cursor := crDefault;
  end;
  TotalsBuild();

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% entries deleted from one or more bouquets.',IntToStr(c)]),
                  mtInformation,[mbOk],0);
  if c > 0
  then SetMenu('changed');
end;

procedure TFormMain.DeleteService1Click(Sender: TObject);
var
  DbeNr,s,sifTV,sifRD,sifBQ: String;
  c,i,j,p,sc: Integer;
  mult: Boolean;
begin
  if lvServ.Selected = nil
  then exit;

  sc := lvServ.SelCount;
  p := 0;
  mult := False;
  if lvServ.SelCount > 1
  then mult := True;

  s := lvServ.Selected.Caption;
  if not mult
  then begin;
    if ConfirmDelete
    then
      if MessageDlg(lwLngTrns(name,['Are you sure you want to delete service "%" from '+
                    'all lists?',s]),
                    mtConfirmation,[mbYes,mbNo],0,) <> mrYes
      then exit;
  end
  else begin;
    if ConfirmDelete
    then
      if MessageDlg(lwLngTrns(name,['Are you sure you want to delete % ' +
                    'services from all lists?',IntToStr(lvServ.SelCount)]),
                    mtConfirmation,[mbYes,mbNo],0,) <> mrYes
      then exit;
  end;

  if mult
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvServ.SelCount;
    FormWait.pb.Position := 0;
    FormWait.Show;
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
  end;
  lvServ.Items.BeginUpdate;

  sifBQ := cdsFBQ.IndexFieldNames;
  cdsFBQ.IndexFieldNames := 'fbqDbeNr';
  sifTV := cdsFTV.IndexFieldNames;
  cdsFTV.IndexFieldNames := 'ftvDbeNr';
  sifRD := cdsFRD.IndexFieldNames;
  cdsFRD.IndexFieldNames := 'frdDbeNr';
  c := 0;
  for i := lvServ.Items.Count - 1 downto 0 do begin;
    if not lvServ.Items[i].Selected
    then continue;

    if mult
    then begin;
      inc(p);
      FormWait.pb.Position := p;
    end;

    DbeNr := lvServ.Items[i].SubItems[20];
    s := lvServ.Items[i].Caption;
    c := 0;
    while cdsFBQ.FindKey([DbeNr])
    do begin;
      inc(c);
      cdsFBQ.Delete;
    end;
    while cdsFTV.FindKey([DbeNr])
    do begin;
      inc(c);
      cdsFTV.Delete;
    end;

    while cdsFRD.FindKey([DbeNr])
    do begin;
      inc(c);
      cdsFRD.Delete;
    end;

    if c > 0
    then begin;
      for j := lvDet.Items.Count - 1 downto 0 do begin;
        if lvDet.Items[j].SubItems[10] = DbeNr
        then begin;
          lvDet.Items[j].Delete;
          DetChanged := True;
        end;
      end;
    end;

    cdsServ.Locate('servDbeNr',DbeNr,[]);
    cdsServ.Delete;
    lvServ.Items.Count := cdsServ.RecordCount;
    log('i',lwLngTrns(name,['Service % deleted from services and from % bouquet(s)',
                            s,IntToStr(c)]));
    SetMenu('changed');
  end;
  cdsFTV.IndexFieldNames := sifTV;
  cdsFRD.IndexFieldNames := sifRD;
  cdsFBQ.IndexFieldNames := sifBQ;

  lvServ.Items.EndUpdate;
  if mult
  then begin;
    FormWait.Hide;
    Screen.Cursor := crDefault;
  end;
  TotalsBuild();
  if (ShowResultMsg)
  then
    if not mult
    then MessageDlg(lwLngTrns(name,['Service % deleted from services ' +
                               'and from % bouquet(s)',s,IntToStr(c)]),
                    mtInformation,[mbOK],0)
    else MessageDlg(lwLngTrns(name,['% services deleted from services and from  ' +
                               '% bouquet(s)',IntToStr(sc),IntToStr(c)]),
                    mtInformation,[mbOK],0);
end;

procedure TFormMain.tbLogClick(Sender: TObject);
begin
  FormLog.ShowModal;
end;

procedure TFormMain.MakeBouquetforthissatellite1Click(Sender: TObject);
var
  b: String;
  new: Boolean;
  p: String;
  c: Integer;
  item: TListItem;
  flt: Boolean;
begin
  if (cdsPos.FindKey([StrToFloat(lvServ.Selected.SubItems[8])*10])) and
     (cdsPos.FieldByName('PosName').AsString <> '')
  then FormAdd.eBouquet.Text := '@' + cdsPos.FieldByName('PosName').AsString
  else FormAdd.eBouquet.Text := '';
  if FormAdd.ShowModal = mrOK
  then begin;
    new := False;

    if FormAdd.eBouquet.Text <> ''
    then begin;
      b := FormAdd.eBouquet.Text;
      new := True;
    end
    else b := FormAdd.lbBouquets.Items[FormAdd.lbBouquets.Itemindex];

    c := 0;
    p := FloatToStr(StrToFloat(lvServ.Selected.SubItems[8])*10);

    flt := cdsServ.Filtered;
    cdsServ.Filtered := False;
    cdsServ.First;
    while not cdsServ.Eof
    do begin;
      if cdsServ.FieldByName('servPos').AsString = p
      then begin;
        if cdsFBQ.FindKey([FormAdd.bOK.Tag,
                           cdsServ.FieldByName('servSID').AsString,
                           cdsServ.FieldByName('servUniq').AsString,
                           cdsServ.FieldByName('servTSID').AsString,
                           cdsServ.FieldByName('servNID').AsString,
                           cdsServ.FieldByName('servType').AsString])
        then log('w',lwLngTrns(name,[
                     'Create bouquet % for satellite position %: service % already in bouquet %',
                     b,
                     lvServ.Selected.SubItems[8],
                     CleanText(cdsServ.FieldByName('servName').AsString),
                     b]))
        else begin;
          cdsFBQ.Append;
          cdsFBQ.FieldByName('fbqSeqNr').AsInteger := 0;
          cdsFBQ.FieldByName('fbqName').AsString := CleanText(cdsServ.FieldByName('servName').AsString);
          cdsFBQ.FieldByName('fbqSID').AsString := cdsServ.FieldByName('servSID').AsString;
          cdsFBQ.FieldByName('fbqUniq').AsString := cdsServ.FieldByName('servUniq').AsString;
          cdsFBQ.FieldByName('fbqTSID').AsString := cdsServ.FieldByName('servTSID').AsString;
          cdsFBQ.FieldByName('fbqNID').AsString := cdsServ.FieldByName('servNID').AsString;
          cdsFBQ.FieldByName('fbqServType').AsString := cdsServ.FieldByName('servType').AsString;
          cdsFBQ.FieldByName('fbqSetNr').AsInteger := FormAdd.bOK.Tag;
          cdsFBQ.FieldByName('fbqDescr').AsString := '';
          cdsFBQ.FieldByName('fbqDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
          cdsFBQ.FieldByName('fbqT').AsString := 'n';
          cdsFBQ.Post;

          inc(c);

          if (DetType = 'P') and
             (DetSetNr = FormAdd.bOK.Tag)
          then begin;
            item := lvDet.Items.Add;
            item.Caption := cdsFBQ.FieldValues['fbqName'];

            item.SubItems.Add(TrnsServType(cdsFBQ.FieldByName('fbqServType').AsInteger));

            item.SubItems.Add(Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]));
            item.SubItems.Add(cdsFBQ.FieldByName('fbqSID').AsString);
            item.SubItems.Add(cdsFBQ.FieldByName('fbqTSID').AsString);
            item.SubItems.Add(cdsFBQ.FieldByName('fbqNID').AsString);
            item.SubItems.Add(cdsFBQ.FieldByName('fbqServType').AsString);
            item.SubItems.Add(cdsFBQ.FieldByName('fbqUniq').AsString);
            item.SubItems.Add(cdsFBQ.FieldByName('fbqSetNr').AsString);
            item.SubItems.Add('');
            if cdsServ.FieldByName('servLock').AsInteger = 1
            then item.SubItems.Add('1')
            else item.SubItems.Add('0');
            item.SubItems.Add(cdsFBQ.FieldByName('fbqDbeNr').AsString);
            item.SubItems.Add('n');

            DetChanged := True;
          end;

          if new
          then log('i',lwLngTrns(name,['Service % added to new bouquet %',
                                  CleanText(cdsServ.FieldByName('servName').AsString),b]))
          else log('i',lwLngTrns(name,['Service % added to bouquet %',
                                  CleanText(cdsServ.FieldByName('servName').AsString),b]));
        end;
      end;
      cdsServ.Next;
    end;
    cdsServ.Filtered := flt;

    TotalsBuild();

    if ShowResultMsg
    then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',IntToStr(c),b]),
                    mtInformation,[mbOK],0);
    if c > 0
    then SetMenu('changed');
  end;
end;

procedure TFormMain.MakeaBouquetperSatellite1Click(Sender: TObject);
var
  b,bl,bnr: String;
  i,cb,cs,p: Integer;
  bsl: TStringList;
  NewBouq: Boolean;
  ld: TLIstData;
  pListData: ^TListData;
begin
  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;

  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsServ.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;
  p := 0;

  cb := 0;
  cs := 0;
  bl := '';
  bsl := TStringList.Create;
  bsl.Sorted := True;
  bsl.CaseSensitive := True;

  cdsServ.First;
  while not cdsServ.Eof
  do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    if (cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])) and
       (cdsPos.FieldByName('PosName').AsString <> '')
    then b := '@' + cdsPos.FieldByName('PosName').AsString
    else b := '@Satellite at ' +
              cdsServ.FieldByName('servPos').AsString;

    { get current or new bouquet sequence number }
    NewBouq := False;
    bnr := bsl.Values[b];
    if bnr = ''
    then begin;
      for i := 0 to tv.Items.Count - 1 do begin;
        if (tv.Items.Item[i].Level = 1) and
           (tv.Items.Item[i].Parent.Text[1] = 'P')
        then begin;
          if tv.Items.Item[i].Text = b
          then begin;
            pListData := tv.Items.Item[i].Data;
            bnr := IntToStr(pListData.Number);
            break;
          end;
        end;
      end;
      if bnr = ''
      then begin;
        NewBouq := True;
        ld := NewBouquet('P');
        bnr := IntToStr(ld.Number);
      end;
    end;

    { add service to bouquet }
    if cdsFBQ.FindKey([bnr,
                       cdsServ.FieldByName('servSID').AsString,
                       cdsServ.FieldByName('servUniq').AsString,
                       cdsServ.FieldByName('servTSID').AsString,
                       cdsServ.FieldByName('servNID').AsString,
                       cdsServ.FieldByName('servType').AsString])
    then begin;
      log('w',lwLngTrns(name,['Creating bouquet per position: service % already in bouquet %',
                         CleanText(cdsServ.FieldByName('servName').AsString),b]));
    end
    else begin;
      cdsFBQ.Append;
      cdsFBQ.FieldByName('fbqSeqNr').AsInteger := 0;
      cdsFBQ.FieldByName('fbqName').AsString := CleanText(cdsServ.FieldByName('servName').AsString);
      cdsFBQ.FieldByName('fbqSID').AsString := cdsServ.FieldByName('servSID').AsString;
      cdsFBQ.FieldByName('fbqUniq').AsString := cdsServ.FieldByName('servUniq').AsString;
      cdsFBQ.FieldByName('fbqTSID').AsString := cdsServ.FieldByName('servTSID').AsString;
      cdsFBQ.FieldByName('fbqNID').AsString := cdsServ.FieldByName('servNID').AsString;
      cdsFBQ.FieldByName('fbqServType').AsString := cdsServ.FieldByName('servType').AsString;
      cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
      cdsFBQ.FieldByName('fbqDescr').AsString := '';
      cdsFBQ.FieldByName('fbqDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
      cdsFBQ.FieldByName('fbqT').AsString := 'n';
      cdsFBQ.Post;

      inc(cs);
      log('i',lwLngTrns(name,['Service % added to bouquet % (%)',
                         CleanText(cdsServ.FieldByName('servName').AsString),b,bnr]));

      if bsl.IndexOfName(b) < 0
      then begin;
        bsl.Add(b + '=' + bnr);
        if NewBouq
        then begin;
          new(pListData);
          pListData.FileName := ld.FileName;
          pListData.Number := ld.Number;
          pListData.Locked := False;
          tv.Items.AddChildObject(tnBQ,b,pListData);
          tnBQ.AlphaSort(True);
          inc(cb);
          if bl = ''
          then bl := b
          else bl := bl + ', ' + b;
        end;
      end;
    end;

    cdsServ.Next;
  end;

  if cs > 0
  then SetMenu('changed');
  
  bsl.Free;
  TotalsBuild();

  tnBQ.Expand(True);
  tnTV.Item[0].Selected := True;
  tnTV.Item[0].MakeVisible;

  FormWait.Hide;
  Screen.Cursor := crDefault;
  ToolBar1.Enabled := True;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% services added to bouquets per satellite.~~' +
                             '% new bouquets created:~%',
                             IntToStr(cs),IntToStr(cb),bl]),
                  mtInformation,[mbOK],0);
end;

procedure TFormMain.tbHelpClick(Sender: TObject);
var
  st: Integer;
  f: String;
begin
  f := ExtractFilePath(Application.ExeName) + 'DreamBoxEdit';
  if FileExists(f + '_' + Language + '.chm')
  then f := f + '_' + Language + '.chm'
  else begin;
    log('i',lwLngTrns(name,['No help file in language % found. Defaulted to English',
                      Language]));
    f := f + '_English' + '.chm';
    if not FileExists(f)
    then begin;
      MessageDlg(lwLngTrns(name,['DreamBoxEdit help file "%" not found.',f]),
                 mtError,[mbOK],0);
      log('e',lwLngTrns(name,['DreamBoxEdit help file "%" not found.',f]));
      exit;
    end;
  end;

  st := ShellExecute(0,'open',PChar(f),NIL,NIL,SW_SHOWNORMAL);
  if st <= 32
  then begin;
    showmessage(lwLngTrns(name,['Returncode % from executing "%"',IntToStr(st),f]));
    log('e',lwLngTrns(name,['Returncode % from executing "%"',IntToStr(st),f]));
  end;
end;

procedure TFormMain.tbOptionsClick(Sender: TObject);
begin
  FormOptions.ShowModal;
end;

procedure TFormMain.tbFTPClick(Sender: TObject);
begin
  FormFTP.ShowModal;
end;

procedure TFormMain.lvDetDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if DragDropType = 'Bouq'
  then begin;
    Accept := False;
    exit;
  end;

  Accept := Source is TListView;
  if y < 25
  then timerDetScroll.Enabled := True
  else
    if y > lvDet.Height-15
    then timerDetScroll.Enabled := True;
end;

procedure TFormMain.lvDetDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  item: TListItem;
  pf, newpicon: String;
  pos,i,c: Integer;
  wcds: TClientDataset;
  SkipWarning: Boolean;
begin
  item := lvDet.GetItemAt(x,y);
  if item = nil
  then pos := lvDet.Items.Count
  else pos := item.Index;
  if DragDropType <> 'Det'
  then begin;
    while lvDet.Selected <> nil do begin;
      lvDet.Selected.Selected := False;
    end;
  end;

  if DetType = 'T'
  then begin;
    wcds := cdsFTV;
    pf := 'ftv';
  end
  else
    if DetType = 'R'
    then begin;
      wcds := cdsFRD;
      pf := 'frd';
    end
    else begin;
      wcds := cdsFBQ;
      pf := 'fbq';
    end;

  if DragDropType = 'Serv'
  then begin;
    c := 0;
    SkipWarning := False;
    while lvServ.Selected <> nil
    do begin;
      if (not AllowDuplicates) and
         (wcds.FindKey([IntToStr(DetSetNr),
                        lvServ.Selected.SubItems[9],
                        lvServ.Selected.SubItems[18],
                        lvServ.Selected.SubItems[10],
                        lvServ.Selected.SubItems[11],
                        lvServ.Selected.SubItems[12]]))
      then begin;
        if (not SkipWarning) and
           (MessageDlg(lwLngTrns(name,['Service % already exists in bouquet %~~' +
                                       'Skip this warning for the remainder of this action?',
                                 lvServ.Selected.Caption,_lDetName.Caption]),
                       mtWarning,[mbNo,mbYes],0) = mrYes)
        then SkipWarning := True;
        lvServ.Selected.Selected := False;
        continue;
      end;
      inc(c);
      item := lvDet.Items.Insert(pos);
      item.Caption := lvServ.Selected.Caption;
      item.SubItems.Add(TrnsServType(StrToInt(lvServ.Selected.SubItems[12])));
      item.SubItems.Add(lvServ.Selected.SubItems[8]);
      item.SubItems.Add(lvServ.Selected.SubItems[9]);
      item.SubItems.Add(lvServ.Selected.SubItems[10]);
      item.SubItems.Add(lvServ.Selected.SubItems[11]);
      item.SubItems.Add(lvServ.Selected.SubItems[12]);
      item.SubItems.Add(lvServ.Selected.SubItems[18]);
      item.SubItems.Add(IntToStr(DetSetNr));
      item.SubItems.Add('');
      if (cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])) and
         (cdsServ.FieldByName('servLock').AsInteger = 1)
      then item.SubItems.Add('1')
      else item.SubItems.Add('0');
      item.SubItems.Add(lvServ.Selected.SubItems[20]);
      item.SubItems.Add('n');
      item.Selected := True;
      DetChanged := True;

      wcds.Append;
      wcds.FieldByName(pf+'SeqNr').AsInteger := 0;
      wcds.FieldByName(pf+'Name').AsString := lvServ.Selected.Caption;
      wcds.FieldByName(pf+'SID').AsString := lvServ.Selected.SubItems[9];
      wcds.FieldByName(pf+'Uniq').AsString := lvServ.Selected.SubItems[18];
      wcds.FieldByName(pf+'TSID').AsString := lvServ.Selected.SubItems[10];
      wcds.FieldByName(pf+'NID').AsString := lvServ.Selected.SubItems[11];
      wcds.FieldByName(pf+'ServType').AsString := lvServ.Selected.SubItems[12];
      wcds.FieldByName(pf+'SetNr').AsString := IntToStr(DetSetNr);
      wcds.FieldByName(pf+'Descr').AsString := '';
      wcds.FieldByName(pf+'DbeNr').AsString := lvServ.Selected.SubItems[20];
      wcds.FieldByName(pf+'T').AsString := 'n';

      wcds.Post;
 //picon png start
      if PiconActivate then
      begin
         newpicon := item.Caption+
                     '@1_0_' +
                     IntToHex(StrToInt(lvServ.Selected.SubItems[12]),1) + '_' +
                     IntToHex(StrToInt(lvServ.Selected.SubItems[9]),1)  + '_' +
                     IntToHex(StrToInt(lvServ.Selected.SubItems[10]),1) + '_' +
                     IntToHex(StrToInt(lvServ.Selected.SubItems[11]),1) + '_' +
                     IntToHex(StrToInt(lvServ.Selected.SubItems[18]),1) +
                     '_0_0_0';
         ShowMessage(newpicon);

      end;
 //picon png end

      log('i',lwLngTrns(name,['Service % added to list %',
                              lvServ.Selected.Caption,DetName]));
      lvServ.Selected.Selected := False;
      SetMenu('changed');
      inc(pos);

    end;
    if ShowResultMsg
    then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',
                              IntToStr(c),DetName]),
                    mtInformation,[mbOK],0);
  end;

  if DragDropType = 'Det'
  then begin;
    while lvDet.Selected <> nil do begin;
      i := lvDet.Selected.Index;
      if pos <> lvDet.Selected.Index
      then begin;
        item := lvDet.Items.Insert(pos);
        if pos < i
        then inc(i);
        item.Caption := lvDet.Items[i].Caption;
        item.SubItems.add(lvDet.Items[i].SubItems[0]);
        item.SubItems.add(lvDet.Items[i].SubItems[1]);
        item.SubItems.add(lvDet.Items[i].SubItems[2]);
        item.SubItems.add(lvDet.Items[i].SubItems[3]);
        item.SubItems.add(lvDet.Items[i].SubItems[4]);
        item.SubItems.add(lvDet.Items[i].SubItems[5]);
        item.SubItems.add(lvDet.Items[i].SubItems[6]);
        item.SubItems.add(lvDet.Items[i].SubItems[7]);
        item.SubItems.add(lvDet.Items[i].SubItems[8]);
        item.SubItems.add(lvDet.Items[i].SubItems[9]);
        item.SubItems.add(lvDet.Items[i].SubItems[10]);
        item.SubItems.add(lvDet.Items[i].SubItems[11]);
        lvDet.Items[i].Delete;
        SetMenu('changed');
        DetChanged := True;
        if pos <= i
        then inc(pos);
      end
      else lvDet.Selected.Selected := False;
    end;
  end;

  if (DragDropType <> 'Det') and
     (item <> nil)
  then begin;
    item.Selected := true;
    item.MakeVisible(False);
  end;
  TotalsBuild();
end;

procedure TFormMain.lvDetCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.SubItems[9] = '1'
  then
    if Blacklist
    then lvDet.Canvas.Brush.Color := clRed
    else lvDet.Canvas.Brush.Color := $008AF7A3
  else
    if Item.Index mod 2 = 0
    then lvDet.Canvas.Brush.Color := $00F9FAFB
    else lvDet.Canvas.Brush.Color := clWhite;
  lvDet.Canvas.FillRect(Item.DisplayRect(drBounds));

  if Item.SubItems[11] = 'm'
  then lvDet.Canvas.Font.Color := clRed
  else
    if Item.SubItems[11] = 'r'
    then lvDet.Canvas.Font.Color := clGreen
    else
      if Item.SubItems[8] <> ''
      then lvDet.Canvas.Font.Color := clBlue
      else lvDet.Canvas.Font.Color := clBlack;
end;

procedure TFormMain.DetDeleteEntryClick(Sender: TObject);
var
  mult: Boolean;
  c,p: Integer;
  pf,s: String;
  wcds: TClientDataset;
begin
  if lvDet.Selected = nil
  then exit;

  if MessageDlg(lwLngTrns(name,['Are you sure you want to delete % services ' +
                                'from this bouquet?',
                                IntToStr(lvDet.SelCount)]),
                mtConfirmation,[mbYes,mbNo],0,) <> mrYes
  then exit;

  p := 0;
  mult := False;
  if lvDet.SelCount > 1
  then begin;
    mult := True;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvDet.SelCount;
    FormWait.pb.Position := 0;
    FormWait.Show;
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
  end;
  lvDet.Items.BeginUpdate;

  if DetType = 'T'
  then begin;
    wcds := cdsFTV;
    pf := 'ftv';
  end
  else
    if DetType = 'R'
    then begin;
      wcds := cdsFRD;
      pf := 'frd';
    end
    else begin;
      wcds := cdsFBQ;
      pf := 'fbq';
    end;

  s := lvDet.Selected.Caption;
  c := 0;
  while lvDet.Selected <> nil
  do begin;
    if mult
    then begin;
      inc(p);
      FormWait.pb.Position := p;
    end;

    if not wcds.FindKey([IntToStr(DetSetNr),
                         lvDet.Selected.SubItems[2],
                         lvDet.Selected.SubItems[6],
                         lvDet.Selected.SubItems[3],
                         lvDet.Selected.SubItems[4],
                         lvDet.Selected.SubItems[5]])
    then begin;
      log('e',lwLngTrns(name,['Delete User Bouquet: % from list % not found ....',
                              lvDet.Selected.Caption,DetName]));
      lvDet.Items.EndUpdate;
      if mult
      then begin;
        FormWait.Hide;
        Screen.Cursor := crDefault;
      end;
      TotalsBuild();
      MessageDlg(lwLngTrns(name,['Delete User Bouquet: % from list % not found ....',
                                 lvDet.Selected.Caption,DetName]),
                 mtInformation,[mbOk],0,);
      exit;
    end
    else log('i',lwLngTrns(name,['Service % deleted from User Bouquet %',
                            lvDet.Selected.Caption,DetName]));
    wcds.Delete;
    lvDet.Selected.Delete;
    DetChanged := True;
    inc(c);
  end;

  lvDet.Items.EndUpdate;
  if mult
  then begin;
    FormWait.Hide;
    Screen.Cursor := crDefault;
  end;
  TotalsBuild();

  if ShowResultMsg
  then
    if not mult
    then MessageDlg(lwLngTrns(name,['Entry % deleted',s]),
                    mtInformation,[mbOk],0,)
    else MessageDlg(lwLngTrns(name,['% entries deleted',IntToStr(c)]),
                    mtInformation,[mbOk],0,);

  SetMenu('changed');
end;

procedure TFormMain.puDetPopup(Sender: TObject);
var
  zks: String;
  i: Integer;
begin
  if EnableZap
  then begin;
    case ZapKey of
      26: zks := 'Ctrl+Z';
      32: zks := 'Spacebar';
      else zks := 'Dbl-Click';
    end;
    puDet.Items[0].Caption := lwLngTrns(name,['Zap to service                 %',zks]);
  end
  else puDet.Items[0].Caption := lwLngTrns(name,['ZAP to service (disabled in options)']);

  for i := 0 to puDet.Items.Count - 1 do
    puDet.Items[i].Enabled := False;

  if lvDet.Selected <> nil
  then begin;
    if lvDet.SelCount = 1
    then begin;
      if EnableZAP
      then puDet.Items[0].Enabled := True;
      puDet.Items[10].Enabled := True;
      puDet.Items[13].Enabled := True;
      if lvDet.Selected.SubItems[0] = '----'
      then puDet.Items[14].Enabled := True;
      puDet.Items[15].Enabled := True;
      puDet.Items[16].Enabled := True;
    end;
    puDet.Items[2].Enabled := True;
    puDet.Items[11].Enabled := True;
    puDet.Items[18].Enabled := True;
    puDet.Items[19].Enabled := True;
  end;

  if lvDet.Items.Count > 1
  then puDet.Items[4].Enabled := True;

  if lvDet.SelCount > 0
  then begin;
    puDet.Items[6].Enabled := True;
    puDet.Items[7].Enabled := True;
  end;

  if (tbFiles.Enabled) and
     (IsClipboardFormatAvailable(ClipBFormat))
  then puDet.Items[8].Enabled := True;

  puDet.Items[12].Visible := True;
  puDet.Items[13].Visible := True;
  puDet.Items[14].Visible := True;
  puDet.Items[15].Visible := True;
  puDet.Items[16].Visible := True;
  puDet.Items[17].Visible := True;
  puDet.Items[18].Visible := True;
  puDet.Items[19].Visible := True;
  if DetType = 'P'
  then begin;
    puDet.Items[12].Visible := False;
    puDet.Items[13].Visible := False;
    puDet.Items[14].Visible := False;
    puDet.Items[15].Visible := False;
    puDet.Items[16].Visible := False;
    puDet.Items[17].Visible := False;
    puDet.Items[18].Visible := False;
    puDet.Items[19].Visible := False;
  end;

  FormatPopupMenu(puDet);
end;

procedure TFormMain.lvDetInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
var
  s,sp,cn,fr,pn,pol,picon,typ,sid,tsid,onid,namespace: String;
  flt: Boolean;
begin
  InfoTip := '';
  if not ShowDetHint
  then exit;

  s := Item.Caption;
  if (Item.SubItems[11] = 'n') or
     (Item.SubItems[11] = 'r')
  then begin;
    flt := cdsServ.Filtered;

    cdsServ.Filtered := False;
    cdsServ.Locate('servDbeNr',Item.SubItems[10],[]);
    if cdsServ.FieldByName('servSTC').AsString = 's'
    then
      if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
      then sp := lwLngTrns(name,['SatPos % (%)',
                 cdsPos.FieldByName('PosStr').AsString,
                 cdsPos.FieldByName('PosName').AsString])
      else sp := lwLngTrns(name,['SatPos %',
                 Format('%.1n',[StrToInt(cdsServ.FieldByName('servPos').AsString)/10])])
    else
      if cdsServ.FieldByName('servSTC').AsString = 't'
      then sp := lwLngTrns(name,['Terrestrial service'])
      else sp := lwLngTrns(name,['Cable service']);
    pn := CleanText(cdsServ.FieldByName('servPackage').AsString);
    cn := cdsServ.FieldByName('servNr').AsString;
    if cdsServ.FieldByName('servPol').AsInteger = 0
    then pol := 'H'
    else pol := 'V';
    fr := Format('%.n',[StrToFloat(cdsServ.FieldByName('servFreq').AsString)]);

    cdsServ.Filtered := flt;

    if Item.SubItems[11] <> 'r'
    then InfoTip := s
    else InfoTip := lwLngTrns(name,['Renamed service: %~Real name: %',
                                    s,Item.SubItems[8]]);

    InfoTip := lwLngTrns(name,['%~%~ChNr %~Package %~%~Frequency % %~%~' +
                               'SID %~Namespace %~TSID %~NID %~Type %',
                               InfoTip,
                               StringOfChar('-',60),
                               cn,
                               pn,
                               sp,
                               fr,pol,
                               StringOfChar('-',60),
                               Item.SubItems[2],
                               Item.SubItems[6],
                               Item.SubItems[3],
                               Item.SubItems[4],
                               Item.SubItems[5]]);
    if Item.SubItems[9] = '1'
    then InfoTip := lwLngTrns(name,['%~Parental Lock ON',InfoTip]);
  end
  else
    if Item.SubItems[11] = 'm'
    then InfoTip := lwLngTrns(name,['%~%~This is a marker~%',
                    s,
                    StringOfChar('-',60),
                    StringOfChar('-',60)])
    else begin;
      InfoTip := lwLngTrns(name,['%~%~This is not a regular service but~' +
                                 'a subservice of a multiple service~%~' +
                                 'SID %~Namespace %~TSID %~NID %~Type %',
                                 s,
                                 StringOfChar('-',60),
                                 StringOfChar('-',60),
                                 Item.SubItems[2],
                                 Item.SubItems[6],
                                 Item.SubItems[3],
                                 Item.SubItems[4],
                                 Item.SubItems[5]]);
    end;
    if (SettingsVersion <> 2) and
       (cdsAlt.FindKey([_lDetName.Caption,
                        Item.SubItems[2],
                        Item.SubItems[6],
                        Item.SubItems[3],
                        Item.SubItems[4],
                        Item.SubItems[5]]))
    then InfoTip := InfoTip + #13 +
                    StringOfChar('-',60) + #13 +
                    lwLngTrns(name,['For this service there are alternatives ' +
                                    'defined on the Dreambox']);
{*** PICON START Loading to bouquets panel:
     first get servicereference from Item.SubItem and then
     load *.png using servicereference_name}

     if PiconActivate = True then
     begin

     typ :=  IntToHex(StrToInt(Item.SubItems[5]),1);
     sid :=  IntToHex(StrToInt(Item.SubItems[2]),1);
     tsid := IntToHex(StrToInt(Item.SubItems[3]),1);
     onid := IntToHex(StrToInt(Item.SubItems[4]),1);
     namespace := IntToHex(StrToInt(Item.SubItems[6]),1);

     picon := '1_0_'+ typ + '_' + sid + '_' + tsid + '_' + onid + '_' + namespace + '_0_0_0';

     if FileExists(Dir + '\picon\'+ picon +'.png') then
     Image1.Picture.LoadFromFile(Dir + '\picon\'+ picon +'.png')
     else
     ImageList2.GetBitmap(0,Image1.Picture.Bitmap);
     end;
    // Image1.Picture. := ImageList1
   //  Image1.Picture.LoadFromFile(Dir + '\picon\dbe.png');
{*** Picon END}
end;

procedure TFormMain.lvDetStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragDropType := 'Det';
end;

procedure TFormMain.DetSortClick(Sender: TObject);
begin
  lvDet.SortType := stText;
  lvDet.SortType := stNone;

  if (DetType = 'P') and
     (DetSetNr >= 0)
  then exit;

  DetChanged := True;
  SetMenu('changed');
end;

procedure TFormMain.AddANewService1Click(Sender: TObject);
begin
  FormDetail.bSave.Caption := lwLngTrns(name,['Add']);
  FormDetail.bSave.Tag := 2;
  FormDetail.eNr.Text := IntToStr(MaxNr+1);
  if FormDetail.ShowModal = mrOK
  then begin;
    MaxNr := max(StrToInt(FormDetail.eNr.Text),MaxNr);
    lvServ.Items.Count := cdsServ.RecordCount;
    ServEdit := False;
    lvServ.Refresh;
    SetMenu('changed');
    TotalsBuild();
  end;
end;

procedure TFormMain.tbImportClick(Sender: TObject);
var
  Reg: TRegistry;
  s: String;
  pListData: ^TLIstData;
begin
  if tbFiles.Enabled = False
  then begin;
    s := ExtractFilePath(application.ExeName) + 'SatcoDX TransTable.txt';
    if not FileExists(s)
    then begin;
      MessageDlg(lwLngTrns(name,['SatcoDX tranlation file "SatcoDX TransTable.txt" is missing ' +
                            'from the directory where DreamBoxEdit is installed.~' +
                            'Without this file the SatcoDX import function wil not work.~~' +
                            'You can find this file in the installation package of DreamBoxEdit.']),
                 mtError,[mbOK],0);
      exit;
    end;
    if MessageDlg(lwLngTrns(name,['No file-set open and no directory selected.~~' +
                             'You must first select or create a directory before you can import '+
                             'your SatcoDX files and save.~' +
                             'Do you want to select or create a directory now?']),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then exit;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    if Reg.ValueExists('LastUsedDirectory')
    then Dir := Reg.ReadString('LastUsedDirectory')
    else Dir := '';
    Reg.CloseKey;
    Reg.Destroy;
    if not DirectoryExists(Dir)
    then Dir := '';

    if not SelDir(Dir,True)
    then exit;
    if FileExists(Dir + '\services')
    then begin;
      if MessageDlg(lwLngTrns(name,['You have selected a directory that already contains a file-set.~' +
                               'When you later save the set you are now building, you will '+
                               'completely overwrite the existing set.~~' +
                               'Are you sure want to continue with this directory?']),
                    mtConfirmation,[mbYes,mbNo],0) <> mrYes
      then exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('LastUsedDirectory',Dir);
    Reg.CloseKey;
    Reg.Destroy;

    Log('i',lwLngTrns(name,['Directory % selected',Dir]));

    tnBQ := tv.Items.Add(nil,'Providers');
    tnTV := tv.Items.Insert(TNBQ,'TV User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnTV,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.tv';
    pListData.Number := 0;
    pListData.Locked := False;

    tnRD := tv.Items.Insert(TNBQ,'Radio User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnRD,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.radio';
    pListData.Number := 0;
    pListData.Locked := False;

    tv.FullExpand;
  end;

  if FormImport.ShowModal = mrOK
  then begin;
    lvServ.Refresh;
    TotalsBuild();

    SetMenu('loaded');
    SetMenu('changed');

    FormMain.Caption := 'LlamaWare DreamBoxEdit - ' + Dir;
    tv.FullExpand;
    tv.Items[1].Selected := True;
  end;
end;

procedure TFormMain.lvDetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 46
  then DetDeleteEntryClick(Self);
end;

procedure TFormMain.lvDetKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #1
  then lvDet.SelectAll
  else
    if key = #3
    then DetCutClick(DetCopy)
    else
      if key = #18
      then DetRenameService(Self)
      else
        if key = #6
        then DetFormatService(Self)
        else
          if key = #24
          then DetCutClick(DetCut)
          else
            if key = #22
            then DetPasteClick(DetPaste)
            else
              if integer(key) = ZapKey
              then DetZaptoserviceClick(Self)
              else
                if key = #13
                then DetLocateInServices1Click(Self)
                else
                  if key = #12
                  then DetLockClick(Self);
end;

procedure TFormMain.fmSaveAsClick(Sender: TObject);
var
  Reg: Tregistry;
  WDir,o,n: String;
  po,pn: pchar;
begin
  WDir := Dir;
  if not DirectoryExists(WDir)
  then WDir := '';
  if not SelDir(WDir,True)
  then begin;
    MessageDlg(lwLngTrns(name,['No directory for file-set selected. Files are not saved.']),
               mtWarning,[mbOK],0);
    exit;
  end;

  if FileExists(Dir + '\satellites.xml')
  then begin;
    if FileExists(WDir + 'satellites.xml')
    then begin;
      DeleteFile(WDir + '\satellites.xml');
      Log('i',lwLngTrns(name,['% deleted from %',
                              'satellites.xml', WDir]));
    end;
    o := Dir+'\satellites.xml';
    n := WDir+'\satellites.xml';
    po := pchar(o);
    pn := pchar(n);
    CopyFile(po,pn,False);
    Log('i',lwLngTrns(name,['File % copied from % to %',
                            'satellites.xml',Dir,WDir]));
  end;

  Dir := WDir;
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteString('LastUsedDirectory',Dir);
  Reg.CloseKey;
  Reg.Destroy;

  FormMain.Caption := 'LlamaWare DreamBoxEdit - ' + Dir;
  tbFiles.Enabled := True;

  tbSaveClick(Self);
end;

procedure TFormMain.fmUpdSatXMLClick(Sender: TObject);
var
  sifTSID,sifSatXML: String;
  wname,tsidsif: String;
  p,ta,te,ts,seq: Integer;
label
  Skipped;
begin
  if not FileExists(Dir + '\satellites.xml')
  then begin;
    MessageDlg(lwLngTrns(name,['File satellites.xml not found in current directory %',Dir]),
               mtError,[mbOK],0);
    exit;
  end;

  log('i',lwLngTrns(name,['Updating satellites.xml with currently loaded transponder data']));
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := 100;
  FormWait.pb.Position := 0;
  FormWait.Show;

  { rebuild transponder table from services table }
  FormWait.pb.Position := 1;
  cdsTSID.EmptyDataSet;
  cdsTSID.Close;
  cdsTSID.Open;
  sifTSID := cdsTSID.IndexFieldNames;
  cdsTSID.IndexFieldNames := 'tsidPos;tsidFreq;tsidPol;tsidSymb;tsidFEC';
  cdsServ.First;
  while not cdsServ.Eof do begin;
    if not cdsTSID.FindKey([cdsServ.FieldByName('servPos').AsString,
                            cdsServ.FieldByName('servFreq').AsString,
                            cdsServ.FieldByName('servPol').AsString,
                            cdsServ.FieldByName('servSymb').AsString,
                            cdsServ.FieldByName('servFEC').AsString])
    then begin;
      cdsTSID.Append;
      cdsTSID.FieldByName('tsidUniq').AsString := cdsServ.FieldByName('servUniq').AsString;
      cdsTSID.FieldByName('tsidTSID').AsString := cdsServ.FieldByName('servTSID').AsString;
      cdsTSID.FieldByName('tsidNID').AsString := cdsServ.FieldByName('servNid').AsString;
      cdsTSID.FieldByName('tsidFreq').AsString := cdsServ.FieldByName('servFreq').AsString;
      cdsTSID.FieldByName('tsidSymb').AsString := cdsServ.FieldByName('servSymb').AsString;
      cdsTSID.FieldByName('tsidPol').AsString := cdsServ.FieldByName('servPol').AsString;
      cdsTSID.FieldByName('tsidFEC').AsString := cdsServ.FieldByName('servFEC').AsString;
      cdsTSID.FieldByName('tsidPos').AsString := cdsServ.FieldByName('servPos').AsString;
      cdsTSID.Post;
    end;
    cdsServ.Next;
  end;

  { Read the satellites.xml file }
  EditSatXML := False;
  ts := ReadSatXML(Dir+'\satellites.xml');
  if (sender as TMenuItem).Name = 'fmClearSatXML'
  then begin;
    { if called from fmClearSatXML: empty table, only original headers are then processed }
    tsidsif := cdsTSID.IndexFieldNames;
    cdsTSID.IndexFieldNames := 'tsidPos';
    cdsSatXML.First;
    while not cdsSatXML.Eof do begin;
      if not cdsTSID.FindKey([cdsSatXML.FieldByName('Pos').AsString])
      then cdsSatXML.Delete
      else cdsSatXML.Next;
    end;
    cdsTSID.IndexFieldNames := tsidsif;
  end;
  te := cdsSatXML.RecordCount;

  { Update satellites.xml table with transponders }
  p := 0;
  FormWait.pb.Max := cdsTSID.RecordCount;
  seq := cdsSatXML.RecordCount + 1;
  ta := 0;
  wname := '';
  cdsTSID.First;
  while not cdsTSID.Eof do begin;
    inc(p);
    if p mod 5 = 0
    then FormWait.pb.Position := p;

    if not cdsSatXML.FindKey([cdsTSID.FieldByName('tsidPos').AsString,
                              cdsTSID.FieldByName('tsidFreq').AsString,
                              cdsTSID.FieldByName('tsidPol').AsString,
                              cdsTSID.FieldByName('tsidSymb').AsString,
                              cdsTSID.FieldByName('tsidFEC').AsString])
    then begin;
      inc(ta);
      if (cdsPOS.FindKey([cdsTSID.FieldByName('tsidPos').AsString])) and
         (cdsPos.FieldByName('posName').AsString <> '')
      then wname := cdsPOS.FieldByName('posName').AsString
      else
        if cdsSatXML.FindKey([cdsTSID.FieldByName('tsidPos').AsString])
        then wname := cdsSatXML.FieldByName('Name').AsString
        else wname := 'Satellite at ' +
                      Format('%.1n',[cdsTSID.FieldByName('tsidPos').AsInteger/10]);

      cdsSatXML.Append;
      cdsSatXML.FieldByName('Name').AsString := wname;
      cdsSatXML.FieldByName('Flags').AsString := '5';
      cdsSatXML.FieldByName('Pos').AsString := cdsTSID.FieldByName('tsidPos').AsString;
      cdsSatXML.FieldByName('Freq').AsString := cdsTSID.FieldByName('tsidFreq').AsString;
      cdsSatXML.FieldByName('Pol').AsString := cdsTSID.FieldByName('tsidPol').AsString;
      cdsSatXML.FieldByName('Symb').AsString := cdsTSID.FieldByName('tsidSymb').AsString;
      cdsSatXML.FieldByName('FEC').AsString := cdsTSID.FieldByName('tsidFEC').AsString;
      cdsSatXML.FieldByName('SeqNr').AsInteger := seq;
      cdsSatXML.Post;
      inc(seq);
    end;
    cdsTSID.Next;
  end;
  cdsTSID.IndexFieldNames := sifTSID;

  { Write the updated satellited.xml table to file }
  if NewSatXMLBottom
  then begin;
    sifSatXML := cdsSatXML.IndexFieldNames;
    cdsSatXML.IndexFieldNames := 'Pos;SeqNr;Freq;Pol;Symb;FEC';
  end;

  WriteSatXML(Dir + '\satellites.xml');

  if NewSatXMLBottom
  then cdsSatXML.IndexFieldNames := sifSatXML;

  FormWait.Hide;

  log('i',lwLngTrns(name,['% existing transponders, ',IntToStr(te)]));
  log('i',lwLngTrns(name,['% ... new transponders added,',IntToStr(ta)]));
  log('i',lwLngTrns(name,['% ... invalid transponders skipped.',IntToStr(ts)]));
  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% existing transponders,~' +
                                  '% new transponders added,~' +
                                  '% invalid transponders skipped.',
                                  IntToStr(te),IntToStr(ta),IntToStr(ts)]),
                  mtInformation,[mbOK],0);
  log('i',lwLngTrns(name,['Ready updating satellites.xml']));
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  sb.Panels[1].Width := sb.Width - 545;

  if abs(Width - LastWidth) > 15
  then begin;
    LastWidth := Width;
    FormatToolbar();
  end;
end;

procedure TFormMain.lvServCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if ServEdit
  then exit;
  
  if Pos('L',Item.SubItems[19]) > 0
  then
    if Blacklist
    then lvServ.Canvas.Brush.Color := clRed
    else lvServ.Canvas.Brush.Color := $008AF7A3
  else
    if Pos('New',Item.SubItems[19]) > 0
    then lvServ.Canvas.Brush.Color := clMoneyGreen
    else
      if Item.Index mod 2 = 0
      then lvServ.Canvas.Brush.Color := $00F9FAFB
      else lvServ.Canvas.Brush.Color := clWhite;
  lvServ.Canvas.FillRect(Item.DisplayRect(drBounds));
end;

procedure TFormMain.lvServColumnClick(Sender: TObject;
  Column: TListColumn);
var
  ifn: String;
  it: integer;
begin
  if lvServ.Selected <> nil
  then begin;
    it := StrToInt(lvServ.Selected.SubItems[20]);
    lvServ.Selected.Selected := False;
  end
  else it := -1;

  case Column.Index of
    0: ifn := 'servCleanName';
    1: ifn := 'servPackage';
    2: ifn := 'servTypeTxt';
    3: ifn := 'servNr';
    4: ifn := 'servPos';
    5: ifn := 'servFreq';
    6: ifn := 'servPol';
    7: ifn := 'servSymb';
    8: ifn := 'servFEC';
    9: ifn := 'servPos';
    10: ifn := 'servSID';
    11: ifn := 'servTSID';
    12: ifn := 'servNID';
    13: ifn := 'servType';
    14: ifn := 'servVPID';
    15: ifn := 'servAPID';
    16: ifn := 'servTPID';
    17: ifn := 'servPPID';
    18: ifn := 'serv3PID';
    19: ifn := 'servUniq';
    20: ifn := 'servFlags';
    21: ifn := 'servDbeNr';
    else ifn := 'servName';
  end;
  if (SortUseService) and
     (ifn <> 'servCleanName')
  then ifn := ifn + ';servCleanName';
  cdsServ.IndexFieldNames := ifn;

  if it <> -1
  then begin;
    cdsServ.Locate('servDbeNr',VarArrayOf([it]),[]);
    it := cdsServ.RecNo - 1;
    lvServ.Items[it].MakeVisible(False);
    lvServ.Items[it].Selected := True;
    lvServ.ItemFocused := lvServ.Items[it];
  end;
  lvServ.Refresh;  
end;

procedure TFormMain.lvServEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  lvServ.RowSelect := True;
  lvServ.Refresh;
end;

procedure TFormMain.SearchServices(const option: String);
var
  si,i: Integer;
begin
  if (SearchArg = '') or
     (option = 'new')
  then begin;
    if not InputQuery(lwLngTrns(name,['Search']),
                      lwLngTrns(name,['Enter the search argument']),
                      SearchArg)
    then exit;
    lvServ.ClearSelection;
  end;
  screen.Cursor := crHourGlass;
  if lvServ.Selected = nil
  then si := 0
  else begin;
    si := lvServ.Selected.Index + 1;
    lvServ.ClearSelection;
  end;

  for i := si to lvServ.Items.Count - 1 do begin;
    if (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].Caption)) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[0])) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[1])) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[2])) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[3])) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[4])) > 0) or
       (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[5])) > 0)
    then break;
    if ShowDetails
    then
      if (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems.Text)) > 0)
      then break;
  end;
  if i < lvServ.Items.Count
  then begin;
    lvServ.Items[i].Selected := True;
    lvServ.Items[i].MakeVisible(False);
    FormMain.ActiveControl := lvServ;
  end
  else begin;
    MessageDlg(lwLngTrns(name,['No (more) occurrences of "%" found in services.',SearchArg]),
               mtInformation,[mbOK],0);
  end;
  screen.Cursor := crDefault;
end;

procedure TFormMain.lvServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if lvServ.Items.Count = 0
  then exit;

  if (Key = 114) or
    ((key = 70) and
     (ssCtrl in Shift))
  then begin;
    if Key = 70
    then SearchServices('new')
    else SearchServices('repeat');
    {if (SearchArg = '') or
       (key = 70)
    then begin;
      if not InputQuery(lwLngTrns(name,['Search']),
                        lwLngTrns(name,['Enter the search argument']),
                        SearchArg)
      then exit;
      lvServ.ClearSelection;
    end;
    screen.Cursor := crHourGlass;
    if lvServ.Selected = nil
    then si := 0
    else begin;
      si := lvServ.Selected.Index + 1;
      lvServ.ClearSelection;
    end;

    for i := si to lvServ.Items.Count - 1 do begin;
      if (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].Caption)) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[0])) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[1])) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[2])) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[3])) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[4])) > 0) or
         (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems[5])) > 0)
      then break;
      if ShowDetails
      then
        if (pos(LowerCase(SearchArg),LowerCase(lvServ.Items[i].SubItems.Text)) > 0)
        then break;
    end;
    if i < lvServ.Items.Count
    then begin;
      lvServ.Items[i].Selected := True;
      lvServ.Items[i].MakeVisible(False);
      FormMain.ActiveControl := lvServ;
    end
    else begin;
      MessageDlg(lwLngTrns(name,['No (more) occurrences of "%" found in services.',SearchArg]),
                 mtInformation,[mbOK],0);
    end;
    screen.Cursor := crDefault;}
  end
  else
    if key = 46
    then DeleteService1Click(Self)
    else
      if key = 13
      then EditDetails1Click(Self);
end;

procedure TFormMain.lvServStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  lvServ.RowSelect := False;
  DragDropType := 'Serv';
end;

procedure TFormMain.TimerDetScrollTimer(Sender: TObject);
begin
  if not tm.IsDragging
  then begin;
    timerDetScroll.Enabled := False;
    exit;
  end;

  if (tm.CursorPos.X > lvDet.ClientOrigin.X) and
     (tm.CursorPos.X < lvDet.ClientOrigin.X + lvDet.Width)
  then begin;
    if (tm.CursorPos.Y > lvDet.ClientOrigin.Y) and
       (tm.CursorPos.y < lvDet.ClientOrigin.Y + 25)
    then begin;
      if tm.CursorPos.y < lvDet.ClientOrigin.Y + 12
      then lvDet.Scroll(0,-32)
      else lvDet.Scroll(0,-8);
      lvDet.Repaint;
      exit;
    end;
    if (tm.CursorPos.Y > lvDet.ClientOrigin.Y + lvDet.Height-15) and
       (tm.CursorPos.y < lvDet.ClientOrigin.Y + lvDet.Height)
    then begin;
      if tm.CursorPos.Y > lvDet.ClientOrigin.Y + lvDet.Height-7
      then lvDet.Scroll(0,32)
      else lvDet.Scroll(0,8);
      lvDet.Repaint;
      exit;
    end;
  end;
end;

procedure TFormMain.LWPanelRLResize(Sender: TObject);
begin
  pDetName.Left := 2;
  pDetName.Width := lwPanelrl.Width - 5;
end;

procedure TFormMain.lvDetCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
var
  ix: Integer;
  f1,f2: Real;
begin
  if lvDetColumnToSort > 900
  then lvDetColumnToSort := 0;

  if lvDetColumnToSort = 0
  then Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin;
    ix := lvDetColumnToSort - 1;
    if ix = 0
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
  if lvDetSortDescending
  then Compare := Compare * -1;
end;

procedure TFormMain.cbFTVDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if (DragDropType = 'Bouq') or
     ((DragDropType = 'Det') and
      (DetType = 'P'))
  then Accept := Source is TListView
  else Accept := False;
end;

procedure TFormMain.fmImportUserBouquetsClick(Sender: TObject);
var
  Reg: TRegistry;
  FavDir: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if Reg.ValueExists('User Bouquets Directory')
  then FavDir := Reg.ReadString('User Bouquet Directory')
  else FavDir := Dir;
  Reg.CloseKey;
  Reg.Destroy;

  if not SelDir(FavDir,False)
  then exit;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteString('User Bouquet Directory',FavDir);
  Reg.CloseKey;
  Reg.Destroy;

  if FormImportUserBouquets.ShowModal <> mrOK
  then exit
  else SetMenu('changed');
end;

procedure TFormMain.DetCutClick(Sender: TObject);
var
  i,d: Integer;
  SaveShowResultMsg: Boolean;
  servsif: String;
  servflt: Boolean;
begin
  if lvDet.SelCount = 0
  then exit;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;

  i := 0;
  SetLength(CPRec,lvDet.SelCount);
  for d := 0 to lvDet.Items.Count - 1 do begin;
    if not lvDet.Items[d].Selected
    then continue;

    if (lvDet.Items[d].SubItems[11] = 'n') or
       (lvDet.Items[d].SubItems[11] = 'r')
    then begin;
      if not cdsServ.Locate('servDbeNr',lvDet.Items[d].SubItems[10],[])
      then begin;
        log('e',lwLngTrns(name,['Error processing Cut action for %: ' +
                           'service not found in Servicetable',lvDet.Items[d].Caption]));
        MessageDlg(lwLngTrns(name,['Error processing Cut action for %: ' +
                              'service not found in Servicetable',lvDet.Items[d].Caption]),
                   mtError,[mbOK],0);
        exit;
      end;
      CPRec[i].servSID := cdsServ.FieldValues['servSID'];
      CPRec[i].servUniq := cdsServ.FieldValues['servUniq'];
      CPRec[i].servTSID := cdsServ.FieldValues['servTSID'];
      CPRec[i].servNID := cdsServ.FieldValues['servNID'];
      CPRec[i].servType := cdsServ.FieldValues['servType'];
      CPRec[i].servName := cdsServ.FieldValues['servName'];
      CPRec[i].servPackage := cdsServ.FieldValues['servPackage'];
      CPRec[i].servNr := cdsServ.FieldValues['servNr'];
      CPRec[i].servFreq := cdsServ.FieldValues['servFreq'];
      CPRec[i].servSymb := cdsServ.FieldValues['servSymb'];
      CPRec[i].servPol := cdsServ.FieldValues['servPol'];
      CPRec[i].servFEC := cdsServ.FieldValues['servFEC'];
      CPRec[i].servPos := cdsServ.FieldValues['servPos'];
      CPRec[i].servVPID := cdsServ.FieldByName('servVPID').AsInteger;
      CPRec[i].servAPID := cdsServ.FieldByName('servAPID').AsInteger;
      CPRec[i].servTPID := cdsServ.FieldByName('servTPID').AsInteger;
      CPRec[i].servPPID := cdsServ.FieldByName('servPPID').AsInteger;
      CPRec[i].serv3PID := cdsServ.FieldByName('serv3PID').AsInteger;
      CPRec[i].servC07BSDelay := cdsServ.FieldByName('servC07BSDelay').AsInteger;
      CPRec[i].servC08PCMDelay := cdsServ.FieldByName('servC08PCMDelay').AsInteger;
      CPRec[i].servFlags := cdsServ.FieldByName('servFlags').AsInteger and 127;
      CPRec[i].servDbeNr := cdsServ.FieldByName('servDbeNr').AsInteger;
      CPRec[i].servT := lvDet.Items[d].SubItems[11];
      CPRec[i].servSTC := cdsServ.FieldByName('servSTC').AsString;
      CPRec[i].servTrExtra := cdsServ.FieldByName('servTrExtra').AsString;
      CPrec[i].ServCleanName := cdsServ.FieldByName('servCleanName').AsString;
      CPRec[i].servExtra := cdsServ.FieldByName('servExtra').AsString;
      if lvDet.Items[d].SubItems[11] = 'r'
      then CPRec[i].servDesc := lvDet.Items[d].Caption
      else CPRec[i].servDesc := '';
      inc(i);
    end
    else begin;
      CPRec[i].servSID := StrToInt(lvDet.Items[d].SubItems[2]);
      CPRec[i].servUniq := StrToInt(lvDet.Items[d].SubItems[6]);
      CPRec[i].servTSID := StrToInt(lvDet.Items[d].SubItems[3]);
      CPRec[i].servNID := StrToInt(lvDet.Items[d].SubItems[4]);
      CPRec[i].servType := StrToInt(lvDet.Items[d].SubItems[5]);
      CPRec[i].servName := AnsiToUtf8(lvDet.Items[d].Caption);
      CPRec[i].servPackage := '';
      CPRec[i].servNr := 0;
      CPRec[i].servFreq := 0;
      CPRec[i].servSymb := 0;
      CPRec[i].servPol := 0;
      CPRec[i].servFEC := 0;
      CPRec[i].servPos := 0;
      CPRec[i].servVPID := 0;
      CPRec[i].servAPID := 0;
      CPRec[i].servTPID := 0;
      CPRec[i].servPPID := 0;
      CPRec[i].serv3PID := 0;
      CPRec[i].servC07BSDelay := 0;
      CPRec[i].servC08PCMDelay := 0;
      CPRec[i].servFlags := 0;
      CPRec[i].servDbeNr := 0;
      CPRec[i].servT := lvDet.Items[d].SubItems[11];
      CPRec[i].servDesc := '';
      CPRec[i].servSTC := '';
      CPRec[i].servTrExtra := '';
      CPRec[i].ServCleanName := CleanText(lvDet.Items[d].Caption);
      CPRec[i].ServExtra := '';
      inc(i);
    end;
  end;

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;

  SetLength(CPRec,i);
  if not CopyToCB()
  then begin;
    MessageDlg('Error copying data to clipboard',
               mtError,[mbOK],0);
    exit;
  end;

  if (sender as TMenuItem).Name = 'DetCut'
  then begin;
    SaveShowResultMsg := ShowResultMsg;
    ShowResultMsg := False;
    DetDeleteEntryClick(Self);
    ShowResultMsg := SaveShowResultMsg;
  end;
end;

procedure TFormMain.DetPasteClick(Sender: TObject);
var
  item: TListItem;
  pf: String;
  pos,i,p,c,DbeNr: Integer;
  wcds: TClientDataset;
  servsif: String;
  servflt: Boolean;
  SkipWarning: Boolean;
begin
  if not PasteFromCB()
  then exit;

  if lvDet.Selected = nil
  then pos := lvDet.Items.Count
  else pos := lvDet.Selected.Index;

  while lvDet.Selected <> nil do begin;
    lvDet.Selected.Selected := False;
  end;

  if DetType = 'T'
  then begin;
    wcds := cdsFTV;
    pf := 'ftv';
  end
  else
    if DetType = 'R'
    then begin;
      wcds := cdsFRD;
      pf := 'frd';
    end
    else begin;
      wcds := cdsFBQ;
      pf := 'fbq';
    end;

  if length(CPRec) >= 10
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := length(CPRec);
    FormWait.pb.Position := 0;
    FormWait.Show;
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
  end;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;

  p := 0;
  c := 0;
  lvDet.Items.BeginUpdate;
  lvServ.Items.BeginUpdate;
  item := nil;
  SkipWarning := False;
  for i := 0 to length(CPRec) - 1 do begin;
    if length(CPRec) >= 10
    then begin;
      inc(p);
      FormWait.pb.Position := p;
    end;

    if (CPRec[i].servT = 'n') or
       (CPRec[i].servT = 'r')
    then begin;
      if (not AllowDuplicates) and
         (wcds.FindKey([IntToStr(DetSetNr),
                        CPRec[i].servSID,
                        CPRec[i].servUniq,
                        CPRec[i].servTSID,
                        CPRec[i].servNID,
                        CPRec[i].servType]))
      then begin;
        if (not SkipWarning) and
           (MessageDlg(lwLngTrns(name,['Service % already exists in bouquet %~~' +
                                       'Skip this warning for the remainder of this action?',
                                 CPRec[i].servName,_lDetName.Caption]),
                       mtWarning,[mbNo,mbYes],0) = mrYes)
        then SkipWarning := True;
        continue;
      end;

      if not cdsServ.FindKey([CPRec[i].servSID,
                              CPRec[i].servUniq,
                              CPRec[i].servTSID,
                              CPRec[i].servNID,
                              CPRec[i].servType])
      then begin;
        inc(HighDbeNr);
        DbeNr := HighDbeNr;
      end
      else DbeNr := cdsServ.FieldByName('servDbeNr').AsInteger;

      inc(c);
      item := lvDet.Items.Insert(pos);
      if CPRec[i].servT <> 'r'
      then item.Caption := CleanText(CPRec[i].servName)
      else item.Caption := CleanText(CPRec[i].servDesc);
      item.SubItems.Add(TrnsServType(CPRec[i].servType));
      item.SubItems.Add(Format('%.1n',[CPRec[i].servPos/10]));
      item.SubItems.Add(IntToStr(CPRec[i].servSID));
      item.SubItems.Add(IntToStr(CPRec[i].servTSID));
      item.SubItems.Add(IntToStr(CPRec[i].servNID));
      item.SubItems.Add(IntToStr(CPRec[i].servType));
      item.SubItems.Add(IntToStr(CPRec[i].servUniq));
      item.SubItems.Add(IntToStr(DetSetNr));
      if CPRec[i].servT <> 'r'
      then item.SubItems.Add(CleanText(CPRec[i].servDesc))
      else item.SubItems.Add(CleanText(CPRec[i].servName));
      item.SubItems.Add('0');
      item.SubItems.Add(IntToStr(DbeNr));
      item.SubItems.Add(CPRec[i].servT);
      item.Selected := True;
      DetChanged := True;

      wcds.Append;
      wcds.FieldByName(pf+'SeqNr').AsInteger := 0;
      wcds.FieldByName(pf+'Name').AsString := CleanText(CPRec[i].servName);
      wcds.FieldByName(pf+'SID').AsString := IntToStr(CPRec[i].servSID);
      wcds.FieldByName(pf+'Uniq').AsString := IntToStr(CPRec[i].servUniq);
      wcds.FieldByName(pf+'TSID').AsString := IntToStr(CPRec[i].servTSID);
      wcds.FieldByName(pf+'NID').AsString := IntToStr(CPRec[i].servNID);
      wcds.FieldByName(pf+'ServType').AsString := IntToStr(CPRec[i].servType);
      wcds.FieldByName(pf+'SetNr').AsString := IntToStr(DetSetNr);
      wcds.FieldByName(pf+'Descr').AsString := CleanText(CPRec[i].servDesc);
      wcds.FieldByName(pf+'DbeNr').AsInteger := DbeNr;
      wcds.FieldByName(pf+'T').AsString := CPRec[i].servT;
      wcds.Post;

      log('i',lwLngTrns(name,['Service % added to User Bouquet %',
                              CleanText(CPRec[i].servName),DetName]));
      SetMenu('changed');
      inc(pos);

      if not cdsServ.FindKey([CPRec[i].servSID,
                              CPRec[i].servUniq,
                              CPRec[i].servTSID,
                              CPRec[i].servNID,
                              CPRec[i].servType])
      then begin;
        ServEdit := True;
        cdsServ.Append;
        cdsServ.FieldByName('servSid').AsInteger := CPRec[i].servSID;
        cdsServ.FieldByName('servUniq').AsInteger := CPRec[i].servUniq;
        cdsServ.FieldByName('servTSID').AsInteger := CPRec[i].servTSID;
        cdsServ.FieldByName('servNID').AsInteger := CPRec[i].servNID;
        cdsServ.FieldByName('servType').AsInteger := CPRec[i].servType;
        cdsServ.FieldByName('servTypeTxt').AsString := TrnsServType(cdsServ.FieldByName('servType').AsInteger);
        cdsServ.FieldByName('servName').AsString := CPRec[i].servName;
        cdsServ.FieldByName('servPackage').AsString := CPRec[i].servPackage;
        cdsServ.FieldByName('servNr').AsInteger := CPRec[i].servNr;
        cdsServ.FieldByName('servFreq').AsInteger := CPRec[i].servFreq;
        cdsServ.FieldByName('servSymb').AsInteger := CPRec[i].servSymb;
        cdsServ.FieldByName('servPol').AsInteger := CPRec[i].servPol;
        cdsServ.FieldByName('servFEC').AsInteger := CPRec[i].servFEC;
        cdsServ.FieldByName('servPos').AsInteger := CPRec[i].servPos;
        cdsServ.FieldByName('servVPID').AsInteger := CPRec[i].servVPID;
        cdsServ.FieldByName('servAPID').AsInteger := CPRec[i].servAPID;
        cdsServ.FieldByName('servTPID').AsInteger := CPRec[i].servTPID;
        cdsServ.FieldByName('servPPID').AsInteger := CPRec[i].servPPID;
        cdsServ.FieldByName('serv3PID').AsInteger := CPRec[i].serv3PID;
        cdsServ.FieldByName('servC07BSDelay').AsInteger := CPRec[i].servC07BSDelay;
        cdsServ.FieldByName('servC08PCMDelay').AsInteger := CPRec[i].servC08PCMDelay;
        cdsServ.FieldByName('servFlags').AsInteger := CPRec[i].servFlags;
        cdsServ.FieldByName('servDbeNr').AsInteger := DbeNr;
        cdsServ.FieldByName('servSTC').AsString := CPRec[i].servSTC;
        cdsServ.FieldByName('servTrExtra').AsString := CPRec[i].servTrExtra;
        cdsServ.FieldByName('servCleanName').AsString := CPRec[i].ServCleanName;
        cdsServ.FieldByName('servExtra').AsString := CPRec[i].servExtra;

        cdsServ.Post;
        ServEdit := False;
      end;
    end
    else begin;
      item := lvDet.Items.Insert(pos);
      item.Caption := CleanText(CPRec[i].servName);
      if CPRec[i].servT = 'm'
      then item.SubItems.Add('----')
      else
      item.SubItems.Add(TrnsServType(CPRec[i].servType));
      item.SubItems.Add(Format('%.1n',[CPRec[i].servPos/10]));
      item.SubItems.Add(IntToStr(CPRec[i].servSID));
      item.SubItems.Add(IntToStr(CPRec[i].servTSID));
      item.SubItems.Add(IntToStr(CPRec[i].servNID));
      item.SubItems.Add(IntToStr(CPRec[i].servType));
      item.SubItems.Add(IntToStr(CPRec[i].servUniq));
      item.SubItems.Add(IntToStr(DetSetNr));
      item.SubItems.Add(CleanText(CPRec[i].servName));
      item.SubItems.Add('0');
      item.SubItems.Add('0');
      item.SubItems.Add(CPRec[i].servT);
      item.Selected := True;
      DetChanged := True;

      wcds.Append;
      wcds.FieldByName(pf+'SeqNr').AsInteger := 0;
      wcds.FieldByName(pf+'Name').AsString := CleanText(CPRec[i].servName);
      wcds.FieldByName(pf+'SID').AsString := IntToStr(CPRec[i].servSID);
      wcds.FieldByName(pf+'Uniq').AsString := IntToStr(CPRec[i].servUniq);
      wcds.FieldByName(pf+'TSID').AsString := IntToStr(CPRec[i].servTSID);
      wcds.FieldByName(pf+'NID').AsString := IntToStr(CPRec[i].servNID);
      wcds.FieldByName(pf+'ServType').AsString := IntToStr(CPRec[i].servType);
      wcds.FieldByName(pf+'SetNr').AsString := IntToStr(DetSetNr);
      wcds.FieldByName(pf+'Descr').AsString := CleanText(CPRec[i].servDesc);
      wcds.FieldByName(pf+'DbeNr').AsInteger := 0;
      wcds.FieldByName(pf+'T').AsString := CPRec[i].servT;
      wcds.Post;

      log('i',lwLngTrns(name,['Service % added to User Bouquet %',
                              CleanText(CPRec[i].servName),DetName]));
      SetMenu('changed');
      inc(pos);
    end;
  end;
  lvDet.Items.EndUpdate;

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;
  lvServ.Items.Count := cdsServ.RecordCount;
  lvServ.Items.EndUpdate;

  if length(CPRec) >= 10
  then begin;
    FormWait.Hide;
    Screen.Cursor := crDefault;
  end;

  if item <> nil
  then begin;
    item.Selected := true;
    item.MakeVisible(False);
  end;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',
                            IntToStr(c),_lDetName.Caption]),
                  mtInformation,[mbOK],0);

  TotalsBuild();
end;

procedure TFormMain.ServCutClick(Sender: TObject);
var
  i,d: Integer;
  DbeNr: String;
  SaveShowResultMsg: Boolean;
begin
  if lvServ.SelCount = 0
  then exit;

  i := 0;
  SetLength(CPRec,lvServ.SelCount);
  for d := 0 to lvServ.Items.Count - 1 do begin;
    if not lvServ.Items[d].Selected
    then continue;

    DbeNr := lvServ.Items[d].SubItems[20];
    if not cdsServ.Locate('servDbeNr',DbeNr,[])
    then begin;
      log('e',lwLngTrns(name,['Error processing Cut action for %: service not ' +
                         'found in Servicetable',
                         lvDet.Items[d].Caption]));
      MessageDlg(lwLngTrns(name,['Error processing Cut action for %: service not ' +
                         'found in Servicetable',
                         lvDet.Items[d].Caption]),
                 mtError,[mbOK],0);
      exit;
    end;
    CPRec[i].servSID := cdsServ.FieldValues['servSID'];
    CPRec[i].servUniq := cdsServ.FieldValues['servUniq'];
    CPRec[i].servTSID := cdsServ.FieldValues['servTSID'];
    CPRec[i].servNID := cdsServ.FieldValues['servNID'];
    CPRec[i].servType := cdsServ.FieldValues['servType'];
    CPRec[i].servName := cdsServ.FieldValues['servName'];
    CPRec[i].servPackage := cdsServ.FieldValues['servPackage'];
    CPRec[i].servNr := cdsServ.FieldValues['servNr'];
    CPRec[i].servFreq := cdsServ.FieldValues['servFreq'];
    CPRec[i].servSymb := cdsServ.FieldValues['servSymb'];
    CPRec[i].servPol := cdsServ.FieldValues['servPol'];
    CPRec[i].servFEC := cdsServ.FieldValues['servFEC'];
    CPRec[i].servPos := cdsServ.FieldValues['servPos'];
    CPRec[i].servVPID := cdsServ.FieldByName('servVPID').AsInteger;
    CPRec[i].servAPID := cdsServ.FieldByName('servAPID').AsInteger;
    CPRec[i].servTPID := cdsServ.FieldByName('servTPID').AsInteger;
    CPRec[i].servPPID := cdsServ.FieldByName('servPPID').AsInteger;
    CPRec[i].serv3PID := cdsServ.FieldByName('serv3PID').AsInteger;
    CPRec[i].servC07BSDelay := cdsServ.FieldByName('servC07BSDelay').AsInteger;
    CPRec[i].servC08PCMDelay := cdsServ.FieldByName('servC08PCMDelay').AsInteger;
    CPRec[i].servFlags := cdsServ.FieldByName('servFlags').AsInteger and 127;
    CPRec[i].servDbeNr := StrToInt(DbeNr);
    CPRec[i].servT := 'n';
    CPRec[i].servDesc := '';
    CPRec[i].servSTC := cdsServ.FieldByName('servSTC').AsString;
    CPRec[i].servTrExtra := cdsServ.FieldByName('servTrExtra').AsString;
    CPRec[i].ServCleanName:= cdsServ.FieldByName('servCleanName').AsString;
    CPRec[i].servExtra := cdsServ.FieldByName('servextra').AsString;
    inc(i);
  end;
  if not CopyToCB()
  then begin;
    MessageDlg('Error copying data to clipboard',
               mtError,[mbOK],0);
    exit;
  end;

  if (sender as TMenuItem).Name = 'ServCut'
  then begin;
    SaveShowResultMsg := ShowResultMsg;
    ShowResultMsg := False;
    DeleteService1Click(Self);
    ShowResultMsg := SaveShowResultMsg;
  end;
end;

procedure TFormMain.ServPasteClick(Sender: TObject);
var
  i,p: Integer;
  SkipWarning: Boolean;
  servsif: String;
  servflt: Boolean;
begin
  if not PasteFromCB()
  then exit;

  while lvServ.Selected <> nil do begin;
    lvServ.Selected.Selected := False;
  end;

  if length(CPRec) >= 10
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := length(CPRec);
    FormWait.pb.Position := 0;
    FormWait.Show;
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
  end;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;

  SkipWarning := False;
  p := 0;
  lvServ.Items.BeginUpdate;
  for i := 0 to length(CPRec) - 1 do begin;
    if length(CPRec) >= 10
    then begin;
      inc(p);
      FormWait.pb.Position := p;
    end;

    if CPrec[i].servT <> 'n'
    then continue;

    if cdsServ.FindKey([CPRec[i].servSID,
                        CPRec[i].servUniq,
                        CPRec[i].servTSID,
                        CPRec[i].servNID,
                        CPRec[i].servType])
    then begin;
      if (not SkipWarning) and
         (MessageDlg(lwLngTrns(name,['Service % already exists!~~' +
                                'Select "Yes to all" to skip this warning ' +
                                'during the remainder of this operation',
                                CleanText(CPRec[i].servName)]),
                     mtError,[mbOK,mbYesToAll],0) = mrYesToAll)
      then SkipWarning := True;
      continue;
    end;

    ServEdit := True;
    cdsServ.Append;
    cdsServ.FieldByName('servSid').AsInteger := CPRec[i].servSID;
    cdsServ.FieldByName('servUniq').AsInteger := CPRec[i].servUniq;
    cdsServ.FieldByName('servTSID').AsInteger := CPRec[i].servTSID;
    cdsServ.FieldByName('servNID').AsInteger := CPRec[i].servNID;
    cdsServ.FieldByName('servType').AsInteger := CPRec[i].servType;
    cdsServ.FieldByName('servTypeTxt').AsString := TrnsServType(cdsServ.FieldByName('servType').AsInteger);
    cdsServ.FieldByName('servName').AsString := CPRec[i].servName;
    cdsServ.FieldByName('servPackage').AsString := CPRec[i].servPackage;
    cdsServ.FieldByName('servNr').AsInteger := CPRec[i].servNr;
    cdsServ.FieldByName('servFreq').AsInteger := CPRec[i].servFreq;
    cdsServ.FieldByName('servSymb').AsInteger := CPRec[i].servSymb;
    cdsServ.FieldByName('servPol').AsInteger := CPRec[i].servPol;
    cdsServ.FieldByName('servFEC').AsInteger := CPRec[i].servFEC;
    cdsServ.FieldByName('servPos').AsInteger := CPRec[i].servPos;
    cdsServ.FieldByName('servVPID').AsInteger := CPRec[i].servVPID;
    cdsServ.FieldByName('servAPID').AsInteger := CPRec[i].servAPID;
    cdsServ.FieldByName('servTPID').AsInteger := CPRec[i].servTPID;
    cdsServ.FieldByName('servPPID').AsInteger := CPRec[i].servPPID;
    cdsServ.FieldByName('serv3PID').AsInteger := CPRec[i].serv3PID;
    cdsServ.FieldByName('servC07BSDelay').AsInteger := CPRec[i].servC07BSDelay;
    cdsServ.FieldByName('servC08PCMDelay').AsInteger := CPRec[i].servC08PCMDelay;
    cdsServ.FieldByName('servFlags').AsInteger := CPRec[i].servFlags;
    inc(HighDbeNr);
    cdsServ.FieldByName('servDbeNr').AsInteger := HighDbeNr;
    cdsServ.FieldByName('servSTC').AsString := CPRec[i].servSTC;
    cdsServ.FieldByName('servTrExtra').AsString := CPRec[i].servTrExtra;
    cdsServ.FieldByName('servCleanName').AsString := CPRec[i].ServCleanName;
    cdsServ.FieldByName('servExtra').AsString := CPRec[i].servExtra;
    cdsServ.Post;
    ServEdit := False;

    log('i',lwLngTrns(name,['Service % added to services list %',
                       CleanText(CPRec[i].servName),DetName]));
    SetMenu('changed');
  end;

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;
  lvServ.Items.Count := cdsServ.RecordCount;

  lvServ.Items.EndUpdate;

  if length(CPRec) >= 10
  then begin;
    FormWait.Hide;
    Screen.Cursor := crDefault;
  end;

  TotalsBuild();
end;

procedure TFormMain.lvServKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #1
  then begin;
    Screen.Cursor := crHourglass;
    lvServ.SelectAll;
    Screen.Cursor := crDefault;
  end
  else
    if key = #3
    then ServCutClick(servCopy)
    else
      if key = #24
      then ServCutClick(servCut)
      else
        if key = #22
        then ServPasteClick(servPaste)
        else
          if key = #12
          then servLockClick(Self)
          else
            if integer(key) = ZapKey
            then ServZAPtoservice1Click(Self);
end;

procedure TFormMain.ServZAPtoservice1Click(Sender: TObject);
var
  s,c: String;
  CmdOk: Boolean;
  IdHTTP1: TIdHTTP;
begin
  if not EnableZAP
  then begin;
    MessageDlg(lwLngTrns(name,['The ZAP function is currently disabled.~' +
                          'To use this function, go to the options panel, enter the IP ' +
                          'address of your Dreambox and enable the ZAP function.']),
               mtInformation,[mbOK],0);
    exit;
  end;

  if lvServ.Selected = nil
  then exit;

  if DBIP = ''
  then begin;
    MessageDlg(lwLngTrns(name,['You have not configured an IP address for your Dreambox!~' +
                          'Before you can use the ZAP function you must enter the IP address on '+
                          'the options panel.']),
               mtError,[mbOK],0);
    exit;
  end;

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;

  log('i',lwLngTrns(name,['Processing ZAP command for service: %',lvServ.Selected.Caption]));

  IdHTTP1 := TIdHTTP.Create(Self);
  IdHTTP1.Request.BasicAuthentication := True;
  IdHTTP1.Request.Username := DBUsername;
  IdHTTP1.Request.Password := DBPassword;

  CmdOk := False;
  c := 'http://' +
       DBIP + ':' + DBHTTPPORT +
       '/cgi-bin/switchService?' +
       IntToHex(StrToInt(lvServ.Selected.SubItems[9]),1) + ':' +
       IntToHex(StrToInt(lvServ.Selected.SubItems[18]),8) + ':' +
       IntToHex(StrToInt(lvServ.Selected.SubItems[10]),1) + ':' +
       IntToHex(StrToInt(lvServ.Selected.SubItems[11]),1) + ':' +
       IntToHex(StrToInt(lvServ.Selected.SubItems[12]),1);
  try
    s := IdHTTP1.Get(c);
  except
    on E: Exception
    do s := E.Message;
  end;
  IdHTTP1.Destroy;

  log('i',lwLngTrns(name,['Network response: %',s]));
  if s = '0'
  then CmdOk := True;

  ToolBar1.Enabled := True;
  Screen.Cursor := crDefault;
  if not CmdOk
  then begin;
    log('w',lwLngTrns(name,['The ZAP command did not receive the normal 0 returncode from the Dreambox.']));
    if not ZAPNoErrorCheck
    then MessageDlg(lwLngTrns(name,['ZAP command failed. See log for more information.']),
                    mtError,[mbOK],0);
  end;
end;

procedure TFormMain.lvServDblClick(Sender: TObject);
begin
  if ServEdit
  then exit;
  
  if ZAPKey = 0
  then begin;
    ServZAPtoservice1Click(Self);
    exit;
  end
  else EditDetails1Click(Self);
end;

procedure TFormMain.DetZaptoserviceClick(Sender: TObject);
var
  c,s: String;
  CmdOk: Boolean;
  IdHTTP1: TIdHTTP;
begin
  if not EnableZAP
  then begin;
    MessageDlg(lwLngTrns(name,['The ZAP function is currently disabled.~' +
                          'To use this function, go to the options panel, enter the IP ' +
                          'address of your Dreambox and enable the ZAP function.']),
               mtInformation,[mbOK],0);
    exit;
  end;

  if lvDet.Selected = nil
  then exit;

  if lvDet.Selected.SubItems[11] = 'm'
  then begin;
    MessageDlg(lwLngTrns(name,['You can not ZAP to a marker.']),
               mtInformation,[mbOK],0);
    exit;
  end;

  if DBIP = ''
  then begin;
    MessageDlg(lwLngTrns(name,['You have not configured an IP address for your Dreambox!~~' +
                          'Before you can use the ZAP function you must enter the IP address on '+
                          'the options panel.']),
               mtError,[mbOK],0);
    exit;
  end;

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;

  log('i',lwLngTrns(name,['Processing ZAP command for service: %',lvDet.Selected.Caption]));

  IdHTTP1 := TIdHTTP.Create(Self);
  IdHTTP1.Request.BasicAuthentication := True;
  IdHTTP1.Request.Username := DBUsername;
  IdHTTP1.Request.Password := DBPassword;

  CmdOk := False;
  c := 'http://' +
       DBIP + ':' + DBHTTPPORT +
       '/cgi-bin/switchService?' +
       IntToHex(StrToInt(lvDet.Selected.SubItems[2]),1) + ':' +
       IntToHex(StrToInt(lvDet.Selected.SubItems[6]),8) + ':' +
       IntToHex(StrToInt(lvDet.Selected.SubItems[3]),1) + ':' +
       IntToHex(StrToInt(lvDet.Selected.SubItems[4]),1) + ':' +
       IntToHex(StrToInt(lvDet.Selected.SubItems[5]),1);
  try
    s := IdHTTP1.Get(c);
  except
    on E: Exception
    do s := E.Message;
  end;
  IdHTTP1.Destroy;
  
  log('i',lwLngTrns(name,['Network response: %',s]));
  if s = '0'
  then CmdOk := True;

  ToolBar1.Enabled := True;
  Screen.Cursor := crDefault;
  if not CmdOk
  then begin;
    log('w',lwLngTrns(name,['The ZAP command did not receive the normal 0 returncode from the Dreambox.']));
    if not ZAPNoErrorCheck
    then MessageDlg(lwLngTrns(name,['ZAP command failed. See log for more information.~' +
                                    'Check IP address, HTTP Port, username and password.']),
                    mtError,[mbOK],0);
  end;
end;

procedure TFormMain.lvDetDblClick(Sender: TObject);
begin
  if lvDet.Selected = nil
  then exit;

  if lvDet.Selected.SubItems[11] = 'm'
  then DetMarkerEdit(Self)
  else
    if ZAPKey = 0
    then begin;
      DetZAPtoserviceClick(Self);
      exit;
    end
    else DetLocateInServices1Click(Self);
end;

procedure TFormMain.tvCollapseAllClick(Sender: TObject);
begin
  tv.FullCollapse;
end;

procedure TFormMain.tvExpandAllClick(Sender: TObject);
begin
  tv.FullExpand;
end;

procedure TFormMain.tvDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  tn,ntn: TTreeNode;
  fwcds,twcds: TClientDataset;
  seq,c: Integer;
  fpLD,tpLD: ^TListData;
  ld: TListData;
  fpf,tpf: String;
  item: TListItem;              
  SkipWarning: Boolean;
begin
  if tv.Selected = nil
  then Exit;

  tn := tv.GetNodeAt(X,Y);

  { Dropped bouquet from within the treeview }
  if DragDropType = 'Bouq'
  then begin;
    if (tn = nil) or
       (tn.Parent = nil)
    then exit;

    if (tv.Selected.Parent <> nil) and
       (tv.Selected.Parent.Text[1] = tn.Parent.Text[1])
    then begin;
      { Within the TV or Radio section itself: just move the entry }
      tv.Selected.MoveTo(tn,naInsert);
      SetMenu('changed');
    end
    else begin;
      { Between Bouquet and TV or Radio: copy the bouquet }
      fpLD := tv.Selected.Data;
      ld := NewBouquet(tn.Parent.Text[1]);
      New(tpLD);
      tpLD.FileName := ld.FileName;
      tpLD.Number := ld.Number;
      tpLD.Locked := fpLD.Locked;
      if tn.Parent.Text[1] = 'T'
      then begin;
        ntn := tv.Items.InsertObject(tn,tv.Selected.Text,tpLD);
        twcds := cdsFTV;
        tpf := 'ftv';
      end
      else
        if tn.Parent.Text[1] = 'R'
        then begin;
          ntn := tv.Items.InsertObject(tn,tv.Selected.Text,tpLD);
          twcds := cdsFRD;
          tpf := 'frd';
        end
        else begin;
          ntn := tv.Items.InsertObject(tn,tv.Selected.Text,tpLD);
          twcds := cdsFBQ;
          tpf := 'fbq';
        end;
      tnBQ.AlphaSort(True);
      if tv.Selected.Parent.Text[1] = 'T'
      then begin;
        fwcds := cdsFTV;
        fpf := 'ftv';
      end
      else
        if tv.Selected.Parent.Text[1] = 'R'
        then begin;
          fwcds := cdsFRD;
          fpf := 'frd';
        end
        else begin;
          fwcds := cdsFBQ;
          fpf := 'fbq';
        end;

      seq := 0;
      fwcds.FindKey([fpLD.Number]);
      while not (fwcds.Eof) and
                (fwcds.FieldByName(fpf+'SetNr').AsInteger = fpLD.Number)
      do begin;
        if (ntn.Parent.Text[1] = 'P') and
           (fwcds.FieldByName(fpf+'Descr').AsString <> '')
        then begin;
          fwcds.Next;
          continue;
        end;

        twcds.Append;
        twcds.FieldByName(tpf+'SeqNr').AsString := fwcds.FieldByName(fpf+'SeqNr').AsString;
        twcds.FieldByName(tpf+'Name').AsString := fwcds.FieldByName(fpf+'Name').AsString;
        twcds.FieldByName(tpf+'SID').AsString := fwcds.FieldByName(fpf+'SID').AsString;
        twcds.FieldByName(tpf+'Uniq').AsString := fwcds.FieldByName(fpf+'Uniq').AsString;
        twcds.FieldByName(tpf+'TSID').AsString := fwcds.FieldByName(fpf+'TSID').AsString;
        twcds.FieldByName(tpf+'NID').AsString := fwcds.FieldByName(fpf+'NID').AsString;
        twcds.FieldByName(tpf+'ServType').AsString := fwcds.FieldByName(fpf+'ServType').AsString;
        twcds.FieldByName(tpf+'SetNr').AsInteger := tpLD.Number;
        twcds.FieldByName(tpf+'Descr').AsString := fwcds.FieldByName(fpf+'Descr').AsString;
        twcds.FieldByName(tpf+'DbeNr').AsString := fwcds.FieldByName(fpf+'DbeNr').AsString;
        twcds.FieldByName(tpf+'T').AsString := fwcds.FieldByName(fpf+'T').AsString;
        twcds.Post;

        { Update details window if it contains the now changed bouquet }
        if (ntn.Parent.Text[1] = DetType) and
           (tpLD.Number = DetSetNr)
        then begin;
          item := lvDet.Items.Insert(seq);
          inc(seq);
          item.Caption := twcds.FieldValues[tpf+'Name'];
          item.SubItems.Add(TrnsServType(twcds.FieldByName(tpf+'ServType').AsInteger));
          if cdsServ.FindKey([twcds.FieldByName(tpf+'SID').AsString,
                              twcds.FieldByName(tpf+'Uniq').AsString,
                              twcds.FieldByName(tpf+'TSID').AsString,
                              twcds.FieldByName(tpf+'NID').AsString,
                              twcds.FieldByName(tpf+'ServType').AsString])
          then item.SubItems.Add(Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]))
          else item.SubItems.Add('Error');
          item.SubItems.Add(twcds.FieldByName(tpf+'SID').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'TSID').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'NID').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'ServType').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'Uniq').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'SetNr').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'Descr').AsString);
          if (cdsServ.FindKey([twcds.FieldByName(tpf+'SID').AsString,
                               twcds.FieldByName(tpf+'Uniq').AsString,
                               twcds.FieldByName(tpf+'TSID').AsString,
                               twcds.FieldByName(tpf+'NID').AsString,
                               twcds.FieldByName(tpf+'ServType').AsString])) and
             (cdsServ.FieldByName('servLock').AsInteger = 1)
          then item.SubItems.Add('1')
          else item.SubItems.Add('0');
          item.SubItems.Add(twcds.FieldByName(tpf+'DbeNr').AsString);
          item.SubItems.Add(twcds.FieldByName(tpf+'T').AsString);
          DetChanged := True;
        end;

        fwcds.Next;
      end;
      log('i',lwLngTrns(name,['Bouquet % copied from % to %',
                         tv.Selected.Text,tv.Selected.Parent.Text,tn.Parent.Text]));
      ntn.MakeVisible;
      ntn.Selected := True;
      if ShowResultMsg
      then MessageDlg(lwLngTrns(name,['Bouquet % copied from % to %',
                                 tv.Selected.Text,tv.Selected.Parent.Text,tn.Parent.Text]),
                      mtInformation,[mbOK],0);
    end;
    SetMenu('changed');
  end;

  { Dropped service(s) from the details list }
  if DragDropType = 'Det'
  then begin;
    tpLD := tn.Data;
    c := 0;
    if tn.Parent.Text[1] = 'T'
    then begin;
      twcds := cdsFTV;
      tpf := 'ftv';
    end
    else
      if tn.Parent.Text[1] = 'R'
      then begin;
        twcds := cdsFRD;
        tpf := 'frd';
      end
      else begin;
        twcds := cdsFBQ;
        tpf := 'fbq';
      end;

    SkipWarning := False;
    seq := 20000;
    while lvDet.Selected <> nil do begin;
      if (tn.Parent.Text[1] = 'P') and
         (lvDet.Selected.SubItems[8] <> '')
      then begin;
        lvDet.Selected.Selected := False;
        continue;
      end;

      if (not AllowDuplicates) and
         (twcds.FindKey([tpLD.Number,
                         lvDet.Selected.SubItems[2],
                         lvDet.Selected.SubItems[6],
                         lvDet.Selected.SubItems[3],
                         lvDet.Selected.SubItems[4],
                         lvDet.Selected.SubItems[5]]))
      then begin;
        if (not SkipWarning) and
           (MessageDlg(lwLngTrns(name,['Service % already exists in bouquet %~~' +
                                       'Skip this warning for the remainder of this action?',
                                 lvDet.Selected.Caption,tn.Text]),
                       mtWarning,[mbNo,mbYes],0) = mrYes)
        then SkipWarning := True;
        lvDet.Selected.Selected := False;
        continue;
      end;

      twcds.Append;
      twcds.FieldByName(tpf+'SeqNr').AsInteger := seq;
      if lvDet.Selected.SubItems[11] <> 'r'
      then twcds.FieldByName(tpf+'Name').AsString := lvDet.Selected.Caption
      else twcds.FieldByName(tpf+'Name').AsString := lvDet.Selected.SubItems[8];
      twcds.FieldByName(tpf+'SID').AsString := lvDet.Selected.SubItems[2];
      twcds.FieldByName(tpf+'Uniq').AsString := lvDet.Selected.SubItems[6];
      twcds.FieldByName(tpf+'TSID').AsString := lvDet.Selected.SubItems[3];
      twcds.FieldByName(tpf+'NID').AsString := lvDet.Selected.SubItems[4];
      twcds.FieldByName(tpf+'ServType').AsString := lvDet.Selected.SubItems[5];
      twcds.FieldByName(tpf+'SetNr').AsInteger := tpLD.Number;
      if lvDet.Selected.SubItems[11] <> 'r'
      then twcds.FieldByName(tpf+'Descr').AsString := lvDet.Selected.SubItems[8]
      else twcds.FieldByName(tpf+'Descr').AsString := lvDet.Selected.Caption;
      twcds.FieldByName(tpf+'DbeNr').AsString := lvDet.Selected.SubItems[10];
      twcds.FieldByName(tpf+'T').AsString := lvDet.Selected.SubItems[11];
      twcds.Post;

      log('i',lwLngTrns(name,['Service % added to Bouquet %',
                         lvDet.Selected.Caption,tn.Text]));
      inc(c);
      SetMenu('changed');

      lvDet.Selected.Selected := False;
    end;
    if ShowResultMsg
    then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',
                              IntToStr(c),tn.Text]),
                    mtInformation,[mbOK],0);
  end;

  { Dropped service(s) from the services list }
  if DragDropType = 'Serv'
  then begin;
    tpLD := tn.Data;
    c := 0;
    if tn.Parent.Text[1] = 'T'
    then begin;
      twcds := cdsFTV;
      tpf := 'ftv';
    end
    else
      if tn.Parent.Text[1] = 'R'
      then begin;
        twcds := cdsFRD;
        tpf := 'frd';
      end
      else begin;
        twcds := cdsFBQ;
        tpf := 'fbq';
      end;
    if (tn.Parent.Text[1] = DetType) and
       (tpLD.Number = DetSetNr)
    then seq := 0
    else seq := 20000;
    SkipWarning := False;
    while lvServ.Selected <> nil do begin;
      if (not AllowDuplicates) and
         (twcds.FindKey([tpLD.Number,
                         lvServ.Selected.SubItems[9],
                         lvServ.Selected.SubItems[18],
                         lvServ.Selected.SubItems[10],
                         lvServ.Selected.SubItems[11],
                         lvServ.Selected.SubItems[12]]))
      then begin;
        if (not SkipWarning) and
           (MessageDlg(lwLngTrns(name,['Service % already exists in bouquet %~~' +
                                       'Skip this warning for the remainder of this action?',
                                 lvServ.Selected.Caption,tn.Text]),
                       mtWarning,[mbNo,mbYes],0) = mrYes)
        then SkipWarning := True;

        lvServ.Selected.Selected := False;
        continue;
      end;

      twcds.Append;
      twcds.FieldByName(tpf+'SeqNr').AsInteger := seq;
      twcds.FieldByName(tpf+'Name').AsString := lvServ.Selected.Caption;
      twcds.FieldByName(tpf+'SID').AsString := lvServ.Selected.SubItems[9];
      twcds.FieldByName(tpf+'Uniq').AsString := lvServ.Selected.SubItems[18];
      twcds.FieldByName(tpf+'TSID').AsString := lvServ.Selected.SubItems[10];
      twcds.FieldByName(tpf+'NID').AsString := lvServ.Selected.SubItems[11];
      twcds.FieldByName(tpf+'ServType').AsString := lvServ.Selected.SubItems[12];
      twcds.FieldByName(tpf+'SetNr').AsInteger := tpLD.Number;
      twcds.FieldByName(tpf+'Descr').AsString := '';
      twcds.FieldByName(tpf+'DbeNr').AsString := lvServ.Selected.SubItems[20];
      twcds.FieldByName(tpf+'T').AsString := 'n';
      twcds.Post;

      { Update details window if it contains the now changed bouquet }
      if (tn.Parent.Text[1] = DetType) and
         (tpLD.Number = DetSetNr)
      then begin;
        item := lvDet.Items.Insert(seq);
        inc(seq);
        item.Caption := lvServ.Selected.Caption;
        item.SubItems.Add(TrnsServType(StrToInt(lvServ.Selected.SubItems[12])));
        item.SubItems.Add(lvServ.Selected.SubItems[8]);
        item.SubItems.Add(lvServ.Selected.SubItems[9]);
        item.SubItems.Add(lvServ.Selected.SubItems[10]);
        item.SubItems.Add(lvServ.Selected.SubItems[11]);
        item.SubItems.Add(lvServ.Selected.SubItems[12]);
        item.SubItems.Add(lvServ.Selected.SubItems[18]);
        item.SubItems.Add(IntToStr(tpLD.Number));
        item.SubItems.Add('');
        if (cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])) and
           (cdsServ.FieldByName('servLock').AsInteger = 1)
        then item.SubItems.Add('1')
        else item.SubItems.Add('0');
        item.SubItems.Add(lvServ.Selected.SubItems[20]);
        item.SubItems.Add('n');
        DetChanged := True;

        log('i',lwLngTrns(name,['Service % added to Bouquet %',
                           lvServ.Selected.Caption,tn.Text]));
      end;
      SetMenu('changed');
      inc(c);
      lvServ.Selected.Selected := False;
    end;
    if ShowResultMsg
    then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',
                               IntToStr(c),tn.Text]),
                    mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.tvDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  tn: TTreeNode;
begin
  Accept := False;

  if source is TTreeView
  then begin;
    tn := tv.GetNodeAt(X,Y);
    if (tn <> nil) and
       (tv.Selected <> nil) and
       (tn.Parent <> nil) and
       (tv.Selected.Parent <> nil)
    then
      if (tn.Parent.Text[1] = 'P') and
         (tv.Selected.Parent.Text[1] = 'P')
      then
      else Accept := True;
  end;

  if Source is TLIstView
  then begin;
    tn := tv.GetNodeAt(X,Y);
    if (tn <> nil) and
       (tn.Parent <> nil) 
    then Accept := True;
  end; 

  if y < 15
  then timertvScroll.Enabled := True
  else
    if y > tv.Height-15
    then timertvScroll.Enabled := True;
end;

procedure TFormMain.tvEdited(Sender: TObject; Node: TTreeNode;
  var S: String);
begin
  log('i',lwLngTrns(name,['Bouquet % renamed to %',Node.Text,s]));
  node.Text := s;

  if (Node.Parent <> nil) and
     (Node.Parent.Text[1] = 'P')
  then tnBQ.AlphaSort(True);

  SetMenu('changed');
end;

procedure TFormMain.tvDeleteClick(Sender: TObject);
var
  wcds: TClientDataset;
  stn,lp: TTreeNode;
  pf: String;
  pListData: ^TListData;
  i,c,r: Integer;
  skipconfirm: Boolean;
begin
  skipconfirm := False;
  c := 0;
  for i := 0 to tv.SelectionCount - 1 do begin;
    stn := tv.Selections[i];
    if (stn = nil) or
       (stn.Parent = nil)
    then begin;
      stn.Cut := False;
      continue;
    end;
    if ((stn.Parent.Text[1] = 'T') or
        (stn.Parent.Text[1] = 'R')) and
       (stn.Parent.Count = 1)
    then begin;
      stn.Cut := False;
      MessageDlg(lwLngTrns(name,['You can not delete the last TV or Radio user bouquet, ' +
                            'there must always remain at least one list in each category.']),
                 mtError,[mbOK],0);
      continue;
    end;

    if (not skipconfirm) and
       (ConfirmDelete)
    then begin;
      r := MessageDlg(lwLngTrns(name,['Are you sure you want to delete "%" from %?',
                                stn.Text,stn.Parent.Text]),
                      mtConfirmation,[mbYes,mbNo,mbYesToAll],0);
      if r in [mrNo,mrCancel]
      then begin;
        stn.Cut := False;
        continue;
      end
      else
        if r = mrYesToAll
        then skipconfirm := True;
    end;

    screen.Cursor := crHourGlass;
    log('i',lwLngTrns(name,['"%" deleted from %',stn.Text,stn.Parent.Text]));
    stn.Cut := True;
    pListData := stn.Data;
    if DetSetNr = pListData.Number
    then lvDet.Clear;
    if stn.Parent.Text[1] = 'T'
    then begin;
      wcds := cdsFTV;
      wcds.Filter := 'ftvSetNr = ''' + IntToStr(pListData.Number) + '''';
      wcds.Filtered := True;
      pf := 'ftv';
    end
    else
      if stn.Parent.Text[1] = 'R'
      then begin;
        wcds := cdsFRD;
        wcds.Filter := 'frdSetNr = ''' + IntToStr(pListData.Number) + '''';
        wcds.Filtered := True;
        pf := 'frd';
      end
      else begin;
        wcds := cdsFBQ;
        wcds.Filter := 'fbqSetNr = ''' + IntToStr(pListData.Number) + '''';
        wcds.Filtered := True;
        pf := 'fbq';
      end;

    wcds.First;
    while not wcds.Eof do begin;
      wcds.Delete;
      wcds.First;
    end;

    wcds.Filtered := False;
    wcds.Filter := '';
    screen.Cursor := crDefault;
  end;

  lp := nil;
  screen.Cursor := crHourGlass;
  tv.Items.BeginUpdate;
  for i := tv.SelectionCount - 1 downto 0 do begin;
    stn := tv.Selections[i];

    if (stn = nil) or
       (stn.Parent = nil)
    then continue;

    if ((stn.Parent.Text[1] = 'T') or
        (stn.Parent.Text[1] = 'R')) and
       (stn.Parent.Count = 1)
    then continue;

    if stn.Cut = false
    then continue;

    lp := stn.Parent;
    Dispose(stn.Data);
    stn.Delete;
    inc(c);
  end;
  tv.Items.EndUpdate;
  screen.Cursor := crDefault;

  if c > 0
  then begin;
    if lp.Count > 0
    then lp.Item[0].Selected := True
    else tnTV.Item[0].Selected := True;

    SetMenu('changed');
  end;
end;

procedure TFormMain.tvInsertClick(Sender: TObject);
var
  pListData: ^TListData;
  ld: TListData;
  et: String;
  tn: TTreeNode;
begin
  if tv.Selected = nil
  then begin;
    MessageDlg(lwLngTrns(name,['Please first select an entry in the part of the list where ' +
                          'the new entry should be added']),
               mtError,[mbOK],0);
    exit;
  end;

  if tv.Selected.Level = 1
  then et := tv.Selected.Parent.Text[1]
  else et := tv.Selected.Text[1];

  ld := NewBouquet(et);

  new(pListData);
  if et = 'P'
  then begin;
    tn := tv.Items.AddChildObject(tnBQ,'<new bouquet>',pListData);
    tnBQ.AlphaSort(True);
  end
  else
    if et = 'T'
    then tn := tv.Items.AddChildObject(tnTV,'<new user bouquet>',pListData)
    else tn := tv.Items.AddChildObject(tnRD,'<new user bouquet>',pListData);
  pListData.FileName := ld.FileName;
  pListData.Number := ld.Number;
  pListData.Locked := False;

  tv.ClearSelection(False);
  tn.Selected := True;
  tn.MakeVisible;

  tn.EditText;
  SetMenu('changed');

  TotalsBuild();
end;

procedure TFormMain.tvPrefixClick(
  Sender: TObject);
var
  obn,b,bnr,servsif: String;
  cb,i,p: Integer;
  slBouqToNr,slNrToBouq,slBNr,slTrans,slDelete: TStringList;
  NewBouq,servflt: Boolean;
  pListData: ^TListData;
  ld: TListData;
begin
  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;

  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := tnBQ.Count;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;
  p := 0;

  cb := 0;
  slBouqToNr := TStringList.Create;
  slBouqToNr.Sorted := True;
  slBouqToNr.CaseSensitive := True;

  slNrToBouq := TStringList.Create;
  slNrToBouq.Sorted := True;
  slNrToBouq.CaseSensitive := True;

  slTrans := TStringList.Create;
  slTrans.Clear;
  slTrans.Sorted := True;

  slDelete := TStringList.Create;
  slDelete.Clear;
  slDelete.Sorted := True;

  slBNr := TStringList.Create;
  slBNr.Clear;
  slBNr.Sorted := True;
  for i := 0 to tnBQ.Count - 1 do begin;
    pListData := tnBQ.Item[i].Data;
    slBNr.Add(IntToStr(pListData.Number));
    slBouqToNr.add(tnBQ.Item[i].Text + '=' + IntToStr(pListData.Number));
    slNrToBouq.add(IntToStr(pListData.Number) + '=' + tnBQ.Item[i].Text);
  end;

  wcdsFBQ.Open;
  wcdsFBQ.EmptyDataSet;
  wcdsFBQ.Close;
  wcdsFBQ.Open;

  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;

  tv.Items.BeginUpdate;
  cdsFBQ.First;
  while not cdsFBQ.Eof
  do begin;
    inc(p);
    FormWait.pb.Position := p;

    if cdsFBQ.FieldByName('fbqSetNr').AsInteger < 0
    then begin;
      if not wcdsFBQ.FindKey([cdsFBQ.FieldByName('fbqSID').AsString,
                              cdsFBQ.FieldByName('fbqUniq').AsString,
                              cdsFBQ.FieldByName('fbqTSID').AsString,
                              cdsFBQ.FieldByName('fbqNID').AsString,
                              cdsFBQ.FieldByName('fbqServType').AsString,
                              cdsFBQ.FieldByName('fbqSetNr').AsString])
      then begin;
        wcdsFBQ.Append;
        wcdsFBQ.FieldByName('fbqSeqNr').AsString := cdsFBQ.FieldByName('fbqSeqNr').AsString;
        wcdsFBQ.FieldByName('fbqSID').AsString := cdsFBQ.FieldByName('fbqSID').AsString;
        wcdsFBQ.FieldByName('fbqUniq').AsString := cdsFBQ.FieldByName('fbqUniq').AsString;
        wcdsFBQ.FieldByName('fbqTSID').AsString := cdsFBQ.FieldByName('fbqTSID').AsString;
        wcdsFBQ.FieldByName('fbqNID').AsString := cdsFBQ.FieldByName('fbqNID').AsString;
        wcdsFBQ.FieldByName('fbqServType').AsString := cdsFBQ.FieldByName('fbqServType').AsString;
        wcdsFBQ.FieldByName('fbqName').AsString := cdsFBQ.FieldByName('fbqName').AsString;
        wcdsFBQ.FieldByName('fbqSetNr').AsString := cdsFBQ.FieldByName('fbqSetNr').AsString;
        wcdsFBQ.FieldByName('fbqDescr').AsString := cdsFBQ.FieldByName('fbqDescr').AsString;
        wcdsFBQ.FieldByName('fbqDbeNr').AsString := cdsFBQ.FieldByName('fbqDbeNr').AsString;
        wcdsFBQ.FieldByName('fbqT').AsString := cdsFBQ.FieldByName('fbqT').AsString;
        wcdsFBQ.Post;
      end;
    end
    else begin;
      obn := slNrToBouq.Values[cdsFBQ.FieldByName('fbqSetNr').AsString];
      if slDelete.IndexOf(cdsFBQ.FieldByName('fbqSetNr').AsString) < 0
      then slDelete.Add(cdsFBQ.FieldByName('fbqSetNr').AsString);

      cdsServ.FindKey([cdsFBQ.FieldByName('fbqSID').AsString,
                       cdsFBQ.FieldByName('fbqUniq').AsString,
                       cdsFBQ.FieldByName('fbqTSID').AsString,
                       cdsFBQ.FieldByName('fbqNID').AsString,
                       cdsFBQ.FieldByName('fbqServType').AsString]);
      if cdsServ.FieldByName('servPos').AsInteger < 0
      then b := Format('W%4.1n',[Abs(cdsServ.FieldByName('servPos').AsInteger/10)])
      else b := Format('E%4.1n',[Abs(cdsServ.FieldByName('servPos').AsInteger/10)]);
      for i := 1 to length(b) do begin;
        if b[i] = ' '
        then b[i] := '0';
      end;
      b := b + ' ' + obn;

      { get current or new bouquet sequence number }
      NewBouq := False;
      pListData := nil;
      bnr := slBouqToNr.Values[b];
      if bnr = ''
      then begin;
        NewBouq := True;
        new(pListData);
        ld := NewBouquet('P');
        pListData.FileName := ld.FileName;
        pListData.Number := ld.Number;
        pListData.Locked := False;
        bnr := IntToStr(ld.Number);
      end;

      { add bouquet entry to workdataset}
      if not wcdsFBQ.FindKey([cdsFBQ.FieldByName('fbqSID').AsString,
                              cdsFBQ.FieldByName('fbqUniq').AsString,
                              cdsFBQ.FieldByName('fbqTSID').AsString,
                              cdsFBQ.FieldByName('fbqNID').AsString,
                              cdsFBQ.FieldByName('fbqServType').AsString,
                              bnr])
      then begin;
        wcdsFBQ.Append;
        wcdsFBQ.FieldByName('fbqSeqNr').AsInteger := cdsFBQ.FieldByName('fbqSeqNr').AsInteger;
        wcdsFBQ.FieldByName('fbqSID').AsString := cdsFBQ.FieldByName('fbqSID').AsString;
        wcdsFBQ.FieldByName('fbqUniq').AsString := cdsFBQ.FieldByName('fbqUniq').AsString;
        wcdsFBQ.FieldByName('fbqTSID').AsString := cdsFBQ.FieldByName('fbqTSID').AsString;
        wcdsFBQ.FieldByName('fbqNID').AsString := cdsFBQ.FieldByName('fbqNID').AsString;
        wcdsFBQ.FieldByName('fbqServType').AsString := cdsFBQ.FieldByName('fbqServType').AsString;
        wcdsFBQ.FieldByName('fbqName').AsString := cdsFBQ.FieldByName('fbqName').AsString;
        wcdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
        wcdsFBQ.FieldByName('fbqDescr').AsString := cdsFBQ.FieldByName('fbqDescr').AsString;
        wcdsFBQ.FieldByName('fbqDbeNr').AsString := cdsFBQ.FieldByName('fbqDbeNr').AsString;
        wcdsFBQ.FieldByName('fbqT').AsString := cdsFBQ.FieldByName('fbqT').AsString;
        wcdsFBQ.Post;
      end;

      if slBouqToNr.IndexOfName(b) < 0
      then begin;
        inc(cb);
        slBouqToNr.Add(b + '=' + bnr);
        slNrToBouq.Add(bnr + '=' + b);
        slBNr.Add(bnr);
        slTrans.Add(obn + '=' + b);
        if NewBouq
        then begin;
          tv.Items.AddChildObject(tnBQ,b,pListData);
          tnBQ.AlphaSort(True);
        end;
        log('i',lwLngTrns(name,['Prefixing bouquet names: bouquet % created',b]));
      end;
    end;

    cdsFBQ.Next;
  end;

  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;

  cdsFBQ.EmptyDataSet;
  cdsFBQ.Close;
  cdsFBQ.Open;
  wcdsFBQ.First;
  while not wcdsFBQ.Eof do begin;
    cdsFBQ.Append;
    cdsFBQ.FieldByName('fbqSID').AsString := wcdsFBQ.FieldByName('fbqSID').AsString;
    cdsFBQ.FieldByName('fbqUniq').AsString := wcdsFBQ.FieldByName('fbqUniq').AsString;
    cdsFBQ.FieldByName('fbqTSID').AsString := wcdsFBQ.FieldByName('fbqTSID').AsString;
    cdsFBQ.FieldByName('fbqNID').AsString := wcdsFBQ.FieldByName('fbqNID').AsString;
    cdsFBQ.FieldByName('fbqServType').AsString := wcdsFBQ.FieldByName('fbqServType').AsString;
    cdsFBQ.FieldByName('fbqName').AsString := wcdsFBQ.FieldByName('fbqName').AsString;
    cdsFBQ.FieldByName('fbqSetNr').AsString := wcdsFBQ.FieldByName('fbqSetNr').AsString;
    cdsFBQ.FieldByName('fbqDescr').AsString := wcdsFBQ.FieldByName('fbqDescr').AsString;
    cdsFBQ.FieldByName('fbqDbeNr').AsString := wcdsFBQ.FieldByName('fbqDbeNr').AsString;
    cdsFBQ.FieldByName('fbqT').AsString := wcdsFBQ.FieldByName('fbqT').AsString;
    cdsFBQ.Post;
    wcdsFBQ.Next;
  end;
  wcdsFBQ.EmptyDataSet;
  wcdsFBQ.Close;

  for i := tnBQ.Count - 1 downto 0 do begin;
    pListData := tnBQ[i].Data;
    if slDelete.IndexOf(IntToStr(pListData.Number)) > 0
    then begin;
      Dispose(tnBQ.Item[i].Data);
      tnBQ.Item[i].Delete;
    end;
  end;
  tv.Items.EndUpdate;

  slBouqToNr.Free;
  slNrToBouq.Free;
  slBNr.Free;
  slTrans.Free;
  slDelete.Free;

  if cb > 0
  then SetMenu('changed');

  TotalsBuild();

  tnTV.Item[0].Selected := True;
  tnTV.Item[0].MakeVisible;
  FormWait.Hide;
  Screen.Cursor := crDefault;
  ToolBar1.Enabled := True;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% bouquet entries read.~' +
                  '% bouquetnames prefixed with satellite position.~~' +
                  '(Only (not empty) bouquets created via an original Dreambox transponderscan '+
                  'are processed by this function.)',IntToStr(cdsFBQ.RecordCount),IntToStr(cb)]),
                  mtInformation,[mbOK],0);
  Log('i',lwLngTrns(name,['Prefixing bouquetnames: % bouquet entries read,' +
                     '% bouquetnames prefixed with satellite position.',IntToStr(cdsFBQ.RecordCount),IntToStr(cb)]));
  Log('i',lwLngTrns(name,['-- (Only (not empty) bouquets created via an original Dreambox transponderscan '+
          'are processed by this function.)']));
end;

procedure TFormMain.tvStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragDropType := 'Bouq';
end;

procedure TFormMain.tvEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  if Node.Level <> 1
  then AllowEdit := False
  else AllowEdit := True;
end;

procedure TFormMain.tvCompare(Sender: TObject; Node1, Node2: TTreeNode;
  Data: Integer; var Compare: Integer);
begin
  if (Node1.Level <> 1) or
     (Node2.Level <> 1)
  then Compare := 0
  else Compare := CompareText(Node1.Text,Node2.Text);
end;

procedure TFormMain.tvSortClick(Sender: TObject);
begin
  if tv.Selected = nil
  then exit;

  if tv.Selected.level = 0
  then tv.Selected.AlphaSort(True)
  else
    if tv.Selected.Level = 1
    then tv.Selected.Parent.AlphaSort(True);
  SetMenu('changed');
end;

procedure TFormMain.puTVPopup(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to puTV.Items.Count - 1 do
    puTV.Items[i].Enabled := false;

  if tbFiles.Enabled
  then begin;
    if tv.Selected <> nil
    then puTV.Items[3].Enabled := True;

    if (tv.Selected <> nil) and
       ((tv.Selected.Level = 0) and
        (tv.Selected.Text[1] <> 'P')) or
       ((tv.Selected.Level = 1) and
        (tv.Selected.Parent.Text[1] <> 'P'))
    then puTV.Items[6].Enabled := True;

    puTV.Items[8].Enabled := True;
    puTV.Items[9].Enabled := True;
    if (tv.Selected <> nil) and
       (tv.Selected.Parent <> nil) and
       (tv.Selected.Parent.Text[1] = 'P')
    then puTV.Items[11].Enabled := True;

    puTV.Items[13].Enabled := True;
    puTV.Items[14].Enabled := True;

    if (tv.Selected <> nil) and
       (tv.Selected.Level = 1)
    then begin;
      puTV.Items[0].Enabled := True;
      puTV.Items[2].Enabled := True;
      puTV.Items[4].Enabled := True;
      puTV.Items[16].Enabled := True;
    end;

    if tv.SelectionCount > 1
    then begin;
      for i := 0 to puTV.Items.Count - 1 do
        puTV.Items[i].Enabled := false;
      puTV.Items[4].Enabled := True;
    end;
  end;

  FormatPopupMenu(puTV);
end;

procedure TFormMain.tvMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  tn: TTreeNode;
begin
  if Button = mbRight
  then begin;
    tn := tv.GetNodeAt(X,Y);
    if tn <> nil
    then tn.Selected := True;
    puTV.Popup(tm.CursorPos.X,tm.CursorPos.Y);
  end;
end;

procedure TFormMain.TimertvScrollTimer(Sender: TObject);
begin
  if not tm.IsDragging
  then begin;
    timertvScroll.Enabled := False;
    exit;
  end;

  if (tm.CursorPos.X > tv.ClientOrigin.X) and
     (tm.CursorPos.X < tv.ClientOrigin.X + tv.Width)
  then begin;
    if (tm.CursorPos.Y > tv.ClientOrigin.Y) and
       (tm.CursorPos.y < tv.ClientOrigin.Y + 15)
    then begin;
      if (tm.CursorPos.y < tv.ClientOrigin.Y + 3)
      then begin;
        SendMessage(tv.Handle,WM_VSCROLL,SB_LINEUP,0);
        SendMessage(tv.Handle,WM_VSCROLL,SB_LINEUP,0);
      end;
      if (tm.CursorPos.y < tv.ClientOrigin.Y + 7)
      then SendMessage(tv.Handle,WM_VSCROLL,SB_LINEUP,0);
      SendMessage(tv.Handle,WM_VSCROLL,SB_LINEUP,0);
      exit;
    end;
    if (tm.CursorPos.Y > tv.ClientOrigin.Y + tv.Height - 15) and
       (tm.CursorPos.y < tv.ClientOrigin.Y + tv.Height)
    then begin;
      if tm.CursorPos.Y > tv.ClientOrigin.Y + tv.Height - 3
      then begin;
        SendMessage(tv.Handle,WM_VSCROLL,SB_LINEDOWN,0);
        SendMessage(tv.Handle,WM_VSCROLL,SB_LINEDOWN,0);
      end;
      if tm.CursorPos.Y > tv.ClientOrigin.Y + tv.Height - 7
      then SendMessage(tv.Handle,WM_VSCROLL,SB_LINEDOWN,0);
      SendMessage(tv.Handle,WM_VSCROLL,SB_LINEDOWN,0);
      exit;
    end;
  end;
end;

procedure TFormMain.tvCleanUpBouquets(Sender: TObject);
var
  i,c,p,crit: Integer;
  pListData: ^TListData;
  RebuildDet: Boolean;
  tn: TTreeNode;
  cds: TClientDataset;
  fn,n: String;
begin
  if (Sender as tMenuItem) = tvCleanup0
  then crit := 0
  else begin;
    n := '';
    while n = '' do begin;
      if not InputQuery(lwLngTrns(name,['Remove bouquets with only x services']),
                        lwLngTrns(name,['Enter the number of services to look for']),
                        n)
      then exit;
      if not StrIsNumeric(n,False)
      then n := '';
    end;
    crit := StrToInt(n);
  end;

  if tv.Selected = nil
  then exit;

  if ((tv.Selected.Level = 0) and
      (tv.Selected.Text[1] = 'T')) or
     ((tv.Selected.Level = 1) and
      (tv.Selected.Parent.Text[1] = 'T'))
  then begin;
    cds := cdsFTV;
    fn := 'ftv';
    tn := tnTV;
  end
  else
    if ((tv.Selected.Level = 0) and
        (tv.Selected.Text[1] = 'R')) or
       ((tv.Selected.Level = 1) and
        (tv.Selected.Parent.Text[1] = 'R'))
    then begin;
      cds := cdsFRD;
      fn := 'frd';
      tn := tnRd;
    end
    else begin;
      cds := cdsFBQ;
      fn := 'fbq';
      tn := tnBQ;
    end;

  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := tn.Count;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  c := 0;
  p := 0;
  RebuildDet := False;
  tv.Items.BeginUpdate;
  for i := tn.Count - 1 downto 0 do begin;
    inc(p);
    FormWait.pb.Position := p;
    if (fn <> 'fbq') and
       (tn.Count = 1)
    then break;

    pListData := tn.Item[i].Data;
    cds.Filter := fn + 'SetNr=' + '''' + IntToStr(pListData.Number) + '''';
    cds.Filtered := True;
    if cds.RecordCount = crit
    then begin;
      if (lowercase(DetType) = copy(fn,2,1)) and
         (DetSetNr = pListData.Number)
      then RebuildDet := True;
      log('i',lwLngTrns(name,['Bouquet % with % services removed',
                              tn.Item[i].Text,IntToStr(Crit)]));
      Dispose(pListData);
      tn.Item[i].Delete;
      inc(c);
    end;
    cds.Filtered := False;
    cds.Filter := '';
  end;
  tv.Items.EndUpdate;
  FormWait.Hide;
  Screen.Cursor := crDefault;

  if RebuildDet
  then begin;
    tnTV.Item[0].MakeVisible;
    tnTV.Item[0].Selected := True;
  end;
  if c > 0
  then SetMenu('changed');
  if ShowResultMsg
  then begin;
    MessageDlg(lwLngTrns(name,['% Bouquets with % services deleted',
                               IntToStr(c),IntToStr(crit)]),
               mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.tvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tv.IsEditing
  then exit;

  if key = 46
  then tvDeleteClick(Self)
  else
    if key = 45
    then tvInsertClick(Self);
end;

procedure TFormMain.tvChange(Sender: TObject; Node: TTreeNode);
var
  pListData: ^TListData;
begin
  if (Node = nil) or
     (Node.Parent = nil)
  then exit;

  Screen.Cursor := crHourGlass;
  pListData := Node.Data;

  if DetType <> ''
  then lvDetSave();
  DetType := Node.Parent.Text[1];
  DetSetNr := pListData.Number;
  DetFileName := pListData.FileName;
  DetName := Node.Text;
  lvDetBuild();
  Screen.Cursor := crDefault;
end;

procedure TFormMain.cbServFilter(Sender: TObject);
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

procedure TFormMain.tvRenameClick(Sender: TObject);
begin
  if (tv.Selected <> nil) and
     (tv.Selected.Level = 1)
  then tv.Selected.EditText;
end;

procedure TFormMain.fmExportServicesExcelClick(Sender: TObject);
var
  tf: TextFile;
  s,pol,fec,sat,servsif: String;
  servflt: Boolean;
  p: Integer;
  TempStream: TMemoryStream;
begin
  expd.FileName := Dir + '\DreamBoxEdit Export Services.txt';
  if expd.Execute
  then begin;
    TempStream := TMemoryStream.Create;
    cdsServ.SaveToStream(TempStream);
    TempStream.Position := 0;
    cdsServSave.LoadFromStream(TempStream);
    TempStream.Free;

    screen.Cursor := crHourGlass;

    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := cdsServSave.RecordCount;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;           
    p := 0;

    log('i',lwLngTrns(name,['Exporting services to %',expd.FileName]));
    AssignFile(tf,expd.FileName);
    Rewrite(tf);
    s := 'Service Name'#09 +
         'Package'#09 +
         'Type'#09 +
         'Satellite position'#09 +
         'Satellite name'#09 +
         'Frequency'#09 +
         'Symbolrate'#09 +
         'Polarization'#09 +
         'FEC'#09 +
         'Service ID'#09 +
         'Transponder ID'#09 +
         'Network ID'#09 +
         'Namespace'#09 +
         'Channelnumber'#09 +
         'Video PID'#09 +
         'Audio PID'#09 +
         'Teletext PID'#09 +
         'PCR PID'#09 +
         'AC3 PID'#09 +
         'Flags';
    WriteLn(tf,s);
    servsif := cdsServSave.IndexFieldNames;
    cdsServSave.IndexFieldNames := 'servPos;servName;servFreq';
    servflt := cdsServSave.Filtered;
    cdsServSave.Filtered := False;
    cdsServSave.First;
    while not cdsServSave.Eof do begin;
      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

      if cdsServSave.FieldByName('servPol').AsInteger = 0
      then pol := 'H'
      else pol := 'V';
      case cdsServSave.FieldByName('servFEC').AsInteger of
        0: fec := 'auto';
        1: fec := ' 1/2';
        2: fec := ' 2/3';
        3: fec := ' 3/4';
        4: fec := ' 5/6';
        5: fec := ' 7/8';
        9: fec := ' 9/10';
        else fec := 'invalid';
      end;
      if cdsPos.FindKey([cdsServSave.FieldByName('servPos').AsString])
      then
        if cdsPos.FieldByName('posName').AsString <> ''
        then sat := cdsPos.FieldByName('posName').AsString
        else sat := cdsServSave.FieldByName('servPos').AsString
      else sat := cdsServSave.FieldByName('servPos').AsString;
      s := cdsServSave.FieldByname('servName').AsString + #09 +
           cdsServSave.FieldByname('servPackage').AsString + #09 +
           cdsServSave.FieldByname('servType').AsString + #09 +
           Format('%.1n',[cdsServSave.FieldByName('servPos').AsInteger/10]) + #09 +
           sat + #09 +
           cdsServSave.FieldByName('servFreq').AsString + #09 +
           cdsServSave.FieldByName('servSymb').AsString + #09 +
           pol + #09 +
           fec + #09 +
           cdsServSave.FieldByName('servSID').AsString + #09 +
           cdsServSave.FieldByName('servTSID').AsString + #09 +
           cdsServSave.FieldByName('servNID').AsString + #09 +
           cdsServSave.FieldByName('servUniq').AsString + #09 +
           cdsServSave.FieldByName('servNr').AsString + #09 +
           cdsServSave.FieldByName('servVPID').AsString + #09 +
           cdsServSave.FieldByName('servAPID').AsString + #09 +
           cdsServSave.FieldByName('servTPID').AsString + #09 +
           cdsServSave.FieldByName('servPPID').AsString + #09 +
           cdsServSave.FieldByName('serv3PID').AsString + #09 +
           IntToStr(cdsServSave.FieldByName('servFlags').AsInteger and 127);
      WriteLn(tf,s);
      cdsServSave.Next;
    end;
    cdsServSave.IndexFieldNames := servsif;
    cdsServSave.Filtered := servflt;
    CloseFile(tf);

    FormWait.Hide;
    screen.Cursor := crDefault;

    MessageDlg(lwLngTrns(name,['Export file saved to %',expd.FileName]),
               mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.fmExportBouquetsExcelClick(Sender: TObject);
var
  tf: TextFile;
  s,pol,fec,sat,sif,servsif: String;
  r,i,seq,p: Integer;
  pListData: ^TListData;
  servflt: Boolean;
begin
  if tbSave.Enabled
  then begin;
    r := MessageDlg(lwLngTrns(name,['You made changes that are not yet saved!~~' +
                    'Do you want to save them before making an export file?']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then tbSave.Click()
    else
      if r = mrCancel
      then exit;
  end;

  expd.FileName := Dir + '\DreamBoxEdit Export Bouquets.txt';
  if expd.Execute
  then begin;
    screen.Cursor := crHourGlass;

    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := tnTV.Count +
                       tnRD.Count +
                       tnBQ.Count;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;
    p := 0;

    log('i',lwLngTrns(name,['Exporting services to %',expd.FileName]));
    AssignFile(tf,expd.FileName);
    Rewrite(tf);
    s := 'Bouquetnumber'#09 +
         'Sequence nr in Bouquet'#09 +
         'Bouquet Type'#09 +
         'Bouquet Name'#09 +
         'Service Name'#09 +
         'Package'#09 +
         'Type'#09 +
         'Satellite position'#09 +
         'Satellite name'#09 +
         'Frequency'#09 +
         'Symbolrate'#09 +
         'Polarization'#09 +
         'FEC'#09 +
         'Service ID'#09 +
         'Transponder ID'#09 +
         'Network ID'#09 +
         'Namespace'#09 +
         'Channelnumber'#09 +
         'Video PID'#09 +
         'Audio PID'#09 +
         'Teletext PID'#09 +
         'PCR PID'#09 +
         'AC3 PID'#09 +
         'Flags';
    WriteLn(tf,s);

    servsif := cdsServ.IndexFieldNames;
    cdsServ.IndexFieldNames := 'servDbeNr';
    servflt := cdsServ.Filtered;
    cdsServ.Filtered := False;

    { Export User Bouquets TV }
    for i := 0 to tnTV.Count -1 do begin;
      inc(p);
      FormWait.pb.Position := p;

      pListData := tnTV.Item[i].Data;
      cdsFTV.Filter := 'ftvSetNr = ''' + IntToStr(pListData.Number) + '''';
      cdsFTV.Filtered := True;
      sif := cdsFTV.IndexFieldNames;
      cdsFTV.IndexFieldNames := 'ftvSetNr;ftvSeqNr';
      seq := 0;
      cdsFTV.First;
      while not cdsFTV.Eof do begin;
        if cdsFTV.FieldByName('ftvT').AsString <> 'n'
        then begin;
          s := '';
          cdsFTV.Next;
          continue;
        end;

        cdsServ.FindKey([cdsFTV.FieldByName('ftvDbeNr').AsString]);
        if cdsServ.FieldByName('servPol').AsInteger = 0
        then pol := 'H'
        else pol := 'V';
        case cdsServ.FieldByName('servFEC').AsInteger of
          0: fec := 'auto';
          1: fec := ' 1/2';
          2: fec := ' 2/3';
          3: fec := ' 3/4';
          4: fec := ' 5/6';
          5: fec := ' 7/8';
          9: fec := ' 9/10';
          else fec := 'invalid';
        end;
        if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
        then
          if cdsPos.FieldByName('posName').AsString <> ''
          then sat := cdsPos.FieldByName('posName').AsString
          else sat := cdsServ.FieldByName('servPos').AsString
        else sat := cdsServ.FieldByName('servPos').AsString;
        s := IntToStr(pListData.Number) + #09 +
             IntToStr(seq) + #09 +
             'User Bouquets TV' + #09 +
             tnTV.Item[i].Text + #09 +
             cdsServ.FieldByname('servName').AsString + #09 +
             cdsServ.FieldByname('servPackage').AsString + #09 +
             cdsServ.FieldByname('servType').AsString + #09 +
             Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]) + #09 +
             sat + #09 +
             cdsServ.FieldByName('servFreq').AsString + #09 +
             cdsServ.FieldByName('servSymb').AsString + #09 +
             pol + #09 +
             fec + #09 +
             cdsServ.FieldByName('servSID').AsString + #09 +
             cdsServ.FieldByName('servTSID').AsString + #09 +
             cdsServ.FieldByName('servNID').AsString + #09 +
             cdsServ.FieldByName('servUniq').AsString + #09 +
             cdsServ.FieldByName('servNr').AsString + #09 +
             cdsServ.FieldByName('servVPID').AsString + #09 +
             cdsServ.FieldByName('servAPID').AsString + #09 +
             cdsServ.FieldByName('servTPID').AsString + #09 +
             cdsServ.FieldByName('servPPID').AsString + #09 +
             cdsServ.FieldByName('serv3PID').AsString + #09 +
             IntToStr(cdsServ.FieldByName('servFlags').AsInteger and 127);
        inc(seq);
        WriteLn(tf,s);
        cdsFTV.Next;
      end;
      cdsFTV.IndexFieldNames := sif;
      cdsFTV.Filtered := False;
      cdsFTV.Filter := '';
    end;

    { Export User Bouquets Radio }
    for i := 0 to tnRD.Count -1 do begin;
      inc(p);
      FormWait.pb.Position := p;

      pListData := tnRD.Item[i].Data;
      cdsFRD.Filter := 'frdSetNr = ''' + IntToStr(pListData.Number) + '''';
      cdsFRD.Filtered := True;
      sif := cdsFRD.IndexFieldNames;
      cdsFRD.IndexFieldNames := 'frdSetNr;frdSeqNr';
      seq := 0;
      cdsFRD.First;
      while not cdsFRD.Eof do begin;
        if cdsFRD.FieldByName('frdT').AsString <> 'n'
        then begin;
          s := '';
          cdsFRD.Next;
          continue;
        end;

        cdsServ.FindKey([cdsFRD.FieldByName('frdDbeNr').AsString]);
        if cdsServ.FieldByName('servPol').AsInteger = 0
        then pol := 'H'
        else pol := 'V';
        case cdsServ.FieldByName('servFEC').AsInteger of
          0: fec := 'auto';
          1: fec := ' 1/2';
          2: fec := ' 2/3';
          3: fec := ' 3/4';
          4: fec := ' 5/6';
          5: fec := ' 7/8';
          9: fec := ' 9/10';
          else fec := 'invalid';
        end;
        if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
        then
          if cdsPos.FieldByName('posName').AsString <> ''
          then sat := cdsPos.FieldByName('posName').AsString
          else sat := cdsServ.FieldByName('servPos').AsString
        else sat := cdsServ.FieldByName('servPos').AsString;
        s := IntToStr(pListData.Number) + #09 +
             IntToStr(seq) + #09 +
             'User Bouquets Radio' + #09 +
             tnRD.Item[i].Text + #09 +
             cdsServ.FieldByname('servName').AsString + #09 +
             cdsServ.FieldByname('servPackage').AsString + #09 +
             cdsServ.FieldByname('servType').AsString + #09 +
             Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]) + #09 +
             sat + #09 +
             cdsServ.FieldByName('servFreq').AsString + #09 +
             cdsServ.FieldByName('servSymb').AsString + #09 +
             pol + #09 +
             fec + #09 +
             cdsServ.FieldByName('servSID').AsString + #09 +
             cdsServ.FieldByName('servTSID').AsString + #09 +
             cdsServ.FieldByName('servNID').AsString + #09 +
             cdsServ.FieldByName('servUniq').AsString + #09 +
             cdsServ.FieldByName('servNr').AsString + #09 +
             cdsServ.FieldByName('servVPID').AsString + #09 +
             cdsServ.FieldByName('servAPID').AsString + #09 +
             cdsServ.FieldByName('servTPID').AsString + #09 +
             cdsServ.FieldByName('servPPID').AsString + #09 +
             cdsServ.FieldByName('serv3PID').AsString + #09 +
             IntToStr(cdsServ.FieldByName('servFlags').AsInteger and 127);
        inc(seq);
        WriteLn(tf,s);
        cdsFRD.Next;
      end;
      cdsFRD.IndexFieldNames := sif;
      cdsFRD.Filtered := False;
      cdsFRD.Filter := '';
    end;

    { Export Bouquets }
    for i := 0 to tnBQ.Count -1 do begin;
      inc(p);
      FormWait.pb.Position := p;

      pListData := tnBQ.Item[i].Data;
      cdsFBQ.Filter := 'fbqSetNr = ''' + IntToStr(pListData.Number) + '''';
      cdsFBQ.Filtered := True;
      sif := cdsFBQ.IndexFieldNames;
      if pListData.Number < 0
      then cdsFBQ.IndexFieldNames := 'fbqSetNr;fbqSeqNr'
      else cdsFBQ.IndexFieldNames := 'fbqSetNr;fbqName;fbqSeqNr';
      seq := 0;
      cdsFBQ.First;
      while not cdsFBQ.Eof do begin;
        cdsServ.FindKey([cdsFBQ.FieldByName('fbqDbeNr').AsString]);
        if cdsServ.FieldByName('servPol').AsInteger = 0
        then pol := 'H'
        else pol := 'V';
        case cdsServ.FieldByName('servFEC').AsInteger of
          0: fec := 'auto';
          1: fec := ' 1/2';
          2: fec := ' 2/3';
          3: fec := ' 3/4';
          4: fec := ' 5/6';
          5: fec := ' 7/8';
          9: fec := '9/10';
          else fec := 'invalid';
        end;
        if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
        then
          if cdsPos.FieldByName('posName').AsString <> ''
          then sat := cdsPos.FieldByName('posName').AsString
          else sat := cdsServ.FieldByName('servPos').AsString
        else sat := cdsServ.FieldByName('servPos').AsString;
        s := IntToStr(pListData.Number) + #09 +
             IntToStr(seq) + #09 +
             'Bouquets' + #09 +
             tnBQ.Item[i].Text + #09 +
             cdsServ.FieldByname('servName').AsString + #09 +
             cdsServ.FieldByname('servPackage').AsString+ #09 +
             cdsServ.FieldByname('servType').AsString + #09 +
             Format('%.1n',[cdsServ.FieldByName('servPos').AsInteger/10]) + #09 +
             sat + #09 +
             cdsServ.FieldByName('servFreq').AsString + #09 +
             cdsServ.FieldByName('servSymb').AsString + #09 +
             pol + #09 +
             fec + #09 +
             cdsServ.FieldByName('servSID').AsString + #09 +
             cdsServ.FieldByName('servTSID').AsString + #09 +
             cdsServ.FieldByName('servNID').AsString + #09 +
             cdsServ.FieldByName('servUniq').AsString + #09 +
             cdsServ.FieldByName('servNr').AsString + #09 +
             cdsServ.FieldByName('servVPID').AsString + #09 +
             cdsServ.FieldByName('servAPID').AsString + #09 +
             cdsServ.FieldByName('servTPID').AsString + #09 +
             cdsServ.FieldByName('servPPID').AsString + #09 +
             cdsServ.FieldByName('serv3PID').AsString + #09 +
             IntToStr(cdsServ.FieldByName('servFlags').AsInteger and 127);
        inc(seq);
        WriteLn(tf,s);
        cdsFBQ.Next;
      end;
      cdsFBQ.IndexFieldNames := sif;
      cdsFBQ.Filtered := False;
      cdsFBQ.Filter := '';
    end;
    cdsServ.IndexFieldNames := servsif;
    cdsServ.Filtered := servflt;

    CloseFile(tf);

    FormWait.Hide;

    screen.Cursor := crDefault;
    MessageDlg(lwLngTrns(name,['Export file saved to %',expd.FileName]),
               mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain._lDetNameMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  _lDetName.ShowHint := False;
  if DetType = 'P'
  then begin;
    if DetSetNr < 0
    then _lDetName.Hint := lwLngTrns(name,[
                           'Bouquet name: %~' +
                           'Bouquet number: %~' +
                           '(modified with DreamBoxEdit)',
                           DetName,IntToStr(DetSetNr)])
    else _lDetName.Hint := lwLngTrns(name,[
                           'Bouquet name: %~' +
                           'Bouquet number: %~' +
                           '(original as scanned by Dreambox)',
                           DetName,IntToStr(DetSetNr)]);
    _lDetName.ShowHint := True;
  end
  else begin;
    _lDetName.Hint := 'Bouquet name: ' + DetName + #13 +
                      'Bouquet number: ' + IntToStr(DetSetNr) + #13 +
                      'Filename: ' + DetFileName;
    _lDetName.ShowHint := True;
  end;
end;

procedure TFormMain.DetLocateInServices1Click(Sender: TObject);
var
  i: Integer;
begin
  if lvDet.Selected = nil
  then exit;

  if (lvDet.Selected.SubItems[11] <> 'n') and
     (lvDet.Selected.SubItems[11] <> 'r')
  then begin;
    if lvDet.Selected.SubItems[11] = 'm'
    then exit;
    MessageDlg(lwLngTrns(name,['The entry you selected in the details panel is not a ' +
                         'regular service but a "sub service",~' +
                         'which means there is no corresponding service definition.']),
               mtInformation,[mbOK],0);
    exit;
  end;

  screen.Cursor := crHourGlass;
  lvServ.ClearSelection;
  if not cdsServ.Locate('servDbeNr',lvDet.Selected.SubItems[10],[])
  then begin;
    MessageDlg(lwLngTrns(name,['The service you selected in the details panel is currently ' +
                          'not available in the services panel~' +
                          'due to the there made selection on type or satellite']),
               mtError,[mbOK],0);
  end;
  i := cdsServ.RecNo-1;
  lvServ.Items[i].Selected := True;
  lvserv.Items[i].MakeVisible(False);
  screen.Cursor := crDefault;
end;

procedure TFormMain.SetPackagename1Click(Sender: TObject);
var
  n,dbenr: String;
  i: Integer;
  sl: TStringList;
begin
  if lvServ.Selected = nil
  then exit;

  screen.Cursor := crHourGlass;

  n := lvServ.Selected.SubItems[0];
  if not InputQuery(lwLngTrns(name,['Edit package name']),
                    lwLngTrns(name,['Package name']),
                    n)
  then begin;
    screen.Cursor := crDefault;
    exit;
  end;

  sl := TStringList.Create;
  for i := 0 to lvServ.Items.Count - 1 do begin;
    if lvServ.Items.Item[i].Selected
    then sl.Add(lvServ.Items.Item[i].SubItems[20]);
  end;

  ServEdit := True;
  lvServ.Items.BeginUpdate;
  for i := 0 to sl.Count - 1 do begin;
    dbenr := sl[i];
    if not cdsServ.Locate('servDbeNr',dbenr,[])
    then begin;
      sl.Free;
      ServEdit := False;
      MessageDlg('Internal error finding service for editing package name.'#13 +
                 'Operation canceled.',
                 mtError,[mbOK],0);
      break;
    end;
    cdsServ.Edit;
    cdsServ.FieldByName('servPackage').AsString := n;
    cdsServ.Post;
    ServEdit := False;
    SetMenu('changed');
  end;
  sl.Free;
  lvServ.Items.EndUpdate;
  lvServ.Refresh;

  screen.Cursor := crDefault;
end;

procedure TFormMain.fmEditSatXMLClick(Sender: TObject);
var
  ts: Integer;
begin
  if not FileExists(Dir + '\satellites.xml')
  then begin;
    MessageDlg(lwLngTrns(name,['File satellites.xml not found in current directory %',Dir]),
               mtError,[mbOK],0);
    exit;
  end;

  EditSatXML := False;
  ts := ReadSatXML(Dir+'\satellites.xml');
  if ts > 0
  then MessageDlg(lwLngTrns(name,['% invalid transponder definitions skipped. ' +
                             'See the log for more information.~' +
                             'This is not a severe error, you can just continue.',IntToStr(ts)]),
                  mtWarning,[mbOK],0);

  FormEditSatXML.lFileName.Caption := Dir+'\satellites.xml';

  EditSatXML := True;
  FormEditSatXML.ShowModal;
end;

procedure TFormMain.cdsSatXMLBeforePost(DataSet: TDataSet);
begin
  if not EditSatXML
  then exit;

  if (cdsSatXML.FieldByName('Pol').AsInteger < 0) or
     (cdsSatXML.FieldByName('Pol').AsInteger > 3)
  then begin;
    if FormEditSatXML.dgSatXML.DataSource.Enabled = False
    then begin;
      FormEditSatXML.dgSatXML.DataSource.Enabled := True;
      Screen.Cursor := crDefault;
    end;
    MessageDlg(lwLngTrns(name,['Polarization must be a value in the range 0 - 3']),
               mtError,[mbOK],0);
    Abort;
  end;
  if (cdsSatXML.FieldByName('FEC').AsInteger < 0) or
     (cdsSatXML.FieldByName('FEC').AsInteger > 9)
  then begin;
    if FormEditSatXML.dgSatXML.DataSource.Enabled = False
    then begin;
      FormEditSatXML.dgSatXML.DataSource.Enabled := True;
      Screen.Cursor := crDefault;
    end;
    MessageDlg(lwLngTrns(name,['FEC must be a value in the range 0 - 5 or 9']),
               mtError,[mbOK],0);
    Abort;
  end;
  if (cdsSatXML.FieldByName('Flags').AsInteger < 0) or
     (cdsSatXML.FieldByName('Flags').AsInteger > 15)
  then begin;
    if FormEditSatXML.dgSatXML.DataSource.Enabled = False
    then begin;
      FormEditSatXML.dgSatXML.DataSource.Enabled := True;
      Screen.Cursor := crDefault;
    end;
    MessageDlg(lwLngTrns(name,['Flags must be a value in the range 0 - 15']),
               mtError,[mbOK],0);
    Abort;
  end;

  if (cdsSatXML.FieldByName('Pos').AsInteger = 0) or
     (cdsSatXML.FieldByName('Freq').AsInteger = 0) or
     (trim(cdsSatXML.FieldByName('Pol').AsString) = '') or
     (cdsSatXML.FieldByName('Symb').AsInteger = 0) or
     (trim(cdsSatXML.FieldByName('FEC').AsString) = '') or
     (trim(cdsSatXML.FieldByName('Name').AsString) = '') or
     (trim(cdsSatXML.FieldByName('Flags').AsString) = '')
  then begin;
    if FormEditSatXML.dgSatXML.DataSource.Enabled = False
    then begin;
      FormEditSatXML.dgSatXML.DataSource.Enabled := True;
      Screen.Cursor := crDefault;
    end;
    if MessageDlg(lwLngTrns(name,['All fields must be entered!']),
                  mtError,[mbOK,mbAbort],0) = mrOK
    then Abort
    else cdsSatXML.Cancel;
  end;
end;

procedure TFormMain.lvDetColumnClick(Sender: TObject; Column: TListColumn);
begin
  if lvDet.Items.Count < 1
  then exit;
  
  if ConfirmSort
  then
    if MessageDlg(lwLngTrns(name,['Are you sure you want to sort the services ' +
                                  'within this bouquet?']),
                  mtConfirmation,[mbYes,mbNo],0,) <> mrYes
    then exit;

  if lvDetColumnToSort <> Column.Index
  then lvDetSortDescending := false
  else lvDetSortDescending := not lvDetSortDescending;
  lvDetColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
  SetMenu('changed');

  if lvDet.Selected <> nil
  then lvDet.Selected.MakeVisible(False);
end;

procedure TFormMain.cdsSatXMLAfterPost(DataSet: TDataSet);
begin
  if EditSatXML
  then FormEditSatXML.lTT.Caption := IntToStr(cdsSatXML.RecordCount);
end;

procedure TFormMain.cdsSatXMLAfterDelete(DataSet: TDataSet);
begin
  if EditSatXML
  then FormEditSatXML.lTT.Caption := IntToStr(cdsSatXML.RecordCount);
end;

procedure TFormMain.fmCompareDBClick(Sender: TObject);
var
  r,rc: Integer;
  d,fn: String;
  SR: TSearchRec;
  FileAttr: Integer;
begin
  d := Dir + '\temp';
  if not DirectoryExists(d)
  then ForceDirectories(d);

  Toolbar1.Enabled := False;
  if not FormFTP.FTPGetFiles(d,True,False,True)
  then begin;
    MessageDlg(lwLngTrns(name,['There were errors retrieving the files from the Dreambox.~' +
                          'Check the log for more information.']),
               mtError,[mbOK],0);
    ToolBar1.Enabled := True;
  end;
  ToolBar1.Enabled := True;

  cdsServComp.EmptyDataSet;
  cdsServComp.Close;
  cdsServComp.Open;

  if FileExists(d + '\lamedb')
  then fn := 'lamedb'
  else fn := 'services';
  r := ReadServices(d + '\' + fn,cdsServComp,True);
  if r < 0
  then begin;
    MessageDlg(lwLngTrns(name,['Error reading services file']),
               mtError,[mbOK],0);
    exit;
  end;
  if r > 0
  then MessageDlg(lwLngTrns(name,['There were % service entries with errors found.~' +
                  'See the log for more information', IntToStr(r)]),
                  mtWarning,[mbOK],0);
  FormCompareSet.lActiveDir.Caption := Dir;
  FormCompareSet.lCompareDir.Caption := d + '\' + fn;
  if FormCompareSet.ShowModal = mrOK
  then begin;
    lvServ.Items.Count := cdsServ.RecordCount;
    lvServ.Refresh;
    TotalsBuild();

    SetMenu('changed');
  end;

  FileAttr := faAnyFile;
  rc := FindFirst(d + '\*.*',FileAttr,SR);
  while rc = 0 do begin
    if (SR.Name <> '.') and (SR.Name <> '..')
    then
      if (SR.Attr AND faDirectory) <> faDirectory
      then DeleteFile(d + '\' + SR.Name);
    rc := FindNext(SR);
  end;
  FindClose(sr);

  RemoveDir(d);
end;

procedure TFormMain.tbFFTPDownClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  application.ProcessMessages;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if Reg.ValueExists('LastUsedDirectory')
  then Dir := Reg.ReadString('LastUsedDirectory')
  else Dir := '';
  Reg.CloseKey;
  Reg.Destroy;

  if Dir = ''
  then begin;
    MessageDlg(lwLngTrns(name,['The Fast FTP Download function retrieves a file-set to ' +
                          'the last used directory.~' +
                          'There is no known last used directory so you have to ' +
                          'choose normal FTP first.']),
               mtError,[mbOK],0);
    exit;
  end;

  if not DirectoryExists(Dir)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Directory "%" does not exist on your PC. Please first select ' +
               'a valid directory on the FTP screen.',Dir]),
               mtError,[mbOK],0);
    exit;
  end;

  if (FileExists(Dir+'\'+'services')) or
     (FileExists(Dir+'\'+'lamedb')) or
     (FileExists(Dir+'\'+'bouquets')) or
     (FileExists(Dir+'\'+'satellites.xml'))
  then begin;
    if MessageDlg(lwLngTrns(name,['Directory "%" already contains ' +
                             'one or more of the files you are going to download.~~' +
                             'Are you sure you want to overwrite them?',Dir]),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then exit;
  end;

  Toolbar1.Enabled := False;

  if FormFTP.FTPGetFiles(Dir,True,False,False)
  then begin;
    AutoOpen := True;
    tbOpen.Click();
  end
  else MessageDlg(lwLngTrns(name,['There were errors retrieving the files from the Dreambox.~' +
                             'Check the log for more information.']),
                  mtError,[mbOK],0);
  ToolBar1.Enabled := True;
end;

procedure TFormMain.tbFFTPUpClick(Sender: TObject);
begin
  application.ProcessMessages;

  if lvServ.Items.Count = 0
  then begin;
    MessageDlg(lwLngTrns(name,['There is no file-set loaded to upload to the Dreambox.']),
               mtError,[mbOK],0);
    exit;
  end;

  Toolbar1.Enabled := False;
  FormFTP.bSendClick(Self);
  ToolBar1.Enabled := True;
end;

procedure TFormMain.ToolBar1CustomDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Button.Name = 'tbFFTPDown'
  then begin;
    ToolBar1.Canvas.Brush.Color := clTeal;
    ToolBar1.Canvas.Pen.Color := clTeal;
    ToolBar1.Canvas.FillRect(Rect(Button.Left+6,13,Button.Left+9,31));
    ToolBar1.Canvas.Polygon([Point(Button.Left+3,28),
                             Point(Button.Left+7,32),
                             Point(Button.Left+11,28)]);
  end;
  if Button.Name = 'tbFFTPUp'
  then begin;
    if Button.Enabled
    then begin;
      ToolBar1.Canvas.Brush.Color := clTeal;
      ToolBar1.Canvas.Pen.Color := clTeal;
    end
    else begin;
      ToolBar1.Canvas.Brush.Color := clSilver;
      ToolBar1.Canvas.Pen.Color := clSilver;
    end;
    ToolBar1.Canvas.FillRect(Rect(Button.Left+6,6,Button.Left+9,24));
    ToolBar1.Canvas.Polygon([Point(Button.Left+3,9),
                             Point(Button.Left+7,5),
                             Point(Button.Left+11,9)]);
  end;
end;

procedure TFormMain.cbSatNameDropDown(Sender: TObject);
var
  p: String;
  flt: Boolean;
  sats: TStringList;
  i: Integer;
begin
  cbSatName.Tag := cbSatName.ItemIndex;
  flt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  sats := TStringList.Create;
  sats.Sorted := True;
  cdsServ.First;
  while not cdsServ.Eof do begin;
    if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
    then p := cdsPos.FieldByName('posName').AsString
    else p := cdsServ.FieldByName('servPos').AsString;
    if sats.IndexOf(p) < 0
    then sats.Add(p);
    cdsServ.Next;
  end;
  cdsServ.Filtered := flt;
  for i := cbSatName.Items.Count - 1 downto 1 do
    cbSatName.Items.Delete(i);
  for i := 0 to sats.Count - 1 do
    if Trim(sats[i]) <> ''
    then cbSatName.Items.Add(sats[i]);
  sats.Free;

  cbSatName.Width := cbSatName.Width + 75;
end;

procedure TFormMain.cbSatNameCloseUp(Sender: TObject);
begin
  cbSatName.Width := cbSatName.Width - 75;
  if cbSatName.ItemIndex < 0
  then cbSatName.ItemIndex := cbSatName.Tag;
end;

procedure TFormMain.fmCompareDiskClick(Sender: TObject);
var
  r: Integer;
begin
  od.FileName := '';
  od.Title := lwLngTrns(name,['Select the services file to compare with']);
  od.Filter := 'services|services;lamedb';
  if od.Execute
  then begin;
    cdsServComp.EmptyDataSet;
    cdsServComp.Close;
    cdsServComp.Open;

    r := ReadServices(od.FileName,cdsServComp,True);
    if r < 0
    then begin;
      MessageDlg(lwLngTrns(name,['Error reading services file']),
                 mtError,[mbOK],0);
      exit;
    end;
    if r > 0
    then MessageDlg(lwLngTrns(name,['There were % service entries with errors found.~' +
                               'See the log for more information',IntToStr(r)]),
                    mtWarning,[mbOK],0);
    FormCompareSet.lActiveDir.Caption := Dir;
    FormCompareSet.lCompareDir.Caption := od.FileName;
    if FormCompareSet.ShowModal = mrOK
    then begin;
      lvServ.Items.Count := cdsServ.RecordCount;
      lvServ.Refresh;
      TotalsBuild();

      SetMenu('changed');
    end;
  end;
end;

procedure TFormMain._fmUpdateLanguageClick(Sender: TObject);
var
  l,i: Integer;
  lf,s: String;
begin
  if not OriginalEnglish
  then begin;
    MessageDlg('This option is only available if the program is started in English '#13 +
               'and no language selection is made',
               mtError,[mbOK],0);
    exit;
  end;

  Screen.Cursor := crHourGlass;
  for l := 0 to MainMenu1.Items[5].Count - 1 do begin;
    lf := ExtractFilePath(application.exename) +
          MainMenu1.Items[5].Items[l].Caption +
          '.lng';
    if FileExists(lf)
    then begin;
      s := lf + '.' + FormatDateTime('yyyymmdd hhmmss',now()) + '.save';
      CopyFile(PChar(lf),
               PChar(s),
               false);
    end;
    for i := 0 to Screen.FormCount - 1 do begin;
      MultiLang.SaveLanguage(FormAbout._lVersion.Caption,Screen.Forms[i],MainMenu1.Items[5].Items[l].Caption,True,False,True);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormMain.fmLanguageClick(Sender: TObject);
var
  l: String;
  i: Integer;
  Reg: TRegistry;
begin
  Screen.Cursor := crHourGlass;
  l := (sender as TMenuItem).Name;
  l := copy(l,3,length(l)-2);
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteString('Language',l);
  Reg.CloseKey;
  Reg.Destroy;
  for i := 0 to MainMenu1.Items[5].Count - 1 do begin;
    MainMenu1.Items[5].Items[i].Checked := False;
  end;
  OriginalEnglish := False;
  Language := l;

  (sender as TMenuItem).Checked := True;
  for i := 0 to Screen.FormCount - 1 do begin;
    MultiLang.SetLanguage(Screen.Forms[i],Language,True);
  end;
  MsgTable.LoadFromFile(ExtractFilePath(application.exename) + Language + '.lng');

  FormatToolbar();
  lvServColumnsAdjust();

  Screen.Cursor := crDefault;
end;

procedure TFormMain.servLockClick(Sender: TObject);
var
  j: Integer;
begin
  if lvServ.Selected = nil
  then exit;

  while lvServ.Selected <> nil do begin;
    if not cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])
    then begin;
      MessageDlg('Internal error finding service for toggle parental lock.'#13 +
                 'Operation canceled.',
                 mtError,[mbOK],0);
      break;
    end;
    ServEdit := True;
    cdsServ.Edit;
    if cdsServ.FieldByName('servLock').AsInteger = 1
    then cdsServ.FieldByName('servLock').AsInteger := 0
    else cdsServ.FieldByName('servLock').AsInteger := 1;
    cdsServ.Post;
    ServEdit := False;

    for j := 0 to lvDet.Items.Count - 1 do begin;
      if (lvDet.Items[j].SubItems[10] = cdsServ.FieldByName('servDbeNr').AsString)
      then begin;
        if cdsServ.FieldByName('servLock').AsInteger > 0
        then lvDet.Items[j].SubItems[9] := '1'
        else lvDet.Items[j].SubItems[9] := '0';
        break;
      end;
    end;
    lvServ.Selected.Selected := False;
    SetMenu('changed');
  end;
  lvServ.Refresh;
  lvDet.Repaint;
end;

procedure TFormMain.lvServInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
var
  s: String;
begin
  if ServEdit
  then exit;

  InfoTip := '';
  if (not ShowDetHint) or
     (Item = nil)
  then exit;

  if (pos('L',Item.SubItems[19]) > 0) or
     (pos('New',Item.SubItems[19]) > 0)
  then begin;
    s := '';
    if pos('L',Item.SubItems[19]) > 0
    then s := lwLngTrns(name,['Parental Lock is On']);
    if pos('New',Item.SubItems[19]) > 0
    then
      if s = ''
      then s := lwLngTrns(name,['Service is added by the compare function.'])
      else s := s + #13 + lwLngTrns(name,['Service is added by the compare function.']);
    InfoTip := s;
  end;
end;

procedure TFormMain.DetLockClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvDet.Items.Count - 1 do begin;
    if lvDet.Items[i].Selected
    then begin;
      if cdsServ.Locate('servDbeNr',lvDet.Items[i].SubItems[10],[])
      then begin;
        ServEdit := True;
        cdsServ.Edit;
        if lvDet.Items[i].SubItems[9] = '1'
        then begin;
          cdsServ.FieldByName('servLock').AsInteger := 0;
          lvDet.Items.Item[i].SubItems[9] := '0';
        end
        else begin;
          cdsServ.FieldByName('servLock').AsInteger := 1;
          lvDet.Items.Item[i].SubItems[9] := '1';
        end;
        cdsServ.Post;
        ServEdit := False;

        lvServ.Refresh;
      end
      else begin;
        {MessageDlg(lwLngTrns(name,['You can not lock subservice %',
                                   lvDet.Items[i].Caption]),
                   mtError,[mbOK],0);}
{qqq}   if lvDet.Items[i].SubItems[9] = '0'
        then lvDet.Items.Item[i].SubItems[9] := '1'
        else lvDet.Items.Item[i].SubItems[9] := '0';
        if cdsLock.Locate('lockSID;lockUniq;lockTSID;lockNID;lockServType',
                          VarArrayOf([lvDet.Items[i].SubItems[2],
                                      lvDet.Items[i].SubItems[6],
                                      lvDet.Items[i].SubItems[3],
                                      lvDet.Items[i].SubItems[4],
                                      lvDet.Items[i].SubItems[5]]),[])
        then cdsLock.Delete
        else begin;
          cdsLock.Append;
          cdsLock.FieldByName('lockI1').AsString := '1';
          cdsLock.FieldByName('lockI2').AsString := '0';
          cdsLock.FieldByName('lockServType').AsString := lvDet.Items[i].SubItems[5];
          cdsLock.FieldByName('lockSID').AsString := lvDet.Items[i].SubItems[2];
          cdsLock.FieldByName('lockTSID').AsString := lvDet.Items[i].SubItems[3];
          cdsLock.FieldByName('lockNID').AsString := lvDet.Items[i].SubItems[4];
          cdsLock.FieldByName('lockUniq').AsString := lvDet.Items[i].SubItems[6];
          cdsLock.FieldByName('lockString').AsString := '';
          cdsLock.Post;
        end;
      end;
    end;
  end;
  lvDet.Repaint;
  lvServ.Repaint;
  SetMenu('changed');
end;

procedure TFormMain.fmClearLocksClick(Sender: TObject);
var
  i,cs,cb,co: Integer;
  servsif: String;
  servflt: Boolean;
  pListData: ^TListData;
begin
  cs := 0;
  cb := 0;
  co := 0;
  cdsLock.First;
  while not cdsLock.Eof do begin;
    inc(co);
    cdsLock.Delete;
    cdsLock.First;
  end;

  ServEdit := True;
  servsif := cdsServ.IndexFieldNames;
  cdsServ.IndexFieldNames := '';
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  cdsServ.First;
  while not cdsServ.Eof do begin;
    if cdsServ.FieldByName('servLock').AsInteger = 1
    then begin;
      inc(cs);
      cdsServ.Edit;
      cdsServ.FieldByName('servLock').AsInteger := 0;
      cdsServ.Post;
    end;
    cdsServ.Next;
  end;
  cdsServ.IndexFieldNames := servsif;
  cdsServ.Filtered := servflt;
  ServEdit := False;
  lvServ.Refresh;

  for i := 0 to lvDet.Items.Count - 1 do begin;
    if lvDet.Items[i].SubItems[9] = '1'
    then lvDet.Items[i].SubItems[9] := '0';
  end;

  for i := 0 to tv.Items.Count - 1 do begin;
    if (tv.Items[i].Data = nil) or
       (tv.Items[i].Level = 0)
    then continue;
    pListData := tv.Items.Item[i].Data;
    if pListData.Locked
    then begin;
      inc(cb);
      pListData.Locked := False;
    end;
  end;

  lvServ.Repaint;
  lvDet.Repaint;
  tv.Repaint;
  if (cs > 0) or
     (cb > 0) or
     (co > 0)
  then SetMenu('changed');

  if ShowResultMsg
  then begin;
    MessageDlg(lwLngTrns(name,['% locks from services removed,~' +
                               '% locks from bouquets removed,~' +
                               '% other locks removed.',
                               IntToStr(cs),IntToStr(cb),IntToStr(co)]),
                               mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.PopupDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
var
  s,s1,s2: String;
  p: Integer;
  act: Boolean;
  r: TRect;
begin
  s := (Sender as TMenuItem).Caption;
  act := (Sender as TMenuItem).Enabled;

  if pos('  ',s) > 0
  then begin;
    p := pos('  ',s);
    s1 := Trim(LeftStr(s,p-1));
    s2 := Trim(RightStr(s,Length(s)-p-1));
    r := Arect;
    r.Left := r.Left + LastPopupWidth;
    if selected
    then begin;
      if act
      then ACanvas.Font.Color := clWhite
      else ACanvas.Font.Color := clGray;
      ACanvas.TextRect(ARect,Arect.Left+5,ARect.Top+3,s1);
      ACanvas.TextOut(Arect.Left+5+LastPopupWidth,ARect.Top+3,s2);
    end
    else begin
      if not act
      then begin;
        ACanvas.Font.Color := clWhite;
        ACanvas.TextRect(ARect,Arect.Left+6,ARect.Top+4,s1);
        SetBkMode(ACanvas.Handle,TRANSPARENT);
        ACanvas.TextOut(Arect.Left+6+LastPopupWidth,ARect.Top+4,s2);
        ACanvas.Font.Color := clGray;
        SetBkMode(ACanvas.Handle,TRANSPARENT);
        ACanvas.TextOut(ARect.Left+5,ARect.Top+3,s1);
        SetBkMode(ACanvas.Handle,TRANSPARENT);
        ACanvas.TextOut(ARect.Left+5+LastPopupWidth,ARect.Top+3,s2);
      end
      else begin;
        ACanvas.TextRect(ARect,Arect.Left+5,ARect.Top+3,s1);
        ACanvas.TextOut(Arect.Left+5+LastPopupWidth,ARect.Top+3,s2);
      end;
    end;
  end
  else begin;
    if selected
    then begin;
      if act
      then ACanvas.Font.Color := clWhite
      else ACanvas.Font.Color := clGray;
      ACanvas.TextRect(ARect,Arect.Left+5,ARect.Top+3,s);
    end
    else begin;
      if not act
      then begin;
        ACanvas.Font.Color := clWhite;
        ACanvas.TextRect(ARect,Arect.Left+6,ARect.Top+4,s);
        ACanvas.Font.Color := clGray;
        SetBkMode(ACanvas.Handle,TRANSPARENT);
        ACanvas.TextOut(Arect.Left+5,ARect.Top+3,s);
      end
      else begin;
        ACanvas.Font.Color := clBlack;
        ACanvas.TextRect(ARect,Arect.Left+5,ARect.Top+3,s);
      end;
    end;
  end;
end;

procedure TFormMain.DetMarkerEdit(Sender: TObject);
var
  n: String;
begin
  if lvDet.Selected = nil
  then exit;

  n := lvDet.Selected.SubItems[8];
  if not InputQuery(lwLngTrns(name,['Marker']),
                    lwLngTrns(name,['Marker Text']),
                    n)
  then exit;

  lvDet.Selected.Caption := trim(n);
  lvDet.Selected.SubItems[8] := trim(n);
  lvDetSave();
  SetMenu('changed');
end;

procedure TFormMain.DetMarkerInsert(Sender: TObject);
var
  item: TListItem;
  n: String;
begin
  if lvDet.Selected = nil
  then exit;

  n := '';
  if not InputQuery(lwLngTrns(name,['Marker']),
                    lwLngTrns(name,['Marker Text']),
                    n)
  then exit;

  item := lvDet.Items.Insert(lvDet.Selected.Index);
  item.Caption := trim(n);
  item.SubItems.Add('----');
  item.SubItems.Add('');
  item.SubItems.Add('0');
  item.SubItems.Add('0');
  item.SubItems.Add('0');
  item.SubItems.Add('0');
  item.SubItems.Add('0');
  item.SubItems.Add(IntToStr(DetSetNr));
  item.SubItems.Add(trim(n));
  item.SubItems.Add('0');
  item.SubItems.Add('0');
  item.SubItems.Add('m');
  SetMenu('changed');
  lvDetSave();
  TotalsBuild();
end;

procedure TFormMain.lvServData(Sender: TObject; Item: TListItem);
var
  flags: Integer;
  s: String;
begin
  if ServEdit
  then exit;

  cdsServ.RecNo := Item.Index+1;

  Item.Caption := cdsServ.FieldByName('servCleanName').AsString;

  Item.SubItems.Add(CleanText(cdsServ.FieldValues['servPackage']));
  item.SubItems.Add(cdsServ.FieldByName('servTypeTxt').AsString);
  Item.SubItems.Add(cdsServ.FieldValues['servNr']);
  if cdsServ.FieldByName('servSTC').AsString = 's'
  then
    if cdsPos.FindKey([cdsServ.FieldByName('servPos').AsString])
    then
      if cdsPos.FieldByName('posName').AsString <> ''
      then item.SubItems.Add(cdsPos.FieldByName('posName').AsString)
      else item.SubItems.Add(cdsServ.FieldByName('servPos').AsString)
    else item.SubItems.Add(cdsServ.FieldByName('servPos').AsString)
  else
    if cdsServ.FieldByName('servSTC').AsString = 't'
    then item.SubItems.Add('Terrestrial')
    else item.SubItems.Add('Cable');
  Item.SubItems.Add(cdsServ.FieldByName('servFreq').AsString);
  if cdsServ.FieldByName('servSTC').AsString = 's'
  then
    if cdsServ.FieldByName('servPol').AsInteger = 0
    then item.SubItems.Add('H')
    else item.SubItems.Add('V')
  else item.SubItems.Add('');
  if cdsServ.FieldByName('servSTC').AsString = 's'
  then Item.SubItems.Add(cdsServ.FieldByName('servSymb').AsString)
  else item.SubItems.Add('');
  if cdsServ.FieldByName('servSTC').AsString = 's'
  then begin;
    case cdsServ.FieldByName('servFEC').AsInteger of
      0: s := 'auto';
      1: s := '1/2';
      2: s := '2/3';
      3: s := '3/4';
      4: s := '5/6';
      5: s := '7/8';
      9: s := '9/10';
      else s := 'invalid';
    end;
  end
  else s := '';
  item.SubItems.Add(s);

  if cdsServ.FieldByName('servSTC').AsString = 's'
  then s := Format('%.1n',[StrToInt(cdsServ.FieldByName('servPos').AsString)/10])
  else
    if cdsServ.FieldByName('servSTC').AsString = 't'
    then s := 'T'
    else s := 'C';
  Item.SubItems.Add(s);
  Item.SubItems.Add(cdsServ.FieldByName('servSID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servTSID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servNID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servType').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servVPID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servAPID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servTPID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servPPID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('serv3PID').AsString);
  Item.SubItems.Add(cdsServ.FieldByName('servUniq').AsString);
  flags := cdsServ.FieldByName('servFlags').AsInteger;
  s := '';
  if cdsServ.FieldByName('servLock').AsInteger = 1
  then s := 'L';
  if (flags and 1) = 1
  then s := s + 'K';
  if (flags and 2) = 2
  then s := s + 'H';
  if (flags and 4) = 4
  then s := s + 'P';
  if (flags and 128) = 128
  then s := trim(s + ' New');
  item.SubItems.Add(s);
  Item.SubItems.Add(cdsServ.FieldByName('servDbeNr').AsString);
end;

procedure TFormMain.lvServDataFind(Sender: TObject; Find: TItemFind;
  const FindString: String; const FindPosition: TPoint; FindData: Pointer;
  StartIndex: Integer; Direction: TSearchDirection; Wrap: Boolean;
  var Index: Integer);
var
  i: Integer;
begin
  if ServEdit
  then exit;

  if FindString <> ''
  then cdsServ.Locate('servName',FindString,[loCaseInsensitive,loPartialKey]);

  i := cdsServ.RecNo-1;
  lvServ.Items[i].Selected := True;
  lvserv.Items[i].MakeVisible(False);
end;

procedure TFormMain.DetRenameService(Sender: TObject);
var
  n,OrgName: String;
  i: Integer;
begin
  if DetType = 'P'
  then exit;

  for i := 0 to lvDet.Items.Count - 1 do begin;
    if lvDet.Items[i].Selected
    then begin;

      n := lvDet.Items[i].Caption;
      if lvDet.Items[i].SubItems[11] = 'r'
      then OrgName := lvDet.Items[i].SubItems[8]
      else OrgName := lvDet.Items[i].Caption;

      if not InputQuery(lwLngTrns(name,['Rename service % in this userbouquet',
                                        OrgName]),
                        lwLngTrns(name,['Name']),
                        n)
      then exit;

      if (trim(n) <> '') and
         (trim(n) <> OrgName)
      then begin;
        lvDet.Items[i].Caption := trim(n);
        lvDet.Items[i].SubItems[8] := OrgName;
        lvDet.Items[i].SubItems[11] := 'r';
      end
      else
        if (trim(n) = '') and
           (lvDet.Items[i].SubItems[8] <> '')
        then begin;
          lvDet.Items[i].Caption := lvDet.Items[i].SubItems[8];
          lvDet.Items[i].SubItems[8] := '';
          lvDet.Items[i].SubItems[11] := 'n';
        end;
    end;
  end;
  SetMenu('changed');
  lvDetSave();
end;

procedure TFormMain.DetFormatService(Sender: TObject);
  function FormatName(const n: String): string;
  var
    s,Name: String;
    I:      Integer;
  begin
    Name := Trim(Lowercase(n));
    if Length(Name) > 0
    then begin;
      s := Uppercase(Name[1]);
      Name[1] := s[1];
    end;
    for i := 2 to Length(Name) do begin
      if (Name[i] = ' ') or
         (Name[i] = '(') or
         (Name[i] = '_') then begin
        s := Uppercase(Name[i+1]);
        Name[i+1] := s[1];
      end;
    end;
    Name := ' ' + Name + ' ';
    for i := 0 to FormatWordsList.Count - 1 do begin;
      Name := StringReplace(Name,FormatWordsList[i],FormatWordsList[i],[rfReplaceAll,rfIgnoreCase]);
    end;
    Result := trim(Name);
  end;
var
  n,OrgName: String;
  i: Integer;
begin
  if DetType = 'P'
  then exit;

  for i := 0 to lvDet.Items.Count - 1 do begin;
    if lvDet.Items[i].Selected
    then begin;
      n := FormatName(lvDet.Items[i].Caption);
      if lvDet.Items[i].SubItems[11] = 'r'
      then OrgName := lvDet.Items[i].SubItems[8]
      else OrgName := lvDet.Items[i].Caption;

      if (trim(n) <> '') and
         (trim(n) <> OrgName)
      then begin;
        lvDet.Items[i].Caption := trim(n);
        lvDet.Items[i].SubItems[8] := OrgName;
        lvDet.Items[i].SubItems[11] := 'r';
      end
      else
        if trim(n) = OrgName
        then begin;
          lvDet.Items[i].Caption := trim(n);
          lvDet.Items[i].SubItems[8] := '';
          lvDet.Items[i].SubItems[11] := 'n';
        end;
    end;
  end;
  SetMenu('changed');
  lvDetSave();
end;

procedure TFormMain.fmCheckfornewversionClick(Sender: TObject);
begin
  TimerCheckVersion.Interval := 2;
  TimerCheckVersion.Enabled := True;
end;

procedure TFormMain.TimerCheckVersionOnTimer(Sender: TObject);
var
  s,ds: String;
  i,wto,vc,vo,st,vskip: integer;
  gocopy: Boolean;
  svc,svo: String;
  sl: TStringList;
  Reg: TRegistry;
  stl: TStrings;
begin
  TimerCheckVersion.Enabled := False;
  Screen.Cursor := crHourGlass;

  if TimerCheckVersion.Interval = 2
  then wto := 8000 { Version check selected: long time-out value }
  else wto := 4000; { Auto check at program startup: short time-out value }

  stl := TStringList.Create;
  stl.Clear;
  HTTP1.Request.Host := 'pp.digsat.net/ppteam/dreamboxedit';
  {HTTP1.ConnectTimeout := wto;   From Indy 9.14}
  HTTP1.ReadTimeout := wto;
  s := '';
  try
    stl.Text := HTTP1.Get('http://pp.digsat.net/ppteam/dreamboxedit/dbeversion.txt');
  except
    on E: Exception
    do s := E.Message;
  end;
  try
    HTTP1.Disconnect;
  except
  end;
  if s <> ''
  then begin;
    s := StringReplace(s,#$d#$a,' - ',[rfReplaceAll]);
    s := lwLngTrns(name,['Unable to complete DreamBoxEdit Version Check (%)',
                         s]);
    Screen.Cursor := crDefault;
    log('i',s);
    if TimerCheckVersion.Interval = 2
    then MessageDlg(s,mtInformation,[mbOK],0);
    exit;
  end;

  if stl.Count < 2
  then begin;
    Screen.Cursor := crDefault;
    s := lwLngTrns(name,['Unable to complete DreamBoxEdit Version Check (%)',
                         'info not found']);
    log('i',s);
    if TimerCheckVersion.Interval = 2
    then MessageDlg(s,mtInformation,[mbOK],0);
    exit;
  end;
  Screen.Cursor := crDefault;

  sl := TStringList.Create;
  gocopy := False;
  for i := 0 to stl.Count - 1 do begin;
    if pos('DreamBoxEdit Version Info',stl[i]) > 0
    then gocopy := True;
    if pos('---end---',stl[i]) > 0
    then break;
    if gocopy
    then sl.Add(stl[i]);
  end;
  stl.Free;

  if sl.Count < 2
  then begin;
    Screen.Cursor := crDefault;
    s := lwLngTrns(name,['Unable to complete DreamBoxEdit Version Check (%)',
                         'info invalid']);
    log('i',s);
    if TimerCheckVersion.Interval = 2
    then MessageDlg(s,mtInformation,[mbOK],0);
    sl.Free;
    exit;
  end;

  s := trim(FormAbout._lVersion.Caption);
  svc := s;
  s := StringReplace(s,'v','',[rfReplaceAll,rfIgnoreCase]);
  s := StringReplace(s,'.','',[rfReplaceAll,rfIgnoreCase]);
  vc := StrToInt(s);

  s := trim(sl[1]);
  svo := s;
  s := StringReplace(s,'v','',[rfReplaceAll,rfIgnoreCase]);
  s := StringReplace(s,'.','',[rfReplaceAll,rfIgnoreCase]);
  vo := StrToInt(s);

  if vo > vc
  then log('i',lwLngTrns(name,['A newer version of DreamBoxEdit is available online: %',
                               svo]))
  else log('i',lwLngTrns(name,['There is no newer version of DreamBoxEdit available online']));

  ds := '';
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if reg.ValueExists('AutoCheckLastDate')
  then ds := FormatDateTime('dddddd hh:nn:ss',Reg.ReadDate('AutoCheckLastDate'));
  Reg.WriteDate('AutoCheckLastDate',now());
  Reg.CloseKey;
  Reg.Destroy;
  FormNewVersion._lLastCheck.Caption := lwLngTrns(name,['Previous check was done on %',
                                                  ds]);

  { Started through menu or online version is newer than this version }
  if (TimerCheckVersion.Interval = 2) or
     (vo > vc)
  then begin;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    FormNewVersion._lSkipVersionNr.Caption := '';
    FormNewVersion.bReset.Enabled := False;
    if Reg.ValueExists('Skip new version')
    then begin;
      vskip := Reg.ReadInteger('Skip new version');
      if vskip <> 0
      then begin;
        FormNewVersion._lSkipVersionNr.Caption := lwLngTrns(name,['Messages about new version % are skipped',
                                                                  Reg.ReadString('Skip new version String')]);
        FormNewVersion.bReset.Enabled := True;
      end;
    end
    else vskip := 0;
    Reg.CloseKey;
    Reg.Destroy;

    { Started automaticaly and online version is not newer than the one to be skipped }
    if (TimerCheckVersion.Interval <> 2) and
       (vo <= vskip)
    then log('i',lwLngTrns(name,['A newer version of DreamBoxEdit is available but the ' +
                 'auto-check message is skipped']))
    else begin;
      FormNewVersion._lCurVersion.Caption := svc;
      FormNewVersion._lNewVersion.Caption := svo;
      FormNewVersion.Memo1.Clear;
      if vo <= vc
      then begin;
        FormNewVersion.Memo1.Lines.Add(lwLngTrns(name,['You are already running the latest version ' +
                                                       'of DreamBoxEdit.']));
        FormNewVersion.bSkipVersion.Enabled := False;
      end
      else begin;
        for i := 2 to sl.Count - 2 do
          FormNewVersion.Memo1.Lines.Add(sl[i]);
        FormNewVersion.bSkipVersion.Enabled := True;
      end;
      FormNewVersion.Tag := vo;
      FormNewVersion._SpinEdit1.Value := AutoCheckDays;

      if FormNewVersion.showmodal = mrOK
      then begin;
        s := 'http://pp.digsat.net/ppteam/dreamboxedit';
        st := ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
        if st <= 32
        then begin;
          showmessage(lwLngTrns(name,['Returncode % from opening "%"',
                                IntToStr(st),s]));
          log('e',lwLngTrns(name,['Returncode % from opening "%"',
                            IntToStr(st),s]));
        end;
      end;
    end;
  end;
  sl.Free;
end;

procedure TFormMain.fmExportServicesSatcoDXClick(Sender: TObject);
var
  tf: TextFile;
  s,pol,fec,typ,pos,sat,servsif: String;
  vpid,apid,ppid: String;
  servflt: Boolean;
  p,err: Integer;
  TempStream: TMemoryStream;
begin
  expd.FileName := Dir + '\DreamBoxEdit Export SatcoDX.txt';
  if expd.Execute
  then begin;
    TempStream := TMemoryStream.Create;
    cdsServ.SaveToStream(TempStream);
    TempStream.Position := 0;
    cdsServSave.LoadFromStream(TempStream);
    TempStream.Free;

    screen.Cursor := crHourGlass;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := cdsServSave.RecordCount;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;
    p := 0;

    log('i',lwLngTrns(name,['Exporting services to %',expd.FileName]));
    AssignFile(tf,expd.FileName);
    SetLineBreakStyle(tf,tlbsLF);
    Rewrite(tf);

    servsif := cdsServSave.IndexFieldNames;
    cdsServSave.IndexFieldNames := 'servPos;servFreq;servName';
    servflt := cdsServSave.Filtered;
    cdsServSave.Filtered := False;

    err := 0;
    cdsServSave.First;
    while not cdsServSave.Eof do begin;
      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

      if (cdsServSave.FieldByName('servSID').AsInteger < 0) or
         (cdsServSave.FieldByName('servSID').AsInteger > 99999) or
         (cdsServSave.FieldByName('servNID').AsInteger < 0) or
         (cdsServSave.FieldByName('servNID').AsInteger > 99999) or
         (cdsServSave.FieldByName('servTSID').AsInteger < 0) or
         (cdsServSave.FieldByName('servTSID').AsInteger > 99999)
      then begin;
        err := err + 1;
        Log('e',lwLngTrns(name,['Error exporting service % of satellite at % ' +
                                'to SatcoDX format, invalid SID, NID and/or TSID:',
                                cdsServSave.FieldByname('servName').AsString,
                                cdsServSave.FieldByName('servPos').AsString]));
        Log('e','--> ' +
                cdsServSave.FieldByName('servSID').AsString + ' ' +
                cdsServSave.FieldByName('servNID').AsString + ' ' +
                cdsServSave.FieldByName('servTSID').AsString);
        cdsServSave.Next;
        continue;
      end;

      if cdsServSave.FieldByname('servType').AsInteger in [1,4]
      then Typ := 'T'
      else
        if cdsServSave.FieldByname('servType').AsInteger = 2
        then Typ := 'R'
        else Typ := 'D';
      if cdsServSave.FieldByName('servPol').AsInteger = 0
      then pol := '1'
      else pol := '0';
      if cdsServSave.FieldByName('servFEC').AsInteger = 5
      then fec := '7'
      else
        if cdsServSave.FieldByName('servFEC').AsInteger = 4
        then fec := '5'
        else fec := cdsServSave.FieldByName('servFEC').AsString;
      if cdsServSave.FieldByName('servVPID').AsInteger = 0
      then vpid := '____'
      else vpid := Format('%4.4d',[cdsServSave.FieldByName('servVPID').AsInteger]);
      if cdsServSave.FieldByName('servAPID').AsInteger = 0
      then apid := '____'
      else apid := Format('%4.4d',[cdsServSave.FieldByName('servAPID').AsInteger]);
      if cdsServSave.FieldByName('servPPID').AsInteger = 0
      then ppid := '____'
      else ppid := Format('%4.4d',[cdsServSave.FieldByName('servPPID').AsInteger]);

      if cdsServSave.FieldByName('servPos').AsInteger >= 0
      then pos := Format('%4.4d',[cdsServSave.FieldByName('servPos').AsInteger])
      else pos := Format('%4.4d',[3600 + cdsServSave.FieldByName('servPos').AsInteger]);

      if cdsPos.FindKey([cdsServSave.FieldByName('servPos').AsString])
      then
        if cdsPos.FieldByName('posName').AsString <> ''
        then sat := cdsPos.FieldByName('posName').AsString
        else sat := cdsServSave.FieldByName('servPos').AsString
      else sat := cdsServSave.FieldByName('servPos').AsString;

      s := 'SATCODX103' +
            Format('%-18s',[LeftStr(sat,18)]) +
            typ +
            'MPG2' +
            Format('%9.9d',[cdsServSave.FieldByName('servFreq').AsInteger]) +
            pol +
            Format('%-8s',[LeftStr(cdsServSave.FieldByname('servName').AsString,8)]) +
            pos +
            '______' +
            '__' +
            '______' +
            Format('%5.5d',[cdsServSave.FieldByName('servSymb').AsInteger div 1000]) +
            fec +
            vpid +
            apid +
            ppid +
            Format('%5.5d',[cdsServSave.FieldByName('servSID').AsInteger]) +
            Format('%5.5d',[cdsServSave.FieldByName('servNID').AsInteger]) +
            Format('%5.5d',[cdsServSave.FieldByName('servTSID').AsInteger]) +
            '___' +
            '_' +
            '__' +
            '___' +
            '____' +
            Format('%-12s',[Copy(cdsServSave.FieldByname('servName').AsString,9,12)]);
      WriteLn(tf,s);
      cdsServSave.Next;
    end;
    cdsServSave.IndexFieldNames := servsif;
    cdsServSave.Filtered := servflt;
    CloseFile(tf);

    FormWait.Hide;
    screen.Cursor := crDefault;

    if err = 0
    then begin;
      if ShowResultMsg
      then MessageDlg(lwLngTrns(name,['Export file saved to %',expd.FileName]),
                      mtInformation,[mbOK],0);
    end
    else begin;
      MessageDlg(lwLngTrns(name,['Export file saved to %, but there were % errors.' +
                                 '~See the log for more information.~~' +
                                 'The services with errors were skipped!',
                                 expd.FileName,IntToStr(err)]),
                      mtError,[mbOK],0);
    end;
  end;
end;

procedure TFormMain.EditTransponderClick(Sender: TObject);
begin
  if lvServ.Selected = nil
  then exit;

  cdsSERV.Locate('servDbeNr',lvServ.Selected.SubItems[20],[]);
  
  if FormTransponder.ShowModal = mrOK
  then begin;
    lvServ.Refresh;
    SetMenu('changed');
  end;
end;

procedure TFormMain.fmImportExportedServicesClick(Sender: TObject);
function IsValidLine(var slr: TStringList): Integer;
begin
  if not StrIsNumeric(slr[2],False) then result := 3
  else if not StrIsNumeric(slr[3],True) then result := 4
  else if not StrIsNumeric(slr[5],False) then result := 6
  else if not StrIsNumeric(slr[6],False) then result := 7
  else if not StrIsNumeric(slr[9],False) then result := 10
  else if not StrIsNumeric(slr[10],False) then result := 11
  else if not StrIsNumeric(slr[11],False) then result := 12
  else if not StrIsNumeric(slr[12],False) then result := 13
  else if not StrIsNumeric(slr[13],False) then result := 14
  else if not StrIsNumeric(slr[14],False) then result := 15
  else if not StrIsNumeric(slr[15],False) then result := 16
  else if not StrIsNumeric(slr[16],False) then result := 17
  else if not StrIsNumeric(slr[17],False) then result := 19
  else if not StrIsNumeric(slr[18],False) then result := 19
  else if not StrIsNumeric(slr[19],False) then result := 20
  else result := -1;
end;
var
  tf: TextFile;
  s: String;
  sl,sli: TStringList;
  i,p,err,col,cs: Integer;
  servsif: String;
  servflt: Boolean;
  Reg: TRegistry;
  pListData: ^TLIstData;
begin
  if tbFiles.Enabled = False
  then begin;
    if MessageDlg(lwLngTrns(name,['No file-set open and no directory selected.~~' +
                             'You must first select or create a directory before you can import '+
                             'your exported services file and save.~' +
                             'Do you want to select or create a directory now?']),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then exit;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    if Reg.ValueExists('LastUsedDirectory')
    then Dir := Reg.ReadString('LastUsedDirectory')
    else Dir := '';
    Reg.CloseKey;
    Reg.Destroy;
    if not DirectoryExists(Dir)
    then Dir := '';

    if not SelDir(Dir,True)
    then exit;
    if FileExists(Dir + '\services')
    then begin;
      if MessageDlg(lwLngTrns(name,['You have selected a directory that already contains a file-set.~' +
                               'When you later save the set you are now building, you will '+
                               'completely overwrite the existing set.~~' +
                               'Are you sure want to continue with this directory?']),
                    mtConfirmation,[mbYes,mbNo],0) <> mrYes
      then exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('LastUsedDirectory',Dir);
    Reg.CloseKey;
    Reg.Destroy;

    Log('i',lwLngTrns(name,['Directory % selected',Dir]));

    tnBQ := tv.Items.Add(nil,'Providers');
    tnTV := tv.Items.Insert(TNBQ,'TV User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnTV,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.tv';
    pListData.Number := 0;
    pListData.Locked := False;

    tnRD := tv.Items.Insert(TNBQ,'Radio User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnRD,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.radio';
    pListData.Number := 0;
    pListData.Locked := False;

    tv.FullExpand;
  end;

  od.FileName := '';
  od.Title := lwLngTrns(name,['Select the exported services file to import']);
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
       (sl[0] <> 'Service Name') or
       (sl[19] <> 'Flags')
    then begin;
      CloseFile(tf);
      sl.Free;
      sli.Free;
      MessageDlg(lwLngTrns(name,['Empty or invalid file for import.~~'+
                                 'A valid file:~' +
                                 '- is a by DreamBoxEdit exported services file,~' +
                                 '- has 20 columns (tab delimted),~' +
                                 '- starts with a row containing the fieldnames.']),
                 mtError,[mbOK],0);
      exit;
    end;

    while not eof(tf) do begin;
      Readln(tf,s);
      sli.Add(s);
    end;
    CloseFile(tf);

    screen.Cursor := crHourGlass;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := sli.Count;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;

    log('i',lwLngTrns(name,['Starting import of exported services file "%"',
                            od.FileName]));

    servsif := cdsServ.IndexFieldNames;
    cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
    servflt := cdsServ.Filtered;
    cdsServ.Filtered := False;

    err := 0;
    cs := 0;
    p := 1;
    for i := 0 to sli.Count - 1 do begin;
      s := sli[i];
      s := StringReplace(s,#9,#13,[rfReplaceAll]);
      sl.Text := s;

      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

      col := IsValidLine(sl);
      if col > 0
      then begin;
        inc(err);
        log('i',lwLngTrns(name,['Import of exported services file: error in line %, column %',
                                IntToStr(p),IntToStr(col)]));
        continue;
      end;

      { Create new service }
      if not cdsServ.FindKey([sl[9],sl[12],sl[10],sl[11],sl[2]])
      then begin;
        inc(cs);
        inc(HighDbeNr);
        cdsServ.Append;
        cdsServ.FieldByName('servSID').AsString := sl[9];
        cdsServ.FieldByName('servUniq').AsString := sl[12];
        cdsServ.FieldByName('servTSID').AsString := sl[10];
        cdsServ.FieldByName('servNID').AsString := sl[11];
        cdsServ.FieldByName('servType').AsString := sl[2];
        cdsServ.FieldByName('servName').AsString := sl[0];
        cdsServ.FieldByName('servPackage').AsString := sl[1];
        cdsServ.FieldByName('servNr').AsString := sl[13];
        cdsServ.FieldByName('servFreq').AsString := sl[5];
        cdsServ.FieldByName('servSymb').AsString := sl[6];
        if sl[7] = 'H'
        then cdsServ.FieldByName('servPol').AsString := '0'
        else cdsServ.FieldByName('servPol').AsString := '1';
        sl[8] := Trim(sl[8]);
        if sl[8] = '1/2'
        then cdsServ.FieldByName('servFEC').AsString := '1'
        else
          if sl[8] = '2/3'
          then cdsServ.FieldByName('servFEC').AsString := '2'
          else
            if sl[8] = '3/4'
            then cdsServ.FieldByName('servFEC').AsString := '3'
            else
              if sl[8] = '5/6'
              then cdsServ.FieldByName('servFEC').AsString := '4'
              else
                if sl[8] = '7/8'
                then cdsServ.FieldByName('servFEC').AsString := '5'
                else
                  if sl[8] = '9/10'
                  then cdsServ.FieldByName('servFEC').AsString := '9'
                  else cdsServ.FieldByName('servFEC').AsString := '0';
        cdsServ.FieldByName('servPos').AsString := FloatToStr(StrToFloat(sl[3])*10);
        cdsServ.FieldByName('servVPID').AsString := sl[14];
        cdsServ.FieldByName('servAPID').AsString := sl[15];
        cdsServ.FieldByName('servTPID').AsString := sl[16];
        cdsServ.FieldByName('servPPID').AsString := sl[17];
        cdsServ.FieldByName('serv3PID').AsString := sl[18];
        cdsServ.FieldByName('servFlags').AsString := sl[19];
        cdsServ.FieldByName('servLock').AsString := '0';
        cdsServ.FieldByName('servDbeNr').AsInteger := HighDbeNr;
        cdsServ.FieldByName('servTypeTxt').AsString := TrnsServType(cdsServ.FieldByName('servType').AsInteger);
        cdsServ.FieldByName('servTrExtra').AsString := ':2:0';
        cdsServ.FieldByName('servCleanName').AsString := CleanText(sl[0]);
        cdsServ.Post;
      end;
    end;

    cdsServ.IndexFieldNames := servsif;
    cdsServ.Filtered := servflt;

    sl.Free;
    sli.Free;
    lvServ.Items.Count := cdsServ.RecordCount;
    lvServ.Refresh;
    TotalsBuild();
    tv.FullExpand;

    FormWait.Hide;
    screen.Cursor := crDefault;

    s := lwLngTrns(name,['Import of exported services file finished. ' +
                         'There were % services added ' +
                         'and % error(s) found (see log).',
                         IntToStr(cs),IntToStr(err)]);
    log('i',s);

    if cs > 0
    then begin;
      SetMenu('loaded');
      SetMenu('changed');
      Caption := 'LlamaWare DreamBoxEdit - ' + Dir;
    end;

    if ShowResultMsg
    then MessageDlg(s,mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.fmImportExportedBouquetsClick(Sender: TObject);
function IsValidLine(var slr: TStringList): Integer;
begin
  if not StrIsNumeric(slr[0],False) then result := 1
  else if not StrIsNumeric(slr[1],False) then result := 2
  else if not StrIsNumeric(slr[6],False) then result := 7
  else if not StrIsNumeric(slr[7],True) then result := 8
  else if not StrIsNumeric(slr[9],False) then result := 10
  else if not StrIsNumeric(slr[10],False) then result := 11
  else if not StrIsNumeric(slr[13],False) then result := 14
  else if not StrIsNumeric(slr[14],False) then result := 15
  else if not StrIsNumeric(slr[15],False) then result := 16
  else if not StrIsNumeric(slr[16],False) then result := 17
  else if not StrIsNumeric(slr[17],False) then result := 18
  else if not StrIsNumeric(slr[18],False) then result := 19
  else if not StrIsNumeric(slr[19],False) then result := 20
  else if not StrIsNumeric(slr[20],False) then result := 21
  else if not StrIsNumeric(slr[21],False) then result := 22
  else if not StrIsNumeric(slr[22],False) then result := 23
  else if not StrIsNumeric(slr[23],False)  then result := 24
  else result := -1;
end;
var
  tf: TextFile;
  s,et,pf: String;
  sl,sli: TStringList;
  i,p,err,col,cs,cb,sbnr: Integer;
  servsif: String;
  servflt: Boolean;
  Reg: TRegistry;
  pListData: ^TLIstData;
  ld: TListData;
  cds: TClientDataset;
begin
  if tbFiles.Enabled = False
  then begin;
    if MessageDlg(lwLngTrns(name,['No file-set open and no directory selected.~~' +
                             'You must first select or create a directory before you can import '+
                             'your exported bouquets file and save.~' +
                             'Do you want to select or create a directory now?']),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then exit;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    if Reg.ValueExists('LastUsedDirectory')
    then Dir := Reg.ReadString('LastUsedDirectory')
    else Dir := '';
    Reg.CloseKey;
    Reg.Destroy;
    if not DirectoryExists(Dir)
    then Dir := '';

    if not SelDir(Dir,True)
    then exit;
    if FileExists(Dir + '\services')
    then begin;
      if MessageDlg(lwLngTrns(name,['You have selected a directory that already contains a file-set.~' +
                               'When you later save the set you are now building, you will '+
                               'completely overwrite the existing set.~~' +
                               'Are you sure want to continue with this directory?']),
                    mtConfirmation,[mbYes,mbNo],0) <> mrYes
      then exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
    Reg.WriteString('LastUsedDirectory',Dir);
    Reg.CloseKey;
    Reg.Destroy;

    Log('i',lwLngTrns(name,['Directory % selected',Dir]));

    tnBQ := tv.Items.Add(nil,'Providers');
    tnTV := tv.Items.Insert(TNBQ,'TV User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnTV,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.tv';
    pListData.Number := 0;
    pListData.Locked := False;

    tnRD := tv.Items.Insert(TNBQ,'Radio User Bouquets');
    new(pListData);
    tv.Items.AddChildObject(tnRD,'Favorites',pListData);
    pListData.FileName := 'userbouquet.dbe00.radio';
    pListData.Number := 0;
    pListData.Locked := False;

    tv.FullExpand;
  end;

  od.FileName := '';
  od.Title := lwLngTrns(name,['Select the exported bouquets file to import']);
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
       (sl.Count <> 24) or
       (sl[2] <> 'Bouquet Type') or
       (sl[23] <> 'Flags')
    then begin;
      CloseFile(tf);
      sl.Free;
      sli.Free;
      MessageDlg(lwLngTrns(name,['Empty or invalid file for import.~~'+
                                 'A valid file:~' +
                                 '- is a by DreamBoxEdit exported bouquets file,~' +
                                 '- has 24 columns (tab delimted),~' +
                                 '- starts with a row containing the fieldnames.']),
                 mtError,[mbOK],0);
      exit;
    end;

    while not eof(tf) do begin;
      Readln(tf,s);
      sli.Add(s);
    end;
    CloseFile(tf);

    screen.Cursor := crHourGlass;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := sli.Count;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;

    log('i',lwLngTrns(name,['Starting import of exported bouquets file "%"',
                            od.FileName]));

    servsif := cdsServ.IndexFieldNames;
    cdsServ.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
    servflt := cdsServ.Filtered;
    cdsServ.Filtered := False;

    cds := nil;
    sbnr := -1;
    err := 0;
    cs := 0;
    cb := 0;
    p := 1;
    for i := 0 to sli.Count - 1 do begin;
      s := sli[i];
      s := StringReplace(s,#9,#13,[rfReplaceAll]);
      sl.Text := s;

      inc(p);
      if p mod 25 = 0
      then FormWait.pb.Position := p;

      col := IsValidLine(sl);
      if col > 0
      then begin;
        inc(err);
        log('i',lwLngTrns(name,['Import of exported bouquets file: error in line %, column %',
                                IntToStr(p),IntToStr(col)]));
        continue;
      end;

      { Create new service }
      if not cdsServ.FindKey([sl[13],sl[16],sl[14],sl[15],sl[6]])
      then begin;
        inc(cs);
        inc(HighDbeNr);
        cdsServ.Append;
        cdsServ.FieldByName('servSID').AsString := sl[13];
        cdsServ.FieldByName('servUniq').AsString := sl[16];
        cdsServ.FieldByName('servTSID').AsString := sl[14];
        cdsServ.FieldByName('servNID').AsString := sl[15];
        cdsServ.FieldByName('servType').AsString := sl[6];
        cdsServ.FieldByName('servName').AsString := sl[4];
        cdsServ.FieldByName('servPackage').AsString := sl[5];
        cdsServ.FieldByName('servNr').AsString := sl[17];
        cdsServ.FieldByName('servFreq').AsString := sl[9];
        cdsServ.FieldByName('servSymb').AsString := sl[10];
        if sl[11] = 'H'
        then cdsServ.FieldByName('servPol').AsString := '0'
        else cdsServ.FieldByName('servPol').AsString := '1';
        sl[12] := Trim(sl[12]);
        if sl[12] = '1/2'
        then cdsServ.FieldByName('servFEC').AsString := '1'
        else
          if sl[12] = '2/3'
          then cdsServ.FieldByName('servFEC').AsString := '2'
          else
            if sl[12] = '3/4'
            then cdsServ.FieldByName('servFEC').AsString := '3'
            else
              if sl[12] = '5/6'
              then cdsServ.FieldByName('servFEC').AsString := '4'
              else
                if sl[12] = '7/8'
                then cdsServ.FieldByName('servFEC').AsString := '5'
                else
                  if sl[12] = '9/10'
                  then cdsServ.FieldByName('servFEC').AsString := '9'
                  else cdsServ.FieldByName('servFEC').AsString := '0';
        cdsServ.FieldByName('servPos').AsString := FloatToStr(StrToFloat(sl[7])*10);
        cdsServ.FieldByName('servVPID').AsString := sl[18];
        cdsServ.FieldByName('servAPID').AsString := sl[19];
        cdsServ.FieldByName('servTPID').AsString := sl[20];
        cdsServ.FieldByName('servPPID').AsString := sl[21];
        cdsServ.FieldByName('serv3PID').AsString := sl[22];
        cdsServ.FieldByName('servFlags').AsString := sl[23];
        cdsServ.FieldByName('servLock').AsString := '0';
        cdsServ.FieldByName('servDbeNr').AsInteger := HighDbeNr;
        cdsServ.FieldByName('servTypeTxt').AsString := TrnsServType(cdsServ.FieldByName('servType').AsInteger);
        cdsServ.FieldByName('servTrExtra').AsString := ':2:0';
        cdsServ.FieldByName('servCleanName').AsString := CleanText(sl[4]);
        cdsServ.Post;
      end;

      { Create bouquet entry }
      inc(cb);
      if StrToInt(sl[0]) <> sbnr
      then begin;
        sbnr := StrToInt(sl[0]);
        if sl[2] = 'User Bouquets TV'
        then begin;
          et := 'T';
          cds := cdsFTV;
          pf := 'ftv';
        end
        else
          if sl[2] = 'User Bouquets Radio'
          then begin;
            et := 'R';
            cds := cdsFRD;
            pf := 'frd';
          end
          else begin;
            et := 'P';
            cds := cdsFBQ;
            pf := 'fbq';
          end;

        ld := NewBouquet(et);

        new(pListData);
        if et = 'P'
        then begin;
          tv.Items.AddChildObject(tnBQ,sl[3],pListData);
          tnBQ.AlphaSort(True);
        end
        else
          if et = 'T'
          then tv.Items.AddChildObject(tnTV,sl[3],pListData)
          else tv.Items.AddChildObject(tnRD,sl[3],pListData);
        pListData.FileName := ld.FileName;
        pListData.Number := ld.Number;
        pListData.Locked := False;
      end;
      cds.Append;
      cds.FieldByName(pf+'SeqNr').AsString := sl[1];
      cds.FieldByName(pf+'Name').AsString := CleanText(sl[4]);
      cds.FieldByName(pf+'SID').AsString := sl[13];
      cds.FieldByName(pf+'Uniq').AsString := sl[16];
      cds.FieldByName(pf+'TSID').AsString := sl[14];
      cds.FieldByName(pf+'NID').AsString := sl[15];
      cds.FieldByName(pf+'ServType').AsString := sl[6];
      cds.FieldByName(pf+'SetNr').AsInteger := ld.Number;
      cds.FieldByName(pf+'Descr').AsString := '';
      cds.FieldByName(pf+'DbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
      cds.FieldByName(pf+'T').AsString := 'n';
      cds.Post;
    end;

    cdsServ.IndexFieldNames := servsif;
    cdsServ.Filtered := servflt;

    sl.Free;
    sli.Free;
    lvServ.Items.Count := cdsServ.RecordCount;
    lvServ.Refresh;
    TotalsBuild();
    tv.FullExpand;

    FormWait.Hide;
    screen.Cursor := crDefault;

    s := lwLngTrns(name,['Import of exported bouquets file finished. ' +
                         'There were % services added, % bouquet entries added ' +
                         'and % error(s) found (see log).',
                         IntToStr(cs),IntToStr(cb),IntToStr(err)]);
    log('i',s);

    if (cs > 0) or
       (cb > 0)
    then begin;
      SetMenu('loaded');
      SetMenu('changed');
      Caption := 'LlamaWare DreamBoxEdit - ' + Dir;
    end;

    if ShowResultMsg
    then MessageDlg(s,mtInformation,[mbOK],0);    
  end;
end;

procedure TFormMain.DetInsertMarkerPosClick(Sender: TObject);
var
  i,p: Integer;
  s,sp: String;
  item: TListItem;
begin
  screen.cursor := crHourglass;
  if lvDet.Items.Count > 50
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvDet.Items.Count - 1;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;
  end;

  p := 0;
  sp := '';
  i := 0;
  while i <= lvDet.Items.Count - 1 do begin;
    inc(p);
    if lvDet.Items.Count > 50
    then FormWait.pb.Position := p;

    if (lvDet.Items[i].SubItems[11] = 'm') or
       (lvDet.Items[i].SubItems[11] = 's') or
       (lvDet.Items[i].SubItems[1] = sp)
    then begin;
      inc(i);
      continue;
    end;

    sp := lvDet.Items[i].SubItems[1];

    if (cdsPos.FindKey([StrToFloat(sp)*10])) and
       (cdsPos.FieldByName('PosName').AsString <> '')
    then s := '-- ' + cdsPos.FieldByName('PosName').AsString + ' --'
    else s := '-- ' + sp + ' --';

    { Don't insert duplicate markers }
    if ((i > 0) and
        (lvDet.Items[i-1].SubItems[11] = 'm') and
        (lvDet.Items[i-1].Caption = s)) or
       ((i > 1) and
        (lvDet.Items[i-2].SubItems[11] = 'm') and
        (lvDet.Items[i-2].Caption = s))
    then begin;
      inc(i);
      continue;
    end;

    item := lvDet.Items.Insert(i);
    item.Caption := s;
    item.SubItems.Add('----');
    item.SubItems.Add('');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add(IntToStr(DetSetNr));
    item.SubItems.Add(s);
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('m');
    SetMenu('changed');
    inc(i);
    inc(i);
  end;
  lvDetSave();
  if lvDet.Items.Count > 50
  then FormWait.Hide;
  screen.cursor := crdefault;

  TotalsBuild();
end;

procedure TFormMain.puLogoGotowebsite1Click(Sender: TObject);
var
  st: Integer;
  s: String;
begin
  s := 'http://pp.digsat.net/ppteam/dreamboxedit';
  st := ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
  if st <= 32
  then begin;
    showmessage(lwLngTrns(name,['Returncode % from opening "%"',
                           IntToStr(st),s]));
    log('e',lwLngTrns(name,['Returncode % from opening "%"',
                       IntToStr(st),s]));
  end;
end;

procedure TFormMain.DetInsertMarkerPackageClick(Sender: TObject);
var
  i,p: Integer;
  s,sp: String;
  item: TListItem;
  flt: Boolean;
begin
  screen.cursor := crHourglass;
  if lvDet.Items.Count > 50
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvDet.Items.Count - 1;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;
  end;

  flt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  p := 0;
  sp := '';
  i := 0;
  while i <= lvDet.Items.Count - 1 do begin;
    inc(p);
    if lvDet.Items.Count > 50
    then FormWait.pb.Position := p;

    cdsServ.Locate('servDbeNr',lvDet.Items[i].SubItems[10],[]);
    if (lvDet.Items[i].SubItems[11] = 'm') or
       (CleanText(cdsServ.FieldByName('servPackage').AsString) = sp)
    then begin;
      inc(i);
      continue;
    end;

    sp := CleanText(cdsServ.FieldByName('servPackage').AsString);

    s := '-- ' + sp + ' --';

    { Don't insert duplicate markers }
    if ((i > 0) and
        (lvDet.Items[i-1].SubItems[11] = 'm') and
        (lvDet.Items[i-1].Caption = s)) or
       ((i > 1) and
        (lvDet.Items[i-2].SubItems[11] = 'm') and
        (lvDet.Items[i-2].Caption = s))
    then begin;
      inc(i);
      continue;
    end;

    item := lvDet.Items.Insert(i);
    item.Caption := s;
    item.SubItems.Add('----');
    item.SubItems.Add('');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add(IntToStr(DetSetNr));
    item.SubItems.Add(s);
    item.SubItems.Add('0');
    item.SubItems.Add('0');
    item.SubItems.Add('m');
    SetMenu('changed');
    inc(i);
    inc(i);
  end;
  lvDetSave();
  cdsServ.Filtered := flt;
  if lvDet.Items.Count > 50
  then FormWait.Hide;
  screen.cursor := crdefault;

  TotalsBuild();
end;

procedure TFormMain.iLogoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  puLogo.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TFormMain.Deletesatellite(Sender: TObject);
var
  i: Integer;
  s: String;                                          
begin
  Screen.Cursor := crHourGlass;
  lvServ.ClearSelection;
  s := (Sender as TMenuItem).Caption;
  for i := 0 to lvServ.Items.Count - 1 do begin;
    if lvServ.Items[i].SubItems[3] = s
    then lvServ.Items[i].Selected := True;
  end;
  Screen.Cursor := crDefault;
  DeleteService1Click(self);
  lvServ.ClearSelection;
end;

procedure TFormMain.MakeBouquetforthisPackage1Click(Sender: TObject);
var
  bnr,pack: String;
  i,cs,p: Integer;
  bsl: TStringList;
  NewBouq: Boolean;
  ld: TLIstData;
  pListData: ^TListData;
begin
  if lvServ.Selected = nil
  then exit;

  pack := lvServ.Selected.SubItems[0];

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;

  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsServ.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;
  p := 0;

  cs := 0;
  bsl := TStringList.Create;
  bsl.Sorted := True;
  bsl.CaseSensitive := False;

  cdsServ.First;
  while not cdsServ.Eof
  do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    if CleanText(cdsServ.FieldByName('servPackage').AsString) <> pack
    then begin;
      cdsServ.Next;
      continue;
    end;

    { get current or new bouquet sequence number }
    NewBouq := False;
    bnr := bsl.Values[pack];
    if bnr = ''
    then begin;
      for i := 0 to tv.Items.Count - 1 do begin;
        if (tv.Items.Item[i].Level = 1) and
           (tv.Items.Item[i].Parent.Text[1] = 'P')
        then begin;
          if tv.Items.Item[i].Text = pack
          then begin;
            pListData := tv.Items.Item[i].Data;
            bnr := IntToStr(pListData.Number);
            break;
          end;
        end;
      end;
      if bnr = ''
      then begin;
        NewBouq := True;
        ld := NewBouquet('P');
        bnr := IntToStr(ld.Number);
      end;
    end;

    { add service to bouquet }
    if cdsFBQ.FindKey([bnr,
                       cdsServ.FieldByName('servSID').AsString,
                       cdsServ.FieldByName('servUniq').AsString,
                       cdsServ.FieldByName('servTSID').AsString,
                       cdsServ.FieldByName('servNID').AsString,
                       cdsServ.FieldByName('servType').AsString])
    then begin;
      log('w',lwLngTrns(name,['Creating bouquet per package: service % already in bouquet %',
                         CleanText(cdsServ.FieldByName('servName').AsString),pack]));
    end
    else begin;
      cdsFBQ.Append;
      cdsFBQ.FieldByName('fbqSeqNr').AsInteger := 0;
      cdsFBQ.FieldByName('fbqName').AsString := CleanText(cdsServ.FieldByName('servName').AsString);
      cdsFBQ.FieldByName('fbqSID').AsString := cdsServ.FieldByName('servSID').AsString;
      cdsFBQ.FieldByName('fbqUniq').AsString := cdsServ.FieldByName('servUniq').AsString;
      cdsFBQ.FieldByName('fbqTSID').AsString := cdsServ.FieldByName('servTSID').AsString;
      cdsFBQ.FieldByName('fbqNID').AsString := cdsServ.FieldByName('servNID').AsString;
      cdsFBQ.FieldByName('fbqServType').AsString := cdsServ.FieldByName('servType').AsString;
      cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
      cdsFBQ.FieldByName('fbqDescr').AsString := '';
      cdsFBQ.FieldByName('fbqDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
      cdsFBQ.FieldByName('fbqT').AsString := 'n';
      cdsFBQ.Post;

      inc(cs);
      log('i',lwLngTrns(name,['Service % added to bouquet % (%)',
                         CleanText(cdsServ.FieldByName('servName').AsString),pack,bnr]));

      if bsl.IndexOfName(pack) < 0
      then begin;
        bsl.Add(pack + '=' + bnr);
        if NewBouq
        then begin;
          new(pListData);
          pListData.FileName := ld.FileName;
          pListData.Number := ld.Number;
          pListData.Locked := False;
          tv.Items.AddChildObject(tnBQ,pack,pListData);
          tnBQ.AlphaSort(True);
        end;
      end;
    end;

    cdsServ.Next;
  end;

  if cs > 0
  then SetMenu('changed');
  
  bsl.Free;
  TotalsBuild();

  tnTV.Item[0].Selected := True;
  tnTV.Item[0].MakeVisible;

  FormWait.Hide;
  Screen.Cursor := crDefault;
  ToolBar1.Enabled := True;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% Services added to Bouquet %',IntToStr(cs),pack]),
                  mtInformation,[mbOK],0);
end;

procedure TFormMain.MakeBouquetperPackage1Click(Sender: TObject);
var
  b,bl,bnr: String;
  i,cb,cs,p: Integer;
  bsl: TStringList;
  NewBouq: Boolean;
  ld: TLIstData;
  pListData: ^TListData;
begin
  if lvServ.Selected = nil
  then exit;

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsServ.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;
  p := 0;

  cb := 0;
  cs := 0;
  bl := '';
  bsl := TStringList.Create;
  bsl.Sorted := True;
  bsl.CaseSensitive := False;

  tv.Items.BeginUpdate;
  cdsServ.First;
  while not cdsServ.Eof
  do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    b := CleanText(cdsServ.FieldByName('servPackage').AsString);

    { get current or new bouquet sequence number }
    NewBouq := False;
    bnr := bsl.Values[b];
    if bnr = ''
    then begin;
      for i := 0 to tv.Items.Count - 1 do begin;
        if (tv.Items.Item[i].Level = 1) and
           (tv.Items.Item[i].Parent.Text[1] = 'P')
        then begin;
          if tv.Items.Item[i].Text = b
          then begin;
            pListData := tv.Items.Item[i].Data;
            bnr := IntToStr(pListData.Number);
            break;
          end;
        end;
      end;
      if bnr = ''
      then begin;
        NewBouq := True;
        ld := NewBouquet('P');
        bnr := IntToStr(ld.Number);
      end;
    end;

    { add service to bouquet }
    if cdsFBQ.FindKey([bnr,
                       cdsServ.FieldByName('servSID').AsString,
                       cdsServ.FieldByName('servUniq').AsString,
                       cdsServ.FieldByName('servTSID').AsString,
                       cdsServ.FieldByName('servNID').AsString,
                       cdsServ.FieldByName('servType').AsString])
    then begin;
      log('w',lwLngTrns(name,['Creating bouquet per position: service % already in bouquet %',
                         CleanText(cdsServ.FieldByName('servName').AsString),b]));
    end
    else begin;
      cdsFBQ.Append;
      cdsFBQ.FieldByName('fbqSeqNr').AsInteger := 0;
      cdsFBQ.FieldByName('fbqName').AsString := CleanText(cdsServ.FieldByName('servName').AsString);
      cdsFBQ.FieldByName('fbqSID').AsString := cdsServ.FieldByName('servSID').AsString;
      cdsFBQ.FieldByName('fbqUniq').AsString := cdsServ.FieldByName('servUniq').AsString;
      cdsFBQ.FieldByName('fbqTSID').AsString := cdsServ.FieldByName('servTSID').AsString;
      cdsFBQ.FieldByName('fbqNID').AsString := cdsServ.FieldByName('servNID').AsString;
      cdsFBQ.FieldByName('fbqServType').AsString := cdsServ.FieldByName('servType').AsString;
      cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
      cdsFBQ.FieldByName('fbqDescr').AsString := '';
      cdsFBQ.FieldByName('fbqDbeNr').AsString := cdsServ.FieldByName('servDbeNr').AsString;
      cdsFBQ.FieldByName('fbqT').AsString := 'n';
      cdsFBQ.Post;

      inc(cs);
      log('i',lwLngTrns(name,['Service % added to bouquet % (%)',
                         CleanText(cdsServ.FieldByName('servName').AsString),b,bnr]));

      if bsl.IndexOfName(b) < 0
      then begin;
        bsl.Add(b + '=' + bnr);
        if NewBouq
        then begin;
          new(pListData);
          pListData.FileName := ld.FileName;
          pListData.Number := ld.Number;
          pListData.Locked := False;
          tv.Items.AddChildObject(tnBQ,b,pListData);
          tnBQ.AlphaSort(True);
          inc(cb);
          if bl = ''
          then bl := b
          else bl := bl + ', ' + b;
        end;
      end;
    end;

    cdsServ.Next;
  end;

  if cs > 0
  then SetMenu('changed');

  bsl.Free;
  tv.Items.EndUpdate;
  TotalsBuild();

  tnTV.Item[0].Selected := True;
  tnTV.Item[0].MakeVisible;

  FormWait.Hide;
  Screen.Cursor := crDefault;
  ToolBar1.Enabled := True;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% Services added to Bouquets per package.~~' +
                             '% new Bouquets created:~%',
                             IntToStr(cs),IntToStr(cb),bl]),
                  mtInformation,[mbOK],0);
end;

procedure TFormMain.MarkservicesnotinBouquet1Click(Sender: TObject);
var
  c,p,flags: Integer;
  ftvsif, frdsif: String;
  ftvflt, frdflt: Boolean;
begin
  ftvflt := cdsFTV.Filtered;
  cdsFTV.Filtered := False;
  ftvsif := cdsFTV.IndexFieldNames;
  cdsFTV.IndexFieldNames := 'ftvDbeNr';

  frdflt := cdsFRD.Filtered;
  cdsFRD.Filtered := False;
  frdsif := cdsFRD.IndexFieldNames;
  cdsFRD.IndexFieldNames := 'frdDbeNr';

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsServ.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;

  ServEdit := True;

  p := 0;
  c := 0;
  cdsServ.First;
  while not cdsServ.Eof do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    cdsServ.Edit;
    if (not cdsFTV.FindKey([cdsServ.FieldByName('servDbeNr').AsInteger])) and
       (not cdsFRD.FindKey([cdsServ.FieldByName('servDbeNr').AsInteger])) 
    then begin;
      inc(c);
      flags := cdsServ.FieldByName('servFlags').AsInteger;
      flags := flags or 128;
      cdsServ.FieldByName('servFlags').AsInteger := flags;
    end
    else begin;
      flags := cdsServ.FieldByName('servFlags').AsInteger;
      flags := flags and 127;
      cdsServ.FieldByName('servFlags').AsInteger := flags;
    end;
    cdsServ.Post;
    cdsServ.Next;
  end;

  cdsFTV.Filtered := ftvflt;
  cdsFTV.IndexFieldNames := ftvsif;

  cdsFRD.Filtered := frdflt;
  cdsFRD.IndexFieldNames := frdsif;

  ServEdit := False;
  lvServ.Refresh;

  FormWait.Hide;
  Screen.Cursor := crDefault;
  ToolBar1.Enabled := True;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['% services were not found in any userbouquet ' +
                                  'and are marked as New',IntToStr(c)]),
                  mtInformation,[mbOK],0);
end;

procedure TFormMain.ToggleKeepFlag1Click(Sender: TObject);
var
  flags: Integer;
begin
  if lvServ.Selected = nil
  then exit;

  while lvServ.Selected <> nil do begin;
    if not cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])
    then begin;
      MessageDlg('Internal error finding service for setting keep flag.'#13 +
                 'Operation canceled.',
                 mtError,[mbOK],0);
      break;
    end;
    ServEdit := True;
    cdsServ.Edit;
    flags := cdsSERV.FieldByName('servFlags').AsInteger;
    flags := flags or 1;
    cdsServ.FieldByName('servFlags').AsInteger := flags;
    cdsServ.Post;
    ServEdit := False;

    lvServ.Selected.Selected := False;
    SetMenu('changed');
  end;
  lvServ.Refresh;
  lvDet.Repaint;
end;

procedure TFormMain.SetKeepFlagOff1Click(Sender: TObject);
var
  flags: Integer;
begin
  if lvServ.Selected = nil
  then exit;

  while lvServ.Selected <> nil do begin;
    if not cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])
    then begin;
      MessageDlg('Internal error finding service for setting keep flag.'#13 +
                 'Operation canceled.',
                 mtError,[mbOK],0);
      break;
    end;
    ServEdit := True;
    cdsServ.Edit;
    flags := cdsSERV.FieldByName('servFlags').AsInteger;
    if (flags and 1) = 1
    then flags := flags xor 1;
    cdsServ.FieldByName('servFlags').AsInteger := flags;
    cdsServ.Post;
    ServEdit := False;

    lvServ.Selected.Selected := False;
    SetMenu('changed');
  end;
  lvServ.Refresh;
  lvDet.Repaint;
end;

procedure TFormMain.ChangetypetoTV1Click(Sender: TObject);
var
  DbeNr,s,sifTV,sifRD,sifBQ: String;
  c,i,j: Integer;
begin
  if lvServ.Selected = nil
  then exit;

  screen.Cursor := crHourglass;
  lvServ.Items.BeginUpdate;

  sifBQ := cdsFBQ.IndexFieldNames;
  cdsFBQ.IndexFieldNames := 'fbqDbeNr';
  sifTV := cdsFTV.IndexFieldNames;
  cdsFTV.IndexFieldNames := 'ftvDbeNr';
  sifRD := cdsFRD.IndexFieldNames;
  cdsFRD.IndexFieldNames := 'frdDbeNr';
  for i := lvServ.Items.Count - 1 downto 0 do begin;
    if not lvServ.Items[i].Selected
    then continue;

    DbeNr := lvServ.Items[i].SubItems[20];
    s := lvServ.Items[i].Caption;
    c := 0;
    if cdsFBQ.FindKey([DbeNr])
    then begin;
      inc(c);
      cdsFBQ.Edit;
      cdsFBQ.FieldByName('fbqServType').AsInteger := 1;
      cdsFBQ.Post;
    end;
    if cdsFTV.FindKey([DbeNr])
    then begin;
      inc(c);
      cdsFTV.Edit;
      cdsFTV.FieldByName('ftvServType').AsInteger := 1;
      cdsFTV.Post;
    end;

    if cdsFRD.FindKey([DbeNr])
    then begin;
      inc(c);
      cdsFRD.Edit;
      cdsFRD.FieldByName('frdServType').AsInteger := 1;
      cdsFRD.Post;
    end;

    if c > 0
    then begin;
      for j := lvDet.Items.Count - 1 downto 0 do begin;
        if lvDet.Items[j].SubItems[10] = DbeNr
        then begin;
          lvDet.Items[j].SubItems[0] := 'TV';
          DetChanged := True;
        end;
      end;
    end;

    cdsServ.Locate('servDbeNr',DbeNr,[]);
    cdsServ.Edit;
    cdsServ.FieldByName('servType').AsInteger := 1;
    cdsServ.Post;
    lvServ.Items.Count := cdsServ.RecordCount;
    log('i',lwLngTrns(name,['Service % set to type TV',s]));
    SetMenu('changed');
  end;
  cdsFTV.IndexFieldNames := sifTV;
  cdsFRD.IndexFieldNames := sifRD;
  cdsFBQ.IndexFieldNames := sifBQ;

  lvServ.Items.EndUpdate;

  Screen.Cursor := crDefault;

  TotalsBuild();
end;

procedure TFormMain.tvCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  pListData: ^TListData;
begin
  pListData := Node.Data;
  if (pListData <> nil) and
     (pListData.Locked)
  then
    if Blacklist
    then Sender.Canvas.Brush.Color := clRed
    else Sender.Canvas.Brush.Color := $008AF7A3;
end;

procedure TFormMain.tvToggleParentalLock1Click(Sender: TObject);
var
  pListData: ^TListData;
begin
  if (tv.Selected = nil) or
     (tv.Selected.Data = nil)
  then exit;

  pListData := tv.Selected.Data;
  pListData.Locked := not pListData.Locked;
  tv.Repaint;
  SetMenu('changed');
end;

procedure TFormMain.Renumberallservices1Click(Sender: TObject);
var
  i: integer;
  servflt: Boolean;
begin
  screen.Cursor := crHourglass;
  servflt := cdsServ.Filtered;
  cdsServ.Filtered := False;
  ServEdit := True;

  i := 200;
  cdsServ.First;
  while not cdsServ.Eof do begin;
    cdsServ.Edit;
    cdsServ.FieldByName('servNr').AsInteger := i;
    inc(i);
    cdsServ.Post;
    cdsServ.Next;
  end;
  cdsServ.Filtered := servflt;

  ServEdit := False;
  SetMenu('changed');

  lvServ.Refresh;
  screen.Cursor := crDefault;
end;

procedure TFormMain.ClearNewFlagForSelected1Click(Sender: TObject);
var
  c,p,flags: Integer;
begin
  if lvServ.Selected = nil
  then exit;

  Screen.Cursor := crHourGlass;
  ToolBar1.Enabled := False;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := lvServ.SelCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  Application.ProcessMessages;

  p := 0;
  c := 0;
  while lvServ.Selected <> nil do begin;
    inc(p);
    if p mod 5 = 0
    then FormWait.pb.Position := p;

    if not cdsServ.Locate('servDbeNr',lvServ.Selected.SubItems[20],[])
    then begin;
      MessageDlg('Internal error finding service for toggle parental lock.'#13 +
                 'Operation canceled.',
                 mtError,[mbOK],0);
      break;
    end;

    flags := cdsServ.FieldByName('servFlags').AsInteger;
    if (flags and 128) = 128
    then begin;
      ServEdit := True;
      cdsServ.Edit;
      flags := flags XOR 128;
      cdsServ.FieldByName('servFlags').AsInteger := flags;
      cdsServ.Post;
      ServEdit := False;
      inc(c);
    end;
    lvServ.Selected.Selected := False;
  end;

  FormWait.Hide;
  ToolBar1.Enabled := True;
  Screen.Cursor := crDefault;

  lvServ.Refresh;
  lvDet.Repaint;

  if ShowResultMsg
  then MessageDlg(lwLngTrns(name,['"New" flag reset for % services',
                            IntToStr(c)]),
                  mtInformation,[mbOK],0);
end;

procedure TFormMain.fmSwitchVersion2and3Click(Sender: TObject);
begin

  case  SettingsVersion of
   2: SetVersionDefaults(3);
   3: SetVersionDefaults(4);
   4: SetVersionDefaults(2);
  end;

  SetMenu('changed');
  MessageDlg(lwLngTrns(name,['The version of the settings set is now changed to %.~~' +
                             'This means that the next time you save this settings set ' +
                             'it will be saved in that format.~' +
                             'Be ware: a version 3 and 4 set will NOT work for a Dreambox that ' +
                             'expects a version 2 set.' +
                             'Version 4 is Enigma2 with drivers after august 2008.~' +
                             'And a version 2 set not on a receiver that expects version 3 or 4' +
                             '(Enigma2).~~' +
                             'You can always see which version is selected at the bottom statusbar ' +
                             'on the main screen of DreamBoxEdit!',
                             IntToStr(SettingsVersion)]),
             mtInformation,[mbOK],0);
end;

procedure TFormMain.puReadVersionNotesClick(Sender: TObject);
var
  Reg: TRegistry;
  wn: TStringList;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  if FileExists('Version notes.txt')
  then begin;
    wn := TStringList.Create;
    wn.LoadFromFile('Version notes.txt');
    if MessageDlg(lwLngTrns(name,['New version notes:~~ % ~~' +
                                  'Do you want to show this message again next ' +
                                  'time you start DreamBoxEdit?',
                                  wn.Text]),
                  mtinformation,[mbYes,mbNo],0) = mrNo
    then Reg.WriteInteger('First time ' + FormAbout._lVersion.Caption,FileAge('Version notes.txt'))
    else Reg.DeleteValue('First time ' + FormAbout._lVersion.Caption);
    wn.Free;
  end
  else begin;
    MessageDlg(lwLngTrns(name,['New version notes:~~Error: file "%" not found~~',
                               'Version notes.txt']),
               mtError,[mbOk],0);
  end;
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormMain.Removeemptymarkers1Click(Sender: TObject);
var
  i,p: Integer;
  sp: String;
begin
  screen.cursor := crHourglass;
  if lvDet.Items.Count > 50
  then begin;
    FormWait.pb.Caption := '';
    FormWait.pb.Min := 0;
    FormWait.pb.Max := lvDet.Items.Count - 1;
    FormWait.pb.Position := 0;
    FormWait.Show;
    application.ProcessMessages;
  end;

  p := 0;
  sp := '';
  i := 0;
  while i <= lvDet.Items.Count - 1 do begin;
    inc(p);
    if lvDet.Items.Count > 50
    then FormWait.pb.Position := p;

    { Delete empty markers }
    if (i + 1 <= lvDet.Items.Count - 1) and
      ((lvDet.Items[i].SubItems[11] = 'm') and
       (lvDet.Items[i+1].SubItems[11] = 'm'))
    then begin;
      lvDet.Items[i].Delete;
      SetMenu('changed');
      continue;
    end;

    inc(i);
  end;
  lvDetSave();
  if lvDet.Items.Count > 50
  then FormWait.Hide;
  screen.cursor := crdefault;

  TotalsBuild();
end;

procedure TFormMain.fmSearchClick(Sender: TObject);
begin
  SearchServices('new');
end;

procedure TFormMain.fmSearchRepeatClick(Sender: TObject);
begin
  SearchServices('repeat');
end;

procedure TFormMain.Search1Click(Sender: TObject);
var
  l: Integer;
  s1,s2: String;
begin
  { If not yet done: put Ctrl-F / F3 after "Search" / "Repeat search" captions }
  if RightStr(fmSearch.Caption,6) = 'Ctrl-F'
  then exit;

  l := Canvas.TextWidth(trim(fmSearch.Caption));
  if Canvas.TextWidth(trim(fmSearchRepeat.Caption)) > l
  then l := Canvas.TextWidth(trim(fmSearchRepeat.Caption));
  l := l + 30;
  s1 := trim(fmSearch.Caption);
  s2 := 'Ctrl-F';
  while Canvas.TextWidth(s1) < l do
    s1 := s1 + ' ';
  fmSearch.Caption := s1 + s2;
  s1 := trim(fmSearchRepeat.Caption);
  s2 := 'F3';
  while Canvas.TextWidth(s1) < l do
    s1 := s1 + ' ';
  fmSearchRepeat.Caption := s1 + s2;
end;

procedure TFormMain.sbMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  i,p,mx: Integer;
begin
  sb.Hint := 'Version of settings file';
  mx := mouse.CursorPos.X;
  p := left + 5;
  for i := 0 to sb.Panels.Count - 1 do begin;
    p := p + sb.panels[i].Width;
    if p > mx
    then break;
  end;
  if i > sb.Panels.Count - 1
  then i := sb.Panels.Count - 1;

  case i of
    0: sb.Hint := lwLngTrns(name,['The currently active profile is "%".~' +
                                  'You can define profiles and switch between ' +
                                  'them on the options panel.',
                                  ProfilesName]);
    1: sb.Hint := lwLngTrns(name,['This field shows the IP settings of the ' +
                                  'currently active profile.']);
    2: sb.Hint := lwLngTrns(name,['This field shows the receiver type ' +
                                  '(Satellite/Cable) for the not-multiple-' +
                                  'receiver Dreambox models']);
    3: sb.Hint := lwLngTrns(name,['This field shows the version type of the ' +
                                  'currently loaded settings.~' +
                                  'You can switch between versions in the "Tools" ' +
                                  'menu (normally not needed).']);
    4: sb.Hint := lwLngTrns(name,['This field shows the choosen type of parental ' +
                                  'control: Blacklist or Whitelist.~' +
                                  'You can choose the type to be used on your Dreambox '+
                                  '(only with newer Dreamboxes that use settings-type 3!).~~' +
                                  'When using Blacklist: all locked services are shown in red,~' +
                                  'with Whitelist all allowed services are shown in green.']);
    else sb.Hint := 'All copyrights by LlamaWare';
  end;
end;

function TFormMain.DownloadFile(Source, Dest: string): Boolean;
  { Function for Downloading the file found on the net }
begin
  try
    Result := UrlDownloadToFile(nil, PChar(Source), PChar(Dest), 0, nil) = 0;
  except
    Result := False;
  end;
end;

function TFormMain.CountPos(const subtext: string; Text: string): Integer;
begin
  if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0) then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '', [rfReplaceAll]))) div Length(subtext);
end;

Procedure TFormMain.GetPng();
var
   servref, misspng: TStringList;
   i, pdel,ndel, t1, t2: Integer;
   typ, sid, tsid, onid, namespace, pngchname,pngsrname,newDir : String;
begin
              { PICON start : import needed picon.png

    Start finding which Tv and radio channels we have in the bouquets
    and make a list of the corresponding png_names (as name or servicereference)}


    servref := TStringList.Create;
    misspng := TStringlist.Create;
    misspng.Add('Missing PNG´s generated '+ DateTimeToStr(now));
    servref.Add('# TV channels **********');
    cdsFTV.First;
    for i := 0 to cdsFTV.RecordCount -1 do
      begin
      typ :=  IntToHex(StrToInt(cdsFTV.FieldByName('ftvServType').AsString),1);
      sid :=  IntToHex(StrToInt(cdsFTV.FieldByName('ftvSID').AsString),1);
      tsid := IntToHex(StrToInt(cdsFTV.FieldByName('ftvTSID').AsString),1);
      onid := IntToHex(StrToInt(cdsFTV.FieldByName('ftvNID').AsString),1);
      namespace := IntToHex(StrToInt(cdsFTV.FieldByName('ftvUniq').AsString),1);

      servref.Add(cdsFTV.FieldByName('ftvName').AsString +
              '@1_0_'+ typ + '_' + sid  + '_' + tsid + '_' + onid + '_'
              + namespace + '_0_0_0');
         cdsFTV.Next;
      end;

    servref.Add('# Radio channels **********');
    cdsFRD.First;
    for i := 0 to cdsFRD.RecordCount -1 do
      begin
      typ :=  IntToHex(StrToInt(cdsFRD.FieldByName('frdServType').AsString),1);
      sid :=  IntToHex(StrToInt(cdsFRD.FieldByName('frdSID').AsString),1);
      tsid := IntToHex(StrToInt(cdsFRD.FieldByName('frdTSID').AsString),1);
      onid := IntToHex(StrToInt(cdsFRD.FieldByName('frdNID').AsString),1);
      namespace := IntToHex(StrToInt(cdsFRD.FieldByName('frdUniq').AsString),1);

      servref.Add(cdsFRD.FieldByName('frdName').AsString +
              '@1_0_'+ typ + '_' + sid  + '_' + tsid + '_' + onid + '_'
              + namespace + '_0_0_0');
         cdsFRD.Next;
      end;

    {Check if png already exists in local picon-directory

    }
    if not DirectoryExists(Dir + '\picon') then
    ForceDirectories(Dir+ '\picon');

    for i := 0 to servref.Count - 1 do
    begin
       if copy(servref[i],1,1) = '#' then continue;

       pdel:= LastDelimiter('@', servref[i]);
       pngsrname := RightStr(servref[i],Length(servref[i])-pdel) ;
       pngchname :=  TrimRight(LeftStr(servref[i],pdel-1)) ;

       newDir := Dir + '\picon';
       if not FileExists(Dir + '\picon\'+pngsrname+'.png') then
       if DownloadFile('http://dreambox.ingmar.dk/picon/'+pngsrname+'.png',Dir + '\picon\'+pngsrname+'.png')
       then
         begin
         // Showmessage(pngchname);
          ndel := CountPos('/',pngchname);
          if ndel > 0 then

            for t1 := 1 to ndel do
            begin
               t2 := pos('/', pngchname);
               newDir := newDir + '\' + (LeftStr(pngchname,t2-1));
               ForceDirectories(newDir);
               pngchname := copy(pngchname,t2+1,length(pngchname)-(t2));

            end;


         CopyFile(Pchar(Dir + '\picon\'+pngsrname+'.png'),PChar(newDir+ '\'+ pngchname +'.png'),false);
         end
       else // file not available at server:
          misspng.Add(pngsrname + ' ' + pngchname);
             
       //ShowMessage(pngsrname+'('+pngchname+')');
       if not FileExists(Dir + '\picon\dbe.png') then
       DownloadFile('http://dreambox.ingmar.dk/picon/dbe.png',Dir + '\picon\dbe.png');

    end;
    if not DirectoryExists(Dir + '\missing') then
    ForceDirectories(Dir+ '\missing');
    misspng.SaveToFile(Dir+'\missing\missingPng.txt');

    if misspng.Count > 1 then
           MessageDlg(lwLngTrns(name,[
                 'PNG-Server does not contain ' + IntToStr(misspng.Count-1) +' picon(s)~' +
                 'Program will show default logo instead of missing png´s. You can request picon when '+
                 'mailing us the "misssingPng.txt" file saved in the channellist '+
                 '"missing" subdirectory.']),
                 mtWarning,[mbOk],0);


   // servref.SaveToFile(Dir +'\test.txt');
    servref.Free;
    misspng.Free;
    { PICON End}

end;

end.

