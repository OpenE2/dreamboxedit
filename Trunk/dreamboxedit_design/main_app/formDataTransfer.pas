unit formDataTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, LWPanel, Buttons;

type
  TfrmDataTransfer = class(TForm)
    lwpnlBG: TLWPanel;
    gbxSelectYourDreambox: TGroupBox;
    lblIPadress: TLabel;
    lblIP: TLabel;
    lblLocalFolder: TLabel;
    lblLocalFolderLocation: TLabel;
    cbxDreamboxProfiles: TComboBox;
    gbxTransferFiles: TGroupBox;
    lblOne: TLabel;
    lblTwo: TLabel;
    lblThree: TLabel;
    lblFour: TLabel;
    rgbSelectOperation: TRadioGroup;
    rgbUnusedUserBouquets: TRadioGroup;
    rgbReloadSettings: TRadioGroup;
    btnStartTransfer: TButton;
    btnDone: TButton;
    imgLocationLogo: TImage;
    sbtnFileListToggle: TSpeedButton;
    lwpnlFilesTransferred: TLWPanel;
    gbxFilesTransfered: TGroupBox;
    lbxFilelist: TListBox;
    GroupBox1: TGroupBox;
    cbServices: TCheckBox;
    cbBouquets: TCheckBox;
    cbUserBouquetsTV: TCheckBox;
    cbUserBouquetsRadio: TCheckBox;
    cbSatellitesXML: TCheckBox;
    Label1: TLabel;
    procedure btnDoneClick(Sender: TObject);
    procedure sbtnFileListToggleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataTransfer: TfrmDataTransfer;

implementation

{$R *.dfm}

procedure TfrmDataTransfer.btnDoneClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDataTransfer.sbtnFileListToggleClick(Sender: TObject);
begin
  if (lwpnlFilesTransferred.Visible = True) then
    lwpnlFilesTransferred.Visible := False
  else
    lwpnlFilesTransferred.Visible := True;
end;

end.
