unit LWBtn;

interface

uses
  Windows,
  SysUtils, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TOffBtnAbout = (abNone,abAbout);
  TOffBtnState = (bsInactive, bsActive, bsDown, bsDownAndOut);
  TOffBtnLook = (blOffice97,blOffice2000,blNormal,blRounded);
  TLWButton = class(TCustomControl)
  private
    { Private declarations }
    fAutoHeight: Boolean;
    fBtnKey: Boolean;
    fCancel: Boolean;
    fClicksDisabled: Boolean;
    fDefault: Boolean;
    fFocused: Boolean;
    fNoDots: Boolean;
    fBoldOnDefault: Boolean;
    fButtonLook: TOffBtnLook;
    fShowFocus: Boolean;
    fMouseTrack: Boolean;
    fWordWrap: Boolean;
    fCaption: TCaption;
    fTransparent: Boolean;
    fControl: TBitmap;
    fAbout: TOffBtnAbout;
    fMouseExit: TNotifyEvent;
    fMouseEnter: TNotifyEvent;
    fInActiveFont: TFont;
    fActiveFont: TFont;
    fDownFont: TFont;
    fInactiveColor: TColor;
    fInactiveLineColor: TColor;
    fInactiveOutlineColor1: TColor;
    fInactiveOutlineColor2: TColor;
    fInactiveOutlineColor3: TColor;
    fActiveColor: TColor;
    fActiveLineColor: TColor;
    fActiveOutlineColor1: TColor;
    fActiveOutlineColor2: TColor;
    fActiveOutlineColor3: TColor;
    fDownColor: TColor;
    fDownLineColor: TColor;
    fDownOutlineColor1: TColor;
    fDownOutlineColor2: TColor;
    fDownOutlineColor3: TColor;
    fRoundedPixels: Integer;
    fModalResult: TModalResult;
    capWrap: TStringList;
    capLines,tX: Integer;
    procedure GetWrapText(txt: String; tX: Integer);
    procedure DrawNormalFrame;
    procedure DrawRoundedFrame;
    procedure DrawOffice97Frame;
    procedure DrawOffice2000Frame;
    procedure SetAutoHeight(Val: Boolean);
    procedure SetCaption(Val: TCaption);
    procedure SetDefault(Value: Boolean);
    procedure SetInactiveFont(Val: TFont);
    procedure InactiveFontChanged(Sender: TObject);
    procedure SetActiveFont(Val: TFont);
    procedure ActiveFontChanged(Sender: TObject);
    procedure SetDownFont(Val: TFont);
    procedure DownFontChanged(Sender: TObject);
    procedure SetInactiveColor(Val: TColor);
    procedure SetInactiveLineColor(Val: TColor);
    procedure SetInactiveOutLineColor1(Val: TColor);
    procedure SetInactiveOutLineColor2(Val: TColor);
    procedure SetInactiveOutLineColor3(Val: TColor);
    procedure SetActiveColor(Val: TColor);
    procedure SetActiveLineColor(Val: TColor);
    procedure SetActiveOutlineColor1(Val: TColor);
    procedure SetActiveOutlineColor2(Val: TColor);
    procedure SetActiveOutlineColor3(Val: TColor);
    procedure SetDownColor(Val: TColor);
    procedure SetDownLineColor(Val: TColor);
    procedure SetDownOutlineColor1(Val: TColor);
    procedure SetDownOutlineColor2(Val: TColor);
    procedure SetDownOutlineColor3(Val: TColor);
    procedure SetRoundedPixels(Val: Integer);
    procedure SetShowFocus(Val: Boolean);
    procedure SetBoldOnDefault(Val: Boolean);
    procedure SetButtonLook(Val: TOffBtnLook);
    procedure SetMouseTrack(Val: Boolean);
    procedure SetTransparent(Val: Boolean);
    procedure SetWordWrap(Val: Boolean);
    procedure ShowAbout(Val: TOffBtnAbout);
    procedure Layout(var txtRect, bitRect: TRect);
    procedure CalculateTxt(var txtRect: TRect);
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message wm_LButtonDown;
    procedure WMMouseMove(var Message: TWMMouseMove); message wm_MouseMove;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message wm_LButtonUp;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message wm_RButtonDown;
    procedure CNCommand(var Message: TWMCommand); message cn_Command;
    procedure CNKeyDown(var Message: TWMKeyDown); message cn_KeyDown;
    procedure CMDialogChar(var Message: TCMDialogChar); message cm_DialogChar;
    procedure CMDialogKey(var Message: TCMDialogKey); message cm_DialogKey;
    procedure CMEnabledChanged(var Message: TMessage); message cm_EnabledChanged;
    procedure CMFocusChanged(var Message: TMessage); message cm_FocusChanged;
    procedure WMKillFocus(var Message: TWMKillFocus); message wm_KillFocus;
    procedure WMSetFocus(var Message: TWMSetFocus); message wm_SetFocus;
  protected
    { Protected declarations }
    fState: TOffBtnState;
    procedure Paint; override;
    procedure WndProc(var Message: TMessage); override;
    procedure CreateWnd; override;
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Click; override;
    procedure AdjustHeight;
  published
    { Published declarations }
    property ShowFocus: Boolean read fShowFocus write SetShowFocus default True;
    property BoldOnDefault: Boolean read fBoldOnDefault write SetBoldOnDefault default True;
    property MouseTrack: Boolean read fMouseTrack write SetMouseTrack default True;
    property ButtonLook: TOffBtnLook read fButtonLook write SetButtonLook default blOffice2000;
    property About: TOffBtnAbout read fAbout write ShowAbout default abNone;
    property Action;
    property InactiveFont: TFont read fInactiveFont write SetInactiveFont;
    property ActiveFont: TFont read fActiveFont write SetActiveFont;
    property DownFont: TFont read fDownFont write SetDownFont;
    property InactiveColor: TColor read fInactiveColor write SetInactiveColor default clWhite;
    property InactiveLineColor: TColor read fInactiveLineColor write SetInactiveLineColor default clWhite;
    property InactiveOutlineColor1: TColor read fInactiveOutlineColor1 write SetInactiveOutlineColor1 default clWhite;
    property InactiveOutlineColor2: TColor read fInactiveOutlineColor2 write SetInactiveOutlineColor2 default clWhite;
    property InactiveOutlineColor3: TColor read fInactiveOutlineColor3 write SetInactiveOutlineColor3 default clWhite;
    property ActiveColor: TColor read fActiveColor write SetActiveColor default clWhite;
    property ActiveLineColor: TColor read fActiveLineColor write SetActiveLineColor default clSilver;
    property ActiveOutlineColor1: TColor read fActiveOutlineColor1 write SetActiveOutlineColor1 default clWhite;
    property ActiveOutlineColor2: TColor read fActiveOutlineColor2 write SetActiveOutlineColor2 default clWhite;
    property ActiveOutlineColor3: TColor read fActiveOutlineColor3 write SetActiveOutlineColor3 default clWhite;
    property DownColor: TColor read fDownColor write SetDownColor default clWhite;
    property DownLineColor: TColor read fDownLineColor write SetDownLineColor default clWhite;
    property DownOutlineColor1: TColor read fDownOutlineColor1 write SetDownOutlineColor1 default clWhite;
    property DownOutlineColor2: TColor read fDownOutlineColor2 write SetDownOutlineColor2 default clWhite;
    property DownOutlineColor3: TColor read fDownOutlineColor3 write SetDownOutlineColor3 default clWhite;
    property RoundedPixels: Integer read fRoundedPixels write SetRoundedPixels default 18;
    property Align;
    property Anchors;
    property AutoHeight: Boolean read fAutoHeight write SetAutoHeight default False;
    property BiDiMode;
    property Cancel: Boolean read fCancel write fCancel default False;
    property Caption: TCaption read fCaption write SetCaption;
    property Default: Boolean read fDefault write SetDefault default False;
    property DragCursor;
    property DragMode;
    property Enabled;
    property ModalResult: TModalResult read fModalResult write fModalResult default 0;
    property ParentBiDiMode;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop default True;
    property Transparent: Boolean read fTransparent write SetTransparent default False;
    property Visible;
    property WordWrap: Boolean read fWordWrap write SetWordWrap default True;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseExit: TNotifyEvent read fMouseExit write fMouseExit;
    property OnMouseEnter: TNotifyEvent read fMouseEnter write fMouseEnter;
    property OnMouseMove;
    property OnMouseUp;
  end;

