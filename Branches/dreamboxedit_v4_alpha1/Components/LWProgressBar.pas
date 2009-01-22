unit LWProgressBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, ComCtrls, Graphics, Dialogs,
  Math, Forms;

type
  TBCircleDirection = (diClockwise,diCounterclockwise);
type
  TBType = (btCircle,btRectangle,btSinus);

type
  TLWProgressBar = class(TCustomControl)
  private
    { Private declarations }
    bm: TBitmap;
    cbm: TBitmap;
    CapX,CapY: Integer;
    LDPos: Integer;
    ClearFirst: Boolean;
    ParmsChecked: Boolean;

    fBarType: TBType;
    fMin: Longword;
    fMax: Longword;
    fPosition: Longword;
    fCircleDirection: TBCircleDirection;
    fColor: TColor;
    fBackgroundColor: TColor;
    fBarColor: TColor;
    fBarStepSize: Integer;
    fBarBlockSize: Integer;
    fBorderWidth: Integer;
    fCircleDensity: Integer;
    fCircleRadius: Integer;
    fCircleBarWidth: Integer;
    fRectangleSlant: Integer;
    fOutlineColor1: TColor;
    fOutlineColor2: TColor;
    fCaption: String;
    fCaptionOutline: Boolean;
    fCaptionOutlineColor1: TColor;
    fCaptionOutlineColor2: TColor;
    fFont: TFont;
    fSetDefaults: Boolean;
    procedure SetBarType(Val: TBType);
    procedure SetMin(Val: Longword);
    procedure SetMax(Val: Longword);
    procedure SetPosition(Val: Longword);
    procedure SetCircleDirection(Val: TBCircleDirection);
    procedure SetColor(Val: TColor);
    procedure SetBackgroundColor(Val: TColor);
    procedure SetBarColor(Val: TColor);
    procedure SetBarStepSize(Val: Integer);
    procedure SetBarBlockSize(Val: Integer);
    procedure SetBorderWidth(Val: Integer);
    procedure SetCircleDensity(Val: Integer);
    procedure SetOutlineColor1(Val: TColor);
    procedure SetOutlineColor2(Val: TColor);
    procedure SetRectangleSlant(Val: Integer);
    procedure SetCircleRadius(Val: Integer);
    procedure SetCircleBarWidth(Val: Integer);
    procedure SetCaption(Val: String);
    procedure SetCaptionOutline(Val: Boolean);
    procedure SetCaptionOutlineColor1(Val: TColor);
    procedure SetCaptionOutlineColor2(Val: TColor);
    procedure SetFont(Val: TFont);
    procedure SetSetDefaults(Val: Boolean);
    procedure CreateCaptionBitmap(w,h: Integer; Text: String);
    function CheckParmsOK: Boolean;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Align;
    property Anchors;
    property ShowHint;
    property Visible;
    property BarType: TBType read fBarType write SetBarType;
    property Min: Longword read fMin write SetMin;
    property Max: Longword read fMax write SetMax;
    property Position: Longword read fPosition write SetPosition;
    property CircleDirection: TBCircleDirection read fCircleDirection write SetCircleDirection;
    property Color: TColor read fColor write SetColor;
    property BackgroundColor: TCOlor read fBackgroundColor write SetBackgroundColor;
    property BarColor: TColor read fBarColor write SetBarColor;
    property BarStepSize: Integer read fBarStepSize write SetBarStepSize;
    property BarBlockSize: Integer read fBarBlockSize write SetBarBlockSize;
    property BorderWidth: Integer read fBorderWidth write SetBorderWidth;
    property CircleDensity: Integer read fCircleDensity write SetCircleDensity;
    property CircleRadius: Integer read fCircleRadius write SetCircleRadius;
    property CircleBarWidth: Integer read fCircleBarWidth write SetCircleBarWidth;
    property RectangleSlant: Integer read fRectangleSlant write SetRectangleSlant;
    property OutlineColor1: TColor read fOutlineColor1 write SetOutlineColor1;
    property OutlineColor2: TColor read fOutlineColor2 write SetOutlineColor2;
    property Caption: String read fCaption write SetCaption;
    property CaptionOutline: Boolean read fCaptionOutline write SetCaptionOutline;
    property CaptionOutlineColor1: TColor read fCaptionOutlineColor1 write SetCaptionOutlineColor1;
    property CaptionOutlineColor2: TColor read fCaptionOutlineColor2 write SetCaptionOutlineColor2;
    property Font: TFont read fFont write SetFont;
    property SetDefaults: Boolean read fSetDefaults write SetSetDefaults;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Custom', [TLWProgressBar]);
