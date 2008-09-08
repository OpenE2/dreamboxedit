unit DreamBoxEditCompareSets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Registry, DBClient;

type
  TFormCompareSet = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    lvDiff: TListView;
    bCancel: TButton;
    bUncheckAll: TButton;
    bCheckAll: TButton;
    GroupBox3: TGroupBox;
    lExplanation: TLabel;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    lCompareDir: TLabel;
    lActiveDir: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bImport: TButton;
    Label4: TLabel;
    Label5: TLabel;
    eNewBouquetName: TEdit;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bUncheckAllClick(Sender: TObject);
    procedure bCheckAllClick(Sender: TObject);
    procedure lvDiffDblClick(Sender: TObject);
    procedure lvDiffCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvDiffKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvDiffColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvDiffCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure bImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cdsA,cdsC: TClientDataset;
    lvDiffColumnToSort: Integer;
  public
    { Public declarations }
  end;

var
  FormCompareSet: TFormCompareSet;

implementation

uses DreamBoxMain, DreamBoxEditWait;

{$R *.dfm}

procedure TFormCompareSet.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
  item: TListItem;
  p: Integer;
  servsif: String;
  servflt: Boolean;
begin
  Caption := FormMain.lwLngTrns(name,['Compare active set with other set']);

  lvDiff.Columns[0].Caption := FormMain.lwLngTrns(name,['Servicename']);
  lvDiff.Columns[1].Caption := FormMain.lwLngTrns(name,['Package']);
  lvDiff.Columns[2].Caption := FormMain.lwLngTrns(name,['Type']);
  lvDiff.Columns[3].Caption := FormMain.lwLngTrns(name,['Satpos']);
  lvDiff.Columns[4].Caption := FormMain.lwLngTrns(name,['Frequency']);
  lvDiff.Columns[5].Caption := FormMain.lwLngTrns(name,['Pol']);
  lvDiff.Columns[6].Caption := FormMain.lwLngTrns(name,['Symbolrate']);
  lvDiff.Columns[7].Caption := FormMain.lwLngTrns(name,['FEC']);
  lvDiff.Columns[8].Caption := FormMain.lwLngTrns(name,['SID']);
  lvDiff.Columns[9].Caption := FormMain.lwLngTrns(name,['TSID']);
  lvDiff.Columns[10].Caption := FormMain.lwLngTrns(name,['NID']);
  lvDiff.Columns[11].Caption := FormMain.lwLngTrns(name,['Namespace']);
  lvDiff.Columns[12].Caption := FormMain.lwLngTrns(name,['Action']);
  lvDiff.Columns[13].Caption := FormMain.lwLngTrns(name,['Old Servicename / Package']);

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

  cdsA := FormMain.cdsSERV;
  cdsC := FormMain.cdsServComp;

  servsif := cdsA.IndexFieldNames;
  cdsA.IndexFieldNames := cdsC.IndexFieldNames;
  servflt := cdsA.Filtered;
  cdsA.Filtered := False;

  screen.cursor := crHourglass;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := cdsC.RecordCount + cdsA.RecordCount;
  FormWait.pb.Position := 0;
  FormWait.Show;
  application.ProcessMessages;
  p := 0;

  lvDiff.Items.BeginUpdate;
  lvDiff.Clear;
  lvDiff.Items.EndUpdate;
  lvDiff.Items.BeginUpdate;

  cdsC.First;
  while not cdsC.Eof do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    if not cdsA.FindKey([cdsC.FieldByName('servSID').AsString,
                         cdsC.FieldByName('servUniq').AsString,
                         cdsC.FieldByName('servTSID').AsString,
                         cdsC.FieldByName('servNID').AsString,
                         cdsC.FieldByName('servType').AsString])
    then begin;
      item := lvDiff.Items.Add;
      item.Checked := True;
      item.Caption := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
      item.SubItems.Add(FormMain.CleanText(cdsC.FieldByName('servPackage').AsString));
      item.SubItems.Add(FormMain.TrnsServType(cdsC.FieldByName('servType').AsInteger));
      if cdsC.FieldByName('servSTC').AsString = 's'
      then item.SubItems.Add(Format('%.1n',[StrToInt(cdsC.FieldByName('servPos').AsString)/10]))
      else
        if cdsC.FieldByName('servSTC').AsString = 't'
        then item.SubItems.Add('Terrestrial')
        else item.SubItems.Add('Cable');
      item.SubItems.Add(cdsC.FieldByName('servFreq').AsString);
      item.SubItems.Add(cdsC.FieldByName('servPol').AsString);
      item.SubItems.Add(cdsC.FieldByName('servSymb').AsString);
      item.SubItems.Add(cdsC.FieldByName('servFEC').AsString);
      item.SubItems.Add(cdsC.FieldByName('servSID').AsString);
      item.SubItems.Add(cdsC.FieldByName('servTSID').AsString);
      item.SubItems.Add(cdsC.FieldByName('servNID').AsString);
      item.SubItems.Add(cdsC.FieldByName('servUniq').AsString);
      item.SubItems.Add('Add');
      item.SubItems.Add('');
      item.SubItems.Add(cdsC.FieldByName('servType').AsString);
    end
    else begin;
      if (FormMain.CleanText(cdsC.FieldByName('servName').AsString) <>
          FormMain.CleanText(cdsA.FieldByName('servName').AsString)) or
         (FormMain.CleanText(cdsC.FieldByName('servPackage').AsString) <>
          FormMain.CleanText(cdsA.FieldByName('servPackage').AsString))
      then begin;
        item := lvDiff.Items.Add;
        item.Checked := True;
        item.Caption := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
        item.SubItems.Add(FormMain.CleanText(cdsC.FieldByName('servPackage').AsString));
        item.SubItems.Add(FormMain.TrnsServType(cdsC.FieldByName('servType').AsInteger));
        if cdsC.FieldByName('servSTC').AsString = 's'
        then item.SubItems.Add(Format('%.1n',[StrToInt(cdsC.FieldByName('servPos').AsString)/10]))
        else
          if cdsC.FieldByName('servSTC').AsString = 't'
          then item.SubItems.Add('Terrestrial')
          else item.SubItems.Add('Cable');
        item.SubItems.Add(cdsC.FieldByName('servFreq').AsString);
        item.SubItems.Add(cdsC.FieldByName('servPol').AsString);
        item.SubItems.Add(cdsC.FieldByName('servSymb').AsString);
        item.SubItems.Add(cdsC.FieldByName('servFEC').AsString);
        item.SubItems.Add(cdsC.FieldByName('servSID').AsString);
        item.SubItems.Add(cdsC.FieldByName('servTSID').AsString);
        item.SubItems.Add(cdsC.FieldByName('servNID').AsString);
        item.SubItems.Add(cdsC.FieldByName('servUniq').AsString);
        item.SubItems.Add('Update');
        item.SubItems.Add(FormMain.CleanText(cdsA.FieldByName('servName').AsString) + '/' +
                          FormMain.CleanText(cdsA.FieldByName('servPackage').AsString));
        item.SubItems.Add(cdsC.FieldByName('servType').AsString);
      end;
    end;
    cdsC.Next;
  end;

  cdsA.First;
  while not cdsA.Eof do begin;
    inc(p);
    if p mod 25 = 0
    then FormWait.pb.Position := p;

    if not cdsC.FindKey([cdsA.FieldByName('servSID').AsString,
                         cdsA.FieldByName('servUniq').AsString,
                         cdsA.FieldByName('servTSID').AsString,
                         cdsA.FieldByName('servNID').AsString,
                         cdsA.FieldByName('servType').AsString])
    then begin;
      item := lvDiff.Items.Add;
      item.Checked := False;
      item.Caption := FormMain.CleanText(cdsA.FieldByName('servName').AsString);
      item.SubItems.Add(FormMain.CleanText(cdsA.FieldByName('servPackage').AsString));
      item.SubItems.Add(FormMain.TrnsServType(cdsA.FieldByName('servType').AsInteger));
      if cdsA.FieldByName('servSTC').AsString = 's'
      then item.SubItems.Add(Format('%.1n',[StrToInt(cdsA.FieldByName('servPos').AsString)/10]))
      else
        if cdsA.FieldByName('servSTC').AsString = 't'
        then item.SubItems.Add('Terrestrial')
        else item.SubItems.Add('Cable');
      item.SubItems.Add(cdsA.FieldByName('servFreq').AsString);
      item.SubItems.Add(cdsA.FieldByName('servPol').AsString);
      item.SubItems.Add(cdsA.FieldByName('servSymb').AsString);
      item.SubItems.Add(cdsA.FieldByName('servFEC').AsString);
      item.SubItems.Add(cdsA.FieldByName('servSID').AsString);
      item.SubItems.Add(cdsA.FieldByName('servTSID').AsString);
      item.SubItems.Add(cdsA.FieldByName('servNID').AsString);
      item.SubItems.Add(cdsA.FieldByName('servUniq').AsString);
      item.SubItems.Add('Delete');
      item.SubItems.Add('');
      item.SubItems.Add(cdsA.FieldByName('servType').AsString);
    end;
    cdsA.Next;
  end;

  cdsA.IndexFieldNames := servsif;
  cdsA.Filtered := servflt;

  lvDiff.Items.EndUpdate;
  FormWait.Hide;
  screen.cursor := crdefault;

  if lvDiff.Items.Count = 0
  then MessageDlg(FormMain.lwLngTrns(name,[
                  'No differences found between loaded file-set and the services file ' +
                  'from the Dreambox']),
                  mtInformation,[mbOK],0);
  eNewBouquetName.Text := '@DreamBoxEdit Compare';
