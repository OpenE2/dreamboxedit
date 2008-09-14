unit DreamBoxEditAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LWPanel, ExtCtrls, uHelpers, ShellApi;

type
  TFormAbout = class(TForm)
    Panel4: TPanel;
    pnlLeft: TPanel;
    imgLogo: TImage;
    lwpnlContent: TLWPanel;
    Label1: TLabel;
    lblDevelopementTeam: TLabel;
    Label4: TLabel;
    lblDevelopedBy: TLabel;
    lblAdapted: TLabel;
    lwpnlTop: TLWPanel;
    lblAppName: TLabel;
    lblVersion: TLabel;
    pnlTop: TPanel;
    lblAuthors: TLabel;
    lblHosted: TLabel;
    Panel1: TPanel;
    imgDreambox: TImage;
    lblTranslators: TLabel;
    lblWebsite: TLabel;
    btnDone: TButton;
    procedure lblWebsiteClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  lblVersion.Caption := GetAppVersion;
end;

end.