procedure Register;

implementation

{ TLWButton }

uses ActnList;

procedure Register;
begin
  RegisterComponents('Custom', [TLWButton]);
end;

const
  CopyRightStr: PChar = 'TLWButton Component'+#13+
                        'v1.10 (05/03/2002)'+#13+
                        'By LlamaWare';
var
  CopyRightPtr: Pointer;

type
  TParentControl = class(TWinControl);

{ This procedure is exactly copied from RxLibrary VCLUtils. }
procedure CopyParentImage(Control: TControl; Dest: TCanvas);
var
  I, Count, X, Y, SaveIndex: Integer;
  DC: HDC;
  R, SelfR, CtlR: TRect;
begin
  if (Control = nil) or (Control.Parent = nil) then Exit;
  Count := Control.Parent.ControlCount;
  DC := Dest.Handle;
  with Control.Parent do ControlState := ControlState + [csPaintCopy];
  try
    with Control do begin
      SelfR := Bounds(Left, Top, Width, Height);
      X := -Left; Y := -Top;
    end;
    { Copy parent control image }
    SaveIndex := SaveDC(DC);
    try
      SetViewportOrgEx(DC, X, Y, nil);
      IntersectClipRect(DC, 0, 0, Control.Parent.ClientWidth,
        Control.Parent.ClientHeight);
      with TParentControl(Control.Parent) do begin
        Perform(WM_ERASEBKGND, DC, 0);
        PaintWindow(DC);
      end;
    finally
      RestoreDC(DC, SaveIndex);
    end;
    { Copy images of graphic controls }
    for I := 0 to Count - 1 do begin
      if Control.Parent.Controls[I] = Control then Break
      else if (Control.Parent.Controls[I] <> nil) and
        (Control.Parent.Controls[I] is TGraphicControl) then
      begin
        with TGraphicControl(Control.Parent.Controls[I]) do begin
          CtlR := Bounds(Left, Top, Width, Height);
          if Bool(IntersectRect(R, SelfR, CtlR)) and Visible then
          begin
            ControlState := ControlState + [csPaintCopy];
            SaveIndex := SaveDC(DC);
            try
              SetViewportOrgEx(DC, Left + X, Top + Y, nil);
              IntersectClipRect(DC, 0, 0, Width, Height);
              Perform(WM_PAINT, DC, 0);
            finally
              RestoreDC(DC, SaveIndex);
              ControlState := ControlState - [csPaintCopy];
            end;
          end;
        end;
      end;
    end;
  finally
    with Control.Parent do ControlState := ControlState - [csPaintCopy];
  end;
end;

{ This procedure divides text into a wordwrapped arrary }
procedure TLWButton.GetWrapText(txt: String; tX: Integer);
var
  Count,LastSpace,OCount: Integer;
  tmpTxt: String;
  txtStop: Boolean;
begin
  capLines := 0;
  capWrap.Clear;
  if fControl.Canvas.TextWidth(txt) <= tX then
  begin
    { If just a single line is required, we can skip the loop }
    capLines := 1;
    capWrap.Add(txt);
    Exit;
  end;
  { Chop the line of text into several lines }
  OCount := -1;
  Count := 0;
  while count < length(txt) do
  begin
    if Count = OCount then
    begin
      capLines := 0;
      capWrap.Clear;
      Exit;
    end;
    OCount := Count;
    LastSpace := 0;
    tmpTxt := '';
    txtStop := False;
    while not(txtStop) and (count < length(txt)) do
    begin
      inc(Count);
      if fControl.Canvas.TextWidth(tmpTxt+txt[Count]) > tX then
      begin
        txtStop := True;
        dec(Count);
      end
      else
      begin
        tmpTxt := tmpTxt + txt[Count];
        if txt[Count] = #32 then LastSpace := length(tmpTxt)-1;
      end;
    end;
    if (Count < length(txt)) and (LastSpace <> 0) then
    begin
      tmpTxt := copy(tmpTxt,1,LastSpace);
      Count := OCount + LastSpace + 1;
    end;
    inc(capLines);
    capWrap.Add(tmpTxt);
  end;
end;

{ This is the main window procedure }
procedure TLWButton.WndProc(var Message: TMessage);
begin
  case Message.Msg of
    WM_KILLFOCUS:
      MouseCapture := False;
    WM_LBUTTONDOWN, WM_LBUTTONDBLCLK:
      if not (csDesigning in ComponentState) and (not Focused) then
      begin
        { We don't allow clicks here, otherwise the control looks like it has
          been clicked twice }
        fClicksDisabled := True;
        Windows.SetFocus(Handle);
        fClicksDisabled := False;
        if not Focused then Exit;
      end;
    CN_COMMAND:
      if fClicksDisabled then Exit;
  end;
  inherited WndProc(Message);
