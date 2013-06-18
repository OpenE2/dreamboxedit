unit DreamBoxEditNewVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry, Spin;

type
  TFormNewVersion = class(TForm)
    Panel1: TPanel;
    bGotoDL: TButton;
    bBack: TButton;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    _lCurVersion: TLabel;
    _lNewVersion: TLabel;
    _Label4: TLabel;
    GroupBox2: TGroupBox;
    _SpinEdit1: TSpinEdit;
    Label4: TLabel;
    bSkipVersion: TButton;
    bReset: TButton;
    _lSkipVersionNr: TLabel;
    _lLastCheck: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bSkipVersionClick(Sender: TObject);
    procedure bResetClick(Sender: TObject);
    procedure _SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNewVersion: TFormNewVersion;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormNewVersion.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['DreamBoxEdit New version info']);
  
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
end;

procedure TFormNewVersion.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TFormNewVersion.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormNewVersion.bSkipVersionClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteInteger('Skip new version',FormNewVersion.Tag);
  Reg.WriteString('Skip new version string',_lNewVersion.Caption);
  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormNewVersion.bResetClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteInteger('Skip new version',0);
  Reg.WriteString('Skip new version string','');
  Reg.CloseKey;
  Reg.Destroy;
  _lSkipVersionNr.Caption := '';
  bReset.Enabled := False;
end;

procedure TFormNewVersion._SpinEdit1Change(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);
  Reg.WriteInteger('AutoCheckDays',_SpinEdit1.Value);
  FormMain.AutoCheckDays := _SpinEdit1.Value;
  Reg.CloseKey;
  Reg.Destroy;
end;

end.
