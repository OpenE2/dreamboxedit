object FormImportUserBouquets: TFormImportUserBouquets
  Left = 255
  Top = 236
  Width = 670
  Height = 343
  Caption = 'Import individual User Bouquets'
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
    Width = 662
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      662
      309)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 552
      Height = 257
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'User Bouquets (*.tv and *.radio)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        552
        257)
      object lvFavs: TListView
        Left = 8
        Top = 16
        Width = 536
        Height = 233
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Caption = 'Filename'
            MinWidth = 25
            Width = 150
          end
          item
            Caption = 'User Bouquet name'
            MinWidth = 25
            Width = 120
          end
          item
            Caption = 'TV/Radio'
            MinWidth = 25
            Width = 60
          end
          item
            Caption = 'Filedate'
            MinWidth = 25
            Width = 115
          end
          item
            Alignment = taRightJustify
            Caption = 'Size'
            MinWidth = 25
            Width = 70
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        PopupMenu = pulvFavs
        SortType = stText
        TabOrder = 0
        ViewStyle = vsReport
        OnCustomDrawItem = lvFavsCustomDrawItem
        OnDblClick = lvFavsDblClick
        OnKeyDown = lvFavsKeyDown
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 274
      Width = 552
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      BevelInner = bvLowered
      Color = 16510433
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        552
        33)
      object Label1: TLabel
        Left = 8
        Top = 2
        Width = 537
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 
          'Uncheck the files you don'#39't want to process! (spacebar also chec' +
          'ks / unchecks)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
    object bProcess: TButton
      Left = 575
      Top = 248
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Process'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bProcessClick
    end
    object bCancel: TButton
      Left = 575
      Top = 280
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
    end
    object bCheckAll: TButton
      Left = 573
      Top = 14
      Width = 81
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'Check All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      WordWrap = True
      OnClick = bCheckAllClick
    end
    object bUncheckAll: TButton
      Left = 573
      Top = 56
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Uncheck All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      WordWrap = True
      OnClick = bUncheckAllClick
    end
    object bRefresh: TButton
      Left = 573
      Top = 128
      Width = 81
      Height = 41
      Hint = 'Read all *.sdx files from the currently choosen directory again'
      Anchors = [akTop, akRight]
      Caption = 'Refresh the filelist'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      WordWrap = True
      OnClick = bRefreshClick
    end
  end
  object pulvFavs: TPopupMenu
    Left = 112
    Top = 80
    object puCheckall: TMenuItem
      Caption = 'Check all for processing'
      OnClick = bCheckAllClick
    end
    object puUncheckall: TMenuItem
      Caption = 'Uncheck all for processing'
      OnClick = bUncheckAllClick
    end
  end
end
