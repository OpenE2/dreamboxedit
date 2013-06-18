unit uDcUtil;

interface

uses Windows, Graphics, Classes;

type

  TTransparentBitmap = class(TObject)
  protected
    procedure NewBitmap; 
    procedure NewTransBitmap; 
    procedure FreeBitmap; 
    procedure FreeTransBitmap; 
    procedure GetScreenBitmap(r: TRect); 
  public
    Bitmap: TBitmap;
    TransBitmap: TBitmap;
    procedure CreateBitmap(r: TRect; Color: TColor; Level: Integer); virtual;
    procedure PrepareScreenBitmap(R: TRect); virtual;
    procedure ApplyTransparency(r: TRect; Color: TColor; Level: Integer); virtual;
    destructor Destroy; override;
  end;

implementation

procedure TTransparentBitmap.ApplyTransparency(r: TRect; Color: TColor;
  Level: Integer);
type
  PRGBArray = ^TRGBArray;
  TRGBArray = array[0..1000000] of TRGBTriple;
var
  SL: PRGBArray;
  X, Y: Integer;
  aColor: Cardinal;
begin
  NewTransBitmap;
  TransBitmap.Width := r.Right-r.Left+1;
  TransBitmap.Height := r.Bottom-r.Top+1;
  BitBlt(TransBitmap.Canvas.Handle, r.Left, r.Top, r.Right, r.Bottom,
    Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
  aColor := ColorToRGB(Color);
  for Y := 0 to TransBitmap.Height - 1 do begin
    SL := TransBitmap.ScanLine[Y];
    for X := 0 to TransBitmap.Width - 1 do
      try
       SL[X].rgbtRed := (Level * SL[X].rgbtRed + (100 -
                         Level) * GetRValue(aColor)) div 100;
       SL[X].rgbtGreen := (Level * SL[X].rgbtGreen + (100 -
                           Level)* GetGValue(aColor)) div 100;
       SL[X].rgbtBlue := (Level * SL[X].rgbtBlue + (100 -
                          Level) * GetBValue(aColor)) div 100;
      except
      end;
  end;
end;

procedure TTransparentBitmap.CreateBitmap(r: TRect; Color: TColor; Level: Integer);
begin
  PrepareScreenBitmap(r);
  ApplyTransparency(Rect(0,0, Bitmap.Width-1, Bitmap.Height-1), Color, Level);
end;

destructor TTransparentBitmap.Destroy;
begin
  FreeBitmap;
  FreeTransBitmap;
  inherited;
end;

procedure TTransparentBitmap.FreeBitmap;
begin
  Bitmap.Free;
end;

procedure TTransparentBitmap.FreeTransBitmap;
begin
  TransBitmap.Free;
end;

procedure TTransparentBitmap.GetScreenBitmap(r: TRect);
var DC: HDC;
begin
  Bitmap.Width := r.Right-r.Left+1;
  Bitmap.Height := r.Bottom-r.Top+1;
  DC := GetDC(0);
  try
    with Bitmap do
      BitBlt(Canvas.Handle, 0, 0,
             Width, Height, DC, r.Left, r.Top, SrcCopy);
  finally
    ReleaseDC(0, DC);
  end;
end;

procedure TTransparentBitmap.NewBitmap;
begin
  FreeBitmap;
  Bitmap := TBitmap.Create;
  Bitmap.PixelFormat := pf24bit;
end;

procedure TTransparentBitmap.NewTransBitmap;
begin
  FreeTransBitmap;
  TransBitmap := TBitmap.Create;
  TransBitmap.PixelFormat := pf24bit;
end;

procedure TTransparentBitmap.PrepareScreenBitmap(r: TRect);
begin
  NewBitmap;
  GetScreenBitmap(R);
end;

end. 
