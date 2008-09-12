unit formImportFilesSatcoDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, DB, DBClient, LWBtn, ComCtrls,
  ExtCtrls, LWPanel;

type
  TfrmImportSatcoDXFiles = class(TForm)
    lwpnlBG: TLWPanel;
    GroupBox1: TGroupBox;
    lvSDX: TListView;
    GroupBox3: TGroupBox;
    rbAll: TRadioButton;
    rbNew: TRadioButton;
    rbSame: TRadioButton;
    GroupBox4: TGroupBox;
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
    od: TOpenDialog;
    CheckBox1: TCheckBox;
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
    bOpen: TLWButton;
    bCheckDuplicates: TButton;
    procedure sbtnStatisticsToggleClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
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

end.
