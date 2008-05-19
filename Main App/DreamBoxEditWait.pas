unit DreamBoxEditWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, LWPanel, LWProgressBar, Registry;

type
  TFormWait = class(TForm)
    LWPanel1: TLWPanel;
    lblBg: TLabel;
    PB: TLWProgressBar;
    LWPanel2: TLWPanel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TFormWait.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Progress']);

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
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
  if left + width > screen.Width
  then left := screen.width - width;
  if left < 0
  then left := 0;
  if top + height > screen.Height
  then top := screen.Height - height;
  if top < 0
  then top := 0; 
end;

procedure TFormWait.FormHide(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Key := Name+'.Top';
  Reg.WriteInteger(key,Top);
  Key := Name+'.Left';
  Reg.WriteInteger(key,Left);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormWait.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
