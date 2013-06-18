object frmFiles: TfrmFiles
  Left = 511
  Top = 127
  Width = 776
  Height = 434
  Caption = 'File info and restore'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lwpnlBG: TLWPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 400
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      768
      400)
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 50
      Height = 14
      Caption = 'Directory: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 8
      Top = 300
      Width = 747
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
    end
    object lvFiles: TListView
      Left = 8
      Top = 40
      Width = 747
      Height = 224
      Anchors = [akLeft, akTop, akRight, akBottom]
      Checkboxes = True
      Columns = <
        item
          Caption = 'Filename'
          MinWidth = 15
          Width = 150
        end
        item
          Alignment = taRightJustify
          Caption = 'Date'
          MinWidth = 15
          Width = 125
        end
        item
          Alignment = taRightJustify
          Caption = 'Size'
          MinWidth = 15
          Width = 85
        end
        item
          Alignment = taRightJustify
          Caption = 'Backup Date'
          MinWidth = 15
          Width = 110
        end
        item
          Alignment = taRightJustify
          Caption = 'Backup Size'
          MinWidth = 15
          Width = 75
        end
        item
          Alignment = taRightJustify
          Caption = 'Original Date'
          MinWidth = 15
          Width = 110
        end
        item
          Alignment = taRightJustify
          Caption = 'Original Size'
          MinWidth = 15
          Width = 75
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
    object Panel2: TPanel
      Left = 152
      Top = 268
      Width = 602
      Height = 25
      Anchors = [akLeft, akRight, akBottom]
      BevelInner = bvLowered
      Color = 16510433
      TabOrder = 1
      DesignSize = (
        602
        25)
      object Label2: TLabel
        Left = 8
        Top = 5
        Width = 582
        Height = 14
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 
          'If Date/Size are green, the backup or original file differs from' +
          ' the current and can be restored to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object btnRestore: TButton
      Left = 265
      Top = 316
      Width = 74
      Height = 21
      Hint = 
        'Restore all files of the current file-set to the last version yo' +
        'u saved'
      Anchors = [akLeft, akBottom]
      Caption = 'Restore'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object rgrpRestore: TRadioGroup
      Left = 8
      Top = 307
      Width = 249
      Height = 81
      Anchors = [akLeft, akBottom]
      Caption = 'Restore files'
      Color = clCream
      Items.Strings = (
        'Restore all checked files to the last backup'
        'Restore all checked files to their original')
      ParentColor = False
      TabOrder = 3
    end
    object chkSelectAll: TCheckBox
      Left = 18
      Top = 274
      Width = 119
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Select / deselect all'
      Color = clCream
      ParentColor = False
      TabOrder = 4
    end
    object btnDone: TButton
      Left = 684
      Top = 371
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = '&Done'
      TabOrder = 5
      OnClick = btnDoneClick
    end
  end
end
