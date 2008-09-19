unit DreamBoxEditFTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, registry, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, FileCtrl, LWBtn, IdTelnet,
  IdAntiFreezeBase, IdAntiFreeze, StrUtils, Sockets, IdHTTP,
  IdExplicitTLSClientServerBase;

type
  TFormFTP = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    bBack: TButton;
    FTP: TIdFTP;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Label4: TLabel;
    eLDir: TEdit;
    bBrowse: TLWButton;
    bSend: TLWButton;
    bReload: TLWButton;
    bReceive: TLWButton;
    Telnet: TIdTelnet;
    Timer1: TTimer;
    bReboot: TLWButton;
    bCustomCmd: TLWButton;
    cbSelectiveReceive: TCheckBox;
    Label14: TLabel;
    cbProfileName: TComboBox;
    cbCleanUpDreambox: TCheckBox;
    lIPAddress: TLabel;
    eIPAddress: TEdit;
    cbAutoReload: TCheckBox;
    IdAntiFreeze1: TIdAntiFreeze;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bReceiveClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
    procedure FTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure bBrowseClick(Sender: TObject);
    procedure TelnetStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure TelnetDataAvailable(Sender: TIdTelnet; const Buffer: String);
    procedure Timer1Timer(Sender: TObject);
    procedure bRebootClick(Sender: TObject);
    procedure bCustomCmdClick(Sender: TObject);
    procedure bReloadClick(Sender: TObject);
    procedure bCustomCmdMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cbProfileNameSelect(Sender: TObject);
  private
    { Private declarations }
    TelnetStage: Integer;
    procedure SetButtons();
    procedure SendTelnetCmd(const cmd: String);
  public
    { Public declarations }
    function FTPGetFiles(const Dir: String; const Silent, Selective, Compare: Boolean): Boolean;
  end;

var
  FormFTP: TFormFTP;

implementation

uses DreamBoxMain, DreamBoxEditSelectiveReceive;

{$R *.dfm}

function TFormFTP.FTPGetFiles(const Dir: String;
                              const Silent, Selective, Compare: Boolean): Boolean;
var
  error,fnd: Boolean;
  DBFiles,DBFilesSTC,DBFilesSTCShared,DBFilesU: TStringList;
  tf: TextFile;
  s,dbSatPath,fn,svfn,etfn,erfn: String;
  i,l,sv,ib,ie: Integer;
  Favs: TStringList;
label
  disc;
