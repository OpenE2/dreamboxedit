program dboxedit_design;

uses
  Forms,
  formmain in 'formmain.pas' {frmMain},
  formDataTransfer in 'formDataTransfer.pas' {frmDataTransfer},
  formsplash in 'formsplash.pas' {frmSplash},
  formOptions in 'formOptions.pas' {frmOptions},
  formabout in 'formabout.pas' {frmAbout},
  formlog in 'formlog.pas' {frmLog},
  formprogress in 'formprogress.pas' {frmProgress},
  formEditNewVersion in 'formEditNewVersion.pas' {frmNewVersion},
  formFiles in 'formFiles.pas' {frmFiles},
  formImportFilesSatcoDX in 'formImportFilesSatcoDX.pas' {frmImportSatcoDXFiles},
  formEditSatellitesXML in 'formEditSatellitesXML.pas' {frmEditSatellitesXML},
  formCompareSets in 'formCompareSets.pas' {frmCompareSets},
  formEditTransponder in 'formEditTransponder.pas' {frmEditTransponder};

{$R *.res}

var
  frmSplash: TfrmSplash;

begin
  Application.Initialize;

  frmSplash := TfrmSplash.Create(nil);
  try
    frmSplash.Show;
  finally
    frmSplash.Close;
    if Assigned(frmSplash) then frmSplash.Free;
  end;

  Application.Title := 'DreamBoxEdit';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