end;

constructor TLWButton.Create(AOwner: TComponent);
begin
  { Setup the control, default as Office2000 Button }
  Inherited Create(AOwner);
  CopyRightPtr := @CopyRightStr;
  fAbout := abNone;
  fInactiveColor := $00CCFFFF;
  fInactiveLineColor := clSilver;
  fInactiveOutlineColor1 := clMaroon;   {not used in Office2000Button look}
  fInactiveOutlineColor2 := clMaroon;   {not used in Office2000Button look}
  fInactiveOutlineColor3 := clMaroon;   {not used in Office2000Button look}
  fActiveColor := $00CCFFFF;
  fActiveLineColor := clSilver;
  fActiveOutlineColor1 := clGray;
  fActiveOutlineColor2 := clWhite;
  fActiveOutlineColor3 := $00D6E7E7;
  fDownColor := $00CCFFFF;
  fDownLineColor := clSilver;
  fDownOutlineColor1 := clGray;
  fDownOutlineColor2 := clWhite;
  fDownOutlineColor3 := $00D6E7E7;
  fRoundedPixels := 16;
  fState := bsInactive;
  fTransparent := False;
  capWrap := TStringList.Create;
  fInactiveFont := TFont.Create;
  fInactiveFont.OnChange := InactiveFontChanged;
  fActiveFont := TFont.Create;
  fActiveFont.OnChange := ActiveFontChanged;
  fDownFont := TFont.Create;
  fDownFont.OnChange := DownFontChanged;
  Width := 70;
  Height := 23;
  TabStop := True;
  fShowFocus := True;
  fBoldOnDefault := True;
  fMouseTrack := True;
  fButtonLook := blOffice2000;
  fBtnKey := False;
  fNoDots := False;
  fWordWrap := True;
  fAutoHeight := False;
end;

destructor TLWButton.Destroy;
begin
  { Kill the control }
  fInactiveFont.Free;
  fActiveFont.Free;
  fDownFont.Free;
  capWrap.Free;
  Inherited Destroy;
end;

procedure TLWButton.Click;
var
  Form: TCustomForm;
  oState: TOffBtnState;
  Count: Integer;
begin
  oState := fState;
  if fBtnKey then
  begin
    { If a button was pressed, show the Down state }
    fState := bsDown;
    if fState <> oState then
    begin
      Invalidate;
      Application.ProcessMessages;
    end;
  end;
  { Handle ModalResult }
  Form := GetParentForm(Self);
  { When the control is clicked, all other TLWButtons should be in the
    inactive state }
  for count := 0 to Form.ComponentCount - 1 do
    if (Form.Components[Count] is TLWButton) and
      (Form.Components[Count] <> Self) then
    begin
      TLWButton(Form.Components[Count]).fState := bsInactive;
      TLWButton(Form.Components[Count]).Invalidate;
    end;
  if Form <> nil then Form.ModalResult := fModalResult;
  if (fBtnKey) or (fState <> oState) then
  begin
    { If a button was pressed, restore the original state }
    fState := oState;
    Invalidate;
    Application.ProcessMessages;
  end;
  { Reset key pressed variable }
  fBtnKey := False;
  inherited Click;
end;

procedure TLWButton.CreateWnd;
begin
  inherited CreateWnd;
  fFocused := fDefault;
  fNoDots := not fDefault;
end;

procedure TLWButton.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited ActionChange(Sender, CheckDefaults);
  if Sender is TCustomAction then
    with TCustomAction(Sender) do
      Self.Caption := Caption;
end;

procedure TLWButton.CNCommand(var Message: TWMCommand);
begin
  if Message.NotifyCode = BN_CLICKED then Click;
end;

{ Thanks to Michel for this procedure }
procedure TLWButton.CNKeyDown(var Message: TWMKeyDown);
begin
  with Message do
    if ((CharCode = VK_RETURN) or (CharCode = VK_SPACE)) and fFocused then
    begin
      { Set key pressed variable }
      fBtnKey := True;
      Click;
     { If we are using a modal form, release the mouse capture }
      if fModalResult <> mrNone then
        MouseCapture := False;
      Result := 1;
    end else
      inherited;
end;

{ Thanks to Kambiz and Michel for fixing a bug in this procedure }
procedure TLWButton.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, fCaption) and CanFocus then
    begin
      { Set key pressed variable }
      fBtnKey := True;
      Click;
      { If we are using a modal form, release the mouse capture }
      if fModalResult <> mrNone then MouseCapture := False;
      Result := 1;
    end else
      inherited;
end;

procedure TLWButton.CMDialogKey(var Message: TCMDialogKey);
begin
  with Message do
    if (((CharCode = VK_RETURN) or (CharCode = VK_SPACE)) and fFocused)
      or ((CharCode = VK_ESCAPE) and fCancel)
      and (KeyDataToShiftState(KeyData) = []) and CanFocus then
    begin
      { Set key pressed variable }
      fBtnKey := True;
      Click;
      { If we are using a modal form, release the mouse capture }
      if fModalResult <> mrNone then MouseCapture := False;
      Result := 1;
    end
    else
    begin
      if (CharCode = VK_F4) and (KeyDataToShiftState(KeyData) = [ssAlt]) then
      begin
        fState := bsInActive;
        MouseCapture := False;
      end;
      inherited;
    end;
end;

procedure TLWButton.CMEnabledChanged(var Message: TMessage);
begin
  Inherited;
  Invalidate;
end;

procedure TLWButton.CMFocusChanged(var Message: TMessage);
begin
  Inherited;
  Invalidate;
end;

{ This procedure picks up the focus loss }
procedure TLWButton.WMKillFocus(var Message: TWMKillFocus);
begin
  fState := bsInactive;
  fFocused := False;
  fNoDots := True;
  Invalidate;
end;

{ This procedure picks up the focus gain }
procedure TLWButton.WMSetFocus(var Message: TWMSetFocus);
begin
  fState := bsInactive;
  fFocused := True;
  fNoDots := False;
  Invalidate;
end;

{ Start of component configuration routines
  Thanks to Kambiz for adding auto height adjustment to them }
procedure TLWButton.SetCaption(Val: TCaption);
begin
  if fCaption <> Val then
  begin
    fCaption := Val;
    if fAutoHeight then AdjustHeight;
    Invalidate;
  end;
