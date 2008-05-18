unit DreamBoxSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, StdCtrls, ExtCtrls, uHelpers;

type
  TFormSplash = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    BMBG: TBitmap;
    BMDBox: TBitmap;
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

uses DreamBoxAbout, Types;

{$R *.DFM}
{$R DreamBoxSplashRes.RES}

procedure TFormSplash.FormPaint(Sender: TObject);
var
  srcRect: TRect;
  BMMemory: TBitmap;
begin
  { Copy the background and draw it to the form.
    Paint the Dreambox and title information. }

  srcRect.Left := ClientToScreen(ClientRect.TopLeft).X;
  srcRect.Top := ClientToScreen(ClientRect.TopLeft).Y;
  srcRect.Right := ClientToScreen(ClientRect.BottomRight).X;
  srcRect.Bottom := ClientToScreen(ClientRect.BottomRight).Y;

  // Create a (TBitmap)MemoryDC...
  BMMemory := TBitmap.Create;
  try
    BMMemory.Width := Width;
    BMMemory.Height := Height;

    // BitBlt the complete background (BMBG) to the (TBitmap)MemoryDC...
    BitBlt(BMMemory.Canvas.Handle, 0, 0, Width, Height, BMBG.Canvas.Handle,
     srcRect.Left, srcRect.Top, SRCCOPY);

    // BitBlt the transparent DBox to the (TBitmap)MemoryDC...
    BMMemory.Canvas.Draw(0, 0, BMDBox);



    // BitBlt everything to the screen...
    BitBlt(Canvas.Handle, 0, 0, Width, Height, BMMemory.Canvas.Handle, 0, 0,
     SRCCOPY);
  finally
    BMMemory.Free;
  end;

end;

procedure TFormSplash.FormShow(Sender: TObject);
begin
  // Take a screenshot and put it in BMBG...
  ScreenShot(False, BMBG);

end;

procedure TFormSplash.FormCreate(Sender: TObject);
begin
  BMBG := TBitmap.Create;
  BMDBox := TBitmap.Create;

  BMDBox.LoadFromResourceName(HInstance, 'DBOX');
  BMDBox.Transparent := True;
end;

procedure TFormSplash.FormDestroy(Sender: TObject);
begin
  if Assigned(BMDBox) then
    BMDBox.Free;

  if Assigned(BMBG) then
    BMBG.Free;
end;

end.
