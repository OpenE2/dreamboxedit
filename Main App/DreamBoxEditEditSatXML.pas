unit DreamBoxEditEditSatXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ExtCtrls, Registry, StdCtrls, Menus, Buttons;

type
  TFormEditSatXML = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    ntgbFileName: TGroupBox;
    dgSatXML: TDBGrid;
    Label1: TLabel;
    lFileName: TLabel;
    puSatXML: TPopupMenu;
    InsertTransponder1: TMenuItem;
    DeleteTransponder1: TMenuItem;
    bSave: TButton;
    bCancel: TButton;
    bReload: TButton;
    bMoveUp: TSpeedButton;
    bMoveDown: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lTT: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Insertcopyoftransponder1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InsertTransponder1Click(Sender: TObject);
    procedure DeleteTransponder1Click(Sender: TObject);
    procedure bReloadClick(Sender: TObject);
    procedure bMoveUpClick(Sender: TObject);
    procedure bMoveDownClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Insertcopyoftransponder1Click(Sender: TObject);
  private
    sif: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditSatXML: TFormEditSatXML;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormEditSatXML.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  dgSatXML.Columns[0].Title.Caption := FormMain.lwLngTrns(name,['Pos']);
  dgSatXML.Columns[1].Title.Caption := FormMain.lwLngTrns(name,['Name']);
  dgSatXML.Columns[2].Title.Caption := FormMain.lwLngTrns(name,['Freq']);
  dgSatXML.Columns[3].Title.Caption := FormMain.lwLngTrns(name,['Pol']);
  dgSatXML.Columns[4].Title.Caption := FormMain.lwLngTrns(name,['Symb']);
  dgSatXML.Columns[5].Title.Caption := FormMain.lwLngTrns(name,['FEC']);
  dgSatXML.Columns[6].Title.Caption := FormMain.lwLngTrns(name,['Flags']);

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

  FormEditSatXML.Caption := FormMain.lwLngTrns(name,['Edit: %',lFileName.Caption]);
  sif := FormMain.cdsSatXML.IndexFieldNames;
  FormMain.cdsSatXML.IndexFieldNames := '';
  FormMain.cdsSatXML.First;
  lTT.Caption := IntToStr(FormMain.cdsSatXML.RecordCount);
end;