end;

{ Thanks to Kambiz for this procedure }
procedure TLWButton.SetAutoHeight(Val: Boolean);
begin
  if fAutoHeight <> Val then
  begin
    fAutoHeight := Val;
    if fAutoHeight then AdjustHeight;
    Invalidate;
  end;
end;

procedure TLWButton.SetDefault(Value: Boolean);
begin
  fDefault := Value;
  with GetParentForm(Self) do
    Perform(cm_FocusChanged, 0, Longint(ActiveControl));
end;

procedure TLWButton.SetInactiveColor(Val: TColor);
begin
  if fInactiveColor <> Val then
  begin
    fInactiveColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetInactiveLineColor(Val: TColor);
begin
  if fInactiveLineColor <> Val then
  begin
    fInactiveLineColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetInactiveOutlineColor1(Val: TColor);
begin
  if fInactiveOutlineColor1 <> Val then
  begin
    fInactiveOutlineColor1 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetInactiveOutlineColor2(Val: TColor);
begin
  if fInactiveOutlineColor2 <> Val then
  begin
    fInactiveOutlineColor2 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetInactiveOutlineColor3(Val: TColor);
begin
  if fInactiveOutlineColor3 <> Val then
  begin
    fInactiveOutlineColor3 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetActiveColor(Val: TColor);
begin
  if fActiveColor <> Val then
  begin
    fActiveColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetActiveLineColor(Val: TColor);
begin
  if fActiveLineColor <> Val then
  begin
    fActiveLineColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetActiveOutlineColor1(Val: TColor);
begin
  if fActiveOutlineColor1 <> Val then
  begin
    fActiveOutlineColor1 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetActiveOutlineColor2(Val: TColor);
begin
  if fActiveOutlineColor2 <> Val then
  begin
    fActiveOutlineColor2 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetActiveOutlineColor3(Val: TColor);
begin
  if fActiveOutlineColor3 <> Val then
  begin
    fActiveOutlineColor3 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetDownColor(Val: TColor);
begin
  if fDownColor <> Val then
  begin
    fDownColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetDownLineColor(Val: TColor);
begin
  if fDownLineColor <> Val then
  begin
    fDownLineColor := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetDownOutlineColor1(Val: TColor);
begin
  if fDownOutlineColor1 <> Val then
  begin
    fDownOutlineColor1 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetDownOutlineColor2(Val: TColor);
begin
  if fDownOutlineColor2 <> Val then
  begin
    fDownOutlineColor2 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetDownOutlineColor3(Val: TColor);
begin
  if fDownOutlineColor3 <> Val then
  begin
    fDownOutlineColor3 := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetRoundedPixels(Val: Integer);
begin
  if fRoundedPixels <> Val then
  begin
    fRoundedPixels := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetShowFocus(Val: Boolean);
begin
  if fShowFocus <> Val then
  begin
    fShowFocus := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetBoldOnDefault(Val: Boolean);
begin
  if fBoldOnDefault <> Val then
  begin
    fBoldOnDefault := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetButtonLook(Val: TOffBtnLook);
begin
  if fButtonLook <> Val then
  begin;
    fButtonLook := Val;
    Case fButtonLook of
      blOffice2000:
      begin;
        { Setup control for Office 2000 look }
        fInactiveColor := $00CCFFFF;
        fInactiveLineColor := clSilver;
        fInactiveOutlineColor1 := clMaroon;   {not used in Office2000Button look}
        fInactiveOutlineColor2 := clMaroon;   {not used in Office2000Button look}
        fInactiveOutlineColor3 := clMaroon;   {not used in Office2000Button look}
        fActiveColor := $00CCFFFF;
        fActiveLineColor := clSilver;
        fActiveOutlineColor1 := clGray;
        fActiveOutlineColor2 := clWhite;
        fActiveOutlineColor3 := $00D6E7E7;
        fDownColor := $00CCFFFF;
        fDownLineColor := clSilver;
        fDownOutlineColor1 := clGray;
        fDownOutlineColor2 := clWhite;
        fDownOutlineColor3 := $00D6E7E7;
        fState := bsInactive;
      end;
      blOffice97:
      begin;
        { Setup the control for Office 97 look }
        fInactiveColor := $00E1FFFF;
        fInactiveLineColor := clSilver;
        fInactiveOutlineColor1 := clMaroon; {not used in Office97Button look}
        fInactiveOutlineColor2 := clMaroon; {not used in Office97Button look}
        fInactiveOutlineColor3 := clMaroon; {not used in Office97Button look}
        fActiveColor := $00E1FFFF;
        fActiveLineColor := clSilver;
        fActiveOutlineColor1 := clWhite;
        fActiveOutlineColor2 := clGray;
        fActiveOutlineColor3 := clMaroon;   {not used in Office97Button look}
        fDownColor := $00E1FFFF;
        fDownLineColor := clSilver;
        fDownOutlineColor1 := clWhite;
        fDownOutlineColor2 := clGray;
        fDownOutlineColor3 := clMaroon;     {not used in Office97Button look}
        fState := bsInactive;
      end;
      blNormal:
      begin;
        { Setup the control for Normal Button look }
        fInactiveColor := clBtnFace;
        fInactiveLineColor := clMaroon;     {not used in NormalButton look}
        fInactiveOutlineColor1 := clWhite;
        fInactiveOutlineColor2 := clBlack;
        fInactiveOutlineColor3 := clGray;
        fActiveColor := clBtnFace;
        fActiveLineColor := clMaroon;       {not used in NormalButton look}
        fActiveOutlineColor1 := clBlack;
        fActiveOutlineColor2 := clWhite;
        fActiveOutlineColor3 := clGray;
        fDownColor := clBtnFace;
        fDownLineColor := clMaroon;         {not used in NormalButton look}
        fDownOutlineColor1 := clBlack;
        fDownOutlineColor2 := clGray;
        fDownOutlineColor3 := clMaroon;     {not used in NormalButton look}
        fState := bsInactive;
      end;
      blRounded:
      begin;
        { Setup the control for Normal Button look }
        fInactiveColor := clSkyBlue;
        fInactiveLineColor := clSkyBlue;
        fInactiveOutlineColor1 := clWhite;
        fInactiveOutlineColor2 := clBlack;
        fInactiveOutlineColor3 := clMaroon; {not used in RoundedButton look}
        fActiveColor := clSkyBlue;
        fActiveLineColor := clAqua;
        fActiveOutlineColor1 := clWhite;
        fActiveOutlineColor2 := clBlack;
        fActiveOutlineColor3 := clMaroon; {not used in RoundedButton look};
        fDownColor := clSkyBlue;
        fDownLineColor := clSilver;
        fDownOutlineColor1 := clWhite;
        fDownOutlineColor2 := clBlack;
        fDownOutlineColor3 := clBlack;
        fState := bsInactive;
      end;
    end;
    Invalidate;
  end;
