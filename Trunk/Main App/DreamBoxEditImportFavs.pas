unit DreamBoxEditImportFavs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Registry, Menus, StrUtils;

type
  TFormImportUserBouquets = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    lvFavs: TListView;
    bProcess: TButton;
    bCancel: TButton;
    bCheckAll: TButton;
    bUncheckAll: TButton;
    bRefresh: TButton;
    pulvFavs: TPopupMenu;
    puCheckall: TMenuItem;
    puUncheckall: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCheckAllClick(Sender: TObject);
    procedure bUncheckAllClick(Sender: TObject);
    procedure lvFavsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bRefreshClick(Sender: TObject);
    procedure lvFavsCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvFavsDblClick(Sender: TObject);
    procedure bProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FavDir: String;
    procedure lvFavsBuild(const Dir: string);
  public
    { Public declarations }
  end;

var
  FormImportUserBouquets: TFormImportUserBouquets;

implementation

uses DreamBoxMain;

{$R *.dfm}

procedure TFormImportUserBouquets.lvFavsBuild(const Dir: string);
var
  SR: TSearchRec;
  FileAttr: Integer;
  rc: Integer;
  item: TListItem;
  s: String;
  tf: TextFile;
  SDir: String;
  Err: Boolean;
label
  SkippedTV, SkippedRD;
