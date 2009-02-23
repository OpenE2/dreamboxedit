object frmMain: TfrmMain
  Left = 341
  Top = 259
  AutoScroll = False
  Caption = 'DreamBoxEdit'
  ClientHeight = 706
  ClientWidth = 992
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sb: TStatusBar
    Left = 0
    Top = 687
    Width = 992
    Height = 19
    Hint = 'aa'
    Panels = <
      item
        Width = 100
      end
      item
        Width = 355
      end
      item
        Width = 60
      end
      item
        Width = 90
      end
      item
        Width = 135
      end
      item
        Style = psOwnerDraw
        Text = ' Copyright LlamaWare 2007'
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object LWPanelB: TLWPanel
    Left = 0
    Top = 107
    Width = 992
    Height = 580
    Align = alClient
    Color = 16378331
    TabOrder = 1
    Color2 = 16378331
    LineWidth1 = 2
    object Splitter1: TSplitter
      Left = 620
      Top = 1
      Height = 578
      Align = alRight
      Color = clCream
      ParentColor = False
    end
    object LWPanelR: TLWPanel
      Left = 623
      Top = 1
      Width = 368
      Height = 578
      Align = alRight
      Color = 16378331
      TabOrder = 0
      Color2 = 16378331
      LineWidth1 = 2
      object Splitter2: TSplitter
        Left = 189
        Top = 1
        Height = 576
        Align = alRight
        Color = clCream
        ParentColor = False
      end
      object LWPanelRR: TLWPanel
        Left = 192
        Top = 1
        Width = 175
        Height = 576
        Align = alRight
        Caption = 'Bouquets'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Effect = GradientH
        Color2 = clGray
        LineWidth1 = 2
        DesignSize = (
          175
          576)
        object Image1: TImage
          Left = 0
          Top = 16
          Width = 70
          Height = 53
        end
        object LWPanel3: TLWPanel
          Left = 2
          Top = 555
          Width = 172
          Height = 20
          Anchors = [akLeft, akRight, akBottom]
          BorderWidth = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Effect = GradientV
          Color1 = clCream
          Color2 = clWhite
          MarginLeft = 2
          MarginTop = 2
          MarginRight = 2
          MarginBottom = 2
          object Label4: TLabel
            Left = 8
            Top = 4
            Width = 49
            Height = 14
            Caption = 'Bouquets:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object _lBouqT: TLabel
            Left = 64
            Top = 4
            Width = 41
            Height = 13
            AutoSize = False
            Caption = '_lBouqT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
        object tv: TTreeView
          Left = 2
          Top = 72
          Width = 172
          Height = 481
          Anchors = [akLeft, akTop, akRight, akBottom]
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          Indent = 19
          MultiSelect = True
          MultiSelectStyle = [msControlSelect, msShiftSelect]
          ParentFont = False
          RowSelect = True
          TabOrder = 1
        end
      end
      object LWPanelRL: TLWPanel
        Left = 1
        Top = 1
        Width = 188
        Height = 576
        Align = alClient
        Caption = 'Details'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Color2 = clGray
        LineWidth1 = 2
        DesignSize = (
          188
          576)
        object lvDet: TListView
          Left = 2
          Top = 40
          Width = 183
          Height = 512
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = <
            item
              Caption = 'Service'
              MinWidth = 25
              Width = 95
            end
            item
              Caption = 'Type'
              MinWidth = 10
              Width = 40
            end
            item
              Alignment = taRightJustify
              Caption = 'Satpos'
              MinWidth = 10
              Width = 46
            end>
          Ctl3D = False
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          MultiSelect = True
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          ViewStyle = vsReport
        end
        object LWPanel4: TLWPanel
          Left = 2
          Top = 555
          Width = 183
          Height = 20
          Anchors = [akLeft, akRight, akBottom]
          BorderWidth = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Effect = GradientV
          Color1 = clCream
          Color2 = clWhite
          MarginLeft = 2
          MarginTop = 2
          MarginRight = 2
          MarginBottom = 2
          object Label8: TLabel
            Left = 8
            Top = 4
            Width = 55
            Height = 14
            Caption = 'Items in list:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object _lDetT: TLabel
            Left = 114
            Top = 4
            Width = 40
            Height = 13
            AutoSize = False
            Caption = '_lDetT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
        object pDetName: TLWPanel
          Left = 2
          Top = 16
          Width = 183
          Height = 22
          BevelOuter = bvNone
          TabOrder = 2
          Effect = GradientH
          Color2 = 15000804
          MarginLeft = 2
          MarginTop = 2
          MarginRight = 2
          MarginBottom = 2
          object _lDetName: TLabel
            Left = 6
            Top = 4
            Width = 172
            Height = 14
            AutoSize = False
            Caption = '_lDetName'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
        end
      end
    end
    object LWPanelL: TLWPanel
      Left = 1
      Top = 1
      Width = 619
      Height = 578
      Align = alClient
      Caption = 'Services'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Effect = GradientV
      Color2 = clGray
      LineWidth1 = 2
      DesignSize = (
        619
        578)
      object lvServ: TListView
        Left = 2
        Top = 22
        Width = 615
        Height = 531
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'Service'
            MinWidth = 5
            Width = 100
          end
          item
            Caption = 'Package'
            MinWidth = 5
            Width = 100
          end
          item
            Caption = 'Type'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'Ch.Nr.'
            MinWidth = 5
            Width = 45
          end
          item
            Caption = 'Satellite'
            MinWidth = 5
            Width = 90
          end
          item
            Alignment = taRightJustify
            Caption = 'Frequency'
            MinWidth = 5
            Width = 70
          end
          item
            Alignment = taCenter
            Caption = 'Pol'
            MinWidth = 5
            Width = 30
          end
          item
            Alignment = taRightJustify
            Caption = 'Symbolrate'
            MinWidth = 5
            Width = 70
          end
          item
            Alignment = taCenter
            Caption = 'FEC'
            MinWidth = 5
            Width = 32
          end
          item
            Alignment = taRightJustify
            Caption = 'SatPos'
            MinWidth = 5
          end
          item
            Alignment = taRightJustify
            Caption = 'SID'
            MinWidth = 5
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'TSID'
            MinWidth = 5
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'NID'
            MinWidth = 5
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'Type'
            MinWidth = 5
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'VPID'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'APID'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'TPID'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'PPID'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = '3PID'
            MinWidth = 5
            Width = 40
          end
          item
            Alignment = taRightJustify
            Caption = 'Namespace'
            MinWidth = 5
            Width = 75
          end
          item
            Caption = 'Flags'
            MinWidth = 5
            Width = 40
          end>
        DragMode = dmAutomatic
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        MultiSelect = True
        OwnerData = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object LWPanel2: TLWPanel
        Left = 1
        Top = 557
        Width = 617
        Height = 20
        Align = alBottom
        BorderWidth = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Effect = GradientV
        Color1 = clCream
        Color2 = clWhite
        MarginLeft = 2
        MarginTop = 2
        MarginRight = 2
        MarginBottom = 2
        DesignSize = (
          617
          20)
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 71
          Height = 14
          Caption = 'Total services:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object _lServT: TLabel
          Left = 106
          Top = 4
          Width = 40
          Height = 13
          AutoSize = False
          Caption = '_lServT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 467
          Top = 4
          Width = 95
          Height = 14
          Anchors = [akTop, akRight]
          Caption = 'Displayed services:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object _lServD: TLabel
          Left = 573
          Top = 4
          Width = 39
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = '_lServD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
      end
      object cbTVRadio: TComboBox
        Left = 202
        Top = 0
        Width = 88
        Height = 19
        Hint = 'Filter the below displayed services on type'
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        Style = csOwnerDrawFixed
        CharCase = ecLowerCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = cbTVRadioChange
        Items.Strings = (
          '- all types -'
          'tv'
          'radio'
          'tv & radio'
          'data')
      end
      object cbSatName: TComboBox
        Left = 288
        Top = 0
        Width = 91
        Height = 19
        Hint = 'Filter the below displayed services on satellite name'
        BevelInner = bvNone
        BevelOuter = bvNone
        Style = csOwnerDrawFixed
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Items.Strings = (
          '- all satellites -')
      end
      object ePackage: TEdit
        Left = 103
        Top = 0
        Width = 99
        Height = 19
        Hint = 'Enter (part of) packagename to filter below services on'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object lwpnlTop: TLWPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 107
    Align = alTop
    TabOrder = 2
    Effect = GradientV
    Color1 = clCream
    Color2 = clBtnFace
    DesignSize = (
      992
      107)
    object Label2: TLabel
      Left = 901
      Top = 90
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'DreamBoxEdit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 3
      Top = 91
      Width = 60
      Height = 13
      Caption = 'version 2.20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ctlbrTop: TControlBar
      Left = 1
      Top = 1
      Width = 990
      Height = 30
      Align = alTop
      BevelEdges = [beLeft, beTop, beRight]
      RowSize = 28
      TabOrder = 0
      object ActionMainMenuBar1: TActionMainMenuBar
        Left = 11
        Top = 2
        Width = 214
        Height = 24
        UseSystemFont = False
        ActionManager = amMain
        Caption = 'ActionMainMenuBar1'
        ColorMap.HighlightColor = 15660791
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = 15660791
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Spacing = 0
      end
      object tbrDreamboxSelect: TToolBar
        Left = 238
        Top = 2
        Width = 187
        Height = 24
        ButtonHeight = 21
        Caption = 'tbrDreamboxSelect'
        EdgeBorders = []
        TabOrder = 1
        object cbxDreamboxSelect: TComboBox
          Left = 0
          Top = 2
          Width = 185
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Dreambox 7020S (192.168.1.55)'
          Items.Strings = (
            'Dreambox 7020S (192.168.1.55)'
            'Dreambox 800S (192.168.1.44)')
        end
      end
    end
    object ctlbrTools: TControlBar
      Left = 1
      Top = 31
      Width = 990
      Height = 58
      Align = alTop
      BevelEdges = [beLeft, beRight, beBottom]
      RowSize = 30
      TabOrder = 1
      object tbarTools: TToolBar
        Left = 11
        Top = 2
        Width = 973
        Height = 56
        Align = alNone
        ButtonHeight = 52
        ButtonWidth = 105
        Caption = 'tbarTools'
        Color = clBtnFace
        EdgeBorders = []
        Flat = True
        Images = ilCommon32
        ParentColor = False
        ShowCaptions = True
        TabOrder = 0
        Transparent = True
        Wrapable = False
        object tbtnOpen: TToolButton
          Left = 0
          Top = 0
          Action = acFileOpen
          Caption = 'Open'
        end
        object tbtnSave: TToolButton
          Left = 105
          Top = 0
          Caption = 'Save'
          ImageIndex = 7
        end
        object ToolButton2: TToolButton
          Left = 210
          Top = 0
          Width = 8
          Caption = 'ToolButton2'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object tbtnOptions: TToolButton
          Left = 218
          Top = 0
          Action = acToolsOptions
          Caption = 'Options'
        end
        object tbtnTransfer: TToolButton
          Left = 323
          Top = 0
          Action = acToolsTransfer
        end
        object ToolButton10: TToolButton
          Left = 428
          Top = 0
          Width = 8
          Caption = 'ToolButton10'
          ImageIndex = 18
          Style = tbsSeparator
        end
        object tbtnFileset: TToolButton
          Left = 436
          Top = 0
          Action = acFileSet
        end
        object ToolButton8: TToolButton
          Left = 541
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 17
          Style = tbsSeparator
        end
        object tbtnFind: TToolButton
          Left = 549
          Top = 0
          Action = acSearchFind
          Caption = 'Find'
        end
        object ToolButton11: TToolButton
          Left = 654
          Top = 0
          Width = 8
          Caption = 'ToolButton11'
          ImageIndex = 14
          Style = tbsSeparator
        end
        object tbtnHelpContents: TToolButton
          Left = 662
          Top = 0
          Action = HelpContents1
        end
        object tbtnAbout: TToolButton
          Left = 767
          Top = 0
          Action = acHelpAbout
          Caption = 'About DreamBoxEdit'
        end
        object tbtnShutdown: TToolButton
          Left = 872
          Top = 0
          Action = FileExit1
        end
      end
    end
    object pnlCornerImage: TPanel
      Left = 951
      Top = 4
      Width = 36
      Height = 24
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 2
      object imgCorner: TImage
        Left = 0
        Top = 0
        Width = 36
        Height = 24
        Align = alClient
        Center = True
        Picture.Data = {
          07544269746D61706E1C0000424D6E1C00000000000036040000280000006400
          00003E000000010008000000000038180000120B0000120B0000000100000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0DCC000F0CAA600AA3F2A00FF3F2A00005F2A00555F2A00AA5F2A00FF5F
          2A00007F2A00557F2A00AA7F2A00FF7F2A00009F2A00559F2A00AA9F2A00FF9F
          2A0000BF2A0055BF2A00AABF2A00FFBF2A0000DF2A0055DF2A00AADF2A00FFDF
          2A0000FF2A0055FF2A00AAFF2A00FFFF2A000000550055005500AA005500FF00
          5500001F5500551F5500AA1F5500FF1F5500003F5500553F5500AA3F5500FF3F
          5500005F5500555F5500AA5F5500FF5F5500007F5500557F5500AA7F5500FF7F
          5500009F5500559F5500AA9F5500FF9F550000BF550055BF5500AABF5500FFBF
          550000DF550055DF5500AADF5500FFDF550000FF550055FF5500AAFF5500FFFF
          550000007F0055007F00AA007F00FF007F00001F7F00551F7F00AA1F7F00FF1F
          7F00003F7F00553F7F00AA3F7F00FF3F7F00005F7F00555F7F00AA5F7F00FF5F
          7F00007F7F00557F7F00AA7F7F00FF7F7F00009F7F00559F7F00AA9F7F00FF9F
          7F0000BF7F0055BF7F00AABF7F00FFBF7F0000DF7F0055DF7F00AADF7F00FFDF
          7F0000FF7F0055FF7F00AAFF7F00FFFF7F000000AA005500AA00AA00AA00FF00
          AA00001FAA00551FAA00AA1FAA00FF1FAA00003FAA00553FAA00AA3FAA00FF3F
          AA00005FAA00555FAA00AA5FAA00FF5FAA00007FAA00557FAA00AA7FAA00FF7F
          AA00009FAA00559FAA00AA9FAA00FF9FAA0000BFAA0055BFAA00AABFAA00FFBF
          AA0000DFAA0055DFAA00AADFAA00FFDFAA0000FFAA0055FFAA00AAFFAA00FFFF
          AA000000D4005500D400AA00D400FF00D400001FD400551FD400AA1FD400FF1F
          D400003FD400553FD400AA3FD400FF3FD400005FD400555FD400AA5FD400FF5F
          D400007FD400557FD400AA7FD400FF7FD400009FD400559FD400AA9FD400FF9F
          D40000BFD40055BFD400AABFD400FFBFD40000DFD40055DFD400AADFD400FFDF
          D40000FFD40055FFD400AAFFD400FFFFD4005500FF00AA00FF00001FFF00551F
          FF00AA1FFF00FF1FFF00003FFF00553FFF00AA3FFF00FF3FFF00005FFF00555F
          FF00AA5FFF00FF5FFF00007FFF00557FFF00AA7FFF00FF7FFF00009FFF00559F
          FF00AA9FFF00FF9FFF0000BFFF0055BFFF00AABFFF00FFBFFF0000DFFF0055DF
          FF00AADFFF00FFDFFF0055FFFF00AAFFFF00FFCCCC00FFCCFF00FFFF3300FFFF
          6600FFFF9900FFFFCC00007F0000557F0000AA7F0000FF7F0000009F0000559F
          0000AA9F0000FF9F000000BF000055BF0000AABF0000FFBF000000DF000055DF
          0000AADF0000FFDF000055FF0000AAFF000000002A0055002A00AA002A00FF00
          2A00001F2A00551F2A00AA1F2A00FF1F2A00003F2A00553F2A00F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9310707F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907310707F7F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90707F731F031D0AFF9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90707072DF0F0F159AF
          08ABAEF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9070707072DF0F4F5
          F5F559AFAE08AB0808F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9070707F5F0
          F5F5F555312D07AF08D508D50808F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9070707
          F5F0F5325A2D2D82085507D108080808D50808D5F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907
          0707F5F0F5325A5E5A31310882310708D108D4AF0808AF0808ABF9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9550707F5F0F5075A5E5E5E5E072D31313107D108ABD00808D50808D50808D5
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F931070731F0F1315A5F5E5E5A5E8307313107070708AF0808D50808D508
          08D50808AFAAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F955310707310731F1075F5A5F825E5E5E07550707820808D108AF08
          D50808D50808AFAA08AFAEABF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F907F531F731F1F7F631F55A5E5E5E5E5E075507F786AFF6F6AF
          0808D508AF08D50808D508AF0808AB0808ABF9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9592DF559F72DF5F407072D2D5A095E5A075507F708AFF6
          F6FFFFFFF6AF080808D50808AF08D50808D50808D50808F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9072DF52D07F72DF4F52D312D2D315A5E0707078208
          AFD1F6FFFFFFFFF6F6F6F6AFAF0808D5080808D50808D50808AB0808ABF9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F959312CF52D07F72DF52D2D2D0708072D075507
          8208AFF6FFFFFFFFF6F6F6F6F6F6F6F6F6AF0808D5AF0808D50808D50808D508
          AEAFAAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F931F52DF52D07F707312D2D3131820807
          070786AFF6F6FFFFFFFFF6F6F6F6AFF6AFF6AFF6F6F6F6AF0808D50808AF0808
          08D50808AB08AF08D5F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9312DF4312D2D0782F707552D3131
          3155078208AFF6F6FFFFFFFFF6F6F6AFF6AFF6F6F6AFF6D1F6AFF6F6F6AF0808
          D508D508AF0808D50808AA0808AB08F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F931F52DF52D2DF50782828231
          310707F7820808F6AFF6FFFFFFFFF6F6F6F6AFF6F6F6F6AFF6F6F608F6F6F6AF
          F6F6F6AF080808D508D50808D5AF08AB08AEAB0808F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F931F42D2CF52DF52D0786
          86828608AAAA0808F6AFAFF6FFFFFFF6F6F6D108F6AFF6AFF6AFAFF6AFF6AFF6
          AFAFF6F6AF08F6F6F6AF08080808AF080808D5AEAB0808AB08AAF9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907F5F42DF5F52D31
          2D07868282AAABAA08AF08D1AFF6F6F6F6F6F6AFF6D1F6F6F6AFF6F6AFF6F6D1
          F6AFF6AFF6D1D108F6F6AFF6F6FFF6AF08D508D508D50808AF08D50808ABF9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907F5F42D2DF5
          312D2D2D318682AA08080808AF08D1B3F6F6F6F6F6F6AFF6F608AFAFAFF6D108
          F6F6AF08F6AFD0AFF60808AFD1AFAFAEAFAED1F6F6080808AB0808AFAA080808
          D508F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9072DF42D
          2D0D2D2D2D312D0786AA08AB08D508AFF6F6F6F6F6F6F6AFF6AFF6AEAFF6F6D0
          F608F6AFD108F6D108F6AFD108AA86080808D1AFD1AF08AFF6F6F6AF08AEABAE
          AF08D50808ABF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907F5
          2CF52DF52D2D2D312D2D0786AAABAA080808F6AFF6AFF6D1F6F6AFD108F6AFD1
          08AFAFAFAFF608F608D108F6AFD40808AF08AA8686860808AFD0AFAEAF08AFF6
          F6AF08ABAEAF08AF0808F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907
          3131F42DF52D2D2D313131313107AA08080808AFF6F6F6F6F6F6D1F608AFF608
          F608D108F6D1AEF608AFAFAFAFD1AFAF08AA860808AB08AFAA08868608D408D1
          08D508D108FFF60808AB08CCAFD5F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9312DF52D2D0D2D312D3131313131070808AAD108D1F6AFF6D108F6AFAE08
          AFD108D1AFD108D1AF08AFAFF6D1D0AFD0088608D40808AA86860808AF08AA86
          86AA08D408AF0808D508D1F6D10808AF0808F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9072DF42D2DF52D2D2D2D3131553131F7AEABAEAF08F6F6AFF608F6D1
          08D5AFAFD008D10808AEAFAFD0AFD0AF0808AF08AF08AA868608D40808AA8682
          AA08D4D4AA8682AAD40808AB0808AAAF08F6D10808ABF9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9072DF42D0D2D2D312D3131313131315582AB0808AFF6AFAF08D1
          F6AF08AF0808AED5AF08AFD1AFD5AEAF08AF08D5AF08868608AB0808AA868608
          08AB08088286AA08ABAB0886A608AB08AB08ABAAAB08D4F6D108AEF9F9F9F9F9
          F9F9F9F9F9F9F9F9F931F52D2D2D2D2D312D3131313131550708AF08F6AFD108
          F6D1D108AFAAD108D5AFAF0808D108080808AFAED508D5AE08AAAA86868608AB
          0808AA868608ABAA08AA8686080808AA08AA8608AA0808080808AA0908D1F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F92D2D3131312D3131313131073107F708AFD0AF
          D108D0AFD50808ABAEAF0808AFAE0808D50808AFD508D508AF0808AFAF08AFD5
          86AA868608D408AA8682860908D408AA86A608AB08AB08AA09AA09AAAB08AA08
          82F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907313131070731313107310755F7AAAF
          08D1AFD008AFAF080808AB08ABAEABAEAB08D5AB0808D50808AF0808D508D508
          AED50808D50886AA86820808D408AA8682AA08AB0886828608AAAB08AA86AA08
          08AA09F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907310707F7F7313155310707
          8608D1F6D108AFD408AAAB08AB080808AEAB08AF08080808D508AFAAAFAEAB08
          08AB08AFAB08AB080808AF08AA868286AAAB08AA0882868208ABAA82080882AA
          D4AA09A6F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90707F70707550707
          07078608D1D1AF08AF0808AA08AB08AA08AAAB08AB0808AAAB08AB08080808AB
          08AB08AB080808AA080808AB08ABAAAB0808AA828686AA0908AA8686AA860808
          AA8208088208F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F907070755
          310707078208D1F6080808ABAA08AB08AB08AA0908AB0808AA08AB0808AA08AA
          08AB080808AA0808AA08AB08AB08AB08AA0808080808ABAA08828286AA08D4AA
          86820882AB080882F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          0707310707F78208F6F6AFAB08D4AA0809AAAA08AA0808AAAA08AA08ABAA08AB
          08AB08AB08AAABAAAB08AB08D4AA0808AA08AA08AB08AB08ABAA0808AAAB08AA
          8682AA86AB08828686F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F907550707AA08F6D1ABAA08AA08AA09A6080809AA08AAAB0808AB08AA
          0809AAAA08AA0808AB08080808AA08AA08AB08AB08AB08AA08AA08AA0808AAAB
          0808AA09AA8682088208AAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9070786D1D1AFAF080809AA09AA86AA8608A608AA09AA08AA
          08AAAA09AAAA080908AB08AA0808ABAA0808AB0808AA08AA08AA08090809AA09
          AAAB0808AA0908AA0809AA82F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9AFF6AF080886A608A68608A609AA09AA8609AA
          08AA09AA09AA0908AA09AA08A608A608ABAAAA08ABAA0808A609AA09AA09AAAA
          AAAA08A6088608A608AAA609AA08F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9ABAA09A60808820886820886AA86
          AA0886AA0886AA0808AA08A60886D4AA08080908AA0809AA0809A60808A60808
          AAAA09080809AA08ABAA0809AA0908AAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9AA8682AA86820886
          8208820882AAAA09AAAB8686AA09AA08AA088208AAAA08AA09A68608A60808AA
          0908AA8609A608A6AA86AA868608A60886F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F98686
          86AA82AA86820882080986A6868208A609A6088209A608A6098208AA860808A6
          088208AA86A609AAAA08820809AA09AA08A686F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F982868682AA86AA86AA82088608820886088208AA8608868608A609
          8208A6098608A609AA0808A6098608A68686AA86F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9868682868286AA82AA86AA86A686828682088208
          A6868686AA868686AA86868686828686AA828686AA86F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F98686868286868286868686AA86AA
          8682AA820882AA828686A6868286A686AA86A68686AA86F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F986868286828682
          868286868286868682868686AA828686AA8686868286868682F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F982
          828682868682868286828682868286828286868282828682868682F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F982828286828682868286868286868682828686868286F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F782F782F78282F782F78282828682828282F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F7F7F7F7F782F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F7
          F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F7F7F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F907F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9}
        Stretch = True
        Transparent = True
      end
    end
  end
  object amMain: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = acFileOpen
                ImageIndex = 5
                ShortCut = 16463
              end
              item
                Caption = '-'
              end
              item
                Action = acFileSave
                ImageIndex = 7
                ShortCut = 16467
              end
              item
                Caption = '-'
              end
              item
                Action = acFilePrint
                ImageIndex = 9
                ShortCut = 16464
              end
              item
                Action = FilePrintSetup1
              end
              item
                Action = FilePageSetup1
                Caption = '&Page Setup...'
              end
              item
                Caption = '-'
              end
              item
                Action = FileExit1
                ImageIndex = 43
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = EditUndo1
                ShortCut = 16474
              end
              item
                Caption = '-'
              end
              item
                Action = EditCut1
                ImageIndex = 3
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 2
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 6
                ShortCut = 16470
              end
              item
                Caption = '-'
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end
              item
                Caption = '-'
              end
              item
                Action = EditDelete1
                ShortCut = 46
              end>
            Caption = '&Edit'
          end
          item
            Items = <
              item
                Action = acSearchFind
                ImageIndex = 34
                ShortCut = 16454
              end
              item
                Action = acSearchFindNext
                ImageIndex = 33
                ShortCut = 114
              end>
            Caption = '&Search'
          end
          item
            Items = <
              item
                Action = CustomizeActionBars1
              end>
            Caption = '&Tools'
          end
          item
            Items = <
              item
                Action = HelpContents1
                ImageIndex = 15
              end
              item
                Action = HelpTopicSearch1
                ImageIndex = 9
              end>
            Caption = '&Help'
          end>
      end
      item
        Items = <
          item
            Action = acFileOpen
            ImageIndex = 5
            ShowCaption = False
            ShortCut = 16463
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = acFileOpen
                ImageIndex = 5
                ShortCut = 16463
              end
              item
                Caption = '-'
              end
              item
                Action = acFileSave
                ImageIndex = 7
                ShortCut = 16467
              end
              item
                Action = acSaveAs
                ImageIndex = 8
              end
              item
                Caption = '-'
              end
              item
                Action = acFilePrint
                Caption = 'P&rint...'
                ImageIndex = 9
              end
              item
                Action = FilePrintSetup1
              end
              item
                Action = FilePageSetup1
                Caption = '&Page Setup...'
              end
              item
                Caption = '-'
              end
              item
                Action = FileExit1
                ImageIndex = 13
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = EditUndo1
                ImageIndex = 17
                ShortCut = 16474
              end
              item
                Action = acEditRedo
                ImageIndex = 16
                ShortCut = 16473
              end
              item
                Caption = '-'
              end
              item
                Action = EditCut1
                ImageIndex = 3
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 2
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 6
                ShortCut = 16470
              end
              item
                Caption = '-'
              end
              item
                Action = EditDelete1
                ImageIndex = 18
                ShortCut = 46
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end>
            Caption = '&Edit'
          end
          item
            Items = <
              item
                Action = acFileSet
                ImageIndex = 2
              end
              item
                Action = acShowLog
                Caption = '&Show log file...'
                ImageIndex = 1
              end
              item
                Action = acEditSatellitesXML
              end
              item
                Caption = '-'
              end
              item
                Items = <
                  item
                    Action = acImportUserBouquetFiles
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = acImportSatcoDXFiles
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = acReimportExportedServicesFile
                  end
                  item
                    Action = acReImportExportedBouquetFile
                  end>
                Caption = '&Import'
                UsageCount = 1
              end
              item
                Items = <
                  item
                    Action = acExportAllServicesExcel
                    Caption = '&Export all services to Excel readable format'
                  end
                  item
                    Action = acExportAllBouquetsExcel
                    Caption = 'E&xport all bouquets to Excel readable format'
                  end
                  item
                    Caption = '-'
                  end
                  item
                    Action = acExportAllServicesSatcoDX
                    Caption = 'Ex&port all services to SatcoDX format'
                  end>
                Caption = 'E&xport'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Items = <
                  item
                    Action = acCompareSetsDreambox
                    Caption = '&Compare loaded services with services from Dreambox'
                  end
                  item
                    Action = acCompareSetsOther
                    Caption = 'C&ompare loaded services with other services on disk'
                  end>
                Caption = 'C&ompare sets'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Action = acToolsOptions
                Caption = 'O&ptions...'
                ImageIndex = 11
              end>
            Caption = '&Tools'
          end
          item
            Items = <
              item
                Action = acLangEnglish
              end>
            Caption = '&Language'
          end
          item
            Items = <
              item
                Action = acSearchFind
                ImageIndex = 12
                ShortCut = 16454
              end
              item
                Action = acSearchFindNext
                ImageIndex = 33
                ShortCut = 114
              end>
            Caption = 'F&ind'
          end
          item
            Items = <
              item
                Action = HelpContents1
                ImageIndex = 15
              end
              item
                Action = HelpTopicSearch1
              end
              item
                Action = acHelpAbout
                ImageIndex = 14
              end>
            Caption = '&Help'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ilCommon16
    Left = 16
    Top = 512
    StyleName = 'XP Style'
    object acFileOpen: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 5
      ShortCut = 16463
      BeforeExecute = acFileOpenBeforeExecute
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 3
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 2
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 6
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 17
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 18
      ShortCut = 46
    end
    object HelpContents1: THelpContents
      Category = 'Help'
      Caption = '&Contents'
      Enabled = False
      Hint = 'Help Contents'
      ImageIndex = 15
      OnExecute = HelpContents1Execute
    end
    object HelpTopicSearch1: THelpTopicSearch
      Category = 'Help'
      Caption = '&Topic Search'
      Enabled = False
      Hint = 'Topic Search'
    end
    object FilePrintSetup1: TFilePrintSetup
      Category = 'File'
      Caption = 'Print Set&up...'
      Hint = 'Print Setup'
    end
    object FilePageSetup1: TFilePageSetup
      Category = 'File'
      Caption = 'Page Set&up...'
      Dialog.MinMarginLeft = 0
      Dialog.MinMarginTop = 0
      Dialog.MinMarginRight = 0
      Dialog.MinMarginBottom = 0
      Dialog.MarginLeft = 2500
      Dialog.MarginTop = 2500
      Dialog.MarginRight = 2500
      Dialog.MarginBottom = 2500
      Dialog.PageWidth = 21000
      Dialog.PageHeight = 29700
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 13
    end
    object acSearchFind: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 12
      ShortCut = 16454
    end
    object acSearchFindNext: TSearchFindNext
      Category = 'Search'
      Caption = 'Find &Next'
      Hint = 'Find Next|Repeats the last find'
      ShortCut = 114
    end
    object CustomizeActionBars1: TCustomizeActionBars
      Category = 'Tools'
      Caption = '&Customize'
      CustomizeDlg.StayOnTop = False
    end
    object acFileSave: TAction
      Category = 'File'
      Caption = '&Save'
      ImageIndex = 7
      ShortCut = 16467
      OnExecute = acFileSaveExecute
    end
    object acFilePrint: TAction
      Category = 'File'
      Caption = '&Print...'
      ImageIndex = 9
    end
    object acEditRedo: TAction
      Category = 'Edit'
      Caption = '&Redo'
      ImageIndex = 16
      ShortCut = 16473
    end
    object acImportUserBouquetFiles: TAction
      Category = 'Import'
      Caption = '&Import user bouquet files'
      OnExecute = acImportUserBouquetFilesExecute
    end
    object acImportSatcoDXFiles: TAction
      Category = 'Import'
      Caption = 'I&mport SatcoDX files'
      OnExecute = acImportSatcoDXFilesExecute
    end
    object acReimportExportedServicesFile: TAction
      Category = 'Import'
      Caption = '&Re-import exported services file'
      Hint = 'Select the exported services file to import'
      OnExecute = acReimportExportedServicesFileExecute
    end
    object acReImportExportedBouquetFile: TAction
      Category = 'Import'
      Caption = 'R&e-import exported bouquet file'
      Hint = 'Select the exported bouquet file to import'
      OnExecute = acReImportExportedBouquetFileExecute
    end
    object acHelpAbout: TAction
      Category = 'Help'
      Caption = '&About...'
      ImageIndex = 14
      OnExecute = acHelpAboutExecute
    end
    object acSaveAs: TAction
      Category = 'File'
      Caption = 'Save &as...'
      Enabled = False
      ImageIndex = 8
      OnExecute = acSaveAsExecute
    end
    object acFileSet: TAction
      Category = 'Tools'
      Caption = '&File set...'
      ImageIndex = 20
      OnExecute = acFileSetExecute
    end
    object acExportAllServicesExcel: TAction
      Category = 'Export'
      Caption = 'Export all services to Excel readable format'
      OnExecute = acExportAllServicesExcelExecute
    end
    object acExportAllBouquetsExcel: TAction
      Category = 'Export'
      Caption = 'Export all bouquets to Excel readable format'
      OnExecute = acExportAllBouquetsExcelExecute
    end
    object acExportAllServicesSatcoDX: TAction
      Category = 'Export'
      Caption = 'Export all services to SatcoDX format'
      OnExecute = acExportAllServicesSatcoDXExecute
    end
    object acCompareSetsDreambox: TAction
      Category = 'Compare sets'
      Caption = 'Compare loaded services with services from Dreambox'
      OnExecute = acCompareSetsDreamboxExecute
    end
    object acCompareSetsOther: TAction
      Category = 'Compare sets'
      Caption = 'Compare loaded services with other services on disk'
      OnExecute = acCompareSetsOtherExecute
    end
    object acShowLog: TAction
      Category = 'Tools'
      Caption = 'Show log file...'
      ImageIndex = 1
      OnExecute = acShowLogExecute
    end
    object acEditSatellitesXML: TAction
      Category = 'Tools'
      Caption = '&Edit Satellites.xml'
      OnExecute = acEditSatellitesXMLExecute
    end
    object acToolsOptions: TAction
      Category = 'Tools'
      Caption = '&Options...'
      ImageIndex = 11
      OnExecute = acToolsOptionsExecute
    end
    object acToolsTransfer: TAction
      Category = 'Tools'
      Caption = '&Transfer...'
      ImageIndex = 19
      OnExecute = acToolsTransferExecute
    end
    object acLangEnglish: TAction
      Category = 'Language'
      Caption = 'English'
      Checked = True
    end
  end
  object ilCommon16: TImageList
    Left = 16
    Top = 552
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500C6C2C200ACA7A700ACA7A700ACA7A700ACA7A700ACA7A700ACA7
      A700ACA7A700B2ACAC00E6E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100DCD5D500DED8D800DED8D800DED8D800DED8D800DED8D800DED8
      D800DAD2D200C8824C00DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00F8F8
      F800EAEAEA00EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E7E5E500CE864D00DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00CAC6C600B1AD
      AD00A7A5A500EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E7E5E500CE854B00DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800DBD4D400DFDA
      DA00EFEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E8E6E600CE834600DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800EBEBEB00EDED
      ED00F5F5F500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E9E7E700CE844700DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800EBEBEB00EDED
      ED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EBE9E900CE874D00DDDADA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800ECECEC00EEEE
      EE00F5F5F500F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300ECEAEA00CE8B5500E6E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800EDEDED00EFEF
      EF00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F3B77D00F5DE
      CC00E9CFBE00D6D4D400FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800EFEFEF00F1F1
      F100F5F5F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F2BB8500EAD1
      C000D6D4D400FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800F1F1F100F3F3
      F300F5F5F500F8F8F800F8F8F800F8F8F800F8F8F800F6F6F600E8B58600D6D4
      D400FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800F3F3F300F5F5
      F500F5F5F500F0F0F000EDEDED00EBB17900EDD6C500E4CABA00D0CECE00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800F5F5F500F7F7
      F700F7F7F700F7F7F700F7F7F700F2BB8500EAD1C000D6D4D400FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00F5F4F400F6F6
      F600F6F6F600F6F6F600F5F5F500E8B58600D8D6D600FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00F7F7
      F700F7F7F700F7F7F700F7F7F700F8F8F800FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00F7F7
      F700FBFBFB00000000000000000000000000000000000000000000000000FBFB
      FB00F7F7F700FBFBFB000000000000000000FBFBFB00E9E9E900DFDFDF00F0F0
      F000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00E3E3E3007B7B
      7B00E3E3E300FAFAFA0000000000000000000000000000000000FAFAFA00E3E3
      E3007B7B7B00E3E3E300FAFAFA0000000000F7F7F700C8867100C88570007979
      7900F0F0F000FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00E3E3E3001119E7001119
      E70069696900E1E1E100FAFAFA000000000000000000FAFAFA00E1E1E1001018
      E7001018E70069696900E3E3E300FBFBFB00F9F9F900C7857000C7846E00C683
      6D0076767600E0E0E000E4E4E400F2F2F2000000000000000000000000000000
      000000000000000000000000000000000000A7A5A3006A6662006A6662007B7B
      7A00FDFDFD000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F9F9F900EAEAEA0000000000A4A2A000625E5B00686460007B7B
      7A00FCFCFC00000000000000000000000000000000000000000000000000E1E1
      E1006B6763006864600065625F00EEEEEE00F9F9F9001018E7001019E7001119
      E7001119E80069696900E1E1E100FAFAFA00FAFAFA00E1E1E1001018E7001018
      E7001018E7001018E7007B7B7B00F7F7F700FEFEFE00C7846E00C6826C00C581
      6A00C47E6700C2796200C0775F0079797900EBEBEB0000000000000000000000
      000000000000000000000000000000000000BB742F00FF993300FF9933006042
      2400F8F8F800000000000000000000000000F9F9F900E7E7E700BDBDBD008281
      800079614A0099652E00714C2500000000007F4E1E009F5E2000764717002B1C
      0F0099999900C9C9C900EAEAEA00F8F8F8000000000000000000000000006355
      4600FF993300FF993300BF732700EFEFEF00FCFCFC001018E7001018E8001019
      E8001119E8001119E80069696900DEDEDE00DEDEDE001019E8001019E8001018
      E8001018E7001018E700E3E3E300FBFBFB0000000000FEFEFE00C6816B00C57F
      6900C37C6500C2796100C0765E00BF735B0078787800EEEEEE00000000000000
      00000000000000000000000000000000000081705F00FF993300FF993300EE8F
      3000C5C5C500FEFEFE0000000000F9F9F9009D652D00EB8D2F00FF993300FF99
      3300FF993300FF9933007C7B7A000000000073645500FF993300FF993300FF99
      3300FF993300F0903000A5662900959494000000000000000000FE983300B56C
      2300FF993300FF99330082542500FBFBFB0000000000FAFAFA001018E8001019
      E8001019E8001119E9001019E900656565001019E9001019E9001019E8001019
      E8001018E800E1E1E100FAFAFA00000000000000000000000000F6F6F600C988
      7300C6826C00C47D6600C2776000BF725A00BD70570082828200EEEEEE000000
      000000000000000000000000000000000000F2F2F200FF993300FF993300FF99
      33005F4C3700D4D4D400FDFDFD00FEFEFE0099806800FF993300FF993300FF99
      3300FF993300FD983300D8D8D80000000000F1F1F100F3923100FF993300FF99
      3300FF993300FF9933009D6C3C00F9F9F900987F6800FC973200995B1E00FF99
      3300FF993300FF99330074706C00000000000000000000000000FAFAFA001019
      E9001019E9001019E9001019E9001019E9001019E9001019E9001019E9001019
      E900E1E1E100FAFAFA0000000000000000000000000000000000FAFAFA00D39F
      8E00D19B8900CF958200C8867100C1775F00BD705700BD70570082828200EEEE
      EE000000000000000000000000000000000000000000C5833F00FFA24600FFA2
      4600FF9F40009A663300605C58007574730084674A00FFA14500FFA24600FFA2
      4600FFA24600D6883C00FAFAFA00000000000000000098612B00FFA24600FFA2
      4600FFA24600FFA24500704A250032302C003F302100935C2600FF9F4000FFA2
      4500FFA24600D0843700EFEFEF0000000000000000000000000000000000FAFA
      FA00121BE900131CE900131CE900131CE900131CE900131CE900131BE900DEDE
      DE00FAFAFA00000000000000000000000000000000000000000000000000DCB3
      A700DEB7AB00DDB5A800D5A39300C8877200C1775F00BD705700BD7057007878
      7800EBEBEB0000000000000000000000000000000000FAFAFA00F9B47000FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400544E4800000000000000000000000000B0AEAB00FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FBB67100403C37000000000000000000000000000000000000000000FAFA
      FA00DEDEDE001B24EA001A23EA001A23EA001B23EA001B24EA0065656500DEDE
      DE00FAFAFA000000000000000000000000000000000000000000000000000000
      0000E3C3B900E3C4BA00DEB8AC00D5A39300C8877200C1775F00BD705700BD70
      570079797900F2F2F20000000000000000000000000000000000F4F4F400DCB1
      8700FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FDCE9E00FFD0
      A000FFD0A000AFAFAF00000000000000000000000000FCFCFC00FFD0A000FFD0
      A100F4C59700FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100E6B9
      8C00C6A17C000000000000000000000000000000000000000000FAFAFA00E1E1
      E1002F36EB002A32EB002730EB00262FEB00262FEB002730EB002B33EB006969
      6900E1E1E100FAFAFA0000000000000000000000000000000000000000000000
      000000000000E4C5BB00E3C4BA00DEB8AC00D5A39300C8877200C1775F00BD70
      5700BD705700E4E4E40000000000000000000000000000000000000000000000
      0000A7A3A000B8A49000F6DBC100FBE0C600D4BCA3009F968D00F3F3F300948C
      8500F6DCC400EFEFEF0000000000000000000000000000000000C1AD98009486
      7800A29F9C0080716100CAB29B00F9DFC400F8DDC300BCA6910097928D009189
      82000000000000000000000000000000000000000000FAFAFA00E1E1E100484E
      ED004148EC003C43EC00373FEC00353CEC00343CEC00373EEC003A41EC003F46
      ED0069696900E1E1E100FAFAFA00000000000000000000000000000000000000
      00000000000000000000E4C5BB00E3C4BA00DEB8AC00D5A39300C8877200C177
      5F00BD705700E0E0E000FEFEFE00000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00000000000000000000000000FEFE
      FE008C878200FEFEFE0000000000000000000000000000000000ACAAA800F3F3
      F300000000000000000000000000FDFDFD00FEFEFE0000000000000000000000
      000000000000000000000000000000000000FCFCFC00E3E3E3005D63EF00575E
      EE005359EE004E54ED00464DED00DEDEDE004148ED00464DED004B51ED004F55
      EE00555BEE0069696900E3E3E300FBFBFB000000000000000000000000000000
      0000000000000000000000000000E4C5BB00E3C4BA00DEB8AC00D5A39300C887
      7200C1775F0076767600F0F0F000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9006D72F000696FF000666C
      EF006268EF005C62EE00E1E1E100FAFAFA00FAFAFA00545BEE005B61EF006065
      EF006469F000686DF0007B7B7B00F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000E4C5BB00E3C4BA00DEB8AC00D5A3
      9300C8877200C1775F0079797900F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC007479F000757AF0007378
      F0006F74F000E1E1E100FAFAFA000000000000000000FAFAFA006A6FF0006F74
      F0007176F1007176F100E3E3E300FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FAFAFA00F6F6F600DEB8
      AC00D5A39300C8877200C1775F00DFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA007C81F1007C80
      F100E3E3E300FAFAFA0000000000000000000000000000000000FAFAFA007A7F
      F1007A7FF100E3E3E300FAFAFA00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00DEB8AC00D5A39300C6816B00E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F9F9
      F900FCFCFC00000000000000000000000000000000000000000000000000FCFC
      FC00F9F9F900FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F9F9F900F7F7F700FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900E4E4E400C3C3C300B3B3B300B8B8B800D3D3D300F0F0F000FDFD
      FD00000000000000000000000000000000000000000000000000D7D7D7008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C8EA000B2DB3001333B4001938
      B8001B3AB8001939B8001839B9001537B8001237BD000D34C0000A31BE00062E
      BF00022BC0000026B600001D9400FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00E7E7
      E700AAAAAA0092755800B0783E00BB7C3B009C6D3C005F5B560088888800CCCC
      CC00F7F7F70000000000000000000000000000000000C1CBDD00526CA100526C
      A1008D8D8D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000072FCF00183ED7002449D9002C4F
      DB002F52DC002C51DC002B52DD002750DD00224FDF001B4BE1001447E1000C42
      E200053AE0000032D8000026B700FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB005C5C5C00000000000000
      00000000000000000000000000000000000000000000FCFCFC00D5D5D500B87F
      4600DE8C3900DF903E00E0924200E0924200DF914000DF8E3C00DA8834005B53
      4A00A7A7A700F1F1F100000000000000000000000000526CA1006A71C600526C
      A100526CA1008D8D8D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B35DC002349E0003154E1003A5C
      E3003D5EE4004667E600C1CCF700FFFFFF00E5EAFC007595F1001B51E900124A
      E9000A43E8000339E100012BC000FFFFFF00FEFEFE0000000000000000000000
      000000000000000000000000000000000000FCFCFC0065656500FDFDFD000000
      000000000000000000000000000000000000FEFEFE00DCDCDC00D7822C00DD8A
      3400DF8E3C00DF914000E1994F00E7AD7200E0944700DF903F00DE8C3900DD89
      320076573700A7A7A700F6F6F600000000000000000000000000596DAD006A71
      C600526CA100526CA1008D8D8D00000000000000000000000000000000000000
      0000000000000000000000000000000000001039DD002E52E1003D5EE4004665
      E500BAC6F600FFFFFF0093A8F1003A63E700597EEC00E4EBFC00FFFFFF001750
      EA000E48EA00073DE200042EC200FFFFFF0091919100F5F5F500000000000000
      000000000000000000000000000000000000FEFEFE0065656500A7A7A700FDFD
      FD00FEFEFE00F7F7F700FEFEFE0000000000F2F2F200D3812F00DD862E00DE8B
      3600DF8E3C00E0914100E7AD7200FFFFFF00E39D5600DF903F00DE8D3A00DD89
      3300DC852D005B534900CCCCCC00FDFDFD00000000000000000000000000596D
      AD006A71C600526CA100526CA1008D8D8D000000000000000000000000000000
      000000000000000000000000000000000000153EDE00385AE3004665E50090A2
      EF00FFFFFF00496AE6004468E7003D66E7003562E8002B5CE9007496F100FFFF
      FF00134BE9000E42E1000A32C200FFFFFF009A9A9A006E6E6E00FDFDFD000000
      000000000000000000000000000000000000000000005F5F5F00707070007B7B
      7B007F7F7F006F6F6F00AFAFAF00FEFEFE00CEBBA900DB832800DD862E00DD8A
      3400DE8D3A00DF8F3D00E29D5600EEC79F00E0954800DF8E3C00DE8C3800DD89
      3200DC852C00D87F250089898900F1F1F1000000000000000000000000000000
      0000596DAD006A71C600526CA100526CA1008D8D8D009C9C9C008D8D8D009C9C
      9C00FCFCFC000000000000000000000000001C42DF004261E4004E6BE600FFFF
      FF00516EE6004C6CE6004669E700FFFFFF003661E7002C5CE8002457E900E3E9
      FC006E8FF0001647E1001037C300FFFFFF00FDFDFD005858580090909000FEFE
      FE000000000000000000000000000000000000000000FCFCFC00FEFEFE00E2E2
      E20062626200F1F1F10065656500BFBFBF00D77E2300DB812600DC842B00DD87
      2F00DD893300DE8B3700E6AA6D00FFFFFF00E29A5000DE8A3500DD893200DC86
      2D00DC832900DB802400615B5500D4D4D4000000000000000000000000000000
      000000000000596DAD006A71C600526CA100C7542E00C7542E00C7542E00C754
      2E00A3756600C2C2C200FEFEFE00000000002248DF004B69E5005470E700FFFF
      FF00536FE7004D6BE6004668E600FFFFFF00355EE6002B59E7002353E600476F
      EB00F1F4FD001D4BE000163BC100FFFFFF0000000000F6F6F60065656500D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD0073737300D0D0D000DA7D1E00DA7E2000DB802400DB83
      2800DC842B00DC852D00DF8D3A00FFFFFF00F8E6D500DC852D00DC842A00DB82
      2700DB802300DA7E1F0095622D00BBBBBB000000000000000000000000000000
      000000000000000000005F77A700C9603E00DED7B600DFD7B600DFD7B600DED7
      B500C6553100A3756600FCFCFC0000000000284DE000526EE7005973E800FFFF
      FF00546FE7004D6AE6004565E500FFFFFF00345BE4002B55E5002450E5001E4D
      E500FFFFFF00244EDF001B3DC000FFFFFF000000000000000000C1C1C1006D6D
      6D00F9F9F9000000000000000000000000000000000000000000000000000000
      0000FCFCFC008C8C8C0078787800FEFEFE00DA7D1F00DB842C00DC862E00DD88
      3100DD883200DD893300DD893300F8E7D600FFFFFF00FBF1E800DD883200DD87
      3000DC862D00DB842B00B3692000B5B5B5000000000000000000000000000000
      00000000000000000000CF6E4E00E2DCBE00E2DCBE00E2DCBE00E2DCBE00E2DC
      BE00E2DBBE00CC634000C4C4C400000000002F52E1005D77E800607AE800FFFF
      FF00556FE7004D69E5004564E400FFFFFF003458E3002B53E300264FE300748F
      ED00C8D2F8002950DD001F40BF00FFFFFF000000000000000000FEFEFE006666
      660069696900FDFDFD0000000000000000000000000000000000FEFEFE00D1D1
      D100727272009F9F9F00FDFDFD0000000000DC852C00DE8C3900DE8D3A00DE8D
      3B00DE8E3C00DE8E3C00DE8E3C00DE8E3C00F1CFAC00FFFFFF00F9EBDD00DE8D
      3A00DE8D3900DE8C3900A7682600C6C6C6000000000000000000000000000000
      00000000000000000000D57F6300E5DFC500E5DFC500E5DFC500E5DFC500E5DF
      C500E5DFC500D57E62008D8D8D00000000003255E2006780E9006881E900F5F7
      FE00A1AEF200506BE6004764E400FFFFFF003658E2002E53E2002A50E200FFFF
      FF003659E4002D52DD002242BF00FFFFFF00000000000000000000000000FCFC
      FC004F4F4F009C9C9C00FEFEFE000000000000000000FCFCFC006C6C6C006F6F
      6F00E9E9E900FEFEFE000000000000000000DA7E1F00E0944700E0954800E195
      4800F1D1B000F6E2CD00E0964900E0964900E0964900FFFFFF00FFFFFF00E195
      4800E0954800E09446008E6F5000E4E4E4000000000000000000000000000000
      00000000000000000000D98D7400E8E3CC00E8E3CC00E8E3CC00E8E3CC00E8E3
      CC00E7E2CA00D8896F009C9C9C00000000003759E3007089EB00718AEB006780
      EA00FFFFFF009EADF1004B67E5004361E4003B5CE3003456E200FFFFFF00B0BD
      F4002D51E2002E51DE002443BF00FFFFFF000000000000000000000000000000
      0000E2E2E2006E6E6E00C2C2C200FDFDFD00F1F1F100F8F8F80079797900FBFB
      FB0000000000000000000000000000000000DA985400E39D5600E39E5800E39E
      5800FCF5ED00FFFFFF00EAB98600E39E5800E5A76800FFFFFF00FEFEFD00E39E
      5800E39E5800DD883200ACACAC00F9F9F9000000000000000000000000000000
      00000000000000000000DB927A00EAE5D000EBE6D200EBE6D200EBE6D200EBE6
      D200EBE6D200CA5F3B00FCFCFC00000000003E5EE3007F96ED008398ED00718A
      EB00657EE900F5F6FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0091A4F000385A
      E3003457E2003053DD002140BD00FFFFFF000000000000000000000000000000
      0000FEFEFE0096969600575757005D5D5D005D5D5D00FDFDFD00A6A6A6009999
      990000000000000000000000000000000000FBFBFB00DC842A00E6A86900E6A8
      6900E6A86900FEFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6A96B00E6A8
      6900E5A66500B2743500E7E7E700000000000000000000000000000000000000
      00000000000000000000E8BAAB00E2AA9800EDE9D700EDE9D800EDE9D700EEEA
      D800D78A7100C295860000000000000000004867E50094A6F00096A8F0008095
      ED00728BEB006B84EA00657EE800617BE8005E78E8005A75E8005370E6004B6A
      E5004061E4003154DD001B3BBC00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00E0E0E00070707000E2E2E200F8F8F8007B7B
      7B000000000000000000000000000000000000000000ECD7C100E1974B00E9B2
      7A00E9B27A00E9B27A00E9B57F00EEC59A00EAB68100E9B27A00E9B27A00E9B1
      7800D4791C00D5D5D500FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000E8BAAB00D8886E00E7B8A800E6B3A300CE6A
      4900E5B8A9000000000000000000000000005D78E8008FA2EF0092A5F0007B92
      EC00718AEB006781E900647EE900607AE8005E78E8005874E7005370E6004A69
      E5003D5EE4002C50DB001636B900FFFFFF000000000000000000000000000000
      0000000000000000000000000000FEFEFE00ABABAB005454540076767600AEAE
      AE00000000000000000000000000000000000000000000000000EDD9C500DE8A
      3500ECBC8B00ECBC8C00ECBC8C00ECBC8C00ECBC8C00ECBC8C00E9B17800D077
      1E00DDDDDD00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00607BE8004261E4003859
      E3003557E2003053E2003254E2003154E2002B4EE100284DE1002349DF002449
      E0001B42DF00133AD500B2BCE600FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00DDDDDD00EFEFEF00FBFB
      FB0000000000000000000000000000000000000000000000000000000000FBFB
      FB00DA985400DD8A3400E7AB6D00E9B27A00E4A05B00D5771600CEBCA900F2F2
      F200FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F0F0F000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EAEAEA00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000B5B5B50064646400434343004545450078787800BFBFBF00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00F1F1F100EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB000000000000000000000000000000000000000000FAFA
      FA006E694C006E694C006E694C006E694C006E694C006E694C006E694C00EDED
      ED00000000000000000000000000000000000000000000000000FBFBFB00B6B5
      B5005F442900985C1E00A9662200AC6823001F9413000D820D00062F06004343
      4300C6C6C600FCFCFC000000000000000000ECECEC00E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E5E5E500F2F2F2000000000000000000FDFDFD00ECEC
      EC00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00A1A1A100EBEBEB0000000000000000000000000000000000F9F9
      F900F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F1006E694C00EBEB
      EB000000000000000000000000000000000000000000F9F9F9009E928400A161
      2100AE692400B26C2500B56D2500B46E2500209E130012A21200119D11000D86
      0D000D170D00ADADAD00FCFCFC0000000000EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500E0E0E00000000000FBFBFB00ECECEC00FFA6
      4D00FFA64D00FFA64D00C7542E007F7F7F00C0C0C000C0C0C000FFA64D00FFA6
      4D00FFA64D00C7542E00EBEBEB0000000000FBFBFB00F1F1F100EBEBEB00E7E7
      E700F9F8F600F9F8F600F9F8F600F9F8F600F9F8F600F9F8F6006E694C00DFDF
      DF00EBEBEB00EDEDED00F6F6F600FEFEFE00FEFEFE0092AF9100956C2000AF69
      2400B36C2500B66E2600B86F2600B870260021A2140013A5130011A21100119F
      11000F910F000D170D00C8C8C80000000000E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500B2B2B200E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500EC833500DCDCDC00FDFDFD00ECECEC00C2522C00FFA6
      4D00FFA64D00FFA64D00C7542E007F7F7F00C0C0C000C0C0C000FFA64D00FFA6
      4D00FFA64D00C7542E00EBEBEB0000000000EBEBEB005F4242005F4242005F42
      4200FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB006E694C005F42
      42005F4242005F424200A3A3A300F4F4F400DDE3DD001396110023981300B06C
      2400B66E2600B9702600BB702700BA71260022A4140013A8130012A6120012A2
      1100129E11000F850E0043434300F3F3F300ECECEC00ECECEC00ECECEC00ECEC
      EC00343434004040400082828200B8B8B800ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EC833500DCDCDC00FAFAFA00FFA64D00F9A24B00FFA6
      4D00FFA64D00FFA64D00C7542E00C7542E00C7542E00C7542E00FFA64D00FFA6
      4D00FFA64D00C7542E00EBEBEB0000000000B6969600B7989800B89A9A00B89B
      9B00A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000B89A
      9A00B7999900B69797005F424200E9E9E9004AA24A00119E110014A114006887
      1D00B8702600BB712700BD722800BD73280022A8140013AB130013A9130013A4
      13004A8E1700A26A210032200B00BEBEBE00F5F5F500F5F5F500F5F5F500F5F5
      F500313131003291F2003291F2004343430087878700F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500EC833500DCDCDC00F9F9F900FFA64D00F9A24B00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E00EBEBEB0000000000B3919100B3919100B3929200B392
      9200B4939300B4939300B5949400B5949400B5959500B5959500B6969600B696
      9600B6979700B69797005F424200E7E7E7001299100012A11200D3EDD30018A7
      1500AC762500BD722800C37D3700ECDAC60023AA160026B22500D2E2C300AC75
      2600B36E2500AF6A24008B541C0078787800FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00B0B0B0002F90F1002F90F1003291F2003090F1008B8B8B00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00EC833500DCDCDC00F9F9F900FFA64D00F9A24B00FFA6
      4D00FFA64D00ED8F4A00ED8C4500ED8B4300ED8B4300ED8B4300ED8E4800ED90
      4D00FFA64D00C7542E00EBEBEB0000000000B18F8F00B18F8F00B2909000B290
      9000B2909000B2909000B3929200B3929200B4939300B4939300B5949400B594
      9400B5959500B59595005F424200E7E7E700129E120013A21300D5EED50017AA
      160057971E00BE752A00C5803900EDDBC8004C9D1C00B1863700EEDECE00CC98
      6400BC7D3C00B26B2500A563210045454500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E6E6E6002F90F1002F90F1002F90F1002E8FF1002ACBF0008D8D8D00FFFF
      FF00FFFFFF00FFFFFF00EC833500DCDCDC00F9F9F900FFA64D00F9A24B00FFA9
      5300FFA95300ED945400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ED94
      5400FFA95300C7542E00EBEBEB0000000000B99A9A00B99A9A00B99B9B00B99B
      9B00BA9B9B00BA9B9B00BA9C9C00BA9C9C00BB9D9D00BB9D9D00BB9E9E00BB9E
      9E00BC9E9E00BC9E9E005F424200E7E7E70017A1170025A92500D8EFD800C8E8
      C700E9DDCA00D29F6B00C9894800EFDECC00C4803900C8884700EEDECE00C589
      4E00EBD8C600C08A5100A56A250043434300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B3B3B3002A8DF0002B8DF00028B2F00026CAF00022C9EF008D8D
      8D00FFFFFF00FFFFFF00EC833500DCDCDC00F9F9F900FFA64D00F9A24B00FFB3
      6700FFB36700ED995D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ED99
      5D00FFB36700C7542E00EBEBEB0000000000CCB6B600CCB6B600CCB6B600CCB6
      B600CDB7B700CDB7B700CDB7B700CDB7B700CDB8B800CDB8B800CEB8B800CEB8
      B800CEB8B800CEB8B8005F424200E7E7E7001DA31D0037B03700DAEFD9009198
      4300C6884900C8884900CD925600EFE0CF00C9894A00CB915600EEDFCF00C388
      4B00DFD4BA0075BD67001A99170064646400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002A8DF00028CBF00028CBF00025CAF00023CAF0002DCC
      F0008D8D8D00FFFFFF00EC833500DCDCDC00F9F9F900FFA95300F9A55100FFC4
      8800FFC48800EDA06B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDA0
      6B00FFC48800C7542E00EBEBEB0000000000E5D9D900E5D9D900E5D9D900E5D9
      D900E5D9D900E5D9D900E5D9D900E5D9D900E5DADA00E5DADA00E5DADA00E5DA
      DA00E5DADA00E5DADA005F424200EEEEEE00159E150048B64800B9D9AD00E3CB
      B100E5CBB100E6CCB200E6CCB200E7CDB300E6CCB100BB9F5E00B4DDAC00ADDE
      AA0088CF860046B446000E880E00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF002DCCF0002FCDF00035CEF0003BCFF1004DD3
      F2006DDBF4008D8D8D00EC833500DCDCDC00F9F9F900FFB36700F9AE6400FFD4
      AA00FFD4AA00EDAB8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDAB
      8200FFD4AA00C7542E00EBEBEB00000000009C717100F2ECEC00F2ECEC00F2EC
      EC00F2ECEC00F2ECEC00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2ED
      ED00F2EDED00F2EDED00ECECEC00FBFBFB002AA12A004DB44B00BB9D6500CB9A
      6800CE9B6900CF9D6900D19D6A00D19D6900D09E69007AB85E005CC25B005BC0
      5B0059BE590040AF400022582100F0F0F000FAA98600FAA98600FAA98600FAA9
      8600FAA98600FAA98600FAA98600FAA986003FD0F10051D4F20060D7F3006FDB
      F40088E1F500A1E7F70082481D00DCDCDC00F9F9F900FFC48800FEC38700C754
      2E00FFE9D300EDB99E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDB9
      9E00FFE9D300ECECEC00FBFBFB0000000000FEFEFE00FBFBFB00F9F9F900F4F4
      F400E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000A7A18000E7E7
      E700F9F9F900FAFAFA00FDFDFD0000000000EBF3EB005D8C2800C9A07400CFA3
      7700D1A47800D3A57800D4A57800D4A57900D2A57700D0A677008DBB6F006CC4
      6B0065C0650019951900B9BAB90000000000FAAD8D00FAAD8D00FAAD8D00FAAD
      8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D0073DCF40085E0F50091E3
      F600A4E8F800B8EDF900C2F0FA00B8B8B800F9F9F900FFD4AA00FFD4AA00ECAA
      8100FBFBFB00F9F9F900F9F9F900F9F9F900F9F9F900E7A67E00F9CFA600C252
      2C00E6E6E600FDFDFD000000000000000000000000000000000000000000F9F9
      F900E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00A7A18000EBEB
      EB000000000000000000000000000000000000000000B5B88F00B7824900D0AA
      8300D4AD8600D6AF8800D7AF8800D7AF8800D6AF8800D4AE8800D2AD85009DBA
      7C0030A52F00819B8100FBFBFB0000000000FBB89C00FBB89C00FBB89C00FBB8
      9C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00AEEAF800BCEE
      F900C8F1FA00D2F4FB00D3F4FB00C2C2C200FEFEFE00C7542E00FFE9D300EDB9
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDB99E00FFE9D300ECEC
      EC00FBFBFB00000000000000000000000000000000000000000000000000F9F9
      F900F0EEE900EFEEE800EFEEE800EFEEE800EFEEE800F0EEE900A7A18000EBEB
      EB000000000000000000000000000000000000000000FEFEFE00C6B49300B176
      3900CFA78100D8B79500D9B89600D9B89700D9B89600D7B69400CBA27900A970
      3100A2A89200F9F9F9000000000000000000FCC0A600FCC0A600FCC0A600FCC0
      A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600D8F5
      FC00DDF7FC00DFF7FC009B562200E9E9E90000000000FEFEFE00FBFBFB00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900FAFAFA00FDFD
      FD0000000000000000000000000000000000000000000000000000000000FBFB
      FB00FAF9F700FAF9F800FAF9F800FAF9F800FAF9F800FAF9F700A7A18000F2F2
      F20000000000000000000000000000000000000000000000000000000000F4F0
      ED00AE753B00AF6F2F00BF895300C4946300BC864F00AB6C2C00AB805600E3E1
      DD00FEFEFE00000000000000000000000000F9F9F900F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600B7B7B700B7B7B700F7F7F700FBFBFB0000000000FCFCFC00E0DFE000D2D1
      D200CBCACB00AFAEAF0096959600908F9000919091008D8B8D009F9D9F00C2C1
      C200D0CFD000D5D4D500F1F1F10000000000FEFEFE00FAFAFA00DDDCDD00D0CF
      D000C9C8C900ADACAD00949394008E8D8E008F8E8F008B898B009D9B9D00C0BF
      C000000000000000000000000000000000000000000000000000000000000000
      0000C8C7C800A7A6A7008C8C8C0087868700888788008482840095939500B6B5
      B600C5C4C500CBCACB00EDEDED000000000000000000F4F4F400BDBABD00A8A4
      A800A19EA10087838700726F72006E6A6E006F6B6F006C676C0079747900938F
      93009F9B9F00A6A2A600DBDADB00FEFEFE000000000084808400DE976000DE98
      6200DE996400DF9B6700DF9B6700DF9B6800DF9B6800DF9B6800DF9B6700DE99
      6400DC976200DA935F00CBC9C90000000000D3D2D3005A575A00966641009667
      4200966743009669450096694500966946009669460096694600966945009869
      4500D99561000000000000000000000000000000000058555800835939007C55
      36007A54360065472F005B402A005B402B005B402B005B402B005B402A005C40
      2A00845B3B008A5D3C00B2B1B10000000000D1D0D1004C474C00A9491B00AB4A
      1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AB4A
      1A00A9491B00A2441E00837D8200EBEAEB0000000000D7D2D700E8E7E800E8E7
      E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800EAE9EA00E9E8
      E900E5E3E500DC945D00C2BFC00000000000229BC70051CEE90056CEE90069D1
      E90079D3E9007BD3E9007CD3E9007CD3E90079D3E90076D2E8006FCFE6006696
      AA00D3D1D300DB935D0000000000000000002299C50041A6BB002B99B900339D
      BC003BA1BF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00F1A96400A09D9E00000000002195C000D7803D00DE883E00E18A
      4000B95416004F4B4F004F4B4F00D5D1D500EBE6EB00F1EDF100F1EDF100E18A
      4000DD863F00D27C3E00A2441E00D0CDD00000000000E1DFE100ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00E9E8E900DC935A00B9B5B60000000000239FCB00239FCB005AD5EE006DD8
      EE007DD9EE0081DAEE0083DAEE0083DAEE007FD9ED0079D8ED0070D4EB002199
      C6009D9C9D00D991590000000000000000002299C40025CEFF002ED0FF0037D2
      FF003ED3FF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00F0A65E0098959600000000002194BE00E48A3B00E9903D00EB92
      3F00C05913004241420042414200DEDDDE00F5F4F500FCFBFC00FCFBFC00EB92
      3F00E78E3D00DC843C00A9491B00CDCACD0000000000DFDFDF00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00E8E7E800DC915600938F90000000000025A4CF005EDDF4005EDDF4006BE0
      F4007BE1F40083E2F40085E2F40083E2F4007FE0F30078DFF2006EDAF0005ED0
      E8006E97A700CF885100928E8F0000000000249EC70026CEFF002FD0FF0038D2
      FF003FD4FF00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00F0A3590078757600000000002399C100E78D3900EB913B00EE94
      3C00C35B13005151510051515100E1E1E100F8F8F800FFFFFF00FFFFFF00EE94
      3D00EA903B00E0873A00AB4A1A00CBC8CB0000000000DFDFDF00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00E7E6E700DC8F5100615E5F000000000027A9D2005FE4F90027A9D20064E4
      F90070E6F9007BE7F9007DE8F9007CE7F90079E7F90071E4F70067DFF4005CD8
      F000219AC60094603700605D5E000000000025A2CA0025CEFF002DD0FF0035D1
      FF003CD3FF00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00F0A154004F4D4D0000000000249DC400E88C3700EC903800ED92
      3900C35B1300C35B1300C35B1300C35B1300C35B1300C35B1300C35B1300ED92
      3900EA8E3800E0863700AC4B1A00BDBABD0000000000DFDFDF00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00E6E5E600DC8F5100504239000000000028ABD40055E7FC0056E7FC005EE8
      FC0067E8FC006DE9FC006EE9FC006EE9FC006BE9FC0065E6FA005CE2F80052DB
      F30044CAE800706D5B004D3F3700CBCBCB0026A4CC0020CDFF0027CEFF002ED0
      FF0034D1FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F0A359003F342D0000000000259FC600E88A3300EC8E3400ED90
      3500ED8E3200ED8F3400ED903500ED903600ED913700ED913700ED8F3400ED8F
      3500EA8C3400E0833300AC4B1A00A4A1A40000000000E0E0E000EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E7E6E700DC915600684326000000000028ACD50055E7FD0058E8FD0028AC
      D50061E9FD0062E9FD0063E9FD0062E9FD0060E9FD005CE8FC0056E3FA004FDD
      F6004AD6F100219AC600472E1A00B4B4B40026A5CD0019CBFF001ECCFF0023CD
      FF0028CEFF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F0A760003A2615000000000025A0C700E8893000EC8D3200ED8E
      3200ED8E3200ED8F3400ED903500ED903600ED913700ED913700ED8F3400ED8E
      3200EA8A3100E0833200AC4B1A00928F920000000000E1E1E100EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E8E7E800DC945C00744621000000000029ADD60069EAFD006BEBFD0071EC
      FD0029ADD60029ADD60029ADD60029ADD60028ACD50028ACD50028AAD40027A7
      D10025A4CE00229DC90060564200B5B5B50027A6CE0028CEFE002BCFFE002FD0
      FE0031D0FE00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F1B17200544B39000000000026A1C800E88C3600EC8F3600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFBFC00E0833300AC4B1A00928F920000000000E3E3E300F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000E9E8E900DC945C0084572E000000000029ADD60088EEFD0089EFFD008DEF
      FD0092F0FD0093F0FE0091F0FD008EEEFC008DEEFC008BEDFC0088EAFA00A3A3
      A300E7E6E70000000000000000000000000027A6CE003BD2FE003CD3FE003ED3
      FE003FD4FE00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F3B77E00F7E0
      CE00F7E0CE00A56F450081552D000000000026A1C800E9914100ED954100FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FBFAFB00E0873B00AC4B1A00A6A3A60000000000E3E3E300F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EAE9EA00DC986300786C61000000000028ACD500A9F3FD00AFF3FE00B0F4
      FE00B1F4FE00ADF3FD00A4F1FD0028ACD50028ABD40028AAD40027A9D200ECEC
      EC00E8E7E800DA976200776B6000EAEAEA0026A5CD0050D7FE0051D7FE0052D7
      FE0052D8FE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F4BE8900F7E0
      CE000486AD00B47C5100000000000000000025A0C700EA974B00EE9B4B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFBFC00E18E4600AC4B1A00BCB9BC0000000000E4E4E400F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200EBEAEB00DD9D6C00B0B0B000000000000000000028ACD500C7F6FD00C8F6
      FD00C7F5FD00C3F4FC00EAEAEA00F1F1F100F1F1F100F1F1F100000000000000
      0000E7E6E700986C4A0077777700A7A7A700E7A6660068DDFE0069DCFE0069DC
      FE0069DCFE00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F5C5960068DD
      FE000185AC007D593D000000000000000000E0A16300EA9D5500EEA15500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFBFC00E2945200AC4B1A008784870000000000E6E6E600F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F3B77D00F7E0
      CE00F2DACA0088756400EFEFEF0000000000000000000000000028ABD40028AB
      D40028AAD400EEEEEE00F3F3F30000000000F0F0F000A8A8A800EEB37B00F5DE
      CC00009610000094120000921400A4A4A400E8AB6F0083E3FF0083E3FF0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3
      FF000085AC00007A0F000000000000000000E1A66C00ECA96B00F0AD6C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFBFC00E3A16900AB4A1A008582850000000000E7E7E700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F4BD8700F4DD
      CC0065482E00E5E5E50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000790C00007D0E00AE876000B8A6
      9A0032251C000096110000951200A7A7A700ECB37C009DE9FF009DE9FF009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9
      FF000085AC0000830F000000000000000000E6AF7900ECB88900F1BD8B00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFC
      FC00F9F8F900E4AE8500A9491B008F8D8F0000000000EEEEEE00F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F2BF8F009696
      9600D8D8D8000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F1100008711000090
      110000961000E5E5E50000960F00FBFBFB00F3BE8B000085AC00B7EEFF00B7EE
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000DD761400B7EEFF00AAEC
      FF0000790D00E1E1E1000000000000000000F2BD8A00B8531600EEBF9600F9F7
      F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F7
      F900F3F0F300DEAD8E00027E0F00F5F5F5000000000000000000EBBD9000E6B9
      8C00E3B78B00E4B88B00E6B98C00E5B78C00E4B58C00B0A49B00E4E4E400F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E300F5F5
      F500FBFBFB00FEFEFE00000000000000000000000000F4C49500E5B88C00DDB2
      8700DD761400DD761400DD761400DD761400DD761400978D8500D8D8D800ECEC
      EC00F8F8F8000000000000000000000000000000000000000000E1B48900D6AC
      8300D6721300D6721300D6721300D6721300D672130092898100D1D1D100E5E5
      E500F0F0F000F7F7F700FDFDFD00000000000000000000000000000000000000
      0000FCFCFC00EBEBEB00CACACA00B3B3B300B3B3B300CACACA00EBEBEB00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B100B6B5B600DAD9DA00FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F600D4D4D400B6B6B600AFAFAF00B0B0B000ABAAAB00C1C0C100EBEB
      EB00FDFDFD00000000000000000000000000000000000000000000000000F2F2
      F200BFBFBF00897C6F00A87D5400B9855500A3774E00695C50007B7B7B00BFBF
      BF00F2F2F200000000000000000000000000D7D6D700888488007F7B7F007975
      7900605C6000463C3A00553C2D005D402D004A332600130BE5002F292F005E58
      5E00A09CA000F6F6F60000000000000000000000000000000000000000000000
      00005C585C00392E2C003D271D00422A1D003521190011079600241B1F00433A
      3E006E666900ACA6A600E6E4E400000000000000000000000000000000007874
      7800524E5200C77D36001E130E003A251900311E17006F45400071462000241F
      2100696164000000000000000000000000000000000000000000EAEAEA00A690
      7B00D4935400D79A5F00D99E6600DAA06900D99E6600D79A6000D59456006D57
      420096969600EAEAEA000000000000000000E19A5F00DDD8DD00DDD8DD00DDD8
      DD00DDD8DD00DED9DE00DED9DE00DBD6DB000F0BF200100CF100524CB300B0A7
      B000524C5200DFDFDF0000000000000000000000000000000000000000000000
      0000D1CCD100DCD5D500DED8D800DED8D800DED8D800DED8D800DED8D800DED8
      D800DAD2D200C8824C00DDDADA0000000000000000000000000000000000D6D1
      D600C67A3200A97E5700CD8540006C696900CE874300CC843F00C87E3900986E
      4700C2BBBB0000000000000000000000000000000000F2F2F200B78A5F00D38F
      4F00D6975B00D99E6500DAA26C00DBA36E00DBA26D00D99E6600D6985C00D491
      510094673D0096969600F2F2F20000000000EBA15E00E7E5E700E7E5E700E7E5
      E700E7E5E700E7E5E700E7E5E700D9D7D9000C0AFA008887BA000C09F500958F
      95004C3222008F8F8F0000000000000000000000000000000000E2E1E200E1DF
      E100D4D2D400EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E7E5E500CE864D00D2CFCF0000000000000000000000000000000000D9D7
      D900C77B34009A9A9A00DADADA00D08A4800D08A4800CCCCCC00CDA57E00C57A
      3300CAC8C800000000000000000000000000FDFDFD00C2AC9600D18B4800D492
      5300D79A5F00D99F6800DBA36E00F1DDC900E0B18500DAA06900D89B6100D593
      5500D28C49006C554000C0C0C000FCFCFC00EEA35C00EAEAEA00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA005D5DE3000807FE00CFCFCF000907F900403A
      C7005C3A230066503C00000000000000000000000000E5E5E500BAB6B600A39F
      9F009A989800EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00E7E5E500CE854B00A7A4A40000000000000000000000000000000000A09C
      9C00C77B33006F6F6F00CBCBCB00D28C4900D28C4900C2C2C200B38B6300C579
      3100D4D2D200000000000000000000000000F1F1F100CF853E00D28B4800D493
      5400D7995E00D99E6600DAA26C00FFFFFF00E3B89000D99F6700D79A5F00D593
      5500D28D4A00D08640007D7D7D00EBEBEB00F0A35800EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA001B1BFE008787E000E5E5E500DAD8E4001C18
      EF004D301E00B6753900000000000000000000000000E5E5E500DBD4D400DFDA
      DA00EFEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00E8E6E600CE8346006E6B6B0000000000000000000000000000000000DED9
      D900C5782E00CB8038006B6B6B00D28A4600D1894500AA825A00C97E3600CFCF
      CF00E3E1E100000000000000000000000000D6C9BC00CE833C00D18A4600D38F
      4F00D5955700D7995D00D89B6200FFFFFF00E1B38800D7995E00D5955800D390
      5000D18A4700CF853E00685B4D00CCCCCC00F0A15500EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E7E6E7005450
      E500332AE4009860300066594B000000000000000000E5E5E500EBEBEB00EDED
      ED00F5F5F500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E9E7E700CE8447005A4C4000000000000000000000000000000000000000
      0000F4F4F400C7792E00CC803700CF843B00CE833B00CB7D3400D4D4D400E9E9
      E90000000000000000000000000000000000C8976700CD803600CF853E00D189
      4500D28D4B00D3905000D4925200FFFFFF00DEAC7C00D3905000D28D4B00D18A
      4600CF853E00CD81370097653600B6B6B600F0A25600ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EBEBEB00E8E8E800DFDC
      DF004841E90073453B00875A3100B5B5B50000000000E6E6E600EBEBEB00EDED
      ED00F5F5F500F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100EBE9E900CE874D00764D2A00000000000000000000000000000000000000
      000000000000F0F0F000D7D7D70083838300838383009D9D9D00E8E8E8000000
      000000000000000000000000000000000000C8894D00CF864000D0894500D28C
      4900D28E4D00D3905000D4915100FFFFFF00DEAC7B00D3905000D28E4D00D28C
      4A00D0894600CF864000A96A2E00B7B7B700F0A45B00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EBEBEB00E9E9E900E3E0
      E300463292005C51DD0090592900B6B6B60000000000E7E7E700ECECEC00EEEE
      EE00F5F5F500F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300ECEAEA00CE8B550083502500000000000000000000000000000000000000
      000000000000EDEDED0082828200848484008484840070707000DDDDDD00F2F2
      F20000000000000000000000000000000000CE9A6900D28E4D00D3905000D491
      5200D4925400D4935500E9C8AA00FFFFFF00DEAD7F00D4935500D4935400D491
      5200D3905000D28E4E009A673500CECECE00F0A65F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECECEC00E9E8E900E3DF
      E3006F4A2C00C4854900986534000000000000000000E9E9E900EDEDED00EFEF
      EF00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F3B77D00F5DE
      CC00E9CFBE00A56F3D0096633300000000000000000000000000000000000000
      0000F4F4F400DFDFDF0085858500A4A4A4008686860084848400A37B5400EFD9
      C70000000000000000000000000000000000E9DCCF00D6975A00D6995E00D79A
      5F00D79A6000D79A6100F9F2EB00FAF2EB00DFAF8300D79A6100D79A6000D79A
      5F00D6995E00D6975A00887B6E00ECECEC00F0A86300F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EBEBEB00E8E6E800E0DB
      E000734F3500CC905600000000000000000000000000E9E9E900EFEFEF00F1F1
      F100F5F5F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F2BB8500EAD1
      C00062422C00C98E550000000000000000000000000000000000000000000000
      0000EFEFEF008A8A8A008B8B8B00E1E1E100F0F0F0008B8B8B0070573E00D5BE
      AF0062422C00000000000000000000000000FDFDFD00CA7A2D00DBA47000DAA4
      7000DBA57100DBA57100DBA57100F0D9C400DBA67200DBA57100DBA57100DAA4
      7000DAA47000CA7A2D00C2C2C200FCFCFC00F0AD6A00F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EDEDED00E8E6E800DED8
      DE0079574100C1752B00000000000000000000000000EAEAEA00F1F1F100F3F3
      F300F5F5F500F8F8F800F8F8F800F8F8F800F8F8F800F6F6F600E8B58600BBB4
      B90077564000000000000000000000000000000000000000000000000000F2F2
      F200DFDFDF0093939300A5A5A500F2F2F200F7F7F70093939300939393007D78
      7B0074543E0000000000000000000000000000000000E6CFB900D79A5F00E0B1
      8400E0B18400E0B18400E0B18400FFFFFF00EDD2B900E0B18400E0B18400E0B1
      8400D89D6400A38C7600F3F3F30000000000F1B27400F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F1F1F100EEAE7100E7A76F00DC9C
      6C00A5774E00A08A7400000000000000000000000000ECECEC00F3F3F300F5F5
      F500F5F5F500F0F0F000EDEDED00EBB17900EDD6C500E4CABA00BD875A00D798
      690000000000000000000000000000000000000000000000000000000000EFEF
      EF009C9C9C009C9C9C00D8D8D800EAB0790000000000DFC5B6009C9C9C006346
      3100966C47009F89740000000000000000000000000000000000D5A37400DAA3
      6D00E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800DCA7
      7400B17F5000ECECEC000000000000000000F3B88000F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F3F3F300EFD7C800E6CBC100A77D
      5900AD7C4E0000000000000000000000000000000000EEEEEE00F5F5F500F7F7
      F700F7F7F700F7F7F700F7F7F700F2BB8500EAD1C000C9B3A600E2C8BE000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E800A5A5A500A4A4A400F1F1F1000000000000000000C8B2A500A5A5A500A5A5
      A50077553600E9E9E9000000000000000000000000000000000000000000E6CF
      B900CD7F3500E9C7A700EBCCAE00EBCCAE00EBCCAE00EAC9AA00CE833B00C2AB
      9500F3F3F300000000000000000000000000F4BF8C00F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F6F6F600F2F1F200E9CFC3009C622E00BDA7
      91000000000000000000000000000000000000000000F3F3F300F5F4F400F6F6
      F600F6F6F600F6F6F600F5F5F500E8B58600CDCACB00E5CCC000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200AFAFAF00E3E3E300F4F4F40000000000000000000000000098602D00AFAF
      AF00DBDBDB00FDFDFD0000000000000000000000000000000000000000000000
      0000FDFDFD00EADCCF00CE996600C5834300C6925F00D7C9BC00F1F1F100FDFD
      FD0000000000000000000000000000000000F5C39300F5C59600F5C59600F5C5
      9600F5C59600F5C59600F4C49500F2C19400ECBB9100B5A99F00EBEBEB000000
      0000000000000000000000000000000000000000000000000000F0C19300EDBF
      9100EDBF9100EDBF9100ECBE9000EBBC9000EABA900000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECBE
      9000E9BC8F00EABD8F0000000000000000000000000000000000EAEAEA00F9F9
      F900FCFCFC00000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F001000000000000
      F001000000000000C00100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80030000000000008007000000000000800F000000000000801F000000000000
      803F000000000000C07F000000000000FFFFFFFFC7E307FFFFFFFFFF83C103FF
      8FFFFFF0018000FF07F107E00000007F070100E00000803F020100C08001C01F
      00010001C003C00F80018001E007E00780038003E007F003C0038007C003F803
      F003C00F8001FC01FCE3CE7F0000FE00FFFFFFFF0000FF00FFFFFFFF0180FF00
      FFFFFFFF83C1FFE0FFFFFFFFC7E3FFF0FFFF0001FFFFF00FCFFF0000FFBFC007
      87FF0000FF3F800383FF00007F1F0001C1FF00003F010000E0FF00001F800000
      F00700000F800000F80100008FF00000FC010000C7F00000FC010000C3C10000
      FC010000E1830000FC010000F00F0000FC010000F00F0001FC030000F80F8001
      FE070000FE0FC003FFFF0000FF0FE007FFFFE00FF00FFFFFE003E00FC0030000
      C001E00F80010000800100000001000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010001000100000003E00F80010000
      0007E00F80030000800FE00FE00700008001000FF00180008001000780010000
      8001000300010000800100030001000080010001000100008001000100010000
      8001000000010000800100000001000080010000000100008001000700010000
      800100000003000080018030000300008001C100000300008003FF0000030000
      8007FF8000030000C00FFFC38007C001F00FFF0FFFFFF007E0070003F001E007
      C0030003F001E00780010003C001E007000000038001E007000000038001E007
      000000018001F00F000000008001F81F000000008001F80F000000018001F00F
      000000038003F007000000038007E00780010003800FE083C0030007801FE183
      E007000F803FE1C3F00F001FC07FE3C700000000000000000000000000000000
      000000000000}
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = 15660791
    BtnSelectedColor = clBtnFace
    UnusedColor = 15660791
    Left = 56
    Top = 512
  end
  object ilCommon32: TImageList
    Height = 32
    Width = 32
    Left = 88
    Top = 552
    Bitmap = {
      494C010115001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0EFEF00DDDB
      DB00D0CDCD00CECACA00CECACA00CECACA00CECACA00CECACA00CECACA00CECA
      CA00CECACA00CECACA00CECACA00CECACA00CECACA00CECACA00CECACA00D1CD
      CD00DEDBDB00F0EFEF00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500E5E4E400C6C2
      C200B1ACAC00ACA7A700ACA7A700ACA7A700ACA7A700ACA7A700ACA7A700ACA7
      A700ACA7A700ACA7A700ACA7A700ACA7A700ACA7A700ACA7A700ADA7A700B2AC
      AC00C7C2C200E6E4E400F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100CA855000CE89
      5200D08B5500D18D5700D18D5800D18D5800D18D5800D18D5800D18D5800D18D
      5800D18D5800D18D5700D08D5600D08C5500D08B5400CE885200C8834E00C17B
      4800B8B2B200DFDCDC00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100DA935600DCD5
      D500DDD7D700DED8D800DED8D800DED8D800DED8D800DED8D800DED8D800DED8
      D800DED8D800DED8D800DED8D800DED8D800DDD7D700DAD2D200D2C7C700C882
      4C00B3ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100E49C5B00E7E4
      E400EEB98700EFB98800EFB98800EFB98800EFB98800EFB98800EFB98800EFB9
      8800EFB98800EFB98800EFB98800EFB98800EEB98700E9B38300DAD2D200CD86
      4E00B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00F8F8F800F8F8F800F8F8F800EAEAEA00E99F5B00EBEB
      EB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00E7E5E500DCD6D600CE86
      4D00B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F4F4F400E8E6E600DFDDDD00DCDADA00DBDADA00D1D0D000E9A05A00ECEC
      EC00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00EEB98700DDD7D700CE86
      4C00B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00E6E5E500CAC6C600B6B1B100B1ADAD00B0ADAD00A7A5A500EA9F5A00EBEB
      EB00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00E7E5E500DCD6D600CE85
      4B00B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800C9844F00CD885200D08B5500D4905900DC985F00E09E6300ECA05800ECEC
      EC00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00EEB98700DCD6D600CE85
      4900B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800D9915400DBD4D400DDD7D700DFDADA00E3E0E000EFEDED00EDA05500EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00E8E6E600DDD7D700CE83
      4600B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E39A5800E7E4E400EEB98700EFB98800F0BB8900F1BC8A00EFA15600EFEF
      EF00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00EEB98700DED8D800CE83
      4600B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E79E5900EBEBEB00EDEDED00EDEDED00EDEDED00F5F5F500F0A35800EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00E9E7E700DED8D800CE84
      4700B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89D5800EBEBEB00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F0A45B00F0F0
      F000F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00EEB98700DFD9D900CE85
      4900B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89C5600EBEBEB00EDEDED00EDEDED00EDEDED00F5F5F500F0A76000F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EBE9E900E0DADA00CE87
      4D00B2ADAD00DDDADA00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89B5400EBEBEB00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F0AA6600F2F2
      F200F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00EEB98700E1DBDB00CE89
      5200B5B0B000DEDCDC00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89B5300ECECEC00EEEEEE00EEEEEE00EEEEEE00F5F5F500F1AE6D00F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F2F2F200ECEAEA00E0DADA00CE8B
      5500C1BDBD00E6E4E400F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89B5300EDEDED00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F1B27300F4F4
      F400F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4F4F400F3B57900F2B17300F2B17300EEAE7000E9A96D00DC9C6400CB89
      5600D8D6D600F2F1F100FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89B5400EDEDED00EFEFEF00EFEFEF00EFEFEF00F5F5F500F2B67B00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F3B77D00F7E0CE00F5DECC00F1D9C800E9CFBE00D8A07400D6D4
      D400EFEEEE00FBFBFB00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89C5700EEEEEE00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F3B88000F6F6
      F600F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F6F6F600F3B98000F5DECC00F1D9C800EAD1C000DA9F6C00D6D4D400EFEE
      EE00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E89F5B00EFEFEF00F1F1F100F1F1F100F1F1F100F5F5F500F3BC8700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F2BB8500F1D9C800EAD1C000DCA57700D6D4D400EFEEEE00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E8A26100F0F0F000F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F7F7
      F700F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F5F5F500EFB98800EAD1C000DCA57700D6D4D400EFEEEE00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E9A66800F1F1F100F3F3F300F3F3F300F3F3F300F5F5F500F5C29000F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F6F6
      F600F3F2F200E8B58600DCA57700D6D4D400EFEEEE00FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800E9AA6E00F2F2F200F4BF8C00F4BF8C00F4BF8C00F4BF8C00F5C39300F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F3C39400F0C0
      9200E9B88C00DDA97F00D6D4D400EFEEEE00FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800EAAE7500F3F3F300F5F5F500F5F5F500F5F5F500F5F5F500F3F3F300F0F0
      F000EEEEEE00EDEDED00EDEDED00EBB17900EFD8C700EDD6C500EAD2C100E4CA
      BA00D6A07300D0CECE00EAE9E900F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800EBB07A00F4F4F400F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F7F7F700F3B98000F5DECC00F1D9C800EAD1C000DBA0
      6D00D6D4D400EFEEEE00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800EBB38100F5F5F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F8F8F800F2BB8500F1D9C800EAD1C000DCA57700D6D4
      D400EFEEEE00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800ECB68500F5F5F500F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F7F7F700EFB98800EAD1C000DCA57700D6D4D400EFEE
      EE00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00EBB88800F5F4F400F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F5F5F500F3F1F100E8B58600DCA57700D8D6D600EFEEEE00FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E7B48800EDBC8F00EEBE9000EEBE9000EEBE9000EEBE9000EEBE9000EEBE
      9000EEBE9000ECBB8E00E7B68A00DDA97F00E5E4E400F1F1F100FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00F8F8F800F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F8F8F800FAFAFA00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F9F9F900F0F0F000E9E9E900E9E9E900F0F0F000F9F9F900FEFE
      FE0000000000000000000000000000000000FEFEFE00F9F9F900F0F0F000E9E9
      E900E9E9E900F0F0F000F8F8F800FEFEFE0000000000FBFBFB00F2F2F200E9E9
      E900E0E0E000DFDFDF00E7E7E700F0F0F000F9F9F900FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F9F900EFEFEF00E2E2E2007C7C7C007C7C7C00E2E2E200EFEFEF00F9F9
      F900FEFEFE000000000000000000FEFEFE00F9F9F900EFEFEF00E2E2E2007C7C
      7C007C7C7C00E2E2E200EFEFEF00F8F8F80000000000F9F9F900ECECEC008282
      8200757575007272720079797900E2E2E200EFEFEF00F9F9F900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F2F2F200E3E3E3001119E7001119E7006E6E6E0079797900E1E1E100F0F0
      F000FAFAFA00FEFEFE00FEFEFE00FAFAFA00F0F0F000E1E1E1001018E7001018
      E7006E6E6E007A7A7A00E2E2E200F0F0F00000000000F7F7F700C8867100C886
      7100C8867100C88570006C6C6C0079797900E1E1E100F0F0F000FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00EDEDED001018E7001018E7001119E7001119E7006969690078787800E1E1
      E100F0F0F000F9F9F900F9F9F900F0F0F000E1E1E1001018E7001018E7001018
      E7001018E7006E6E6E007C7C7C00E9E9E90000000000F7F7F700C8867100C886
      7100C7857000C7856F00C7846F006969690078787800E0E0E000EDEDED00F4F4
      F400F6F6F600F8F8F800FAFAFA00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB001018E7001018E7001018E7001119E7001119E8001119E800696969007878
      7800E0E0E000EBEBEB00EBEBEB00E0E0E0001119E8001018E7001018E7001018
      E7001018E7001018E7007C7C7C00E9E9E90000000000F9F9F900C7857000C785
      7000C7856F00C7846E00C7836E00C6836D006969690076767600D9D9D900E0E0
      E000E2E2E200E4E4E400EBEBEB00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F0F0F000EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F8F8F800EBEBEB00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EFEFEF00FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC001018E7001018E7001018E8001019E8001119E8001119E8001119E8006969
      690076767600D7D7D700D7D7D7001119E8001119E8001019E8001018E8001018
      E7001018E7001018E700E2E2E200F0F0F00000000000FCFCFC00C7856F00C785
      6F00C7846E00C7836D00C6836D00C6826C00C5806A00676767006E6E6E007575
      7500777777007979790080808000E3E3E300F0F0F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00A7A5A3006F6B67006A66
      62006A6662006A6662006A6662007B7B7A00D1D1D100FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FCFCFC00F9F9
      F900F3F3F300EAEAEA00EEEEEE000000000000000000A4A2A00067635F00625E
      5B0065625E0068646000696561007B7B7A00D0D0D000FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E100817E7B006B676300696561006864
      600065615D0065625F008F8F8F00EEEEEE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA001018E8001018E8001019E8001019E8001119E8001119E9001019
      E900676767006C6C6C001019E9001019E9001019E8001019E8001018E8001018
      E8001018E800E1E1E100EFEFEF00F9F9F90000000000FEFEFE00FAFAFA00C784
      6E00C6836D00C6826C00C6816B00C5816A00C57F6900C47E6700C37B6500C279
      6200C1786100C0775F006C6C6C0079797900E1E1E100EBEBEB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB00C57B3200F5933200F593
      3200F5933200F5933200F59332004D3C2C00B9B9B900FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00FCFCFC00F7F7F700EDEDED00E0E0E000C8C8C800A9A9
      A900888786006F6E6D00B5B5B50000000000000000009F632800704316007D4B
      1900985B1F00B56C2500CB7A290044352700ADADAD00F3F3F300FBFBFB00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0989000EE903300F5933200F5933200F492
      3100F4923100C577280054535100EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA001018E8001019E8001019E9001019E9001019E9001019
      E9001019E9001019E9001019E9001019E9001019E9001019E9001019E8001018
      E800E1E1E100F0F0F000F9F9F900FEFEFE000000000000000000FEFEFE00FAFA
      FA00C6826C00C6816B00C5806A00C57F6900C47E6700C47D6600C37B6400C279
      6200C1776000C0765F00BF755D006969690078787800DEDEDE00EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000BB742F00FF993300FF99
      3300FF993300FF993300FF99330060422400A7A7A700F8F8F800FEFEFE000000
      000000000000000000000000000000000000FEFEFE00F9F9F900F1F1F100E7E7
      E700D4D4D400BDBDBD00A1A1A1008281800070675F0079614A0089623C009965
      2E00BB722A00714C2500BCBCBC0000000000EEEEEE007F4E1E00C17427009F5E
      20008A531B0076471700623B13002B1C0F005555550099999900B2B2B200C9C9
      C900DDDDDD00EAEAEA00F3F3F300F8F8F800FDFDFD0000000000000000000000
      00000000000000000000A0A0A00063554600FA963200FF993300FF993300FF99
      3300FF993300BF7327005E5D5B00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA001019E9001019E9001019E9001019E9001019
      E9001019E9001019E9001019E9001019E9001019E9001019E9001019E900E0E0
      E000F0F0F000FAFAFA00FEFEFE0000000000000000000000000000000000FEFE
      FE00FAFAFA00C6816B00C5816A00C57F6900C47E6700C37C6500C37A6300C279
      6100C1775F00C0765E00BF745C00BF735B006969690078787800E0E0E000EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA0097663500FF993300FF99
      3300FF993300FF993300FF993300A969270086868600EBEBEB00FEFEFE000000
      000000000000000000000000000000000000E4E4E400A6A6A60082817F00615E
      5C0050453A00714A2600BA722A00E98D3100F7943100FB963200FE983300FF99
      3300FA97330052494000DEDEDE0000000000000000006D492500F5933100FF99
      3300FE993300FB973200F8943000ED8D2F00C47728007E5023004B3C2C00504C
      4800686664007E7E7D0098989800C6C6C600DDDDDD00A5A5A500000000000000
      00000000000000000000B77029009A5C1F00FD983300FF993300FF993300FF99
      3300FF993300A162220081808000F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F9F9F900111AE900121BE900121BE900121B
      E900121BE900121BE900121BE900121BE900121BE900111AE900D7D7D700EBEB
      EB00F9F9F900FEFEFE0000000000000000000000000000000000000000000000
      0000FEFEFE00F4F4F400C6826C00C5816A00C47E6800C37C6500C37A6200C278
      6000C1765F00C0755D00BF735B00BF725A00BE7158006E6E6E0082828200EDED
      ED00EEEEEE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD0081705F00FE993300FF99
      3300FF993300FF993300FF993300EE8F300060585100C5C5C500F6F6F600FEFE
      FE00000000000000000000000000F9F9F9008F7D6B009D652D00C3772A00EB8D
      2F00FD983300FF993300FF993300FF993300FF993300FF993300FF993300FF99
      3300D17E2C007C7B7A00F1F1F100000000000000000073645500CC792800FF99
      3300FF993300FF993300FF993300FF993300FF993300FF993300FE993300F090
      3000CD7C2A00A5662900835A3200959494008C7B690000000000000000000000
      000000000000FE983300E2882D00B56C2300FF993300FF993300FF993300FF99
      3300FF99330082542500B2B2B200FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F9F9F900EBEBEB001720EA001720EA00161F
      EA00161FEA00171FEA001720EA001720EA001820EA006C6C6C00D7D7D700EBEB
      EB00F9F9F900FEFEFE0000000000000000000000000000000000000000000000
      000000000000F6F6F600CA8A7500C9887300C7856F00C6826C00C57F6800C47D
      6600C37A6300C2776000C0745C00BF725A00BD705800BD7057006E6E6E008282
      8200EDEDED00EEEEEE00FCFCFC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1C0BE00ED8D2F00FF99
      3300FF993300FF993300FF993300FE983300855B31007E7E7E00D9D9D900FAFA
      FA00FEFEFE00000000000000000000000000A89E9300F5943300FF993300FF99
      3300FF993300FF993300FF993300FF993300FF993300FF993300FF993300FF99
      33009B652E00B0B0B000FAFAFA000000000000000000BFBEBD007E4C1800FF99
      3300FF993300FF993300FF993300FF993300FF993300FF993300FF993300FF99
      3300FF993300FA96320069523B00E1E1E1000000000000000000000000000000
      000000000000F492310079481800F9963300FF993300FF993300FF993300FF99
      3300FC9732006C523700DEDEDE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F0F0F000E0E0E000222BEB002029EA001F28
      EA001F27EA001E27EA001F27EA002028EA002129EB006767670076767600E0E0
      E000F0F0F000FAFAFA00FEFEFE00000000000000000000000000000000000000
      000000000000F8F8F800CE948100CD927E00CC8E7B00CA8B7700C9877200C885
      6F00C6806A00C37B6400C1765E00BF735A00BD705700BD705700BD7057006E6E
      6E0082828200EDEDED00EEEEEE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200B47A4000FF99
      3300FF993300FF993300FF993300FF993300E58A2E005F4C37008B8B8B00D4D4
      D400F3F3F300FDFDFD00FEFEFE00FEFEFE00F3F3F30099806800F6943100FF99
      3300FF993300FF993300FF993300FF993300FF993300FF993300FF993300FD98
      330082634300D8D8D800FDFDFD000000000000000000F1F1F1007D542B00F392
      3100FF993300FF993300FF993300FF993300FF993300FF993300FF993300FF99
      3300FE9833009D6C3C00C3C3C300F9F9F900F2F2F200987F6800F5933100FC97
      3200ED8E2F00995B1E00DC832C00FF993300FF993300FF993300FF993300FF99
      3300EB8D2F0074706C00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA00F0F0F000E1E1E100363DEC003138EB002E36EB002B33
      EB002A33EB002A32EB002931EB002A33EB002C34EB003038EC00696969007878
      7800E1E1E100F0F0F000F9F9F900FEFEFE000000000000000000000000000000
      000000000000FAFAFA00D3A08F00D39F8E00D29D8C00D19B8900D0978500CF95
      8200CC8E7A00C8867100C47D6600C1775F00BE715800BD705700BD705700BD70
      57006E6E6E0082828200EDEDED00EEEEEE000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00A5937F00FC97
      3300FF993400FF993400FF993400FF993300FF993300F2923100624A33007473
      7300B1B1B100DBDBDB00EAEAEA00F0F0F000ECECEC00D1D1D100A3703D00FF99
      3300FF993300FF993300FF993300FF993300FF993300FF993300FF993300F794
      3100736A6100F0F0F000FEFEFE000000000000000000000000009A897700C576
      2700FF993300FF993300FF993300FF993300FF993300FF993300FF993300FF99
      3300DD842C005C595600B4B4B400D5D5D500DCDCDC00C4C4C40094663700C677
      28006E421500D07D2900FF993300FF993300FF993400FF993400FF993400FF99
      3400784B1E00BDBDBD00FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA00F0F0F000E1E1E1004950ED00444BED003F47EC003C43EC003840
      EC00363DEC00343CEC00343CEC00353DEC00383FEC003B43EC004047ED006969
      690078787800E1E1E100EFEFEF00F9F9F9000000000000000000000000000000
      000000000000FCFCFC00D7A89900D7A99A00D7A99A00D8A99A00D7A79800D6A5
      9500D29D8C00CE938100C8877200C47D6600C1775F00BE715800BD705700BD70
      5700BD7057006E6E6E0082828200E0E0E000EEEEEE0000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D400C583
      3F00FFA24600FFA24600FFA24600FFA24600FFA14200FF9F4000F0953A009A66
      33006B574200605C5800706F6F00757473007068610084674A00C6803C00FFA1
      4500FFA24500FFA24600FFA24600FFA24600FFA24600FFA24600FFA24600D688
      3C0092929100FAFAFA0000000000000000000000000000000000D0D0CF009861
      2B00FFA24600FFA24600FFA24600FFA24600FFA24600FFA24600FFA24500FFA2
      4500DF8C3C00704A25003B30240032302C0035302C003F302100613F1C00935C
      2600EA913700FF9F4000FFA04100FFA24500FFA24600FFA24600FFA24600D084
      3700514E4B00EFEFEF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F2F2F200E3E3E300595FEE00555BEE005157EE004D54ED004A51ED00454C
      ED004047ED003E45ED003F46ED004148ED00444BED00474EED004B51EE005056
      EE006969690079797900E2E2E200F0F0F0000000000000000000000000000000
      00000000000000000000FAFAFA00DCB3A700DDB5A900DEB7AB00DEB7AA00DDB5
      A800DAAEA000D5A39300CF958300C8877200C47D6600C1775F00BE715800BD70
      5700BD705700BD7057006E6E6E0078787800DEDEDE00EBEBEB00000000000000
      000000000000000000000000000000000000000000000000000000000000ACA9
      A500EA9F5500FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE
      5C00FAAB5B00F4A75A00EAA15700ECA15700F7A95A00FCAC5C00FFAE5D00FFAE
      5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D007A57
      3500BEBEBE00FDFDFD0000000000000000000000000000000000FEFEFE007F6E
      5D00FBAB5C00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE
      5D00FFAE5D00FDAD5C00F7A95A00EFA25700E89F5500F1A45800F9AA5A00FEAD
      5C00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FBAB5B006344
      2500ADADAD00FCFCFC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00EDEDED00676CEF006469EF006066EF005E64EF005A60EE00575DEE005157
      EE00E0E0E000EBEBEB00484FEE004D53EE005057EE00545AEE00575DEF005C61
      EF006066EF006E6E6E007C7C7C00E9E9E900000000000000000000000000FEFE
      FE00FCFCFC000000000000000000F2F2F200DFBBB000E0BDB200E1BEB300E0BD
      B200DEB8AC00DBB0A300D5A39300CF958300C8877200C47D6600C1775F00BE71
      5800BD705700BD705700BD7057006969690078787800E1E1E100F0F0F0000000
      0000FEFEFE00000000000000000000000000000000000000000000000000FAFA
      FA009D8D7D00F9B47000FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400F7B36F00544E
      4800DEDEDE00000000000000000000000000000000000000000000000000B0AE
      AB00F1AF6D00FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FBB6710092683D00403C
      3700DCDCDC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB007075F0006F74F0006D73F0006B71F000696FEF00656BEF006167EF00E1E1
      E100F0F0F000F9F9F900F9F9F900595FEF005D63EF006267EF00656AF000686D
      F0006A6FF0006C71F0007C7C7C00E9E9E9000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB00E3C3B900E3C4BA00E3C4
      BA00E2C2B800DEB8AC00DBB0A300D5A39300CF958300C8877200C47D6600C177
      5F00BE715800BD705700BD705700BD7057006969690079797900E3E3E300F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000F2F2F20085746200F7BE8400FFC48A00FFC48A00FFC48A00FFC48A00FFC4
      8A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC4
      8A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00CD9C6D007E7D
      7C00F2F2F200000000000000000000000000000000000000000000000000E6E6
      E600C6986B00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC4
      8A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC48A00FFC4
      8A00FFC48A00FFC48A00FFC48A00FFC48A00FCC1880099744F00A47D57007C7B
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00757AF000767AF000767BF000757AF0007378F0006F74F000E1E1E100F0F0
      F000FAFAFA00FEFEFE00FEFEFE00FAFAFA006A6FF0006E73F0007176F1007277
      F1007277F1007277F000E2E2E200F0F0F0000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00E4C5BB00E4C5
      BB00E3C4BA00E2C2B800DEB8AC00DBB0A300D5A39300CF958300C8877200C47D
      6600C1775F00BE715800BD705700BD705700BD7057006C6C6C0080808000EBEB
      EB00FAFAFA000000000000000000000000000000000000000000000000000000
      000000000000F4F4F4009E948A00DCB18700FFD0A000FFD0A100FFD0A100FFD0
      A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0
      A100FFD0A100FDCE9E00EBBE9000FFD0A000FFD0A100FFD0A0009A7F6500AFAF
      AF00FAFAFA00000000000000000000000000000000000000000000000000FCFC
      FC0082736500FFD0A000FFD0A100FFD0A100F0C19300F4C59700FFD0A100FFD0
      A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0
      A100FFD0A100FFD0A100FFD0A100E6B98C0096775800C6A17C00987E64000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FAFAFA007C80F1007D81F1007C81F1007B7FF100E3E3E300F0F0F000FAFA
      FA00FEFEFE000000000000000000FEFEFE00FAFAFA00787DF1007A7FF1007B80
      F1007A7FF100E3E3E300EFEFEF00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBEBEB00E4C5
      BB00E4C5BB00E3C4BA00E2C2B800DEB8AC00DBB0A300D5A39300CF958300C887
      7200C47D6600C1775F00BE715800BD705700BD705700BD70570079797900E4E4
      E400F8F8F8000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB00C3C2C100A8907900F7D3AF00FEDAB600FFDB
      B700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FDD9
      B500E6C2A00076695D008C868100F2CEAB00FFDBB700FCD9B50081746700D9D9
      D900FEFEFE000000000000000000000000000000000000000000000000000000
      0000AEADAC00F3CFAB00FFDBB700F8D3B0004E413400826E5900DFBC9900FBD7
      B300FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB700FFDB
      B700FFDBB600F9D4B000C3A383008A745F00EECCAB00FBD8B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA008287F1008286F100EDEDED00F2F2F200FAFAFA00FEFE
      FE0000000000000000000000000000000000FEFEFE00FAFAFA008287F2008287
      F200EDEDED00F2F2F200F9F9F900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB00E4C5BB00E4C5BB00E3C4BA00E2C2B800DEB8AC00DBB0A300D5A39300CF95
      8300C8877200C47D6600C1775F00BE715800BD705700BD70570077777700E2E2
      E200F6F6F6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600A7A3A000A3978D00B8A4
      9000E2C8AE00F6DBC100FBE1C800FBE0C600F0D6BC00D4BCA300AB9A8A009F96
      8D00B3B2B100F3F3F300F4F4F400948C8500F2D9C000F6DCC40073706C00EFEF
      EF00FEFEFE000000000000000000000000000000000000000000000000000000
      0000E7E7E700C1AD9800FDE4CC0094867800B7B7B700A29F9C00847B72008071
      6100A18E7A00CAB29B00EED3B900F9DFC400FCE2C900F8DDC300E9CEB400BCA6
      91009283760097928D00C8C8C800918982000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FEFEFE000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00FBFB
      FB00FBFBFB00FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00E4C5BB00E4C5BB00E3C4BA00E2C2B800DEB8AC00DBB0A300D5A3
      9300CF958300C8877200C47D6600C1775F00BE715800BD70570075757500E0E0
      E000F4F4F400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA00EEEE
      EE00CECDCD00A5A4A30091908F0095949200AFAEAE00D8D8D700F0F0F000FBFB
      FB00000000000000000000000000F3F3F300A39B9200D4C5B50096959500FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900A49D9500CBBAAB00A1A0A000FBFBFB000000000000000000ECEC
      EC00C7C6C600929190006C6B6A005E5C5A006765640086858400B3B3B200E0E0
      E000F6F6F600FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB00E4C5BB00E4C5BB00E3C4BA00E2C2B800DEB8AC00DBB0
      A300D5A39300CF958300C8877200C47D6600C1775F00BE7158006E6E6E00D9D9
      D900EDEDED00FAFAFA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000000000000000
      0000000000000000000000000000FEFEFE00C8C7C7008C878200E1E1E100FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00ACAAA8009E9C9B00F3F3F3000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBEBEB00E4C5BB00E4C5BB00E3C4BA00E2C2B800DEB8
      AC00DBB0A300D5A39300CF958300C8877200C47D6600C1775F00676767007676
      7600E0E0E000F0F0F000F9F9F900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800E4C5BB00E4C5BB00E3C4BA00E2C2
      B800DEB8AC00DBB0A300D5A39300CF958300C8877200C47D6600C1775F006969
      690078787800E1E1E100EFEFEF00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200E4C5BB00E4C5BB00E3C4
      BA00E2C2B800DEB8AC00DBB0A300D5A39300CF958300C8877200C47D6600C177
      5F006969690079797900E2E2E200F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00E4C5BB00E4C5
      BB00E3C4BA00E2C2B800DEB8AC00DBB0A300D5A39300CF958300C8877200C47D
      6600C1775F006C6C6C0079797900E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00FAFA
      FA00F8F8F800F6F6F600F4F4F400DEB8AC00DBB0A300D5A39300CF958300C887
      7200C47D6600C1775F0072727200DFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FAFAFA00DEB8AC00DBB0A300D5A39300CF95
      8300C8877200C37C650075757500E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FAFAFA00DEB8AC00DBB0A300D5A3
      9300CF958300C6816B0082828200E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FAFAFA00DFBAAE00DBB0
      A300D5A39300CF958300ECECEC00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FCFCFC00F9F9
      F900F7F7F700F7F7F700F9F9F900FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F9F9F900F0F0F000E4E4
      E400D3D3D300C3C3C300B8B8B800B3B3B300B3B3B300B8B8B800C3C3C300D3D3
      D300E3E3E300F0F0F000F9F9F900FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C0C7E500334B
      A8000622950008249400092697000B2797000B2797000D2997000D2895000C28
      99000B2899000C289B000C299D000B299D0009269A0008269B0006259D000626
      A00005259F0004239B0003239F000223A1000222A0000021A00000209D00001E
      97002F47A400AFB7D900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FAFAFA00F1F1F100E1E1E100CBCBCB00B3B3
      B3009C9C9C00898989007D7D7D0076767600767676007D7D7D00898989009C9C
      9C00B3B3B300CBCBCB00E0E0E000F1F1F100FAFAFA00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7008D8D8D008D8D8D00D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C8EA000627AC000B2D
      B3000F30B5001333B4001637B8001938B8001A39B8001B3AB8001A3AB7001939
      B8001939B9001839B9001739B9001537B8001337BC001237BD000F35BE000D34
      C0000C34C1000A31BE00082FBD00062EBF00032CBF00022BC0000029BB000026
      B6000022A900001D9400AFB7D900FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F7F7F700E7E7E700CCCCCC00AAAAAA008A8682009275
      5800A5754500B0783E00BC7C3C00BB7C3B00AD753A009C6D3C007E6144005F5B
      56006D6D6D0088888800AAAAAA00CCCCCC00E6E6E600F7F7F700FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7B0C300526CA100526CA100778093008D8D8D00D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003352CC000B30C6001237
      CA00173ACA001B3ECB002043CE002345CE002546CE002547CE002446CD002346
      CF002246CE002246CF002045CF001E44CF001C45D2001A43D2001742D3001440
      D400123FD400103DD3000D3BD3000938D4000737D5000333D4000131D200002D
      CA000028BF000022A9002F47A400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00B7B7B700A4A4
      A400D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F3F3F300DCDCDC00B6B6B6009A887600B87D4000D9893700DF8E
      3C00DF903E00DF903F00DF914000DF914000DF914000DF903E00DF8E3C00D98A
      3800AC70340066544200656565008B8B8B00B6B6B600DCDCDC00F3F3F300FCFC
      FC0000000000000000000000000000000000000000000000000000000000C1CB
      DD00526CA100526CA100526CA100526CA100778093008D8D8D00D7D7D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00072FCF001037D400183E
      D7001F45D8002449D9002A4DDA002C4FDB002F52DB002F52DC002E51DB002C51
      DC002C50DB002B52DD002951DD002750DD002550DF00224FDF001F4DE0001B4B
      E100184AE1001447E1001044E2000C42E200093EE100053AE0000237DE000032
      D800002DCC000026B700001E9600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00828282005C5C
      5C00A6A6A6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F1F1F100D5D5D500ABA29900B87F4600DA883300DE8C3900DF8E3C00DF90
      3E00DF914000E0924200E0924200E0924200E0924200DF914000DF903E00DF8E
      3C00DE8C3900DA883400A36B32005B534A0076767600A7A7A700D5D5D500F1F1
      F100FCFCFC00000000000000000000000000000000000000000000000000526C
      A1006A71C600596DAD00526CA100526CA100526CA100778093008D8D8D00D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000933D800143CDB001D44
      DD00254ADF002B4FDF003053E0003356E0003658E1003658E1003558E1003457
      E1003358E1003258E2002F57E2002D56E3002A56E4002755E5002453E5002051
      E6001C4FE600184CE600144AE6000F46E7000B43E600073FE500043BE4000136
      DE000131D2000029BE0000209E00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC007E7E7E006464
      6400A8A8A8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F3F3
      F300D4D4D400AC998500D2833200DD893300DE8B3700DE8D3A00DF8E3C00DF90
      3F00E0924200E0924300E0934400E0934400E0924300E0924200DF914000DF8F
      3D00DF8D3B00DE8C3800DD8A3400CD7E2D0064513D006B6B6B00A1A1A100D4D4
      D400F3F3F300FDFDFD000000000000000000000000000000000000000000526C
      A1006A71C6006A71C600596DAD00526CA100526CA100526CA100778093008C8C
      8C00D3D3D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000B35DC001840DE002349
      E0002B50E1003154E1003659E2003A5CE3003D5EE4003D5EE4003B5EE4004667
      E600839AEE00C1CCF700E6EBFC00FFFFFF00FFFFFF00E5EAFC00BCCBF8007595
      F1002C5EEA001B51E900174EE900124AE9000E48E9000A43E800063FE6000339
      E1000233D400012BC00001219F00FFFFFF0000000000FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC007B7B7B006565
      6500A4A4A400FDFDFD00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F6F6F600DCDC
      DC00B8987900D7822C00DD883100DD8A3400DE8C3800DF8E3C00DF903E00DF91
      4000E0924200E1994F00E7AD7200E7AD7200E7AD7200E0944700E0914100DF90
      3F00DF8E3C00DE8C3900DE8A3500DD893200D7832D00765737006B6B6B00A7A7
      A700DCDCDC00F6F6F600FEFEFE0000000000000000000000000000000000C1CB
      DD00596DAD006A71C6006A71C600596DAD00526CA100526CA100526CA1007780
      93008C8C8C00D3D3D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000D37DD001C43DF00294E
      E0003155E1003759E2003C5DE3004060E4004263E5004263E500889CEF00F3F5
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F4FE00809EF3001951EA00144EEA00114AEA000C45E9000841E700053B
      E1000334D500022BC1000122A000FFFFFF0000000000F3F3F300F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00898989006666
      660091919100FEFEFE00FDFDFD00FEFEFE00000000000000000000000000FEFE
      FE000000000000000000000000000000000000000000FBFBFB00E6E6E600BDA8
      9300D8822B00DD862E00DD893200DE8B3600DE8C3900DF8E3C00DF903F00E091
      4100E0924300E7AD7200FFFFFF00FFFFFF00FFFFFF00E39D5600E0924200DF90
      3F00DF8E3C00DE8D3A00DE8B3700DD893300DD872F00D681290066513B007676
      7600B6B6B600E6E6E600FBFBFB00000000000000000000000000000000000000
      0000C1CBDD00596DAD006A71C6006A71C600596DAD00526CA100526CA100526C
      A100778093008C8C8C00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF001039DD002046E0002E52
      E1003759E3003D5EE4004262E4004665E5004767E500BAC6F600FFFFFF00FFFF
      FF00E7ECFC0093A8F1006181EB003A63E7003763E700597EEC0089A4F300E4EB
      FC00FFFFFF00FFFFFF00AABFF7001750EA00134CEA000E48EA000B43E700073D
      E2000637D600042EC2000122A000FFFFFF00F6F6F6009191910090909000F5F5
      F500FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00909090006565
      650068686800A7A7A700EAEAEA00FDFDFD00FEFEFE00FEFEFE00FEFEFE00F7F7
      F700FDFDFD00FEFEFE000000000000000000FDFDFD00F2F2F200CDC4BB00D381
      2F00DC852C00DD862E00DD893200DE8B3600DE8D3A00DF8E3C00DF903E00E091
      4100E0924200E7AD7200FFFFFF00FFFFFF00FFFFFF00E39D5600E0914100DF90
      3F00DF8E3C00DE8D3A00DE8B3700DD893300DD873000DC852D00CC7C29005B53
      49008C8C8C00CCCCCC00F2F2F200FDFDFD000000000000000000000000000000
      000000000000C1CBDD00596DAD006A71C6006A71C600596DAD00526CA100526C
      A100526CA100778093008C8C8C00D2D2D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00123BDD00254AE0003356
      E2003C5DE3004262E4004666E5004A69E500BBC7F500FFFFFF00FFFFFF00A3B4
      F2004567E6004267E7003F66E7003C65E7003863E7003461E8002F5FE9002B5D
      EA0084A2F300FFFFFF00FFFFFF00A8BDF700134CEA001049E9000D45E7000A3F
      E2000A39D6000730C2000324A000FFFFFF00D9D9D9005C5C5C006E6E6E00ADAD
      AD00FCFCFC00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00A6A6A6006A6A
      6A006D6D6D007070700070707000B6B6B600F3F3F300F7F7F700BABABA006C6C
      6C00BABABA00FAFAFA00FEFEFE0000000000F9F9F900E1E1E100C88E5200DC83
      2900DC852C00DD862E00DD893200DE8B3600DE8C3900DF8E3C00DF8F3D00DF90
      3F00E0914100E7AC7000FFFFFF00FFFFFF00FFFFFF00E39C5500DF914000DF90
      3E00DF8E3C00DE8D3A00DE8B3600DD893300DD873000DC852D00DC842A00A166
      2B0066666600ABABAB00E1E1E100F9F9F9000000000000000000000000000000
      00000000000000000000C1CBDD00596DAD006A71C6006A71C600596DAD00526C
      A100526CA100526CA100778093008A8A8A00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00153EDE00294EE000385A
      E3004160E4004665E5004A68E50090A2EF00FFFFFF00FFFFFF008FA2EF00496A
      E6004769E7004468E7004167E7003D66E7003964E7003562E800305FE9002B5C
      E9002659E9007496F100FFFFFF00FFFFFF007B9AF300134BE9001046E7000E42
      E1000D3CD6000A32C2000425A100FFFFFF00FCFCFC009A9A9A00646464006E6E
      6E00CDCDCD00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9005F5F
      5F006464640070707000767676007B7B7B00868686007F7F7F005F5F5F006F6F
      6F006A6A6A00AFAFAF00F9F9F900FEFEFE00F1F1F100CEBBA900D97F2400DB83
      2800DC852C00DD862E00DD883100DD8A3400DE8B3700DE8D3A00DF8E3C00DF8F
      3D00DF903F00E29D5600EEC79F00EEC79F00EEC79F00E0954800DF8F3D00DF8E
      3C00DE8D3A00DE8C3800DE8A3500DD893200DD872F00DC852C00DC832900D87F
      25006653410089898900CCCCCC00F1F1F1000000000000000000000000000000
      0000000000000000000000000000C1CBDD00596DAD006A71C6006A71C600596D
      AD00526CA100526CA100526CA100727B8E007C7C7C001D24C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF001840DE002E52E1003D5D
      E4004564E5004A68E5005874E700F4F6FD00FFFFFF00A7B6F2004D6DE6004B6B
      E600496AE6004569E7004268E700FFFFFF00FFFFFF003562E700315FE9002C5D
      E9002759E9002356E900819EF300FFFFFF00F1F4FE002457E9001449E6001245
      E100103ED5000C34C3000626A100FFFFFF00FEFEFE00F1F1F100707070006C6C
      6C0076767600EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1007676
      7600CACACA00ECECEC00A5A5A500606060006E6E6E00747474005E5E5E006F6F
      6F006A6A6A0070707000A5A5A500F4F4F400E4E4E400CC8D4D00DB802400DB82
      2700DC842A00DC852D00DD872F00DD893200DE8A3500DE8B3700DE8C3900DF8D
      3B00DF8E3C00E0944700E6A96C00E6A96C00E6A96C00DF904000DF8D3B00DE8D
      3A00DE8B3700DE8A3500DD893300DD873000DC862D00DC842B00DB832800DB81
      2500A66727006E6E6E00B4B4B400E4E4E4000000000000000000000000000000
      000000000000000000000000000000000000C1CBDD00596DAD006A71C6006A71
      C600596DAD00526CA100526CA100526CA1002F3B8C001B1F8200232AB5001A1F
      9000181D8500171C8200171C85001A1F90002228B5002F37E900000000000000
      000000000000000000000000000000000000FFFFFF001C42DF003255E2004261
      E4004967E5004E6BE60092A4EF00FFFFFF00E9EDFC00516EE6004E6EE7004C6C
      E6004A6AE6004669E7004367E700FFFFFF00FFFFFF003661E700315FE8002C5C
      E8002859E9002457E9002054E900E3E9FC00FFFFFF006E8FF000174BE6001647
      E1001441D6001037C3000928A100FFFFFF0000000000FDFDFD00D7D7D7005858
      58007272720090909000F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFC
      FC00FEFEFE00FEFEFE00FDFDFD00E2E2E2008383830062626200B3B3B300F1F1
      F100BBBBBB00656565005E5E5E00BFBFBF00D4CEC800D77E2300DB802300DB81
      2600DB832800DC842B00DC852D00DD872F00DD883100DD893300DE8A3500DE8B
      3700DE8B3700E6AA6D00FFFFFF00FFFFFF00FFFFFF00E29A5000DE8B3700DE8A
      3500DD8A3400DD893200DD873000DC862D00DC852C00DC832900DB812600DB80
      2400D47B2000615B55009E9E9E00D4D4D4000000000000000000000000000000
      00000000000000000000000000000000000000000000C1CBDD00596DAD006A71
      C6006A71C600596DAD00526CA100526CA100526CA1003A499000B04B3700C152
      2E00C7542E00C1522E00AF4B3700743A540023237F0021268500353AC3000000
      000000000000000000000000000000000000FFFFFF001F46DF003759E3004665
      E5004D6BE600526EE600C9D2F700FFFFFF009EAEF100526FE700506EE6004D6C
      E6004A6AE6004669E7004367E700FFFFFF00FFFFFF003560E600315DE7002C5B
      E8002757E8002355E8002053E8007F9CF100FFFFFF00B7C7F7001A4CE5001949
      E0001943D5001339C2000B29A000FFFFFF000000000000000000FCFCFC00ABAB
      AB00595959006C6C6C00B4B4B400FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE000000000000000000FEFEFE00FEFEFE00FBFBFB00F5F5F500FEFEFE00FDFD
      FD00F3F3F3007272720058585800B5B5B500CBAD8E00DA7E1F00DA7F2100DB80
      2300DB812600DB832800DC842A00DC852C00DC862D00DD872F00DD883100DD89
      3200DD893200E4A36000FFFFFF00FFFFFF00FFFFFF00E6A86900DD893200DD88
      3100DD872F00DD862E00DC852D00DC842B00DC832900DB812600DB802400DB7F
      2200DA7E1F007A5B3C008C8C8C00C5C5C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C1CBDD00596D
      AD006A71C6006A71C600596DAD00526CA100526CA100C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C2522D00663A6000292D84003D41
      B50000000000797979000000000000000000FFFFFF002248DF003D5DE4004B69
      E500526EE6005470E700EAEDFC00FFFFFF00748AEC00536FE700516DE6004D6B
      E6004969E6004668E6004266E600FFFFFF00FFFFFF00355EE600305CE6002B59
      E7002756E7002353E6002051E700476FEB00FFFFFF00F1F4FD001D4DE4001D4B
      E0001C45D500163BC1000D2BA000FFFFFF000000000000000000FEFEFE00F6F6
      F6007E7E7E006565650069696900D6D6D600FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00DEDEDE007373730063636300D0D0D000CA976300DA7D1E00DA7D1E00DA7E
      2000DB7F2200DB802400DB812600DB832800DC842A00DC842B00DC852C00DC85
      2D00DC862D00DF8D3A00FEFCFA00FFFFFF00FFFFFF00F8E6D500DD8B3600DC85
      2D00DC852C00DC842A00DC832900DB822700DB812500DB802300DA7F2100DA7E
      1F00DA7D1E0095622D007F7F7F00BBBBBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEC7
      DA005C6FAE006A71C600596DAD00526CA100C7542E00C0573700C08B7000D0BD
      9E00DDD5B200D3C09E00C08A7000C0573700C7542E00C7542E00804353003336
      84004F54C5006D6D6D000000000000000000FFFFFF00264BE0004161E4004F6C
      E6005571E7005672E800FFFFFF00FFFFFF005670E700536FE700506CE6004D6A
      E6004968E5004566E6004164E600FFFFFF00FFFFFF00345CE500305AE5002B57
      E6002754E6002452E6002050E5001E4EE500FFFFFF00FFFFFF00204EE400214D
      DF002048D400193CC1000E2CA000FFFFFF00000000000000000000000000FEFE
      FE00E6E6E6005E5E5E007070700079797900EDEDED00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FDFDFD00F4F4
      F400959595007575750096969600FAFAFA00CB8D4C00D97B1B00DA7D1E00DA7E
      2000DB802400DB822700DB832900DB842C00DC852D00DC852E00DC862E00DC86
      2F00DC873000DC873000F1D0AF00FFFFFF00FFFFFF00FFFFFF00F8E7D700DF92
      4300DC852E00DC852D00DB842C00DB842A00DB822700DB812600DA7F2100DA7D
      1E00D97C1C00A567260079797900B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006874D5005F77A7005F77A700C9603E00C2876F00DED7B600DFD7B600DFD7
      B600DFD7B600DFD7B600DFD7B600DED7B500BE816A00C6553100C7542E007144
      61003C3F88006B70ED000000000000000000FFFFFF00284DE0004464E500526E
      E7005772E8005973E800FFFFFF00FFFFFF005771E700546FE700516DE6004D6A
      E6004967E5004565E5004163E500FFFFFF00FFFFFF00345BE4002F58E4002B55
      E5002753E5002450E500214FE4001E4DE500FFFFFF00FFFFFF00224EE300244E
      DF002248D3001B3DC000102D9F00FFFFFF000000000000000000000000000000
      0000FDFDFD00C1C1C100515151006D6D6D0096969600F9F9F900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00DBDBDB008C8C
      8C007D7D7D0078787800E1E1E100FEFEFE00CF863D00DA7D1F00DB832A00DB84
      2C00DC862D00DC862E00DC872F00DD883100DD883100DD883200DD883300DD89
      3300DD893300DD893300DE8E3C00F8E7D600FFFFFF00FFFFFF00FFFFFF00FBF1
      E800E29B5400DD883200DD883100DD873000DC862E00DC862D00DB852C00DB84
      2B00DA7D1F00B369200079797900B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007479ED006078A800CE694800C38C7400E1DABB00E1DABB00E1DABB00E1DA
      BB00E1DABB00E1DABB00E1DABB00E1DABB00E1D9BB00C48C7500CE694800C252
      2D00424181005D62C5000000000000000000FFFFFF002C50E1004967E5005772
      E8005C76E8005D77E800EBEEFC00FFFFFF00778BEB00546FE700516DE6004D6A
      E5004967E5004665E5004162E500FFFFFF00FFFFFF00345AE4003057E4002B54
      E4002851E4002550E400224EE4003B62E600FFFFFF00F1F4FD00244EE300264F
      DE00254AD3001D3FC000112EA000FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00909090005959590068686800B9B9B900FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00F1F1F100ADADAD00797979007979
      790080808000D1D1D100FDFDFD0000000000D0873D00DB842A00DC883100DD88
      3200DD893300DD893400DD8A3500DD8A3500DD8A3500DD8B3600DD8B3600DD8B
      3700DD8B3700DD8B3700DD8B3800DE914200F5DFC800FFFFFF00FFFFFF00FFFF
      FF00FCF5EE00E19B5300DD8A3500DD8A3500DD893400DD893300DD883200DC88
      3100DB842A00B46B20007F7F7F00BBBBBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFA59200CF6E4E00CA705300E2DCBE00E2DCBE00E2DCBE00E2DCBE00E2DC
      BE00E2DCBE00E2DCBE00E2DCBE00E2DCBE00E2DCBE00E2DBBE00C9725600CC63
      4000864B5500AEAEAE000000000000000000FFFFFF002F52E1004D6BE6005D77
      E800607AE800607AE800CDD5F800FFFFFF00A1AFF200556FE700516CE6004D69
      E5004966E5004564E4004161E400FFFFFF00FFFFFF003458E3003056E3002B53
      E3002851E300264FE300234DE300748FED00FFFFFF00C8D2F800274FE2002950
      DD00274BD3001F40BF00132F9F00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00EFEFEF00666666006B6B6B0069696900DCDCDC00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00D1D1D1007B7B7B0072727200777777009F9F
      9F00EFEFEF00FDFDFD000000000000000000D08F4E00DC852C00DD8B3800DE8C
      3900DE8D3900DE8D3A00DE8D3A00DE8D3B00DE8E3C00DE8E3C00DE8E3C00DE8E
      3C00DE8E3C00DE8E3C00DE8E3C00DE8E3C00DE8F3E00F1CFAC00FFFFFF00FFFF
      FF00FFFFFF00F9EBDD00DE8E3E00DE8D3A00DE8D3A00DE8D3900DE8C3900DE8C
      3900DC852C00A76826008C8C8C00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2795C00D2775900CD9F8700E4DDC200E4DDC200E4DDC200E4DDC200E4DD
      C200E4DDC200E4DDC200E4DDC200E4DDC200E4DDC200E3DDC100CDA18A00D174
      5500BC573700898989000000000000000000FFFFFF003356E200516EE700617B
      E900647EE900637DE8009CACF100FFFFFF00EAEDFC00566FE700526CE6004D69
      E5004966E4004563E4004160E400FFFFFF00FFFFFF003457E2003054E2002C52
      E2002950E300274EE200244DE200E3E8FB00FFFFFF00849BEF002950E1002B50
      DD00294CD2002141BF00142F9F00FFFFFF000000000000000000000000000000
      00000000000000000000FDFDFD00D5D5D5004F4F4F007070700079797900F2F2
      F200FEFEFE000000000000000000000000000000000000000000000000000000
      0000FEFEFE00ECECEC009B9B9B006A6A6A00747474007A7A7A00CBCBCB00FBFB
      FB00FEFEFE00000000000000000000000000D6A16C00DB832900DE903F00DE90
      3F00DF904000DF904000DF914100DF914100DF914100DF914100DF914100DF91
      4200DF914200DF914200DF914200DF914200DF914200DF914200F2D3B300FFFF
      FF00FFFFFF00FFFFFF00E8B07800DF914100DF904000DF904000DE903F00DE90
      3F00DB8329009C6834009F9F9F00D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF735400D57F6300DDCEB400E5DFC500E5DFC500E5DFC500E5DFC500E5DF
      C500E5DFC500E5DFC500E5DFC500E5DFC500E5DFC500E5DFC500DECFB500D57E
      6200C3542E008B8B8B000000000000000000FFFFFF003255E2005671E8006780
      E9006983EA006881E9006E86EA00F5F7FE00FFFFFF00A1AEF200546EE700506B
      E6004B67E5004764E4004261E400FFFFFF00FFFFFF003658E2003256E2002E53
      E2002C51E2002A50E200859BEF00FFFFFF00F1F4FD003659E4002B51E1002D52
      DD002A4DD3002242BF0014309F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FCFCFC00A7A7A7004F4F4F006B6B6B009C9C
      9C00FAFAFA00FEFEFE000000000000000000000000000000000000000000FCFC
      FC00C6C6C6006C6C6C006A6A6A006F6F6F0097979700E9E9E900FDFDFD00FEFE
      FE0000000000000000000000000000000000DFC1A100DA7E1F00E0944600E094
      4700E0954800E0954800E1954800E1954800E6A86A00F1D1B000F3D7BA00F6E2
      CD00E29F5900E0964900E0964900E0964900E0964900E0964900E5AA6B00FFFF
      FF00FFFFFF00FFFFFF00EFC69E00E1954800E0954800E0954800E0954800E094
      4600DA7E1F008E6F5000B5B5B500E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2785A00D7866C00E7E1C800E7E1C800E7E1C800E7E1C800E7E1C800E7E1
      C800E7E1C800E7E1C800E7E1C800E7E1C800E7E1C800E7E1C800E7E1C800D786
      6B00C7542E00909090000000000000000000FFFFFF003659E3005974E8006B84
      EA006F88EB006D86EA006982EA00A8B6F300FFFFFF00FFFFFF0096A5F000526C
      E6004D69E5004965E4004563E4004160E4003C5CE400385AE3003557E2003154
      E2002F53E2005371E700FFFFFF00FFFFFF00879DEF002B50E2002D52E1002E52
      DD002B4DD1002342BF0014309F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F6F6F600757575005F5F5F006262
      6200C3C3C300FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DCDC
      DC004A4A4A007575750074747400BFBFBF00F9F9F900FEFEFE00000000000000
      000000000000000000000000000000000000EEE8E200D5771500E0954700E199
      4F00E1994F00E1994F00E1994F00E1994F00E8B27B00FFFFFF00FFFFFF00FFFF
      FF00EFC8A000E29A5000E29A5000E29A5000E29A5000E29A5000E9B47D00FFFF
      FF00FFFFFF00FFFFFF00EDC39800E1994F00E1994F00E1994F00E1994F00E095
      4700D27413008D878100CCCCCC00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D27B5E00D98D7400E1D3BB00E8E3CC00E8E3CC00E8E3CC00E8E3CC00E8E3
      CC00E8E3CC00E8E3CC00E8E3CC00E8E3CC00E8E3CC00E7E2CA00E2D4BD00D889
      6F00C3542E009C9C9C000000000000000000FFFFFF003759E3005D78E8007089
      EB00748CEC00718AEB006C85EB006780EA00C4CDF600FFFFFF00FFFFFF009EAD
      F1004F6AE6004B67E5004764E4004361E4003E5EE4003B5CE3003759E3003456
      E2008B9FEF00FFFFFF00FFFFFF00B0BDF4002E52E2002D51E2002F52E1002E51
      DE002D4ED3002443BF0015319E00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E2E2E200515151006E6E
      6E0065656500C2C2C200F6F6F600FDFDFD00FDFDFD00F1F1F100FBFBFB00F8F8
      F80080808000797979009A9A9A00FBFBFB00FDFDFD0000000000000000000000
      000000000000000000000000000000000000F9F9F900DA985400DD883200E39D
      5600E39E5700E39E5800E39E5800E39E5800E39F5A00FCF5ED00FFFFFF00FFFF
      FF00FDFBF800EAB98600E39E5800E39E5800E39E5800E5A76800F9EDE000FFFF
      FF00FFFFFF00FEFEFD00E6AB6F00E39E5800E39E5800E39E5800E39D5600DD88
      3200B16F2B00ACACAC00E2E2E200F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D37F6300DB917900D9B59E00EAE5CF00EAE5CF00EAE5CF00EAE5CF00EAE5
      CF00EAE5CF00EAE5CF00EAE5CF00EAE5CF00EAE5CF00E9E4CE00DBB7A200D57E
      6200BD583800C4C4C4000000000000000000FFFFFF003B5BE300617BE900768E
      EC007A92EC00778FEC00708AEB006A83EA00647DE900C3CDF600FFFFFF00FFFF
      FF00E9EDFC009CABF1006B82EA004663E4004260E4005672E6008498ED00E6EA
      FB00FFFFFF00FFFFFF00B2BFF4003054E1003054E1003053E2003053E0003053
      DD002D4ED2002443BE0014309E00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00BEBEBE004747
      4700717171005858580075757500B2B2B2008989890053535300DCDCDC00FDFD
      FD00DADADA007171710081818100DADADA00FEFEFE0000000000000000000000
      000000000000000000000000000000000000FDFDFD00ECDAC700D7781600E29A
      5100E4A36100E4A36100E4A36100E4A36100E4A36100EDC29600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9ECDF00F4DCC300F6E3CF00FDFBF800FFFFFF00FFFF
      FF00FFFFFF00F3D8BC00E4A36100E4A36100E4A36100E4A36100E29B5200D576
      15009A887500CDCDCD00F2F2F200FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1A79300DB927A00DA9D8700EAE5D000EBE6D200EBE6D200EBE6D200EBE6
      D200EBE6D200EBE6D200EBE6D200EBE6D200EAE5D000EBE6D200DA9C8600CA5F
      3B00AA6F5B00FCFCFC000000000000000000FFFFFF003E5EE3006881EA007F96
      ED00869BEE008398ED007A91EC00718AEB006982EA00657EE900A6B4F200F5F6
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3F5FD0091A4F0003A5BE300385AE3003759E2003457E2003356E1003053
      DD002C4DD2002140BD00122E9D00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FAFAFA009696
      960046464600575757006A6A6A005D5D5D00636363005D5D5D00ACACAC00FDFD
      FD00FBFBFB00A6A6A6007C7C7C0099999900F8F8F80000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00DC9E5F00DC84
      2A00E5A56400E6A86900E6A86900E6A86900E6A86900E6A86900F1CFAD00FEFE
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6E1CC00E6A96B00E6A86900E6A86900E6A86900E5A66500DD873000B274
      3500B8B8B800E7E7E700FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFAF900D0755700E0A28D00DCB6A200EBE6D200EDE8D600EDE8D600EDE8
      D600EDE8D600EDE8D600EDE8D600ECE7D400ECE7D400DDB8A600D47C5F00C353
      2D00D1CECD00000000000000000000000000FFFFFF004363E5007189EB008A9E
      EF0092A5F0008CA1EF008398ED007990EC007089EB006C85EA006982EA006E86
      EA009CACF100CDD5F800F5F6FD00FFFFFF00FFFFFF00F4F6FD00D3DAF9009BAB
      F1005773E7004967E5004564E4004162E4003F60E4003B5CE3003659E1003154
      DD002A4BD2001E3EBD000F2B9B00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00DDDDDD008E8E8E00585858005D5D5D005A5A5A007070700078787800F9F9
      F900FCFCFC00F0F0F0007E7E7E0084848400CECECE0000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F3EAE100D67D
      2200DF903E00E7AC7000E8AD7200E8AD7200E8AD7200E8AD7200E8AD7200EDC0
      9300F8E7D700FEFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAEDE100F0C9
      A300E8AD7200E8AD7200E8AD7200E8AD7200E7AC7000E0934400CC761C00ABA2
      9900DDDDDD00F7F7F700FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BAAB00D6826700E2AA9800DFBDAB00EDE9D700ECE8D500EDE9
      D800EEEAD900EDE9D700EDE9D600EEEAD800DFBDAB00D78A7100C8573200C295
      860000000000000000000000000000000000FFFFFF004867E5007990EC0094A6
      F0009BACF10096A8F0008B9FEF008095ED00778FEC00728BEB006E87EB006B84
      EA006881E900657EE800637DE800617BE800607AE9005E78E8005C77E8005A75
      E8005773E7005370E6004F6CE6004B6AE5004766E5004061E400395BE2003154
      DD00284AD1001B3BBC000D299B00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FDFDFD00EDEDED00E0E0E000C7C7C7007070700061616100E2E2
      E200FBFBFB00F8F8F8009A9A9A007B7B7B00ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00ECD7
      C100D67A1B00E1974B00E9B17800E9B27A00E9B27A00E9B27A00E9B27A00E9B2
      7A00E9B27A00E9B57F00EDC19400EEC59A00EDC29600EAB68100E9B27A00E9B2
      7A00E9B27A00E9B27A00E9B27A00E9B17800E29A5000D4791C00AD988200D5D5
      D500F3F3F300FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFA18D00D3795B00E5B19F00E2B0A000E3C8B700EBE2
      D200EFECDC00EBE2D200E3C8B700E1AF9F00D8886E00C8593400CA8C78000000
      000000000000000000000000000000000000FFFFFF004967E5007B92ED0098AA
      F100A0B1F2009AACF1008FA2F0008398ED007991EC00748DEC00718AEB006E86
      EA006B84EA006982E9006780E900667FE900657FE900637DE900627CE9005F79
      E9005C77E8005774E7005370E7004F6DE6004A68E5004363E500395BE2003153
      DD002547D0001839BA000C289A00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00F5F5F5008383830065656500A1A1
      A100C3C3C30070707000616161008A8A8A00DDDDDD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00E8C7A700D67A1B00E0944600E9B47D00EAB88400EAB88400EAB88400EAB8
      8400EAB88400EAB88400EAB88400EAB88400EAB88400EAB88400EAB88400EAB8
      8400EAB88400EAB88400EAB47E00E2984D00D57A1C00B7967600D5D5D500F1F1
      F100FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8BAAB00C6573300D8886E00E4AD9B00E7B8
      A800E8B9A900E6B3A300DE9B8400CE6A4900C4542E00E5B8A900000000000000
      000000000000000000000000000000000000FFFFFF005D78E8007088EB008FA2
      EF0097A9F10092A5F000879CEE007B92EC00748CEB00718AEB006D86EA006781
      E900667FE900647EE900627CE900607AE800607AE8005E78E8005A76E8005874
      E7005673E7005370E6004E6DE6004A69E5004464E4003D5EE4003456E1002C50
      DB002144CF001636B900374FAC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00ABABAB00747474005454
      5400595959007676760080808000AEAEAE00FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00EDD9C500D67E2300DE8A3500E8AE7400ECBC8B00ECBC8C00ECBC
      8C00ECBC8C00ECBC8C00ECBC8C00ECBC8C00ECBC8C00ECBC8C00ECBC8C00ECBC
      8C00ECBC8C00E9B17800DF8E3C00D0771E00BEAA9500DDDDDD00F3F3F300FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFAF900E0A59100CD684700C757
      3100C7542E00C7573100CD684700E0A59100FDFAF90000000000000000000000
      000000000000000000000000000000000000FFFFFF00C9D2F7004766E5006D86
      EA007990EC00758DEC006B84EA00627DE9005E78E8005C76E8005974E800526F
      E700526EE700526EE700506DE7004E6BE6004E6BE6004C6AE6004967E5004664
      E5004362E4004061E4003E5FE4003C5EE4003658E2003054E100284CDF002246
      D9001A3DCB001030B200B2BBE000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E3008D8D8D007A7A
      7A0078787800909090008A8A8A00DCDCDC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F3EAE100DD9F6000D87B1C00E2994F00EBB98600EDC1
      9500EDC29600EDC29600EDC29600EDC29600EDC29600EDC29600EDC19500EBBB
      8900E39D5600D77B1D00C6884900CDC4BB00E8E8E800F7F7F700FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C9D2F700607B
      E8004463E4004261E4003D5EE4003859E3003456E2003557E2003355E2003053
      E2003154E1003254E2003254E2003154E2002C50E1002B4EE1002A4EE100284D
      E1002349E0002349DF002449E0002449E0001E45DF001B42DF00173EDC00133A
      D5003C59D000B2BCE600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F9F9F900DDDD
      DD00BABABA00EFEFEF00F0F0F000FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00ECDAC700DA985400D5771600DD8A
      3400E39E5800E7AB6D00E9B27A00E9B27A00E7AB6D00E4A05B00DE8C3800D577
      1600CB894400CEBCA900E2E2E200F2F2F200FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F9F9F900EFEBE600E0C2
      A200D6A16B00D0904E00CF843900CE843800CA8A4700C9955F00CAAB8C00D4CF
      CB00E5E5E500F1F1F100F9F9F900FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F6F6F600F0F0F000EAEAEA00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EAEAEA00F0F0F000F6F6F600FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F0F0F000D9D9D900B5B5
      B5008C8C8C00646464004D4D4D00434343004040400045454500565656007878
      78009C9C9C00BFBFBF00DDDDDD00F3F3F300FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FBFBFB00FAFAFA00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00F2F2F200A9A9A900A0A0A0009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C00A0A0A000A9A9A900F2F2F200FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F2F2F200D8D8D800A9A8A700706B6700463C
      33004C361F0051331400583511005D3712003F390E000B3D0600062A0600111F
      1100232823004B4B4B0084848400B7B7B700E0E0E000F6F6F600FEFEFE000000
      000000000000000000000000000000000000FBFBFB00F9F9F900F7F7F700F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F7F7F700F9F9F900FBFBFB000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F6F6F600F1F1F100EDEDED00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00F9F9F9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00A7A180006E694C006E694C006E69
      4C006E694C006E694C006E694C006E694C006E694C006E694C006E694C006E69
      4C006E694C006E694C00A5A5A500EDEDED00FAFAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00E7E7E700B6B5B5007A7065005F4429007A4B1C00985C
      1E00A6632100A9662200AC682300AC68230082751E001F941300119310000D82
      0D0008580800062F0600131B13004343430089898900C6C6C600EEEEEE00FCFC
      FC0000000000000000000000000000000000F2F2F200ECECEC00E5E5E500E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E5E5E500ECECEC00F2F2F2000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F5F5F500ECECEC00A7A7A700A2A2A200A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100EBEB
      EB00EBEBEB00F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000F4F3EF00F4F3EF00F4F3
      EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF00F4F3
      EF00F4F3EF006E694C00A1A1A100EBEBEB00F9F9F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900DFDEDE009F999300775C420086521E00A4632100AE682300B06A
      2500B26B2400B26C2500B26C2400B16D240088792000209B130013A11200119F
      1100109D10000E8D0E0009610900042504002024200064646400B5B5B500E8E8
      E800FCFCFC00000000000000000000000000E9E9E900828282007C7C7C007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007C7C7C0082828200E9E9E9000000000000000000000000000000
      000000000000FDFDFD00F6F6F600ECECEC00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00A1A1A100A1A1
      A100EBEBEB00EBEBEB00F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000F5F4F100F5F4F100F5F4
      F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4
      F100F5F4F1006E694C00A1A1A100EBEBEB00F9F9F90000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900DCDCDC009E92840082552600A1612100AB672300AE692400B06A2400B26C
      2500B46D2500B56D2500B56E2500B46E25008A7B2000209E130013A3120012A2
      120011A01100119D11000F980F000D860D00074507000D170D0053535300ADAD
      AD00E8E8E800FCFCFC000000000000000000EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC83350075757500E0E0E000000000000000000000000000FEFE
      FE00FDFDFD00F7F7F700ECECEC00C7542E00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E007F7F7F007F7F7F0099999900C0C0C000C0C0C000C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C7542E00A1A1
      A100A1A1A100EBEBEB00F9F9F9000000000000000000FEFEFE00FDFDFD00FBFB
      FB00FAFAFA00F9F9F900F9F9F900F4F4F400A7A18000F7F6F300F7F6F300F7F6
      F300F7F6F300F7F6F300F7F6F300F7F6F300F7F6F300F7F6F300F7F6F300F7F6
      F300F7F6F3006E694C009F9F9F00E7E7E700F4F4F400F9F9F900F9F9F900FAFA
      FA00FBFBFB00FDFDFD00FEFEFE00000000000000000000000000FCFCFC00E1E3
      E1009D9986008E5C2700A7652200AC672400AF692400B16A2500B26C2500B46D
      2600B56E2600B66E2600B66F2600B66F26008C7C210021A1140013A4130012A4
      120012A2120011A11100119E11000F9B0F000F910F00085408000B170B005353
      5300B6B6B600EFEFEF00FEFEFE0000000000EC833500E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300EC8335006F6F6F00DCDCDC000000000000000000FEFEFE00FBFB
      FB00F6F6F600ECECEC00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E007F7F7F007F7F7F0099999900C0C0C000C0C0C000C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F90000000000FEFEFE00FBFBFB00F6F6F600F1F1
      F100EDEDED00EBEBEB00EBEBEB00E7E7E700A7A18000F9F8F600F9F8F600F9F8
      F600F9F8F600F9F8F600F9F8F600F9F8F600F9F8F600F9F8F600F9F8F600F9F8
      F600F9F8F6006E694C0099999900DFDFDF00E7E7E700EBEBEB00EBEBEB00EDED
      ED00F1F1F100F6F6F600FBFBFB00FEFEFE0000000000FEFEFE00ECECEC0092AF
      91003E7B1D00956C2000AA682300AF692400B16B2400B36C2500B46D2500B66E
      2600B76E2600B86F2600B8702600B87026008D7D210021A2140013A6130013A5
      130012A4120011A2110011A11100119F1100109A10000F910F00085408000D17
      0D0065656500C8C8C800F7F7F70000000000EC833500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500B2B2B200B2B2
      B200E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500EC8335006F6F6F00DCDCDC0000000000FEFEFE00FBFBFB00F5F5
      F500ECECEC00A3A3A300C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E007F7F7F007F7F7F0099999900C0C0C000C0C0C000C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F90000000000FBFBFB00F4F4F400ECECEC00A7A7
      A700A2A2A200A1A1A100A1A1A1009F9F9F00A7A18000FAFAF900FAFAF900FAFA
      F900FAFAF900FAFAF900FAFAF900FAFAF900FAFAF900FAFAF900FAFAF900FAFA
      F900FAFAF9006E694C0094949400999999009F9F9F00A1A1A100A1A1A100A2A2
      A200A7A7A700ECECEC00F4F4F400FBFBFB0000000000F6F6F600B9CAB900328F
      2B00189711005D821A00A76A2300AF6B2400B26C2500B46D2600B66E2600B86F
      2600B86F2700BA702700B9702700B97127008E7E220022A4140013A7130013A7
      130012A5120012A4120012A2120011A11100119E1100109A10000F900F000743
      0700212421008A8A8A00E0E0E000FCFCFC00EC833500E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7003F3F3F003F3F3F007F7F
      7F00B4B4B400B4B4B400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EC8335006F6F6F00DCDCDC0000000000FDFDFD00F6F6F600ECEC
      EC00C7542E00C2522C00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E007F7F7F007F7F7F0099999900C0C0C000C0C0C000C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F90000000000F4F4F400EBEBEB005F4242005F42
      42005F4242005F4242005F4242005F424200A7A18000FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB006E694C005F4242005F4242005F4242005F4242005F4242005F42
      420099999900A3A3A300EBEBEB00F4F4F400FCFCFC00DDE3DD0055A055001396
      1100139B12002398130085781F00B06C2400B46D2500B66E2600B86F2600B970
      2600BA702600BB702700BB712600BA7126008F7F210022A4140013A9130013A8
      130012A7120012A6120012A3120012A2110012A01200129E1100109A10000F85
      0E000925060043434300B6B6B600F3F3F300EC833500ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC003434340034343400353535004040
      40004040400082828200B8B8B800B8B8B800ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00EC8335006F6F6F00DCDCDC0000000000FBFBFB00F1F1F100C754
      2E00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E007F7F7F007F7F7F0099999900C0C0C000C0C0C000C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F90000000000EEEEEE009C717100B7999900B899
      9900B89A9A00B99B9B00B99B9B00B99C9C00A7A18000FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC006E694C00B99C9C00B99B9B00B99B9B00B89A9A00B8999900B799
      99005F42420099999900A3A3A300EEEEEE00F5F5F500A7C5A70014951400119B
      1100129D1200169F130043911800A1742300B56E2500B86F2600B9702600BB71
      2700BB712700BD722800BD732800BD7428009080220023A7150014AA130014AA
      140013A9130014A9140013A5130012A4120012A11200149F12001F9812004A84
      1600544A12001C19130084848400DDDDDD00EC833500F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0003434340034343400353535003535
      35002F90F100414141004141410084848400BBBBBB00BBBBBB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000EC8335006F6F6F00DCDCDC0000000000FAFAFA00C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B6969600B6979700B798
      9800B7999900B89A9A00B89A9A00B89B9B00A7A18000A7A18000A7A18000A7A1
      8000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000A7A1
      8000A7A18000A7A18000B89B9B00B89A9A00B89A9A00B7999900B7989800B697
      9700B69696005F4242009D9D9D00E9E9E900E3E6E3004AA24A00109A1000119E
      1100129F120014A114001BA1140068871D00B2702500B8702600BA702600BB71
      2700BD712800BD722800BE732800BD7328009181230022A8140014AB140013AB
      130013AA130013A9130013A6130013A41300209F13004A8E170085781E00A26A
      2100985D1F0032200B004B4B4B00BEBEBE00EC833500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5003131310031313100353535003291
      F2003291F2003291F2002F90F100434343004343430087878700BFBFBF00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B5949400B5949400B594
      9400B5949400B5959500B5959500B5959500B5959500B6969600B6969600B696
      9600B6969600B6979700B6979700B6979700B6979700B7989800B7989800B798
      9800B7989800B7999900B7999900B7999900B7999900B8999900B8999900B899
      9900B89999005F4242009C9C9C00E7E7E700B9CDB6001B971900129E120012A0
      12003DB13D0091D3910067C364002AA01600937D2200B9722600BB712700BD73
      2800BE732800C27A3300DBB68F00DCB7900095892D0023A9160014AC140020B1
      1F0085D2850087D286002AA71F0046951900817E1E00A8702300AE6B2300AC69
      2300A9662200603A1300282623009C9C9C00EC833500F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800313131003291F2003291
      F2003291F2003291F2002F90F1002F90F1003291F2004444440089898900C1C1
      C100F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B3919100B3919100B391
      9100B3919100B3929200B3929200B3929200B3929200B4939300B4939300B493
      9300B4939300B5949400B5949400B5949400B5949400B5959500B5959500B595
      9500B5959500B6969600B6969600B6969600B6969600B6979700B6979700B697
      9700B69797005F4242009C9C9C00E7E7E70081B57F0012991000129F120012A1
      120055BC5500D3EDD30090D4900018A715004C961A00AC762500BC722700BD72
      2800BE742900C37D3700ECDAC500ECDAC600978D320023AA160016AD140026B2
      2500C3E7C100D2E2C300908C3200AC752600B3702600B36E2500B06B2500AF6A
      2400AC6722008B541C002019120078787800EC833500FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00B0B0B0002F90F1002F90
      F1002F90F1002F90F1003291F2003291F2003090F1003090F100454545008B8B
      8B00C4C4C400FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B28F8F00B28F8F00B28F
      8F00B28F8F00B2909000B2909000B2909000B2909000B3919100B3919100B391
      9100B3919100B3929200B3929200B3929200B3929200B4949400B4949400B494
      9400B4949400B5959500B5959500B5959500B5959500B6959500B6959500B695
      9500B69595005F4242009C9C9C00E7E7E700549F4800119E110012A0120013A2
      130055BC5500D4EED40090D5900016AA15001EA81600778A1F00BA742800BF74
      2900BF742900C57F3800ECDAC700EDDBC800978D330025AA17001DAD150048A9
      2900D7E1C400E9DCC700BE7D3800B9722900B66F2700B66F2700B26C2600B06A
      2500AE6924009F6020002C1B0A0056565600EC833500FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B2B2B2002F90F1002F90
      F1002F90F1002F90F1003291F2003291F2003090F1003090F1002A8DF0004545
      45008C8C8C00C6C6C600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00ED904D00ED8F
      4A00ED8E4800ED8C4500ED8B4300ED8B4300ED8B4300ED8B4300ED8B4300ED8B
      4300ED8C4500ED8E4800ED8F4A00ED904D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B18F8F00B18F8F00B18F
      8F00B18F8F00B2909000B2909000B2909000B2909000B2909000B2909000B290
      9000B2909000B3929200B3929200B3929200B3929200B4939300B4939300B493
      9300B4939300B5949400B5949400B5949400B5949400B5959500B5959500B595
      9500B59595005F4242009C9C9C00E7E7E7003B932700129E120012A0120013A2
      130056BD5600D5EED50091D6910017AA16001AAC170057971E00B7772900BE75
      2A00C0762A00C5803900EDDBC700EDDBC8009F8D35004C9D1C007B8D2100B186
      3700EBDCC700EEDECE00D0A07000CC986400C78F5800BC7D3C00B46E2700B26B
      2500AE6A2500A563210043280D0045454500EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E600ABABAB002F90
      F1002F90F1002F90F1002F90F1002F90F1002E8FF1002E8FF1002AA6F0002ACB
      F000464646008D8D8D00C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA64D00FFA64D00FFA64D00ED904D00ED8F
      4A00ED8E4800ED8C4500ED8B4300ED8B4300ED8B4300ED8B4300ED8B4300ED8B
      4300ED8C4500ED8E4800ED8F4A00ED904D00FFA64D00FFA64D00FFA64D00C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B4939300B4939300B493
      9300B4939300B4939300B4939300B4939300B4939300B5949400B5949400B594
      9400B5949400B6959500B6959500B6959500B6959500B6969600B6969600B696
      9600B6969600B7979700B7979700B7979700B7979700B7989800B7989800B798
      9800B79898005F4242009C9C9C00E7E7E7002F901A00129F120016A216001AA6
      1A005BC05B00D6EFD6009AD99A002FB32D003DAF2E0097913900C2823E00C37D
      3600C27A3100C7854100EEDCCA00EFDDCB00BD883F00B1803000BF7A3100C584
      4100EEDDCB00F3E6DA00EDDCCC00EDDCCB00EAD7C500E3C8AD00C7935F00B572
      2D00AF6B2600A76622005131100040404000EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E600B3B3B3002F90
      F1002F90F1002F90F1002F90F1002F90F1002E8FF1002E8FF10029CBF00028CB
      F00027CBF000464646008D8D8D00C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFA95300FFA95300FFA95300ED945400ED94
      5400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ED945400ED945400FFA95300FFA95300FFA95300C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100B99A9A00B99A9A00B99A
      9A00B99A9A00B99B9B00B99B9B00B99B9B00B99B9B00BA9B9B00BA9B9B00BA9B
      9B00BA9B9B00BA9C9C00BA9C9C00BA9C9C00BA9C9C00BB9D9D00BB9D9D00BB9D
      9D00BB9D9D00BB9E9E00BB9E9E00BB9E9E00BB9E9E00BC9E9E00BC9E9E00BC9E
      9E00BC9E9E005F4242009C9C9C00E7E7E7002E90160017A1170023A7230025A9
      250063C26300D8EFD800D0EDD000C8E8C700D5E5C700E9DDCA00EDDCC900D29F
      6B00C5803A00C9894800EEDECB00EFDECC00C8894700C4803900C37F3900C888
      4700EEDDCB00EEDECE00C98F5500C5894E00D2A57900EBD8C600E6CFB800C08A
      5100B2733200A56A25004D3A100043434300EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3
      B3002A8DF0002A8DF0002B8DF0002B8DF0002F90F10028B2F00027CBF00026CA
      F00024CAF00022C9EF00464646008D8D8D00C7C7C700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFAC5900FFAC5900FFAC5900ED955600ED95
      5600FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00ED955600ED955600FFAC5900FFAC5900FFAC5900C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100C1A6A600C1A6A600C1A6
      A600C1A6A600C2A7A700C2A7A700C2A7A700C2A7A700C2A7A700C2A7A700C2A7
      A700C2A7A700C2A8A800C2A8A800C2A8A800C2A8A800C3A9A900C3A9A900C3A9
      A900C3A9A900C3A9A900C3A9A900C3A9A900C3A9A900C4AAAA00C4AAAA00C4AA
      AA00C4AAAA005F4242009C9C9C00E7E7E700328F18001DA41D002CAB2C002EAE
      2E0068C46800DAF0DA00B3E1B20088C07000CBA97700D5A77800D5A67700CC91
      5500C7844200CC8F5000EFDFCD00F1E0CE00CB8D4F00C8864300C6844100CB8D
      4F00EFDECD00F0DFCF00C88C5000C3844400C2844600E2C7AB00EEE3D600BFA3
      6E008788340050891D00184809004D4D4D00EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3
      B3002A8DF0002A8DF0002B8DF0002B8DF00028B2F00028CBF00025CAF00023CA
      F00022C9EF001FC9EF001EC9EF00464646008D8D8D00C7C7C700FFFFFF00FFFF
      FF00FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFB36700FFB36700FFB36700ED995D00ED99
      5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ED995D00ED995D00FFB36700FFB36700FFB36700C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100CCB6B600CCB6B600CCB6
      B600CCB6B600CCB6B600CCB6B600CCB6B600CCB6B600CDB7B700CDB7B700CDB7
      B700CDB7B700CDB7B700CDB7B700CDB7B700CDB7B700CDB8B800CDB8B800CDB8
      B800CDB8B800CEB8B800CEB8B800CEB8B800CEB8B800CEB8B800CEB8B800CEB8
      B800CEB8B8005F4242009C9C9C00E7E7E700389321001DA31D0034AD330037B0
      37006EC76E00DAEFD900ABD8A20091984300C3894900C6884900C7884900C888
      4900C9894900CD925600EFDFCE00EFE0CF00CD925600C9894A00C8884900CB91
      5600EEDFCE00EEDFCF00C8905600C3884B00C6996300DFD4BA00DCE7D10075BD
      670038A730001A9917000C490B0064646400EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3002A8DF00029A5F00028CBF00028CBF00028CBF00026CBF00025CA
      F00024CAF00023CAF00026CAF0002DCCF000464646008D8D8D00C7C7C700FFFF
      FF00FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA6
      4D00FFA64D00F9A24B00C7542E00FFBA7500FFBA7500FFBA7500ED9B6100ED9B
      6100FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00ED9B6100ED9B6100FFBA7500FFBA7500FFBA7500C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100D9C8C800D9C8C800D9C8
      C800D9C8C800D9C8C800D9C8C800D9C8C800D9C8C800D9C8C800D9C8C800D9C8
      C800D9C8C800D9C9C900D9C9C900D9C9C900D9C9C900D9C9C900D9C9C900D9C9
      C900D9C9C900DAC9C900DAC9C900DAC9C900DAC9C900DACACA00DACACA00DACA
      CA00DACACA005F4242009D9D9D00E9E9E900469E37001AA11A003AAF3A003FB4
      3F0075C97500DEF1DD00D8E4CA00DCCCAC00E4C9AD00E5CAAE00E4C9AC00E6CA
      AE00E5C8AC00E8CDB200F3E6DA00F4E8DC00E6CBB000E6CAAD00DBB58C00CE97
      5F00EFE1D200F1E7DB00E1CCB000DACEAE00D5DCBE00D6ECD300ABDCA90051B8
      4F0033AB3100149513001B451A008C8C8C00EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B3B3B30029CBF0002ACCF0002ACCF0002ACBF0002ACBF0002ACB
      F0002BCBF0002CCCF00032CDF0003BCFF10049D3F200464646008D8D8D00C7C7
      C700FFFFFF00EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFA9
      5300FFA95300F9A55100C7542E00FFC48800FFC48800FFC48800EDA06B00EDA0
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EDA06B00EDA06B00FFC48800FFC48800FFC48800C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100E5D9D900E5D9D900E5D9
      D900E5D9D900E5D9D900E5D9D900E5D9D900E5D9D900E5D9D900E5D9D900E5D9
      D900E5D9D900E5D9D900E5D9D900E5D9D900E5D9D900E5DADA00E5DADA00E5DA
      DA00E5DADA00E5DADA00E5DADA00E5DADA00E5DADA00E5DADA00E5DADA00E5DA
      DA00E5DADA005F424200A3A3A300EEEEEE006BB56700159E150039AE390048B6
      48006AC36900B9D9AD00DBCCB000E3CBB100E4CBB100E5CBB100E6CBB100E6CC
      B200E6CCB200E6CCB200E7CCB300E7CDB300E6CCB100E6CCB100DAB99200BB9F
      5E00BBD5A600B4DDAC00AFDEAB00ADDEAA00A5DAA30088CF860059BD580046B4
      46002DA82D000E880E0031433100B5B5B500EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B3B3B3002DCCF0002ECCF0002FCDF00032CDF00035CE
      F00038CEF1003BCFF10043D1F1004DD3F2005DD7F3006DDBF400464646008D8D
      8D00C7C7C700EC8335006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFAC
      5900FFAC5900F9A75600C7542E00FFCB9600FFCB9600FFCB9600EDA57500EDA5
      7500FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00EDA57500EDA57500FFCB9600FFCB9600FFCB9600C754
      2E00A1A1A100EBEBEB00F9F9F900000000009C717100EDE4E400EDE4E400EDE4
      E400EDE4E400EDE4E400EDE4E400EDE4E400EDE4E400EDE4E400EDE4E400EDE4
      E400EDE4E400EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5
      E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5
      E500EDE5E5005F424200EBEBEB00F4F4F400B4D8B400139B13002EA92E004DB6
      4D0054B8510090A65900C4965E00C9956000CB956000CC966000CD976000CE97
      6000CF986100CF986000CF986200CF996100CF996000CC996000A0A75A006CB9
      550057BF530053C1520052BE510052BE510052BC510051BB510050B9500049B4
      490021A321000F6F0F00666F6600D9D9D900EC833500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B3B3B30033CDF00035CEF0003ACFF10040D0
      F10046D1F1004BD3F20054D5F2005DD7F3006CDBF4007ADEF4008BE2F5004646
      46008D8D8D00B86629006F6F6F00DCDCDC0000000000F9F9F900C7542E00FFB3
      6700FFB36700F9AE6400C7542E00FFD4AA00FFD4AA00FFD4AA00EDAB8200EDAB
      8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EDAB8200EDAB8200FFD4AA00FFD4AA00FFD4AA00C754
      2E00A1A1A100EBEBEB00F9F9F90000000000FBFBFB009C717100F2ECEC00F2EC
      EC00F2ECEC00F2ECEC00F2ECEC00F2ECEC00F2ECEC00F2ECEC00F2ECEC00F2EC
      EC00F2ECEC00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2ED
      ED00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2EDED00F2ED
      ED009C717100ECECEC00F4F4F400FBFBFB00ECF2EC002AA12A001FA11F004DB4
      4B0077B15C00BB9D6500C99A6600CB9A6800CD9B6800CE9B6900CF9C6900CF9D
      6900D09D6900D19D6A00D19D6900D19D6900D19E6900D09E6900B9A365007AB8
      5E005EC15C005CC25B005BC15B005BC05B005ABF5A0059BE590057BB570040AF
      40001697160022582100A7A8A700F0F0F000EC833500FAA98600FAA98600FAA9
      8600FAA98600FAA98600FAA98600FAA98600FAA98600FAA98600FAA98600FAA9
      8600FAA98600FAA98600FAA98600FAA98600AF765E003FD0F10048D2F10051D4
      F20059D6F20060D7F30068D9F4006FDBF4007CDEF50088E1F50097E5F600A1E7
      F700442E240082481D0056565600DCDCDC0000000000F9F9F900C7542E00FFBA
      7500FFBA7500FDB87400C7542E00FFE6CD00FFE6CD00FFE6CD00EDB79A00EDB7
      9A00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00EDB79A00EDB79A00FFE6CD00FFE6CD00FFE6CD00C754
      2E00ECECEC00F6F6F600FDFDFD0000000000FEFEFE00FBFBFB009C7171009C71
      71009C7171009C7171009C7171009C7171009C7171009C7171009C7171009C71
      71009C7171009C7171009C7171009C7171009C7171009C7171009C7171009C71
      71009C7171009C7171009C7171009C7171009C7171009C7171009C7171009C71
      7100F1F1F100F6F6F600FBFBFB00FEFEFE00FCFCFC0093CA9300159B140046A9
      3C00A6A46500C89C6D00CB9D6D00CD9E6F00CE9E6F00CF9F7000D0A07000D1A1
      7000D2A17000D2A17100D2A17000D3A27100D2A17000D2A27000D0A16F00BDA7
      6E0081BB660065C4630063C3630062C2620061C1610060BF600058BA58002EA7
      2E00127C120064796400D9D9D900FBFBFB00EC833500FAAA8900FAAA8900FAAA
      8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA
      8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900AF77600054D5F2005FD7
      F30069DAF30070DBF40076DDF4007CDEF50088E1F50093E4F600A1E7F700AAEA
      F800B4ECF90040230E003D3D3D00B8B8B80000000000F9F9F900C7542E00FFC4
      8800FFC48800FEC38700E99D6900C7542E00FFE9D300FFE9D300EDB99E00EDB9
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EDB99E00EDB99E00FFE9D300FFE9D300C7542E00ECEC
      EC00F5F5F500FBFBFB00FEFEFE000000000000000000FEFEFE00FDFDFD00FBFB
      FB00FAFAFA00F9F9F900F9F9F900F4F4F400A7A18000E9E7E000E9E7E000E9E7
      E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7
      E000E9E7E000A7A180009F9F9F00E7E7E700F4F4F400F9F9F900F9F9F900FAFA
      FA00FBFBFB00FDFDFD00FEFEFE0000000000FEFEFE00EBF3EB0034A332005D8C
      2800BB966100C9A07400CDA17600CFA37700D0A47700D1A47800D2A57800D3A5
      7800D3A57800D4A57800D4A67800D4A57900D3A67800D2A57700D2A57700D0A6
      7700C1AA74008DBB6F006EC56C006CC46B0069C2690065C0650048B248001995
      19003D713D00B9BAB900F4F4F40000000000EC833500FAAD8D00FAAD8D00FAAD
      8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD
      8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00AF79620073DC
      F4007EDFF50085E0F5008BE2F60091E3F6009AE5F700A4E8F800B0EBF900B8ED
      F900BFEFFA00C2F0FA0027272700B8B8B80000000000F9F9F900C7542E00FFCB
      9600FFCB9600FFCB9600ECA47400E9A27300C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00EBEBEB00F6F6
      F600FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000E9E7DF00E9E7DF00E9E7
      DF00E9E7DF00E9E7DF00E9E7DF00E9E7DF00E9E7DF00E9E7DF00E9E7DF00E9E7
      DF00E9E7DF00A7A18000A1A1A100EBEBEB00F9F9F90000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00BDD8B8007679
      2200B27E4300C69C6E00CDA57B00D0A77E00D1A87F00D2A97F00D3A97F00D4AA
      8000D5AA8000D5AA8000D5AB8000D5AA8100D5AB8000D5AA8000D4AA7F00D4AA
      7F00D1AA7E00C5AD7E0095BC770076C5730070C36E0059B9590027A127001D77
      1D00949F9400E8E8E800FEFEFE0000000000EC833500FBB39400FBB29400FBB2
      9400FBB29400FBB29400FBB29400FBB29400FBB29400FBB29400FBB29400FBB2
      9400FBB29400FBB29400FBB29400FBB29400FBB29400FBB29400FBB29400B07C
      67008FE3F60098E5F7009FE7F700A5E8F800ADEAF800B5ECF900BEEFFA00C5F0
      FA00C9F2FB00CAF2FB0027272700C2C2C20000000000F9F9F900C7542E00FFD4
      AA00FFD4AA00FFD4AA00EDAB8200ECAA8100FDFDFD00FBFBFB00FAFAFA00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900E7A67E00E7A6
      7E00F9CFA600F9CFA600F9CFA600C2522C009D9D9D00E6E6E600F5F5F500FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000E8E6DE00E8E6DE00E8E6
      DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6
      DE00E8E6DE00A7A18000A1A1A100EBEBEB00F9F9F90000000000000000000000
      0000000000000000000000000000000000000000000000000000F9FBF900B5B8
      8F0094712700B7824900CAA07500D0AA8300D3AC8600D4AD8600D5AE8700D6AF
      8800D6AF8700D7AF8800D7AF8700D7AF8800D7AF8700D6AF8800D6AF8700D4AE
      8800D3AE8600D2AD8500C7B083009DBA7C0065BB610030A52F001C851C00819B
      8100DEDEDE00FBFBFB000000000000000000EC833500FBB89C00FBB89C00FBB8
      9C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB8
      9C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB8
      9C00B0816D00AEEAF800B4ECF900BCEEF900C2F0FA00C8F1FA00CEF3FB00D2F4
      FB00D3F4FB00D3F4FB002D2D2D00C2C2C20000000000FDFDFD00C7542E00FFE6
      CD00FFE6CD00FFE6CD00EDB79A00EDB79A00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00EDB79A00EDB7
      9A00FFE6CD00FFE6CD00FFE6CD00C7542E00ECECEC00F6F6F600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000EBE9E200EBE9E200EBE9
      E200EBE9E200EBE9E200EBE9E200EBE9E200EBE9E200EBE9E200EBE9E200EBE9
      E200EBE9E200A7A18000A1A1A100EBEBEB00F9F9F90000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F6
      F400A5AB7800A16D2900B8824A00CAA07600D2AD8900D5B18D00D6B28E00D7B3
      8F00D7B48F00D8B49000D8B49000D8B49000D8B49000D8B49000D8B48F00D7B2
      8F00D6B28E00D4B18B00CEAC8500BB9C6B006A913500238A1E0083A28300DCDC
      DC00F9F9F900000000000000000000000000EC833500FCBDA200FCBDA200FCBD
      A200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBD
      A200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBD
      A200FCBDA200B0847100C4F0FA00CBF2FB00D1F3FB00D5F4FB00D8F5FC00DAF6
      FC00DAF6FC00D9F6FC004D4D4D00E0E0E00000000000FEFEFE00FBFBFB00C754
      2E00FFE9D300FFE9D300EDB99E00EDB99E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDB99E00EDB9
      9E00FFE9D300FFE9D300C7542E00ECECEC00F5F5F500FBFBFB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900A7A18000F0EEE900F0EEE900EFEE
      E800EFEEE800EFEEE800EFEEE800EFEEE800EFEEE800EFEEE800EFEEE800F0EE
      E900F0EEE900A7A18000A1A1A100EBEBEB00F9F9F90000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F9F7F500C6B49300A96A2A00B1763900C1916100CFA78100D6B49200D8B7
      9500D8B89600D9B89600D9B89600D9B89700D9B89600D9B89600D8B79600D7B6
      9400D4B28F00CBA27900BB875200A97031008B713800A2A89200E0E1E000F9F9
      F90000000000000000000000000000000000EC833500FCC0A600FCC0A600FCC0
      A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0
      A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0A600FCC0
      A600FCC0A600FCC0A600B0867400D8F5FC00DBF6FC00DDF7FC00DEF7FC00DFF7
      FC00DFF7FC009B56220082828200E9E9E9000000000000000000FEFEFE00FBFB
      FB00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00F1F1F100F6F6F600FBFBFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00A7A18000F5F4F000F5F4F000F5F4
      F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4
      F000F5F4F000A7A18000A5A5A500EDEDED00FAFAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBF9F900DECDBC00AF794100AA6A2900B3783C00C18F5E00CFA7
      8000D5B39200D8B79600D9B89800D9B99900D8B89800D8B69500D5B29000CDA3
      7800BD895400AF723400A2662800A8856000CBC3BA00ECECEC00FCFCFC000000
      000000000000000000000000000000000000EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500A55B2500DFF7FC00DFF7FC00DFF7FC00DFF7
      FC009B562200EC833500ECECEC00F2F2F200000000000000000000000000FEFE
      FE00FDFDFD00FBFBFB00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900FAFAFA00FBFBFB00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00A7A18000FAF9F700FAF9F700FAF9
      F800FAF9F800FAF9F800FAF9F800FAF9F800FAF9F800FAF9F800FAF9F800FAF9
      F700FAF9F700A7A18000A9A9A900F2F2F200FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFC00F4F0ED00D1B69C00AE753B00AB6A2800AF6F
      2F00B77C4100BF895300C3915F00C4946300C28F5D00BC864F00B4783C00AB6C
      2C00A66A2D00AB805600C8BAAC00E3E1DD00F6F6F600FEFEFE00000000000000
      000000000000000000000000000000000000FBFBFB00F9F9F900F7F7F700F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F600F6F6F600B7B7B700B7B7B700B7B7B700B7B7
      B700F6F6F600F7F7F700F9F9F900FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00A7A18000A7A18000A7A18000A7A1
      8000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000A7A1
      8000A7A18000A7A18000F0F0F000F6F6F600FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFCFC00F3F0ED00DCCCBB00C099
      7300B17C4600A96D3100A8682800A8692700A7692B00A8703700AE825400BDA3
      8800D2C6B900E7E5E300F6F6F600FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F1F1F100E0DFE000D5D4D500D2D1D200D2D1D200D2D1D200D2D1D200D2D1
      D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1
      D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D5D4
      D500E0DFE000F1F1F100FCFCFC000000000000000000FEFEFE00FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FBFBFB00F6F6
      F600F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3
      F300F6F6F600FBFBFB00FEFEFE00000000000000000000000000FEFEFE00F9F9
      F900ECEBEC00DAD8DA00D0CDD000CDCACD00CDCACD00CDCACD00CDCACD00CDCA
      CD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00CDCA
      CD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00CDCACD00D0CD
      D000DBD8DB00ECEBEC00F9F9F900FEFEFE00000000000000000000000000FAFA
      FA00E7E7E700CBCACB00B9B7B900B4B2B400B4B2B400B4B2B400B4B2B400B4B2
      B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2
      B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B4B2B400B9B7
      B900CBCACB00E7E7E700FAFAFA0000000000FEFEFE00FCFCFC00FAFAFA00F8F8
      F800F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F8F8F800F9F9F900FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00F8F8F800F6F6F600F5F5F500F5F5F500F3F3F300EAEAEA00DBDB
      DB00D2D2D200CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00D2D2
      D200DEDEDE00F0F0F000FCFCFC000000000000000000FEFEFE00FBFBFB00EEED
      EE00D5D3D500BCB8BC00AFAAAF00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ABA7
      AB00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ABA7
      AB00ABA7AB00ABA7AB00ABA7AB00ABA7AB00ACA7AC00ACA7AC00ACA7AC00B0AA
      B000BDB8BD00D6D3D600EDECED00F9F9F900000000000000000000000000F8F8
      F800DD965F00DE976000DE986200DE986200DE996400DE996400DF9B6700DF9B
      6700DF9B6700DF9B6700DF9B6800DF9B6800DF9B6800DF9B6800DF9B6800DF9B
      6800DF9B6700DF9B6700DE996400DE996400DD986200DC976200DC955F00DA93
      5F00BEBCBE00E1E1E100F8F8F80000000000FDFDFD00FAFAFA00B1B1B100ADAD
      AD00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACACAC00ACAC
      AC00ACACAC00ACACAC00ADADAD00AFAFAF00EAEAEA00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FAFA
      FA00EEEEEE00DEDEDE00D5D5D500D2D2D200D2D2D200CFCFCF00C1C1C100ACAC
      AC009E9E9E009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00A1A1
      A100BABABA00E0E0E000F8F8F8000000000000000000FDFDFD00F1F1F100D8D6
      D800A7471C00A9491B00AA4A1B00AB4A1A00AB4A1A00AC4B1A00AC4B1A00AC4B
      1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B
      1A00AC4B1A00AC4B1A00AC4B1A00AB4A1A00AA4A1B00A9491B00A6471C00A244
      1E00A19BA100B9B4B900D6D3D600EBEAEB00000000000000000000000000F8F8
      F800E29B6000DDD8DD00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9
      DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9
      DE00DED9DE00E0DBE000E0DBE000DFDADF00DED9DE00DCD6DC00DAD3DA00DB94
      5F00B9B7B900E0DFE000F8F8F80000000000FDFDFD002199C6002199C6002199
      C6002199C6002199C6002199C6002199C6002199C6002199C6002199C6002199
      C6002199C6002199C6002199C6002199C6002199C6002199C6002199C6002199
      C6002199C6002198C5002198C5008CA5AF00D8D8D800FAFAFA00FDFDFD000000
      00000000000000000000000000000000000000000000FEFEFE00FAFAFA00EAEA
      EA00CDCDCD00AEAEAE009E9E9E009B9B9B009B9B9B0098989800F1A96300F1A9
      6400F2AE6C00F2AE6C00F2AE6D00F2AE6D00F2AE6D00F2AE6D00F2AE6D00F2AE
      6D00F2AE6C00F2AE6C00F1AC6900F1AC6900F1AB6700F1AB6700F1A96400F1A9
      6400A1A1A100D5D5D500F6F6F6000000000000000000F9F9F900E5E4E500AB4A
      1B00D27C3E00D6803F00D8824000D8834000D9844000B35018009E969E009E96
      9E00A49DA400B0A8B000BFB7BF00CEC6CE00DCD4DC00E2DAE200E5DEE500E8E1
      E800E8E1E800E8E1E800B3501800D8834000D7814000D47F4000D07B3F00CA75
      3E00A3451D00A29BA200BDB8BD00DBD8DB00000000000000000000000000F8F8
      F800EDA46100E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7
      E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7E800E8E7
      E800E8E7E800EAE9EA00EAE9EA00E9E8E900E8E7E800E5E3E500DCD6DC00DC94
      5D00B9B7B900E0DFE000F8F8F80000000000FCFCFC00229BC700229BC70051CE
      E90051CEE90056CEE9005DCFE90069D1E90072D2E90079D3E90079D3E9007BD3
      E9007CD3E9007CD3E9007CD3E9007CD3E9007BD3E90079D3E90079D3E90076D2
      E80073D0E8006FCFE6002198C5006E9FB200ACACAC00EBEBEB00FCFCFC00FEFE
      FE000000000000000000000000000000000000000000FCFCFC00EEEEEE00CDCD
      CD002797B8002B99B9002F9BBB00339DBC00379FBD003BA1BF00F1A96300EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F1A9
      64009B9B9B00D2D2D200F5F5F5000000000000000000F8F8F800AD4C1A00D780
      3D00DC843D00DE883E00E1893F00E18A4000E18B4000B9541600A39EA3004F4B
      4F004E4A4E004F4B4F00C5C1C500D5D1D500E4DFE400EBE6EB00EEEAEE00F1ED
      F100F1EDF100F1EDF100B9541600E18A4000E0894000DD863F00D8823E00D27C
      3E00CB763D00A2441E00B0AAB000D0CDD000000000000000000000000000F8F8
      F800EFA55F00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E7E6E700DDD7DD00DC94
      5D00B9B7B900E0DFE000F8F8F80000000000FCFCFC00229CC90056D2EB00239D
      C90052D1EB0058D2EB005FD3EB006AD4EB0074D5EB007BD6EB007DD6EB007FD7
      EB0080D7EB0080D7EB0080D7EB0080D7EB007FD7EB007DD5EB007BD5EB0077D5
      EA0074D3EA006FD2E9005AC2DF002198C5008FA5AD00DADADA00FAFAFA00FDFD
      FD000000000000000000000000000000000000000000F8F8F800DEDEDE002496
      B70028CEFF002DD0FF0031D0FF0035D1FF0039D2FF003CD3FF00F1A76000EEEE
      EE00F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600EEEEEE00F1A8
      61009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700B3501800DE86
      3C00E38A3D00E58D3E00E78F3F00E78F4000E7904000BE571400A7A4A700403D
      4000403D4000403D4000CAC8CA00DBD9DB00EAE8EA00F1EFF100F5F3F500F8F6
      F800F8F6F800F8F6F800BE571400E78F3F00E68E3F00E38C3E00DF873D00D882
      3D00D07A3C00A6471C00ACA7AC00CDCACD00000000000000000000000000F8F8
      F800F0A65E00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EAEAEA00E9E8E900DDD8DD00DC93
      5A00B9B7B900E0DFE000F8F8F80000000000FCFCFC00239FCB0059D5EE00239F
      CB0055D4EE005AD5EE0061D6EE006DD8EE0076D9EE007DD9EE007FD9EE0081DA
      EE0083DAEE0083DAEE0083DAEE0083DAEE0081DAEE007FD9ED007DD9ED0079D8
      ED0074D6EC0070D4EB0069CFE8002199C60073A0B200ACACAC00EDEDED00FCFC
      FC00FEFEFE0000000000000000000000000000000000F6F6F6002194B60025CE
      FF0029CFFF002ED0FF0032D1FF0037D2FF003AD2FF003ED3FF00F0A65E00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F0A6
      5E009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700B7531600E48A
      3B00E78D3C00E9903D00EB913E00EB923F00EB923F00C0591300A9A8A9004241
      42004342430042414200CDCCCD00DEDDDE00EEEDEE00F5F4F500F9F8F900FCFB
      FC00FCFBFC00FCFBFC00C0591300EB923F00EA913E00E78E3D00E38A3C00DC84
      3C00D47D3B00A9491B00ACA7AC00CDCACD00000000000000000000000000F8F8
      F800F0A55D00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EAEAEA00E8E7E800DDD8DD00DC93
      5A00B9B7B900E0DFE000F8F8F80000000000FCFCFC0024A1CD005CD9F1005AD9
      F10024A1CD005DD9F10062DAF1006CDBF10074DCF1007CDEF10080DEF10083DE
      F10084DEF10084DEF10084DEF10084DEF10083DEF1007FDDF0007DDCF00079DB
      EF0074D9EE006FD7ED006BD5EC0053C2DF002199C50094A5AC00DDDDDD00FAFA
      FA00FDFDFD0000000000000000000000000000000000F5F5F5002194B60026CE
      FF002ACFFF002FD0FF0033D1FF0037D2FF003BD3FF003FD4FF00F0A55D00EDED
      ED00F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600EDEDED00F0A6
      5E009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700B9541600E68C
      3A00EA903B00EB913C00EC923D00ED933E00ED943F00C25A1300AAAAAA00403F
      4000403F4000403F4000CFCFCF00E0E0E000F0F0F000F7F7F700FBFBFB00FEFE
      FE00FEFEFE00FEFEFE00C25A1300ED933E00EB923D00E9903C00E68C3B00DE86
      3B00D67F3A00AA4A1B00ACA7AC00CDCACD00000000000000000000000000F8F8
      F800F0A45A00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E8E7E800DDD8DD00DC91
      5600B9B7B900E0DFE000F8F8F80000000000FCFCFC0025A4CF005FDDF4005EDD
      F40025A4CF005EDDF40063DEF4006BE0F40072E1F4007BE1F4007FE1F40083E2
      F40084E2F40085E2F40085E2F40083E2F40082E2F4007FE0F3007CDFF30078DF
      F20074DCF1006EDAF00069D7EE005ED0E800219AC60078A1B100ACACAC00F0F0
      F000FCFCFC00FEFEFE00000000000000000000000000F5F5F5002295B70026CE
      FF002BCFFF002FD0FF0033D1FF0038D2FF003BD3FF003FD4FF00F0A45A00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00F0A3
      59009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB551500E78D
      3900EA8F3A00EB913B00EE933C00EE943C00EE943D00C35B1300ABABAB005151
      51005050500051515100D0D0D000E1E1E100F1F1F100F8F8F800FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00C35B1300EE943D00EC923C00EA903B00E68D3A00E087
      3A00D7803900AB4A1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A35800EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E8E7E800DDD8DD00DC91
      5600B9B7B900E0DFE000F8F8F80000000000FCFCFC0026A7D10060E1F7005FE1
      F7005EE0F70026A7D10060E1F70067E2F7006DE3F70075E4F7007AE4F7007EE5
      F70080E5F70081E5F70081E5F70080E5F7007EE5F7007CE4F60079E3F60075E1
      F50070DFF4006BDDF20065D9F00060D6EE0049C0E0002199C60099A6AC00DFDF
      DF00FAFAFA00FEFEFE00000000000000000000000000F5F5F5002194B60026CE
      FF002ACFFF002ED0FF0033D1FF0037D2FF003AD2FF003ED3FF00F0A35800EDED
      ED00F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600EDEDED00F0A3
      59009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E88D
      3800EA903900EC913900ED933A00EE933B00EE933C00C35B1300ABABAB00ABAB
      AB00B2B2B200BFBFBF00D0D0D000E1E1E100F1F1F100F8F8F800FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00C35B1300EE933B00ED923A00EA8F3A00E68C3900E087
      3800D87F3800AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A25600EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E7E6E700DCD7DC00DC8F
      5100B9B7B900E0DFE000F8F8F80000000000FCFCFC0027A9D2005FE4F9005FE4
      F9005EE4F90027A9D2005EE4F90064E4F9006AE5F90070E6F90076E6F9007BE7
      F9007CE7F9007DE8F9007DE8F9007CE7F9007AE7F90079E7F90076E5F80071E4
      F7006DE1F60067DFF40062DBF2005CD8F00051CDE800219AC6007CA1AF00ACAC
      AC00F2F2F200FCFCFC00FEFEFE000000000000000000F5F5F5002194B60025CE
      FF0029CFFF002DD0FF0031D0FF0035D1FF0038D2FF003CD3FF00F0A25700EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00F0A1
      54009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E88C
      3700EA8F3700EC903800ED923900ED923900ED923A00C35B1300C35B1300C35B
      1300C35B1300C35B1300C35B1300C35B1300C35B1300C35B1300C35B1300C35B
      1300C35B1300C35B1300C35B1300ED923900EC903900EA8E3800E68B3700E086
      3700D87F3800AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A15500EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E7E6E700DCD6DC00DC8F
      5100B9B7B900E0DFE000F8F8F80000000000FCFCFC0028AAD3005AE5FB005AE5
      FB005AE5FB005AE5FB0028AAD40060E6FB0065E7FB006BE8FB0070E8FB0074E9
      FB0075E9FB0076E9FB0076E9FB0075E8FB0074E8FB0071E8FA006EE6FA006BE5
      F90066E2F80061E0F6005CDDF40056DAF20053D5EF003EBEDF00219AC6009EA8
      AB00E2E2E200FAFAFA00FEFEFE000000000000000000F5F5F5001F93B60023CD
      FF0027CEFF002BCFFF002ED0FF0032D1FF0035D1FF0038D2FF00F0A25700EEEE
      EE00F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600EEEEEE00F0A1
      54009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E88C
      3500EA8E3500EC8F3600ED913700ED913800ED913800ED8E3200ED8F3400ED8F
      3400ED903500ED903500ED903600ED903600ED913700ED913700ED913700ED91
      3700ED8F3400ED8F3400ED8E3200ED903700EC8F3700EA8D3600E68A3600E085
      3500D87F3600AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A15500EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E9E9E900E6E5E600DCD6DC00DC8F
      5100B9B7B900E0DFE000F8F8F80000000000FCFCFC0028ABD40055E7FC0055E7
      FC0055E7FC0056E7FC0028ABD4005EE8FC0063E8FC0067E8FC006AE9FC006DE9
      FC006EE9FC006EE9FC006EE9FC006EE9FC006DE9FC006BE9FC0068E7FB0065E6
      FA0061E4F9005CE2F80058DEF60052DBF3004ED7F10044CAE800219AC60081A2
      AE00ADADAD00F5F5F500FCFCFC00FEFEFE0000000000F5F5F5001D92B50020CD
      FF0024CEFF0027CEFF002BCFFF002ED0FF0031D0FF0034D1FF00F0A35800EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0A3
      59009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E88A
      3300EA8D3400EC8E3400ED8F3500ED903500ED903600ED8E3200ED8F3400ED8F
      3400ED903500ED903500ED903600ED903600ED913700ED913700ED913700ED91
      3700ED8F3400ED8F3400ED8E3200ED8F3500EC8E3500EA8C3400E6883300E083
      3300D87D3400AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A25600ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EAEAEA00E7E6E700DCD6DC00DC8F
      5100B9B7B900E0DFE000F8F8F80000000000FCFCFC0028ACD50053E6FD0053E6
      FD0054E6FD0056E6FD0058E7FD0028ACD50061E8FD0064E9FD0065E9FD0066E9
      FD0067E9FD0067E9FD0067E9FD0066E9FD0066E9FD0064E9FD0061E8FC005FE6
      FB005CE5FA0058E2F90054E0F7004FDCF5004CD8F20049D4EF0038BBDE00219A
      C700A3A8AB00E4E4E400FAFAFA00FEFEFE0000000000F5F5F5001A91B4001DCC
      FF0020CDFF0023CDFF0026CEFF0029CFFF002CCFFF002ED0FF00F0A45B00F0F0
      F000F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F0F0F000F0A3
      59009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E889
      3100EA8C3200EC8D3300ED8E3300ED8F3300ED8F3400ED8E3200ED8F3400ED8F
      3400ED903500ED903500ED903600ED903600ED913700ED913700ED913700ED91
      3700ED8F3400ED8F3400ED8E3200ED8E3300EC8D3300EA8B3200E6883200E083
      3200D87D3300AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A35800EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00E7E6E700DCD7DC00DC91
      5600B9B7B900E0DFE000F8F8F80000000000FCFCFC0028ACD50054E7FD0055E7
      FD0055E7FD0058E8FD005AE8FD0028ACD5005FE9FD0061E9FD0062E9FD0062E9
      FD0063E9FD0063E9FD0063E9FD0062E9FD0062E9FD0060E9FD005FE8FD005CE8
      FC005AE5FB0056E3FA0053E1F8004FDDF6004CDAF3004AD6F10041C8E600219A
      C60087A4AF00AFAFAF00F8F8F800FDFDFD0000000000F5F5F500168FB30019CB
      FF001CCCFF001ECCFF0021CDFF0023CDFF0026CEFF0028CEFF00F0A76000F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0A7
      60009B9B9B00D2D2D200F5F5F5000000000000000000F7F7F700BB561500E889
      3000EA8C3100EC8D3200ED8E3200ED8E3200ED8E3200ED8E3200ED8F3400ED8F
      3400ED903500ED903500ED903600ED903600ED913700ED913700ED913700ED91
      3700ED8F3400ED8F3400ED8E3200ED8E3200EC8D3200EA8A3100E6883100E083
      3200D87C3200AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A45B00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00ECECEC00E8E7E800DCD7DC00DC91
      5600B9B7B900E0DFE000F8F8F80000000000FCFCFC0029ADD6005DE9FD005EE9
      FD005FE9FD0061EAFD0063EAFD0066EAFD0029ADD60068EBFE0067EBFE0067EB
      FE0067EBFE0067EBFE0067EBFE0067EBFE0065EAFD0064EAFD0064EAFD0062E8
      FD005FE7FC005BE6FB0056E3F90052E0F7004FDCF5004DD8F2004CD5EF003ABA
      DC00219AC700AEB0B000EBEBEB00FDFDFD0000000000F5F5F500128DB1001FCC
      FD0022CDFE0024CDFE0027CEFE0029CEFE002ACEFE002CCFFE00F0AA6600F2F2
      F200F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F2F2F200F0A7
      60009E9E9E00D4D4D400F6F6F6000000000000000000F7F7F700BB561500E88A
      3200EA8B3100EC8C3100ED8D3100ED8D3100ED8D3100ED8E3200ED8F3400ED8F
      3400ED903500ED903500ED903600ED903600ED913700ED913700ED913700ED91
      3700ED8F3400ED8F3400ED8E3200ED8D3100EC8C3100EA8A3000E6883200E083
      3200D87D3300AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A65D00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EDEDED00E8E7E800DDD8DD00DC94
      5C00B9B7B900E0DFE000F8F8F80000000000FCFCFC0029ADD60068EAFD0069EA
      FD006AEAFD006BEBFD006EEBFD0071ECFD0029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60028ACD50028ACD50028AC
      D50028ABD40028AAD40027A9D30027A7D10026A6D00025A4CE0024A1CC00229D
      C900219AC600CBE5EE00FCFCFC00FEFEFE0000000000F5F5F5000F8CB00028CE
      FE002ACEFE002BCFFE002DCFFE002FD0FE0030D0FE0031D0FE00F1AE6D00F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F1B1
      7200AEAEAE00DEDEDE00F8F8F8000000000000000000F7F7F700BB561500E88C
      3600EA8E3600EC8F3600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFBFC00E6883300E083
      3300D87D3400AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A65F00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EEEEEE00E9E8E900DED9DE00DC94
      5C00B9B7B900E0DFE000F8F8F80000000000FCFCFC0029ADD60079ECFD007AEC
      FD007AEDFD007BEDFD007DEDFD0080EEFD0083EEFD0084EEFD0085EEFE0085EE
      FE0085EEFE0084EEFE0084EEFE0084EEFD0084EEFD0083EDFC0082EDFC0081EC
      FC007FEBFB007CE9FA0027A9D300ABABAB00F6F6F600FBFBFB00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FEFEFE000000000000000000F5F5F5000B8AAF0032D0
      FE0032D1FE0033D1FE0035D1FE0036D1FE0036D1FD0037D2FE00F1B27300F4F4
      F400F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F4F4F400F2B17300F2B17300F2B17300F1B17200F1B17200F1B17200F1B1
      7200CCCCCC00EEEEEE00FCFCFC000000000000000000F7F7F700BB561500E88D
      3B00EA903B00EC913B00FFFFFF00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300FCFBFC00E68A3700E085
      3700D87F3800AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A86100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EEEEEE00E9E8E900DED9DE00DC94
      5C00B9B7B900E0DFE000F8F8F80000000000FDFDFD0029ADD60088EEFD0088EE
      FD0089EEFD0089EFFD008BEFFD008DEFFD008FEFFD0092F0FD0093F0FE0093F0
      FE0092F0FE0091F0FD0090EFFD008EEEFC008DEEFC008DEEFC008DEEFC008BED
      FC0089ECFB0088EAFA0027A9D300ADADAD00F8F8F800FDFDFD00000000000000
      00000000000000000000000000000000000000000000F5F5F5000888AE003BD2
      FE003BD3FE003CD3FE003DD3FE003ED3FE003ED3FD003FD4FE00F2B67B00F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F3B77E00F7E0CE00F7E0CE00F7E0CE00F7E0CE00F4BE8900BFBF
      BF00E7E7E700FAFAFA00FEFEFE000000000000000000F7F7F700BB561500E991
      4100EB944100ED954100FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FBFAFB00E68C3B00E087
      3B00D8803B00AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0A86300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EEEEEE00E9E8E900DED9DE00DC94
      5C00B9B7B900E0DFE000F8F8F80000000000FDFDFD0029ADD60099F1FD009BF1
      FD009DF1FD009EF1FE009EF1FE009FF1FE00A0F2FD00A0F2FE00A0F2FE00A0F2
      FE009DF0FD0099F0FC0096EFFC0093EFFC0092EFFC0091EEFC0091EEFC0090ED
      FB008EECFA008DEBF90027A9D200B1B1B100FAFAFA00FEFEFE00000000000000
      00000000000000000000000000000000000000000000F5F5F5000687AD0045D5
      FE0046D5FE0046D5FE0046D5FE0047D5FE0048D5FE0048D5FE00F3B88000F6F6
      F600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F6F6F600F3B77E00F7E0CE00F7E0CE00F7E0CE00F2B77D0099999900CFCF
      CF00F4F4F400FEFEFE00000000000000000000000000F7F7F700BB561500E994
      4600EB974600ED984600FEFEFE00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300FBFAFB00E7904100E18B
      4100D9844100AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0AA6700F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EAE9EA00DFDADF00DC98
      6300B9B7B900E0DFE000F8F8F80000000000FEFEFE0028ACD500A4F1FC00A9F3
      FD00ACF3FE00AFF3FE00AFF4FE00B0F4FE00B0F4FE00B1F4FE00AFF3FD00ADF3
      FD00A9F2FD00A4F1FD0028ACD50028ACD50028ACD50028ABD40028ABD40028AA
      D40027AAD30027A9D20027A7D100FAFAFA00FCFCFC00FDFDFD00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD0000000000F5F5F5000486AD0050D7
      FE0051D7FE0051D7FE0052D7FE0052D7FE0052D7FE0052D8FE00F3BC8700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F4BE8900F7E0CE00F7E0CE00F4BE89000486AD009B9B9B00D2D2
      D200F6F6F60000000000000000000000000000000000F7F7F700BB561500EA97
      4B00EC9A4B00EE9B4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFBFC00E7934600E18E
      4600D9874600AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F0AD6A00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100EFEFEF00EBEAEB00E0DBE000DC98
      6300BCBABC00E1E1E100F8F8F8000000000000000000FDFDFD0028ACD500B8F4
      FD00BBF4FD00BEF5FD00C0F5FD00C0F5FD00C0F5FD00C0F5FD00BFF5FD00BBF4
      FD00B7F3FD0028ABD400F6F6F600FAFAFA00FCFCFC00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FDFDFD00FCFCFC00FAFAFA00F8F8
      F800F7F7F700F7F7F700F8F8F800FAFAFA0000000000F5F5F5000285AC005CDA
      FE005CDAFE005CDAFE005CDAFE005DDAFE005DDAFE005DDAFE00F4BF8C00F8F8
      F800F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F8F8F800F4BE8900F7E0CE00F4BE89005CDAFE000285AC009B9B9B00D2D2
      D200F6F6F60000000000000000000000000000000000F7F7F700BB561500EA9A
      5000EC9D5000EE9E5000FFFFFF00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300FCFBFC00E8974D00E291
      4D00DA8A4C00AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F1B07000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F0F0F000EBEAEB00E0DBE000DD9D
      6C00C6C5C600E7E7E700FAFAFA00000000000000000000000000FEFEFE0028AC
      D500C5F6FD00C7F6FD00C8F6FD00C8F6FD00C8F6FD00C7F5FD00C6F5FD00C3F4
      FC0028ABD400F7F7F700FBFBFB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00000000000000000000000000FEFEFE00FBFBFB00B2B2B200AFAF
      AF00ADADAD00ACACAC00ABABAB00A9A9A90000000000F5F5F5000185AC0068DD
      FE0068DDFE0069DCFE0069DCFE0069DCFE0069DCFE0069DCFE00F5C29000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F5C59600F4BE890068DDFE0068DDFE000185AC009B9B9B00D2D2
      D200F6F6F60000000000000000000000000000000000F7F7F700BB561500EA9D
      5500ECA05500EEA15500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFBFC00E89A5300E294
      5200DA8D5100AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F1B27400F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F2F2F200F2B57900F1B17200F1B17200EFAF7100ECAC7000E2A26D00DC9C
      6C00DCDBDC00F2F2F200FDFDFD0000000000000000000000000000000000FEFE
      FE0028ACD500CEF6FD00CEF6FD00CEF6FD00CEF6FD00CDF5FC00CCF5FC0028AA
      D400F7F7F700FBFBFB00FEFEFE0000000000FEFEFE00FCFCFC00FBFBFB00FAFA
      FA00FBFBFB00FDFDFD000000000000000000FEFEFE0000960F00009511000094
      12000093130000911400008F1500A6A6A60000000000F5F5F5000085AC0076E0
      FF0076E0FE0076E0FE0076E0FE0076E0FE0076E0FE0076E0FE00F5C39300F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C5960076E0FE0076E0FE0076E0FF000085AC009B9B9B00D2D2
      D200F6F6F60000000000000000000000000000000000F7F7F700BB561500EBA2
      5F00EDA55F00EFA65F00FFFFFF00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3D300FCFBFC00E9A15E00E39B
      5D00DB935C00AC4B1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F2B67B00F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F3B77D00F7E0CE00F7E0CE00F5DECC00F2DACA00E3AC8200DAD9
      DA00F0F0F000FBFBFB0000000000000000000000000000000000000000000000
      0000FEFEFE0028ABD40028ABD40028ABD40028ABD40028AAD40028AAD300F9F9
      F900FBFBFB00FEFEFE000000000000000000FEFEFE00FBFBFB00B2B2B200B0B0
      B000F7F7F700FAFAFA00FCFCFC00FDFDFD00FCFCFC0000961000009512000094
      1200009313000092140000911500A4A4A40000000000F5F5F5000085AC0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF000085AC009B9B9B00D2D2
      D200F6F6F60000000000000000000000000000000000F7F7F700BB561500ECA9
      6B00EEAB6C00F0AD6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFBFC00EAA76B00E3A1
      6900DB986700AB4A1A00ABA7AB00CDCACD00000000000000000000000000F8F8
      F800F3B88000F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F6F6
      F600F6F6F600F3B98000F7E0CE00F6DFCD00F4DCCB00EEB88600D9D9D900F0F0
      F000FBFBFB000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FEFEFE00000000000000000000000000FEFEFE00007A0A00007A0B00AEAE
      AE00ADADAD00DEDEDE00F7F7F700F8F8F800F8F8F800F6F6F600DDDDDD000095
      1200009413000093130000911400A5A5A50000000000F6F6F6000085AC0090E6
      FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6
      FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6
      FF0090E6FF0090E6FF0090E6FF0090E6FF0090E6FF000085AC009E9E9E00D4D4
      D400F7F7F70000000000000000000000000000000000F8F8F800BB551500EDB2
      7D00F0B57E00F1B67E00FEFEFE00D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D2D2D200FBFAFB00EBB07C00E4A9
      7A00DCA07700AA4A1B00AFAAAF00D0CDD000000000000000000000000000F8F8
      F800F3BC8700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F4BD8700F6DFCD00F4DDCC00EFB88600D9D9D900F0F0F000FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000790C00007B0D00007D
      0E0071737600B6B6B600BEBEBE00C0C0C000C0C0C0007D7F8200009611000096
      1100009512000095120000931300A7A7A70000000000F8F8F8000085AC009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF000085AC00AEAEAE00DEDE
      DE00F9F9F90000000000000000000000000000000000F9F9F900B9541600ECB8
      8900F0BB8A00F1BD8B00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FBFBFB00F9F8F900EBB68800E4AE
      8500DBA58100A9491B00BCB8BC00DAD8DA00000000000000000000000000F8F8
      F800F4BF8C00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F3BE8B00F4DDCC00EFB88600D9D9D900F0F0F000FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00007B0F00007E
      1000176D2400296235002C6338002D663900296A350017782400009710000097
      1000F6F6F6000096100000941100ABABAB0000000000FCFCFC000085AC00AAEC
      FF00AAECFF00AAECFF00AAECFF00AAECFF00DD761400DD761400DD761400DD76
      1400DD761400DD761400DD761400DD761400DD761400DD761400DD761400DD76
      1400AAECFF00AAECFF00AAECFF00AAECFF00AAECFF000085AC00CDCDCD00EEEE
      EE00FCFCFC0000000000000000000000000000000000FDFDFD00B7531600EBBA
      9200EEBE9300F0C09400FBFAFB00D2D1D200D2D1D200D2D1D200D2D1D200D2D1
      D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1
      D200D2D1D200D2D1D200D2D1D200D1D0D100D0CFD000F7F5F700E9B89100E1B0
      8D00D8A68900A7471C00D5D3D500EBEAEB00000000000000000000000000FAFA
      FA00F5C29000F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F8F8F800F2BF8F00EFB88600DBDBDB00F0F0F000FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00007F
      11000082110000871100008B110000901100009310000096100000970F00E7E7
      E700FAFAFA0000960F0000960F00FBFBFB0000000000FEFEFE00FAFAFA000085
      AC00AAECFF00B7EEFF00B7EEFF00B7EEFF00DD761400C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000DD76
      1400B7EEFF00B7EEFF00AAECFF00AAECFF000085AC00CDCDCD00EAEAEA00FAFA
      FA00FEFEFE0000000000000000000000000000000000FEFEFE00FBFBFB00B853
      1600ECBC9500EEBF9600F9F7F900F9F7F900F9F8F900F9F8F900F9F8F900F9F8
      F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8F900F9F8
      F900F9F8F900F9F8F900F9F7F900F9F7F900F7F5F700F3F0F300E6B59200DEAD
      8E00AB4A1B00D8D6D800EEEDEE00F9F9F900000000000000000000000000FDFD
      FD00F5C39300F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F4C4
      9500F2C29400F0BD9000E7E7E700F3F3F300FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEDD
      C2008DC394005CAB660027903400279134005BAA64008BC29100BCDCBF00FCFC
      FC00FDFDFD00FEFEFE00FEFEFE00FEFEFE000000000000000000FEFEFE00FAFA
      FA000085AC000085AC000085AC000085AC00DD761400DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DD76
      14000085AC000085AC000085AC000085AC00DEDEDE00EEEEEE00FAFAFA00FEFE
      FE0000000000000000000000000000000000000000000000000000000000FBFB
      FB00B7531600B9541600BB551500BB561500BB561500BB561500BB561500BB56
      1500BB561500BB561500BB561500BB561500BB561500BB561500BB561500BB56
      1500BB561500BB561500BB561500BB551500BA541600B7531600B3501800AD4C
      1A00E5E4E500F1F1F100FBFBFB00FEFEFE000000000000000000000000000000
      0000FDFDFD00FAFAFA00F9F9F900F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F9F9F900FAFAFA00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFE
      FE0000000000000000000000000000000000000000000000000000000000FEFE
      FE00FCFCFC00F8F8F800F6F6F600F5F5F500F3F3F300DD761400DD761400DD76
      1400DD761400DD761400DD761400DD761400DD761400DD761400DD761400DBDB
      DB00EAEAEA00F3F3F300F5F5F500F6F6F600F8F8F800FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00F8F8F800F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F8F8
      F800FAFAFA00FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00F6F6F600F3F3
      F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F3F3F300F6F6
      F600FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FCFCFC00F5F5F500EBEB
      EB00DBDBDB00CACACA00BBBBBB00B3B3B300B0B0B000B3B3B300BBBBBB00CACA
      CA00DBDBDB00EBEBEB00F5F5F500FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F2F2F200E6E5
      E600E2E1E200ECEBEC00F7F7F700FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F9F9F900F0F0F000E6E6
      E600E2E2E200E6E6E600F0F0F000F9F9F900FDFDFD00FDFDFD00F9F9F900F0F0
      F000E6E6E600E2E2E200E6E6E600F0F0F000F9F9F900FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F8F8F800ECECEC00D7D7D700C0C0
      C000A8A8A8009191910080808000767676007373730076767600808080009191
      9100A7A7A700C0C0C000D7D7D700EBEBEB00F8F8F800FDFDFD00000000000000
      000000000000000000000000000000000000FAFAFA00E8E7E800CAC8CA00B8B5
      B800B3B0B300B3B0B300B3B0B300B3B0B300B3B0B300B3B0B300B3B0B300B3B0
      B300B3B0B300B3B0B300B3B0B300B3B0B300B1AEB100ABA8AB009B979B008884
      8800847F8400908C9000A4A0A400B0ACB000B9B5B900CBC8CB00E8E7E800FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FAFAFA00EFEFEF00E2E2E200AAAA
      AA0080808000A9A9A900E0E0E000EEEEEE00F7F7F700F7F7F700EEEEEE00E0E0
      E000A9A9A90080808000AAAAAA00E2E2E200EFEFEF00FAFAFA00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F2F2F200DDDDDD00BFBFBF009B9B9B00897C
      6F0099785900A87D5400B5845400B9855500B4825300A3774E008B6A4B00695C
      5000636363007B7B7B009B9B9B00BFBFBF00DDDDDD00F2F2F200FCFCFC000000
      000000000000000000000000000000000000F7F7F700D7D6D700A7A4A7008884
      88007F7B7F007F7B7F007F7B7F007F7B7F007F7B7F007F7B7F007F7B7F007F7B
      7F007F7B7F007F7B7F007F7B7F007F7B7F007C787C00726E7200130BE500130B
      E500322A91005A545A006C676C007B757B0089838900A8A4A800D8D6D800F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100F2F2F200CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CCCCCC00E5E5E500F8F8F8000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F3F3F300E3E3E300A77E5800C77D
      3600A17953007C7C7C0086868600DFDFDF00EAEAEA00EAEAEA00DFDFDF00A77F
      5900C77E3800A07750007C7C7C0089898900E3E3E300F3F3F300FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FAFAFA00EDEDED00CFCFCF00A5A4A3009E806300C2895200D697
      5B00D79A5F00D89B6200D99D6500D99E6500D99D6500D89C6300D79A6000D697
      5B00BE844E007E604300575656007B7B7B00A5A5A500CFCFCF00EDEDED00FAFA
      FA00FEFEFE00000000000000000000000000F5F5F500DA935E00DB945F00DB96
      6200DC966200DC976400DC976400DD9A6600DD9A6600DD9A6600DD9A6600DD9A
      6700DD9A6700DD9A6700DE9A6800DD996700D49463006C499A00120BEC00120B
      EB00120BEA0085584600A66F4C00BF7E5500CB855B00918C9100CECBCE00F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272720078777700737272007372
      7200737272007372720073727200737272007372720073727200737272007372
      7200737272007372720073727200737272007372720073727200737272007372
      72007372720075757500B7B7B700F7F7F7000000000000000000000000000000
      0000000000000000000000000000FAFAFA00EAEAEA00C4783000C67B3400C87E
      3800CA813B00CB823D007E7E7E0085858500D7D7D700D7D7D700CB833E00CA82
      3C00C97F3A00C77D3700C57A33007C7C7C00AFAFAF00EAEAEA00FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00EAEAEA00C7C7C700A6907B00C0864F00D4935400D6965A00D79A
      5F00D89C6300D99E6600D99F6800DAA06900D99F6800D99E6600D89D6400D79A
      6000D6975B00D5945600B87F48006D5742006666660096969600C7C7C700EAEA
      EA00FBFBFB00000000000000000000000000F4F4F400E19A5F00DDD7DD00DDD8
      DD00DDD8DD00DDD8DD00DDD8DD00DDD8DD00DDD8DD00DDD8DD00DDD8DD00DED9
      DE00DED9DE00DED9DE00DFDADF00DBD6DB00A8A3D1000F0BF200100CF200100C
      F100110BF000524CB300958E9500B0A7B000C683580088828800CBC8CB00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000F7F7F700D0A78000C67A3200C87D3600B38A
      6300CB823D00CD854000CD8642007C7C7C009A9A9A00CE874300CD854100CC84
      3F00CBA37D00C87E3900C77C35009F77500084848400E3E3E300F7F7F7000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00EDEDED00C7C7C700AD896700D08B4B00D4915100D5955800D7995D00D89C
      6300D99E6600DAA06900DAA26C00DAA26C00DAA26C00DAA16A00D99F6700D89D
      6400D79A5F00D6965A00D4925300D08D4D00825F3D005C5C5C0090909000C7C7
      C700EDEDED00FBFBFB000000000000000000F4F4F400E79E6000E2DFE200E3DF
      E300E3DFE300E3DFE300E3DFE300E3DFE300E3DFE300E3DFE300E3DFE300E3DF
      E300E3DFE300E3E0E300E2DFE200DBD9DB006F6DDA000E0BF7000E0BF6003431
      D8000E0BF4000E0AF2007F799A00A29AA200BF7E520085808500CAC7CA00F3F3
      F30000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FBFBFB009D9C9C00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000F6F6F600C4782F00C67B3300A1785200A6A6
      A600E0E0E000CE864200CF884500A77E5700A0785200CF884600CF874400D4D4
      D400E3E3E300D1A88100C77D3600C579320081818100DFDFDF00F6F6F6000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F2F2
      F200CFCFCF00B78A5F00D28B4800D38F4F00D5935500D6975B00D89B6100D99E
      6500DAA06900DAA26C00DBA36E00DBA36E00DBA36E00DBA26D00DAA16A00D99E
      6600D89B6200D6985C00D5955700D4915100D28D4A0094673D005D5D5D009696
      9600CFCFCF00F2F2F200FDFDFD0000000000F4F4F400EBA15E00E6E4E600E7E5
      E700E7E5E700E7E5E700E7E5E700E7E5E700E7E5E700E7E5E700E7E5E700E7E5
      E700E7E5E700E7E5E700E5E3E500D9D7D9003B39E5000C0AFA000D0BFA008887
      BA000C0AF8000C09F5004B46C100958F9500B2754C00807B8000C7C5C700F3F3
      F30000000000000000000000000000000000F1F1F100F2F2F200CACACA00CACA
      CA00CACACA00CACACA00CACACA00C9C9C90088878700F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000F6F6F600C5782F00C77B3400A3795300A7A7
      A700E5E5E500EBEBEB00D08A4700D08A4800D18B4900D08A48007B7B7B00DBDB
      DB00EBEBEB00D4AC8500C87D3700C57A330081818100DFDFDF00F6F6F6000000
      0000000000000000000000000000000000000000000000000000F8F8F800DEDE
      DE00B8947100D18A4600D28D4B00D4915100D5955800D7995D00D89C6300D99F
      6700DAA26C00DBA36E00DBA57000DBA57000DBA57000DBA36E00DAA26C00D99F
      6800D89D6400D79A5F00D6965A00D4925300D38E4D00D18B4800825E3B006666
      6600A6A6A600DDDDDD00F8F8F800FEFEFE00F4F4F400EDA35D00E9E8E900E9E8
      E900E9E8E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E4E3E4009898DB000908FC000A09FC005958C700BFBE
      BF006765E3000B08F7000B07F300746EA000A169440079737900C4C1C400F2F2
      F200000000000000000000000000000000007272720078777700737272007372
      72007372720073727200737272007170700064636300F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000F7F7F700C5782F00C77B3400A3795300A1A1
      A100DDDDDD00E7E7E700D18B4800D28C4900D28C4900D18C49007B7B7B00DADA
      DA00E7E7E700D0A88100C87D3700C579320084848400E3E3E300F7F7F7000000
      00000000000000000000000000000000000000000000FDFDFD00EDEDED00C2AC
      9600CE854100D18B4800D38F4E00D4925300D6965A00D79A5F00D99D6500D99F
      6800DAA26C00DBA36E00E8C7A700F1DDC900F1DDC900E0B18500DBA26D00DAA0
      6900D99E6500D89B6100D6975B00D5935500D3905000D28C4900CD8642006C55
      40007C7C7C00C0C0C000ECECEC00FCFCFC00F4F4F400EEA35C00EAEAEA00EAEA
      EA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EAEAEA00E1E1E1005D5DE3000706FE000807FE008F8EBC00CFCF
      CF00C2C1E0000907F9000A06F400403AC70093613F006F6A6F00BCB9BC00F0F0
      F000000000000000000000000000000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000FAFAFA00C4772E00C77B3300A37A53007878
      7800A8A8A800DADADA00D18B4800D28C4900D38D4A00D28C490078787800D1D1
      D100DADADA00B8906800C87D3600C5793100AEAEAE00EAEAEA00FAFAFA000000
      00000000000000000000000000000000000000000000F8F8F800DAD9D800C586
      4A00D0884300D28B4800D38F4F00D4935400D6965A00D79A5F00D99D6500D99F
      6800DAA26C00DBA36E00F1DCC800FFFFFF00FFFFFF00E3B99100DAA26C00DAA0
      6900D99E6500D89B6100D6975B00D5945600D4915100D28D4A00D1894500B577
      3B00595858009D9D9D00D9D9D900F6F6F600F4F4F400EFA35900EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00CCCCE3000606FE000E0EFE004949E000C4C4C400DCDC
      DC00E6E5E6007F7DE7000E0BF5000A05EE0069416900655F6500B0ADB000EAE9
      EA00FEFEFE000000000000000000000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000FCFCFC00D7AE8700C67A3100C97E3600A37A
      53007A7A7A00A1A1A100D28B4700D38C4900D28C4900D28B480071717100C4C4
      C400B68C6600CA7F3900C77B3400A47B5300E2E2E200F3F3F300FCFCFC000000
      000000000000000000000000000000000000FEFEFE00F1F1F100C6A78800CF85
      3E00D0884300D28B4800D38F4F00D4935400D6965A00D7995E00D89C6300D99E
      6600DAA06900DAA26C00F1DBC800FFFFFF00FFFFFF00E3B89000DAA16A00D99F
      6700D89D6400D79A5F00D6975B00D5935500D3905000D28D4A00D1894500D086
      40007A5A3D007D7D7D00C2C2C200EBEBEB00F4F4F400F0A35800EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EAEAEA009595ED001B1BFE001B1BFE008787E000DCDCDC00E5E5
      E500E8E8E800DAD8E4001C19F5001C18EF003C26B0005C575C00A09CA000DFDE
      DF00FAFAFA000000000000000000000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FAFAFA00C5782E00C87C3300CB80
      3800A57B530073737300D1894400D28A4600D28A4600D189450068686800AE86
      5E00CB813A00C97E3600C67A3100DEDEDE00EFEFEF00FAFAFA00FEFEFE000000
      000000000000000000000000000000000000FBFBFB00E6E6E600C6874A00CF85
      3E00D0884300D18B4800D38E4D00D4925200D5955700D6975B00D79A5F00D89C
      6300D99E6500D99F6700F0DAC600FFFFFF00FFFFFF00E2B68C00D99E6600D89D
      6400D79A6000D6985C00D5955800D4925300D38F4F00D28C4900D0894400CF86
      3F00B374370064646400AAAAAA00DDDDDD00F4F4F400F0A25600EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EAEAEA00E8E8E800E5E5E500E5E5E500EAEAEA00EAEA
      EA00EAEAEA00E6E5E6008E8CE3002723F1002821E9003E378900908B9000CDCB
      CD00F3F3F300FDFDFD0000000000000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00EFE4DB0073727200B4B4B400F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F9F9F900C6782F00C97D
      3300CC803800A57C5300D0863F00D1874100D1884200D08740009D734C00CD82
      3A00CA7E3600C77B3100DEDEDE00EEEEEE00F9F9F900FEFEFE00000000000000
      000000000000000000000000000000000000F7F7F700D6C9BC00CE813800CE83
      3C00D0864000D18A4600D28D4A00D38F4F00D4925300D5955700D6975B00D799
      5D00D79A6000D89B6200F0D9C400FFFFFF00FFFFFF00E1B38800D79A6000D799
      5E00D6975B00D5955800D4935400D3905000D28D4B00D18A4700D0874200CF85
      3E00CE823900685B4D0094949400CCCCCC00F4F4F400F0A15500EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECECEC00EBEB
      EB00EAEAEA00E7E6E700E2DFE2005450E500322CEC00332AE400807B8800BBB8
      BB00E7E6E700F9F9F90000000000000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EEE500FFF5EB00FFF5
      EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5
      EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5EB00FFF5
      EB00EFE5DC0073727200B4B4B400F7F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F9F9F900C779
      2E00CA7D3300CC803700CE823A00CF843B00CF843B00CE833B00CC803800CB7D
      3400C87A3000E2E2E200EFEFEF00F9F9F900FEFEFE0000000000000000000000
      000000000000000000000000000000000000F4F4F400CDA98800CD7F3500CE82
      3A00CF853E00D0874200D18A4600D28D4A00D38F4E00D4915100D4935400D595
      5700D6965900D6975B00EFD7C100FFFFFF00FFFFFF00E0B08300D6965A00D595
      5800D5935500D4925200D38F4F00D28D4B00D18B4800D0884300CF863F00CE83
      3B00CD813700835F3D0084848400BFBFBF00F4F4F400F0A15500EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECECEC00EBEB
      EB00E9E9E900E8E7E800E3E1E3009F9BE0003E38EE003E36E700554DAC00AAA6
      AA00D5D3D500F1F1F100FDFDFD00000000009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EEE600FFF5EC00FFF5
      EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5
      EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5
      EC00EFE5DD0073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FAFA
      FA00DAAF8700CB7C3000CB7D3300CC7F3400CD7F3500CC7E3300CB7C3100C69C
      7400DEDEDE00F0F0F000FAFAFA00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200C8976700CC7E3300CD80
      3600CE823A00CF853E00D0874100D1894500D18B4800D28D4B00D38E4D00D390
      5000D4915100D4925200EED5BD00FFFFFF00FFFFFF00DEAC7C00D4915100D390
      5000D38F4E00D28D4B00D28B4800D18A4600D0874200CF853E00CE833B00CD81
      3700CC7E3400976536007B7B7B00B6B6B600F4F4F400F0A25600ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00EBEB
      EB00EBEBEB00E8E8E800E6E4E600DFDCDF006748B2004841E900483EE2008E89
      A600C1BEC100E4E3E400F8F8F800FEFEFE009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EFE800FFF6EE00FFF6
      EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6
      EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6EE00FFF6
      EE00EFE6DF0073727200B4B4B400F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F6F6F600E4E4E400838383008383830083838300838383006E6E6E00A6A6
      A600E4E4E400F6F6F600FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100C88D5300CB7B2F00CC7E
      3300CD823900CE843D00CF874200D0894600D18B4900D28D4B00D38F4E00D38F
      4E00D3905000D3915100EED5BD00FFFFFF00FFFFFF00DDAC7B00D3905000D390
      4F00D38F4E00D28D4C00D18B4900D0894600D0874200CF863F00CD823A00CC7F
      3400CC7C3000A56A300077777700B4B4B400F4F4F400F0A35800EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EBEB
      EB00EBEBEB00E8E8E800E6E5E600E2DFE200B2767400544DEA00534AE4005F56
      BF00B5B2B500D7D5D700F2F2F200FDFDFD009F9F9F00F8EDE400FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FEF3E9009F9A9600F8EFE900FFF6EF00FFF6
      EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6
      EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6
      EF00EFE6E00073727200B4B4B400F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F2F2F200A8A8A80082828200848484008484840082828200757575007E7E
      7E00DDDDDD00F2F2F200FCFCFC00000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200C8894D00CC7E3400CF86
      4000D0874200D0894500D18A4700D28C4900D28D4C00D28E4D00D28F4F00D390
      5000D3905000D4915100EED5BD00FFFFFF00FFFFFF00DEAC7B00D3905000D390
      5000D28F4F00D28E4D00D28D4C00D28C4A00D18A4700D0894600D0884300CF86
      4000CC7F3500A96A2E007B7B7B00B7B7B700F4F4F400F0A45B00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EDEDED00EDEDED00ECECEC00EBEB
      EB00EAEAEA00E9E9E900E7E6E700E3E0E300E1955600504BB9005E55E4005C51
      DD009E99C500D9D7D900F1F1F100FDFDFD009F9F9F00F8EEE500FFF5EB00FFF5
      EB00FFF5EB00FFF5EB00FFF5EB00FEF4EA009F9B9600F8F0EB00FFF7F100FFF7
      F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7
      F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7
      F100EFE7E20073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F9F9
      F900E8E8E8008282820082828200848484008484840084848400828282007676
      7600ABABAB00E8E8E800F9F9F900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400C98C5100CE843D00D18A
      4700D18B4800D28C4A00D28D4B00D28E4D00D38F4F00D3905000D3905100D391
      5200D3915200D3925300EED5BE00FFFFFF00FFFFFF00DDAC7D00D3915200D391
      5200D3905100D3905000D3904F00D28E4E00D28D4C00D28D4B00D28C4900D18A
      4700CE843D00A6692E0085858500C0C0C000F4F4F400F0A65D00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EDEDED00ECECEC00EBEB
      EB00EAEAEA00E9E8E900E7E5E700E3E0E300E29A5D0074718F00695FE300675B
      DC00746BD900ECEBEC00F8F8F800FEFEFE009F9F9F00F8EEE600FFF5EC00FFF5
      EC00FFF5EC00FFF5EC00FFF5EC00FEF4EB009F9B9700F8F1EC00FFF8F200FFF8
      F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8
      F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8F200FFF8
      F200EFE8E30073727200B4B4B400F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F2F2
      F200A6A6A600838383008484840079797900A1A1A10084848400838383007474
      74007E7E7E00DDDDDD00F2F2F200FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700CE9A6900CE833C00D28E
      4D00D38F4F00D3905000D3905100D4915200D4925300D4925400D4935500D493
      5500D9A06A00E9C8AA00F7EADF00FFFFFF00FFFFFF00DEAD7F00D4935600D493
      5500D4935500D4935400D4925400D4915200D3915100D3905000D38F4F00D28E
      4E00CE833C009A67350096969600CECECE00F4F4F400F0A65F00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEEEE00EDEDED00EDEDED00ECEC
      EC00EBEBEB00E9E8E900E7E5E700E3DFE300E0985D0086838600C7C5C700EEEE
      EE00F9F9F900FBFBFB00FDFDFD00000000009F9F9F00F8EFE800FFF6EE00FFF6
      EE00FFF6EE00FFF6EE00FFF6EE00FEF5ED009F9B9800F8F2ED00FFF9F300FFF9
      F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9
      F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9
      F300EFE9E30073727200B4B4B400FDFDFD000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F9F9F900E8E8
      E800848484008585850085858500ABABAB00E2E2E20086868600858585008484
      840076767600ABABAB00E8E8E800F9F9F900FEFEFE0000000000000000000000
      000000000000000000000000000000000000FBFBFB00D8B39000CC7E3400D493
      5400D5945600D5945700D5955700D5955800D5955800D6965900D5965A00D596
      5A00DFB08300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFB08300D5975B00D597
      5B00D5965A00D6965900D5955800D5955800D5955700D5945700D5945600D493
      5500CC7E34008E694600ABABAB00DEDEDE00F4F4F400F0A86100F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEEEE00ECECEC00ECEC
      EC00EAEAEA00E8E7E800E6E3E600E1DDE100DE965C0087848700CAC8CA00F3F3
      F300000000000000000000000000000000009F9F9F00F8EFE900FFF6EF00FFF6
      EF00FFF6EF00FFF6EF00FFF6EF00FEF5EE009F9B9800F8F2ED00FFF9F400FFF9
      F400FFF9F400FFF9F400FFF9F400FFF9F400FFF9F400FFF9F400FFF9F400FFF9
      F400EAE3DD00978A6B0094886700948867009488670094886700948867009488
      6700887D5F0077767600EFEFEF00FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F2F2F200A6A6
      A60087878700888888007A7A7A00DDDDDD00EFEFEF00AFAFAF00888888008888
      8800747474007E7E7E00DDDDDD00F2F2F200FCFCFC0000000000000000000000
      000000000000000000000000000000000000FEFEFE00E9DCCF00C9752500D697
      5A00D6995E00D6995E00D7995F00D79A5F00D79A5F00D79A6000D79A6000D79A
      6100DFAF8300F9F2EB00FAF2EB00FAF2EB00FAF2EB00DFAF8300D79A6100D79A
      6100D79A6100D79A6000D79A5F00D79A5F00D7995F00D6995E00D6995E00D697
      5A00C9752600887B6E00C3C3C300ECECEC00F4F4F400F0A86300F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00ECECEC00EBEB
      EB00EAEAEA00E8E6E800E4E1E400E0DBE000DC945C0088848800CAC8CA00F3F3
      F300000000000000000000000000000000009F9F9F00F8F0EB00FFF7F100FFF7
      F100FFF7F100FFF7F100FFF7F100FEF6F0009F9B9900F8F3EF00FFFAF600FFFA
      F600FFFAF600FFFAF600FFFAF600FFFAF600FFFAF600FFFAF600FFFAF600FFFA
      F600CAC3B600FAC93600FFCC3300FFCC3300FFCC3300FFCC3300FFCC3300F7C5
      310086774700E0E0E000FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F9F9F900E8E8E8008A8A
      8A008B8B8B008B8B8B00ABABAB00E8E8E800F8F8F800F8F8F8008B8B8B008B8B
      8B008B8B8B0076767600ABABAB00E8E8E800F9F9F900FEFEFE00000000000000
      00000000000000000000000000000000000000000000F9F9F900C9823E00D28E
      4D00D89E6600D99F6700D99F6700D99F6700D99F6700D99F6800D99F6800D99F
      6800D9A06900D9A06900D9A06900D9A06900D9A06900D9A06900D9A06900D9A0
      6900D99F6800D99F6800D99F6800D99F6700D99F6700D99F6700D89E6600D28E
      4D00B16926009F9F9F00DADADA00F6F6F600F4F4F400F0AA6700F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECEC
      EC00EBEAEB00E8E6E800E5E1E500DED9DE00DA96630088848800CAC8CA00F3F3
      F300000000000000000000000000000000009F9F9F00F8F1EC00FFF8F200FFF8
      F200FFF8F200FFF8F200FFF8F200FEF7F1009F9C9900F8F3F000FFFAF700FFFA
      F700FFFAF700FFFAF700FFFAF700FFFAF700FFFAF700FFFAF700FFFAF700FFFA
      F700CAC3B700FAC93600FFCC3300FFCC3300FFCC3300FFCC3300F5C43000685B
      3A00E1E1E100FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F2F2F200A8A8A8008E8E
      8E008F8F8F007B7B7B00DDDDDD00F2F2F200FCFCFC00FCFCFC00B1B1B1008F8F
      8F008F8F8F00757575007E7E7E00DDDDDD00F2F2F200FCFCFC00000000000000
      00000000000000000000000000000000000000000000FDFDFD00DDBD9D00CA7A
      2D00D99F6800DBA47000DAA47000DAA47000DBA57100DBA57100DBA57100DBA5
      7100DBA57100DBA57100DFB18300F0D9C400ECCFB400DBA67200DBA57100DBA5
      7100DBA57100DBA57100DBA57100DAA47000DAA47000DAA47000D9A06900CA7A
      2D0097765700C2C2C200EDEDED00FCFCFC00F4F4F400F0AD6A00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000F0F0F000EEEEEE00EDED
      ED00EBEAEB00E8E6E800E4E0E400DED8DE00D89462008D888D00CDCBCD00F4F4
      F400000000000000000000000000000000009F9F9F00F8F2ED00FFF9F300FFF9
      F300FFF9F300FFF9F300FFF9F300FEF8F2009F9C9A00F8F4F200FFFBF900FFFB
      F900FFFBF900FFFBF900FFFBF900FFFBF900FFFBF900FFFBF900FFFBF900FFFB
      F900CAC4B800FAC93700FFCC3400FFCC3400FFCC3400EFBF300080745100E3E3
      E300FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F9F9F900E8E8E800939393009393
      930093939300AAAAAA00E8E8E800F9F9F900FEFEFE00FEFEFE00F9F9F9009393
      9300939393009393930076767600AAAAAA00E8E8E800F9F9F900FEFEFE000000
      0000000000000000000000000000000000000000000000000000F7F6F500C981
      3D00D28D4B00DDAA7900DDAA7A00DDAA7A00DDAA7A00DDAB7A00DDAB7A00DDAB
      7A00DDAB7A00DDAB7A00F7ECE100FFFFFF00FFFFFF00EACCAF00DDAB7A00DDAB
      7A00DDAB7A00DDAB7A00DDAB7A00DDAA7A00DDAA7A00DDAA7900D3905000B46B
      2800A8A7A600DFDFDF00F8F8F80000000000F4F4F400F1B07000F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100EDEDED00ECEC
      EC00EAE9EA00E7E4E700E2DEE200DCD5DC00D7976A00A09CA000D8D6D800F7F7
      F700000000000000000000000000000000009F9F9F00F8F2ED00FFF9F400FFF9
      F400FFF9F400FFF9F400FFF9F400FEF8F3009F9C9A00F8F5F200FFFCF900FFFC
      F900FFFCF900FFFCF900FFFCF900FFFCF900FFFCF900FFFCF900FFFCF900FFFC
      F900CAC5BA00FAD05100FFD34F00FFD34F00EDC34700615C4A00E8E8E800FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F2F2F200A8A8A800989898009898
      98007C7C7C00DDDDDD00F2F2F200FCFCFC000000000000000000FCFCFC00B2B2
      B2009898980097979700777777007D7D7D00DDDDDD00F2F2F200FCFCFC000000
      0000000000000000000000000000000000000000000000000000FDFDFD00E6CF
      B900C7732200D79A5F00E0B18400E0B18400E0B18400E0B18400E0B18400E0B1
      8400E0B18400E0B18400F9F0E700FFFFFF00FFFFFF00EDD2B900E0B18400E0B1
      8400E0B18400E0B18400E0B18400E0B18400E0B18400D89D6400C7762700A38C
      7600D1D1D100F3F3F300FDFDFD0000000000F4F4F400F1B27400F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F1F1F100F0B37800EEAE
      7100EBAB7000E7A76F00E2A26D00DC9C6C00D4946900C3C1C300EBEAEB00FBFB
      FB00000000000000000000000000000000009F9F9F00F8F3EF00FFFAF600FFFA
      F600FFFAF600FFFAF600FFFAF600FEF9F5009F9D9B00F8F6F400FFFDFB00FFFD
      FB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFD
      FB00CAC6BF00FADB7F00FFDF7E00E6C76D0080796700EBEBEB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F9F9F900E8E8E8009C9C9C009C9C9C009C9C
      9C00AAAAAA00E8E8E800F9F9F900FEFEFE000000000000000000FEFEFE00F9F9
      F9009C9C9C009C9C9C009C9C9C0076767600AAAAAA00E8E8E800F9F9F900FEFE
      FE0000000000000000000000000000000000000000000000000000000000FCFC
      FC00DBB48F00CA792B00DBA46F00E2B78E00E2B78E00E2B78E00E2B78E00E2B7
      8E00E2B78E00E2B78E00E8C5A500F6EADE00F3E2D100E3B99100E2B78E00E2B7
      8E00E2B78E00E2B78E00E2B78E00E2B78E00DCA77400CC7E3300A8825D00CACA
      CA00EDEDED00FCFCFC000000000000000000F4F4F400F2B67B00F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F0B47C00F1D9
      CA00EFD6C700EAD0C300E4C9BF00DBA37E00C1BFC100E7E6E700F9F9F900FEFE
      FE00000000000000000000000000000000009F9F9F00F8F3F000FFFAF700FFFA
      F700FFFAF700FFFAF700FFFAF700FEF9F6009F9D9B00F8F6F500FFFDFC00FFFD
      FC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFD
      FC00CAC7C200FAE6AB00DFCC93006A686300EFEFEF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00F3F3F300A9A9A900A0A0A000A0A0A0007E7E
      7E00DDDDDD00F2F2F200FCFCFC0000000000000000000000000000000000FCFC
      FC00B3B3B300A0A0A000A0A0A0007A7A7A007E7E7E00DEDEDE00F3F3F300FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D5A37400CB7A2C00DAA36D00E5BD9800E5BE9800E5BE9800E5BE
      9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE
      9800E5BE9800E5BE9800E5BD9800DCA77400CC7E3300B17F5000CACACA00ECEC
      EC00FBFBFB00000000000000000000000000F4F4F400F3B88000F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F4F4F400F3F3F300EEB47E00EFD7
      C800ECD2C500E6CBC100DEA68000C1BFC100E7E6E700F9F9F900FEFEFE000000
      0000000000000000000000000000000000009F9F9F00F8F4F200FFFBF900FFFB
      F900FFFBF900FFFBF900FFFBF900FEFAF800A19E9D00F8F7F700FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00CAC9C700D3C9AD008A898200F2F2F200FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00EFEFEF00A5A5A500A5A5A500A5A5A500A9A9
      A900E8E8E800F9F9F900FEFEFE0000000000000000000000000000000000FEFE
      FE00F9F9F900A5A5A500A5A5A500A5A5A5007C7C7C00AFAFAF00EFEFEF00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00DBB49000C7742400D7995E00E5BD9600E8C5A300E8C5
      A300E8C5A300E8C5A300E8C5A300E8C5A300E8C5A300E8C5A300E8C5A300E8C5
      A300E8C5A300E5BE9900D99E6500C7762700B48E6900D1D1D100EEEEEE00FBFB
      FB00FEFEFE00000000000000000000000000F4F4F400F3BC8700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F6F6F600F6F6F600F4F4F400F3F2F300EDB68400ECD3
      C600E7CDC200DFA88000C1BFC100E7E6E700F9F9F900FEFEFE00000000000000
      0000000000000000000000000000000000009F9F9F00F8F5F200FFFCF900FFFC
      F900FFFCF900FFFCF900FFFCF900FFFCF900A19F9D00A19F9D009F9E9C009F9E
      9C00898682009D8B55009F8C54009F8C5400978551005C595200959595009E9E
      9E009F9F9F00AEAEAD00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00B3B3B300AAAAAA00AAAAAA0084848400DEDE
      DE00F2F2F200FCFCFC0000000000000000000000000000000000000000000000
      0000FCFCFC00B4B4B400AAAAAA00AAAAAA0084848400B2B2B200EFEFEF00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00E6CFB900C9813C00CD7F3500DEAB7A00E9C7
      A700EBCCAE00EBCCAE00EBCCAE00EBCCAE00EBCCAE00EBCCAE00EBCCAE00EAC9
      AA00E0AF8100CE833B00BD753100C2AB9500DFDFDF00F3F3F300FCFCFC000000
      000000000000000000000000000000000000F5F5F500F4BF8C00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F7F7F700F6F6F600F5F4F500F2F1F200EBB68800E9CF
      C300E0A98100C1BFC100E7E6E700F9F9F900FEFEFE0000000000000000000000
      0000000000000000000000000000000000009F9F9F00F8F6F400FFFDFB00FFFD
      FB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FEFCFA00FEFCFA00FEFC
      FA00C9C5BE00F9DA7E00FEDE7D00E4C56C007F786500EAEAEA00FDFDFD00FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00B6B6B600AFAFAF00AFAFAF00B7B7B700EBEB
      EB00F9F9F900FEFEFE0000000000000000000000000000000000000000000000
      0000FEFEFE00F9F9F900AEAEAE00AFAFAF008B8B8B00E6E6E600F4F4F400FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00F8F7F600DEBD9D00C87E3800CA78
      2A00D4935400DDA77500E2B68B00E3B99000E2B68B00DDA97700D6965900CB7A
      2C00C1783100C5A48400DBDAD900EEEEEE00F9F9F900FDFDFD00000000000000
      000000000000000000000000000000000000F7F7F700F5C29000F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F8F8F800F6F6F600F4F3F400F1EFF100E9B58A00E3AC
      8200C2C1C200E6E6E600F9F9F900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F00F8F6F500FFFDFC00FFFD
      FC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFDFC00FFFD
      FC00CAC7C200FAE6AB00DFCC93006A686300EFEFEF00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FAFAFA00B3B3B300B4B4B400F0F0F000F5F5
      F500FCFCFC000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00B7B7B700B3B3B300EFEFEF00F2F2F200FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F9F9F900EADC
      CF00D9B38F00CE996600C8884B00C5834300C6864900C6925F00CCA68200D7C9
      BC00E7E7E700F1F1F100F9F9F900FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F5C39300F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F4C49500F3C39500F2C19400F0BF9300ECBB9100E6B38C00D7D6
      D700EAEAEA00F9F9F900FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000A1A0A000F8F7F700FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00CAC9C700D3C9AD008A898200F2F2F200FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FCFC
      FC00FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00F7F7F700F4F4F400F2F2F200F1F1F100F2F2F200F4F4F400F7F7
      F700FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00F7F7F700F4F4
      F400F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F4F4F400F7F7
      F700FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A0A000A1A0A0009F9F9F009F9F
      9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F
      9F009F9F9F00AEAEAD00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FF800001000000000000000000000000FF800001000000000000000000000000
      FF800001000000000000000000000000FF800001000000000000000000000000
      FF800001000000000000000000000000F0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000001000000000000000000000000E0000001000000000000000000000000
      E0000007000000000000000000000000E000000F000000000000000000000000
      E000001F000000000000000000000000E000003F000000000000000000000000
      E000007F000000000000000000000000E00000FF000000000000000000000000
      E00001FF000000000000000000000000E00003FF000000000000000000000000
      E00007FF000000000000000000000000E0000FFF000000000000000000000000
      E0001FFF000000000000000000000000F0003FFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFF00F00803FFFFF
      FFFFFFFFFFFFFFFFFFE00600801FFFFFFFFFFFFFFFFFFFFFFFE00000800FFFFF
      FFFFFFFFFFFFFFFFFFE0000080007FFFC07FFFFFFFFFFF80FFE000008000FFFF
      807FFFFFFFFFFE00FFE0000080007FFF003FFF01803FFE00FFE0000080003FFF
      003FF0018007FE00FFF00000C0001FFF001F000100007C00FFF80001E0000FFF
      001F000180003C00FFFC0003F00007FF000E000180007800FFFC0003F80001FF
      800700018000F800FFF80001F80001FF8000000180000001FFF00000F80000FF
      80000001C0000001FFE00000F800007FC0000003C0000003FFE00000FC00003F
      E0000003C0000003FFE00000E6000017E0000007E0000007FFE00000FF00000F
      F0000007E000000FFFE00000FF800007F8000007E000001FFFE00600FFC00007
      FC000007F000003FFFF00F00FFE00007FF000007F00000FFFFF81F81FFF00003
      FFC00E0FF06003FFFFFFFFFFFFF80001FFF87E0FF0FE1FFFFFFFFFFFFFFC0000
      FFFFFF3FF9FFFFFFFFFFFFFFFFFE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFF0000FF
      FFFFFFFF00000000FFFFFFFFFC00003FF87FFFFF00000000FFFFCFFFF800001F
      F03FFFFF00000000FFFF87FFF000000FE01FFFFF00000000FFFF87FFE0000007
      E00FFFFF00000000FFFF87FFC0000003E007FFFF000000009FFF01FF80000001
      E003FFFF000000009FFF00EF80000001F001FFFF0000000007FF000300000000
      F800FFFF0000000003FF800100000000FC007FFF0000000003FFC00000000000
      FE003FFF0000000001FFC00000000000FF00003F0000000080FFC00000000000
      FF80001F00000000C0FFEC0000000000FFC0000B00000000C07FFF0000000000
      FFE0000300000000E03FFF8000000000FFF0000300000000F01FFF0000000000
      FFF0000300000000F01FFC0100000000FFF0000300000000F80FF80300000000
      FFF0000300000000FC07F00700000000FFF0000300000000FE03E00F00000000
      FFF0000300000000FE00003F00000000FFF0000300000000FF00007F00000000
      FFF0000300000000FF80007F00000000FFF0000300000000FF80007F80000001
      FFF0000700000000FFE0007F80000001FFF8000F00000000FFE0007FC0000003
      FFFC001F00000000FFF8007FE0000007FFFE003F00000000FFFE007FF000000F
      FFFF007F00000000FFFF80FFF800001FFFFFFFFF00000000FFFF80FFFC00003F
      FFFFFFFF80000001FFFFC1FFFF0000FFFFFFFFFFFE00007FFF00007FFFFFFFFF
      FE00000FFE00007FFC00001F00000000FC000007FE00007FF800000F00000000
      F8000003FE00007FF000000700000000F8000001FE00007FE000000300000000
      E000000180000001C000000100000000C0000001000000008000000100000000
      8000000100000000800000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001800000010000000100000000
      80000003FE00007F800000010000000080000007FE00007FC000000300000000
      8000001FFE00007FE0000007000000008000001FFE00007FE000000F00000000
      C000003FFE00007FF000001F00000000E000007FFE00007FFC00003F00000000
      FFFFFFFFFE00007FFE0000FFFFFFFFFFE00000018000007FFF800001C0000000
      E00000010000003FE000000180000000E00000010000001FC000000180000000
      E00000010000001F8000000180000000E00000010000000F8000000180000000
      E00000010000000F8000000180000000E0000001000000078000000180000000
      E0000001000000078000000180000000E0000001000000038000000180000000
      E0000001000000038000000180000000E0000001000000018000000180000000
      E0000001000000018000000180000000E0000001000000008000000180000000
      E0000001000000008000000180000000E0000001000000008000000180000000
      E0000001000000008000000180000000E0000001000000008000000180000000
      E0000001000000018000000180000000E00000010000003F8000000180000000
      E00000010000003F8000000380000000E0000001000000008000000780000000
      E0000001800000008000000780000000E0000001C00007008000000780000000
      E0000001E00103008000000780000000E0000003F00300008000000780000000
      E0000007F80700008000000780000000E000000FFFFF00008000000780000000
      E000001FFFFF80008000000780000000E000003FFFFFC0008000000780000000
      E000007FFFFFE000C000000FE0000000F00000FFFFFFF00FE000001FF0000001
      FFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFF00007FFFFF80FFFFFFFFFFFF00003F
      FE00003F0000000FFF000000FE00001FFC00001F0000000FFF000000FE00001F
      F00000070000000FFF000000FE00001FF00000070000000FFE000000FE00001F
      E00000030000000F00000000FE00001FC00000010000000F00000000FE00001F
      C00000000000000F00000000FE00001F800000000000000F00000000FE00001F
      800000000000000700000000FE00001F000000000000000700000000FE00001F
      000000000000000300000000FF00003F000000000000000300000000FF80007F
      000000000000000100000000FFC000FF000000000000000000000000FFE001FF
      000000000000000000000000FFE001FF000000000000000000000000FFC000FF
      000000000000000000000000FFC000FF000000000000000100000000FF80007F
      000000000000000F00000000FF80007F000000000000000F00000001FF00003F
      800000000000000F00000003FF00003F800000000000000F00000007FE00001F
      C00000010000000F0000000FFE00C01FC00000010000000F0000001FFC00C00F
      E00000030000000F0000003FFC01E00FF00000070000001F0000007FFC01E00F
      F00000070000003F000001FFFC03F00FFC00001F0000007F000003FFFC03F00F
      FE00003F000000FF00003FFFFC07F80FFF8000FF000001FF00007FFFFE07F81F
      FFE003FF000003FF0001FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ilCommon24: TImageList
    Height = 20
    Width = 20
    Left = 52
    Top = 552
    Bitmap = {
      494C010115001800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000007800000001002000000000000096
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5E4E400B1ACAC00ACA7A700ACA7A700ACA7A700ACA7
      A700ACA7A700ACA7A700ACA7A700ACA7A700ADA7A700C7C2C200E6E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CA855000D08B5500D18D5700D18D5800D18D5800D18D
      5800D18D5800D18D5700D08C5500D08B5400C8834E00B8B2B200DFDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E49C5B00EEB98700EFB98800EFB98800EFB98800EFB9
      8800EFB98800EFB98800EFB98800EEB98700DAD2D200B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400E8E6
      E600DCDADA00DBDADA00E9A05A00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00DDD7D700B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E5E500CAC6
      C600B1ADAD00B0ADAD00EA9F5A00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00ECECEC00DCD6D600B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9915400DBD4
      D400DFDADA00E3E0E000EDA05500EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EDEDED00DDD7D700B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E39A5800E7E4
      E400EFB98800F0BB8900EFA15600F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00DED8D800B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E89D5800EBEB
      EB00F4BF8C00F4BF8C00F0A45B00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00DFD9D900B2ADAD00DDDADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E89B5400EBEB
      EB00F4BF8C00F4BF8C00F0AA6600F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F4BF8C00F4BF8C00F4BF8C00F3BE8B00E1DBDB00B5B0B000DEDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E89B5300ECEC
      EC00EEEEEE00EEEEEE00F1AE6D00F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F2F2F200E0DADA00C1BDBD00E6E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E89B5400EDED
      ED00EFEFEF00EFEFEF00F2B67B00F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F3B77D00F5DECC00F1D9C800D8A07400EFEEEE00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E89C5700EEEE
      EE00F4BF8C00F4BF8C00F3B88000F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F6F6F600F3B98000F1D9C800EAD1C000D6D4D400FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8A26100F0F0
      F000F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF
      8C00F5F5F500EFB98800DCA57700D6D4D400FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9AA6E00F2F2
      F200F4BF8C00F4BF8C00F5C39300F5C59600F5C59600F5C59600F5C59600F3C3
      9400E9B88C00DDA97F00EFEEEE00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAAE7500F3F3
      F300F5F5F500F5F5F500F3F3F300EEEEEE00EDEDED00EBB17900EFD8C700EAD2
      C100D6A07300D0CECE00F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBB38100F5F5
      F500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F2BB8500F1D9C800DCA5
      7700EFEEEE00FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECB68500F5F5
      F500F4BF8C00F4BF8C00F4BF8C00F4BF8C00F4BF8C00EFB98800EAD1C000D6D4
      D400FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B48800EDBC
      8F00EEBE9000EEBE9000EEBE9000EEBE9000ECBB8E00DDA97F00E5E4E400FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FBFB
      FB00F7F7F700F9F9F900FEFEFE00000000000000000000000000000000000000
      00000000000000000000FBFBFB00F9F9F900F9F9F900FEFEFE00000000000000
      000000000000F2F2F200E0E0E000DFDFDF00F0F0F000F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F0F0F000E3E3
      E3007B7B7B0080808000F0F0F000FEFEFE000000000000000000000000000000
      0000FEFEFE00FAFAFA00E3E3E3008080800080808000F0F0F000FAFAFA000000
      000000000000C8867100C8867100C885700036343600646064006F6B6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00E1E1E1001119
      E7001119E7006C6C6C00E1E1E100FAFAFA00FEFEFE0000000000000000000000
      0000FAFAFA00F0F0F0001018E7001018E7006C6C6C00E1E1E100F0F0F000FEFE
      FE0000000000C8867100C7857000C7856F005B3F2A0068483000CD8F5F00D595
      6300D7966400DA976600D3936300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F8F8
      F800EAEAEA00EAEAEA00EAEAEA00FBFBFB0000000000EBEBEB001018E7001119
      E7001119E7001119E70069696900E1E1E100F0F0F000FEFEFE0000000000FAFA
      FA00E1E1E1001018E7001018E7001018E7001018E7006C6C6C0080808000F9F9
      F90000000000C7856F00C7846E00C7836D00C6826C00C5806A00626062006A68
      6A006C6A6C00C3C1C3006867CD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5933200F5933200F593
      32004D3C2C00B9B9B90000000000000000000000000000000000000000000000
      0000FEFEFE00FDFDFD00F7F7F700EDEDED00C8C8C800888786006F6E6D000000
      00000000000070431600985B1F00B56C250044352700ADADAD00FBFBFB00FEFE
      FE00000000000000000000000000000000000000000000000000A0989000EE90
      3300F5933200F4923100C5772800EBEBEB00000000001018E7001018E7001018
      E7001119E8001119E8001119E8006969690078787800EFEFEF00F4F4F400E1E1
      E1001019E8001018E8001018E7001018E7001018E7001018E70080808000F9F9
      F90000000000E8E7E800C6826C00C6816B00C57F6900C47E6700C37B6400C177
      6000C0765F003F3F5A00040477005251B7000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000FF993300FF993300FF99
      330060422400A7A7A700FEFEFE00000000000000000000000000FEFEFE00F1F1
      F100D4D4D400BDBDBD008281800070675F0089623C00BB722A00714C25000000
      0000EEEEEE00C17427008A531B00764717002B1C0F0055555500B2B2B200DDDD
      DD00EAEAEA00F8F8F800FDFDFD0000000000000000000000000063554600FA96
      3200FF993300FF993300BF732700EFEFEF00000000001018E7001018E7001018
      E8001019E8001119E8001119E8001119E80069696900DEDEDE00E3E3E3001019
      E8001019E8001019E8001018E8001018E7001018E7001018E700E3E3E300FBFB
      FB000000000000000000E6E6E600C6816B00C57F6900C47E6700C37A6300C177
      5F00C0765E00BF735B00030269007E7DA5000000000000000000000000000000
      00000000000000000000000000000000000000000000FE993300FF993300FF99
      3300EE8F300060585100F6F6F6000000000000000000F9F9F9008F7D6B00C377
      2A00FD983300FF993300FF993300FF993300FF993300D17E2C007C7B7A000000
      000000000000CC792800FF993300FF993300FF993300FF993300FE993300CD7C
      2A00A5662900959494008C7B69000000000000000000FE983300B56C2300FF99
      3300FF993300FF99330082542500FBFBFB0000000000FEFEFE001018E8001018
      E8001019E8001019E8001119E9001019E9001019E900656565001019E9001019
      E9001019E9001019E8001019E8001018E8001018E800F0F0F000FAFAFA000000
      0000000000000000000000000000E3E3E300C9887300C7856F00C57F6800C37A
      6300C2776000BF725A00BD7058005F5F5F00D8D8D800CBCAD500000000000000
      00000000000000000000000000000000000000000000ED8D2F00FF993300FF99
      3300FE983300855B3100D9D9D900FEFEFE000000000000000000A89E9300FF99
      3300FF993300FF993300FF993300FF993300FF9933009B652E00B0B0B0000000
      0000000000007E4C1800FF993300FF993300FF993300FF993300FF993300FF99
      3300FA963200E1E1E100000000000000000000000000F4923100F9963300FF99
      3300FF993300FC9732006C523700FEFEFE000000000000000000FAFAFA001019
      E8001019E8001019E9001019E9001019E9001019E9001019E9001019E9001019
      E9001019E9001019E9001019E8001019E800E1E1E100FAFAFA00FEFEFE000000
      0000000000000000000000000000E5E5E500CD927E00CC8E7B00C9877200C680
      6A00C37B6400BF735A00BD705700BD70570077777700D6D5D600000000000000
      00000000000000000000000000000000000000000000A5937F00FF993400FF99
      3400FF993300FF993300624A3300B1B1B100DBDBDB00F0F0F000ECECEC00A370
      3D00FF993300FF993300FF993300FF993300FF993300736A6100F0F0F0000000
      0000000000009A897700FF993300FF993300FF993300FF993300FF993300DD84
      2C005C595600D5D5D500DCDCDC00946637006E421500D07D2900FF993300FF99
      3400FF993400784B1E00BDBDBD0000000000000000000000000000000000FEFE
      FE001019E900111AE900111AE900111AE900111AE900111AE900111AE900111A
      E900111AE900111AE9001019E900E1E1E100FAFAFA0000000000000000000000
      0000000000000000000000000000E8E8E800D7A99A00D7A99A00D7A79800D29D
      8C00CE938100C47D6600C1775F00BD705700BD705700646464008C88C5003A34
      DE000000000000000000000000000000000000000000FFFFFF00EA9F5500FFAE
      5D00FFAE5D00FFAE5D00FFAE5D00FAAB5B00F4A75A00ECA15700F7A95A00FFAE
      5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE5D00BEBEBE00FDFDFD000000
      000000000000FEFEFE00FBAB5C00FFAE5D00FFAE5D00FFAE5D00FFAE5D00FFAE
      5D00FDAD5C00EFA25700E89F5500F9AA5A00FFAE5D00FFAE5D00FFAE5D00FFAE
      5D00FBAB5B00ADADAD00FCFCFC00000000000000000000000000000000000000
      0000FDFDFD00F4F4F400161FEA00161FEA00161FEA00161FEA00161FEA00161F
      EA00161FEA00161EEA00E3E3E300F4F4F4000000000000000000000000000000
      00000000000000000000EAEAEA0000000000E1E1E100DFBBB000E1BEB300DEB8
      AC00DBB0A300CF958300C8877200C1775F00BD705700BD7057005D5C5D005438
      37004E46D700B4B1B400000000000000000000000000000000009D8D7D00F9B4
      7000FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400F7B36F00DEDEDE00000000000000
      00000000000000000000F1AF6D00FFB97400FFB97400FFB97400FFB97400FFB9
      7400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB97400FFB9
      740092683D00DCDCDC0000000000000000000000000000000000000000000000
      0000FAFAFA00EFEFEF001C25EA001B24EA001A23EA001A23EA001A23EA001B23
      EA001C24EA0065656500DEDEDE00EFEFEF00FEFEFE0000000000000000000000
      00000000000000000000000000000000000000000000DBDBDB00E3C4BA00E2C2
      B800DEB8AC00D5A39300CF958300C47D6600BE715800BD705700BD7057005D3D
      2300544CCB000000000000000000000000000000000000000000FFFFFF00F4F4
      F400DCB18700FFD0A000FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0
      A100FFD0A100FDCE9E00FFD0A000FFD0A1009A7F6500FAFAFA00000000000000
      0000000000000000000082736500FFD0A000FFD0A100F0C19300FFD0A100FFD0
      A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100FFD0A100E6B98C009677
      5800987E64000000000000000000000000000000000000000000FEFEFE00FAFA
      FA00E1E1E100333AEC002C34EB002831EB002730EB00262FEB00262FEB00272F
      EB002931EB002B33EB006969690078787800F0F0F000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00E4C5
      BB00E3C4BA00DEB8AC00DBB0A300CF958300C47D6600C1775F00BD705700BD70
      57004A494A00F2F2F20000000000000000000000000000000000FFFFFF00FFFF
      FF00C3C2C100A8907900FEDAB600FFDBB700FFDBB700FFDBB700FFDBB700FFDB
      B700E6C2A00076695D00F2CEAB00FFDBB70081746700FEFEFE00000000000000
      00000000000000000000AEADAC00F3CFAB00F8D3B0004E413400DFBC9900FFDB
      B700FFDBB700FFDBB700FFDBB700FFDBB700FFDBB600F9D4B0008A745F00EECC
      AB00000000000000000000000000000000000000000000000000FAFAFA00F0F0
      F0004047ED003C43EC00353DEC003139EB003038EB002E36EB002D35EB002E36
      EB003139EC00333BEC003840EC0069696900E1E1E100FAFAFA00FEFEFE000000
      000000000000000000000000000000000000000000000000000000000000E4C5
      BB00E4C5BB00E2C2B800DEB8AC00D5A39300C8877200C47D6600BE715800BD70
      570035343500F6F6F60000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000FAFAFA00CECDCD00A5A4A30095949200AFAEAE00F0F0
      F0000000000000000000F3F3F300A39B92009695950000000000000000000000
      00000000000000000000F9F9F900A49D9500A1A0A000FBFBFB0000000000C7C6
      C600929190005E5C5A0067656400B3B3B200F6F6F600FDFDFD00000000000000
      00000000000000000000000000000000000000000000FAFAFA00E1E1E100575D
      EE004F56EE004C53ED00474EED004249ED003F46ED003A42EC003A41ED003C44
      ED004047ED004249ED00464DED004950ED0069696900E1E1E100F0F0F000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00E4C5BB00E3C4BA00DEB8AC00D5A39300CF958300C47D6600C177
      5F00304C540083838300B464280000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00666BEF006369
      EF005F65EF005D63EF00585FEE005258EE004D53EE00EFEFEF00F4F4F4004A51
      EE005057EE005359EE00575DEF00595FEF005F65EF006C6C6C0080808000F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB00E4C5BB00E3C4BA00DEB8AC00DBB0A300CF958300C887
      7200C1775F00556F7500381F0C00B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E73F0006B70F000696F
      F000666CEF00646AEF005F65EF00585FEE00E1E1E100FAFAFA00FDFDFD005057
      EE00585EEF005B61EF006065EF006267F000666BF000696FF0007B7B7B00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E4C5BB00E2C2B800DEB8AC00D5A39300CF95
      8300C47D66004F6267005C727700ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007479F0007579F000757A
      F0007378F0007177F0006C71F000F0F0F000FAFAFA000000000000000000FEFE
      FE00666CF0006A6FF0006F74F0007176F1007176F1007075F000E3E3E300FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBB27D00E6CCC000DEC4BA00DEB8AC00DBB0
      A300CF958300C47D6600C1775F00AAAAAA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00787DF100797E
      F100787DF100767BF000E1E1E100FAFAFA00FEFEFE0000000000000000000000
      0000FAFAFA007075F000757AF100767BF100767BF100E1E1E100F0F0F000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4D6DF00DEB8
      AC00D5A39300C8877200C37C6500C5C5C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA007E83
      F1007E83F100EBEBEB00FAFAFA00000000000000000000000000000000000000
      000000000000FEFEFE007D82F1007D82F100EBEBEB00FAFAFA00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEF6
      FB00DFBAAE00D5A39300CF958300E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100C0C0C0006767
      6700454545002E2E2E002C2C2C003D3D3D006F6E6F0094939400E1E1E1000000
      000000000000000000000000000000000000000000000000000000000000A46E
      5C00131213002820190000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000627AC000F30B5001333B4001938B8001A39B8001A3AB7001939
      B9001839B9001537B8001337BC000F35BE000C34C1000A31BE00062EBF00032C
      BF000029BB000022A900001D9400FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C3826D00222022002F261E0045290D00985E
      2400A86B2B00B7743000A46B29004F4C1500032503000217020008070700221F
      20006F686A000000000000000000000000000000000000000000856B7300526C
      A10031323D0038210B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000B30C600173ACA001B3ECB002345CE002546CE002446CD002246
      CE002246CF001E44CF001C45D2001742D300123FD400103DD3000938D4000737
      D5000131D2000028BF000022A900FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B700D4D4D4000000000000000000000000000000000000000000000000000000
      00000000000000000000C0806C00A56E5C003B240E00653C1400D9883600DF90
      3E00DF903F00DF914000DF914000DF8E3C009D6A25002F3A0B00011301000809
      04005436200000000000000000000000000000000000000000006A71C600596D
      AD00526CA100526CA1007B4F2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00143CDB00254ADF002B4FDF003356E0003658E1003558E1003358
      E1003258E2002D56E3002A56E4002453E5001C4FE600184CE6000F46E7000B43
      E600043BE4000131D2000029BE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00A8A8A8000000000000000000000000000000000000000000000000000000
      000000000000C3826D006A4B320073461700DD893300DE8B3700DF8E3C00E092
      4200E0924300E0934400E0924300DF914000DF8D3B00DE8C3800CA7D2A00323A
      0B00060A010044424200B0602600000000000000000000000000596DAD006A71
      C600596DAD00526CA100526CA1007C512500C392600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF001C43DF003155E1003759E2004060E4004263E500889CEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F4FE00809EF300144EEA00114A
      EA000841E7000334D500022BC100FFFFFF0000000000F4F4F400000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE008989
      890091919100FEFEFE00FEFEFE00000000000000000000000000000000000000
      00000000000096A49600D5812800DD862E00DE8B3600DE8C3900DF903F00E092
      4300E7AD7200FFFFFF00FFFFFF00E0924200DF8E3C00DE8D3A00DD893300DD87
      2F00353A0A00090B09005C331400000000000000000000000000AA7C5400596D
      AD006A71C600596DAD00526CA1006C59500080603F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF002046E0003759E3003D5EE4004665E5004767E500FFFFFF00E7EC
      FC0093A8F1003A63E7003763E70089A4F300FFFFFF00FFFFFF001750EA00134C
      EA000B43E7000637D600042EC200FFFFFF00F6F6F60090909000FEFEFE000000
      0000000000000000000000000000000000000000000000000000FEFEFE009090
      900068686800A7A7A700FDFDFD00FEFEFE00FEFEFE00FDFDFD00FEFEFE000000
      0000DD7B32004C793A00DC852C00DD862E00DE8B3600DE8D3A00DF903E00E092
      4200E7AD7200FFFFFF00FFFFFF00E0914100DF8E3C00DE8D3A00DD893300DD87
      3000C87A25000413020028160900D0D0D0000000000000000000000000000000
      0000596DAD006A71C600596DAD00526CA100526CA100846E5800C9A886000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00294EE0004160E4004665E50090A2EF00FFFFFF008FA2EF004769
      E7004468E7003D66E7003964E700305FE9002659E9007496F100FFFFFF007B9A
      F3001046E7000D3CD6000A32C200FFFFFF00FCFCFC0064646400CDCDCD00FDFD
      FD0000000000000000000000000000000000000000000000000000000000A9A9
      A90064646400707070007B7B7B00868686005F5F5F006A6A6A00AFAFAF00FEFE
      FE00BE6C2B00D87F2300DC852C00DD862E00DD8A3400DE8B3700DF8E3C00DF90
      3F00E29D5600EEC79F00EEC79F00DF8F3D00DE8D3A00DE8C3800DD893200DD87
      2F00DC8329004E2D0C001A1004009B9B9B000000000000000000000000000000
      0000AB7F5800596DAD006A71C600526CA100526CA1006E615F007F5D3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF002E52E1004564E5004A68E500F4F6FD00FFFFFF004D6DE600496A
      E6004569E700FFFFFF00FFFFFF00315FE9002759E9002356E900FFFFFF00F1F4
      FE001449E600103ED5000C34C300FFFFFF00FEFEFE007070700076767600EAEA
      EA0000000000000000000000000000000000000000000000000000000000D1D1
      D100CACACA00ECECEC00606060006E6E6E005E5E5E006A6A6A0070707000F4F4
      F40094652200DB802400DC842A00DC852D00DD893200DE8A3500DE8C3900DF8E
      3C00E0944700E6A96C00E6A96C00DF8D3B00DE8B3700DE8A3500DD873000DC86
      2D00DB832800A05D180029190800797979000000000000000000000000000000
      00000000000000000000596DAD006A71C600596DAD00526CA100526CA100BB50
      2A00C7542E00C3532C00A04D21007B471600B4691E0000000000000000000000
      0000FFFFFF003759E3004D6BE600526EE600FFFFFF009EAEF100506EE6004A6A
      E6004669E700FFFFFF00FFFFFF00315DE7002757E8002355E8007F9CF100FFFF
      FF001A4CE5001943D5001339C200FFFFFF0000000000FCFCFC00595959006C6C
      6C00FCFCFC000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00FEFEFE00F3F3F30072727200B5B5
      B5006D6A1400DA7F2100DB812600DB832800DC852C00DC862D00DD883100DD89
      3200E4A36000FFFFFF00FFFFFF00DD893200DD872F00DD862E00DC842B00DC83
      2900DB802400DA7E1F00663A0D00393939000000000000000000000000000000
      00000000000000000000000000005C6FAE006A71C600526CA100C7542E00C992
      6F00DDD5B200D2BE9B00C3583200C7542E00A14C1F00B36617009B5913000000
      0000FFFFFF004161E4005571E7005672E800FFFFFF005670E700506CE6004968
      E5004566E600FFFFFF00FFFFFF00305AE5002754E6002452E6001E4EE500FFFF
      FF00204EE4002048D400193CC100FFFFFF000000000000000000E6E6E6005E5E
      5E0079797900EDEDED0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD009595950075757500FAFA
      FA009A721400DA7D1E00DB802400DB822700DB842C00DC852D00DC862E00DC87
      3000DC873000FFFFFF00FFFFFF00F8E7D700DC852E00DC852D00DB842A00DB82
      2700DA7F2100D97C1C009D5A1300272727000000000000000000000000000000
      0000000000000000000000000000AD815E005F77A700C9603E00CB8F7000DFD7
      B600DFD7B600DFD7B600DED7B500C5836000C7542E007B471200AB5F12000000
      0000FFFFFF004464E5005772E8005973E800FFFFFF005771E700516DE6004967
      E5004565E500FFFFFF00FFFFFF002F58E4002753E5002450E5001E4DE500FFFF
      FF00224EE3002248D3001B3DC000FFFFFF000000000000000000FDFDFD00C1C1
      C1006D6D6D0096969600FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00DBDBDB007D7D7D0078787800FEFE
      FE00AB721400DB832A00DC862D00DC862E00DD883100DD883100DD883300DD89
      3300DD893300F8E7D600FFFFFF00FFFFFF00E29B5400DD883200DD873000DC86
      2E00DB852C00DA7D1F00AD601200282828000000000000000000000000000000
      0000000000000000000000000000D2733A00CF6E4E00E2DCBE00E2DCBE00E2DC
      BE00E2DCBE00E2DCBE00E2DCBE00E2DCBE00CA725300A04D22006F470B000000
      0000FFFFFF004D6BE600607AE800607AE800FFFFFF00A1AFF200516CE6004966
      E5004564E400FFFFFF00FFFFFF003056E3002851E300264FE300748FED00FFFF
      FF00274FE200274BD3001F40BF00FFFFFF00000000000000000000000000FEFE
      FE00666666006B6B6B00DCDCDC00000000000000000000000000000000000000
      000000000000FEFEFE00D1D1D1007B7B7B0077777700EFEFEF00FDFDFD000000
      00009C711100DD8B3800DE8D3900DE8D3A00DE8D3B00DE8E3C00DE8E3C00DE8E
      3C00DE8E3C00DE8E3C00DE8F3E00FFFFFF00FFFFFF00F9EBDD00DE8D3A00DE8D
      3A00DE8C3900DC852C00905D0E00434343000000000000000000000000000000
      0000000000000000000000000000CE6D4700D2775900E4DDC200E4DDC200E4DD
      C200E4DDC200E4DDC200E4DDC200E4DDC200D1A28300BB502A00423107000000
      0000FFFFFF00516EE700647EE900637DE800FFFFFF00EAEDFC00526CE6004966
      E4004563E400FFFFFF00FFFFFF003054E2002950E300274EE200E3E8FB00FFFF
      FF002950E100294CD2002141BF00FFFFFF000000000000000000000000000000
      0000D5D5D5004F4F4F0079797900FEFEFE000000000000000000000000000000
      0000FEFEFE00ECECEC006A6A6A0074747400CBCBCB00FEFEFE00000000000000
      00008C731100DE903F00DF904000DF904000DF914100DF914100DF914100DF91
      4200DF914200DF914200DF914200F2D3B300FFFFFF00FFFFFF00DF914100DF90
      4000DE903F00DB83290075560D00656565000000000000000000000000000000
      0000000000000000000000000000D2785A00D7866C00E7E1C800E7E1C800E7E1
      C800E7E1C800E7E1C800E7E1C800E7E1C800E7E1C800C7542E000B2203000000
      0000FFFFFF005974E8006F88EB006D86EA00A8B6F300FFFFFF0096A5F0004D69
      E5004965E4004160E4003C5CE4003557E2002F53E2005371E700FFFFFF00879D
      EF002D52E1002B4DD1002342BF00FFFFFF000000000000000000000000000000
      0000FEFEFE00F6F6F6005F5F5F00C3C3C300FDFDFD00FEFEFE00FEFEFE00FEFE
      FE004A4A4A0075757500BFBFBF00F9F9F9000000000000000000000000000000
      00009A762200E0954700E1994F00E1994F00E1994F00E8B27B00FFFFFF00EFC8
      A000E29A5000E29A5000E29A5000E9B47D00FFFFFF00FFFFFF00E1994F00E199
      4F00E1994F00D0731100133D0600B1B1B1000000000000000000000000000000
      0000000000000000000000000000D37F6300DB917900EAE5CF00EAE5CF00EAE5
      CF00EAE5CF00EAE5CF00EAE5CF00EAE5CF00DAB49D00AF4C28000E1504000000
      0000FFFFFF00617BE9007A92EC00778FEC006A83EA00647DE900FFFFFF00E9ED
      FC009CABF1004663E4004260E4008498ED00FFFFFF00FFFFFF003054E1003054
      E1003053E0002D4ED2002443BE00FFFFFF000000000000000000000000000000
      00000000000000000000BEBEBE007171710058585800B2B2B20089898900DCDC
      DC00DADADA0071717100DADADA00FEFEFE000000000000000000000000000000
      0000DD7B3200D5771400E4A36100E4A36100E4A36100E4A36100FFFFFF00FFFF
      FF00FFFFFF00F4DCC300F6E3CF00FFFFFF00FFFFFF00F3D8BC00E4A36100E4A3
      6100E29B52002E4C0900121B0500B0B0B0000000000000000000000000000000
      0000000000000000000000000000E1A79300DB927A00EAE5D000EBE6D200EBE6
      D200EBE6D200EBE6D200EBE6D200EAE5D000DA9B84006A3A1C003B494C000000
      0000FFFFFF006881EA00869BEE008398ED00718AEB006982EA00A6B4F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F5FD0091A4F000385AE3003759
      E2003356E1002C4DD2002140BD00FFFFFF000000000000000000000000000000
      00000000000000000000FAFAFA0046464600575757005D5D5D0063636300ACAC
      AC00FBFBFB00A6A6A60099999900F8F8F8000000000000000000000000000000
      00000000000095771000E5A56400E6A86900E6A86900E6A86900F1CFAD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E1CC00E6A96B00E6A86900E6A8
      6900DD873000103813003C4A4D00000000000000000000000000000000000000
      000000000000000000000000000000000000DB8D5E00E2AA9800DEBBA800ECE8
      D500EEEAD900EDE9D700EEEAD800DEBAA600C857320000000000000000000000
      0000FFFFFF007990EC009BACF10096A8F0008095ED00778FEC006E87EB006881
      E900657EE800617BE800607AE9005C77E8005773E7005370E6004B6AE5004766
      E500395BE200284AD1001B3BBC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00E0E0E000C7C7C7006161
      6100FBFBFB00F8F8F8007B7B7B00ADADAD000000000000000000000000000000
      000000000000C0532D00D4771700E1974B00E9B27A00E9B27A00E9B27A00E9B2
      7A00E9B57F00EEC59A00EDC29600E9B27A00E9B27A00E9B27A00E9B17800E29A
      50003A580D00A2685500BD745D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3795B00E5B19F00E3C6
      B400EFECDC00EBE1D100E1AE9E00D8886E008A4F2F0000000000000000000000
      0000FFFFFF007B92ED00A0B1F2009AACF1008398ED007991EC00718AEB006B84
      EA006982E900667FE900657FE900627CE9005C77E8005774E7004F6DE6004A68
      E500395BE2002547D0001839BA00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00F5F5F5006565
      6500C3C3C300707070008A8A8A00DDDDDD000000000000000000000000000000
      00000000000000000000AF8B4400D4771700E9B47D00EAB88400EAB88400EAB8
      8400EAB88400EAB88400EAB88400EAB88400EAB88400EAB88400E2984D00D379
      1A00555C3C00C1836E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBBF9300CB60
      3A00C7542E00C6542C00A1563000999D97000000000000000000000000000000
      0000FFFFFF004766E5007990EC00758DEC00627DE9005E78E8005974E800526E
      E700526EE7004E6BE6004E6BE6004967E5004362E4004061E4003C5EE4003658
      E200284CDF001A3DCB001030B200FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008D8D
      8D007878780090909000DCDCDC00000000000000000000000000000000000000
      0000000000000000000000000000C2512D00BF691500D77A1A00EBB98600EDC2
      9600EDC29600EDC29600EDC29600EDC19500E39D5600D77A1C007B593500989F
      9A00D6B3A8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEEEE00C8B6A100B76D
      2200B9691700BF6A1200B56613009D672F00BAAFA300D9D7D600FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0BFC000BCBBBC008B8B8B004847
      4800302F300022212200201F20002B2A2B004D4C4D0069676900A7A6A700BCBB
      BC00000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F300CCCCCC007C7C7C005A5A5A00414141003F3F3F005050
      50007D7C7D009D9C9D00E3E3E300F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000343234005C585C0078512E00714C29002320210040393C00413A3D000E06
      7900B77434006C44210026222400463F410078717300ADA8A800000000000000
      0000000000000000000000000000000000004D474200A7A180006E694C006E69
      4C006E694C006E694C006E694C006E694C006E694C006E694C002C282400322C
      280000000000000000000000000000000000000000000000000000000000C583
      6E00262325003B30260077471700A5622000A8652100AB67220081741D001092
      0F0008570700042C03000A0909002622230070696B0000000000000000000000
      0000F2F2F200E5E5E500E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E5E5E500F2F2F200000000000000000000000000C684
      6F00563C2700583D29007E4E21008051250080522700452F1D006F4B2F008053
      27007F5025007E4F2300402B1A005A3C25007C513000524C4C006B6868000000
      00000000000000000000000000000000000097918B00A7A18000F4F3EF00F4F3
      EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF00F4F3EF006E694C00DE9F6100EBA7
      6500000000000000000000000000000000000000000000000000C2826D00AD73
      610053331400834F1B00AD672200B26B2400B26C2500B16D24008879200013A1
      12000F9C0F000D8C0D00022301000B0C050058392200514B4B00000000000000
      0000E9E9E9007C7C7C0077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770077777700777777007C7C7C00E9E9E9000000000000000000C5836D00C17F
      6A00C7542E00FFA64D00FFA64D00FFA64D00C7542E007F7F7F0099999900C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00C7542E0064616100BD6729000000
      00000000000000000000000000000000000033C8F400A7A18000F7F6F300F7F6
      F300F7F6F300F7F6F300F7F6F300F7F6F300F7F6F3006E694C00DEB28800EABD
      9000E8E8E8008F89830048403C000000000000000000C5836E00805A3C008B55
      1F00AC672400AF692400B26C2500B56E2600B66E2600B66F26008C7C210013A4
      130012A2120011A111000F9B0E000F910E000910020047454500B16126000000
      0000EC833500E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300EC833500DCDCDC0000000000E4E3E400AF735F00744A
      3E00FFA64D00FFA64D00FFA64D00FFA64D00C7542E007F7F7F0099999900C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D0066636300BD6729000000
      0000000000001F89A800000000000000000022839F00A7A18000FAFAF900FAFA
      F900FAFAF900FAFAF900FAFAF900FAFAF900FAFAF9006E694C0093765A00997B
      5E00969696005F5B57003D393600CFCFCF0000000000A6B6A600189610005D82
      1A00AF6B2400B26C2500B66E2600B86F2700BA702700B97127008E7E220013A7
      130012A5120012A4120011A11100119E11000F900E000D100D0066381600D9D9
      D900EC833500E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7003F3F3F00B4B4
      B400B4B4B400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700EC833500DCDCDC0000000000E2E2E200C7542E00C252
      2C00FFA64D00FFA64D00FFA64D00FFA64D00C7542E007F7F7F0099999900C0C0
      C000C7542E00FFA64D00FFA64D00FFA64D00FFA64D0068656500BD6729000000
      0000896345005F4242005F424200000000005F424200A7A18000FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB006E694C005F4242005F42
      42005F4242005753500027252500C0C0C000DF7C32004C974C00139B12002398
      1300B06C2400B46D2500B86F2600BA702600BB702700BA7126008F7F210013A9
      130012A7120012A6120012A2110012A01200109A0F0007230400321B0B00D2D2
      D200EC833500ECECEC00ECECEC00ECECEC00ECECEC0034343400353535004040
      400082828200B8B8B800ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFA64D00FFA64D00FFA64D00FFA64D00C7542E00C7542E00C7542E00C754
      2E00C7542E00FFA64D00FFA64D00FFA64D00FFA64D006A676700BD6729000000
      00009C717100B6979700B7999900B89A9A00B89B9B00A7A18000A7A18000A7A1
      8000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000B89A9A00B89A
      9A00B7989800B69696005F42420089898900C9722D0010990F00129F120014A1
      140068871D00B2702500BA702600BD712800BD722800BD7328009181230014AB
      140013AA130013A9130013A41300209F130085781E00975C1E00311E0800A4A4
      A400EC833500F5F5F500F5F5F500F5F5F500F5F5F50031313100353535003291
      F2003291F2004343430043434300BFBFBF00F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D0068656500BB6629000000
      00009C717100B5949400B5949400B5959500B5959500B5959500B6969600B696
      9600B6979700B6979700B6979700B7989800B7989800B7999900B7999900B799
      9900B8999900B89999005F4242006A6A6A00A5712600129E12003DB13D0091D3
      91002AA01600937D2200BB712700BE732800C27A3300DCB7900095892D0014AC
      140085D2850087D2860046951900817E1E00AE6B2300A8652100603912008787
      8700EC833500F8F8F800F8F8F800F8F8F800F8F8F800F8F8F8003291F2003291
      F2003291F2002F90F1003291F20089898900F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D00FFA6
      4D00FFA64D00FFA64D00FFA64D00FFA64D00FFA64D005E5A5B00B36228000000
      000000000000B28F8F00B28F8F00B2909000B2909000B2909000B3919100B391
      9100B3929200B3929200B3929200B4949400B4949400B5959500B5959500B595
      9500B6959500B69595005F424200323232004D80170012A0120055BC5500D4EE
      D40016AA15001EA81600BA742800BF742900C57F3800EDDBC800978D33001DAD
      1500D7E1C400E9DCC700B9722900B66F2700B26C2600AE6924009F5F1F004A4A
      4A00EC833500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE002F90F1002F90
      F1002F90F1003291F2003090F1002A8DF0008C8C8C00C6C6C600FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFA64D00FFA64D00ED904D00ED8E4800ED8C4500ED8B4300ED8B4300ED8B
      4300ED8C4500ED8E4800ED904D00FFA64D00FFA64D00514D4E00A05725000000
      00000000000000000000B4939300B4939300B4939300B4939300B5949400B594
      9400B6959500B6959500B6959500B6969600B6969600B7979700B7979700B797
      9700B7989800B79898005F424200222222002E8B120016A216005BC05B00D6EF
      D6002FB32D003DAF2E00C2823E00C27A3100C7854100EFDDCB00BD883F00BF7A
      3100EEDDCB00F3E6DA00EDDCCB00EAD7C500C7935F00AF6B2600A76521003737
      3700EC833500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3B3002F90
      F1002F90F1002F90F1002E8FF10029CBF00027CBF00046464600C7C7C700FFFF
      FF00FFFFFF00FFFFFF00EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFA95300FFA95300ED945400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ED945400FFA95300FFA953004C475C00A85A27000000
      00000000000000000000B99A9A00B99B9B00B99B9B00B99B9B00BA9B9B00BA9B
      9B00BA9C9C00BA9C9C00BA9C9C00BB9D9D00BB9D9D00BB9E9E00BB9E9E00BB9E
      9E00BC9E9E00BC9E9E005F424200232323002D8D120023A7230063C26300D8EF
      D800C8E8C700D5E5C700EDDCC900C5803A00C9894800EFDECC00C8894700C37F
      3900EEDDCB00EEDECE00C5894E00D2A57900E6CFB800B2733200A56924003939
      3900EC833500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A8D
      F0002A8DF0002B8DF0002F90F10027CBF00024CAF00022C9EF008D8D8D00C7C7
      C700FFFFFF00FFFFFF00EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFB36700FFB36700ED995D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ED995D00FFB36700FFB367008F8F8F00D2752F000000
      0000000000000000000000000000CCB6B600CCB6B600CCB6B600CDB7B700CDB7
      B700CDB7B700CDB7B700CDB7B700CDB8B800CDB8B800CEB8B800CEB8B800CEB8
      B800CEB8B800CEB8B8005F4242003C3C3C00368A130034AD33006EC76E00DAEF
      D90091984300C3894900C7884900C9894900CD925600EFE0CF00CD925600C888
      4900EEDFCE00EEDFCF00C3884B00C6996300DCE7D10038A730001A9816005656
      5600EC833500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3
      B3002A8DF00028CBF00028CBF00026CBF00024CAF00023CAF0002DCCF0004646
      4600C7C7C700FFFFFF00EC833500DCDCDC0000000000C7542E00FFA64D00F9A2
      4B00FFBA7500FFBA7500ED9B6100FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00ED9B6100FFBA7500FFBA750099999900D97931000000
      000000000000000000000000000000000000D9C8C800D9C8C800D9C8C800D9C8
      C800D9C9C900D9C9C900D9C9C900D9C9C900D9C9C900DAC9C900DAC9C900DAC9
      C900DACACA00DACACA005F4242005C5C5C00418915003AAF3A0075C97500DEF1
      DD00DCCCAC00E4C9AD00E4C9AC00E5C8AC00E8CDB200F4E8DC00E6CBB000DBB5
      8C00EFE1D200F1E7DB00DACEAE00D5DCBE00ABDCA90033AB3100149412007979
      7900EC833500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3B3B3002ACCF0002ACCF0002ACBF0002BCBF0002CCCF0003BCFF10049D3
      F2008D8D8D00FFFFFF00EC833500DCDCDC0000000000C7542E00FFAC5900F9A7
      5600FFCB9600FFCB9600EDA57500FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00EDA57500FFCB9600FFCB960053535300A65C25000000
      000000000000000000000000000000000000EDE4E400EDE4E400EDE4E400EDE4
      E400EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5E500EDE5
      E500EDE5E500EDE5E5005F424200A6A6A600A07E26002EA92E0054B8510090A6
      5900C9956000CB956000CD976000CF986100CF986000CF996100CF996000A0A7
      5A0057BF530053C1520052BE510052BC510050B9500020A220000D6C0B00BBBB
      BB00EC833500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B3B3B30033CDF0003ACFF10046D1F1004BD3F2005DD7F3006CDB
      F4008BE2F5008D8D8D00B8662900DCDCDC0000000000C7542E00FFBA7500FDB8
      7400FFE6CD00FFE6CD00EDB79A00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00EDB79A00FFE6CD00FFE6CD004F676C00361E0C000000
      0000000000000000000000000000000000009C7171009C7171009C7171009C71
      71009C7171009C7171009C7171009C7171009C7171009C7171009C7171009C71
      71009C717100A4D7E3000026050061616100DF7C3200159A1300A6A46500C89C
      6D00CD9E6F00CE9E6F00D0A07000D2A17000D2A17100D3A27100D2A17000D0A1
      6F0081BB660065C4630062C2620061C1610058BA58000F7A100016220600B1B1
      B100EC833500FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA8900FAAA
      8900FAAA8900FAAA8900FAAA890054D5F20069DAF30070DBF4007CDEF50088E1
      F500A1E7F700B4ECF90040230E00B8B8B80000000000C7542E00FFC48800FEC3
      8700C7542E00FFE9D300EDB99E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EDB99E00FFE9D300C7542E004C5E63005B7075000000
      0000000000000000000000000000000000007DD9F400A7A18000E9E7E000E9E7
      E000E9E7E000E9E7E000E9E7E000E9E7E000E9E7E000A7A1800077CEE7007DD9
      F400688B9300B5E3ED00C0EEF80000000000000000002C8B1400BB966100C9A0
      7400CFA37700D0A47700D2A57800D3A57800D4A57800D4A57900D3A67800D2A5
      7700C1AA74008DBB6F006CC46B0069C2690048B24800164E1B00425255000000
      0000EC833500FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD8D00FAAD
      8D00FAAD8D00FAAD8D00FAAD8D00AF7962007EDFF50085E0F50091E3F6009AE5
      F700B0EBF900BFEFFA00C2F0FA00B8B8B80000000000C7542E00FFD4AA00FFD4
      AA00ECAA8100FDFDFD00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900E7A6
      7E00F9CFA600F9CFA600C2522C0041353100BA877600C37D6600000000000000
      00000000000000000000000000000000000099E4F900A7A18000E8E6DE00E8E6
      DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00E8E6DE00A7A1800091D7EB0099E4
      F9000000000000000000000000000000000000000000C2542D0094712600B782
      4900D0AA8300D3AC8600D5AE8700D6AF8700D7AF8800D7AF8800D7AF8700D6AF
      8700D3AE8600D2AD85009DBA7C0065BB6100187F1500AA6D5900BE755E000000
      0000EC833500FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB89C00FBB8
      9C00FBB89C00FBB89C00FBB89C00FBB89C00B0816D00AEEAF800BCEEF900C2F0
      FA00CEF3FB00D3F4FB00D3F4FB00C2C2C20000000000C7542E00FFE6CD00FFE6
      CD00EDB79A00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000EDB7
      9A00FFE6CD00FFE6CD00C7542E00736B6900C698890000000000000000000000
      000000000000000000000000000000000000A6E6F900A7A18000EBE9E200EBE9
      E200EBE9E200EBE9E200EBE9E200EBE9E200EBE9E200A7A180009DD9EB00A6E6
      F900000000000000000000000000000000000000000000000000A5A16300A16D
      2900CAA07600D2AD8900D6B28E00D7B48F00D8B49000D8B49000D8B49000D8B4
      8F00D6B28E00D4B18B00BB9C6B0069903400666E4800C3846F00000000000000
      0000EC833500FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200FCBD
      A200FCBDA200FCBDA200FCBDA200FCBDA200FCBDA200B0847100CBF2FB00D1F3
      FB00D8F5FC00DAF6FC00D9F6FC00E0E0E00000000000F8F8F800C7542E00C754
      2E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C7542E00C754
      2E00C7542E00C7542E00ADADAD00CDE3E7000000000000000000000000000000
      0000000000000000000000000000000000000082A900A7A18000F5F4F000F5F4
      F100F5F4F100F5F4F100F5F4F100F5F4F100F5F4F000A7A18000007CA000BED3
      D70000000000000000000000000000000000000000000000000000000000C452
      2D00A7612300AA692800C18F5E00D5B39200D8B79600D9B99900D8B89800D5B2
      9000BD895400AF7133008F6C4700A7AFA900D8B4A90000000000000000000000
      0000EC833500EC833500EC833500EC833500EC833500EC833500EC833500EC83
      3500EC833500EC833500EC833500EC833500EC833500EC833500A55B2500DFF7
      FC00DFF7FC009B562200EC833500F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097979700A7A18000A7A18000A7A1
      8000A7A18000A7A18000A7A18000A7A18000A7A18000A7A18000F1F1F100FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200F1F0F000D4C4B300AF7A4400A86C3000A8692700A7692B00AB7F
      5100CFC3B600E6E4E200FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D400C4C3
      C400C6C5C600C7C6C7009E9D9E00555455003A393A0027262700252425003332
      33005C5A5C007A787A00B9B8B900CBCACB00D2D1D200E0DFE000F1F1F1000000
      00000000000000000000D2D2D200C2C1C200C4C3C400C5C4C5009C9B9C005453
      5400393839002726270025242500323132005B595B0079777900B8B7B800CAC9
      CA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989798004F4E4F003534350025242500232223002F2E
      2F005554550072707200ADACAD00BEBDBE00C5C4C500D5D4D500EBEBEB000000
      000000000000EFEFEF00C2C1C200A5A3A5009B979B0098949800716E71003C38
      3C00292529001E1A1E001C191C0025212500403C400056525600878387009894
      98009F9B9F00B7B4B700DAD9DA00FEFEFE000000000000000000DD965F00DE97
      6000DE986200DE996400DF9B6700DF9B6700DF9B6700DF9B6800DF9B6800DF9B
      6800DF9B6700DF9B6700DE996400DD986200DC955F00827C7E00B7B5B5000000
      0000000000000000000095654000966641009667420096674300966945009669
      450096694500966946009669460096694600966945009669450098694500CB8B
      5A00DB945F00000000000000000000000000000000008A5D4E005C524C00544C
      46004F4843004B443F003A3530002F2B28002E2B27002E2B27002E2B27002E2B
      27002E2B27002E2B27002F2B2700332D2900342E2900232122005C5B5B000000
      00000000000082584A00A7471C00A9491B00AB4A1A00AB4A1A00AC4B1A00AC4B
      1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AC4B1A00AB4A1A00AA4A
      1B00A6471C001B141B0046404500D9D8D9000000000000000000E29B6000DDD8
      DD00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9DE00DED9
      DE00DED9DE00E0DBE000DFDADF00DED9DE00DAD3DA003C3638005F5B5C000000
      0000000000002199C6002199C6002199C6002199C6002199C6002199C6002199
      C6002199C6002199C6002199C6002199C6002199C6002198C5007B929E00BCB8
      BC00D8D1D800000000000000000000000000000000002095C100C7BFB700AEA6
      A0009B948E0045444300F1A96300F2AE6C00F2AE6C00F2AE6D00F2AE6D00F2AE
      6D00F2AE6C00F2AE6C00F1AC6900F1AB6700F1A96400353434001A1819000000
      0000000000001E85AE00D27C3E00D6803F00D8834000D98440009E969E00A49D
      A400B0A8B000CEC6CE00DCD4DC00E5DEE500E8E1E800E8E1E800D8834000D781
      4000D07B3F00A3451D00170F1600C2BFC2000000000000000000EFA55F00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00E9E9E900DDD7DD00332F31009B5422000000
      00000000000056D2EB0052D1EB0058D2EB006AD4EB0074D5EB007DD6EB0080D7
      EB0080D7EB0080D7EB007FD7EB007BD5EB0074D3EA006FD2E9002198C5008399
      A100D9D3D900000000000000000000000000000000004BB5CB0028CEFF002DD0
      FF0035D1FF0039D2FF00F1A76000F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600EEEEEE00918B850049413C000000
      000000000000B3501800E38A3D00E58D3E00E78F4000E7904000A7A4A700403D
      4000403D4000DBD9DB00EAE8EA00F5F3F500F8F6F800F8F6F800E78F3F00E68E
      3F00DF873D00D07A3C00A6471C00ACA9AC000000000000000000F0A55D00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00EAEAEA00DDD8DD0008080800512D12000000
      0000000000005CD9F10024A1CD005DD9F1006CDBF10074DCF10080DEF10084DE
      F10084DEF10084DEF10083DEF1007DDCF00074D9EE006FD7ED0053C2DF002199
      C500C0BBC000080808000000000000000000000000002194B6002ACFFF002FD0
      FF0037D2FF003BD3FF00F0A55D00F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600EDEDED00918B8500423E3A000000
      000000000000B9541600EA903B00EB913C00ED933E00ED943F00AAAAAA00403F
      4000403F4000E0E0E000F0F0F000FBFBFB00FEFEFE00FEFEFE00ED933E00EB92
      3D00E68C3B00D67F3A00AA4A1B00A7A4A7000000000000000000F0A45A00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00E9E9E900DDD8DD00050E0300241309000000
      0000000000005FDDF40025A4CF005EDDF4006BE0F40072E1F4007FE1F40084E2
      F40085E2F40083E2F40082E2F4007CDFF30074DCF1006EDAF0005ED0E800219A
      C60095929500050E03002413090000000000000000002295B7002BCFFF002FD0
      FF0038D2FF003BD3FF00F0A45A00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00918B85003D3A3A000000
      000000000000BB551500EA8F3A00EB913B00EE943C00EE943D00ABABAB005050
      500051515100E1E1E100F1F1F100FCFCFC00FFFFFF00FFFFFF00EE943D00EC92
      3C00E68D3A00D7803900AB4A1A009B989B000000000000000000F0A25600EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00E9E9E900DCD7DC003A200B00180E04000000
      0000000000005FE4F9005EE4F90027A9D20064E4F9006AE5F90076E6F9007CE7
      F9007DE8F9007CE7F9007AE7F90076E5F8006DE1F60067DFF4005CD8F00051CD
      E8006C8F9F00371E0A00180E040000000000000000002194B60029CFFF002DD0
      FF0035D1FF0038D2FF00F0A25700EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00918B85003C3A3A000000
      000000000000BB561500EA8F3700EC903800ED923900ED923A00C35B1300C35B
      1300C35B1300C35B1300C35B1300C35B1300C35B1300C35B1300ED923900EC90
      3900E68B3700D87F3800AC4B1A00706D70000000000000000000F0A15500EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00E9E9E900DCD6DC0075431300251608000000
      0000000000005AE5FB005AE5FB005AE5FB0060E6FB0065E7FB0070E8FB0075E9
      FB0076E9FB0075E8FB0074E8FB006EE6FA0066E2F80061E0F60056DAF20053D5
      EF00219AC600683B11002416080000000000000000001F93B60027CEFF002BCF
      FF0032D1FF0035D1FF00F0A25700F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600EEEEEE00918B85003D3B3A000000
      000000000000BB561500EA8E3500EC8F3600ED913800ED913800ED8F3400ED90
      3500ED903500ED903600ED913700ED913700ED8F3400ED8F3400ED903700EC8F
      3700E68A3600D87F3600AC4B1A00575457000000000000000000F0A25600ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00EAEAEA00DCD6DC009E5A18005A330C000000
      00000000000053E6FD0054E6FD0056E6FD0028ACD50061E8FD0065E9FD0067E9
      FD0067E9FD0066E9FD0066E9FD0061E8FC005CE5FA0058E2F9004FDCF5004CD8
      F20038BBDE00653F1800502E0B0039393900000000001A91B40020CDFF0023CD
      FF0029CFFF002CCFFF00F0A45B00F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F0F0F000918B8600423E3A000000
      000000000000BB561500EA8C3200EC8D3300ED8F3300ED8F3400ED8F3400ED90
      3500ED903500ED903600ED913700ED913700ED8F3400ED8F3400ED8E3300EC8D
      3300E6883200D87D3300AC4B1A002B282B000000000000000000F0A45B00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00ECECEC00DCD7DC0082491300894E12000000
      0000000000005DE9FD005FE9FD0061EAFD0066EAFD0029ADD60067EBFE0067EB
      FE0067EBFE0067EBFE0065EAFD0064EAFD005FE7FC005BE6FB0052E0F7004FDC
      F5004CD5EF00219AC7005D370E002727270000000000128DB10022CDFE0024CD
      FE0029CEFE002ACEFE00F0AA6600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C59600F5C59600F5C59600F2F2F200948F8B00443F3B000000
      000000000000BB561500EA8B3100EC8C3100ED8D3100ED8D3100ED8F3400ED90
      3500ED903500ED903600ED913700ED913700ED8F3400ED8F3400ED8D3100EC8C
      3100E6883200D87D3300AC4B1A001E1B1E000000000000000000F0A65D00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EDEDED00DDD8DD005A330F00975311000000
      00000000000068EAFD006AEAFD006BEBFD0071ECFD0029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD60028ACD50028ABD40028AAD40027A7D10026A6
      D00024A1CC00219AC6007B60360028282800000000000F8CB0002ACEFE002BCF
      FE002FD0FE0030D0FE00F1AE6D00F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300A39E9A004A4742000000
      000000000000BB561500EA8E3600EC8F3600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00E6883300D87D3400AC4B1A001F1C1F000000000000000000F0A86100F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EEEEEE00DED9DE0075371A00623E0B000000
      00000000000088EEFD0089EEFD0089EFFD008DEFFD008FEFFD0093F0FE0092F0
      FE0091F0FD008EEEFC008DEEFC008DEEFC0089ECFB0088EAFA00A3A3A300E7E7
      E70000000000000000000000000000000000000000000888AE003BD3FE003CD3
      FE003ED3FE003ED3FD00F2B67B00F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F3B77E00F7E0CE00F7E0CE00F4BE8900D9D3CE004F4B44000000
      000000000000BB561500EB944100ED954100FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFD
      FD00E68C3B00D8803B00AC4B1A00333033000000000000000000F0A86300F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000EEEEEE00DED9DE00883920003B2B07000000
      00000000000099F1FD009DF1FD009EF1FE009FF1FE00A0F2FD00A0F2FE009DF0
      FD0099F0FC0093EFFC0092EFFC0091EEFC008EECFA008DEBF900A7A7A700E9E9
      E90000000000000000000000000000000000000000000687AD0046D5FE0046D5
      FE0047D5FE0048D5FE00F3B88000F5C59600F5C59600F5C59600F5C59600F5C5
      9600F6F6F600F3B77E00F7E0CE00F7E0CE0059523E0082785B004E4B46000000
      000000000000BB561500EB974600ED984600D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3
      D300E7904100D9844100AC4B1A004C494C000000000000000000F0AD6A00F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100EFEFEF00E0DBE000933D24000A1E03000000
      00000000000028ACD500BBF4FD00BEF5FD00C0F5FD00C0F5FD00BFF5FD00B7F3
      FD0028ABD400ECECEC00EEEEEE00EFEFEF00EFEFEF00EFEFEF00F0F0F000EDED
      ED00DCD7DC008E3B23000A1D0300AEAEAE00000000000285AC005CDAFE005CDA
      FE005DDAFE005DDAFE00F4BF8C00F5C59600F5C59600F5C59600F5C59600F5C5
      9600F8F8F800F4BE8900F4BE89005CDAFE0095771D002B252200000000000000
      000000000000BB561500EC9D5000EE9E5000D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3
      D300E8974D00DA8A4C00AC4B1A00868386000000000000000000F1B27400F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F2F2F200F2B57900F1B17200EFAF7100E2A26D00974123000D1404000000
      000000000000FFFFFF0028ACD500CEF6FD00CEF6FD00CEF6FD00CCF5FC00EBEB
      EB00EFEFEF0000000000F2F2F200EFEFEF00EEEEEE00F0B4780000000000EEAE
      710000951100009313000091140073737300000000000085AC0076E0FE0076E0
      FE0076E0FE0076E0FE00F5C39300F5C59600F5C59600F5C59600F5C59600F5C5
      9600F5C59600F5C5960076E0FE0076E0FF0059808900AEE4F000000000000000
      000000000000BB561500EDA55F00EFA65F00D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D3D3
      D300E9A15E00DB935C00AC4B1A00504D50000000000000000000F2B67B00F4F4
      F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400F4F4F400F3B77D00F7E0CE00F5DECC00E3AC820064371A003A484B000000
      000000000000FFFFFF00F1B57B0028ABD40028ABD40028ABD40028AAD300F0F0
      F000F3F3F30000000000F3F3F300AAAAAA00ECECEC00EEB37B00F5DECC00F2DB
      CA000095120000931300009214006F6F6F00000000000085AC0083E3FF0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3FF0083E3
      FF0083E3FF0083E3FF0083E3FF0083E3FF006A8E9700B8E7F100000000000000
      000000000000BB561500EEAB6C00F0AD6C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00EAA76B00DB986700AB4A1A004D4A4D000000000000000000F3BC8700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F4BD8700F4DDCC00EFB88600BC522F0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000F6F6F600007B0D006D6F7200AE876000B8A69A00B48B
      65000096110000951200009512006F6F6F00000000000085AC009DE9FF009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9FF009DE9
      FF009DE9FF009DE9FF009DE9FF009DE9FF008DA6AB00CEEEF500000000000000
      000000000000B9541600F0BB8A00F1BD8B00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FBFB
      FB00EBB68800DBA58100A9491B00555355000000000000000000F4BF8C00F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F3BE8B00EFB88600B8745E00884E2E0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000007B0F00166C2300275822002A5924001E54
      1B0000971000BA7E6A000096100084848400000000000085AC00AAECFF00AAEC
      FF00AAECFF00DD761400DD761400DD761400DD761400DD761400DD761400DD76
      1400AAECFF00AAECFF00AAECFF00AAECFF00AEC5CB00D7F3F900000000000000
      000000000000B7531600EEBE9300F0C09400D2D1D200D2D1D200D2D1D200D2D1
      D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D2D1D200D1D0D100D0CF
      D000E9B89100D8A68900A7471C007A797A000000000000000000F5C39300F5C5
      9600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C59600F5C5
      9600F2C29400F0BD900099522E00979B95000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000086A1590057933E00177714003686
      3E009EA47F00D3A29200CE948200E5E5E50000000000FEFCFB000085AC000085
      AC000085AC00DD761400DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDB
      DB000085AC000085AC000085AC00C2D7DB00DBF2F70000000000000000000000
      00000000000000000000B7531600B9541600BB561500BB561500BB561500BB56
      1500BB561500BB561500BB561500BB561500BB561500BB561500BB551500BA54
      1600B35018007D605700C38C7B00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600827B7300795C3E0079461100B4651100AB6112009562
      2D00B6AB9F00D8D6D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000979397006D6A6D0034303400201D200015121500131113001B18
      1B00373437004F4C4F0085818500979397000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E2E1E200ECEBEC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700F0F0F000E2E2
      E200E6E6E600F9F9F900FDFDFD00ECECEC00CCCBCC00D1D0D100EEEEEE00F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000A246190094401700692E100089552C009F6A3C00B57D4A00B07947007F51
      2B00431D0A0053240D008037130093401700A4461C0000000000000000000000
      0000EAEAEA0096939600716D7100716D7100716D7100716D7100716D7100716D
      7100716D7100716D71006E6A6E00130BE5002D258C00504A50006E686E007A74
      7A00C0BEC0000000000000000000000000000000000000000000000000000000
      000000000000F1F1F100CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CCCCCC00F8F8
      F80000000000000000000000000000000000353335005F5B5F00815731007B52
      2C0026232400453E4100473F42000F068300C77E3800754A2400292527004C44
      4700827B7D000000000000000000000000000000000000000000D17C3E00D27D
      3E00AF6A34008D552900BE844E00D79A5F00D89B6200D99E6500D99D6500D79A
      6000BD834D007B5C4000683F1F008B532900C1723B00A2451D00000000000000
      0000E0E0E000DB945F00DC966200DC976400DD9A6600DD9A6600DD9A6600DD9A
      6700DD9A6700DD996700D4946300120BEC00120BEA0085584600BF7E5500CB85
      5B00625F62000000000000000000000000000000000000000000000000000000
      0000000000007272720073727200737272007372720073727200737272007372
      720073727200737272007372720073727200737272007372720075757500F7F7
      F70000000000000000000000000000000000593E29005F422C00C67B3400CA81
      3B00CB823D006D4A2E00B0774A00CB833E00C97F3A00C77D3700654429008F5F
      3A00C4804C000000000000000000000000000000000000000000D3803900B36E
      3000D08B4A00D4915100D7995D00D99E6600DAA06900DAA26C00DAA26C00D99F
      6700D79A5F00D6965A00D08D4D007F5226007E4C2200C1713800A3461C000000
      0000E27D3300E2DFE200E3DFE300E3DFE300E3DFE300E3DFE300E3DFE300E3DF
      E300E3E0E300DBD9DB006F6DDA000E0BF6000E0BF4000E0AF200A29AA200BF7E
      5200B4B1B400000000000000000000000000FEFEFE00FEFEFE00FCFCFC00FCFC
      FC00FBFBFB009D9C9C00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00EFE4DB0073727200F7F7
      F70000000000000000000000000000000000BF7D6800C4782F009B632F00D1A3
      7700CE864200A46F3E009D6B3C00CF874400D5A57900CB8C5200C5793200785E
      4400D2CBCB0000000000000000000000000000000000B4521500B16F2F00D18A
      4600D4915100D5955800D89C6300DAA26C00DBA36E00DBA57000DBA57000DAA2
      6C00D89D6400D79A5F00D4925300D38E4D007F5023008B53260093401700A6A3
      A600E27D3300E9E8E900E9E8E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E9009898DB000908FC005958C7006765E3000B08F700746EA000A169
      4400B2AFB2000000000000000000000000007272720073727200737272007372
      72007170700064636300FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00EFE4DB0073727200F7F7
      F70000000000000000000000000000000000A56A5700C5782F009E652F00D3A6
      7900DDAD7F00D28C4900D28C4900765C4400DDAD7F00CC8F5400C57932007E62
      4800D6D0D00000000000000000000000000000000000AE4F1400CE854000D18B
      4800D4925300D6965A00D99D6500DAA26C00DBA36E00F1DDC900F1DDC900DBA2
      6D00D99E6500D89B6100D5935500D3905000CD864200693E1C00813814009996
      9900E27D3300EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA005D5DE3000706FE008F8EBC00C2C1E0000907F900403AC7009361
      3F00AEABAE000000000000000000000000009F9F9F00FFF4EA00FFF4EA00FFF4
      EA00FEF3E9009F9A9600FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00EFE4DB0073727200F7F7
      F7000000000000000000000000000000000087544600C4772E009E652F009C9C
      9C00CBCBCB00D28C4900D38D4A0070707000CBCBCB00B38B6300C5793100A1A1
      A100D8D2D2000000000000000000000000009B717100A75A1E00D0884300D28B
      4800D4935400D6965A00D89C6300DAA06900DAA26C00FFFFFF00FFFFFF00DAA1
      6A00D89D6400D79A5F00D5935500D3905000D189450074461F0054250D006764
      6700E27D3300EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EAEAEA001B1BFE001B1BFE00DCDCDC00E8E8E800DAD8E4001C18EF003C26
      B0009A969A00F0F0F00000000000000000009F9F9F00FFF4EA00FFF4EA00FFF4
      EA00FEF3E9009F9A9600FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00EFE4DB0073727200F7F7
      F70000000000000000000000000000000000DED9D900DFDCDC00C87C3300A177
      4F006B6B6B00D28A4600D28A460061616100CB813A00C97E3600CFCFCF00DEDE
      DE00DCD6D6000000000000000000000000009A6F6F00BF743000D0884300D18B
      4800D4925200D5955700D79A5F00D99E6500D99F6700FFFFFF00FFFFFF00D99E
      6600D79A6000D6985C00D4925300D38F4F00D0894400B2703100431D0A004B49
      4B00E27D3300EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00E8E8E800E5E5E500EAEAEA00EAEAEA00E6E5E6002723F1002821
      E9008C878C00ECECEC00EA823500000000009F9F9F00FFF4EA00FFF4EA00FFF4
      EA00FEF3E9009F9A9600FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4
      EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00FFF4EA00EFE4DB0073727200F7F7
      F7000000000000000000000000000000000000000000EFBA8800C6782F00CC80
      3800A36E3B00D1874100D18842009B683800CA7E3600C77B3100E4B28300EDBA
      880000000000000000000000000000000000956C6C00CD7F3500CF853E00D087
      4200D28D4A00D38F4E00D4935400D6965900D6975B00FFFFFF00FFFFFF00D696
      5A00D5935500D4925200D28D4B00D18B4800CF863F00CD81370076431900201E
      2000E27D3300EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00ECECEC00E9E9E900E8E7E8009F9BE0003E38
      EE00554DAC00D4D2D400DF7C3200000000009F9F9F00FFF4EA00FFF4EA00FFF4
      EA00FEF3E9009F9A9600FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5
      EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00FFF5EC00EFE5DD0073727200F7F7
      F700000000000000000000000000000000000000000000000000EFA35B00D593
      5400CB7C3000CC7F3400CD7F3500CB7C3100D4A67A00E6B48400F3BE8B000000
      000000000000000000000000000000000000936B6B00CB7B2F00CD823900CE84
      3D00D0894600D18B4900D38F4E00D3905000D3915100FFFFFF00FFFFFF00D390
      5000D38F4E00D28D4C00D0894600D0874200CD823A00CC7C30009F5E21001513
      1500E27D3300EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00ECECEC00ECECEC00EBEBEB00E8E8E800E2DFE200B276
      7400534AE400B5B2B500C76D2E00DADADA009F9F9F00FFF4EA00FFF4EA00FFF4
      EA00FEF3E9009F9A9600FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6
      EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00FFF6EF00EFE6E00073727200F7F7
      F70000000000000000000000000000000000000000000000000000000000E8B5
      8500A48E7900848484008484840073685E00D3A67900E8B58500000000000000
      000000000000000000000000000000000000946B6B00CC7E3400D0874200D089
      4500D28C4900D28D4C00D28F4F00D3905000D4915100FFFFFF00FFFFFF00D390
      5000D28F4F00D28E4D00D28C4A00D18A4700D0884300CC7F3500A45F20001614
      1600E27D3300EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E3E0E300E195
      56005E55E4009E99C500C96E2F00DADADA009F9F9F00FFF5EB00FFF5EB00FFF5
      EB00FEF4EA009F9B9600FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7
      F100FFF7F100FFF7F100FFF7F100FFF7F100FFF7F100EFE7E20073727200F7F7
      F700000000000000000000000000000000000000000000000000F0AD6D00DDDD
      DD0082828200848484008484840082828200A3A3A300DDDDDD00F2F2F2000000
      000000000000000000000000000000000000976D6D00CE833C00D38F4F00D390
      5000D4915200D4925300D4935500D9A06A00E9C8AA00FFFFFF00FFFFFF00D493
      5600D4935500D4935400D4915200D3915100D38F4F00CE833C008F4F16002927
      2900E27D3300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000EFEFEF00EEEEEE00EDEDED00EBEBEB00E9E8E900E3DFE300E098
      5D009C9A9C00F9F9F900E8813400000000009F9F9F00FFF6EE00FFF6EE00FFF6
      EE00FEF5ED009F9B9800FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9
      F300FFF9F300FFF9F300FFF9F300FFF9F300FFF9F300EFE9E30073727200FDFD
      FD00000000000000000000000000000000000000000000000000ECB278008484
      840085858500A4A4A400D9D9D9008585850071717100A37B5400EFD9C700F0D8
      C700000000000000000000000000000000009A6F6F00CC7E3400D5945600D594
      5700D5955800D5955800D5965A00DFB08300FFFFFF00FFFFFF00FFFFFF00D597
      5B00D5965A00D6965900D5955800D5955700D5945600CC7E34007B4012004240
      4200E27D3300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000EFEFEF00EFEFEF00ECECEC00EAEAEA00E8E7E800E1DDE100DE96
      5C00716F71000000000000000000000000009F9F9F00FFF6EF00FFF6EF00FFF6
      EF00FEF5EE009F9B9800FFF9F400FFF9F400FFF9F400FFF9F400FFF9F400FFF9
      F400EAE3DD00978A6B00948867009488670094886700887D5F0077767600FEFE
      FE00000000000000000000000000000000000000000000000000E7AF79008787
      870088888800D3A67900E5B383008888880072727200785B3F00E5CEBE00E7CF
      BE000000000000000000000000000000000000000000BE671900D89E6600D99F
      6700D99F6700D99F6700D99F6800D9A06900D9A06900D9A06900D9A06900D9A0
      6900D99F6800D99F6800D99F6700D99F6700D89E6600AF621B006B2F1000817E
      8100E27D3300F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F0F0F000F0F0F000EDEDED00EBEAEB00E8E6E800DED9DE00DA96
      63006FB1C2000000000000000000000000009F9F9F00FFF8F200FFF8F200FFF8
      F200FEF7F1009F9C9900FFFAF700FFFAF700FFFAF700FFFAF700FFFAF700FFFA
      F700CAC3B700FAC93600FFCC3300FFCC3300F5C43000E1E1E100FEFEFE000000
      00000000000000000000000000000000000000000000F1BD8A00A48E79008F8F
      8F00786C6000E8B58500F1BD8A00AC957E008F8F8F0072665C00BF8F67009A5E
      4B000000000000000000000000000000000000000000B6541400D28D4B00DDAA
      7900DDAA7A00DDAA7A00DDAB7A00DDAB7A00DDAB7A00FFFFFF00FFFFFF00DDAB
      7A00DDAB7A00DDAB7A00DDAA7A00DDAA7A00D390500091613C00964217000000
      0000E27D3300F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100F1F1F100EDEDED00EAE9EA00E7E4E700DCD5DC00D797
      6A0089C2D1000000000000000000000000009F9F9F00FFF9F400FFF9F400FFF9
      F400FEF8F3009F9C9A00FFFCF900FFFCF900FFFCF900FFFCF900FFFCF900FFFC
      F900CAC5BA00FAD05100FFD34F00EDC34700E8E8E80000000000000000000000
      000000000000000000000000000000000000F1BD8A00E8B58500989898007A6F
      6500D4AB8200F2C3940000000000F0C1920098989800979797005F443C00AB73
      6100BF765E0000000000000000000000000000000000BA551500C7722100D79A
      5F00E0B18400E0B18400E0B18400E0B18400E0B18400FFFFFF00FFFFFF00E0B1
      8400E0B18400E0B18400E0B18400E0B18400C7762600B37D5400A34719000000
      0000E27D3300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F0B37800EBAB7000E7A76F00DC9C6C00D494
      6900A3D8E5000000000000000000000000009F9F9F00FFFAF600FFFAF600FFFA
      F600FEF9F5009F9D9B00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFDFB00FFFD
      FB00CAC6BF00FADB7F00E6C76D0080796700FEFEFE0000000000000000000000
      000000000000000000000000000000000000EFEFEF00DFDFDF009C9C9C009F9F
      9F00D8D8D800EAB0790000000000E9D1C0009C9C9C009C9C9C00604A43008A63
      5700BF7A64000000000000000000000000000000000000000000ECB88800CF88
      4500DAA36D00E5BD9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE9800E5BE
      9800E5BE9800E5BE9800DCA77400CC7E3300BA906C00D8A27F00000000000000
      0000E27D3300F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F4F4F400F4F4F400EEB47E00ECD2C500E6CBC1008FB2BD00B0D8
      E200CDF2FA000000000000000000000000009F9F9F00FFFBF900FFFBF900FFFB
      F900FEFAF800A19E9D00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00CAC9C700D3C9AD00F2F2F200FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000E8E8E800A5A5A500A5A5A500E1E1
      E100F1F1F100000000000000000000000000D3BAAF00A5A5A500A5A5A5006A56
      4F00C28C7B000000000000000000000000000000000000000000EDBD9200ECBD
      9200C7742400D7995E00E8C5A300E8C5A300E8C5A300E8C5A300E8C5A300E8C5
      A300E8C5A300E5BE9900C7762700A27C5700D9AC8700D7A58800000000000000
      0000E27D3300F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F6F6F600F4F4F400EDB68400E7CDC200DFA88000B8DAE300CCED
      F500000000000000000000000000000000009F9F9F00FFFCF900FFFCF900FFFC
      F900FFFCF900A19F9D009F9E9C00898682009D8B55009F8C5400978551009595
      95009F9F9F00AEAEAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE988300AAAAAA0081756900E8B5
      8500F1BD8A00000000000000000000000000E0C8BD00A68F7E00AAAAAA007C74
      7100C8998A000000000000000000000000000000000000000000000000000000
      0000BA551500B6541400BE651600D4935400DDA77500E3B99000E2B68B00D696
      5900B9641500A4521200AF4F1400B65215000000000000000000000000000000
      0000E57F3300F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F6F6F600F4F3F400E9B58A00B4632900D5763000A45B25000000
      0000000000000000000000000000000000009F9F9F00FFFDFC00FFFDFC00FFFD
      FC00FFFDFC00FFFDFC00FFFDFC00CAC7C200FAE6AB006A686300EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9BA8D00B3B3B300E0B38800EBBC
      8E000000000000000000000000000000000000000000D2752F00B3B3B300D0E7
      EB00DBB6AB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A49E7E00A29C7C009E9979009E987900A09A
      7A00A49E7E00A6A07F0000000000000000000000000000000000000000000000
      0000FEFEFE00F7F7F700F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F4F4F400FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000A1A0A0009F9F9F009F9F9F009F9F
      9F009F9F9F009F9F9F009F9F9F009F9F9F00AEAEAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFF0000000000000000000FC001000
      0000000000000000FC0010000000000000000000FC0010000000000000000000
      C00010000000000000000000C00010000000000000000000C000100000000000
      00000000C00010000000000000000000C00010000000000000000000C0001000
      0000000000000000C00010000000000000000000C00010000000000000000000
      C00030000000000000000000C00070000000000000000000C000F00000000000
      00000000C001F0000000000000000000C003F0000000000000000000C007F000
      0000000000000000C00FF0000000000000000000FFFFF0000000000000000000
      FFFFFFFFFFC1FC383FFF0000FFFFFFFFFF80F0181FFF0000FFFFFFFFFF807008
      01FF0000F3FFFFFFC080200801FF000083F0180FC080000800FF000001C01001
      C080000C00FF0000818018018080001E003F000080C0180380C0001E003F0000
      8000180001E0007E000F00008000180001F000FD00030000C0003C0003F0007F
      80070000C0003C0007C0003FC0030000C0003C000FC0001FE0030000CC0C7C20
      3F80000FF0010000EFFEFEFFFF80000FF8000000FFFFFFFFFF80000FFC000000
      FFFFFFFFFF80600FFE000000FFFFFFFFFF80700FFFC00000FFFFFFFFFFC1F81F
      FFE00000FFFFFFFFFFFFFFFFFFFF0000FFFFF80001FFFFFF801F0000E3FFF000
      00FFEFFE00070000C3FFF00000FFE7FC00070000C1FFF00000FFE7F800010000
      C07FF00000BFC1F800010000C07FF000001FC01000000000F01FF000000FE000
      00000000F01FF000000FE00000000000FC0070000087FC0000000000FE001000
      00C3FF0000000000FE00100000C1FE0000000000FE00100000E1F81000000000
      FE00100000F0F03000000000FE00100000F000F000000000FE00100000FC00F0
      00000000FE00100000FC00F800010000FF00700000FE00F800010000FF807000
      00FF00FC00030000FFC0F00000FFE1FE00070000FFFFF80001FFE3FF801F0000
      FFFFFF000FF800FFFFFF0000F0003F000FE0007000000000E0001F000FC00030
      00000000C0001F00018000100000000080001B00008000000000000080001100
      0000000000000000800010000000000000000000800010000000000000000000
      80001800000000000000000080001C00000000000000000080001C0000000000
      0000000080001E00000000000000000080001F00000000000000000080001F00
      000000000000000080001F00000000000000000080001F000180001000000000
      80003F000F8000100000000080007F000FC00030000000008000FF000FE00070
      00000000FFFFFF000FF001FFFFFF0000C0001C000FFC001800000000C0001C00
      0780001800000000C00018000780001800000000C00018000780001800000000
      C00018000380001800000000C00018000180001800000000C000180001800018
      00000000C00018000180001800000000C00018000080001800000000C0001800
      0080001800000000C00018000080001800000000C00018000F80001800000000
      C00018000F80001800000000C00018000080003800000000C000180420800038
      00000000C00018040080003800000000C00078FC0080003800000000C00078FE
      0080003800000000C000F8FF0080007C00000000FFFFFCFFFFF803FFFFFF0000
      F800FFFE1FFFFFFF800F0000F000700007F8000F00070000C000300007F8000F
      00070000C00010000700000F00070000800000000700000F0007000080000000
      0700000F00070000000000000300000F00070000000000000100000F800F0000
      000000000100000FC01F0000000000000000000FE03F0000000000000000000F
      C01F0000000000000100000FC00F0000000000000700000FC00F000080000000
      0700001F800F0000800010000700007F02070000800010000700007F02070000
      C0003000070000FF07070000C00030000F0003FF07070000F000F0001F001FFF
      0F870000FE03F0003F007FFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object JvWinHelp1: TJvWinHelp
    Left = 54
    Top = 589
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    Animated = True
    IconIndex = 0
    Icons = ilTrayIconInfo
    Delay = 500
    OnBalloonClick = JvTrayIcon1BalloonClick
    Left = 16
    Top = 589
  end
  object ilTrayIconInfo: TImageList
    Left = 124
    Top = 552
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFE4E4E4FFC3C3C3FFB3B3B3FFB8B8B8FFD3D3D3FFF0F0F0FFFDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFE7E7
      E7FFAAAAAAFF537853FF357E35FF318231FF347234FF555B55FF888888FFCCCC
      CCFFF7F7F7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFF5C5C5CFF000000000000
      00000000000000000000000000000000000000000000FCFCFCFFD5D5D5FF3D85
      3DFF2C952CFF329832FF369A36FF369A36FF349934FF309730FF279127FF4853
      48FFA7A7A7FFF1F1F1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFF00000000000000000000
      000000000000000000000000000000000000FCFCFCFF656565FFFDFDFDFF0000
      000000000000000000000000000000000000FEFEFEFFDCDCDCFF1E8B1EFF2792
      27FF2F962FFF349934FF389B38FF399B39FF379A37FF339833FF2C952CFF2591
      25FF325A32FFA7A7A7FFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191FFF5F5F5FF000000000000
      000000000000000000000000000000000000FEFEFEFF656565FFA7A7A7FFFDFD
      FDFFFEFEFEFFF7F7F7FFFEFEFEFF00000000F2F2F2FF218A21FF218F21FF2993
      29FF309730FF359935FF389B38FF389B38FF379A37FF339833FF2D952DFF2692
      26FF1F8E1FFF485348FFCCCCCCFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9AFF6E6E6EFFFDFDFDFF0000
      000000000000000000000000000000000000000000005F5F5FFF707070FF7B7B
      7BFF7F7F7FFF6F6F6FFFAFAFAFFFFEFEFEFFA6BEA6FF1A8C1AFF218F21FF2792
      27FF2D952DFF319731FFFFFFFFFF349934FF339833FF309730FF2B942BFF2591
      25FF1E8E1EFF178817FF898989FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFF585858FF909090FFFEFE
      FEFF0000000000000000000000000000000000000000FCFCFCFFFEFEFEFFE2E2
      E2FF626262FFF1F1F1FF656565FFBFBFBFFF148714FF188B18FF1D8D1DFF2290
      22FF269226FFFFFFFFFFFFFFFFFFFFFFFFFF2B942BFF289328FF259125FF208F
      20FF1B8C1BFF168A16FF555C55FFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F6FF656565FFD6D6
      D6FF000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFDFDFDFF737373FFD0D0D0FF0F860FFF128812FF168A16FF1A8C
      1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F8E1FFF1C8D1CFF198B
      19FF158915FF118711FF266726FFBBBBBBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C1C1C1FF6D6D
      6DFFF9F9F9FF0000000000000000000000000000000000000000000000000000
      0000FCFCFCFF8C8C8CFF787878FFFEFEFEFF108710FF1E8D1EFF208F20FF2390
      23FFFFFFFFFFFFFFFFFF269126FFFFFFFFFFFFFFFFFFFFFFFFFF249124FF2290
      22FF1F8E1FFF1D8D1DFF147114FFB5B5B5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF6666
      66FF696969FFFDFDFDFF00000000000000000000000000000000FEFEFEFFD1D1
      D1FF727272FF9F9F9FFFFDFDFDFF000000001E8D1EFF2B942BFF2D952DFF2E96
      2EFFFFFFFFFF309630FF309630FF309630FFFFFFFFFFFFFFFFFFFFFFFFFF2D95
      2DFF2C952CFF2B942BFF1B6E1BFFC6C6C6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFF4F4F4FFF9C9C9CFFFEFEFEFF0000000000000000FCFCFCFF6C6C6CFF6F6F
      6FFFE9E9E9FFFEFEFEFF0000000000000000108710FF3B9C3BFF3C9C3CFF3C9D
      3CFF3D9D3DFF3D9D3DFF3D9D3DFF3D9D3DFF3D9D3DFFFFFFFFFFFFFFFFFF3C9D
      3CFF3C9C3CFF3A9B3AFF4C734CFFE4E4E4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2E2E2FF6E6E6EFFC2C2C2FFFDFDFDFFF1F1F1FFF8F8F8FF797979FFFBFB
      FBFF000000000000000000000000000000004A9E4AFF4BA44BFF4DA54DFF4DA5
      4DFF4DA54DFF4DA54DFF4DA54DFF4DA54DFF4DA54DFF4DA54DFFFFFFFFFF4DA5
      4DFF4DA54DFF249124FFACACACFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF969696FF575757FF5D5D5DFF5D5D5DFFFDFDFDFFA6A6A6FF9999
      99FF00000000000000000000000000000000FBFBFBFF1C8D1CFF5FAE5FFF5FAE
      5FFF5FAE5FFF5FAE5FFF5FAE5FFF5FAE5FFF5FAE5FFF5FAE5FFF5FAE5FFF5FAE
      5FFF5BAC5BFF2C7A2CFFE7E7E7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFDFDFDFFE0E0E0FF707070FFE2E2E2FFF8F8F8FF7B7B
      7BFF0000000000000000000000000000000000000000BED9BEFF409F40FF72B8
      72FF72B872FF72B872FF72B872FF72B872FF72B872FF72B872FF72B872FF70B7
      70FF0D820DFFD5D5D5FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFABABABFF545454FF767676FFAEAE
      AEFF000000000000000000000000000000000000000000000000C2DBC2FF2893
      28FF84C184FF85C185FF85C185FF85C185FF85C185FF85C185FF70B770FF0E80
      0EFFDDDDDDFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFDDDDDDFFEFEFEFFFFBFB
      FBFF00000000000000000000000000000000000000000000000000000000FBFB
      FBFF4A9E4AFF279227FF64B164FF72B872FF51A751FF078107FFA7BEA7FFF2F2
      F2FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFF00F00000000FFBFC00700000000
      FF3F8003000000007F1F0001000000003F010000000000001F80000000000000
      0F800000000000008FF0000000000000C7F0000000000000C3C1000000000000
      E183000000000000F00F000000000000F00F000100000000F80F800100000000
      FE0FC00300000000FF0FE0070000000000000000000000000000000000000000
      000000000000}
  end
  object JvSelectDirectory1: TJvSelectDirectory
    ClassicDialog = False
    Title = 'Open file set'
    Left = 92
    Top = 589
  end
  object JvOpenDialog1: TJvOpenDialog
    Height = 0
    Width = 0
    Left = 130
    Top = 589
  end
  object JvSaveDialog1: TJvSaveDialog
    Height = 0
    Width = 0
    Left = 168
    Top = 589
  end
  object puServices: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 16
    Top = 159
    object ZAPtoservice1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Zap to service                                         Dbl-click'
    end
    object N7: TMenuItem
      AutoHotkeys = maManual
      Caption = '-'
    end
    object CreateBouquet1: TMenuItem
      Caption = 'Create Bouquet'
      object Addthissatellitetobouquet1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Make Bouquet for this satellite'
      end
      object MakeaBouquetperSatellite1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Make Bouquet for each satellite'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MakeBouquetperPackage1: TMenuItem
        Caption = 'Make Bouquet for this Package'
      end
      object MakeBouquetforeachPackage1: TMenuItem
        Caption = 'Make Bouquet for each Package'
      end
    end
    object N4: TMenuItem
      AutoHotkeys = maManual
      Caption = '-'
    end
    object DeletefromallBouquets1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Delete service(s) from all Bouquets'
    end
    object DeleteService1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Delete Service(s)                                     Del'
    end
    object Deletesatellite1: TMenuItem
      Caption = 'Delete Satellite'
    end
    object N8: TMenuItem
      AutoHotkeys = maManual
      Caption = '-'
    end
    object ShowDetails1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Show/Edit Details                                     Enter'
    end
    object CopyEditthisservice1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Copy & Edit this service'
    end
    object AddaNewService1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Add a new service'
    end
    object EditTransponder: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Edit Transponder Data'
    end
    object SetKeepFlag: TMenuItem
      Caption = 'Set Keep Flag'
      object SetKeepFlagOn1: TMenuItem
        Caption = 'On'
      end
      object SetKeepFlagOff1: TMenuItem
        Caption = 'Off'
      end
    end
    object N15: TMenuItem
      AutoHotkeys = maManual
      Caption = '-'
    end
    object ServCut: TMenuItem
      AutoHotkeys = maManual
      Caption = 
        'Cut                                                           Ct' +
        'rl+X'
    end
    object ServCopy: TMenuItem
      AutoHotkeys = maManual
      Caption = 
        'Copy                                                        Ctrl' +
        '+C'
    end
    object ServPaste: TMenuItem
      AutoHotkeys = maManual
      Caption = 
        'Paste                                                       Ctrl' +
        '+V'
    end
    object N19: TMenuItem
      AutoHotkeys = maManual
      Caption = '-'
    end
    object SetPackagename1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Edit Package name'
    end
    object servLock: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Toggle Parental Lock                               Ctrl+L'
    end
    object ChangetypetoTV1: TMenuItem
      Caption = 'Change type to TV'
    end
    object MarkservicesnotinBouquet1: TMenuItem
      Caption = 'Mark services not in Userbouquets as New'
    end
    object Renumberallservices1: TMenuItem
      Caption = 'Renumber all services'
    end
    object ClearallNewflags1: TMenuItem
      Caption = 'Clear "New" flag for selected service(s)'
    end
  end
  object puDet: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 633
    Top = 176
    object Zaptoservice2: TMenuItem
      Caption = 'Zap to service                 Dbl-click'
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Deletefromfavourites1: TMenuItem
      Caption = 'Delete entry                    Del'
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Sortlistalfabeticaly1: TMenuItem
      Caption = 'Sort alphabetically'
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object DetCut: TMenuItem
      Caption = 'Cut                                  Ctrl+X'
    end
    object DetCopy: TMenuItem
      Caption = 'Copy                               Ctrl+C'
    end
    object DetPaste: TMenuItem
      Caption = 'Paste                              Ctrl+V'
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object LocateInServices1: TMenuItem
      Caption = 'Locate in services list      Enter'
    end
    object DetLock: TMenuItem
      Caption = 'Toggle Parental Lock       Ctrl+L'
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object InsertMarker1: TMenuItem
      Caption = 'Insert Marker'
    end
    object EditMarker1: TMenuItem
      Caption = 'Edit Marker Text'
    end
    object AutoInsertMarker: TMenuItem
      Caption = 'Auto insert Markers ...'
      object InsertMarkerPos: TMenuItem
        Caption = 'Insert Marker at change of satellite'
      end
      object InsertMarkerPackage: TMenuItem
        Caption = 'Insert Marker at change of package'
      end
    end
    object Removeemptymarkers1: TMenuItem
      Caption = 'Remove '#39'empty'#39' markers'
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object Renameserviceinbouquet1: TMenuItem
      Caption = 'Rename service in this bouquet   Ctrl+R'
    end
    object Renameserviceto1: TMenuItem
      Caption = 'Format servicename automatically    Ctrf+F'
    end
  end
  object puTV: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    AutoPopup = False
    OwnerDraw = True
    Left = 826
    Top = 201
    object tvShowServices: TMenuItem
      Caption = 'Show services'
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object RenameBouquet1: TMenuItem
      Caption = 'Rename Bouquet'
    end
    object tvInsert: TMenuItem
      Caption = 'Insert new bouquet                            Ins'
    end
    object tvDelete: TMenuItem
      Caption = 'Delete bouquet                                   Del'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object tvSort: TMenuItem
      Caption = 'Sort section alphabetically'
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object tvCollapseAll: TMenuItem
      Caption = 'Collapse all'
    end
    object tvExpandAll: TMenuItem
      Caption = 'Expand all'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object tvPrefix: TMenuItem
      Caption = 'Prefix bouquets with satellite position'
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object tvCleanUp0: TMenuItem
      Caption = 'Remove empty bouquets'
    end
    object tvCleanUp1: TMenuItem
      Caption = 'Remove bouquets with only x service(s)'
    end
    object N27: TMenuItem
      Caption = '-'
    end
    object oggleParentalLock1: TMenuItem
      Caption = 'Toggle Parental Lock'
    end
  end
  object HTTP1: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 17
    Top = 472
  end
  object TimerCheckVersion: TTimer
    Enabled = False
    Interval = 100
    Left = 17
    Top = 432
  end
  object MultiLang: TLWLanguage
    Left = 17
    Top = 392
  end
  object TimerDetScroll: TTimer
    Enabled = False
    Interval = 100
    Left = 58
    Top = 432
  end
  object TimertvScroll: TTimer
    Enabled = False
    Interval = 100
    Left = 99
    Top = 432
  end
  object cdsPos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PosInt'
        DataType = ftInteger
      end
      item
        Name = 'PosStr'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PosName'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 17
    Top = 352
  end
  object cdsSatXML: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pos'
        DataType = ftInteger
      end
      item
        Name = 'Freq'
        DataType = ftInteger
      end
      item
        Name = 'Pol'
        DataType = ftInteger
      end
      item
        Name = 'Symb'
        DataType = ftInteger
      end
      item
        Name = 'FEC'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Flags'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SeqNr'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 54
    Top = 352
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Severity'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Time'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'Text'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 92
    Top = 352
  end
  object cdsTSID: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tsidUniq'
        DataType = ftInteger
      end
      item
        Name = 'tsidTsid'
        DataType = ftInteger
      end
      item
        Name = 'tsidNid'
        DataType = ftInteger
      end
      item
        Name = 'tsidFreq'
        DataType = ftInteger
      end
      item
        Name = 'tsidSymb'
        DataType = ftInteger
      end
      item
        Name = 'tsidPol'
        DataType = ftInteger
      end
      item
        Name = 'tsidFEC'
        DataType = ftInteger
      end
      item
        Name = 'tsidPos'
        DataType = ftInteger
      end
      item
        Name = 'tsidSTC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tsidExtra'
        DataType = ftString
        Size = 27
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 320
    Top = 352
  end
  object cdsSERV: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <
      item
        Name = 'servSID'
        DataType = ftInteger
      end
      item
        Name = 'servUniq'
        DataType = ftInteger
      end
      item
        Name = 'servTSID'
        DataType = ftInteger
      end
      item
        Name = 'servNID'
        DataType = ftInteger
      end
      item
        Name = 'servType'
        DataType = ftInteger
      end
      item
        Name = 'servName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servPackage'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servNr'
        DataType = ftInteger
      end
      item
        Name = 'servFreq'
        DataType = ftInteger
      end
      item
        Name = 'servSymb'
        DataType = ftInteger
      end
      item
        Name = 'servPol'
        DataType = ftInteger
      end
      item
        Name = 'servFEC'
        DataType = ftInteger
      end
      item
        Name = 'servPos'
        DataType = ftInteger
      end
      item
        Name = 'servVPID'
        DataType = ftInteger
      end
      item
        Name = 'servAPID'
        DataType = ftInteger
      end
      item
        Name = 'servTPID'
        DataType = ftInteger
      end
      item
        Name = 'servPPID'
        DataType = ftInteger
      end
      item
        Name = 'serv3PID'
        DataType = ftInteger
      end
      item
        Name = 'servC07BSDelay'
        DataType = ftInteger
      end
      item
        Name = 'servc08PCMDelay'
        DataType = ftInteger
      end
      item
        Name = 'servFlags'
        DataType = ftInteger
      end
      item
        Name = 'servLock'
        DataType = ftInteger
      end
      item
        Name = 'servDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'servTypeTxt'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'servSTC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'servTrExtra'
        DataType = ftString
        Size = 27
      end
      item
        Name = 'servCleanName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servExtra'
        DataType = ftString
        Size = 75
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 206
    Top = 352
  end
  object cdsServComp: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <
      item
        Name = 'servSID'
        DataType = ftInteger
      end
      item
        Name = 'servUniq'
        DataType = ftInteger
      end
      item
        Name = 'servTSID'
        DataType = ftInteger
      end
      item
        Name = 'servNID'
        DataType = ftInteger
      end
      item
        Name = 'servType'
        DataType = ftInteger
      end
      item
        Name = 'servName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servPackage'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servNr'
        DataType = ftInteger
      end
      item
        Name = 'servFreq'
        DataType = ftInteger
      end
      item
        Name = 'servSymb'
        DataType = ftInteger
      end
      item
        Name = 'servPol'
        DataType = ftInteger
      end
      item
        Name = 'servFEC'
        DataType = ftInteger
      end
      item
        Name = 'servPos'
        DataType = ftInteger
      end
      item
        Name = 'servVPID'
        DataType = ftInteger
      end
      item
        Name = 'servAPID'
        DataType = ftInteger
      end
      item
        Name = 'servTPID'
        DataType = ftInteger
      end
      item
        Name = 'servPPID'
        DataType = ftInteger
      end
      item
        Name = 'serv3PID'
        DataType = ftInteger
      end
      item
        Name = 'servC07BSDelay'
        DataType = ftInteger
      end
      item
        Name = 'servc08PCMDelay'
        DataType = ftInteger
      end
      item
        Name = 'servFlags'
        DataType = ftInteger
      end
      item
        Name = 'servLock'
        DataType = ftInteger
      end
      item
        Name = 'servDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'servTypeTxt'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'servSTC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'servTrExtra'
        DataType = ftString
        Size = 27
      end
      item
        Name = 'servCleanName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servExtra'
        DataType = ftString
        Size = 75
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 244
    Top = 352
  end
  object cdsServSave: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <
      item
        Name = 'servSID'
        DataType = ftInteger
      end
      item
        Name = 'servUniq'
        DataType = ftInteger
      end
      item
        Name = 'servTSID'
        DataType = ftInteger
      end
      item
        Name = 'servNID'
        DataType = ftInteger
      end
      item
        Name = 'servType'
        DataType = ftInteger
      end
      item
        Name = 'servName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servPackage'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servNr'
        DataType = ftInteger
      end
      item
        Name = 'servFreq'
        DataType = ftInteger
      end
      item
        Name = 'servSymb'
        DataType = ftInteger
      end
      item
        Name = 'servPol'
        DataType = ftInteger
      end
      item
        Name = 'servFEC'
        DataType = ftInteger
      end
      item
        Name = 'servPos'
        DataType = ftInteger
      end
      item
        Name = 'servVPID'
        DataType = ftInteger
      end
      item
        Name = 'servAPID'
        DataType = ftInteger
      end
      item
        Name = 'servTPID'
        DataType = ftInteger
      end
      item
        Name = 'servPPID'
        DataType = ftInteger
      end
      item
        Name = 'serv3PID'
        DataType = ftInteger
      end
      item
        Name = 'servC07BSDelay'
        DataType = ftInteger
      end
      item
        Name = 'servc08PCMDelay'
        DataType = ftInteger
      end
      item
        Name = 'servFlags'
        DataType = ftInteger
      end
      item
        Name = 'servLock'
        DataType = ftInteger
      end
      item
        Name = 'servDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'servTypeTxt'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'servSTC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'servTrExtra'
        DataType = ftString
        Size = 27
      end
      item
        Name = 'servCleanName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'servExtra'
        DataType = ftString
        Size = 75
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 282
    Top = 352
  end
  object cdsLock: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'lockI1'
        DataType = ftInteger
      end
      item
        Name = 'lockI2'
        DataType = ftInteger
      end
      item
        Name = 'lockServType'
        DataType = ftInteger
      end
      item
        Name = 'lockSID'
        DataType = ftInteger
      end
      item
        Name = 'lockTSID'
        DataType = ftInteger
      end
      item
        Name = 'lockNID'
        DataType = ftInteger
      end
      item
        Name = 'lockUniq'
        DataType = ftInteger
      end
      item
        Name = 'lockString'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'lockFilename'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 352
  end
  object cdsAlt: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'altBQName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'altServType'
        DataType = ftInteger
      end
      item
        Name = 'altSID'
        DataType = ftInteger
      end
      item
        Name = 'altTSID'
        DataType = ftInteger
      end
      item
        Name = 'altNID'
        DataType = ftInteger
      end
      item
        Name = 'altUniq'
        DataType = ftInteger
      end
      item
        Name = 'altFilename'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 130
    Top = 352
  end
  object cdsFTV: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ftvSeqNr'
        DataType = ftInteger
      end
      item
        Name = 'ftvName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ftvSID'
        DataType = ftInteger
      end
      item
        Name = 'ftvUniq'
        DataType = ftInteger
      end
      item
        Name = 'ftvTSID'
        DataType = ftInteger
      end
      item
        Name = 'ftvNID'
        DataType = ftInteger
      end
      item
        Name = 'ftvServType'
        DataType = ftInteger
      end
      item
        Name = 'ftvSetNr'
        DataType = ftInteger
      end
      item
        Name = 'ftvDescr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ftvDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'ftvT'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 361
    Top = 352
  end
  object wcdsFBQ: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'fbqSeqNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'fbqSID'
        DataType = ftInteger
      end
      item
        Name = 'fbqUniq'
        DataType = ftInteger
      end
      item
        Name = 'fbqTSID'
        DataType = ftInteger
      end
      item
        Name = 'fbqNID'
        DataType = ftInteger
      end
      item
        Name = 'fbqServType'
        DataType = ftInteger
      end
      item
        Name = 'fbqSetNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqDescr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'fbqDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqT'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 401
    Top = 352
  end
  object cdsFRD: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'frdSeqNr'
        DataType = ftInteger
      end
      item
        Name = 'frdName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'frdSID'
        DataType = ftInteger
      end
      item
        Name = 'frdUniq'
        DataType = ftInteger
      end
      item
        Name = 'frdTSID'
        DataType = ftInteger
      end
      item
        Name = 'frdNID'
        DataType = ftInteger
      end
      item
        Name = 'frdServType'
        DataType = ftInteger
      end
      item
        Name = 'frdSetNr'
        DataType = ftInteger
      end
      item
        Name = 'frdDescr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'frdDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'frdT'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 441
    Top = 352
  end
  object cdsFBQ: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'fbqSeqNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'fbqSID'
        DataType = ftInteger
      end
      item
        Name = 'fbqUniq'
        DataType = ftInteger
      end
      item
        Name = 'fbqTSID'
        DataType = ftInteger
      end
      item
        Name = 'fbqNID'
        DataType = ftInteger
      end
      item
        Name = 'fbqServType'
        DataType = ftInteger
      end
      item
        Name = 'fbqSetNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqDescr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'fbqDbeNr'
        DataType = ftInteger
      end
      item
        Name = 'fbqT'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 481
    Top = 352
  end
end