end;

procedure TLWButton.SetMouseTrack(Val: Boolean);
begin
  if fMouseTrack <> Val then
  begin
    fMouseTrack := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetTransparent(Val: Boolean);
begin
  if fTransparent <> Val then
  begin
    fTransparent := Val;
    Invalidate;
  end;
end;

procedure TLWButton.SetWordWrap(Val: Boolean);
begin
  if fWordWrap <> Val then
  begin
    fWordWrap := Val;
    if fAutoHeight then AdjustHeight;
    Invalidate;
  end;
end;

procedure TLWButton.SetInactiveFont(Val: TFont);
begin
  fInactiveFont.Assign(Val);
end;

procedure TLWButton.InactiveFontChanged(Sender: TObject);
begin
  Invalidate;
end;

procedure TLWButton.SetActiveFont(Val: TFont);
begin
  fActiveFont.Assign(Val);
end;

procedure TLWButton.ActiveFontChanged(Sender: TObject);
begin
  Invalidate;
end;

procedure TLWButton.SetDownFont(Val: TFont);
begin
  fDownFont.Assign(Val);
end;

procedure TLWButton.DownFontChanged(Sender: TObject);
begin
  Invalidate;
end;

procedure TLWButton.ShowAbout(Val: TOffBtnAbout);
begin
  if fAbout <> Val then
  begin
    if Val = abNone then fAbout := Val else
    begin
      fAbout := abNone;
      MessageDlg(StrPas(CopyRightStr), mtInformation, [mbOk], 0);
    end;
    Invalidate;
  end;
end;

{ End of component configuration routines }

{ This procedure draws an Office 97 style frame }
procedure TLWButton.DrawOffice97Frame;
var
  rClient: TRect;
  dState:  TOffBtnState;
begin
  rClient := ClientRect;
  with fControl.Canvas do
  begin
    with rClient do
    begin
      Pen.Style := psSolid;
      { Draw the appropriate state frame }
      dState := fState;
      if (dstate = bsActive) and (not MouseTrack) then
        dState := bsInactive;
      case dState of
        bsActive:
          begin
            Pen.Color := fActiveLineColor;
            PolyLine([Point(Right-8,1),Point(8,1),Point(7,2),
              Point(6,2),Point(2,6),Point(2,7),Point(1,8),
              Point(1,Bottom-8),Point(2,Bottom-7),
              Point(2,Bottom-6),Point(5,Bottom-3)]);
            Pixels[5,Bottom-3] := fActiveLineColor;
            Pixels[7,Bottom-2] := fActiveLineColor;
            PolyLine([Point(5,Bottom-5),Point(6,Bottom-4),
              Point(7,Bottom-4),Point(8,Bottom-3),
              Point(Right-8,Bottom-3),Point(Right-3,Bottom-8),
              Point(Right-3,8),Point(Right-2,7)]);
            Pixels[Right-2,7] := fActiveLineColor;
            Pixels[Right-7,Bottom-2] := fActiveLineColor;
            PolyLine([Point(Right-5,Bottom-3),
              Point(Right-3,Bottom-5)]);
            Pixels[Right-3,Bottom-5] := fActiveLineColor;
            PolyLine([Point(Right-6,Bottom-4),
              Point(Right-4,Bottom-6)]);
            Pixels[Right-4,Bottom-6] := fActiveLineColor;
            Pixels[Right-2,Bottom-7] := fActiveLineColor;
            Pixels[Right-2,7] := fActiveLineColor;
            PolyLine([Point(Right-4,6),Point(Right-5,5)]);
            Pixels[Right-5,5] := fActiveLineColor;
            PolyLine([Point(Right-3,5),Point(Right-6,2)]);
            Pixels[Right-6,2] := fActiveLineColor;
            Pen.Color := fActiveOutlineColor2;
            PolyLine([Point(8,2),Point(7,3),Point(6,3),
              Point(3,6),Point(3,7),Point(2,8),
              Point(2,Bottom-8),Point(3,Bottom-7),
              Point(3,Bottom-6),Point(6,Bottom-3),
              Point(7,Bottom-3),Point(8,Bottom-2),
              Point(Right-8,Bottom-2),Point(Right-7,Bottom-3),
              Point(Right-6,Bottom-3),Point(Right-3,Bottom-6),
              Point(Right-3,Bottom-7),Point(Right-2,Bottom-8),
              Point(Right-2,8),Point(Right-3,7),
              Point(Right-3,6),Point(Right-7,2),
              Point(8,2)]);
            Pixels[8,2] := fActiveOutlineColor2;
            Pen.Color := fActiveOutlineColor1;
            PolyLine([Point(Right-7,3),Point(8,3),
              Point(3,8),Point(3,Bottom-8)]);
            Pixels[3,Bottom-8] := fActiveOutlineColor1;
            PolyLine([Point(Right-6,5),Point(Right-6,4),
              Point(8,4),Point(4,8),Point(4,Bottom-6),
              Point(5,Bottom-6)]);
            Pixels[5,Bottom-6] := fActiveOutlineColor1;
            PolyLine([Point(6,4),Point(4,6)]);
            Pixels[4,6] := fActiveOutlineColor1;
          end;
        bsDown:
          begin
            Pen.Color := fDownLineColor;
            PolyLine([Point(Right-8,1),Point(8,1),
              Point(7,2),Point(6,2),Point(2,6),Point(2,7),
              Point(1,8),Point(1,Bottom-8),Point(2,Bottom-7),
              Point(2,Bottom-6),Point(4,Bottom-4),
              Point(5,Bottom-4),Point(6,Bottom-3),
              Point(7,Bottom-3),Point(8,Bottom-2),
              Point(Right-8,Bottom-2),Point(Right-7,Bottom-3),
              Point(Right-6,Bottom-3),Point(Right-3,Bottom-6),
              Point(Right-3,Bottom-7),Point(Right-2,Bottom-8),
              Point(Right-2,8),Point(Right-3,7),
              Point(Right-3,6)]);
            Pixels[Right-3,6] := fDownLineColor;
            Pixels[8,3] := fDownLineColor;
            PolyLine([Point(6,4),Point(4,6)]);
            Pixels[4,6] := fDownLineColor;
            PolyLine([Point(3,8),Point(3,Bottom-8)]);
            Pixels[3,Bottom-8] := fDownLineColor;
            Pixels[4,Bottom-6] := fDownLineColor;
            PolyLine([Point(Right-4,4),Point(Right-6,2)]);
            Pixels[Right-6,2] := fDownLineColor;
            Pixels[Right-7,3] := fDownLineColor;
            Pen.Color := fDownOutlineColor2;
            PolyLine([Point(Right-4,5),Point(Right-7,2),
              Point(8,2),Point(7,3),Point(6,3),Point(3,6),
              Point(3,7),Point(2,8),Point(2,Bottom-8),
              Point(3,Bottom-7),Point(3,Bottom-6),
              Point(4,Bottom-5)]);
            Pixels[4,Bottom-5] := fDownOutlineColor2;
            Pen.Color := fDownOutlineColor1;
            PolyLine([Point(7,5),Point(5,7),
              Point(5,Bottom-5)]);
            Pixels[5,Bottom-5] := fDownOutlineColor1;
            PolyLine([Point(Right-8,3),Point(9,3)]);
            Pixels[9,3] := fDownOutlineColor1;
            PolyLine([Point(5,Bottom-3),Point(6,Bottom-2),
              Point(7,Bottom-2),Point(7,Bottom-1),
              Point(Right-6,Bottom-1),Point(Right-1,Bottom-6),
              Point(Right-1,8),Point(Right-2,7),
              Point(Right-2,6),Point(Right-3,5),
              Point(Right-4,6),Point(Right-5,5),
              Point(Right-6,5),Point(Right-6,4),Point(7,4),
              Point(4,7),Point(4,Bottom-7)]);
            Pixels[4,Bottom-7] := fDownOutlineColor1;
            PolyLine([Point(Right-4,Bottom-2),
              Point(Right-1,Bottom-5)]);
            Pixels[Right-1,Bottom-5] := fDownOutlineColor1;
            PolyLine([Point(Right-7,Bottom-2),
              Point(Right-6,Bottom-2),Point(Right-2,Bottom-6),
              Point(Right-2,Bottom-7)]);
            Pixels[Right-2,Bottom-7] := fDownOutlineColor1;
          end;
        bsDownAndOut,bsInactive:
          begin
            Pen.Color := fInactiveLineColor;
            PolyLine([Point(8,2),Point(7,3),Point(6,3),
              Point(3,6),Point(3,7),Point(2,8),
              Point(2,Bottom-8),Point(3,Bottom-7),
              Point(3,Bottom-6),Point(6,Bottom-3),
              Point(7,Bottom-3),Point(8,Bottom-2),
              Point(Right-8,Bottom-2),Point(Right-7,Bottom-3),
              Point(Right-6,Bottom-3),Point(Right-3,Bottom-6),
              Point(Right-3,Bottom-7),Point(Right-2,Bottom-8),
              Point(Right-2,8),Point(Right-3,7),
              Point(Right-3,6),Point(Right-6,3),
              Point(Right-7,3),Point(Right-8,2),Point(8,2)]);
            Pixels[8,2] := fInactiveLineColor;
          end;
      end;
    end;
  end;
