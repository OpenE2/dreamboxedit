unit DreamBoxEditAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LWPanel, ExtCtrls, uHelpers, ShellApi, Math;

type
  TFormAbout = class(TForm)
    Panel4: TPanel;
    pnlLeft: TPanel;
    imgLogo: TImage;
    lwpnlContent: TLWPanel;
    _lblLlamaWare: TLabel;
    _lblTM: TLabel;
    lblDevelopedBy: TLabel;
    lwpnlTop: TLWPanel;
    _lblAppName: TLabel;
    _lblVersion: TLabel;
    pnlTop: TPanel;
    lblAuthors: TLabel;
    lblHosted: TLabel;
    Panel1: TPanel;
    imgDreambox: TImage;
    lblTranslators: TLabel;
    lblWebsite: TLabel;
    btnDone: TButton;
    lblLogoBy: TLabel;
    _lblLitemotiv: TLabel;
    lblAdapted: TLabel;
    procedure lblWebsiteClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormAbout.lblWebsiteClick(Sender: TObject);
var
  st: Integer;
  s: String;
begin
  s := 'http://dreamboxedit.digsat.net/index.html';
  st := ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
  if st <= 32
  then begin;
    showmessage(FormMain.lwLngTrns(name,['Returncode % from opening "%"',
                                   IntToStr(st),s]));
    FormMain.log('e',FormMain.lwLngTrns(name,['Returncode % from opening "%"',
                 IntToStr(st),s]));
  end;
end;

procedure TFormAbout.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAbout.FormActivate(Sender: TObject);
begin
  _lblVersion.Caption := GetAppVersion;
end;

procedure TFormAbout.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  lblAuthors.Caption := lblAuthors.Caption + ': HappyLlama, Tammie78N, Talius, Henksat, Jazzydane';
  lblHosted.Caption := lblHosted.Caption + ': Digsat.net';
  _lblLlamaWare.Left := lblAdapted.Left +
                        min(280,lblAdapted.Width) +
                        5;
  _lblTM.Left := _lblLlamaWare.Left + 67;
  _lblLitemotiv.Left := lblLogoBy.Left +
                        min(280,lblLogoBy.Width) +
                        5;
end;

end.
