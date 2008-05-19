unit uHelpers;

interface

uses
  Windows, Graphics, Math;

procedure ScreenShot(activeWindow: bool; destBitmap : TBitmap);
procedure GradHorizontal(Canvas: TCanvas; Rect: TRect; FromColor,
 ToColor: TColor);
procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor: TColor);

implementation

procedure ScreenShot(activeWindow: bool; destBitmap : TBitmap);
var
   w,h : integer;
   DC : HDC;
   hWin : Cardinal;
   r : TRect;
begin
   if activeWindow then
   begin
     hWin := GetForegroundWindow;
     dc := GetWindowDC(hWin) ;
     GetWindowRect(hWin,r) ;
     w := r.Right - r.Left;
     h := r.Bottom - r.Top;
   end
   else
   begin
     hWin := GetDesktopWindow;
     dc := GetDC(hWin) ;
     w := GetDeviceCaps (DC, HORZRES) ;
     h := GetDeviceCaps (DC, VERTRES) ;
   end;

   try
    destBitmap.Width := w;
    destBitmap.Height := h;
    BitBlt(destBitmap.Canvas.Handle,
           0,
           0,
           destBitmap.Width,
           destBitmap.Height,
           DC,
           0,
           0,
           SRCCOPY) ;
   finally
    ReleaseDC(hWin, DC) ;
   end;
end;

procedure GradHorizontal(Canvas: TCanvas; Rect: TRect; FromColor,
 ToColor: TColor);
var
  X:integer;
  dr,dg,db:Extended;
  C1,C2:TColor;
  r1,r2,g1,g2,b1,b2:Byte;
  R,G,B:Byte;
  cnt:integer;
begin
  C1 := FromColor;
  R1 := GetRValue(C1) ;
  G1 := GetGValue(C1) ;
  B1 := GetBValue(C1) ;

  C2 := ToColor;
  R2 := GetRValue(C2) ;
  G2 := GetGValue(C2) ;
  B2 := GetBValue(C2) ;

  dr := (R2-R1) / Rect.Right-Rect.Left;
  dg := (G2-G1) / Rect.Right-Rect.Left;
  db := (B2-B1) / Rect.Right-Rect.Left;

  cnt := 0;
  for X := Rect.Left to Rect.Right-1 do
  begin
    R := R1+Ceil(dr*cnt) ;
    G := G1+Ceil(dg*cnt) ;
    B := B1+Ceil(db*cnt) ;

    Canvas.Pen.Color := RGB(R,G,B) ;
    Canvas.MoveTo(X,Rect.Top) ;
    Canvas.LineTo(X,Rect.Bottom) ;
    inc(cnt) ;
  end;
end;

procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor: TColor);
var
  Y:integer;
  dr,dg,db:Extended;
  C1,C2:TColor;
  r1,r2,g1,g2,b1,b2:Byte;
  R,G,B:Byte;
  cnt:Integer;
begin
   C1 := FromColor;
   R1 := GetRValue(C1) ;
   G1 := GetGValue(C1) ;
   B1 := GetBValue(C1) ;

   C2 := ToColor;
   R2 := GetRValue(C2) ;
   G2 := GetGValue(C2) ;
   B2 := GetBValue(C2) ;

   dr := (R2-R1) / Rect.Bottom-Rect.Top;
   dg := (G2-G1) / Rect.Bottom-Rect.Top;
   db := (B2-B1) / Rect.Bottom-Rect.Top;

   cnt := 0;
   for Y := Rect.Top to Rect.Bottom-1 do
   begin
      R := R1+Ceil(dr*cnt) ;
      G := G1+Ceil(dg*cnt) ;
      B := B1+Ceil(db*cnt) ;

      Canvas.Pen.Color := RGB(R,G,B) ;
      Canvas.MoveTo(Rect.Left,Y) ;
      Canvas.LineTo(Rect.Right,Y) ;
      Inc(cnt) ;
   end;
end;


end.
