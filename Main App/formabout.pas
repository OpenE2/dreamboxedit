unit formabout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LWPanel, ExtCtrls, uHelpers;

type
  TfrmAbout = class(TForm)
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
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.lblWebsiteClick(Sender: TObject);
begin
  // Go to the website, should be configurable without need to recompile...

end;

procedure TfrmAbout.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.FormActivate(Sender: TObject);
begin
  lblVersion.Caption := GetAppVersion;
end;

end.
