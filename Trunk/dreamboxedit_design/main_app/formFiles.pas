unit formFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, LWPanel;

type
  TfrmFiles = class(TForm)
    lwpnlBG: TLWPanel;
    Label1: TLabel;
    lvFiles: TListView;
    Panel2: TPanel;
    Label2: TLabel;
    btnRestore: TButton;
    rgrpRestore: TRadioGroup;
    chkSelectAll: TCheckBox;
    Bevel1: TBevel;
    btnDone: TButton;
    procedure btnDoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiles: TfrmFiles;

implementation

{$R *.dfm}

procedure TfrmFiles.btnDoneClick(Sender: TObject);
begin
  Close;
end;

end.
