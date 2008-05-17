unit DreamBoxSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, StdCtrls, ExtCtrls;

type
  TFormSplash = class(TForm)
    PanelMain: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Image1: TImage;
    Bevel3: TBevel;
    lAction: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

uses DreamBoxAbout;

{$R *.DFM}

end.
