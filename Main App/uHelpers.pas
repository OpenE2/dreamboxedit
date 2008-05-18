unit uHelpers;

interface

uses
  Windows, Graphics;

procedure ScreenShot(activeWindow: bool; destBitmap : TBitmap);

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


end.