end;

constructor TLWProgressBar.Create(AOwner: TComponent);
begin
  Inherited Create(AOwner);
  fFont := TFont.Create;

  { Setup the control }
  Width := 100;
  Height := 100;
  fBarType := btCircle;
  fMin := 1;
  fMax := 100;
  fPosition := 0;
  fColor := clBlack;
  fBackgroundColor := $00444444;
  fBarColor := clYellow;
  fOutlineColor1 := clSilver;
  fOutlineColor2 := clBlack;
  fCircleDirection := diClockwise;
  fBarStepSize := 20;
  fBarBlockSize := 10;
  fBorderWidth := 3;

  if csDesigning in ComponentState
  then fCaption := 'Progressbar';
  fCaptionOutline := true;
  fCaptionOutlineColor1 := clSilver;
  fCaptionOutlineColor2 := clBlack;
  fFont.Color := clWhite;

  fCircleRadius := 45;
  fCircleDensity := 4;
  fCircleBarWidth := 20;

  bm := TBitmap.Create;
  cbm := TBitmap.Create;

  LDPos := -1;
  ClearFirst := true;
  ParmsChecked := false;
  {showmessage('create');}
end;

destructor TLWProgressBar.Destroy;
begin
  { Kill the control }
  bm.Free;
  cbm.Free;
  fFont.Free;
  Inherited Destroy;
end;

procedure TLWProgressBar.CreateCaptionBitmap(w,h: Integer; Text: String);
var
  tc: TColor;
  x,y: Integer;
begin
  cbm.Width := w+1;
  cbm.Height := h+1;
  cbm.Transparent := True;
  if fFont.Color <> $123456
  then tc := $123456
  else tc := $654321;
  cbm.TransparentColor := tc;
  cbm.TransparentMode := tmFixed;

  with cbm.Canvas do
  begin;
    Brush.Color := tc;
    Brush.Style := bsSolid;
    FillRect(cbm.Canvas.ClipRect);
    Font.Assign(fFont);
    Font.Color := fFont.Color;
    TextRect(Rect(1,1,w,h),1,1,Text);

    if fCaptionOutline
    then begin;
      for y := 0 to cbm.Height-2 do begin;
        for x := 0 to cbm.Width-2 do begin;
          if pixels[x,y] = tc
          then begin;
            if (pixels[x-1,y-1] = fFont.Color) or
               (pixels[x,y-1] = fFont.Color)
            then pixels[x,y] := fCaptionOutlineColor2;
            if (pixels[x+1,y+1] = fFont.Color) or
               (pixels[x+1,y] = fFont.Color)
            then pixels[x,y] := fCaptionOutlineColor1;
          end;
        end;
      end;
    end;
  end;
end;

function TLWProgressBar.CheckParmsOK: Boolean;
begin
  { Check parameters }
  Result := False;

  if (fCircleDensity < 1) or (fCircleDensity > 10)
  then MessageDlg('Density must be a value between 1 and 10',
                  mtError,[mbOK],0)
  else
  if (fBarBlockSize < 1) or (fBarBlockSize > fBarStepSize)
  then MessageDlg('BarBlockSize must be a value between 0 and BarStepSize',
                  mtError,[mbOK],0)
  else
  if (fCircleRadius < 2)
  then MessageDlg('Radius must be a value greater than 2',
                  mtError,[mbOK],0)
  else
  if (fCircleBarWidth < 1) or (fCircleBarWidth > fCircleRadius)
  then MessageDlg('BarWidth must be a value between 1 and Radius',
                  mtError,[mbOK],0)
  else
  if (fBarType = btRectangle) and ((fRectangleSlant < -15) or
                                   (fRectangleSlant > 15))
  then MessageDlg('Slant must be a value between -15 and +15',
                  mtError,[mbOK],0)
  else begin;
    ParmsChecked := True;
    Result := True;
  end;
end;

procedure TLWProgressBar.SetBarType(Val: TBType);
begin
  if fBarType <> Val then
  begin
    fBarType := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetSetDefaults(Val: Boolean);
