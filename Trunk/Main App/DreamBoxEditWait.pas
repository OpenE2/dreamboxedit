unit DreamBoxEditWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, LWPanel, LWProgressBar, Registry;

type
  TFormWait = class(TForm)
    LWPanel1: TLWPanel;
    Label1: TLabel;
    PB: TLWProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWait: TFormWait;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormWait.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormWait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FormMain.ShowWaitCloseAllowed
  then Action := caNone;
end;

end.
