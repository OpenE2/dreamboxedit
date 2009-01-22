unit formEditTransponder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, LWPanel;

type
  TfrmEditTransponder = class(TForm)
    lwpnlBG: TLWPanel;
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
    Label2: TLabel;
    ntLabel3: TLabel;
    ePos: TComboBox;
    eTSID: TEdit;
    eFEC: TComboBox;
    eSymb: TEdit;
    ePol: TComboBox;
    eNamespace: TEdit;
    bCalculate: TButton;
    eNID: TEdit;
    eFreq: TEdit;
    eTrExtra: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    GroupBox1: TGroupBox;
    _lCntServices: TLabel;
    lvTransp: TListView;
    btnApply: TButton;
    Panel1: TPanel;
    procedure btnOkClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditTransponder: TfrmEditTransponder;

implementation

{$R *.dfm}

procedure TfrmEditTransponder.btnOkClick(Sender: TObject);
begin
  // TODO: Save changes and close.
end;

procedure TfrmEditTransponder.btnApplyClick(Sender: TObject);
begin
  // TODO: Save changes.
end;

end.
