object FormNewVersion: TFormNewVersion
  Left = 331
  Top = 183
  Width = 545
  Height = 584
  Caption = 'DreamBoxEdit New version info'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 550
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      537
      550)
    object Label2: TLabel
      Left = 136
      Top = 16
      Width = 118
      Height = 14
      Caption = 'Your current version:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 320
      Top = 16
      Width = 134
      Height = 14
      Caption = 'Version available online:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object _lCurVersion: TLabel
      Left = 136
      Top = 34
      Width = 100
      Height = 19
      Caption = '_lCurVersion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object _lNewVersion: TLabel
      Left = 320
      Top = 34
      Width = 106
      Height = 19
      Caption = '_lNewVersion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object _Label4: TLabel
      Left = 16
      Top = 35
      Width = 106
      Height = 18
      Caption = 'DreamBoxEdit:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bGotoDL: TButton
      Left = 16
      Top = 312
      Width = 513
      Height = 25
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
      TabOrder = 0
      WordWrap = True
    end
    object bBack: TButton
      Left = 458
      Top = 522
      Width = 70
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Back'
      ModalResult = 2
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 56
      Width = 512
      Height = 249
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Changes in new version'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        512
        249)
      object Memo1: TMemo
        Left = 8
        Top = 16
        Width = 496
        Height = 225
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 344
      Width = 512
      Height = 169
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Options for auto-check at DreamBoxEdit start-up'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        512
        169)
      object Label4: TLabel
        Left = 56
        Top = 23
        Width = 449
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
        Left = 216
        Top = 121
        Width = 288
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
        Width = 495
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
        OnChange = _SpinEdit1Change
      end
      object bSkipVersion: TButton
        Left = 7
        Top = 72
        Width = 499
        Height = 42
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          'Skip this version in the auto-check at startup, but warn me when' +
          ' a next version is available'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ModalResult = 5
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = bSkipVersionClick
      end
      object bReset: TButton
        Left = 8
        Top = 121
        Width = 193
        Height = 25
        Caption = 'Reset the skip option'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bResetClick
      end
    end
  end
end