begin
  Result := False;

  if Dir = ''
  then begin;
    MessageDlg('Internal error: no directory for FTP Get specified.',
               mtError,[mbOK],0);
    exit;
  end;

  FormMain.Log('i',FormMain.lwLngTrns(name,['Starting FTP Download from Dreambox.']));

  screen.Cursor := crHourGlass;
  error := False;
  FTP.Host := FormMain.DBIP;
  FTP.Port := StrToInt(FormMain.DBFTPPort);
  FTP.Username := FormMain.DBUsername;
  FTP.Password := FormMain.DBPassword;
  FTP.Passive := FormMain.FTPPassive;
  FTP.ReadTimeout := 10000;

  try
    FTP.Connect;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Could not connect to Dreambox. Check IP Address, network settings and status of Dreambox.']));
    FormMain.log('w',FormMain.lwLngTrns(name,['Could not connect to Dreambox. Check IP Address, network settings and status of Dreambox.']));
    error := true;
    Screen.Cursor := crDefault;
    if silent
    then MessageDlg(FormMain.lwLngTrns(name,['Could not connect to Dreambox. Check IP Address, network settings and status of Dreambox.']),
                    mtError,[mbOK],0);
  end;
  if error
  then exit;

  DBFiles := TStringList.Create;
  DBFilesSTC := TStringList.Create;
  DBFilesSTCShared := TStringList.Create;
  DBFilesU := TSTringList.Create;

  try FTP.Login;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Could not login to Dreambox. Check username and password.']));
    FormMain.log('w',FormMain.lwLngTrns(name,['Could not login to Dreambox. Check username and password.']));
    error := true;
  end;
  if error
  then goto disc;

  Memo1.Lines.Add(FormMain.lwLngTrns(name,['Dreambox response: %',FTP.LoginMsg.Text[0]]));
  FormMain.log('i',FormMain.lwLngTrns(name,['Dreambox response: %',FTP.LoginMsg.Text[0]]));

  Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                          FormMain.PathServices]));
  FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                           FormMain.PathServices]));
  try
    Ftp.List(DBFiles,FormMain.PathServices + '*',False);
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
    error := true;
  end;
  if error
  then goto disc;
  FormMain.log('i',FormMain.lwLngTrns(name,['Files on Dreambox in %:',
                                            FormMain.PathServices]));
  for i := 0 to DBFiles.Count - 1 do begin;
    FormMain.log('i','-  ' + DBFIles[i]);
  end;

  Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                          FormMain.PathUserBouquets]));
  FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                           FormMain.PathUserBouquets]));
  try
    Ftp.List(DBFilesU,FormMain.PathUserBouquets + '*',False);
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
    error := true;
  end;
  if error
  then goto disc;
  FormMain.log('i',FormMain.lwLngTrns(name,['Files on Dreambox in %:',
                                            FormMain.PathUserBouquets]));
  for i := 0 to DBFilesU.Count - 1 do begin;
    FormMain.log('i','-  ' + DBFIlesU[i]);
  end;
  if (DBFiles.IndexOf(FormMain.PathServices + 'services') < 0) and
     (DBFiles.IndexOf(FormMain.PathServices + 'lamedb') < 0)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Neither a "services" nor a "lamedb" file ' +
                                             'was found in directory "%" on the Dreambox. ' +
                                             FormMain.PathServices]));
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Check the dream path settings on the option ' +
                                             'panel to point to the correct Dreambox ' +
                                             'directories and try again.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Neither a "services" nor a "lamedb" file ' +
                                             'was found in directory "%" on the Dreambox.',
                                             FormMain.PathServices]));
    error := true;
  end;
  if error
  then goto disc;

  if DBFiles.IndexOf(FormMain.PathServices + 'lamedb') >= 0
  then begin;
    if not Compare
    then
      FormMain.SetVersionDefaults(3);
      sv := 3;
      svfn := 'lamedb';
      etfn := 'bouquets.tv';
      erfn := 'bouquets.radio';
  end
  else begin;
    if not Compare
    then FormMain.SetVersionDefaults(2);
    sv := 2;
    svfn := 'services';
    etfn := 'userbouquets.tv.epl';
    erfn := 'userbouquets.radio.epl';
  end;

  { Always try to get "settings" file for version 3 to check blacklist/whitelist settings }
  if (sv = 3) and
     (DBFiles.IndexOf(FormMain.PathServices + 'settings') >= 0)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                             FormMain.PathServices + 'settings']));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                             FormMain.PathServices + 'settings']));
    try FTP.Get(FormMain.PathServices + 'settings',Dir + '\settings',True,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                          'settings']));
      FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                           'settings']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  if (not selective) or
     (FormSelectiveReceive.cbServices.Checked)
  then begin;
    fn := svfn;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                             FormMain.PathServices + fn]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                              FormMain.PathServices + fn]));
    try FTP.Get(FormMain.PathServices + fn,Dir + '\' + fn,True,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                         fn]));
      FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                          fn]));
      error := true;
    end;
    if error
    then goto disc;

    if (sv = 2) and
       (DBFiles.IndexOf(FormMain.PathServices + 'services.locked') >= 0)
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'services.locked']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'services.locked']));
      try FTP.Get(FormMain.PathServices + 'services.locked',Dir + '\services.locked',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'services.locked']));
        FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'services.locked']));
        error := true;
      end;
      if error
      then goto disc;
    end;

    if (sv = 3) and
       (DBFiles.IndexOf(FormMain.PathServices + 'whitelist') >= 0)
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'whitelist']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'whitelist']));
      try FTP.Get(FormMain.PathServices + 'whitelist',Dir + '\whitelist',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'whitelist']));
        FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'whitelist']));
        error := true;
      end;
      if error
      then goto disc;
    end;

    if (sv = 3) and
       (DBFiles.IndexOf(FormMain.PathServices + 'blacklist') >= 0)
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'blacklist']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                               FormMain.PathServices + 'blacklist']));
      try FTP.Get(FormMain.PathServices + 'blacklist',Dir + '\blacklist',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'blacklist']));
        FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'blacklist']));
        error := true;
      end;
      if error
      then goto disc;
    end;
  end;

  if (sv = 2) and
    ((not selective) or
     (FormSelectiveReceive.cbBouquets.Checked))
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                        FormMain.PathServices + 'bouquets']));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                         FormMain.PathServices + 'bouquets']));
    try FTP.Get(FormMain.PathServices + 'bouquets',Dir + '\bouquets',True,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                          'bouquets']));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                           'bouquets']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  if (not selective) or
     (FormSelectiveReceive.cbUserBouquetsTV.Checked)
  then begin;
    fn := etfn;
    if DBFilesU.IndexOf(FormMain.PathUserBouquets + fn) >= 0
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                          FormMain.PathUserBouquets + fn]));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                           FormMain.PathUserBouquets + fn]));
      try FTP.Get(FormMain.PathUserBouquets + fn,Dir + '\' + fn,True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                           fn]));
        FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            fn]));
        error := true;
      end;
      if error
      then goto disc;
    end
    else begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not found on the Dreambox.',
                                         fn]));
      FormMain.Log('i',FormMain.lwLngTrns(name,['File "%" not found on the Dreambox.',
                                          fn]));
    end;

    if FileExists(Dir + '\' + fn)
    then begin;
      Favs := TStringList.Create;
      AssignFile(tf,Dir + '\' + fn);
      SetLineBreakStyle(tf,tlbsCRLF);
      Reset(tf);
      if sv = 2
      then begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (LowerCase(LeftStr(s,8)) = '#service') and
             (LowerCase(RightStr(s,3)) = '.tv')
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = '/'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            favs.Add(s);
          end;
        end;
      end
      else begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if LowerCase(LeftStr(s,8)) = '#service'
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = ':'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            { First extract filename with this version>2 settings set }
            if pos('"',s) > 0
            then begin;
              ib := pos('"',s);
              ie := posex('"',s,ib+1);
              s := copy(s,ib+1,ie-ib-1);
            end;
            favs.Add(s);
          end;
        end;
      end;
      CloseFile(tf);

      { for version > 2 add all found alternatives.*.tv to list }
      if sv > 1
      then begin;
        l := Length(FormMain.PathUserBouquets) + 13;
        for i := 0 to DBFiles.Count - 1 do begin;
          if (LowerCase(LeftStr(DBFiles[i],l)) = LowerCase(FormMain.PathUserBouquets) +
                                                 'alternatives.') and
             (LowerCase(RightStr(DBFiles[i],3)) = '.tv')
          then begin;
            favs.Add(ExtractFileName(StringReplace(DBFiles[i],'/','\',[rfReplaceAll])));
          end;
        end;
      end;

      { get Files }
      for i := 0 to Favs.Count - 1 do begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                            FormMain.PathUserBouquets + Favs[i]]));
        FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                             FormMain.PathUserBouquets + Favs[i]]));
        try FTP.Get(FormMain.PathUserBouquets + Favs[i],Dir + '\' + Favs[i],True,False);
        Except
          Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',Favs[i]]));
          FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',Favs[i]]));
          error := true;
        end;
        if error
        then goto disc;
      end;
      Favs.Free;
    end;
  end;

  if (not selective) or
     (FormSelectiveReceive.cbUserBouquetsRadio.Checked)
  then begin;
    fn := erfn;
    if DBFilesU.IndexOf(FormMain.PathUserBouquets + fn) >= 0
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                         FormMain.PathUserBouquets + fn]));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                          FormMain.PathUserBouquets + fn]));
      try FTP.Get(FormMain.PathUserBouquets + fn,Dir + '\' + fn,True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                           fn]));
        FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            fn]));
        error := true;
      end;
      if error
      then goto disc;
    end
    else begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not found on the Dreambox.',
                                         fn]));
      FormMain.Log('i',FormMain.lwLngTrns(name,['File "%" not found on the Dreambox.',
                                          fn]));
    end;

    if FileExists(Dir + '\' + fn)
    then begin;
      Favs := TStringList.Create;
      AssignFile(tf,Dir + '\' + fn);
      SetLineBreakStyle(tf,tlbsCRLF);
      Reset(tf);
      if sv = 2
      then begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if (LowerCase(LeftStr(s,8)) = '#service') and
             (LowerCase(RightStr(s,6)) = '.radio')
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = '/'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            favs.Add(s);
          end;
        end;
      end
      else begin;
        while not eof(tf) do begin;
          ReadLn(tf,s);
          if LowerCase(LeftStr(s,8)) = '#service'
          then begin;
            for i := length(s) downto 0 do begin;
              if s[i] = ':'
              then break;
            end;
            s := RightStr(s,length(s)-i);
            { First extract filename with this version>2 settings set }
            if pos('"',s) > 0
            then begin;
              ib := pos('"',s);
              ie := posex('"',s,ib+1);
              s := copy(s,ib+1,ie-ib-1);
            end;
            favs.Add(s);
          end;
        end;
      end;
      CloseFile(tf);

      { for version > 2 add all found alternatives.*.radio to list }
      if sv > 1
      then begin;
        l := Length(FormMain.PathUserBouquets) + 13;
        for i := 0 to DBFiles.Count - 1 do begin;
          if (LowerCase(LeftStr(DBFiles[i],l)) = LowerCase(FormMain.PathUserBouquets) +
                                                 'alternatives.') and
             (LowerCase(RightStr(DBFiles[i],6)) = '.radio')
          then begin;
            favs.Add(ExtractFileName(StringReplace(DBFiles[i],'/','\',[rfReplaceAll])));
          end;
        end;
      end;

      { get Files }
      for i := 0 to Favs.Count - 1 do begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                            FormMain.PathUserBouquets + Favs[i]]));
        FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                             FormMain.PathUserBouquets + Favs[i]]));
        try FTP.Get(FormMain.PathUserBouquets + Favs[i],Dir+'\' + Favs[i],True,False);
        Except
          Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',Favs[i]]));
          FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',Favs[i]]));
          error := true;
        end;
        if error
        then goto disc;
      end;
      Favs.Free;
    end;
  end;

  if (not selective) or
     (FormSelectiveReceive.cbSatellitesXML.Checked)
  then begin;
    { Get list from normal directory for satellites/terrestrial/cables in DBFilesSTC }
    dbSatPath := FormMain.PathSatellites;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                             dbSatPath]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                              dbSatPath]));
    DBFilesSTC.Clear;
    try
      Ftp.List(DBFilesSTC,dbSatPath + '*',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
      FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
      error := true;
    end;
    if error
    then begin;
      error := False;
      goto disc;
    end;
    FormMain.log('i',FormMain.lwLngTrns(name,['Files on Dreambox in %:',
                                              dbSatPath]));
    for i := 0 to DBFilesSTC.Count - 1 do begin;
      FormMain.log('i','-  ' + DBFilesSTC[i]);
    end;

    { Get list from shared directory for satellites/terrestrial/cables in DBFilesSTCShared }
    dbSatPath := '/share/';
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                             dbSatPath]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file list of "%" **',
                                              dbSatPath]));
    DBFilesSTCShared.Clear;
    try
      Ftp.List(DBFilesSTCShared,dbSatPath + '*',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
      FormMain.log('e',FormMain.lwLngTrns(name,['Error retrieving file list from the Dreambox.']));
      error := true;
    end;
    if error
    then begin;
      error := False;
      goto disc;
    end;
    FormMain.log('i',FormMain.lwLngTrns(name,['Files on Dreambox in %:',
                                              dbSatPath]));
    for i := 0 to DBFilesSTCShared.Count - 1 do begin;
      FormMain.log('i','-  ' + DBFilesSTCShared[i]);
    end;

    { Satellites }
    fnd := False;
    dbSatPath := FormMain.PathSatellites;
    if DBFilesSTC.IndexOf(dbSatPath + 'satellites.xml') >= 0
    then fnd := True
    else begin;
      dbSatPath := '/share/';
      if DBFilesSTCShared.IndexOf(dbSatPath + 'satellites.xml') >= 0
      then fnd := True;
    end;
    if fnd
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                          dbSatPath + 'satellites.xml']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                           dbSatPath  + 'satellites.xml']));
      try FTP.Get(dbSatPath + 'satellites.xml',Dir + '\satellites.xml',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'satellites.xml']));
        FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'satellites.xml']));
      end;
    end;

    { Terrestrial }
    fnd := False;
    dbSatPath := FormMain.PathSatellites;
    if DBFilesSTC.IndexOf(dbSatPath + 'terrestrial.xml') >= 0
    then fnd := True
    else begin;
      dbSatPath := '/share/';
      if DBFilesSTCShared.IndexOf(dbSatPath + 'terrestrial.xml') >= 0
      then fnd := True;
    end;
    if fnd
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                          dbSatPath + 'terrestrial.xml']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                           dbSatPath  + 'terrestrial.xml']));
      try FTP.Get(dbSatPath + 'terrestrial.xml',Dir + '\terrestrial.xml',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'terrestrial.xml']));
        FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'terrestrial.xml']));
      end;
    end;

    { Cables }
    fnd := False;
    dbSatPath := FormMain.PathSatellites;
    if DBFilesSTC.IndexOf(dbSatPath + 'cables.xml') >= 0
    then fnd := True
    else begin;
      dbSatPath := '/share/';
      if DBFilesSTCShared.IndexOf(dbSatPath + 'cables.xml') >= 0
      then fnd := True;
    end;
    if fnd
    then begin;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                          dbSatPath + 'cables.xml']));
      FormMain.log('i',FormMain.lwLngTrns(name,['** Retrieving file "%" **',
                                           dbSatPath  + 'cables.xml']));
      try FTP.Get(dbSatPath + 'cables.xml',Dir + '\cables.xml',True,False);
      Except
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                            'cables.xml']));
        FormMain.Log('e',FormMain.lwLngTrns(name,['Error retrieving file "%" from the Dreambox.',
                                             'cables.xml']));
      end;
    end;
  end;