end;

{ This procedure draws an Office 2000 style frame }
procedure TLWButton.DrawOffice2000Frame;
var
  rClient: TRect;
  dState:  TOffBtnState;
begin
  rClient := ClientRect;
  with fControl.Canvas do
  begin
    with rClient do
    begin
      Pen.Style := psSolid;
      { Draw the appropriate state frame }
      dState := fState;
      if (dstate = bsActive) and (not MouseTrack) then
        dState := bsInactive;
      case dState of
        bsActive:
          begin
            Pen.Color := fActiveLineColor;
            Pixels[Right-2,3] := fActiveLineColor;
            Pixels[2,Bottom-3] := fActiveLineColor;
            Pen.Color := fActiveOutlineColor1;
            PolyLine([Point(Right-2,4),Point(Right-2,Bottom-4),
              Point(Right-4,Bottom-2),Point(3,Bottom-2)]);
            Pixels[3,Bottom-2] := fActiveOutlineColor1;
            Pen.Color := fActiveOutlineColor2;
            PolyLine([Point(Right-3,2),Point(Right-4,1),
              Point(3,1),Point(1,3),Point(1,Bottom-4)]);
            Pixels[1,Bottom-4] := fActiveOutlineColor2;
            Pen.Color := fActiveOutlineColor3;
            PolyLine([Point(3,0),Point(0,3),
              Point(0,Bottom-4),Point(3,Bottom-1),
              Point(Right-4,Bottom-1),Point(Right-1,Bottom-4),
              Point(Right-1,3),Point(Right-4,0),Point(3,0)]);
          end;
        bsDown:
          begin
            Pen.Color := fDownLineColor;
            Pixels[Right-3,2] := fDownLineColor;
            Pixels[1,Bottom-4] := fDownLineColor;
            Pen.Color := fDownOutlineColor1;
            PolyLine([Point(Right-4,1),Point(3,1),
              Point(1,3),Point(1,Bottom-5)]);
            Pixels[1,Bottom-5] := fDownOutlineColor1;
            Pen.Color := fDownOutlineColor2;
            PolyLine([Point(Right-2,2),Point(Right-1,3),
              Point(Right-1,Bottom-4),Point(Right-4,Bottom-1),
              Point(3,Bottom-1),Point(1,Bottom-3)]);
            Pixels[1,Bottom-3] := fDownOutlineColor2;
            Pen.Color := fDownOutlineColor3;
            PolyLine([Point(Right-3,1),Point(Right-4,0),
              Point(3,0),Point(0,3),Point(0,Bottom-4)]);
            Pixels[0,Bottom-4] := fDownOutlineColor3;
            PolyLine([Point(Right-2,3),Point(Right-2,Bottom-4),
              Point(Right-4,Bottom-2),Point(3,Bottom-2),
              Point(2,Bottom-3)]);
            Pixels[2,Bottom-3] := fDownOutlineColor3;
          end;
        bsDownAndOut,bsInactive:
          begin
            Pen.Color := fInactiveLineColor;
            PolyLine([Point(3,1),Point(1,3),
              Point(1,Bottom-4),Point(3,Bottom-2),
              Point(Right-4,Bottom-2),Point(Right-2,Bottom-4),
              Point(Right-2,3),Point(Right-4,1),Point(3,1)]);
          end;
      end;
    end;
  end;
