unit LWLanguage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, TypInfo, StrUtils;

type
  TLWLanguage = class(TComponent)
  private
    { Private declarations }
    LanguageFile:string;
    procedure LoadLanguage(AForm: TForm; LangFile: string);
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure SaveLanguage(AVersion: String;
                           AForm: TForm;
                           Lang: string;
                           sCaption,sText,sHint: Boolean);
    function SetLanguage(AForm:TForm;
                         Lang: String;
                         lEnglish: Boolean): Boolean;
  published
    { Published declarations }
  end;

procedure Register;

implementation

const
  cr = chr(13)+chr(10);
  tab = chr(9);

procedure Register;
begin
  RegisterComponents('Custom', [TLWLanguage]);
end;

function TLWLanguage.SetLanguage(AForm: TForm; Lang: String; lEnglish: Boolean): Boolean;
begin
  if (pos('english',lowercase(lang)) > 0) and
     (not lEnglish)
  then begin;
    Result := True;
    exit;
  end;

  Result := False;
  LanguageFile := ExtractFilePath(application.exename) + Lang + '.lng';
  if not fileexists(LanguageFile)
  then exit;
  LoadLanguage(Aform,LanguageFile);
  Result := True;
end;

procedure TLWLanguage.LoadLanguage(AForm: TForm; LangFile: String);
var
  langs: TStringlist;
  i: Integer;
  aname,avalue: String;
  atype,afrm,acomp,aprop: String;
  AComponent: Tcomponent;
  PropInfo: PPropInfo;

  procedure split(s:String);
  var
    p: Integer;
  begin
    atype := LeftStr(s,1);
    p := pos('=',s);
    aname := copy(s,1,p-1);
    avalue := copy(s,p+1,length(s));
    avalue := stringreplace(avalue,'~~',cr,[rfreplaceall]);
    p := pos('.',aname);
    afrm := copy(aname,2,p-2);
    aname := copy(aname,p+1,length(aname));
    p := pos('.',aname);
    acomp := copy(aname,1,p-1);
    aprop := copy(aname,p+1,length(aname));
  end;
begin
  langs := tstringlist.create;
  langs.LoadFromFile(langfile);
  for i := 0 to langs.count - 1 do begin
    split(langs[i]);
    if atype <> 'p'
    then continue;
    if Aform.name <> Afrm
    then continue;
    AComponent := Aform.findcomponent(acomp);
    if AComponent = nil
    then continue;
    PropInfo := GetPropInfo(Acomponent,aprop);
    if PropInfo <> nil
    then
      if propinfo^.PropType^.Kind= tkLString
      then setStrProp(Acomponent,aprop,avalue);
  end;
  langs.free;
end;

procedure TLWLanguage.SaveLanguage(AVersion: String;
                                   AForm: TForm;
                                   Lang: String;
                                   sCaption,sText,sHint: Boolean);
var
  i,ix: Integer;
  LangFile,key: String;
  acap: String;
  ahint: String;
  atext: String;
  PropInfo: PPropInfo;
  m: Tcomponent;
  langs: TStringList;
begin
  langs := TStringList.Create;
  LangFile := ExtractFilePath(application.exename) + Lang + '.lng';
  if FileExists(LangFile)
  then langs.LoadFromFile(LangFile);

  for i := langs.Count - 1 downto 0 do begin;
    if (lowercase(leftstr(langs[i],1)) = 'v') or
       (lowercase(leftstr(langs[i],1)) = 'd')
    then langs.Delete(i);
  end;
  for i := 0 to langs.Count - 1 do begin;
    if (leftstr(langs[i],1) = 'p') and
       (copy(langs[i],2,length(Aform.Name)) = Aform.Name)
    then langs[i] := '<not used anymore>' + langs[i];
  end;

  for i := 0 to Aform.ComponentCount - 1 do
  begin;
    m := Aform.components[i];
    if (Copy(m.name,1,1) = '_') or
       (Copy(m.Name,1,2) = 'nt')
    then continue;

    if sCaption
    then begin;
      PropInfo := GetPropInfo(m,'caption');
      if PropInfo <> nil
      then begin
        aCap := {TrimRight} Trim(GetStrProp(m,PropInfo));
        aCap := stringreplace(aCap,cr,'~~',[rfreplaceall]);
        if pos('=',acap) > 0
        then begin;
          MessageDlg('Caption skipped for processing, it contains an "=" sign.'#13#13 +
                     'Language: ' + Lang + #13 +
                     'Form: ' + aForm.Name + #13 +
                     'Name: ' + m.Name + #13 +
                     'Value: ' + aCap,
                     mtError,[mbOK],0);
        end;
        if (trim(aCap) <> '') and
           (trim(aCap) <> '-') and
           (pos('=',aCap) <= 0)
        then begin;
          key := 'p' + aForm.Name + '.' + m.Name + '.Caption';
          ix := langs.IndexOfName('<not used anymore>' + key);
          if ix >= 0
          then
            if Lang <> 'English'
            then langs[ix] := copy(langs[ix],19,length(langs[ix])-18)
            else langs[ix] := key + '=' + aCap
          else langs.Add(key + '=' + aCap);
        end;
      end;
    end;

    if sHint
    then begin;
      PropInfo := GetPropInfo(m,'hint');
      if PropInfo <> nil
      then begin
        aHint := GetStrProp(m,PropInfo);
        aHint := stringreplace(aHint,cr,'~~',[rfreplaceall]);
        if pos('=',aHint) > 0
        then begin;
          MessageDlg('Hint skipped for processing, it contains an "=" sign.'#13#13 +
                     'Language: ' + Lang + #13 +
                     'Form: ' + aForm.Name + #13 +
                     'Name: ' + m.Name + #13 +
                     'Value: ' + aHint,
                     mtError,[mbOK],0);
        end;
        if (trim(aHint) <> '') and
           (pos('=',aHint) <= 0)
        then begin;
          key := 'p' + aForm.name + '.' + m.Name + '.Hint';
          ix := langs.IndexOfName('<not used anymore>' + key);
          if ix >= 0
          then
            if Lang <> 'English'
            then langs[ix] := copy(langs[ix],19,length(langs[ix])-18)
            else langs[ix] := key + '=' + aHint
          else langs.Add(key + '=' + aHint);
        end;
      end;
    end;

    if sText
    then begin;
      PropInfo := GetPropInfo(m,'text');
      if PropInfo <> nil
      then begin
        aText := GetStrProp(m,PropInfo);
        aText := stringreplace(aText,cr,'~~',[rfreplaceall]);
        if pos('=',aText) > 0
        then begin;
          MessageDlg('Text skipped for processing, it contains an "=" sign.'#13#13 +
                     'Language: ' + Lang + #13 +
                     'Form: ' + aForm.Name + #13 +
                     'Name: ' + m.Name + #13 +
                     'Value: ' + aText,
                     mtError,[mbOK],0);
        end;
        if (trim(aText) <> '') and
           (pos('=',aText) <= 0)
        then begin;
          key := 'p' + AForm.name + '.' + m.name + '.Text';
          ix := langs.IndexOfName('<not used anymore>' + key);
          if ix >= 0
          then
            if Lang <> 'English'
            then langs[ix] := copy(langs[ix],19,length(langs[ix])-18)
            else langs[ix] := key + '=' + aText
          else langs.Add(key + '=' + aText);
        end;
      end;
    end;
  end;

  langs.Sort;
  langs.Insert(0,'D'+FormatDateTime('yyyy-mm-dd hh:mm:ss',now()));
  langs.Insert(0,AVersion);
  langs.SaveToFile(LangFile);
  langs.Free;
end;

end.