begin
  lvFavs.Items.BeginUpdate;
  lvFavs.Items.Clear;
  lvFavs.Items.EndUpdate;
  lvFavs.Items.BeginUpdate;

  FileAttr := 96; { = faReadOnly + faArchive + faAnyFile }
  SDir := Dir + '\*.tv';
  rc := FindFirst(SDir,FileAttr,SR);
  while rc = 0 do begin
    if (SR.Name <> '.') and (SR.Name <> '..')
    then begin;
      item := lvFavs.Items.Add;
      item.Checked := True;
      item.Caption := SR.Name;

      Err := False;
      AssignFile(tf,Dir+'\'+SR.Name);
      try
        Reset(tf);
      except;
        Err := True;
      end;
      if Err
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Open error');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        goto SkippedTV;
      end;

      ReadLn(tf,s);
      if copy(s,1,6) <> '#NAME '
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Not a User Bouquet file');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        CloseFile(tf);
        goto SkippedTV;
      end;
      CloseFile(tf);

      item.SubItems.Add(FormMain.CleanText(copy(s,7,length(s)-6)));
      item.SubItems.Add('TV');

SkippedTV:
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(SR.Time)));
      item.SubItems.Add(Format('%.0n',[StrToFloat(IntToStr(SR.Size))]));
    end;
    rc := FindNext(SR);
  end;
  FindClose(sr);

  SDir := Dir + '\*.radio';
  rc := FindFirst(SDir,FileAttr,SR);
  while rc = 0 do begin
    if (SR.Name <> '.') and (SR.Name <> '..')
    then begin;
      item := lvFavs.Items.Add;
      item.Checked := True;
      item.Caption := SR.Name;

      Err := False;
      AssignFile(tf,Dir+'\'+SR.Name);
      try
        Reset(tf);
      except;
        Err := True;
      end;
      if Err
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Open error');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        goto SkippedRD;
      end;

      ReadLn(tf,s);
      if copy(s,1,6) <> '#NAME '
      then begin;
        item.Checked := False;
        item.SubItems.Add('** Not a User Bouquet file');
        item.SubItems.Add('----');
        item.SubItems.Add('----');
        CloseFile(tf);
        goto SkippedRD;
      end;
      CloseFile(tf);

      item.SubItems.Add(FormMain.CleanText(copy(s,7,length(s)-6)));
      item.SubItems.Add('Radio');

SkippedRD:
      item.SubItems.Add(DateTimeToStr(FileDateToDateTime(SR.Time)));
      item.SubItems.Add(Format('%.0n',[StrToFloat(IntToStr(SR.Size))]));
    end;
    rc := FindNext(SR);
  end;
  FindClose(sr);

  lvFavs.Items.EndUpdate;
end;

procedure TFormImportUserBouquets.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Caption := FormMain.lwLngTrns(name,['Import individual User Bouquets']);
  
  lvFavs.Columns[0].Caption := FormMain.lwLngTrns(name,['Filename']);
  lvFavs.Columns[1].Caption := FormMain.lwLngTrns(name,['User Bouquet name']);
  lvFavs.Columns[2].Caption := FormMain.lwLngTrns(name,['TV/Radio']);
  lvFavs.Columns[3].Caption := FormMain.lwLngTrns(name,['Filedate']);
  lvFavs.Columns[4].Caption := FormMain.lwLngTrns(name,['Size']);

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

  FavDir := Reg.ReadString('User Bouquet Directory');

  Reg.CloseKey;
  Reg.Destroy;

  GroupBox1.Caption := FormMain.lwLngTrns(name,['User Bouquet files (*.tv and *.radio) in directory %',FavDir]);

  lvFavsBuild(FavDir);
end;

procedure TFormImportUserBouquets.FormClose(Sender: TObject;
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

procedure TFormImportUserBouquets.bCheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvFavs.Items.Count - 1 do begin;
    if lvFavs.Items[i].SubItems[1] <> '----'
    then lvFavs.Items[i].Checked := True
    else lvFavs.Items[i].Checked := false;
  end;
end;

procedure TFormImportUserBouquets.bUncheckAllClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lvFavs.Items.Count - 1 do begin;
    lvFavs.Items[i].Checked := False;
  end;
end;

procedure TFormImportUserBouquets.lvFavsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  i: Integer;
begin
  if Key = 32
  then begin;
    for i := 0 to lvFavs.Items.Count - 1 do begin;
      if lvFavs.Items[i].Selected
      then begin;
        if lvFavs.Items[i].SubItems[1] <> '----'
        then lvFavs.Items[i].Checked := not lvFavs.Items[i].Checked;
      end;
    end;
    key := 0;
  end;
end;

procedure TFormImportUserBouquets.bRefreshClick(Sender: TObject);
begin
  lvFavsBuild(FavDir);
end;

procedure TFormImportUserBouquets.lvFavsCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if Item.Index mod 2 = 0
  then lvFavs.Canvas.Brush.Color := $00F9FAFB
  else lvFavs.Canvas.Brush.Color := clWhite;
  lvFavs.Canvas.FillRect(Item.DisplayRect(drBounds));
  if Item.Checked
  then lvFavs.Canvas.Font.Color := clBlack
  else lvFavs.Canvas.Font.Color := clMedGray;
end;

procedure TFormImportUserBouquets.lvFavsDblClick(Sender: TObject);
begin
  if lvFavs.Selected = nil
  then exit;

  if lvFavs.Selected.SubItems[1] <> '----'
  then lvFavs.Selected.Checked := not lvFavs.Selected.Checked;
end;

procedure TFormImportUserBouquets.bProcessClick(Sender: TObject);
var
  i,e,p,sn: Integer;
  cTV,cRD,errTV,errRD: Integer;
  tf: textFile;
  s,servsif,ubt,descr: String;
  servflt: Boolean;
  psl,sl: TStringList;
  pListData: ^TListData;
  ld: TListData;
begin
  psl := TStringList.Create;

  FormMain.ShowWait('init',0,lvFavs.Items.Count,0);
  application.ProcessMessages;

  servsif := FormMain.cdsSERV.IndexFieldNames;
  FormMain.cdsSERV.IndexFieldNames := 'servSID;servUniq;servTSID;servNID;servType';
  servflt := FormMain.cdsSERV.Filtered;
  FormMain.cdsSERV.Filtered := False;

  { process TV and Radio User Bouquet from all User Bouquet Files }
  cTV := 0;
  cRD := 0;
  p := 0;
  errTV := 0;
  errRD := 0;
  for i := 0 to lvFavs.Items.Count - 1 do begin;
    inc(p);
    FormMain.ShowWait('pos',0,0,p);

    if (lvFavs.Items[i].Checked) and
       (FileExists(FavDir+'\'+lvFavs.Items[i].Caption))
    then begin;
      FormMain.log('i',FormMain.lwLngTrns(name,['Importing user bouquet file %',lvFavs.Items[i].Caption]));

      if lvFavs.Items[i].SubItems[1] = 'TV'
      then begin;
        AssignFile(tf,FavDir+'\'+lvFavs.Items[i].Caption);
        SetLineBreakStyle(tf,tlbsLF);
        Reset(tf);
        ReadLn(tf,s);
        s := FormMain.CleanText(copy(s,7,length(s)-6));

        ld := FormMain.NewBouquet('T');

        new(pListData);
        FormMain.tv.items.AddChildObject(FormMain.tnTV,s,pListData);
        pListData.FileName := ld.FileName;
        pListData.Number := ld.Number;
        pListData.Locked := False;

        sn := 0;
        sl := TStringList.Create;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (copy(s,1,8) = '#SERVICE') or
             (copy(s,1,12) = '#DESCRIPTION')
          then sl.Add(s);
        end;
        CloseFile(tf);

        for e := 0 to sl.Count - 1 do begin;
          s := sl[e];

          if copy(s,1,8) <> '#SERVICE'
          then continue;

          FormMain.ParseString(s,psl);
          if psl.Strings[1] <> '1'
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Unsupported reference in TV User Bouquet (%) ' +
                             'to User Bouquet itself skipped:',lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errTV);
            continue;
          end;
          if (psl.Strings[2] = '15') and
             (psl.Strings[3] <> 'fffffffd')
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Unsupported reference in TV User Bouquet (%) skipped:',
                             lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errTV);
            continue;
          end;

          { handle old references to bouquets }
          if (psl.Strings[2] = '15') and
             (psl.Strings[3] = 'fffffffd')
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Reference in TV User Bouquet (%) to bouquet skipped:',
                             lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errTV);
            continue;
          end;

          ubt := 'n';
          descr := '';
          { handle markers }
          if psl.Strings[2] = '64'
          then begin;
            if (e < sl.Count - 1) and
               (copy(sl[e+1],1,12) = '#DESCRIPTION')
            then
              if copy(sl[e+1],1,13) = '#DESCRIPTION:'
              then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
              else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
            else begin;
              FormMain.log('i',FormMain.lwLngTrns(name,['Empty marker ignored (%)',
                                         lvFavs.Items[i].Caption]));
              inc(errTV);
              continue;
            end;
            ubt := 'm';
          end;

          { handle references to unknown services / sub services }
          if (ubt = 'n') and
             (not FormMain.cdsServ.FindKey([IntToStr(StrToInt('$'+psl.Strings[4])),
                                            IntToStr(StrToInt('$'+psl.Strings[7])),
                                            IntToStr(StrToInt('$'+psl.Strings[5])),
                                            IntToStr(StrToInt('$'+psl.Strings[6])),
                                            psl.Strings[3]]))
          then begin;
            if (e >= sl.Count - 1) or
               (copy(sl[e+1],1,12) <> '#DESCRIPTION')
            then begin;
              FormMain.log('w',FormMain.lwLngTrns(name,['TV Favourite (%) without ' +
                                   'corresponding service not loaded',lvFavs.Items[i].Caption]));
              FormMain.log('w','-- data: ' + s);
              inc(errTV);
              continue;
            end;
            ubt := 's';
            descr := trim(copy(sl[e+1],14,length(sl[e+1])-1));
          end;

          { handle renamed services }
          if (ubt = 'n') and
             (e <= sl.Count - 2) and
             (copy(sl[e+1],1,12) = '#DESCRIPTION')
          then begin;
            ubt := 'r';
            if copy(sl[e+1],1,13) = '#DESCRIPTION:'
            then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
            else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1));
          end;

          { process service reference }
          inc(cTV);
          inc(sn);
          FormMain.cdsFTV.Append;
          FormMain.cdsFTV.FieldByName('ftvSeqNr').AsInteger := sn;
          if (ubt = 'n') or
             (ubt = 'r')
          then FormMain.cdsFTV.FieldByName('ftvName').AsString :=
                        FormMain.CleanText(FormMain.cdsServ.FieldByName('servName').AsString)
          else FormMain.cdsFTV.FieldByName('ftvName').AsString :=
                        FormMain.CleanText(descr);
          FormMain.cdsFTV.FieldByName('ftvSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
          FormMain.cdsFTV.FieldByName('ftvUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
          FormMain.cdsFTV.FieldByName('ftvTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
          FormMain.cdsFTV.FieldByName('ftvNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
          if ubt = 'm'
          then FormMain.cdsFTV.FieldByName('ftvServType').AsString := '0'
          else FormMain.cdsFTV.FieldByName('ftvServType').AsString := psl.Strings[3];
          FormMain.cdsFTV.FieldByName('ftvSetNr').AsInteger := ld.Number;
          if descr <> ''
          then FormMain.cdsFTV.FieldByName('ftvDescr').AsString := FormMain.CleanText(descr)
          else FormMain.cdsFTV.FieldByName('ftvDescr').AsString := '';
          if (ubt = 'n') or
             (ubt = 'r')
          then FormMain.cdsFTV.FieldByName('ftvDbeNr').AsString := FormMain.cdsServ.FieldByName('servDbeNr').AsString
          else FormMain.cdsFTV.FieldByName('ftvDbeNr').AsString := '0';
          FormMain.cdsFTV.FieldByName('ftvT').AsString := ubt;
          FormMain.cdsFTV.Post;
        end;
        sl.Free;
      end;

      if lvFavs.Items[i].SubItems[1] = 'Radio'
      then begin;
        AssignFile(tf,FavDir+'\'+lvFavs.Items[i].Caption);
        SetLineBreakStyle(tf,tlbsLF);
        Reset(tf);
        ReadLn(tf,s);
        s := FormMain.CleanText(copy(s,7,length(s)-6));

        ld := FormMain.NewBouquet('R');

        new(pListData);
        FormMain.tv.items.AddChildObject(FormMain.tnRD,s,pListData);
        pListData.FileName := ld.FileName;
        pListData.Number := ld.Number;
        pListData.Locked := False;

        sn := 0;
        sl := TStringList.Create;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (copy(s,1,8) = '#SERVICE') or
             (copy(s,1,12) = '#DESCRIPTION')
          then sl.Add(s);
        end;
        CloseFile(tf);

        for e := 0 to sl.Count - 1 do begin;
          s := sl[e];

          if copy(s,1,8) <> '#SERVICE'
          then continue;

          FormMain.ParseString(s,psl);
          if psl.Strings[1] <> '1'
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Unsupported reference in Radio User Bouquet (%) ' +
                             'to User Bouquet itself skipped:',lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errRD);
            continue;
          end;
          if (psl.Strings[2] = '15') and
             (psl.Strings[3] <> 'fffffffd')
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Unsupported reference in Radio User Bouquet (%) skipped:',
                             lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errRD);
            continue;
          end;

          { handle old references to bouquets }
          if (psl.Strings[2] = '15') and
             (psl.Strings[3] = 'fffffffd')
          then begin;
            FormMain.log('w',FormMain.lwLngTrns(name,[
                             'Reference in Radio User Bouquet (%) to bouquet skipped:',
                             lvFavs.Items[i].Caption]));
            FormMain.log('w','--data: ' + s);
            inc(errRD);
            continue;
          end;

          ubt := 'n';
          descr := '';
          { handle markers }
          if psl.Strings[2] = '64'
          then begin;
            if (e < sl.Count - 1) and
               (copy(sl[e+1],1,12) = '#DESCRIPTION')
            then
              if copy(sl[e+1],1,13) = '#DESCRIPTION:'
              then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
              else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1))
            else begin;
              FormMain.log('i',FormMain.lwLngTrns(name,['Empty marker ignored (%)',
                                         lvFavs.Items[i].Caption]));
              inc(errRD);
              continue;
            end;
            ubt := 'm';
          end;

          { handle references to unknown services / sub services }
          if (ubt = 'n') and
             (not FormMain.cdsServ.FindKey([IntToStr(StrToInt('$'+psl.Strings[4])),
                                            IntToStr(StrToInt('$'+psl.Strings[7])),
                                            IntToStr(StrToInt('$'+psl.Strings[5])),
                                            IntToStr(StrToInt('$'+psl.Strings[6])),
                                            psl.Strings[3]]))
          then begin;
            if (e >= sl.Count - 1) or
               (copy(sl[e+1],1,12) <> '#DESCRIPTION')
            then begin;
              FormMain.log('w',FormMain.lwLngTrns(name,['Radio Favourite (%) without ' +
                                   'corresponding service not loaded',lvFavs.Items[i].Caption]));
              FormMain.log('w','-- data: ' + s);
              inc(errRD);
              continue;
            end;
            ubt := 's';
            descr := trim(copy(sl[e+1],14,length(sl[e+1])-1));
          end;

          { handle renamed services }
          if (ubt = 'n') and
             (e <= sl.Count - 2) and
             (copy(sl[e+1],1,12) = '#DESCRIPTION')
          then begin;
            ubt := 'r';
            if copy(sl[e+1],1,13) = '#DESCRIPTION:'
            then descr := trim(copy(sl[e+1],14,length(sl[e+1])-1))
            else descr := trim(copy(sl[e+1],13,length(sl[e+1])-1));
          end;

          { process service reference }
          inc(cRD);
          inc(sn);
          FormMain.cdsFRD.Append;
          FormMain.cdsFRD.FieldByName('frdSeqNr').AsInteger := sn;
          if (ubt = 'n') or
             (ubt = 'r')
          then FormMain.cdsFRD.FieldByName('frdName').AsString :=
                        FormMain.CleanText(FormMain.cdsServ.FieldByName('servName').AsString)
          else FormMain.cdsFRD.FieldByName('frdName').AsString :=
                        FormMain.CleanText(descr);
          FormMain.cdsFRD.FieldByName('frdSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[4]));
          FormMain.cdsFRD.FieldByName('frdUniq').AsString := IntToStr(StrToInt('$0'+psl.Strings[7]));
          FormMain.cdsFRD.FieldByName('frdTSID').AsString := IntToStr(StrToInt('$0'+psl.Strings[5]));
          FormMain.cdsFRD.FieldByName('frdNID').AsString := IntToStr(StrToInt('$0'+psl.Strings[6]));
          if ubt = 'm'
          then FormMain.cdsFRD.FieldByName('frdServType').AsString := '0'
          else FormMain.cdsFRD.FieldByName('frdServType').AsString := psl.Strings[3];
          FormMain.cdsFRD.FieldByName('frdSetNr').AsInteger := ld.Number;
          if descr <> ''
          then FormMain.cdsFRD.FieldByName('frdDescr').AsString := FormMain.CleanText(descr)
          else FormMain.cdsFRD.FieldByName('frdDescr').AsString := '';
          if (ubt = 'n') or
             (ubt = 'r')
          then FormMain.cdsFRD.FieldByName('frdDbeNr').AsString := FormMain.cdsServ.FieldByName('servDbeNr').AsString
          else FormMain.cdsFRD.FieldByName('frdDbeNr').AsString := '0';
          FormMain.cdsFRD.FieldByName('frdT').AsString := ubt;
          FormMain.cdsFRD.Post;
        end;
        sl.Free;
      end;
    end;
  end;

  FormMain.cdsSERV.IndexFieldNames := servsif;
  FormMain.cdsSERV.Filtered := servflt;

  FormMain.ShowWait('free',0,0,0);
  psl.Free;

  if (FormMain.ShowResultMsg) or
     ((not FormMain.ShowResultMsg) and
      ((errTV > 0) or
       (errRD > 0)))
  then begin;
    if (errTV > 0) or
       (errRD > 0)
    then MessageDlg(FormMain.lwLngTrns(name,[
                    'User Bouquet imported from individual User Bouquet files:~' +
                    '-  TV User Bouquet: imported: %, errors: %~' +
                    '-  Radio User Bouquet: imported: %, errors: %~~' +
                    'See the log file for details about the errors.',
                    IntToStr(cTV),
                    IntToStr(errTV),
                    IntToStr(cRD),
                    IntToStr(errRD)]),
                    mtError,[mbOK],0)
    else MessageDlg(FormMain.lwLngTrns(name,[
                    'User Bouquet imported from individual User Bouquet files:~' +
                    '-  TV User Bouquet imported: %~' +
                    '-  Radio User Bouquet imported: %',
                    IntToStr(cTV),
                    IntToStr(cRD)]),
                    mtInformation,[mbOK],0);
  end;

  ModalResult := mrOK;
end;

procedure TFormImportUserBouquets.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

end.
