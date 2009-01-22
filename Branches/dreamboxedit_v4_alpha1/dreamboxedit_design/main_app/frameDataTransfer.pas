unit frameDataTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, LWPanel;

type
  TfrmeDataTransfer = class(TFrame)
    lwpnlBG: TLWPanel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup2: TRadioGroup;
    Label7: TLabel;
    RadioGroup3: TRadioGroup;
    Label8: TLabel;
    Button2: TButton;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
