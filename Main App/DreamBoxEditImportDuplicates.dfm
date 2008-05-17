object FormImportDuplicates: TFormImportDuplicates
  Left = 254
  Top = 219
  Width = 755
  Height = 450
  Caption = 'SatcoDX import duplicates'
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
    Width = 747
    Height = 402
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      747
      402)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 24
      Width = 185
      Height = 81
      Caption = 'Transponder details'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 74
        Height = 14
        Caption = 'Transponder ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 53
        Height = 14
        Caption = 'Network ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lTSID: TLabel
        Left = 104
        Top = 24
        Width = 65
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lNID: TLabel
        Left = 104
        Top = 40
        Width = 65
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 56
        Width = 57
        Height = 14
        Caption = 'Namespace'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lUniq: TLabel
        Left = 104
        Top = 56
        Width = 65
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 208
      Top = 24
      Width = 185
      Height = 81
      Caption = 'Service details'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 49
        Height = 14
        Caption = 'Service ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 40
        Width = 64
        Height = 14
        Caption = 'Service Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lSID: TLabel
        Left = 104
        Top = 24
        Width = 65
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lTyp: TLabel
        Left = 104
        Top = 40
        Width = 65
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object bCancel: TButton
      Left = 664
      Top = 368
      Width = 75
      Height = 25
      Hint = 'Press Cancel to abort this operation'
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object lvSDXDup: TListView
      Left = 8
      Top = 112
      Width = 729
      Height = 241
      Anchors = [akLeft, akTop, akRight, akBottom]
      Checkboxes = True
      Columns = <
        item
          Caption = 'Satellite name'
          MinWidth = 25
          Width = 100
        end
        item
          Caption = 'SatPos'
          MinWidth = 25
          Width = 46
        end
        item
          Caption = 'Service name'
          MinWidth = 25
          Width = 100
        end
        item
          Caption = 'Frequency'
          MinWidth = 25
          Width = 65
        end
        item
          Caption = 'Pol.'
          MinWidth = 25
          Width = 30
        end
        item
          Caption = 'Symbolrate'
          MinWidth = 25
          Width = 65
        end
        item
          Caption = 'FEC'
          MinWidth = 25
          Width = 32
        end
        item
          Caption = 'Serv.name in DB'
          MinWidth = 25
          Width = 100
        end
        item
          Caption = 'VPID'
          MinWidth = 25
          Width = 45
        end
        item
          Caption = 'APID'
          MinWidth = 25
          Width = 45
        end
        item
          Caption = 'PPID'
          MinWidth = 25
          Width = 45
        end
        item
          Caption = 'Lng'
          MinWidth = 25
          Width = 36
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnClick = lvSDXDupClick
      OnCustomDrawItem = lvSDXDupCustomDrawItem
      OnDblClick = lvSDXDupDblClick
      OnKeyDown = lvSDXDupKeyDown
    end
    object GroupBox3: TGroupBox
      Left = 408
      Top = 24
      Width = 329
      Height = 81
      Caption = 'Existing definition in Dreambox for this transponder/service'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DesignSize = (
        329
        81)
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 37
        Height = 14
        Caption = 'Satellite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 240
        Top = 24
        Width = 37
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Position'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 40
        Width = 52
        Height = 14
        Caption = 'Frequency'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 14
        Caption = 'Symbolrate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 160
        Top = 40
        Width = 55
        Height = 14
        Caption = 'Polarisation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 160
        Top = 56
        Width = 19
        Height = 14
        Caption = 'FEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lSatName: TLabel
        Left = 88
        Top = 24
        Width = 145
        Height = 14
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lSatPos: TLabel
        Left = 288
        Top = 24
        Width = 25
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lFreq: TLabel
        Left = 88
        Top = 40
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lSymb: TLabel
        Left = 88
        Top = 56
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lPol: TLabel
        Left = 224
        Top = 40
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object _lFEC: TLabel
        Left = 224
        Top = 56
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object bNext: TButton
      Left = 576
      Top = 368
      Width = 75
      Height = 25
      Hint = 'Accept above selection and check the remainder of the services'
      Anchors = [akRight, akBottom]
      Caption = 'Next'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bNextClick
    end
    object bUncheckAll: TButton
      Left = 8
      Top = 360
      Width = 97
      Height = 25
      Caption = 'Uncheck All'
      TabOrder = 6
      OnClick = bUncheckAllClick
    end
    object bCheckAll: TButton
      Left = 120
      Top = 360
      Width = 97
      Height = 25
      Caption = 'Check All'
      TabOrder = 7
      OnClick = bCheckAllClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 402
    Width = 747
    Height = 19
    Panels = <>
  end
end
