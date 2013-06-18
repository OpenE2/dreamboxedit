unit formShowEditServiceDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, LWPanel;

type
  TfrmShowEditServiceDetails = class(TForm)
    lwpnlBG: TLWPanel;
    gbxDetails: TGroupBox;
    gbMemo: TGroupBox;
    Memo1: TMemo;
    pctlDetails: TPageControl;
    tshtTransponderData: TTabSheet;
    gbxTransponderData: TGroupBox;
    lblSatellitePosition: TLabel;
    lblTransponderID: TLabel;
    lblFEC: TLabel;
    lblSymbolRate: TLabel;
    lblPolarisation: TLabel;
    lblNamespace: TLabel;
    lblNetworkID: TLabel;
    lblFrequency: TLabel;
    ntLabel1: TLabel;
    ntLabel2: TLabel;
    ntLabel3: TLabel;
    ntLabel4: TLabel;
    ntLabel5: TLabel;
    ntLabel6: TLabel;
    ntLabel7: TLabel;
    ntLabel8: TLabel;
    lblOtherParameters: TLabel;
    ntLabel9: TLabel;
    ePos: TComboBox;
    eTSID: TEdit;
    eFEC: TComboBox;
    eSymb: TEdit;
    ePol: TComboBox;
    eNamespace: TEdit;
    bCalculate: TButton;
    eNID: TEdit;
    eFreq: TEdit;
    pnlNotice: TPanel;
    eTrExtra: TEdit;
    tshtServiceData: TTabSheet;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ntLabel25: TLabel;
    ntLabel24: TLabel;
    Label16: TLabel;
    ntLabel27: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    ntLabel36: TLabel;
    ntLabel29: TLabel;
    Label20: TLabel;
    ntLabel21: TLabel;
    Label21: TLabel;
    eName: TEdit;
    ePack: TEdit;
    eType: TEdit;
    eSID: TEdit;
    eNr: TEdit;
    eLock: TComboBox;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Bevel1: TBevel;
    eVPID: TEdit;
    eAPID: TEdit;
    eTPID: TEdit;
    ePPID: TEdit;
    e3PID: TEdit;
    eC07BSDelay: TEdit;
    eC08PCMDelay: TEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    cbNODVB: TCheckBox;
    cbNoShow: TCheckBox;
    cbNoPMT: TCheckBox;
    eExtra: TEdit;
    lblMandatoryTransponderData: TLabel;
    lblMandatoryServiceData: TLabel;
    btnDone: TButton;
    procedure btnDoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShowEditServiceDetails: TfrmShowEditServiceDetails;

implementation

{$R *.dfm}

procedure TfrmShowEditServiceDetails.btnDoneClick(Sender: TObject);
begin
  Close;
end;

end.
