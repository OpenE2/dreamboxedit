unit DreamBoxEditSelDir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, Grids, DirOutln, StdCtrls,
  ExtCtrls, Registry, FileCtrl;

type
  TFormSelDir = class(TForm)
    Panel1: TPanel;
    _lDir: TLabel;
    Label1: TLabel;
    eDir: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label2: TLabel;
    dlb: TDirectoryListBox;
    flb: TFileListBox;
    dcb: TDriveComboBox;
    Panel4: TPanel;
    bOK: TButton;
    bCancel: TButton;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure dlbChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelDir: TFormSelDir;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormSelDir.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormSelDir.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Select Directory']);
  
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

  _lDir.Left := 8;
  _lDir.Width := FormSelDir.Width - 24;
  eDir.Left := 8;
  eDir.Width := FormSelDir.Width - 24;
  eDir.Text := _lDir.Caption;
  if tag = 0
  then begin;
    _lDir.Visible := True;
    eDir.Visible := False;
  end
  else begin;
    _lDir.Visible := False;
    eDir.Visible := True;
  end;
  if DirectoryExists(_lDir.Caption)
  then begin;
    dcb.Drive := _lDir.Caption[1];
    dlb.Directory := _lDir.Caption;
  end;
end;

procedure TFormSelDir.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormSelDir.bOKClick(Sender: TObject);
begin
  if tag = 1
  then begin;
    if not DirectoryExists(eDir.Text)
    then begin;
      if MessageDlg(FormMain.lwLngTrns(name,['The specified directory does ' +
                                             'not exist. Create it?']),
                    mtConfirmation,[mbYes,mbNo],0) <> mrYes
      then exit;
      if not ForceDirectories(eDir.Text)
      then begin;
        MessageDlg(FormMain.lwLngTrns(name,['Unable to create directory. ' +
                                            'Check the name.']),
                   mtError,[mbOK],0);
        exit;
      end;
    end;
    _lDir.Caption := eDir.Text;
  end;
  ModalResult := mrOK;
end;

procedure TFormSelDir.dlbChange(Sender: TObject);
begin
  _lDir.Caption := dlb.Directory;
  eDir.Text := dlb.Directory;
end;

end.