disc:
  DBFiles.Free;
  DBFilesSTC.Free;
  DBFilesSTCShared.Free;
  DBFilesU.Free;
  try
    FTP.Disconnect;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Could not disconnect from Dreambox.']));
    FormMain.Log('e',FormMain.lwLngTrns(name,['Could not disconnect from Dreambox.']));
    error := true;
  end;

  Screen.Cursor := crDefault;

  if error
  then exit;

  Result := True;
end;

procedure TFormFTP.SetButtons();
begin
  bBrowse.InactiveColor := clBtnFace;
  bBrowse.ActiveColor := clBtnFace;
  bReceive.InactiveColor := clBtnFace;
  bReceive.ActiveColor := clBtnFace;
  bSend.InactiveColor := clBtnFace;
  bSend.ActiveColor := clBtnFace;
  bReload.InactiveColor := clBtnFace;
  bReload.ActiveColor := clBtnFace;
  bReboot.InactiveColor := clBtnFace;
  bReboot.ActiveColor := clBtnFace;
  bCustomCmd.InactiveColor := clBtnFace;
  bCustomCmd.ActiveColor := clBtnFace;
  if eLDir.Text = ''
  then begin;
    bBrowse.InactiveColor := $00CCFFFF;
    bBrowse.ActiveColor := $00CCFFFF;
    bBrowse.Default := True;
  end
  else
    if not FileExists(eLDir.Text + '\' + FormMain.ServFilename)
    then begin;
      bReceive.InactiveColor := $00CCFFFF;
      bReceive.ActiveColor := $00CCFFFF;
      bReceive.Default := True;
    end
    else begin;
      bSend.InactiveColor := $00CCFFFF;
      bSend.ActiveColor := $00CCFFFF;
      bSend.Default := True;
      bReload.InactiveColor := $00ECFFFF;
      bReload.ActiveColor := $00ECFFFF;
      bReboot.InactiveColor := $00ECFFFF;
      bReboot.ActiveColor := $00ECFFFF;
      bCustomCmd.InactiveColor := $00ECFFFF;
      bCustomCmd.ActiveColor := $00ECFFFF;
    end;
end;

procedure TFormFTP.SendTelnetCmd(const cmd: String);
var
  i : integer;
  s : string;
begin
  s := Cmd;
  for i := 1 to length(s) do
    Telnet.SendCh(s[i]);
  Telnet.SendCh(#13);
end;

procedure TFormFTP.FormShow(Sender: TObject);
var
  Reg: Tregistry;
  Key: String;
  i: Integer;
begin
  Caption := FormMain.lwLngTrns(name,['FTP - Transfer Files']);

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

  cbProfileName.Items.Clear;
  if Reg.ValueExists('Profiles')
  then begin;
    for i := 0 to Reg.ReadInteger('Profiles') - 1 do begin;
      cbProfileName.Items.Add(Reg.ReadString('Profiles Name ' + IntToStr(i)));
      if cbProfileName.Items[i] = FormMain.ProfilesName
      then cbProfileName.ItemIndex := i;
    end;
  end;
  if Reg.ValueExists('CleanUpDreambox')
  then cbCleanUpDreamBox.Checked := Reg.ReadBool('CleanUpDreambox')
  else begin;
    cbCleanUpDreambox.Checked := True;
    Reg.WriteBool('CleanUpDreambox',cbCleanUpDreambox.Checked);
  end;
  if Reg.ValueExists('AutoReload')
  then cbAutoReload.Checked := Reg.ReadBool('AutoReload')
  else begin;
    cbAutoReload.Checked := True;
    Reg.WriteBool('AutoReload',cbAutoReload.Checked);
  end;
  if FormMain.Dir = ''
  then
    if Reg.ValueExists('LastUsedDirectory')
    then FormMain.Dir := Reg.ReadString('LastUsedDirectory');
  Reg.CloseKey;
  Reg.Destroy;

  eIPAddress.Text := FormMain.DBIP;
  eLDir.Text := FormMain.Dir;
  Memo1.Lines.Clear;
  SetButtons();
  TelnetStage := 0;
  if FormMain.UserTelnetCmd <> ''
  then bCustomCmd.Visible := True
  else bCustomCmd.Visible := False;
  cbSelectiveReceive.Checked := False;
  bReboot.Visible := FormMain.ShowReboot;
  bBack.Enabled := True;
end;

procedure TFormFTP.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: Tregistry;
  Key: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);

  Reg.WriteBool('CleanUpDreambox',cbCleanUpDreambox.Checked);
  Reg.WriteBool('AutoReload',cbAutoReload.Checked);

  Key := Name+'.Top';
  Reg.WriteInteger(key,Top);
  Key := Name+'.Left';
  Reg.WriteInteger(key,Left);
  Reg.CloseKey;
  Reg.Destroy;
  
end;

procedure TFormFTP.bReceiveClick(Sender: TObject);
begin
  if FormMain.Dir = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'You must select a local directory before you can transfer the ' +
               'files from the Dreambox to your PC.']),
               mtError,[mbOK],0);
    exit;
  end;
  if not DirectoryExists(FormMain.Dir)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Directory "%" does not exist on your PC. Please first select ' +
               'a valid directory.',FormMain.Dir]),
               mtError,[mbOK],0);
    exit;
  end;

  if (FileExists(FormMain.Dir+'\'+'lamedb')) or
     (FileExists(FormMain.Dir+'\'+'services')) or
     (FileExists(FormMain.Dir+'\'+'bouquets')) or
     (FileExists(FormMain.Dir+'\'+'satellites.xml'))
  then begin;
    if MessageDlg(FormMain.lwLngTrns(name,[
                  'Directory "%" already contains ' +
                  'one or more of the files you are going to download.~~' +
                  'Are you sure you want to overwrite them?',FormMain.Dir]),
                  mtConfirmation,[mbYes,mbNo],0) <> mrYes
    then exit;
  end;

  if (cbSelectiveReceive.Checked) and
     (FormSelectiveReceive.ShowModal = mrAbort)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Aborting receive files on user request.']));
    FormMain.Log('e',FormMain.lwLngTrns(name,['Aborting receive files on user request.']));
    exit;
  end;

  if FTPGetFiles(FormMain.Dir,False,cbSelectiveReceive.Checked,False)
  then begin;
    FormMain.AutoOpen := True;
    FormMain.tbOpen.Click();
    ModalResult := mrOK;
    if FormMain.ShowResultMsg
    then begin;
      MessageDlg(FormMain.lwLngTrns(name,[
                 'Succesfully received the file-set from the Dreambox.']),
                 mtInformation,[mbOK],0);
      FormMain.log('i',FormMain.lwLngTrns(name,[
                       'Succesfully received the file-set from the Dreambox.']));
    end;
  end
  else begin;
    FormMain.log('e',FormMain.lwLngTrns(name,[
                     'There were errors retrieving the files from the Dreambox.~' +
                     'Check the log for more information.']));
    MessageDlg(FormMain.lwLngTrns(name,[
               'There were errors retrieving the files from the Dreambox.~' +
               'Check the log for more information.']),
               mtError,[mbOK],0);
  end;
end;

procedure TFormFTP.bSendClick(Sender: TObject);
var
  error: Boolean;
  i,r,ib,ie: Integer;
  c,s,f,lfn: String;
  silent: Boolean;
  fsl,DBFilesU: TStringList;
  tf: TextFile;
  fn: String;
  CmdOK: Boolean;
  IdHTTP1: TIdHTTP;
label
  disc;
begin
  if Sender.ClassNameIs('TLWButton')
  then Silent := False
  else Silent := True;

  if FormMain.tbSave.Enabled
  then begin;
    r := MessageDlg(FormMain.lwLngTrns(name,[
                    'There are changes made that are not yet saved!~' +
                    'You have to save them before they can be transferred to the Dreambox!~~' +
                    'Save them now?']),
                    mtWarning,[mbYes,mbNo,mbCancel],0);
    if r = mrYes
    then FormMain.tbSave.Click()
    else
      if r = mrCancel
      then exit;
  end;

  if FormMain.Dir = ''
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'You must select a local directory before you can transfer the '+
               'files from your PC to the Dreambox.']),
               mtError,[mbOK],0);
    exit;
  end;

  if not DirectoryExists(FormMain.Dir)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,[
               'Directory "%" does not exist on your PC. Please first select ' +
               'a valid directory.',FormMain.Dir]),
               mtError,[mbOK],0);
    exit;
  end;

 { if FormMain.ServFilename = ''
  then begin;
    if FileExists(FormMain.Dir + '\' + 'lamedb')
    then FormMain.SetVersionDefaults(3)
    else FormMain.SetVersionDefaults(2);
  end;}

  if not FileExists(FormMain.Dir + '\' + FormMain.ServFilename)
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Directory "%" contains no "%" file.',
                                  FormMain.Dir,'services or lamedb']),
               mtError,[mbOK],0);
    FormMain.Log('e',FormMain.lwLngTrns(name,['Directory "%" contains no "%" file.',
                                        FormMain.Dir,'services or lamedb']));
    exit;
  end;
  if (FormMain.SettingsVersion = 2) and
     (not FileExists(FormMain.Dir + '\' + 'bouquets'))
  then begin;
    MessageDlg(FormMain.lwLngTrns(name,['Directory "%" contains no "%" file.',
                                  FormMain.Dir,'bouquets']),
               mtError,[mbOK],0);
    FormMain.Log('e',FormMain.lwLngTrns(name,['Directory "%" contains no "%" file.',
                                        FormMain.Dir,'bouquets']));
    exit;
  end;

  screen.Cursor := crHourGlass;
  error := False;

  FTP.Host := FormMain.DBIP;
  FTP.Port := StrToInt(FormMain.DBFTPPort);
  FTP.Username := FormMain.DBUsername;
  FTP.Password := FormMain.DBPassword;
  FTP.Passive := FormMain.FTPPassive;
  FTP.ReadTimeout := 10000;

  try
    FTP.Connect;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                    'Could not connect to Dreambox. Check IP Address, ' +
                    'network settings and status of Dreambox.']));
    FormMain.log('e',FormMain.lwLngTrns(name,[
                     'Could not connect to Dreambox. Check IP Address, ' +
                     'network settings and status of Dreambox.']));
    error := true;
    screen.Cursor := crDefault;
    if silent
    then MessageDlg(FormMain.lwLngTrns(name,[
                    'Could not connect to Dreambox. Check IP Address, ' +
                    'network settings and status of Dreambox.']),
                    mtError,[mbOK],0);
  end;
  if error
  then exit;

  DBFilesU := TStringList.Create;

  try FTP.Login;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                    'Could not login to Dreambox. Check username and password.']));
    FormMain.log('e',FormMain.lwLngTrns(name,[
                     'Could not login to Dreambox. Check username and password.']));
    error := true;
  end;
  if error
  then goto disc;

  Memo1.Lines.Add(FormMain.lwLngTrns(name,['Dreambox response: %',FTP.LoginMsg.Text[0]]));
  FormMain.Log('i',FormMain.lwLngTrns(name,['Dreambox response: %',FTP.LoginMsg.Text[0]]));

  try
    Ftp.List(DBFilesU,FormMain.PathUserBouquets+'*',False);
  Except
  end;

  fn := FormMain.ServFilename;
  Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                     FormMain.PathServices + fn]));
  FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                      FormMain.PathServices + fn]));
  try FTP.Put(FormMain.Dir + '\' + fn,FormMain.PathServices + fn,False);
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                       fn]));
    FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                        fn]));
    error := true;
  end;
  if error
  then goto disc;

  if FormMain.SettingsVersion = 2
  then lfn := 'services.locked'
  else
    if FormMain.BlackList
    then lfn := 'blacklist'
    else lfn := 'whitelist';
  if FileExists(FormMain.Dir + '\' + lfn)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathServices + lfn]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                         FormMain.PathServices + lfn]));
    try FTP.Put(FormMain.Dir + '\' + lfn,FormMain.PathServices + lfn,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          lfn]));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                           lfn]));
      error := true;
    end;
    if error
    then goto disc;
  end;

  if FormMain.SettingsVersion = 2
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                       FormMain.PathServices + 'bouquets']));
    FormMain.Log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathServices + 'bouquets']));
    try FTP.Put(FormMain.Dir + '\bouquets',FormMain.PathServices + 'bouquets',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                         'bouquets']));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          'bouquets']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  fn := FormMain.EplTVFilename;
  if FileExists(FormMain.Dir + '\' + fn)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                       FormMain.PathUserBouquets + fn]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathUserBouquets + fn]));
    try FTP.Put(FormMain.Dir + '\' + fn,FormMain.PathUserBouquets + fn,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                         fn]));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          fn]));
      error := true;
    end;
    if error
    then goto disc;

    fsl := TStringList.Create;
    fsl.Clear;
    AssignFile(tf,FormMain.Dir + '\' + fn);
    SetLineBreakStyle(tf,tlbsCRLF);
    Reset(tf);
    if FormMain.SettingsVersion = 2
    then begin;
      while not eof(tf) do begin;
        ReadLn(tf,s);
        if (LowerCase(LeftStr(s,8)) = '#service') and
           (LowerCase(RightStr(s,3)) = '.tv')
        then begin;
          for i := length(s) downto 0 do begin;
            if s[i] = '/'
            then break;
          end;
          s := RightStr(s,length(s)-i);
          fsl.Add(s);
        end;
      end;
    end
    else begin;
      while not eof(tf) do begin;
        ReadLn(tf,s);
        if LowerCase(LeftStr(s,8)) = '#service'
        then begin;
          for i := length(s) downto 0 do begin;
            if s[i] = ':'
            then break;
          end;
          s := RightStr(s,length(s)-i);
          { First extract filename with version>2 settings set }
          if pos('"',s) > 0
          then begin;
            ib := pos('"',s);
            ie := posex('"',s,ib+1);
            s := copy(s,ib+1,ie-ib-1);
          end;
          fsl.Add(s);
        end;
      end;
    end;
    CloseFile(tf);

    for i := 0 to fsl.Count - 1 do begin;
      f := fsl[i];
      if FileExists(FormMain.Dir + '\' + f)
      then begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                            FormMain.PathUserBouquets + f]));
        FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                             FormMain.PathUserBouquets + f]));
        try FTP.Put(FormMain.Dir + '\' + f,FormMain.PathUserBouquets + f,False);
        Except
          Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',f]));
          FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',f]));
          error := true;
        end;
        if error
        then begin;
          fsl.Free;
          goto disc;
        end;
        r := DBFilesU.IndexOf(FormMain.PathUserBouquets + f);
        if r >= 0
        then DBFilesU.Delete(r);
      end
      else begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',f]));
        FormMain.Log('w',FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',f]));
      end;
    end;
    fsl.Free;
  end
  else begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',
                                       FormMain.EplTVFilename]));
    FormMain.Log('w',FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',
                                        FormMain.EplTVFilename]));
  end;

  fn := FormMain.EplRDFilename;
  if FileExists(FormMain.Dir + '\' + fn)
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                       FormMain.PathUserBouquets + fn]));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathUserBouquets + fn]));
    try FTP.Put(FormMain.Dir + '\' + fn,FormMain.PathUserBouquets + fn,False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                         fn]));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          fn]));
      error := true;
    end;
    if error
    then goto disc;

    fsl := TStringList.Create;
    fsl.Clear;
    AssignFile(tf,FormMain.Dir + '\' + fn);
    SetLineBreakStyle(tf,tlbsCRLF);
    Reset(tf);
    if FormMain.SettingsVersion = 2
    then begin;
      while not eof(tf) do begin;
        ReadLn(tf,s);
        if (LowerCase(LeftStr(s,8)) = '#service') and
           (LowerCase(RightStr(s,6)) = '.radio')
        then begin;
          for i := length(s) downto 0 do begin;
            if s[i] = '/'
            then break;
          end;
          s := RightStr(s,length(s)-i);
          fsl.Add(s);
        end;
      end;
    end
    else begin;
      while not eof(tf) do begin;
        ReadLn(tf,s);
        if LowerCase(LeftStr(s,8)) = '#service'
        then begin;
          for i := length(s) downto 0 do begin;
            if s[i] = ':'
            then break;
          end;
          s := RightStr(s,length(s)-i);
          { First extract filename with version>2 settings set }
          if pos('"',s) > 0
          then begin;
            ib := pos('"',s);
            ie := posex('"',s,ib+1);
            s := copy(s,ib+1,ie-ib-1);
          end;
          fsl.Add(s);
        end;
      end;
    end;
    CloseFile(tf);

    for i := 0 to fsl.Count - 1 do begin;
      f := fsl[i];
      if FileExists(FormMain.Dir + '\' + f)
      then begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                            FormMain.PathUserBouquets + f]));
        FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                             FormMain.PathUserBouquets + f]));
        try FTP.Put(FormMain.Dir + '\' + f,FormMain.PathUserBouquets + f,False);
        Except
          Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',f]));
          FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',f]));
          error := true;
        end;
        if error
        then begin;
          fsl.Free;
          goto disc;
        end;
        r := DBFilesU.IndexOf(FormMain.PathUserBouquets + f);
        if r >= 0
        then DBFilesU.Delete(r);
      end
      else begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',f]));
        FormMain.Log('w',FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',f]));
      end;
    end;
    fsl.Free;
  end
  else begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',
                                       FormMain.EplRDFilename]));
    FormMain.Log('w',FormMain.lwLngTrns(name,['File "%" not sent to the Dreambox. File does not exist.',
                                        FormMain.EplRDFilename]));
  end;

  { Satellites }
  if FileExists(FormMain.Dir+'\satellites.xml')
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathSatellites + 'satellites.xml']));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                         FormMain.PathSatellites + 'satellites.xml']));
    try FTP.Put(FormMain.Dir+'\satellites.xml',FormMain.PathSatellites + 'satellites.xml',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          'satellites.xml']));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                           'satellites.xml']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  { Terrestrial }
  if FileExists(FormMain.Dir+'\terrestrial.xml')
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathSatellites + 'terrestrial.xml']));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                         FormMain.PathSatellites + 'terrestrial.xml']));
    try FTP.Put(FormMain.Dir+'\terrestrial.xml',FormMain.PathSatellites + 'terrestrial.xml',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          'terrestrial.xml']));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                           'terrestrial.xml']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  { Cable }
  if FileExists(FormMain.Dir+'\cables.xml')
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['** Sending file "%" **',
                                        FormMain.PathSatellites + 'cables.xml']));
    FormMain.log('i',FormMain.lwLngTrns(name,['** Sending file "%" **',
                                         FormMain.PathSatellites + 'cables.xml']));
    try FTP.Put(FormMain.Dir+'\cables.xml',FormMain.PathSatellites + 'cables.xml',False);
    Except
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                          'cables.xml']));
      FormMain.Log('e',FormMain.lwLngTrns(name,['Error sending file "%" to the Dreambox.',
                                           'cables.xml']));
      error := true;
    end;
    if error
    then goto disc;
  end;

  { Clean up not used tv or radio userbouquet files on the dreambox }
  if cbCleanupDreambox.Checked
  then begin;
    for r := 0 to DBFilesU.Count - 1 do begin;
      if (pos('userbouquet.',DBFilesU[r]) > 0) and
        ((lowercase(rightstr(DBFilesU[r],3)) = '.tv') or
         (lowercase(rightstr(DBFilesU[r],6)) = '.radio'))
      then begin;
        try
          FTP.Delete(DBFilesU[r]);
        Except
        end;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Unused bouquet "%" removed from Dreambox.',
                                                 DBFilesU[r]]));
        FormMain.Log('i',FormMain.lwLngTrns(name,['Unused bouquet "%" removed from Dreambox.',
                                                  DBFilesU[r]]));
      end;
    end;
  end;

  { Delete lamedb file from dreambox when using old settings }
  if FormMain.SettingsVersion = 2
  then begin;
    DBFilesU.Clear;
    try
      Ftp.List(DBFilesU,FormMain.PathServices +'lamedb',False);
    Except
    end;
    if DBFilesU.Count > 0
    then begin;
      try
        FTP.Delete(FormMain.PathServices +'lamedb');
      Except
      end;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Unused lamedb file removed from Dreambox.']));
      FormMain.Log('i',FormMain.lwLngTrns(name,['Unused lamedb file removed from Dreambox.']));
    end;
  end;
  DBFilesU.Free;