begin
  if val = true then
  begin
    fMin := 1;
    fPosition := 0;
    fColor := clBlack;
    fBackgroundColor := $00444444;
    fBarColor := clYellow;
    fOutlineColor1 := clMedGray;
    fOutlineColor2 := clGray;
    fCircleDirection := diClockwise;

    fCircleRadius := 45;
    fCircleBarWidth := 20;

    case fBarType of
      btCircle:
      begin;
        fMax := 100;
        fBarStepSize := 20;
        fBarBlockSize := 10;
        fCircleDensity := 4;
        if csDesigning in ComponentState
        then begin;
          Height := 100;
          Width := 100;
        end;
      end;
      btRectangle:
      begin;
        fMax := 100;
        fBarStepSize := 4;
        fBarBlockSize := 2;
        fBorderWidth := 3;
        if not (csLoading in ComponentState)
        then begin;
          Height := 15;
          Width := 150;
        end;
      end;
      btSinus:
      begin;
        fMax := 100;
        fBarStepSize := 1;
        fBarBlockSize := 1;
        fBorderWidth := 4;
        if not (csLoading in ComponentState)
        then begin;
          Height := 20;
          Width := 150;
        end;
      end;
    end;

    fSetDefaults := false;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetMin(Val: Longword);
begin
  if fMin <> Val then
  begin
    fMin := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetMax(Val: Longword);
begin
  if fMax <> Val then
  begin
    fMax := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetPosition(Val: Longword);
begin
  if fPosition <> Val then
  begin

    { Ignore non zero out-of-boud values }
    if (Val = 0) or ((Val >= fMin) and (Val <= fMax))
    then begin;
      { Completely rebuild progressmeter when value decrees }
      if Val < fPosition
      then ClearFirst := True;
      fPosition := Val;
      ParmsChecked := false;
      Paint;
    end;
  end;
end;

procedure TLWProgressBar.SetCircleDirection(Val: TBCircleDirection);
begin
  if fCircleDirection <> Val then
  begin
    fCircleDirection := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetColor(Val: TColor);
begin
  if fColor <> Val then
  begin
    fColor := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetBackgroundColor(Val: TColor);
begin
  if fBackgroundColor <> Val then
  begin
    fBackgroundColor := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetBarColor(Val: TColor);
begin
  if fBarColor <> Val then
  begin
    fBarColor := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetBorderWidth(Val: Integer);
begin
  if fBorderWidth <> Val then
  begin
    fBorderWidth := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetOutlineColor1(Val: TColor);
begin
  if fOutlineColor1 <> Val then
  begin
    fOutlineColor1 := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetOutlineColor2(Val: TColor);
begin
  if fOutlineColor2 <> Val then
  begin
    fOutlineColor2 := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCircleRadius(Val: Integer);
begin
  if fCircleRadius <> Val then
  begin
    fCircleRadius := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCircleDensity(Val: Integer);
begin
  if fCircleDensity <> Val then
  begin
    fCircleDensity := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetBarStepSize(Val: Integer);
begin
  if fBarStepSize <> Val then
  begin
    fBarStepSize := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetBarBlockSize(Val: Integer);
begin
  if fBarBlockSize <> Val then
  begin
    fBarBlockSize := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCircleBarWidth(Val: Integer);
begin
  if fCircleBarWidth <> Val then
  begin
    fCircleBarWidth := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetRectangleSlant(Val: Integer);
begin
  if fRectangleSlant <> Val then
  begin
    fRectangleSlant := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCaption(Val: String);
begin
  if fCaption <> Val then
  begin
    fCaption := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCaptionOutline(Val: Boolean);
begin
  if fCaptionOutline <> Val then
  begin
    fCaptionOutline := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCaptionOutlineColor1(Val: TColor);
begin
  if fCaptionOutlineColor1 <> Val then
  begin
    fCaptionOutlineColor1 := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetCaptionOutlineColor2(Val: TColor);
begin
  if fCaptionOutlineColor2 <> Val then
  begin
    fCaptionOutlineColor2 := Val;
    ParmsChecked := false;
    Invalidate;
  end;
end;

procedure TLWProgressBar.SetFont(Val: TFont);
begin
  if fFont <> Val then
  begin
    fFont.Assign(Val);
    ParmsChecked := false;
    Invalidate;
  end;
end;

{ Progressbar coding }
procedure TLWProgressBar.Paint();
var
  l,t,r,b,bs: Integer;
  cbw,ofs,bofs: Integer;
  cp,cb,cd,tpos,bpos: Integer;
  c,s: Extended;
  di: Integer;
  cr: TRect;
label
  NextRectangleCP,
  NextCircleCD,
  NextSinusCP,
  Ready;
