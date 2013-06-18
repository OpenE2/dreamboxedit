unit formCompareSets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, LWPanel;

type
  TfrmCompareSets = class(TForm)
    lwpnlBG: TLWPanel;
    gbxFileInfo: TGroupBox;
    lblServicesFileCompared: TLabel;
    lblActiveFilesetDir: TLabel;
    lCompareDir: TLabel;
    lActiveDir: TLabel;
    gbxDifferences: TGroupBox;
    lvDiff: TListView;
    lblOptionalBouquetName: TLabel;
    eNewBouquetName: TEdit;
    bImport: TButton;
    chkSelectDeselect: TCheckBox;
    bvlRule: TBevel;
    btnDone: TButton;
    lwpnlInterpret: TLWPanel;
    gbxInterpret: TGroupBox;
    sbtnInterpretToggle: TSpeedButton;
    gbxInterpresInner: TGroupBox;
    lExplanation: TLabel;
    sbtnToggleUseSpacebar: TSpeedButton;
    lwpnlToggleUseSpaceBar: TLWPanel;
    gbxUseSpacebar: TGroupBox;
    gbxUseSpacebarInner: TGroupBox;
    lblCheckedBlack: TLabel;
    lblCheckedGreen: TLabel;
    lblCheckedBliue: TLabel;
    lblCheckedRed: TLabel;
    procedure btnDoneClick(Sender: TObject);
    procedure sbtnToggleUseSpacebarClick(Sender: TObject);
    procedure sbtnInterpretToggleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompareSets: TfrmCompareSets;

implementation

{$R *.dfm}

procedure TfrmCompareSets.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCompareSets.sbtnToggleUseSpacebarClick(Sender: TObject);
begin
  if lwpnlToggleUseSpaceBar.Visible = True then
    lwpnlToggleUseSpaceBar.Visible := False
  else
    lwpnlToggleUseSpaceBar.Visible := True;
end;

procedure TfrmCompareSets.sbtnInterpretToggleClick(Sender: TObject);
begin
    if lwpnlInterpret.Visible = True then
      lwpnlInterpret.Visible := False
    else
      lwpnlInterpret.Visible := True;
end;

end.