end;

{ This procedure draws an Normal style frame }
procedure TLWButton.DrawNormalFrame;
var
  l, r, t, b : Integer;
  rClient:     TRect;
  dState:      TOffBtnState;
begin
  rClient := ClientRect;
  with fControl.Canvas do
  begin
    Pen.Style := psSolid;
    { Draw the appropriate state frame }
    dState := fState;
    if (dstate = bsActive) and (not MouseTrack) then
      dState := bsInactive;
    l := rClient.Left;
    r := rClient.Right-1;
    t := rClient.Top;
    b := rClient.Bottom-1;
    case dState of
      bsActive:
      begin
        Pen.Color := fActiveOutlineColor1;
        Rectangle(l,t,r,b);
        PolyLine([Point(r-2,t+1),Point(r-2,b-2),
                  Point(l,b-2)]);
        Pen.Color := fActiveOutlineColor2;
        PolyLine([Point(r-3,t+1),Point(l+1,t+1),
                  Point(l+1,b-2)]);
        Pen.Color := fActiveOutlineColor3;
        PolyLine([Point(r-3,t+2),Point(r-3,b-3),
                  Point(l+1,b-3)]);
      end;
      bsDown:
      begin
        Pen.Color := fDownOutlineColor1;
        Rectangle(l,t,r,b);
        Pen.Color := fDownOutlineColor2;
        Rectangle(l+1,t+1,r-1,b-1);
      end;
      bsDownAndOut,bsInactive:
      begin
        Pen.Color := fInactiveOutlineColor1;
        PolyLine([Point(l,b),Point(l,t),
                  Point(r,t)]);
        Pen.Color := fInactiveOutlineColor2;
        PolyLine([Point(r,t),Point(r,b),
                  Point(l-1,b)]);
        Pen.Color := fInactiveOutlineColor3;
        PolyLine([Point(r-1,t+1),Point(r-1,b-1),
                  Point(l,b-1)]);
      end;
    end;
  end;
end;

{ This procedure draws a Rounded style frame }
procedure TLWButton.DrawRoundedFrame;
var
  l,r,t,b,rp: Integer;
  rClient:    TRect;
  dState:     TOffBtnState;
begin
  rClient := ClientRect;
  with fControl.Canvas do
  begin
    Pen.Style := psSolid;
    { Draw the appropriate state frame }
    dState := fState;
    if (dstate = bsActive) and (not MouseTrack) then
      dState := bsInactive;
    l := rClient.Left;
    r := rClient.Right-1;
    t := rClient.Top;
    b := rClient.Bottom-1;
    rp := fRoundedPixels;
    case dState of
      bsActive:
      begin
        Brush.Style := bsSolid;
        Brush.Color := fActiveLineColor;
        Pen.Color := fActiveOutLineColor1;
        RoundRect(l,t,r-1,b-1,rp,rp);
        Brush.Style := bsClear;
        Pen.Color := fActiveOutLineColor2;
        RoundRect(l+1,t+1,r,b,rp,rp);
      end;
      bsDown:
      begin
        Brush.Style := bsSolid;
        Brush.Color := fDownLineColor;
        Pen.Color := fDownOutLineColor3;
        RoundRect(l+2,t+2,r,b,rp-2,rp-2);
        Brush.Style := bsClear;
        RoundRect(l+3,t+3,r,b,rp-2,rp-2);
        RoundRect(l+3,t+3,r,b,rp-3,rp-3);
        Pen.Color := fDownOutLineColor2;
        RoundRect(l+1,t+1,r,b,rp,rp);
        Pen.Color := fDownOutLineColor1;
        RoundRect(l,t,r-1,b-1,rp,rp);
      end;
      bsDownAndOut,bsInactive:
      begin
        Brush.Style := bsSolid;
        Brush.Color := fInactiveLineColor;
        Pen.Color := fInactiveOutLineColor1;
        RoundRect(l,t,r-1,b-1,rp,rp);
        Brush.Style := bsClear;
        Pen.Color := fInactiveOutLineColor2;
        RoundRect(l+1,t+1,r,b,rp,rp);
      end;
    end;
  end;
end;

{ Thanks to Kambiz for adding bi-directional support to this procedure }
procedure TLWButton.Layout(var txtRect, bitRect: TRect);
var
  hTxt, vTxt: Integer;
begin
  { Work out text canvas height and width }
  hTxt := txtRect.Right - txtRect.Left;
  vTxt := txtRect.Bottom - txtRect.Top;

  { Center, or left justify, the text canvas }
  txtRect.Top := ((Height - vTxt - 1) div 2) + 1;
  txtRect.Left := ((Width - hTxt - 1) div 2) + 1;

  { Set the text canvas height and width }
  txtRect.Right := txtRect.Left + hTxt;
  txtRect.Bottom := txtRect.Top + vTxt;
  { Draw the focus using the appropriate style }
  with fControl.Canvas do
  begin
    if (fCaption <> '') and ((csDesigning in ComponentState)
      and Enabled) or (not(csDesigning in ComponentState)
        and (not fNoDots) and (Focused or (fFocused and
          not(Screen.ActiveControl is TLWButton)))) then
    begin
      if fShowFocus then
        Windows.DrawFocusRect(Handle,Rect(txtRect.Left,txtRect.Top,txtRect.Right+1,txtRect.Bottom+1))
    end;
  end;
  { If control down, and control type is button, draw
    text and glyph down and to the right }
  if fState = bsDown then
  begin
    OffsetRect(txtRect, 1, 1);
  end;
end;

procedure TLWButton.CalculateTxt(var txtRect: TRect);
begin
  { If text is to be wordwrapped, the rectangle size must be
    based on the control size and glyph position - TextWidth and
    TextHeight give the size but they assume that the text won't
    be wordwrapped }
  tX := width - 18;
  inc(tX,5);

  with fControl.Canvas do
  begin
    { Wordwrap text and store the result in a string list }
    GetWrapText(fCaption,tX);
    if TextWidth(fCaption) > tX then
      txtRect := Rect(0, 0, tX, capLines*TextHeight('0'))
    else
    begin
      tX := TextWidth(fCaption);
      txtRect := Rect(0, 0, TextWidth(fCaption), TextHeight(fCaption));
    end;
  end;
end;

procedure TLWButton.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  Message.Result := 1;
end;

