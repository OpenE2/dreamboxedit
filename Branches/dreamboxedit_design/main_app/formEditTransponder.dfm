object frmEditTransponder: TfrmEditTransponder
  Left = 246
  Top = 114
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Edit transponder'
  ClientHeight = 387
  ClientWidth = 762
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
    Width = 762
    Height = 387
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      762
      387)
    object GroupBox4: TGroupBox
      Left = 8
      Top = 10
      Width = 425
      Height = 295
      Caption = 'Transponder Data'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        425
        295)
      object Label5: TLabel
        Left = 16
        Top = 120
        Width = 77
        Height = 14
        Caption = 'Satellite Position'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ntLabel26: TLabel
        Left = 120
        Top = 120
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
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
      object ntLabel30: TLabel
        Left = 120
        Top = 24
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lFEC: TLabel
        Left = 16
        Top = 216
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
      object ntlmFEC: TLabel
        Left = 120
        Top = 216
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lSymb: TLabel
        Left = 16
        Top = 168
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
      object ntlMSymb: TLabel
        Left = 120
        Top = 168
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lPol: TLabel
        Left = 16
        Top = 192
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
      object ntlMPol: TLabel
        Left = 120
        Top = 192
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 16
        Top = 72
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
      object ntLabel35: TLabel
        Left = 120
        Top = 72
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 48
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
      object ntLabel28: TLabel
        Left = 120
        Top = 144
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 144
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
      object ntLabel40: TLabel
        Left = 120
        Top = 48
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 8
        Top = 274
        Width = 105
        Height = 13
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '* mandatory fields'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 240
        Width = 85
        Height = 14
        Caption = 'Other parameters'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ntLabel3: TLabel
        Left = 120
        Top = 240
        Width = 9
        Height = 13
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ePos: TComboBox
        Left = 128
        Top = 116
        Width = 105
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
      end
      object eTSID: TEdit
        Left = 128
        Top = 20
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object eFEC: TComboBox
        Left = 128
        Top = 212
        Width = 89
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 8
        Items.Strings = (
          'auto'
          '1/2'
          '2/3'
          '3/4'
          '5/6'
          '7/8')
      end
      object eSymb: TEdit
        Left = 128
        Top = 164
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object ePol: TComboBox
        Left = 128
        Top = 188
        Width = 89
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'Horizontal'
          'Vertical')
      end
      object eNamespace: TEdit
        Left = 128
        Top = 68
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object bCalculate: TButton
        Left = 264
        Top = 69
        Width = 153
        Height = 20
        Hint = 'Calculate the namespace value for this transponder'
        Caption = 'Calculate Namespace'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object eNID: TEdit
        Left = 128
        Top = 44
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object eFreq: TEdit
        Left = 128
        Top = 140
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object eTrExtra: TEdit
        Left = 128
        Top = 236
        Width = 289
        Height = 21
        Hint = 
          'Enter extra parameters here. Normally: :2:0 for satellite, :0:5:' +
          '5:3:3:4:4:2 for Terrestrial and :6887000:2:3:3 for Cable service' +
          's.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
    end
    object btnOk: TButton
      Left = 520
      Top = 362
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = '&Ok'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 600
      Top = 362
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 440
      Top = 9
      Width = 316
      Height = 344
      Caption = 'Services for this transponder'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        316
        344)
      object _lCntServices: TLabel
        Left = 8
        Top = 324
        Width = 298
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = '_lCntServices'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lvTransp: TListView
        Left = 8
        Top = 16
        Width = 300
        Height = 304
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'Name'
            Width = 75
          end
          item
            Caption = 'Package'
            Width = 70
          end
          item
            Caption = 'SID'
            Width = 45
          end
          item
            Caption = 'Type'
            Width = 40
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object btnApply: TButton
      Left = 680
      Top = 362
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = '&Apply'
      Default = True
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnApplyClick
    end
    object Panel1: TPanel
      Left = 8
      Top = 312
      Width = 425
      Height = 41
      BevelOuter = bvLowered
      Caption = 
        'Changes made here are applied to all services of this transponde' +
        'r!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
end
