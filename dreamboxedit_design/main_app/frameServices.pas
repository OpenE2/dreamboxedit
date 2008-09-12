unit frameServices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, LWPanel;

type
  TfrmeServices = class(TFrame)
    LWPanelB: TLWPanel;
    Splitter1: TSplitter;
    LWPanelR: TLWPanel;
    Splitter2: TSplitter;
    LWPanelRR: TLWPanel;
    Image1: TImage;
    LWPanel3: TLWPanel;
    Label4: TLabel;
    _lBouqT: TLabel;
    tv: TTreeView;
    LWPanelRL: TLWPanel;
    lvDet: TListView;
    LWPanel4: TLWPanel;
    Label8: TLabel;
    _lDetT: TLabel;
    pDetName: TLWPanel;
    _lDetName: TLabel;
    LWPanelL: TLWPanel;
    lvServ: TListView;
    LWPanel2: TLWPanel;
    Label1: TLabel;
    _lServT: TLabel;
    Label3: TLabel;
    _lServD: TLabel;
    cbTVRadio: TComboBox;
    cbSatName: TComboBox;
    ePackage: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
