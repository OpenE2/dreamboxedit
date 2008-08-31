unit DreamBoxAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, Registry, LWBtn, ShellApi;

type
  TFormAbout = class(TForm)
    PanelMain: TPanel;
    Image2: TImage;
    Bevel1: TBevel;
    _Label6: TLabel;
    _lVersion: TLabel;
    _Label7: TLabel;
    _Label8: TLabel;
    _Label9: TLabel;
    Bevel2: TBevel;
    Image1: TImage;
    _bOK: TLWButton;
    _lEmail: TLabel;
    LabelContact: TLabel;
    Bevel3: TBevel;
    _Label1: TLabel;
    _Label4: TLabel;
    _bCheckNewVersion: TLWButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure _lEmailClick(Sender: TObject);
    procedure _lEmailMouseEnter(Sender: TObject);
    procedure _lEmailMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GotoWebsite(Sender: TObject);
    procedure GotoWebsiteMouseEnter(Sender: TObject);
    procedure GotoWebsiteMouseLeave(Sender: TObject);
    procedure _bCheckNewVersionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

uses DreamBoxMain;

{$R *.DFM}

procedure TFormAbout.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['About']);
  
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
  _bCheckNewVersion.Caption := FormMain.fmCheckfornewversion.Caption;
end;

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormAbout._lEmailClick(Sender: TObject);
var
  s: String;
begin
  s := 'mailto:DreamBox@HappyLlama.com?subject=DreamBoxEdit';
  ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
end;

procedure TFormAbout._lEmailMouseEnter(Sender: TObject);
begin
  _lEmail.Font.Color := clRed;
end;

procedure TFormAbout._lEmailMouseLeave(Sender: TObject);
begin
  _lEmail.Font.Color := clBlack;
end;

procedure TFormAbout.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormAbout.GotoWebsite(Sender: TObject);
var
  s: String;
  st: Integer;
begin
  s := (Sender as tLabel).Hint;
  if s = ''
  then exit;

  st := ShellExecute(0,'open',PChar(s),NIL,NIL,SW_SHOWNORMAL);
  if st <= 32
  then begin;
    showmessage(FormMain.lwLngTrns(name,['Returncode % from opening "%"',
                                    IntToStr(st),s]));
    FormMain.log('e',FormMain.lwLngTrns(name,['Returncode % from opening "%"',
                                         IntToStr(st),s]));
  end;
end;

procedure TFormAbout.GotoWebsiteMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clRed;
end;

procedure TFormAbout.GotoWebsiteMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clBlack;
end;

procedure TFormAbout._bCheckNewVersionClick(Sender: TObject);
begin
  FormMain.fmCheckfornewversionClick(Self);
end;

end.
