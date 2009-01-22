unit DreamBoxEditAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry, ComCtrls;

type
  TFormAdd = class(TForm)
    Panel1: TPanel;
    lbBouquets: TListBox;
    Label1: TLabel;
    bCancel: TButton;
    bOK: TButton;
    eBouquet: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbBouquetsClick(Sender: TObject);
  private
    { Private declarations }
    NrList: TStringList;
  public
    { Public declarations }
  end;

var
  FormAdd: TFormAdd;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormAdd.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
  i: Integer;
  pListData: ^TListData;
begin
  Caption := FormMain.lwLngTrns(name,['Add to bouquet']);
  
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

  NrList.Clear;
  lbBouquets.Items.Clear;
  for i := 0 to FormMain.tv.Items.Count - 1
  do begin;
    if (FormMain.tv.Items.Item[i].Level = 1) and
       (FormMain.tv.Items.Item[i].Parent.Text[1] = 'P')
    then begin;
      lbBouquets.Items.Add(FormMain.tv.Items.Item[i].Text);
      pListData := FormMain.tv.Items.Item[i].Data;
      NrList.Add(IntToStr(pListData.Number));
      if (eBouquet.Text <> '') and
         (eBouquet.Text = FormMain.tv.Items.Item[i].Text)
      then begin;
        lbBouquets.ItemIndex := lbBouquets.Items.Count - 1;
        eBouquet.Text := '';
      end;
    end;
  end;
end;

procedure TFormAdd.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormAdd.bOKClick(Sender: TObject);
var
  i: Integer;
  ld: TListData;
  pListData: ^TListData;
  tn: TTreeNode;
begin
  if (eBouquet.Text = '') and
     (lbBouquets.Itemindex < 0)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'No selection made and no new Bouquet name provided!']),
               mtError,[mbOK],0);
    exit;
  end;

  if eBouquet.Text <> ''
  then begin;
    for i := 0 to lbBouquets.Items.Count - 1
    do begin;
      if eBouquet.Text = lbBouquets.Items[i]
      then begin;
        MessageDlg(FormMain.lwLngTrns(name,[
                   'Bouquet % already exists, '+
                   'enter a different name or leave the new name blank ' +
                   'and click on a existing bouquet.',eBouquet.Text]),
                    mtError,[mbOK],0);
        exit;
      end;
    end;

    ld := FormMain.NewBouquet('P');
    new(pListData);
    pListData.FileName := ld.FileName;
    pListData.Number := ld.Number;
    pListData.Locked := False;
    tn := FormMain.tv.Items.AddChildObject(FormMain.tnBQ,eBouquet.Text,pListData);
    FormMain.tnBQ.AlphaSort(True);
    tn.Selected := True;
    tn.MakeVisible;
    bOK.Tag := ld.Number;
  end
  else begin;
    bOK.Tag := StrToInt(NrList[lbBouquets.ItemIndex]);
  end;

  ModalResult := mrOK;
end;

procedure TFormAdd.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
  NrList := TStringList.Create;
end;

procedure TFormAdd.FormDestroy(Sender: TObject);
begin
  NrList.Free;
end;

procedure TFormAdd.lbBouquetsClick(Sender: TObject);
begin
  if lbBouquets.ItemIndex >= 0
  then Ebouquet.Text := '';
end;

end.
