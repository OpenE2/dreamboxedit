program LanguageTool;

uses
  Forms,
  LanguageToolMain in 'LanguageToolMain.pas' {FormMain},
  LanguageToolAbout in 'LanguageToolAbout.pas' {FormAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.Run;
end.
