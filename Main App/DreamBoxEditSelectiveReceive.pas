unit DreamBoxEditSelectiveReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Registry;

type
  TFormSelectiveReceive = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cbServices: TCheckBox;
    cbBouquets: TCheckBox;
    cbUserBouquetsTV: TCheckBox;
    cbUserBouquetsRadio: TCheckBox;
    cbSatellitesXML: TCheckBox;
    bOK: TButton;
    bAll: TButton;
    bAbort: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelectiveReceive: TFormSelectiveReceive;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormSelectiveReceive.FormClose(Sender: TObject;
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

procedure TFormSelectiveReceive.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Select the files to receive from the Dreambox']);

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

  if Reg.ValueExists('FTP Receive Services')
  then cbServices.Checked := Reg.ReadBool('FTP Receive Services')
  else begin;
    cbServices.Checked := False;
    Reg.WriteBool('FTP Receive Services',cbServices.Checked);
  end;

  if Reg.ValueExists('FTP Receive Bouquets')
  then cbBouquets.Checked := Reg.ReadBool('FTP Receive Bouquets')
  else begin;
    cbBouquets.Checked := False;
    Reg.WriteBool('FTP Receive Bouquets',cbBouquets.Checked);
  end;

  if Reg.ValueExists('FTP Receive User Bouquets TV')
  then cbUserBouquetsTV.Checked := Reg.ReadBool('FTP Receive User Bouquets TV')
  else begin;
    cbUserBouquetsTV.Checked := False;
    Reg.WriteBool('FTP Receive User Bouquets TV',cbUserBouquetsTV.Checked);
  end;

  if Reg.ValueExists('FTP Receive User Bouquets Radio')
  then cbUserBouquetsRadio.Checked := Reg.ReadBool('FTP Receive User Bouquets Radio')
  else begin;
    cbUserBouquetsRadio.Checked := False;
    Reg.WriteBool('FTP Receive User Bouquets Radio',cbUserBouquetsRadio.Checked);
  end;

  if Reg.ValueExists('FTP Receive satellitesXML')
  then cbSatellitesXML.Checked := Reg.ReadBool('FTP Receive satellitesXML')
  else begin;
    cbSatellitesXML.Checked := False;
    Reg.WriteBool('FTP Receive satellitesXML',cbSatellitesXML.Checked);
  end;

  Reg.CloseKey;
  Reg.Destroy;
end;
     
procedure TFormSelectiveReceive.bOKClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  if (not cbServices.Checked) and
     (not cbBouquets.Checked) and
     (not cbUserBouquetsTV.Checked) and
     (not cbUserBouquetsRadio.Checked) and
     (not cbSatellitesXML.Checked) 
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['No selection for the files to receive has been made.']),
               mtError,[mbOK],0);
  end
  else ModalResult := mrOK;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);

  Reg.WriteBool('FTP Receive Services',cbServices.Checked);
  Reg.WriteBool('FTP Receive Bouquets',cbBouquets.Checked);
  Reg.WriteBool('FTP Receive User Bouquets TV',cbUserBouquetsTV.Checked);
  Reg.WriteBool('FTP Receive User Bouquets Radio',cbUserBouquetsRadio.Checked);
  Reg.WriteBool('FTP Receive satellitesXML',cbSatellitesXML.Checked);

  Reg.CloseKey;
  Reg.Destroy;
end;

procedure TFormSelectiveReceive.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
