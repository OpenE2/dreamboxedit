unit formNewVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, JvComponentBase, JvBalloonHint, StdCtrls, Spin,
  ExtCtrls, LWPanel;

type
  TfrmNewVersion = class(TForm)
    lwpnlBG: TLWPanel;
    Label1: TLabel;
    lblYourVersion: TLabel;
    _lCurVersion: TLabel;
    lblNewVersion: TLabel;
    _lNewVersion: TLabel;
    lblDot: TLabel;
    bGotoDL: TButton;
    gbxOptions: TGroupBox;
    Label4: TLabel;
    _lSkipVersionNr: TLabel;
    _lLastCheck: TLabel;
    _SpinEdit1: TSpinEdit;
    btnDone: TButton;
    CheckBox1: TCheckBox;
    bReset: TButton;
    gbxChanges: TGroupBox;
    mmChanges: TMemo;
    procedure btnDoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewVersion: TfrmNewVersion;

implementation

{$R *.dfm}

procedure TfrmNewVersion.btnDoneClick(Sender: TObject);
begin
  Close;
end;

end.