{ Thanks to Kambiz for this procedure }
procedure TLWButton.AdjustHeight;
var
  txtRect: TRect;
  hTxt: Integer;
begin
  fControl := TBitmap.Create;
  fControl.Width := Width;
  fControl.Height := Height;
  fControl.Canvas.Font := InActiveFont;
  if not fWordWrap then
    hTxt := fControl.Canvas.TextHeight(fCaption)
  else
  begin
    CalculateTxt(txtRect);
    hTxt := txtRect.Bottom;
  end;
  Height := hTxt + 10;
  fControl.Free;
end;

{ Thanks to Kambiz for adding bi-directional support to this procedure }
procedure TLWButton.Paint;
var
  tmpRect,txtRect, bitRect: TRect;
  TempCap: array[0..255] of char;
  Count: Integer;
  DrawFlags: LongInt;
begin
  { Setup the offscreen bitmap }
  fControl := TBitmap.Create;
  fControl.Width := Width;
  fControl.Height := Height;
  with fControl.Canvas do
  begin
    { Fill control background }
    if fTransparent then
      CopyParentImage(Self, fControl.Canvas)
    else
    begin
      Case fState of
        bsActive: Brush.Color := ActiveColor;
        bsDown:   Brush.Color := DownColor;
        bsInactive, bsDownAndOut: Brush.Color := InActiveColor;
      end;
      Brush.Style := bsSolid;
      FillRect(ClientRect);
    end;

    { Draw control frame }
    { Work out which frame style to use }
    Case fButtonLook of
      blOffice97:   DrawOffice97Frame;
      blOffice2000: DrawOffice2000Frame;
      blNormal:     DrawNormalFrame;
      blRounded:    DrawRoundedFrame;
      else;
    end;

    { Figure out size of text and display bitmaps }
    if not (Enabled and (fState in [bsActive, bsDown])) then
    begin
      Font := fInactiveFont;
      if not enabled then
        Font.Color := fInactiveLineColor;
    end
    else
      if fState = bsActive
      then Font := fActiveFont
      else Font := fDownFont;
    if (fDefault) and (fBoldOnDefault) then
      Font.Style := Font.Style + [fsBold];

    bitRect := Rect(0, 0, 0, 0);
    if not fWordWrap then
      txtRect := Rect(0, 0, TextWidth(fCaption), TextHeight(fCaption))
    else
      CalculateTxt(txtRect);
    { Calculate position of text and bitmap and draw focus }
    Layout(txtRect,bitRect);
    { Draw the caption }
    Brush.Style := bsClear;
    SetBkMode(Handle, Windows.TRANSPARENT);
    StrPCopy(TempCap, fCaption);
    if (not fWordWrap) or (capLines = 1) then
    begin
      { A single line caption }
      DrawFlags := DT_CENTER;

      DrawFlags := DrawTextBiDiModeFlags(DrawFlags);
      DrawText(Handle, TempCap, StrLen(TempCap), txtRect, DrawFlags);
    end
    else
      { A multiple line caption }
      for Count := 0 to capWrap.Count-1 do
      begin
        StrPCopy(TempCap, capWrap.Strings[Count]);
        tmpRect := Rect(0, 0, tX, TextHeight('0'));
        tmpRect.Left := txtRect.Left;
        tmpRect.Top := txtRect.Top+(Count*TextHeight('0'));
        tmpRect.Right := tmpRect.Left + tX;
        tmpRect.Bottom := tmpRect.Top + TextHeight('0');
        DrawFlags := DT_CENTER;

        DrawFlags := DrawTextBiDiModeFlags(DrawFlags);
        DrawText(Handle, TempCap, StrLen(TempCap), tmpRect, DrawFlags);
      end;
  end;
  { Now copy the bitmap to the screen and free it }
  Canvas.CopyRect(Rect(0,0,Width,Height), fControl.Canvas, Rect(0,0,Width,Height));
  fControl.Free;
end;

{ Start of mouse routines

  FindDragTarget is much better than using PtInRect as it takes into
  account the Z order of controls }

procedure TLWButton.WMLButtonDown(var Message: TWMLButtonDown);
var
  InControl: Boolean;
  oState: TOffBtnState;
  Temp: TPoint;
begin
  Inherited;
  oState := fState;
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  InControl := FindDragTarget(Temp, True) = Self;
  if InControl then
  begin
    MouseCapture := True;
    fState := bsDown;
  end;
  if oState <> fState then Invalidate;
end;

procedure TLWButton.WMMouseMove(var Message: TWMMouseMove);
var
  InControl: Boolean;
  oState: TOffBtnState;
  Temp: TPoint;
begin
  Inherited;
  oState := fState;
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  InControl := FindDragTarget(Temp, True) = Self;
  if (fState = bsDown) and (not InControl) then
    fState := bsDownAndOut;
  if (fState = bsDownAndOut) and (InControl) then
    fState := bsDown;
  case fState of
    bsInActive:  if InControl then
                 begin
                   fState := bsActive;
                   if Assigned(fMouseEnter) then fMouseEnter(Self);
                   MouseCapture := True;
                 end;
    bsActive:    if not InControl then
                 begin
                   fState := bsInActive;
                   if Assigned(fMouseExit) then fMouseExit(Self);
                   MouseCapture := False;
                 end;
  end;
  if oState <> fState then Invalidate;
end;

procedure TLWButton.WMLButtonUp(var Message: TWMLButtonUp);
var
  InControl: Boolean;
  oState: TOffBtnState;
  Temp: TPoint;
begin
  Inherited;
  oState := fState;
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  InControl := FindDragTarget(Temp, True) = Self;
  { If we are using a modal form, we release the mouse capture }
  if (InControl) and (fModalResult = mrNone) then
  begin
    fState := bsActive;
    MouseCapture := True;
  end
  else
  begin
    fState := bsInactive;
    MouseCapture := False;
  end;
  if oState <> fState then Invalidate;
end;

{ This procedure ensures that the control state is correct when
  the popup menu is displayed }
procedure TLWButton.WMRButtonDown(var Message: TWMRButtonDown);
var
  InControl: Boolean;
  oState: TOffBtnState;
  Temp: TPoint;
begin
  Inherited;
  oState := fState;
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  InControl := FindDragTarget(Temp, True) = Self;
  if (InControl) and (PopupMenu <> nil) then
  begin
    fState := bsInactive;
    MouseCapture := False;
  end;
  if oState <> fState then Invalidate;
end;

{ End of mouse routines }

end.
