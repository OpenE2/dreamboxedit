unit formlog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, ExtCtrls, StdCtrls, LWPanel, JvDialogs;

type
  TfrmLog = class(TForm)
    lwpnlBG: TLWPanel;
    btnDone: TButton;
    gbxSelectYourDreambox: TGroupBox;
    imgLocationLogo: TImage;
    dgLog: TDBGrid;
    SpeedButton1: TSpeedButton;
    JvSaveDialog1: TJvSaveDialog;
    procedure btnDoneClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLog: TfrmLog;

implementation

{$R *.dfm}

procedure TfrmLog.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLog.SpeedButton1Click(Sender: TObject);
begin
  if JvSaveDialog1.Execute = True then
  begin

  end;
end;

end.