end;

procedure TFormCompareSet.FormClose(Sender: TObject;
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

procedure TFormCompareSet.bUncheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  Screen.Cursor := crHourGlass;
  for i := 0 to lvDiff.Items.Count - 1 do begin;
    lvDiff.Items[i].Checked := False;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormCompareSet.bCheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  Screen.Cursor := crHourGlass;
  for i := 0 to lvDiff.Items.Count - 1 do begin;
    lvDiff.Items[i].Checked := True;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormCompareSet.lvDiffDblClick(Sender: TObject);
begin
  if lvDiff.Selected = nil
  then exit;

  lvDiff.Selected.Checked := not lvDiff.Selected.Checked;
end;

procedure TFormCompareSet.lvDiffCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvDiff.Canvas.Brush.Color := $00F9FAFB
  else lvDiff.Canvas.Brush.Color := clWhite;
  lvDiff.Canvas.FillRect(Item.DisplayRect(drBounds));
  if Item.Checked
  then
    if item.SubItems[11] = 'Add'
    then lvDiff.Canvas.Font.Color := clGreen
    else
      if (item.SubItems[11] = 'Update')
      then lvDiff.Canvas.Font.Color := clBlue
      else lvDiff.Canvas.Font.Color := clRed
  else lvDiff.Canvas.Font.Color := clMedGray;
end;

procedure TFormCompareSet.lvDiffKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  if Key = 32
  then begin;
    for i := 0 to lvDiff.Items.Count - 1 do begin;
      if lvDiff.Items[i].Selected
      then lvDiff.Items[i].Checked := not lvDiff.Items[i].Checked;
    end;
    key := 0;
  end;
end;

procedure TFormCompareSet.lvDiffColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  lvDiffColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormCompareSet.lvDiffCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
  f1,f2: Real;
  s1,s2: String;
begin
  if lvDiffColumnToSort = 0
  then Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
    ix := lvDiffColumnToSort - 1;
    if (ix = 0) or
       (ix = 1) or
       (ix = 11)
    then Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix])
    else
      if (ix = 2) or
         (ix = 10)
      then begin;
        f1 := StrToFloat(Item1.SubItems[ix]) * 10;
        f2 := StrToFloat(Item2.SubItems[ix]) * 10;
        if f1 = f2
        then Compare := 0
        else
          if f1 > f2
          then Compare := 1
          else Compare := -1;
      end
      else begin;
        if Item1.SubItems[ix] <> ''
        then s1 := Item1.SubItems[ix]
        else s1 := '0';
        if Item2.SubItems[ix] <> ''
        then s2 := Item2.SubItems[ix]
        else s2 := '0';
        Compare := CompareText(Format('%10d',[StrToInt(s1)]),
                               Format('%10d',[StrToInt(s2)]));
      end;
  end;
