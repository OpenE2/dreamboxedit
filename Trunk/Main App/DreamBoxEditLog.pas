unit DreamBoxEditLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry, ComCtrls, Grids, DBGrids, DB,
  dbcgrids;

type
  TFormLog = class(TForm)
    Panel1: TPanel;
    bBack: TButton;
    bSave: TButton;
    StatusBar1: TStatusBar;
    sd: TSaveDialog;
    Label1: TLabel;
    dsLog: TDataSource;
    dgLog: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dgLogDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    res: integer;
  public
    { Public declarations }
  end;

var
  FormLog: TFormLog;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormLog.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormLog.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Show program log']);
  
  dgLog.Columns[0].Title.Caption := FormMain.lwLngTrns(name,['Severity']);
  dgLog.Columns[1].Title.Caption := FormMain.lwLngTrns(name,['Time']);
  dgLog.Columns[2].Title.Caption := FormMain.lwLngTrns(name,['Text']);

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

  dgLog.Columns[2].Width := 1000;
end;

procedure TFormLog.bSaveClick(Sender: TObject);
var
  tf: TextFile;
  s: String;
begin
  dsLog.Enabled := False;
  sd.FileName := FormMain.Dir + '\DreamBoxEdit Logging.txt';
  if sd.Execute
  then begin;
    FormMain.log('i',FormMain.lwLngTrns(name,['Log file saved in %',sd.FileName]));
    AssignFile(tf,sd.FileName);
    Rewrite(tf);
    FormMain.cdsLog.First;
    while not FormMain.cdsLog.Eof do begin;
      s := Format('%-8s %-19s %-s',[FormMain.cdsLog.FieldByName('Severity').AsString,
                                    FormMain.cdsLog.FieldByName('Time').AsString,
                                    FormMain.cdsLog.FieldByName('Text').AsString]);
      WriteLn(tf,s);
      FormMain.cdsLog.Next;
    end;
    CloseFile(tf);

    MessageDlg(FormMain.lwLngTrns(name,['Log file saved in %',sd.FileName]),
               mtInformation,[mbOK],0);
  end;
  dsLog.Enabled := true;
end;

procedure TFormLog.Panel1Resize(Sender: TObject);
begin
  dgLog.Columns[2].Width :=  Panel1.Width - res;
  if dgLog.Columns[2].Width < 1000
  then dgLog.Columns[2].Width := 1000;
end;

procedure TFormLog.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  res := Panel1.Width - dgLog.Columns[2].Width;
end;

procedure TFormLog.dgLogDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FormMain.cdsLog.FieldByName('Severity').AsString = 'Info'
  then begin;
    dgLog.Canvas.Font.Color := clBlack;
    if gdSelected in State
    then dgLog.Canvas.Brush.Color := clGreen
    else dgLog.Canvas.Brush.Color := $00E1FFE1;
  end
  else
    if FormMain.cdsLog.FieldByName('Severity').AsString = 'Warning'
    then begin
      dgLog.Canvas.Font.Color := clBlack;
      if gdSelected in State
      then dgLog.Canvas.Brush.Color := $004080FF
      else dgLog.Canvas.Brush.Color := $00B1D8FE;
    end
    else
      if FormMain.cdsLog.FieldByName('Severity').AsString = 'Error'
      then begin
        dgLog.Canvas.Font.Color := clBlack;
        if gdSelected in State
        then dgLog.Canvas.Brush.Color := clRed
        else dgLog.Canvas.Brush.Color := $004A4AFF;
      end
      else begin;
        dgLog.Canvas.Font.Color := clBlack;
        if gdSelected in State
        then dgLog.Canvas.Brush.Color := clFuchsia
        else dgLog.Canvas.Brush.Color := clFuchsia;
      end;

  if gdSelected in State
  then begin;
    dgLog.Canvas.Font.Color := clWhite;
  end;
  dgLog.DefaultDrawColumnCell(rect,Datacol,Column,State);
end;

end.
