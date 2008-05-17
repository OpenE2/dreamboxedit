unit LanguageToolMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan, ToolWin,
  ActnCtrls, ActnMenus, ComCtrls, FileCtrl, Registry, ImgList, StrUtils,
  ExtCtrls;

type
  TFormMain = class(TForm)
    StatusBar1: TStatusBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    aOpen: TAction;
    aSave: TAction;
    aScanMsg: TAction;
    GroupBox1: TGroupBox;
    aExit: TAction;
    lvLF: TListView;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    mT: TMemo;
    mO: TMemo;
    aAbout: TAction;
    ImageList1: TImageList;
    odScan: TOpenDialog;
    odFile: TOpenDialog;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    lTotalOrg: TLabel;
    Label2: TLabel;
    lTotalTrn: TLabel;
    GroupBox6: TGroupBox;
    cbTranslated: TCheckBox;
    cbIdentical: TCheckBox;
    cbNotTranslated: TCheckBox;
    bRebuild: TButton;
    Label3: TLabel;
    lTotalDisp: TLabel;
    cbScreenValues: TCheckBox;
    cbMessages: TCheckBox;
    Label4: TLabel;
    lVersion: TLabel;
    Label5: TLabel;
    lTDate: TLabel;
    Label6: TLabel;
    lEDate: TLabel;
    procedure aExitExecute(Sender: TObject);
    procedure aScanMsgExecute(Sender: TObject);
    procedure aAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aOpenExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvLFCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvLFSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure bRebuildClick(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure lvLFColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvLFCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure mTExit(Sender: TObject);
  private
    { Private declarations }
    ActiveFile: String;
    ActiveDir: String;
    slLFOrg: TStringList;
    slLFTrn: TSTringList;
    aType,aForm,aComp,aProp,aValue: String;
    mtSave: String;
    Changed: Boolean;
    lvLFColumnToSort: Integer;
    procedure Split(const s: String);
    function FindMsgEnd(const ss: String; const b: Integer; out ml: String): Boolean;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses LanguageToolAbout;

{$R *.dfm}

function TFormMain.FindMsgEnd(const ss: String; const b: Integer; out ml: String): Boolean;
var
  pb,pe: Integer;
  s: String;
begin
  Result := False;
  ml := '';
  s := ss;
  pb := posex('''',s,b);
  if pb <= 0
  then exit;

  inc(pb);
  for pe := length(s) -1 downto 0 do begin;
    if s[pe] = ''''
    then break;
  end;
  if pe <= pb
  then exit;
  ml := copy(s,pb,pe - pb);

  if (posex(',',s,pe + 1) > pe) or
     (posex(']',s,pe + 1) > pe)
  then Result := True;
end;

procedure TFormMain.Split(const s: String);
var
  p: Integer;
  aName: String;
begin
  aType := LeftStr(s,1);
  p := pos('=',s);
  aValue := copy(s,p+1,length(s));
  aName := copy(s,2,p-2);
  p := pos('.',aName);
  aForm := copy(aName,1,p-1);
  aName := copy(aName,p+1,length(aName));
  p := pos('.',aName);
  aComp := copy(aName,1,p-1);
  aProp := copy(aName,p+1,length(aName));
end;

procedure TFormMain.aExitExecute(Sender: TObject);
begin
  if lvLF.Selected <> nil
  then lvLFSelectItem(Self,lvLF.Selected,False);

  Close;
end;

procedure TFormMain.aScanMsgExecute(Sender: TObject);
var
  Reg: TRegistry;
  s,msg,SDir,Key,filename,ml,aForm: String;
  i,j,ib,p,ma,me,ms,md: Integer;
  tf: TextFile;
  bf,d: String;
  dt: TDateTime;
begin
  if lvLF.Selected <> nil
  then lvLFSelectItem(Self,lvLF.Selected,False);

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
  Key := 'Last scanned directory';
  if Reg.ValueExists(key)
  then SDir := Reg.ReadString(key)
  else SDir := '';
  Reg.CloseKey;
  Reg.Destroy;

  odScan.InitialDir := SDir;
  if odScan.Execute
  then begin;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
    Key := 'Last scanned directory';
    Reg.WriteString(key,ExtractFilePath(odScan.FileName));
    Reg.CloseKey;
    Reg.Destroy;

    for i := slLFOrg.Count - 1 downto 0 do begin;
      if (lowercase(leftstr(slLFOrg[i],1)) = 'd') or
         (lowercase(leftstr(slLFOrg[i],1)) = 'v')
      then slLFOrg.Delete(i);
    end;

    ma := 0;
    me := 0;
    ms := 0;
    md := 0;
    Screen.Cursor := crHourGlass;
    for i := 0 to odScan.Files.Count - 1 do begin;
      aForm := '';
      filename := odScan.Files[i];
      AssignFile(tf,filename);
      Reset(tf);
      ReadLn(tf,s);
      s := trim(s);
      while not eof(tf) do begin;
        if (aForm = '') and
           (pos('class(',s) > 0)
        then begin;
          p := pos(' ',s);
          aForm := Trim(Copy(s,2,p-2));
          for j := 0 to slLFOrg.Count - 1 do begin;
            if (leftstr(slLFOrg[j],1) = 'm') and
               (copy(slLFOrg[j],2,length(aForm)) = aForm)
            then slLFOrg[j] := '<not used anymore>' + slLFOrg[j];
          end;
        end;

        if (pos('lwlngtrns',LowerCase(s)) > 0) and
           (pos('function',LowerCase(s)) = 0)
        then begin;
          p := pos('lwlngtrns',LowerCase(s));
          ib := posex('[',s,p);
          if ib = 0
          then ib := p ;
          if FindMsgEnd(s,ib+1,ml)
          then msg := ml
          else begin;
            msg := ml;
            ReadLn(tf,s);
            s := trim(s);
            while not FindMsgEnd(s,1,ml) do begin;
              msg := msg + ml;
              ReadLn(tf,s);
              s := trim(s);
            end;
            msg := msg + ml;
          end;

          if (pos('''',msg) > 0) or
             (pos('=',msg) > 0)
          then begin;
            MessageDlg('Invalid characters (quotes) in scanned message. ' +
                       'Form: ' + aForm + ', message:'#13#13 +
                       msg,
                       mtWarning,[mbOK],0);
            inc(ms);
          end
          else begin;
            key := 'm' + aForm + '.message.' + msg;
            j := slLFOrg.IndexOfName(key);
            if j < 0
            then begin;
              j := slLFOrg.IndexOfName('<not used anymore>' + key);
              if j >= 0
              then begin;
                slLFOrg[j] := copy(slLFOrg[j],19,length(slLFOrg[j])-18);
                inc(me);
              end
              else begin;
                inc(ma);
                slLFOrg.Add('m' + aForm + '.message.' + msg + '=');
              end;
            end;
          end;
        end;
        ReadLn(tf,s);
        s := trim(s);
      end;
    end;
    lTotalOrg.Caption := IntToStr(slLFOrg.Count);
    lTotalTrn.Caption := IntToStr(slLFTrn.Count);
    lTotalDisp.Caption := IntToStr(lvLF.Items.Count);

    Screen.Cursor := crDefault;

    for i := 0 to slLFOrg.Count - 1 do begin;
      if LeftStr(slLFOrg[i],18) = '<not used anymore>'
      then inc(md);
    end;

    bRebuildClick(Self);
    dt := now();
    bf := 'English.lng' +
          FormatDateTime('yyyymmdd hhmmss',dt) + '.save';
    RenameFile(ActiveDir + 'English.lng',
               ActiveDir + bf);
    slLFOrg.Sort;
    d := FormatDateTime('yyyy-mm-dd hh:mm:ss',dt);
    slLFOrg.Insert(0,'D'+d);
    slLFOrg.Insert(0,lVersion.Caption);
    slLFOrg.SaveToFile(ActiveDir + 'English.lng');
    lEDate.Caption := d;
    MessageDlg(IntToStr(me) + ' messages already existed in the message table,'#13 +
               IntToStr(ma) + ' messages added to the translation table,'#13 +
               IntToStr(md) + ' messages have status <not used anymore>,'#13 +
               IntToStr(ms) + ' invalid messages skipped.',
               mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.aAboutExecute(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
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

  if DebugHook = 0
  then begin;
    ActionMainMenuBar1.ActionClient.Items[3].Visible := False;
    ActionMainMenuBar1.ActionClient.Items[4].Visible := False;
  end;
  aScanMsg.Enabled := False;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: Tregistry;
  Key: String;
  r: Integer;
begin
  if Changed
  then begin;
    r := MessageDlg('There are unsaved changes.'#13#13 +
                    'Do you want save them before closing this application?',
                    mtConfirmation,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then aSaveExecute(Self)
    else
      if r = mrCancel
      then begin;
        Action := caNone;
        Exit;
      end;
  end;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
  Key := Name+'.Top';
  Reg.WriteInteger(key,Top);
  Key := Name+'.Left';
  Reg.WriteInteger(key,Left);
  Reg.CloseKey;
  Reg.Destroy;

  lvLF.OnSelectItem := nil;
  slLFOrg.Free;
  slLFTrn.Free;
end;

procedure TFormMain.aOpenExecute(Sender: TObject);
var
  Reg: TRegistry;
  ODir,Key: String;
  item: TListItem;
  i,j,r,md: Integer;
  st: String;
begin
  if Changed
  then begin;
    r := MessageDlg('There are unsaved changes.'#13#13 +
                    'Do you want save them before opening a new language file?',
                    mtConfirmation,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then aSaveExecute(Self)
    else
      if r = mrCancel
      then Exit;
  end;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
  Key := 'Language files directory';
  if Reg.ValueExists(key)
  then ODir := Reg.ReadString(key)
  else ODir := '';
  Reg.CloseKey;
  Reg.Destroy;

  odFile.InitialDir := ODir;
  if odFile.Execute
  then begin;
    lVersion.Caption := 'Unknown';
    lEDate.Caption := 'Unknown';
    lTDate.Caption := 'Unknown';

    if pos('english.lng',LowerCase(odFile.FileName)) > 0
    then begin;
      MessageDlg('You can''t open the English language file since that file is ' +
                 'the base for all language files',
                  mtError,[mbOK],0);
      exit;
    end;
    if not FileExists(ExtractFilePath(odFile.FileName) + 'English.lng')
    then begin;
      MessageDlg('The file "English.lng" is missing in the directory of the ' +
                 'language file you selected.'#13 +
                 'You have to have the English file in the same directory as the ' +
                 'language file you want to edit!',
                 mtError,[mbOK],0);
      exit;
    end;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\SOFTWARE\LlamaWare\LanguageTool',True);
    Key := 'Language files directory';
    Reg.WriteString(key,ExtractFilePath(odFile.FileName));
    Reg.CloseKey;
    Reg.Destroy;

    Screen.Cursor := crHourGlass;
    ActiveDir := ExtractFilePath(odFile.FileName);
    ActiveFile := ExtractFileName(odFile.FileName);
    FormMain.Caption := 'LlamaWare Language Tool: ' + ActiveFile;
    lvLF.Items.BeginUpdate;
    lvLF.Clear;
    lvLF.Items.EndUpdate;
    Application.ProcessMessages;
    lvLF.Items.BeginUpdate;

    slLFTrn.LoadFromFile(odFile.FileName);

    slLFOrg.Clear;
    slLFOrg.LoadFromFile(ExtractFilePath(odFile.FileName) + 'English.lng');
    for i := 0 to slLFOrg.Count - 1 do begin;
      if lowercase(leftstr(slLFOrg[i],1)) = 'v'
      then begin;
        lVersion.Caption := trim(slLFOrg[i]);
        continue;
      end;
      if lowercase(leftstr(slLFOrg[i],1)) = 'd'
      then begin;
        lEDate.Caption := rightstr(trim(slLFOrg[i]),length(trim(slLFOrg[i]))-1);
        continue;
      end;

      Split(slLFOrg[i]);
      if (aType <> 'p') and
         (aType <> 'm')
      then continue;

      if aType = 'm'
      then aType := trim(aType);

      Key := aType +
             aForm + '.' +
             aComp + '.' +
             aProp;
      if slLFTrn.IndexOfName(Key) < 0
      then st := 'n'
      else
        if aType = 'p'
        then
          if slLFTrn.Values[Key] <> slLFOrg.Values[Key]
          then st := 'y'
          else st := 's'
        else begin;
          j := slLFTrn.IndexOfName(Key);
          Split(slLFTrn[j]);
          if aProp <> aValue
          then st := 'y'
          else st := 's';
        end;
      item := lvLF.Items.Add;
      item.Caption := aType;
      item.SubItems.Add(aForm);
      item.SubItems.Add(aComp);
      if aType = 'p'
      then begin;
        item.SubItems.Add(aProp);
        item.SubItems.Add(aValue);
        item.SubItems.Add(st);
      end
      else begin;
        item.SubItems.Add('');
        item.SubItems.Add(aProp);
        item.SubItems.Add(st);
      end;
    end;
    lvLF.Items.EndUpdate;

    for i := slLFTrn.Count - 1 downto 0 do begin;
      if lowercase(leftstr(slLFTrn[i],1)) = 'd'
      then lTDate.Caption := rightstr(trim(slLFTrn[i]),length(trim(slLFTrn[i]))-1);

      if (lowercase(leftstr(slLFTrn[i],1)) = 'v') or
         (lowercase(leftstr(slLFTrn[i],1)) = 'd')
      then slLFTrn.Delete(i);
    end;
    md := 0;
    for i := 0 to slLFTrn.Count - 1 do begin;
      if LeftStr(slLFTrn[i],19) = '<not used anymore>m'
      then slLFTrn[i] := copy(slLFTrn[i],19,length(slLFTrn[i])-18);
      Split(slLFTrn[i]);
      if aType <> 'm'
      then continue;
      if slLFOrg.IndexOfName('m' + aForm + '.message.' + aProp) < 0
      then begin;
        slLFTrn[i] := '<not used anymore>' + slLFTrn[i];
        inc(md);
        Changed := True;
      end;
    end;

    lTotalOrg.Caption := IntToStr(slLFOrg.Count-2);
    lTotalTrn.Caption := IntToStr(slLFTrn.Count);
    lTotalDisp.Caption := IntToStr(lvLF.Items.Count);
    cbTranslated.Checked := True;
    cbIdentical.Checked := True;
    cbNotTranslated.Checked := True;
    aScanMsg.Enabled := True;
    Screen.Cursor := crDefault;

    if md > 0
    then MessageDlg(IntToStr(md) + ' messages set to <not used anymore>',
                    mtInformation,[mbOK],0);
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  slLFOrg := TStringList.Create;
  slLFTrn := TStringList.Create;
  Changed := False;
end;

procedure TFormMain.lvLFCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.SubItems[4] = 'n'
  then lvLF.Canvas.Brush.Color := clRed
  else
    if Item.SubItems[4] = 's'
    then lvLF.Canvas.Brush.Color := $00409FFF
    else
      if Item.Index mod 2 = 0
      then lvLF.Canvas.Brush.Color := $00F9FAFB
      else lvLF.Canvas.Brush.Color := clWhite;
  lvLF.Canvas.FillRect(Item.DisplayRect(drBounds));
end;

procedure TFormMain.lvLFSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  Key,st: String;
  i: Integer;
begin
  mT.Text := trim(mT.Text);
  if Selected = False
  then begin;
    if (not Changed) and
       (mt.Text <> mtSave)
    then begin;
      FormMain.Caption := FormMain.Caption + ' (Changed)';
      Changed := True;
    end;

    if pos('~',mt.Text) > 0
    then begin;
      MessageDlg('Invalid character "~" used in translation.',
                 mtError,[mbOK],0);
      abort;
    end;

    if mT.Text = ''
    then st := 'n'
    else
      if mT.Text <> mO.Text
      then st := 'y'
      else st := 's';

    if Item.Caption = 'p'
    then begin;
      Key := Item.Caption +
             Item.SubItems[0] + '.' +
             Item.SubItems[1] + '.' +
             Item.SubItems[2];
      i := slLFTrn.IndexOfName(Key);
      if i >= 0
      then begin;
        item.SubItems[4] := st;
        if st = 'n'
        then slLFTrn.Delete(i)
        else slLFTrn[i] := Key + '=' + StringReplace(mT.Text,#13#10,'~',[rfReplaceAll]);
      end
      else begin;
        if st <> 'n'
        then begin;
          slLFTrn.Add(Key + '=' + StringReplace(mT.Text,#13#10,'~',[rfReplaceAll]));
          item.SubItems[4] := st;
        end;
      end;
    end
    else begin;
      Key := Item.Caption +
             Item.SubItems[0] + '.' +
             Item.SubItems[1] + '.' +
             Item.SubItems[3];
      i := slLFTrn.IndexOfName(Key);
      if i >= 0
      then begin;
        item.SubItems[4] := st;
        if st = 'n'
        then slLFTrn.Delete(i)
        else slLFTrn[i] := Key + '=' + StringReplace(mT.Text,#13#10,'~',[rfReplaceAll]);
      end
      else begin;
        if st <> 'n'
        then begin;
          slLFTrn.Add(Key + '=' + StringReplace(mT.Text,#13#10,'~',[rfReplaceAll]));
          item.SubItems[4] := st;
        end;
      end;
    end;
  end
  else begin;
    mO.Clear;
    mO.Text := StringReplace(Item.SubItems[3],'~',#13#10,[rfReplaceAll]);

    mT.Clear;
    if Item.Caption = 'p'
    then begin;
      Key := Item.Caption +
             Item.SubItems[0] + '.' +
             Item.SubItems[1] + '.' +
             Item.SubItems[2];
      if slLFTrn.IndexOfName(Key) >= 0
      then mT.Text := StringReplace(slLFTrn.Values[Key],'~',#13#10,[rfReplaceAll]);
    end
    else begin;
      Key := Item.Caption +
             Item.SubItems[0] + '.' +
             Item.SubItems[1] + '.' +
             Item.SubItems[3];
      if slLFTrn.IndexOfName(Key) >= 0
      then mT.Text := StringReplace(slLFTrn.Values[Key],'~',#13#10,[rfReplaceAll])
    end;
  end;
  mtSave := mT.Text;
end;

procedure TFormMain.bRebuildClick(Sender: TObject);
var
  i,j: Integer;
  Key,st: String;
  item: TListItem;
begin
  Screen.Cursor := crHourGlass;

  lvLF.Items.BeginUpdate;
  lvLF.Clear;
  lvLF.Items.EndUpdate;
  Application.ProcessMessages;
  lvLF.Items.BeginUpdate;

  for i := 0 to slLFOrg.Count - 1 do begin;
    Split(slLFOrg[i]);

    if (aType <> 'm') and
       (aType <> 'p')
    then continue;

    if (aType = 'p') and
       (not cbScreenValues.Checked)
    then continue;
    if (aType = 'm') and
       (not cbMessages.Checked)
    then continue;

    Key := aType +
           aForm + '.' +
           aComp + '.' +
           aProp;
    if slLFTrn.IndexOfName(Key) < 0
    then st := 'n'
    else
      if aType = 'p'
      then
        if slLFTrn.Values[Key] <> slLFOrg.Values[Key]
        then st := 'y'
        else st := 's'
      else begin;
        j := slLFTrn.IndexOfName(Key);
        Split(slLFTrn[j]);
        if aProp <> aValue
        then st := 'y'
        else st := 's';
      end;
    if (st = 'y') and
       (not cbTranslated.Checked)
    then continue;
    if (st = 's') and
       (not cbIdentical.Checked)
    then continue;
    if (st = 'n') and
       (not cbNotTranslated.Checked)
    then continue;

    item := lvLF.Items.Add;
    item.Caption := aType;
    item.SubItems.Add(aForm);
    item.SubItems.Add(aComp);
    if aType = 'p'
    then begin;
      item.SubItems.Add(aProp);
      item.SubItems.Add(aValue);
      item.SubItems.Add(st);
    end
    else begin;
      item.SubItems.Add('');
      item.SubItems.Add(aprop);
      item.SubItems.Add(st);
    end;
  end;
  lvLF.Items.EndUpdate;
  lTotalOrg.Caption := IntToStr(slLFOrg.Count-2);
  lTotalTrn.Caption := IntToStr(slLFTrn.Count);
  lTotalDisp.Caption := IntToStr(lvLF.Items.Count);

  Screen.Cursor := crDefault;
end;

procedure TFormMain.aSaveExecute(Sender: TObject);
var
  bf,d: String;
  dt: TDateTime;
begin
  if lvLF.Selected <> nil
  then lvLFSelectItem(Self,lvLF.Selected,False);

  dt := now();
  bf := ActiveFile + '.' +
        FormatDateTime('yyyy-mm-dd hh:mm:ss',dt) + '.save';
  RenameFile(ActiveDir + ActiveFile,
             ActiveDir + bf);

  d := FormatDateTime('yyyy-mm-dd hh:mm:ss',dt);
  slLFTrn.Sort;
  slLFTrn.Insert(0,'D'+d);
  slLFTrn.Insert(0,lVersion.Caption);
  slLFTrn.SaveToFile(ActiveDir + ActiveFile);
  slLFTrn.Delete(0);
  slLFTrn.Delete(0);

  Changed := False;
  lTDate.Caption := d;
  FormMain.Caption := 'LlamaWare Language Tool: ' + ActiveFile;
end;

procedure TFormMain.lvLFColumnClick(Sender: TObject; Column: TListColumn);
begin
  lvLFColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
  if lvLF.Selected <> nil
  then lvLF.Selected.MakeVisible(False);
end;

procedure TFormMain.lvLFCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
var
  ix: Integer;
begin
  if lvLFColumnToSort = 0
  then Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
    ix := lvLFColumnToSort - 1;
    Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix]);
  end
end;

procedure TFormMain.mTExit(Sender: TObject);
begin
  if lvLF.Selected <> nil
  then lvLFSelectItem(Self,lvLF.Selected,False);
end;

end.



