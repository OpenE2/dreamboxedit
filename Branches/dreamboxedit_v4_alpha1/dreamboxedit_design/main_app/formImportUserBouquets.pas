unit formImportUserBouquets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, ExtCtrls, LWPanel, JvDialogs, Buttons,
  JvBaseDlg, JvSelectDirectory;

type
  TfrmImportUserBouquets = class(TForm)
    lwpnlBG: TLWPanel;
    GroupBox1: TGroupBox;
    lvFavs: TListView;
    Panel2: TPanel;
    pulvFavs: TPopupMenu;
    puCheckall: TMenuItem;
    puUncheckall: TMenuItem;
    btnRefresh: TButton;
    btnProcess: TButton;
    btnCancel: TButton;
    chkSelectDeselectAll: TCheckBox;
    lblOne: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    lblTwo: TLabel;
    JvSelectDirectory1: TJvSelectDirectory;
    procedure btnProcessClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportUserBouquets: TfrmImportUserBouquets;

implementation

{$R *.dfm}

procedure TfrmImportUserBouquets.btnProcessClick(Sender: TObject);
begin
  //
end;

procedure TfrmImportUserBouquets.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportUserBouquets.btnRefreshClick(Sender: TObject);
begin
  //
end;

procedure TfrmImportUserBouquets.SpeedButton1Click(Sender: TObject);
begin
  if JvSelectDirectory1.Execute = True then
  begin

  end;
end;

end.
