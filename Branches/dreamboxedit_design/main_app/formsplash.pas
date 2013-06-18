unit formsplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, LWPanel, uHelpers;

type
  TfrmSplash = class(TForm)
    lwpnlTop: TLWPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    LWPanel1: TLWPanel;
    Image1: TImage;
    lAction: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lVersion: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.FormActivate(Sender: TObject);
var
  tickCount: Cardinal;
begin
  lVersion.Caption := lVersion.Caption + ' ' + GetAppVersion;

  tickCount := GetTickCount + 2000;

  while (GetTickCount <= tickCount) do
  begin
    Application.ProcessMessages;
  end;
end;

end.