procedure TFormEditSatXML.FormClose(Sender: TObject;
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

  FormMain.cdsSatXML.IndexFieldNames := sif;
end;

procedure TFormEditSatXML.InsertTransponder1Click(Sender: TObject);
begin
  FormMain.cdsSatXML.Insert;
end;

procedure TFormEditSatXML.Insertcopyoftransponder1Click(Sender: TObject);
var
  Pos,Freq,Pol,Symb,FEC: Integer;
  Name,Flags: String;
begin
  Name := FormMain.cdsSatXML.FieldByName('Name').AsString;
  Pos := FormMain.cdsSatXML.FieldByName('Pos').AsInteger;
  Freq := FormMain.cdsSatXML.FieldByName('Freq').AsInteger;
  Pol := FormMain.cdsSatXML.FieldByName('Pol').AsInteger;
  Symb := FormMain.cdsSatXML.FieldByName('Symb').AsInteger;
  FEC := FormMain.cdsSatXML.FieldByName('FEC').AsInteger;
  Flags := FormMain.cdsSatXML.FieldByName('Flags').AsString;
  FormMain.cdsSatXML.Insert;
  FormMain.cdsSatXML.FieldByName('Name').AsString := Name;
  FormMain.cdsSatXML.FieldByName('Pos').AsInteger := Pos;
  FormMain.cdsSatXML.FieldByName('Freq').AsInteger := Freq;
  FormMain.cdsSatXML.FieldByName('Pol').AsInteger := Pol;
  FormMain.cdsSatXML.FieldByName('Symb').AsInteger := Symb;
  FormMain.cdsSatXML.FieldByName('FEC').AsInteger := FEC;
  FormMain.cdsSatXML.FieldByName('Flags').AsString := Flags;
  FormMain.cdsSatXML.Post;
end;

procedure TFormEditSatXML.DeleteTransponder1Click(Sender: TObject);
begin
  if FormMain.ConfirmDelete
  then
    if MessageDlg(FormMain.lwLngTrns(name,['Are you sure you want to delete this transponder?']),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then Abort
    else FormMain.cdsSatXML.Delete;
end;

procedure TFormEditSatXML.bReloadClick(Sender: TObject);
begin
  FormMain.cdsSatXML.IndexFieldNames := sif;
  FormMain.ReadSatXML(lFileName.Caption);
  sif := FormMain.cdsSatXML.IndexFieldNames;
  FormMain.cdsSatXML.IndexFieldNames := '';
  FormMain.cdsSatXML.First;
end;

procedure TFormEditSatXML.bMoveUpClick(Sender: TObject);
var
  i: Integer;
  sl: TStringList;
begin
  if FormMain.cdsSatXML.RecNo <= 1
  then exit;

  sl := TStringList.Create;

  for i := 0 to FormMain.cdsSatXML.FieldCount - 1 do
    sl.Add(FormMain.cdsSatXML.FieldByName(FormMain.cdsSatXML.Fields[i].FieldName).AsString);
  FormMain.cdsSatXML.Prior;
  FormMain.cdsSatXML.Insert;
  for i := 0 to FormMain.cdsSatXML.FieldCount - 1 do
    FormMain.cdsSatXML.FieldByName(FormMain.cdsSatXML.Fields[i].FieldName).AsString := sl[i];
  FormMain.cdsSatXML.Post;

  sl.Free;

  FormMain.cdsSatXML.MoveBy(2);
  if FormMain.cdsSatXML.RecNo = FormMain.cdsSatXML.RecordCount
  then begin;
    FormMain.cdsSatXML.Delete;
    FormMain.cdsSatXML.MoveBy(-1);
  end
  else begin;
    FormMain.cdsSatXML.Delete;
    FormMain.cdsSatXML.MoveBy(-2);
  end;
end;

procedure TFormEditSatXML.bMoveDownClick(Sender: TObject);
var
  i: Integer;
  sl: TStringList;
begin
  if FormMain.cdsSatXML.RecNo = FormMain.cdsSatXML.RecordCount
  then exit;

  sl := TStringList.Create;

  for i := 0 to FormMain.cdsSatXML.FieldCount - 1 do
    sl.Add(FormMain.cdsSatXML.FieldByName(FormMain.cdsSatXML.Fields[i].FieldName).AsString);
  FormMain.cdsSatXML.MoveBy(2);
  if not FormMain.cdsSatXML.Eof
  then FormMain.cdsSatXML.Insert
  else FormMain.cdsSatXML.Append;
  for i := 0 to FormMain.cdsSatXML.FieldCount - 1 do
    FormMain.cdsSatXML.FieldByName(FormMain.cdsSatXML.Fields[i].FieldName).AsString := sl[i];
  FormMain.cdsSatXML.Post;

  sl.Free;

  FormMain.cdsSatXML.MoveBy(-2);
  FormMain.cdsSatXML.Delete;
  FormMain.cdsSatXML.MoveBy(1);
end;

procedure TFormEditSatXML.bSaveClick(Sender: TObject);
var
  seq: Integer;
begin
  Screen.Cursor := crHourGlass;
  dgSatXML.DataSource.Enabled := False;
  seq := 0;
  FormMain.cdsSatXML.First;
  while not FormMain.cdsSatXML.Eof do begin;
    FormMain.cdsSatXML.Edit;
    FormMain.cdsSatXML.FieldByName('SeqNr').AsInteger := seq;
    FormMain.cdsSatXML.Post;
    inc(seq);

    FormMain.cdsSatXML.Next;
  end;
  FormMain.cdsSatXML.IndexFieldNames := 'Pos;SeqNr';
  FormMain.WriteSatXML(lFileName.Caption);
  dgSatXML.DataSource.Enabled := True;
  Screen.Cursor := crDefault;

  ModalResult := mrOK;
end;

procedure TFormEditSatXML.bCancelClick(Sender: TObject);
begin
  FormMain.cdsSatXML.Cancel;
end;

procedure TFormEditSatXML.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
