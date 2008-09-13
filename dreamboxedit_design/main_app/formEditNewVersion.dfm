object frmNewVersion: TfrmNewVersion
  Left = 557
  Top = 129
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'New version available'
  ClientHeight = 585
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lwpnlBG: TLWPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 585
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      517
      585)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 249
      Height = 17
      Caption = 'A new version of DreamBoxEdit has been found!'
      Color = clCream
      ParentColor = False
      Transparent = True
      WordWrap = True
    end
    object lblYourVersion: TLabel
      Left = 8
      Top = 32
      Width = 72
      Height = 13
      Caption = 'Your version is '
      Color = clCream
      ParentColor = False
      Transparent = True
    end
    object _lCurVersion: TLabel
      Left = 86
      Top = 32
      Width = 63
      Height = 14
      Caption = '_lCurVersion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblNewVersion: TLabel
      Left = 158
      Top = 32
      Width = 109
      Height = 13
      Caption = 'and the new version is '
      Color = clCream
      ParentColor = False
      Transparent = True
    end
    object _lNewVersion: TLabel
      Left = 269
      Top = 32
      Width = 69
      Height = 14
      Caption = '_lNewVersion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblDot: TLabel
      Left = 340
      Top = 32
      Width = 3
      Height = 13
      Caption = '.'
      Color = clCream
      ParentColor = False
      Transparent = True
    end
    object gbxChanges: TGroupBox
      Left = 8
      Top = 56
      Width = 504
      Height = 281
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Changes in new version'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        504
        281)
      object mmChanges: TMemo
        Left = 8
        Top = 16
        Width = 488
        Height = 257
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object bGotoDL: TButton
      Left = 368
      Top = 345
      Width = 141
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Go to the download page'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      WordWrap = True
    end
    object gbxOptions: TGroupBox
      Left = 7
      Top = 376
      Width = 505
      Height = 169
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Options for auto-check at DreamBoxEdit start-up'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        505
        169)
      object Label4: TLabel
        Left = 56
        Top = 23
        Width = 225
        Height = 14
        AutoSize = False
        Caption = 'Number of days between automatic checks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lSkipVersionNr: TLabel
        Left = 240
        Top = 81
        Width = 258
        Height = 33
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Caption = '_lSkipVersionNr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object _lLastCheck: TLabel
        Left = 8
        Top = 48
        Width = 488
        Height = 14
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = '_lLastCheck'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _SpinEdit1: TSpinEdit
        Left = 8
        Top = 19
        Width = 41
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxValue = 31
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 0
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 72
        Width = 193
        Height = 57
        Caption = 
          'Skip this version in the auto-check at startup, but warn me when' +
          ' a next version is available'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
      end
      object bReset: TButton
        Left = 10
        Top = 132
        Width = 129
        Height = 25
        Caption = 'Reset the skip option'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object btnDone: TButton
      Left = 434
      Top = 556
      Width = 75
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = '&Done'
      TabOrder = 3
      OnClick = btnDoneClick
    end
  end
end