begin
  { Don't paint the progressbar until all settings are loaded }
  if csloading in componentstate
  then exit;

  { Check parameters if not already done or if changed }
  if not ParmsChecked
  then
    if not CheckParmsOK
    then Exit;

  bm.Width := Width;
  bm.Height := Height;

  l := 0;
  t := 0;
  r := Width;
  b := Height;

  { Create the bitmap with the caption }
  if (fCaption <> '') and ((ClearFirst) or (csDesigning in ComponentState)) 
  then begin;
    bm.Canvas.Font.Assign(fFont);
    CapX := ((bm.Width - bm.Canvas.TextWidth(fCaption)) div 2) - 1;
    CapY := ((bm.Height - bm.Canvas.TextHeight(fCaption)) div 2) - 1;
    CreateCaptionBitmap(bm.Canvas.TextWidth(fCaption)+2+4,
                        bm.Canvas.TextHeight(fCaption)+2,
                        fCaption);
  end;

  with bm.Canvas do
  begin
    Case fBarType of
      { --------- Rectangle progressbar --------- }
      btRectangle:
      begin;
        { Set offset if a negative slant was specified and set bar slant}
        if fRectangleSlant >= 0
        then ofs := 0
        else ofs := -fRectangleSlant;

        { If requested or if in design state, clear the Canvas first
          and prepare the caption bitmap}
        if (ClearFirst) or (csDesigning in ComponentState)
        then begin;
          { Paint background }
          Brush.Color := fColor;
          Brush.Style := bsSolid;
          FillRect(bm.Canvas.ClipRect);

          { Paint border in the two outline colors }
          Brush.Style := bsClear;
          Pen.Color := fOutlineColor1;
          Pen.Style := psSolid;
          Pen.Width := 1;
          Polyline([Point(l+ofs+fRectangleSlant,t),
                    Point(r-ofs-2,t),
                    Point(r-ofs-2-fRectangleSlant,b-2),
                    Point(l+ofs,b-2),
                    Point(l+ofs+fRectangleSlant,t)]);
          Pen.Color := fOutlineColor2;
          Polyline([Point(l+ofs+1+fRectangleSlant,t+1),
                    Point(r-ofs-1,t+1),
                    Point(r-ofs-1-fRectangleSlant,b-1),
                    Point(l+ofs+1,b-1),
                    Point(l+ofs+1+fRectangleSlant,t+1)]);
          if fBackgroundColor <> fColor
          then begin;
            Brush.Color := fBackGroundColor;
            Floodfill(Width div 2,Height div 2,fColor,fsSurface);
          end;

          ClearFirst := false;
          LDPos := -1;
        end;

        { This was all if requested position is 0 }
        if (fPosition = 0) or
           (fPosition = fMin)
        then goto Ready;

        { Start first block }
        Pen.Color := fBarColor;
        Pen.Style := psSolid;
        cb := 0;
        cp := 0;

        { Set first and last points of bar}
        bs := Round((height-6)/height*fRectangleSlant);
        bpos := r-7;      { Boundary position }
        tpos := Round(((fPosition-fMin)/(fMax-fMin))*(bpos-abs(fRectangleSlant)));
        if tpos > bpos
        then tpos := bpos;
        bofs := ofs+3;
        if fRectangleSlant >= 0
        then inc(bofs)
        else dec(bofs);

        while cp < tpos do
        begin;

          { Paint block }
          for cp := cp to cp+fBarBlockSize-1 do
          begin;
            { Exit if max position to be drawn or boundary reached }
            if (cp > tpos) or
               (cp > bpos)
            then break;

            { Check last drawn position, skip untill there }
            if cp <= LDPos
            then goto NextRectangleCP;

            { Draw vertical line }
            {Polyline([Point(bofs+cp+bs,t+3),
                      Point(bofs+cp,b-3)]);}
            Polyline([Point(bofs+cp+bs,t+fBorderWidth),
                      Point(bofs+cp,b-fBorderWidth)]);
            LDPos := cp;

            if not(csDesigning in ComponentState)
            then Application.ProcessMessages;

            NextRectangleCP:
          end;

          { Next block }
          inc(cb);
          cp := cb*fBarStepSize;
        end;
      end;

      { --------- Circle progressbar --------- }
      btCircle:
      begin;
        { Set direction to draw circle }
        di := 1;
        if fCircleDirection = diCounterclockwise
        then di := -1;

        { If requested or if in design state, clear the Canvas first }
        if (ClearFirst) or (csDesigning in ComponentState)
        then begin;
          { Paint background }
          Brush.Color := fColor;
          Brush.Style := bsSolid;
          FillRect(Rect(l,t,r,b));

          { Paint border }
          Brush.Style := bsClear;
          Pen.Style := psSolid;
          Pen.Width := 1;
          Pen.Color := fOutLineColor1;
          Ellipse(Rect(l,t,r,b));
          Pen.Color := fOutLineColor2;
          Ellipse(Rect(l+1,t+1,r-1,b-1));
          if fBackgroundColor <> fColor
          then begin;
            Brush.Color := fBackGroundColor;
            Floodfill(Width div 2,Height div 2,fColor,fsSurface);
          end;

          ClearFirst := false;
          LDPos := -1;
        end;

        { This was all if requested position is 0 }
        if (fPosition = 0) or
           (fPosition = fMin)
        then goto Ready;

        { Start first block }
        cb := 0;
        cd := 0;
        tpos := Round(((fPosition-fMin)/(fMax-fMin))*360);

        while cd < tpos do
        begin;

          { Paint block }
          for cd := cd*fCircleDensity to
                    cd*fCircleDensity+((fBarBlockSize*fCircleDensity)-1) do
          begin;
            { Exit if max position to be drawn reached }
            if cd > tpos*fCircleDensity
            then break;

            { Check last drawn degree, skip untill there }
            if cd <= LDPos
            then goto NextCircleCD;

            { Draw pixel }
            s := cos(DegToRad(cd/fCircleDensity));
            c := sin(DegToRad(cd/fCircleDensity));
            for cbw := 0 to fCircleBarWidth-1 do
            begin;
              bm.canvas.pixels[round(di*c*(fCircleRadius-cbw))+(width div 2),
                               -round(s*(fCircleRadius-cbw))+(height div 2)] := fBarColor;
            end;
            LDPos := cd - 1;

            if not(csDesigning in ComponentState)
            then Application.ProcessMessages;

            NextCircleCD:
          end;

          { Next block }
          inc(cb);
          cd := cb*fBarStepSize;
        end;
      end;

      { --------- Sinus progressbar --------- }
      btSinus:
      begin;

        { If requested or if in design state, clear the Canvas first
          and prepare the caption bitmap}
        if (ClearFirst) or (csDesigning in ComponentState)
        then begin;
          { Paint background }
          Brush.Color := fColor;
          Brush.Style := bsSolid;
          FillRect(bm.Canvas.ClipRect);

          { Paint border in the two outline colors }
          Brush.Style := bsClear;
          Pen.Color := fOutlineColor1;
          Pen.Style := psSolid;
          Pen.Width := 1;
          Polyline([Point(l,t),
                    Point(r-2,t),
                    Point(r-2,b-2),
                    Point(l,b-2),
                    Point(l,t)]);
          Pen.Color := fOutlineColor2;
          Polyline([Point(l+1,t+1),
                    Point(r-1,t+1),
                    Point(r-1,b-1),
                    Point(l+1,b-1),
                    Point(l+1,t+1)]);
          if fBackgroundColor <> fColor
          then begin;
            Brush.Color := fBackGroundColor;
            Floodfill(Width div 2,Height div 2,fColor,fsSurface);
          end;

          ClearFirst := false;
          LDPos := -1;
        end;

        { This was all if requested position is 0 }
        if (fPosition = 0) or
           (fPosition = fMin)
        then goto Ready;

        { Start first block }
        Pen.Color := fBarColor;
        Pen.Style := psSolid;
        cp := 0;

        { Set first and last points of bar}
        bpos := r-(fBorderWidth*2)-1;      { Boundary position }
        tpos := Round(((fPosition-fMin)/(fMax-fMin))*(bpos));
        if tpos > bpos
        then tpos := bpos;

        while cp < tpos do
        begin;

          { Exit if max position to be drawn or boundary reached }
          if (cp > tpos) or
             (cp > bpos)
          then break;

          { Check last drawn position, skip untill there }
          if cp <= LDPos
          then goto NextSinusCP;

          { Draw vertical line }
          Pixels[cp+fBorderWidth,Round((b/2)+((b/2)-fBorderWidth)*Sin(cp/3))-1] := fBarColor;
          Pixels[cp+fBorderWidth,Round((b/2)+((b/2)-fBorderWidth)*Sin(cp/3))] := fBarColor;
          LDPos := cp;

          if not(csDesigning in ComponentState)
          then Application.ProcessMessages;

          NextSinusCP:
          { Next point }
          inc(cp);
        end;
      end;
    end;

    Ready:

    { Copy bitmap with caption over above created bitmap }
    if fCaption <> ''
    then bm.Canvas.Draw(CapX,CapY,cbm);
  end;

  { Copy created bitmap over component canvas }
  Canvas.CopyRect(Canvas.ClipRect,bm.Canvas,Canvas.ClipRect);
end;

end.
