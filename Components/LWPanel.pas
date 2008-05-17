unit LWPanel;

interface

uses
  Types, Classes, Windows, SysUtils, Controls, ExtCtrls, Graphics, Math;

type
  TEffect = (None,Lines,GradientH,GradientV);

type                                
  TLWPanel = class(TPanel)
    constructor Create(AComponent: TComponent); override;
    destructor destroy; override;
  private
    { Private declarations }
    fEffect: TEffect;
    fColor1: TColor;                
    fColor2: TColor;
    fLineWidth1: Integer;
    fLineWidth2: Integer;
    fMarginLeft: Integer;
    fMarginTop: Integer;
    fMarginRight: Integer;
    fMarginBottom: Integer;
           
    procedure SetEffect(Val: TEffect);
    procedure SetColor1(Val: TColor);
    procedure SetColor2(Val: TColor);
    procedure SetLineWidth1(Val: Integer);
    procedure SetLineWidth2(Val: Integer);
    procedure SetMarginLeft(Val: Integer);
    procedure SetMarginTop(Val: Integer);
    procedure SetMarginRight(Val: Integer);
    procedure SetMarginBottom(Val: Integer);
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
  published
    { Published declarations }
    property Effect: TEffect read fEffect write SetEffect default Lines;
    property Color1: TColor read fColor1 write SetColor1 default clWhite;
    property Color2: TColor read fColor2 write SetColor2 default clYellow;
    property LineWidth1: Integer read fLineWidth1 write SetLineWidth1 default 1;
    property LineWidth2: Integer read fLineWidth2 write SetLineWidth2 default 1;
    property MarginLeft: Integer read fMarginLeft write SetMarginLeft default 0;
    property MarginTop: Integer read fMarginTop write SetMarginTop default 0;
    property MarginRight: Integer read fMarginRight write SetMarginRight default 0;
    property MarginBottom: Integer read fMarginBottom write SetMarginBottom default 0;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Custom',[TLWPanel]);
end;

constructor TLWPanel.Create(AComponent: TComponent);
begin
  inherited Create(AComponent);

  fEffect := Lines;
  fColor1 := clWhite;
  fColor2 := clYellow;
  fLineWidth1 := 1;
  fLineWidth2 := 1;
  fMarginLeft := 0;
  fMarginTop := 0;
  fMarginRight := 0;
  fMarginBottom := 0;
end;

destructor TLWPanel.Destroy;
begin
  inherited destroy;
end;

procedure TLWPanel.SetEffect(Val: TEffect);
begin
   fEffect := Val;
   Repaint;
end;

procedure TLWPanel.SetColor1(Val: TColor);
begin
   fColor1 := Val;
   Repaint;
end;

procedure TLWPanel.SetColor2(Val: TColor);
begin
   fColor2 := Val;
   Repaint;
end;

procedure TLWPanel.SetLineWidth1(Val: Integer);
begin
   if Val >= 1
   then fLineWidth1 := Val
   else fLineWidth1 := 1;
   Repaint;
end;

procedure TLWPanel.SetLineWidth2(Val: Integer);
begin
   if Val >= 1
   then fLineWidth2 := Val
   else fLineWidth2 := 1;
   Repaint;
end;

procedure TLWPanel.SetMarginLeft(Val: Integer);
begin
   fMarginLeft := Val;
   Repaint;
end;

procedure TLWPanel.SetMarginRight(Val: Integer);
begin
   fMarginRight := Val;
   Repaint;
end;

procedure TLWPanel.SetMarginTop(Val: Integer);
begin
   fMarginTop := Val;
   Repaint;
end;

procedure TLWPanel.SetMarginBottom(Val: Integer);
begin
   fMarginBottom := Val;
   Repaint;
end;

procedure TLWPanel.Paint;
var
  r: TRect;
  d,i,j,h,s: Integer;
  sr,sg,sb: Real;
  cr,cg,cb: Byte;
begin
  inherited Paint;

  r.Left := MarginLeft;
  r.Top := MarginTop;
  r.Right := Width - MarginRight;
  r.Bottom := Height - MarginBottom;

  Canvas.Brush.Color := Color2;
  Canvas.FillRect(r);
  case Effect of
    Lines:
    begin;
      i := r.Top;
      while i < r.Bottom do begin;
        Canvas.Pen.Color := Color1;
        for j := i to min(i+LineWidth1-1,r.Bottom-1) do begin;
          Canvas.Polyline([Point(r.Left,j),Point(r.Right,j)]);
        end;
        i := i + LineWidth1 + LineWidth2;
      end;
      if Caption <> ''
      then begin;
        Canvas.Brush.Color := Color;
        Canvas.Pen.Color := Canvas.Font.Color;
        h := r.Top+Canvas.TextHeight(' '+Caption)+3;
        Canvas.TextRect(Rect(r.Left,r.Top,r.Right,h),MarginLeft,MarginTop,' '+Caption);
      end;
    end;
    GradientH:
    begin;
      d := 0;
      if Caption <> ''
      then begin;
        Canvas.Brush.Color := Color;
        Canvas.Pen.Color := Canvas.Font.Color;
        h := r.Top+Canvas.TextHeight(' '+Caption)+3;
        Canvas.TextRect(Rect(r.Left,r.Top,r.Right,h),MarginLeft,MarginTop,' '+Caption);
        d := Canvas.TextHeight(Caption)+3;
      end;
      s := r.Bottom - (r.Top+d);
      if s = 0
      then s := 1;
      sr := (GetRValue(Color2) - GetRValue(Color1)) / s;
      sg := (GetGValue(Color2) - GetGValue(Color1)) / s;
      sb := (GetBValue(Color2) - GetBValue(Color1)) / s;
      s := 0;
      for i := r.Top+d to r.Bottom-1 do begin;
        cr := round(GetRValue(Color1) + sr*s);
        cg := round(GetGValue(Color1) + sg*s);
        cb := round(GetBValue(Color1) + sb*s);
        Canvas.Pen.Color := RGB(cr,cg,cb);
        Canvas.PolyLine([Point(r.Left,i),Point(r.Right,i)]);
        inc(s);
      end;
    end;
    GradientV:
    begin;
      s := r.Right - r.Left+10;
      if s = 0
      then s := 1;
      sr := (GetRValue(Color2) - GetRValue(Color1)) / s;
      sg := (GetGValue(Color2) - GetGValue(Color1)) / s;
      sb := (GetBValue(Color2) - GetBValue(Color1)) / s;
      for i := r.Left to r.Right-1 do begin;
        cr := round(GetRValue(Color1) + sr*i);
        cg := round(GetGValue(Color1) + sg*i);
        cb := round(GetBValue(Color1) + sb*i);
        Canvas.Pen.Color := RGB(cr,cg,cb);
        Canvas.PolyLine([Point(i,r.Top),Point(i,r.Bottom)]);
      end;
      if Caption <> ''
      then begin;
        Canvas.Brush.Color := Color;
        Canvas.Pen.Color := Canvas.Font.Color;
        h := r.Top+Canvas.TextHeight(' '+Caption)+3;
        Canvas.TextRect(Rect(r.Left,r.Top,r.Right,h),MarginLeft,MarginTop,' '+Caption);
      end;
    end;
    else;
  end;
end;

end.
