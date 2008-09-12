unit formEditSatellitesXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, LWPanel;

type
  TfrmEditSatellitesXML = class(TForm)
    lwpnlBG: TLWPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    ntgbFileName: TGroupBox;
    dgSatXML: TDBGrid;
    bMoveUp: TSpeedButton;
    bMoveDown: TSpeedButton;
    bReload: TButton;
    bCancel: TButton;
    bSave: TButton;
    Label14: TLabel;
    DataSource1: TDataSource;
    puSatXML: TPopupMenu;
    InsertTransponder1: TMenuItem;
    Insertcopyoftransponder1: TMenuItem;
    DeleteTransponder1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditSatellitesXML: TfrmEditSatellitesXML;

implementation

{$R *.dfm}

end.