disc:
  try
    FTP.Disconnect;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Could not disconnect from Dreambox.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Could not disconnect from Dreambox.']));
    error := true;
  end;

  screen.Cursor := crDefault;
  Application.ProcessMessages;

  if error
  then begin;
    if Silent
    then MessageDlg(FormMain.lwLngTrns(name,[
                    'There were errors tranferring the files to the Dreambox.~' +
                    'Check the log for more information.']),
                    mtError,[mbOK],0);
    exit;
  end;

  bSend.InactiveColor := clBtnFace;

  bSend.ActiveColor := clBtnFace;
  if cbAutoReload.Checked = False then
  FormMain.Log('i',FormMain.lwLngTrns(name,[
                   'Succesfully transferred the file-set to the dreambox.']));

  if (not silent) and
     (FormMain.ShowResultMsg)
  then begin;
   if cbAutoReload.Checked = False then
    MessageDlg(FormMain.lwLngTrns(name,[
               'Succesfully transferred the file-set to the dreambox.~~' +
               'To activate the changes you must select "Reload" or "Reboot settings in Dreambox"!']),
               mtInformation,[mbOK],0);
  end;
  if Silent
  then begin;
    if FormMain.QuickFTPReload
    then begin;
      bReloadClick(Self);
      s := FormMain.lwLngTrns(name,['and a reload command is issued.']);
    end
    else
      if FormMain.QuickFTPReboot
      then begin;
        bRebootClick(Self);
        s := FormMain.lwLngTrns(name,['and a reboot command is issued.']);
      end
      else
        if FormMain.QuickFTPCustomCmd
        then begin;
          bCustomCmdClick(Self);
          s := FormMain.lwLngTrns(name,[
               'and custom command "%" is issued',FormMain.UserTelnetCmd]);
        end
        else s := FormMain.lwLngTrns(name,[
                  'but NO further reload or reboot command was issued ' +
                  '(as is configured on the options panel).']);

    Application.ProcessMessages;
    if cbAutoReload.Checked = False then
    MessageDlg(FormMain.lwLngTrns(name,[
               'Succesfully transferred the file-set to the dreambox %',s]),
               mtInformation,[mbOK],0);
  end;

  if FormMain.SettingsVersion > 2
  then
    begin
    if cbAutoReload.Checked  then
      begin
       IdHTTP1 := TIdHTTP.Create(Self);
       IdHTTP1.Request.BasicAuthentication := True;
       IdHTTP1.Request.Username := FormMain.DBUsername;
       IdHTTP1.Request.Password := FormMain.DBPassword;

       c := 'http://' +
           FormMain.DBIP + ':' + FormMain.DBHTTPPort +
           '/web/servicelistreload?mode=0';
       Application.ProcessMessages;
       try
        s := IdHTTP1.Get(c);
       except
        on E: Exception
        do s := E.Message;
       end;
       IdHTTP1.Destroy;

       FormMain.log('i',FormMain.lwLngTrns(name,['Network response: %',s]));
       Memo1.Lines.Add(FormMain.lwLngTrns(name,['Network response: %',s]));
       if pos('true',s) > 0
       then begin;
        CmdOK := True;

        FormMain.log('i',FormMain.lwLngTrns(name,['Sending auto reload command succeded.']));
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending auto reload command succeded.']));

       end;
       if not CmdOK
       then begin;
       FormMain.log('e',FormMain.lwLngTrns(name,[
                       'Could not connect to Dreambox on IP adress %, check ' +
                       'the IP address and/or your network.',FormMain.DBIP]));
       Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                      'Could not connect to Dreambox on IP adress %, check ' +
                      'the IP address and/or your network.',FormMain.DBIP]));
       MessageDlg(FormMain.lwLngTrns(name,[
                 'Sending reload command failed. See the log for more information.~~' +
                 'Reboot the Dreambox by hand to activate the new settings.']),
                 mtError,[mbOK],0);
       end;

      end;
    end;

