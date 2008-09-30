unit DreamBoxEditSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, LWPanel, uHelpers, Math, LWLanguage;

type
  TFormSplash = class(TForm)
    lwpnlTop: TLWPanel;
    _Label2: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    LWPanel1: TLWPanel;
    Image1: TImage;
    lAction: TLabel;
    _lblLlamaWare: TLabel;
    _lblTM: TLabel;
    _lVersion: TLabel;
    Label6: TLabel;
    lblAdapted: TLabel;
    lblAuthors: TLabel;
    lblHosted: TLabel;
    lblLogoBy: TLabel;
    _lblLitemotiv: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormSplash.FormActivate(Sender: TObject);
var
  tickCount: Cardinal;
begin
  _lVersion.Caption := 'version ' + GetAppVersion;

  tickCount := GetTickCount + 2000;

  while (GetTickCount <= tickCount) do
  begin
    Application.ProcessMessages;
  end;
end;

procedure TFormSplash.FormShow(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  lblAuthors.Caption := lblAuthors.Caption + ': HappyLlama, Tammie78N, Talius, Henksat, Jazzydane';
  lblHosted.Caption := lblHosted.Caption + ': Digsat.net';
  _lblLlamaWare.Left := lblAdapted.Left +
                        min(270,lblAdapted.Width) +
                        5;
  _lblTM.Left := _lblLlamaWare.Left + 67;
  _lblLitemotiv.Left := lblLogoBy.Left +
                        min(270,lblLogoBy.Width) +
                        5;
end;

end.
