program DreamBoxEdit;

uses
  Forms,
  Windows,
  DreamBoxMain in 'DreamBoxMain.pas' {FormMain},
  DreamBoxAbout in 'DreamBoxAbout.pas' {FormAbout},
  DreamBoxSplash in 'DreamBoxSplash.pas' {FormSplash},
  DreamBoxEditWait in 'DreamBoxEditWait.pas' {FormWait},
  DreamBoxEditDetail in 'DreamBoxEditDetail.pas' {FormDetail},
  DreamBoxEditAdd in 'DreamBoxEditAdd.pas' {FormAdd},
  DreamBoxEditLog in 'DreamBoxEditLog.pas' {FormLog},
  DreamBoxEditFiles in 'DreamBoxEditFiles.pas' {FormFiles},
  DreamBoxEditOptions in 'DreamBoxEditOptions.pas' {FormOptions},
  DreamBoxEditFTP in 'DreamBoxEditFTP.pas' {FormFTP},
  DreamBoxEditImport in 'DreamBoxEditImport.pas' {FormImport},
  DreamBoxEditImportFiles in 'DreamBoxEditImportFiles.pas' {FormImportFiles},
  DreamBoxEditBrowseFile in 'DreamBoxEditBrowseFile.pas' {FormBrowseFile},
  DreamBoxEditImportDuplicates in 'DreamBoxEditImportDuplicates.pas' {FormImportDuplicates},
  DreamBoxEditImportFavs in 'DreamBoxEditImportFavs.pas' {FormImportUserBouquets},
  DreamBoxEditEditSatXML in 'DreamBoxEditEditSatXML.pas' {FormEditSatXML},
  DreamBoxEditSelectiveReceive in 'DreamBoxEditSelectiveReceive.pas' {FormSelectiveReceive},
  DreamBoxEditCompareSets in 'DreamBoxEditCompareSets.pas' {FormCompareSet},
  DreamBoxEditTransponder in 'DreamBoxEditTransponder.pas' {FormTransponder},
  DreamBoxEditNewVersion in 'DreamBoxEditNewVersion.pas' {FormNewVersion},
  DreamBoxEditSelDir in 'DreamBoxEditSelDir.pas' {FormSelDir};

{$R *.res}

begin
  FormSplash := TFormSplash.Create(Application);
  FormSplash.Show;
  FormSplash.Update;
  Sleep(1000);

  Application.Initialize;
  Application.Title := 'DreamBoxEdit';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormWait, FormWait);
  Application.CreateForm(TFormDetail, FormDetail);
  Application.CreateForm(TFormAdd, FormAdd);
  Application.CreateForm(TFormLog, FormLog);
  Application.CreateForm(TFormFiles, FormFiles);
  Application.CreateForm(TFormOptions, FormOptions);
  Application.CreateForm(TFormFTP, FormFTP);
  Application.CreateForm(TFormImport, FormImport);
  Application.CreateForm(TFormImportFiles, FormImportFiles);
  Application.CreateForm(TFormBrowseFile, FormBrowseFile);
  Application.CreateForm(TFormImportDuplicates, FormImportDuplicates);
  Application.CreateForm(TFormImportUserBouquets, FormImportUserBouquets);
  Application.CreateForm(TFormEditSatXML, FormEditSatXML);
  Application.CreateForm(TFormSelectiveReceive, FormSelectiveReceive);
  Application.CreateForm(TFormCompareSet, FormCompareSet);
  Application.CreateForm(TFormTransponder, FormTransponder);
  Application.CreateForm(TFormNewVersion, FormNewVersion);
  Application.CreateForm(TFormSelDir, FormSelDir);
  FormSplash.Hide;
  FormSplash.Free;
        
  Application.Run;
end.