end;

procedure TFormCompareSet.bImportClick(Sender: TObject);
var
  i,j,c,p,sa,sd,su,flags,seq: Integer;
  sifBQ,sifTV,sifRD: String;
  flt,bnr: String;
  fltd,newbq: Boolean;
  servsif: String;
  servflt: Boolean;
  pListData: ^TListData;
  ld: TListData;
begin
  screen.cursor := crHourglass;
  FormWait.pb.Caption := '';
  FormWait.pb.Min := 0;
  FormWait.pb.Max := lvDiff.Items.Count - 1;
  FormWait.pb.Position := 0;
  FormWait.Show;
  application.ProcessMessages;
  p := 0;
  sa := 0;
  sd := 0;
  su := 0;
  seq := 0;

  servsif := cdsA.IndexFieldNames;
  cdsA.IndexFieldNames := cdsC.IndexFieldNames;
  servflt := cdsA.Filtered;
  cdsA.Filtered := False;
  newbq := False;

  for i := 0 to lvDiff.Items.Count - 1 do begin;
    inc(p);
    FormWait.pb.Position := p;

    if not lvDiff.Items.Item[i].Checked
    then continue;

    if lvDiff.Items.Item[i].SubItems[11] = 'Add'
    then begin;
      { Skip double entries (so already added entries) }
      if cdsA.FindKey([lvDiff.Items.Item[i].SubItems[7],
                       lvDiff.Items.Item[i].SubItems[10],
                       lvDiff.Items.Item[i].SubItems[8],
                       lvDiff.Items.Item[i].SubItems[9],
                       lvDiff.Items.Item[i].SubItems[13]])
      then continue;

      cdsC.FindKey([lvDiff.Items.Item[i].SubItems[7],
                    lvDiff.Items.Item[i].SubItems[10],
                    lvDiff.Items.Item[i].SubItems[8],
                    lvDiff.Items.Item[i].SubItems[9],
                    lvDiff.Items.Item[i].SubItems[13]]);
      cdsA.Append;
      cdsA.FieldByName('servSTC').AsString := cdsC.FieldByName('servSTC').AsString;
      cdsA.FieldByName('servSID').AsString := cdsC.FieldByName('servSID').AsString;
      cdsA.FieldByName('servUniq').AsString := cdsC.FieldByName('servUniq').AsString;
      cdsA.FieldByName('servTSID').AsString := cdsC.FieldByName('servTSID').AsString;
      cdsA.FieldByName('servNID').AsString := cdsC.FieldByName('servNID').AsString;
      cdsA.FieldByName('servType').AsString := cdsC.FieldByName('servType').AsString;
      cdsA.FieldByName('servTypeTxt').AsString := FormMain.TrnsServType(cdsA.FieldByName('servType').AsInteger);
      cdsA.FieldByName('servName').AsString := cdsC.FieldByName('servName').AsString;
      cdsA.FieldByName('servPackage').AsString := cdsC.FieldByName('servPackage').AsString;
      cdsA.FieldByName('servNr').AsString := IntToStr(FormMain.MaxNr + 1);
      cdsA.FieldByName('servFreq').AsString := cdsC.FieldByName('servFreq').AsString;
      cdsA.FieldByName('servSymb').AsString := cdsC.FieldByName('servSymb').AsString;
      cdsA.FieldByName('servPol').AsString := cdsC.FieldByName('servPol').AsString;
      cdsA.FieldByName('servFEC').AsString := cdsC.FieldByName('servFEC').AsString;
      cdsA.FieldByName('servPos').AsString := cdsC.FieldByName('servPos').AsString;
      cdsA.FieldByName('servVPID').AsString := cdsC.FieldByName('servVPID').AsString;
      cdsA.FieldByName('servAPID').AsString := cdsC.FieldByName('servAPID').AsString;
      cdsA.FieldByName('servTPID').AsString := cdsC.FieldByName('servTPID').AsString;
      cdsA.FieldByName('servPPID').AsString := cdsC.FieldByName('servPPID').AsString;
      cdsA.FieldByName('serv3PID').AsString := cdsC.FieldByName('serv3PID').AsString;
      flags := cdsC.FieldByName('servFlags').AsInteger;
      flags := flags or 128;
      cdsA.FieldByName('servFlags').AsInteger := flags;
      inc(FormMain.HighDbeNr);
      cdsA.FieldByName('servDbeNr').AsInteger := FormMain.HighDbeNr;
      cdsA.FieldByName('servTrExtra').AsString := cdsC.FieldByName('servTrExtra').AsString;
      cdsA.FieldByName('servCleanName').AsString := cdsC.FieldByName('servCleanName').AsString;
      cdsA.Post;

      inc(FormMain.MaxNr);
      inc(sa);
      FormMain.log('i',FormMain.lwLngTrns(name,[
                       'Compare services: service % on satellite at % added',
                       cdsC.FieldByName('servName').AsString,
                       Format('%.1n',[StrToInt(cdsC.FieldByName('servPos').AsString)/10])]));
      if eNewBouquetName.Text <> ''
      then begin;
        if not newbq
        then begin;
          newbq := True;
          for j := 0 to FormMain.tv.Items.Count - 1 do begin;
            if (FormMain.tv.Items.Item[j].Level = 1) and
               (FormMain.tv.Items.Item[j].Parent.Text[1] = 'P')
            then begin;
              if FormMain.tv.Items.Item[j].Text = eNewBouquetName.Text
              then begin;
                pListData := FormMain.tv.Items.Item[j].Data;
                bnr := IntToStr(pListData.Number);
                break;
              end;
            end;
          end;
          if bnr = ''
          then begin;
            ld := FormMain.NewBouquet('P');
            new(pListData);
            pListData.FileName := ld.FileName;
            pListData.Number := ld.Number;
            pListData.Locked := False;
            FormMain.tv.Items.AddChildObject(FormMain.tnBQ,eNewBouquetName.Text,pListData);
            FormMain.tnBQ.AlphaSort(True);
            bnr := IntToStr(ld.Number);
          end;
        end;
        if not FormMain.cdsFBQ.FindKey([bnr,
                                        lvDiff.Items[i].SubItems[7],
                                        lvDiff.Items[i].SubItems[10],
                                        lvDiff.Items[i].SubItems[8],
                                        lvDiff.Items[i].SubItems[9],
                                        lvDiff.Items[i].SubItems[13]])
        then FormMain.cdsFBQ.Append
        else FormMain.cdsFBQ.Edit;
        FormMain.cdsFBQ.FieldByName('fbqSetNr').AsString := bnr;
        FormMain.cdsFBQ.FieldByName('fbqSeqNr').AsInteger := seq;
        FormMain.cdsFBQ.FieldByName('fbqName').AsString := lvDiff.Items[i].Caption;
        FormMain.cdsFBQ.FieldByName('fbqSID').AsString := lvDiff.Items[i].SubItems[7];
        FormMain.cdsFBQ.FieldByName('fbqUniq').AsString := lvDiff.Items[i].SubItems[10];
        FormMain.cdsFBQ.FieldByName('fbqTSID').AsString := lvDiff.Items[i].SubItems[8];
        FormMain.cdsFBQ.FieldByName('fbqNID').AsString := lvDiff.Items[i].SubItems[9];
        FormMain.cdsFBQ.FieldByName('fbqServType').AsString := lvDiff.Items[i].SubItems[13];
        FormMain.cdsFBQ.FieldByName('fbqDbeNr').AsInteger := FormMain.HighDbeNr;
        FormMain.cdsFBQ.FieldByName('fbqT').AsString := 'n';
        inc(seq);
        FormMain.cdsFBQ.Post;

        FormMain.log('i',FormMain.lwLngTrns(name,['Compare services: service % on satellite at % added to bouquet %',
                                            lvDiff.Items[i].SubItems[0],
                                            Format('%.1n',[StrToInt(cdsC.FieldByName('servPos').AsString)/10]),
                                            eNewBouquetName.Text]));
      end;
    end
    else begin;
      cdsA.FindKey([lvDiff.Items.Item[i].SubItems[7],
                    lvDiff.Items.Item[i].SubItems[10],
                    lvDiff.Items.Item[i].SubItems[8],
                    lvDiff.Items.Item[i].SubItems[9],
                    lvDiff.Items.Item[i].SubItems[13]]);
      if lvDiff.Items.Item[i].SubItems[11] = 'Update'
      then begin;
        cdsC.FindKey([lvDiff.Items.Item[i].SubItems[7],
                    lvDiff.Items.Item[i].SubItems[10],
                    lvDiff.Items.Item[i].SubItems[8],
                    lvDiff.Items.Item[i].SubItems[9],
                    lvDiff.Items.Item[i].SubItems[13]]);
        cdsA.Edit;
        cdsA.FieldByName('servName').AsString := cdsC.FieldByName('servName').AsString;
        cdsA.FieldByName('servPackage').AsString := cdsC.FieldByName('servPackage').AsString;
        flags := cdsC.FieldByName('servFlags').AsInteger;
        flags := flags or 128;
        cdsA.FieldByName('servFlags').AsInteger := flags;
        cdsA.Post;

        c := 0;
        flt := FormMain.cdsFTV.Filter;
        fltd := FormMain.cdsFTV.Filtered;
        FormMain.cdsFTV.Filter := 'ftvDbeNr = ''' + cdsA.FieldByName('servDbeNr').AsString + '''';
        FormMain.cdsFTV.Filtered := True;
        FormMain.cdsFTV.First;
        while not FormMain.cdsFTV.Eof do begin;
          FormMain.cdsFTV.Edit;
          FormMain.cdsFTV.FieldByName('ftvName').AsString := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
          FormMain.cdsFTV.Post;
          FormMain.cdsFTV.Next;
          inc(c);
        end;
        FormMain.cdsFTV.Filter := flt;
        FormMain.cdsFTV.Filtered := fltd;

        flt := FormMain.cdsFRD.Filter;
        fltd := FormMain.cdsFRD.Filtered;
        FormMain.cdsFRD.Filter := 'frdDbeNr = ''' + cdsA.FieldByName('servDbeNr').AsString + '''';
        FormMain.cdsFRD.Filtered := True;
        FormMain.cdsFRD.First;
        while not FormMain.cdsFRD.Eof do begin;
          FormMain.cdsFRD.Edit;
          FormMain.cdsFRD.FieldByName('frdName').AsString := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
          FormMain.cdsFRD.Post;
          FormMain.cdsFRD.Next;
          inc(c);
        end;
        FormMain.cdsFRD.Filter := flt;
        FormMain.cdsFRD.Filtered := fltd;

        flt := FormMain.cdsFBQ.Filter;
        fltd := FormMain.cdsFBQ.Filtered;
        FormMain.cdsFBQ.Filter := 'fbqDbeNr = ''' + cdsA.FieldByName('servDbeNr').AsString + '''';
        FormMain.cdsFBQ.Filtered := True;
        FormMain.cdsFBQ.First;
        while not FormMain.cdsFBQ.Eof do begin;
          FormMain.cdsFBQ.Edit;
          FormMain.cdsFBQ.FieldByName('fbqName').AsString := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
          FormMain.cdsFBQ.Post;
          FormMain.cdsFBQ.Next;
          inc(c);
        end;
        FormMain.cdsFBQ.Filter := flt;
        FormMain.cdsFBQ.Filtered := fltd;

        if c > 0
        then begin;
          for j := FormMain.lvDet.Items.Count - 1 downto 0 do begin;
            if FormMain.lvDet.Items[j].SubItems[10] = cdsA.FieldByName('servDbeNr').AsString
            then begin;
              FormMain.lvDet.Items[j].caption := FormMain.CleanText(cdsC.FieldByName('servName').AsString);
              FormMain.DetChanged := True;
            end;
          end;
        end;

        inc(su);
        FormMain.log('i',FormMain.lwLngTrns(name,[
                         'Compare services: service/package % on satellite at % updated. ' +
                         'New servicename/package: %',
                         lvDiff.Items.Item[i].SubItems[12],
                         Format('%.1n',[StrToInt(cdsA.FieldByName('servPos').AsString)/10]),
                         FormMain.CleanText(cdsA.FieldByName('servName').AsString) + '/' +
                         FormMain.CleanText(cdsA.FieldByName('servPackage').AsString)]));
      end
      else begin;
        c := 0;
        sifBQ := FormMain.cdsFBQ.IndexFieldNames;
        FormMain.cdsFBQ.IndexFieldNames := 'fbqSID;fbqUniq;fbqTSID;fbqNID;fbqServType';
        sifTV := FormMain.cdsFTV.IndexFieldNames;
        FormMain.cdsFTV.IndexFieldNames := 'ftvSID;ftvUniq;ftvTSID;ftvNID;ftvServType';
        sifRD := FormMain.cdsFRD.IndexFieldNames;
        FormMain.cdsFRD.IndexFieldNames := 'frdSID;frdUniq;frdTSID;frdNID;frdServType';

        while FormMain.cdsFBQ.FindKey([FormMain.cdsServ.FieldByName('servSID').AsString,
                                       FormMain.cdsServ.FieldByName('servUniq').AsString,
                                       FormMain.cdsServ.FieldByName('servTSID').AsString,
                                       FormMain.cdsServ.FieldByName('servNID').AsString,
                                       FormMain.cdsServ.FieldByName('servType').AsString])
        do begin;
          inc(c);
          FormMain.cdsFBQ.Delete;
        end;
        while FormMain.cdsFTV.FindKey([FormMain.cdsServ.FieldByName('servSID').AsString,
                                       FormMain.cdsServ.FieldByName('servUniq').AsString,
                                       FormMain.cdsServ.FieldByName('servTSID').AsString,
                                       FormMain.cdsServ.FieldByName('servNID').AsString,
                                       FormMain.cdsServ.FieldByName('servType').AsString])
        do begin;
          inc(c);
          FormMain.cdsFTV.Delete;
        end;

        while FormMain.cdsFRD.FindKey([FormMain.cdsServ.FieldByName('servSID').AsString,
                                       FormMain.cdsServ.FieldByName('servUniq').AsString,
                                       FormMain.cdsServ.FieldByName('servTSID').AsString,
                                       FormMain.cdsServ.FieldByName('servNID').AsString,
                                       FormMain.cdsServ.FieldByName('servType').AsString])
        do begin;
          inc(c);
          FormMain.cdsFRD.Delete;
        end;

        if c > 0
        then begin;
          for j := FormMain.lvDet.Items.Count - 1 downto 0 do begin;
            if FormMain.lvDet.Items[j].SubItems[10] = cdsA.FieldByName('servDbeNr').AsString
            then begin;
              FormMain.lvDet.Items[j].Delete;
              FormMain.DetChanged := True;
            end;
          end;
        end;
        FormMain.cdsFTV.IndexFieldNames := sifTV;
        FormMain.cdsFRD.IndexFieldNames := sifRD;
        FormMain.cdsFBQ.IndexFieldNames := sifBQ;

        FormMain.log('i',FormMain.lwLngTrns(name,[
                         'Compare services: service % on satellite at % ' +
                         'deleted from services and from % bouquets',
                         cdsA.FieldByName('servName').AsString,
                         lvDiff.Items.Item[i].SubItems[2],
                         IntToStr(c)]));
        cdsA.Delete;
        inc(sd);
      end;
    end;
  end;

  cdsA.IndexFieldNames := servsif;
  cdsA.Filtered := servflt;

  FormWait.Hide;
  screen.cursor := crdefault;

  FormMain.log('i',FormMain.lwLngTrns(name,[
                   'Compare and merge services files:']));
  FormMain.log('i',FormMain.lwLngTrns(name,[
                   ' % services added to active fileset',IntToStr(sa)]));
  FormMain.log('i',FormMain.lwLngTrns(name,[
                   ' % services deleted from active fileset',IntToStr(sd)]));
  FormMain.log('i',FormMain.lwLngTrns(name,[
                   ' % servicenames updated in active fileset',IntToStr(su)]));
  if FormMain.ShowResultMsg
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Compare and merge services files:~' +
               ' % services added to active fileset~' +
               ' % services deleted from active fileset~' +
               ' % servicenames updated in active fileset~~' +
               'New and updated services are marked as new (flag "New" and ' +
               'different line color) in the serviceslist.',
               IntToStr(sa),
               IntToStr(sd),
               IntToStr(su)]),
               mtInformation,[mbOK],0);
  end;

  ModalResult := mrOK;
end;

procedure TFormCompareSet.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
