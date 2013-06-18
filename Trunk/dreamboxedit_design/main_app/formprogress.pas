unit formprogress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, LWPanel, JvExControls, JvAnimatedImage,
  JvGIFCtrl;

type
  TfrmProgress = class(TForm)
    lwpnlBG: TLWPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgress: TfrmProgress;

implementation

{$R *.dfm}

procedure TfrmProgress.FormActivate(Sender: TObject);
var
  tickCount: Cardinal;
begin
  JvGIFAnimator1.Animate := True;

  tickCount := GetTickCount + 2000;

  while (GetTickCount <= tickCount) do
  begin
    Application.ProcessMessages;
  end;
end;

end.