end;

procedure TFormFTP.FTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
var
  i: Integer;
begin
  Memo1.Lines.Add(AStatusText);
  FormMain.log('i',AStatusText);
  for i := 0 to FTP.LastCmdResult.Text.Count - 1 do begin;
    FormMain.log('i',FTP.LastCmdResult.Text[i]);
  end;
end;

procedure TFormFTP.bBrowseClick(Sender: TObject);
var
  Dir: String;
begin
  Dir := FormMain.Dir;
  if FormMain.SelDir(Dir,True)
  then begin;
    eLDir.Text := Dir;
    FormMain.Dir := eLDir.Text;
    SetButtons();
  end;
end;

procedure TFormFTP.TelnetStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  Memo1.Lines.Add('Telnet status: ' + AStatusText);
  FormMain.Log('i','Telnet status: ' + AStatusText);
end;

procedure TFormFTP.TelnetDataAvailable(Sender: TIdTelnet;
  const Buffer: String);
var
  pw: String;  
begin
  Memo1.Lines.Add(Buffer);
  FormMain.log('i',Buffer);

  if pos('login:',buffer) > 0
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending username %',FormMain.DBUsername]));
    FormMain.log('i',FormMain.lwLngTrns(name,['Sending username %',FormMain.DBUsername]));
    SendTelnetCmd(FormMain.DBUsername);
    {Telnet.TelnetThread.FreeOnTerminate := True;
    Was a fix with Indy 9 but seems to cause an access violation
    error in inmdy 10 when closing DreamboxEdit. }
  end
  else
    if pos('Password:',buffer) > 0
    then begin;
      if FormMain.HidePassword
      then pw := DupeString('*',length(FormMain.DBPassword))
      else pw := FormMain.DBPassword;
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending password %',pw]));
      FormMain.log('i',FormMain.lwLngTrns(name,['Sending password %',pw]));
      SendTelnetCmd(FormMain.DBPassword);
    end
    else
      if (TelnetStage = 0) and
         ((pos('~',buffer) > 0) or
          (pos('dreambox #',buffer) > 0) or
          (pos('~ #',buffer) > 0) or
          (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
      then begin;
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending user command: %',FormMain.UserTelnetCmd]));
        FormMain.log('i',FormMain.lwLngTrns(name,['Sending user command: %',FormMain.UserTelnetCmd]));
        SendTelnetCmd(FormMain.UserTelnetCmd);
        TelnetStage := 1;
      end
      else
        if (TelnetStage = 1) and
           ((pos('~ >',buffer) > 0) or
            (pos('~#',buffer) > 0) or
            (pos('dreambox #',buffer) > 0) or
            (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
        then begin;
          Timer1.Interval := 5000;
          Timer1.Enabled := True;
          TelnetStage := 2;
        end
        else
          if (TelnetStage = 5) and
           ((pos('~ >',buffer) > 0) or
            (pos('~#',buffer) > 0) or
            (pos('dreambox #',buffer) > 0) or
            (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
        then begin;
            Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending stop enigma2 command']));
            FormMain.log('i',FormMain.lwLngTrns(name,['Sending stop enigma2 command']));
            SendTelnetCmd('init 4 ; sleep 6');
            TelnetStage := 6;
        end
        else
        if (TelnetStage = 7) and
           ((pos('~ >',buffer) > 0) or
            (pos('~#',buffer) > 0) or
            (pos('dreambox #',buffer) > 0) or
            (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
        then begin;
            Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending start enigma2 command']));
            FormMain.log('i',FormMain.lwLngTrns(name,['Sending start enigma2 command']));

            SendTelnetCmd('init 3');
            TelnetStage := 8;
        end
        else
        if (TelnetStage = 8) and
           ((pos('~ >',buffer) > 0) or
            (pos('~#',buffer) > 0) or
            (pos('dreambox #',buffer) > 0) or
            (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
        then begin;
            Memo1.Lines.Add(FormMain.lwLngTrns(name,['Terminating telnet']));
            FormMain.log('i',FormMain.lwLngTrns(name,['Terminating telnet']));
            Telnet.IOHandler.CloseGracefully;
        end
        else

          if (TelnetStage = 10) and
             ((pos('~ >',buffer) > 0) or
              (pos('~#',buffer) > 0) or
              (pos('~ #',buffer) > 0) or
              (pos('dreambox #',buffer) > 0) or
              (pos(FormMain.DreamboxCmdPrompt,buffer) > 0))
          then begin;
            Memo1.Lines.Add(FormMain.lwLngTrns(name,['Sending reboot command']));
            FormMain.log('i',FormMain.lwLngTrns(name,['Sending reboot command']));
            SendTelnetCmd('reboot');
            {SendTelnetCmd('(sleep 2; reboot) &');}
            TelnetStage := 11;
          end;
end;

procedure TFormFTP.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if Telnet.Connected
  then begin;
    Try   Telnet.Disconnect
    except
    end;
  end;

  Screen.Cursor := crDefault;
  bBack.Enabled := True;
  bReload.InactiveColor := clBtnFace;
  bReload.ActiveColor := clBtnFace;

  if TelnetStage <> 2
  then begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Error sending user command.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Error sending user command.']));
    MessageDlg(FormMain.lwLngTrns(name,['Error sending user command.']),
               mtError,[mbOK],0);
  end
  else begin;
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['User command sent.']));
    FormMain.log('i',FormMain.lwLngTrns(name,['User command sent.']));
  end;
end;

procedure TFormFTP.bRebootClick(Sender: TObject);
begin
  TelnetStage := 10;
  Telnet.Host := FormMain.DBIP;
  Telnet.ReadTimeout := 10000;
  Try Telnet.Connect
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Connect error setting up telnet session for sending reload command.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Connect error setting up telnet session for sending reload command.']));
  end;
end;

procedure TFormFTP.bCustomCmdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  bBack.Enabled := False;

  TelnetStage := 0;
  Telnet.Host := FormMain.DBIP;
  Telnet.ReadTimeout := 10000;
  Try Telnet.Connect;
  Except
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Connect error setting up telnet session for sending reload command.']));
    FormMain.log('e',FormMain.lwLngTrns(name,['Connect error setting up telnet session for sending reload command.']));
  end;
end;

procedure TFormFTP.bReloadClick(Sender: TObject);
var
  c,s: String;
  CmdOK: Boolean;
  IdHTTP1: TIdHTTP;
begin
  Screen.Cursor := crHourGlass;

  FormMain.log('i',FormMain.lwLngTrns(name,['Sending Reload commands.']));
  FormMain.log('i',FormMain.lwLngTrns(name,[
                   'This might take up to a few minutes to let the Dreambox ' +
                   'complete the reloading.']));
  Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                  'Sending Reload commands.']));
  Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                  'This might take up to a few minutes to let the Dreambox ' +
                  'complete the reloading.']));

  if FormMain.SettingsVersion < 3
  then begin;
    IdHTTP1 := TIdHTTP.Create(Self);
    IdHTTP1.Request.BasicAuthentication := True;
    IdHTTP1.Request.Username := FormMain.DBUsername;
    IdHTTP1.Request.Password := FormMain.DBPassword;

    CmdOk := False;

    c := 'http://' +
         FormMain.DBIP + ':' + FormMain.DBHTTPPort +
         '/cgi-bin/reloadSettings';
    Application.ProcessMessages;
    try
      s := IdHTTP1.Get(c);
    except
      on E: Exception
      do s := E.Message;
    end;
    IdHTTP1.Destroy;

    FormMain.log('i',FormMain.lwLngTrns(name,['Network response: %',s]));
    Memo1.Lines.Add(FormMain.lwLngTrns(name,['Network response: %',s]));
    if s = '+ok'
    then begin;
      FormMain.log('i',FormMain.lwLngTrns(name,['First of two steps completed.']));
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['First of two steps completed.']));

      IdHTTP1 := TIdHTTP.Create(Self);
      IdHTTP1.Request.BasicAuthentication := True;
      IdHTTP1.Request.Username := FormMain.DBUsername;
      IdHTTP1.Request.Password := FormMain.DBPassword;

      c := 'http://' +
           FormMain.DBIP + ':' + FormMain.DBHTTPPort +
           '/cgi-bin/reloadUserBouquets';
      Application.ProcessMessages;
      try
        s := IdHTTP1.Get(c);
      except
        on E: Exception
        do s := E.Message;
      end;
      IdHTTP1.Destroy;

      FormMain.log('i',FormMain.lwLngTrns(name,['Network response: %',s]));
      Memo1.Lines.Add(FormMain.lwLngTrns(name,['Network response: %',s]));
      if s = '+ok'
      then begin;
        CmdOK := True;

        FormMain.log('i',FormMain.lwLngTrns(name,['Second of two steps completed.']));
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Second of two steps completed.']));

        FormMain.log('i',FormMain.lwLngTrns(name,['Reload command ready.']));
        Memo1.Lines.Add(FormMain.lwLngTrns(name,['Reload command ready.']));
      end;
    end;
    if not CmdOK
    then begin;
      FormMain.log('e',FormMain.lwLngTrns(name,[
                       'Could not connect to Dreambox on IP adress %, check ' +
                       'the IP address and/or your network.',FormMain.DBIP]));
      Memo1.Lines.Add(FormMain.lwLngTrns(name,[
                      'Could not connect to Dreambox on IP adress %, check ' +
                      'the IP address and/or your network.',FormMain.DBIP]));
      MessageDlg(FormMain.lwLngTrns(name,[
                 'Sending reload command failed. See the log for more information.~~' +
                 'Reboot the Dreambox by hand to activate the new settings.']),
                 mtError,[mbOK],0);
    end;
  end
  else begin;  // Version 3 sequence
    FormMain.UserTelnetCmd := 'killall -9 enigma2';
    bCustomCmdClick(Self);
  end;

  Screen.Cursor := crDefault;
