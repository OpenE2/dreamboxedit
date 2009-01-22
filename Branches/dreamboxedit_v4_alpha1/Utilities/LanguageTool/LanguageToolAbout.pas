unit LanguageToolAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, Registry, LWBtn, ShellApi;

type
  TFormAbout = class(TForm)
    PanelMain: TPanel;
    Image2: TImage;
    Bevel1: TBevel;
    ntLabel1: TLabel;
    ntlVersion: TLabel;
    ntLabel3: TLabel;
    ntLabel4: TLabel;
    ntLabel5: TLabel;
    Bevel2: TBevel;
    Image1: TImage;
    ntbOK: TLWButton;
    ntlEmail: TLabel;
    LabelContact: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ntlEmailClick(Sender: TObject);
    procedure ntlEmailMouseEnter(Sender: TObject);
    procedure ntlEmailMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.DFM}

procedure TFormAbout.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
  Key := Name+'.Top';
  if Reg.ValueExists(key)
  then Top := Reg.ReadInteger(key)
  else Top := 200;
  Key := Name+'.Left';
  if Reg.ValueExists(key)
  then Left := Reg.ReadInteger(key)
  else Left := 300;
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
  Key := Name+'.Top';
  Reg.WriteInteger(key,Top);
  Key := Name+'.Left';
  Reg.WriteInteger(key,Left);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormAbout.ntlEmailClick(Sender: TObject);
var
  s: String;
begin
  s := 'mailto:DreamBox@HappyLlama.com?subject=LanguageTool';
  ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
end;

procedure TFormAbout.ntlEmailMouseEnter(Sender: TObject);
begin
  ntlEmail.Font.Color := clRed;
end;

procedure TFormAbout.ntlEmailMouseLeave(Sender: TObject);
begin
  ntlEmail.Font.Color := clBlack;
end;

end.
