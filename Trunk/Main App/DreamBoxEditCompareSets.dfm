object FormCompareSet: TFormCompareSet
  Left = 192
  Top = 108
  Width = 872
  Height = 675
  Caption = 'Compare active set with other set'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 620
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      856
      620)
    object Label8: TLabel
      Left = 493
      Top = 508
      Width = 208
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = 'Optional bouquet name for added services:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 128
      Width = 851
      Height = 377
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 
        'Differences in services between active file-set and the just rea' +
        'd services file'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        851
        377)
      object lvDiff: TListView
        Left = 16
        Top = 19
        Width = 835
        Height = 361
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Caption = 'Servicename'
            MinWidth = 25
            Width = 140
          end
          item
            Caption = 'Package'
            Width = 75
          end
          item
            Caption = 'Type'
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'SatPos'
            MinWidth = 25
          end
          item
            Alignment = taRightJustify
            Caption = 'Frequency'
            MinWidth = 25
            Width = 65
          end
          item
            Alignment = taCenter
            Caption = 'Pol'
            MinWidth = 25
            Width = 30
          end
          item
            Alignment = taRightJustify
            Caption = 'Symbolrate'
            MinWidth = 25
            Width = 65
          end
          item
            Caption = 'FEC'
            MinWidth = 25
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'SID'
            MinWidth = 25
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'TSID'
            MinWidth = 25
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'NID'
            MinWidth = 25
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'Namespace'
            MinWidth = 25
            Width = 70
          end
          item
            Caption = 'Action'
          end
          item
            Caption = 'Old Servicename/Package'
            Width = 150
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        SortType = stText
        TabOrder = 0
        ViewStyle = vsReport
        OnColumnClick = lvDiffColumnClick
        OnCompare = lvDiffCompare
        OnCustomDrawItem = lvDiffCustomDrawItem
        OnDblClick = lvDiffDblClick
        OnKeyDown = lvDiffKeyDown
      end
    end
    object bCancel: TButton
      Left = 778
      Top = 595
      Width = 75
      Height = 25
      Hint = 'Just go back to the main screen'
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object bUncheckAll: TButton
      Left = 493
      Top = 555
      Width = 129
      Height = 32
      Hint = 'Uncheck all services'
      Anchors = [akRight, akBottom]
      Caption = 'Uncheck All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      WordWrap = True
      OnClick = bUncheckAllClick
    end
    object bCheckAll: TButton
      Left = 633
      Top = 555
      Width = 129
      Height = 32
      Hint = 'Check all services'
      Anchors = [akRight, akBottom]
      Caption = 'Check All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      WordWrap = True
      OnClick = bCheckAllClick
    end
    object GroupBox3: TGroupBox
      Left = 34
      Top = 64
      Width = 820
      Height = 59
      Anchors = [akTop, akRight]
      Caption = 'How to interpret comparison results'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DesignSize = (
        820
        59)
      object lExplanation: TLabel
        Left = 13
        Top = 14
        Width = 796
        Height = 42
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 
          'The just read services file is treated as a newer file than the ' +
          'currently loaded (active) file-set. So entries that are in the j' +
          'ust read set but not in the older active set get as action "Add"' +
          '. Entries who ar not in the just read set anymore get as action ' +
          '"Delete", however they will be unchecked for processing by defau' +
          'lt. If only the servicename or packagename differs the action "U' +
          'pdate" is set.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 8
      Width = 846
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File info'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DesignSize = (
        846
        49)
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 129
        Height = 13
        Caption = 'Services file compared with'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 109
        Height = 13
        Caption = 'Active file-set directory:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lCompareDir: TLabel
        Left = 184
        Top = 32
        Width = 649
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lActiveDir: TLabel
        Left = 184
        Top = 16
        Width = 649
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 520
      Width = 465
      Height = 100
      Anchors = [akLeft, akBottom]
      BevelInner = bvLowered
      TabOrder = 6
      DesignSize = (
        465
        100)
      object Label3: TLabel
        Left = 8
        Top = 28
        Width = 347
        Height = 14
        Caption = 
          'When choosing "update active set" the following actions are perf' +
          'ormed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 44
        Width = 331
        Height = 14
        Caption = 
          'Checked services with action ADD wil be added to the active file' +
          '-set'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 76
        Width = 366
        Height = 14
        Caption = 
          'Checked services with action DELETE will be deleted from the act' +
          'ive file-set'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 60
        Width = 413
        Height = 14
        Caption = 
          'For checked services with UPDATE the service- and/or packagename' +
          ' will be updated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 7
        Width = 370
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'You can use the spacebar to select/deselect selected services.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object bImport: TButton
      Left = 493
      Top = 595
      Width = 270
      Height = 25
      Hint = 
        'Update the active file-set with the above checked services. On t' +
        'he main panel new services get the value '#39'New'#39' in the flags fiel' +
        'd.'
      Anchors = [akRight, akBottom]
      Caption = 'Update active file-set with checked services'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bImportClick
    end
    object eNewBouquetName: TEdit
      Left = 493
      Top = 524
      Width = 204
      Height = 22
      Anchors = [akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = 'eNewBouquetName'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 620
    Width = 856
    Height = 19
    Panels = <>
  end
end