end;

procedure TFormFTP.bCustomCmdMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  bCustomCmd.Hint := FormMain.lwLngTrns(name,[
                         'Send the on the option panel specified custom Telnet command.~' +
                         'Currenty defined command:~~' +
                         '----------------------------------------------~' +
                         '%~' +
                         '----------------------------------------------',FormMain.UserTelnetCmd]);
end;

procedure TFormFTP.FormCreate(Sender: TObject);
begin
  FormMain.MultiLang.SetLanguage(Self,FormMain.Language,False);
end;

procedure TFormFTP.cbProfileNameSelect(Sender: TObject);
var
  Reg: TRegistry;
  i,p: Integer;
  wIPAddress: String;
  wHTTPPort: String;
  wFTPPort: String;
  wUsername: String;
  wPassword: String;
  wFTPPassive: Boolean;
  wPathServices: String;
  wPathUserbouquets: String;
  wPathSatellites: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\SOFTWARE\LlamaWare\DreamBoxEdit',True);

  p := Reg.ReadInteger('Profiles');
  for i := 0 to p - 1 do begin;
    if LowerCase(Reg.ReadString('Profiles Name ' + IntToStr(i))) = LowerCase(cbProfileName.Text)
    then break;
  end;
  p := i;

  wIPAddress := Reg.ReadString('Profiles IP Address ' + IntToStr(p));
  wHTTPPort := Reg.ReadString('Profiles HTTP Port ' + IntToStr(p));
  wFTPPort := Reg.ReadString('Profiles FTP Port ' + IntToStr(p));
  wUsername := Reg.ReadString('Profiles Username ' + IntToStr(p));
  wPassword := Reg.ReadString('Profiles Password ' + IntToStr(p));
  wFTPPassive := Reg.ReadBool('Profiles FTP Type Passive ' + IntToStr(p));
  wPathServices := Reg.ReadString('Profiles Path Services ' + IntToStr(p));
  wPathUserbouquets := Reg.ReadString('Profiles Path Userbouquets ' + IntToStr(p));
  wPathSatellites := Reg.ReadString('Profiles Path Satellites ' + IntToStr(p));

  Reg.WriteString('Profiles Name',cbProfileName.Text);
  Reg.WriteString('Dreambox IP Address',wIPAddress);
  Reg.WriteString('Dreambox FTP Port Number',wFTPPort);
  Reg.WriteString('Dreambox HTTP Port Number',wHTTPPort);
  Reg.WriteString('Dreambox Username',wUsername);
  Reg.WriteString('Dreambox Password',wPassword);
  Reg.WriteBool('FTP Type Passive',wFTPPassive);
  Reg.WriteString('Path Services',wPathServices);
  Reg.WriteString('Path Userbouquets',wPathUserbouquets);
  Reg.WriteString('Path Satellites',wPathSatellites);

  Reg.CloseKey;
  Reg.Destroy;

  FormMain.ProfilesName := cbProfileName.Text;
  FormMain.DBIP := wIPAddress;
  FormMain.DBFTPPort := wFTPPort;
  FormMain.DBHTTPPort := wHTTPPort;
  FormMain.DBUsername := wUsername;
  FormMain.DBPassword := wPassword;
  FormMain.FTPPassive := wFTPPassive;
  FormMain.PathServices := wPathServices;
  FormMain.PathUserBouquets := wPathUserbouquets;
  FormMain.PathSatellites := wPathSatellites;

  FormMain.StatusBarShowIPInfo();

  eIPAddress.Text := wIPAddress;
end;

end.




