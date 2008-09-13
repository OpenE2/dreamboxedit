object frmMain: TfrmMain
  Left = 484
  Top = 277
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
        Width = 174
        Height = 24
        UseSystemFont = False
        ActionManager = ActionManager1
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
        Left = 198
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
          Caption = 'Open'
          ImageIndex = 2
          OnClick = tbtnOpenClick
        end
        object tbtnSave: TToolButton
          Left = 105
          Top = 0
          Caption = 'Save'
          ImageIndex = 5
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
          Caption = 'Options'
          ImageIndex = 11
          OnClick = tbtnOptionsClick
        end
        object tbtnTransfer: TToolButton
          Left = 323
          Top = 0
          Caption = 'Transfer'
          ImageIndex = 14
          OnClick = tbtnTransferClick
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
          ImageIndex = 8
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
          Action = SearchFind1
          Caption = 'Find'
          ImageIndex = 13
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
          ImageIndex = 20
        end
        object tbtnAbout: TToolButton
          Left = 767
          Top = 0
          Action = acHelpAbout
          Caption = 'About DreamBoxEdit'
          ImageIndex = 19
        end
        object tbtnShutdown: TToolButton
          Left = 872
          Top = 0
          Action = FileExit1
          ImageIndex = 18
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
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = FileOpen1
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
                Action = SearchFind1
                ImageIndex = 34
                ShortCut = 16454
              end
              item
                Action = SearchFindNext1
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
            Action = FileOpen1
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
                Action = FileOpen1
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
                ImageIndex = 4
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
                Caption = '&Export'
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
              end>
            Caption = '&Tools'
          end
          item
            Items = <
              item
                Action = SearchFind1
                ImageIndex = 12
                ShortCut = 16454
              end
              item
                Action = SearchFindNext1
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
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 5
      ShortCut = 16463
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
    object SearchFind1: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 12
      ShortCut = 16454
    end
    object SearchFindNext1: TSearchFindNext
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
      ImageIndex = 2
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
      ImageIndex = 4
      OnExecute = acShowLogExecute
    end
    object acEditSatellitesXML: TAction
      Category = 'Tools'
      Caption = '&Edit Satellites.xml'
      OnExecute = acEditSatellitesXMLExecute
    end
  end
  object ilCommon16: TImageList
    Left = 16
    Top = 552
    Bitmap = {
      494C010113001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFFF7F7
      F7FFFBFBFBFF000000000000000000000000000000000000000000000000FBFB
      FBFFF7F7F7FFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFE3E3E3FF7B7B
      7BFFE3E3E3FFFAFAFAFF00000000000000000000000000000000FAFAFAFFE3E3
      E3FF7B7B7BFFE3E3E3FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFE3E3E3FF1119E7FF1119
      E7FF696969FFE1E1E1FFFAFAFAFF0000000000000000FAFAFAFFE1E1E1FF1018
      E7FF1018E7FF696969FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A5A3FF6A6662FF6A6662FF7B7B
      7AFFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF9F9F9FFEAEAEAFF00000000A4A2A0FF625E5BFF686460FF7B7B
      7AFFFCFCFCFF000000000000000000000000000000000000000000000000E1E1
      E1FF6B6763FF686460FF65625FFFEEEEEEFFF9F9F9FF1018E7FF1019E7FF1119
      E7FF1119E8FF696969FFE1E1E1FFFAFAFAFFFAFAFAFFE1E1E1FF1018E7FF1018
      E7FF1018E7FF1018E7FF7B7B7BFFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB742FFFFF9933FFFF9933FF6042
      24FFF8F8F8FF000000000000000000000000F9F9F9FFE7E7E7FFBDBDBDFF8281
      80FF79614AFF99652EFF714C25FF000000007F4E1EFF9F5E20FF764717FF2B1C
      0FFF999999FFC9C9C9FFEAEAEAFFF8F8F8FF0000000000000000000000006355
      46FFFF9933FFFF9933FFBF7327FFEFEFEFFFFCFCFCFF1018E7FF1018E8FF1019
      E8FF1119E8FF1119E8FF696969FFDEDEDEFFDEDEDEFF1019E8FF1019E8FF1018
      E8FF1018E7FF1018E7FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081705FFFFF9933FFFF9933FFEE8F
      30FFC5C5C5FFFEFEFEFF00000000F9F9F9FF9D652DFFEB8D2FFFFF9933FFFF99
      33FFFF9933FFFF9933FF7C7B7AFF00000000736455FFFF9933FFFF9933FFFF99
      33FFFF9933FFF09030FFA56629FF959494FF0000000000000000FE9833FFB56C
      23FFFF9933FFFF9933FF825425FFFBFBFBFF00000000FAFAFAFF1018E8FF1019
      E8FF1019E8FF1119E9FF1019E9FF656565FF1019E9FF1019E9FF1019E8FF1019
      E8FF1018E8FFE1E1E1FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFFF9933FFFF9933FFFF99
      33FF5F4C37FFD4D4D4FFFDFDFDFFFEFEFEFF998068FFFF9933FFFF9933FFFF99
      33FFFF9933FFFD9833FFD8D8D8FF00000000F1F1F1FFF39231FFFF9933FFFF99
      33FFFF9933FFFF9933FF9D6C3CFFF9F9F9FF987F68FFFC9732FF995B1EFFFF99
      33FFFF9933FFFF9933FF74706CFF000000000000000000000000FAFAFAFF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019
      E9FFE1E1E1FFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5833FFFFFA246FFFFA2
      46FFFF9F40FF9A6633FF605C58FF757473FF84674AFFFFA145FFFFA246FFFFA2
      46FFFFA246FFD6883CFFFAFAFAFF000000000000000098612BFFFFA246FFFFA2
      46FFFFA246FFFFA245FF704A25FF32302CFF3F3021FF935C26FFFF9F40FFFFA2
      45FFFFA246FFD08437FFEFEFEFFF00000000000000000000000000000000FAFA
      FAFF121BE9FF131CE9FF131CE9FF131CE9FF131CE9FF131CE9FF131BE9FFDEDE
      DEFFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFF9B470FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FF544E48FF000000000000000000000000B0AEABFFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFBB671FF403C37FF0000000000000000000000000000000000000000FAFA
      FAFFDEDEDEFF1B24EAFF1A23EAFF1A23EAFF1B23EAFF1B24EAFF656565FFDEDE
      DEFFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4FFDCB1
      87FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFDCE9EFFFFD0
      A0FFFFD0A0FFAFAFAFFF000000000000000000000000FCFCFCFFFFD0A0FFFFD0
      A1FFF4C597FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFE6B9
      8CFFC6A17CFF0000000000000000000000000000000000000000FAFAFAFFE1E1
      E1FF2F36EBFF2A32EBFF2730EBFF262FEBFF262FEBFF2730EBFF2B33EBFF6969
      69FFE1E1E1FFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A3A0FFB8A490FFF6DBC1FFFBE0C6FFD4BCA3FF9F968DFFF3F3F3FF948C
      85FFF6DCC4FFEFEFEFFF00000000000000000000000000000000C1AD98FF9486
      78FFA29F9CFF807161FFCAB29BFFF9DFC4FFF8DDC3FFBCA691FF97928DFF9189
      82FF0000000000000000000000000000000000000000FAFAFAFFE1E1E1FF484E
      EDFF4148ECFF3C43ECFF373FECFF353CECFF343CECFF373EECFF3A41ECFF3F46
      EDFF696969FFE1E1E1FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFEFEFEFF000000000000000000000000FEFE
      FEFF8C8782FFFEFEFEFF00000000000000000000000000000000ACAAA8FFF3F3
      F3FF000000000000000000000000FDFDFDFFFEFEFEFF00000000000000000000
      000000000000000000000000000000000000FCFCFCFFE3E3E3FF5D63EFFF575E
      EEFF5359EEFF4E54EDFF464DEDFFDEDEDEFF4148EDFF464DEDFF4B51EDFF4F55
      EEFF555BEEFF696969FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FF6D72F0FF696FF0FF666C
      EFFF6268EFFF5C62EEFFE1E1E1FFFAFAFAFFFAFAFAFF545BEEFF5B61EFFF6065
      EFFF6469F0FF686DF0FF7B7B7BFFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF7479F0FF757AF0FF7378
      F0FF6F74F0FFE1E1E1FFFAFAFAFF0000000000000000FAFAFAFF6A6FF0FF6F74
      F0FF7176F1FF7176F1FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFF7C81F1FF7C80
      F1FFE3E3E3FFFAFAFAFF00000000000000000000000000000000FAFAFAFF7A7F
      F1FF7A7FF1FFE3E3E3FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFF9F9
      F9FFFCFCFCFF000000000000000000000000000000000000000000000000FCFC
      FCFFF9F9F9FFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFE4E4E4FFC3C3C3FFB3B3B3FFB8B8B8FFD3D3D3FFF0F0F0FFFDFD
      FDFF000000000000000000000000000000000000000000000000D7D7D7FF8D8D
      8DFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C8EAFF0B2DB3FF1333B4FF1938
      B8FF1B3AB8FF1939B8FF1839B9FF1537B8FF1237BDFF0D34C0FF0A31BEFF062E
      BFFF022BC0FF0026B6FF001D94FFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFE7E7
      E7FFAAAAAAFF927558FFB0783EFFBB7C3BFF9C6D3CFF5F5B56FF888888FFCCCC
      CCFFF7F7F7FF00000000000000000000000000000000C1CBDDFF526CA1FF526C
      A1FF8D8D8DFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000072FCFFF183ED7FF2449D9FF2C4F
      DBFF2F52DCFF2C51DCFF2B52DDFF2750DDFF224FDFFF1B4BE1FF1447E1FF0C42
      E2FF053AE0FF0032D8FF0026B7FFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFF5C5C5CFF000000000000
      00000000000000000000000000000000000000000000FCFCFCFFD5D5D5FFB87F
      46FFDE8C39FFDF903EFFE09242FFE09242FFDF9140FFDF8E3CFFDA8834FF5B53
      4AFFA7A7A7FFF1F1F1FF000000000000000000000000526CA1FF6A71C6FF526C
      A1FF526CA1FF8D8D8DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B35DCFF2349E0FF3154E1FF3A5C
      E3FF3D5EE4FF4667E6FFC1CCF7FFFFFFFFFFE5EAFCFF7595F1FF1B51E9FF124A
      E9FF0A43E8FF0339E1FF012BC0FFFFFFFFFFFEFEFEFF00000000000000000000
      000000000000000000000000000000000000FCFCFCFF656565FFFDFDFDFF0000
      000000000000000000000000000000000000FEFEFEFFDCDCDCFFD7822CFFDD8A
      34FFDF8E3CFFDF9140FFE1994FFFE7AD72FFE09447FFDF903FFFDE8C39FFDD89
      32FF765737FFA7A7A7FFF6F6F6FF000000000000000000000000596DADFF6A71
      C6FF526CA1FF526CA1FF8D8D8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000001039DDFF2E52E1FF3D5EE4FF4665
      E5FFBAC6F6FFFFFFFFFF93A8F1FF3A63E7FF597EECFFE4EBFCFFFFFFFFFF1750
      EAFF0E48EAFF073DE2FF042EC2FFFFFFFFFF919191FFF5F5F5FF000000000000
      000000000000000000000000000000000000FEFEFEFF656565FFA7A7A7FFFDFD
      FDFFFEFEFEFFF7F7F7FFFEFEFEFF00000000F2F2F2FFD3812FFFDD862EFFDE8B
      36FFDF8E3CFFE09141FFE7AD72FFFFFFFFFFE39D56FFDF903FFFDE8D3AFFDD89
      33FFDC852DFF5B5349FFCCCCCCFFFDFDFDFF000000000000000000000000596D
      ADFF6A71C6FF526CA1FF526CA1FF8D8D8DFF0000000000000000000000000000
      000000000000000000000000000000000000153EDEFF385AE3FF4665E5FF90A2
      EFFFFFFFFFFF496AE6FF4468E7FF3D66E7FF3562E8FF2B5CE9FF7496F1FFFFFF
      FFFF134BE9FF0E42E1FF0A32C2FFFFFFFFFF9A9A9AFF6E6E6EFFFDFDFDFF0000
      000000000000000000000000000000000000000000005F5F5FFF707070FF7B7B
      7BFF7F7F7FFF6F6F6FFFAFAFAFFFFEFEFEFFCEBBA9FFDB8328FFDD862EFFDD8A
      34FFDE8D3AFFDF8F3DFFE29D56FFEEC79FFFE09548FFDF8E3CFFDE8C38FFDD89
      32FFDC852CFFD87F25FF898989FFF1F1F1FF0000000000000000000000000000
      0000596DADFF6A71C6FF526CA1FF526CA1FF8D8D8DFF9C9C9CFF8D8D8DFF9C9C
      9CFFFCFCFCFF0000000000000000000000001C42DFFF4261E4FF4E6BE6FFFFFF
      FFFF516EE6FF4C6CE6FF4669E7FFFFFFFFFF3661E7FF2C5CE8FF2457E9FFE3E9
      FCFF6E8FF0FF1647E1FF1037C3FFFFFFFFFFFDFDFDFF585858FF909090FFFEFE
      FEFF0000000000000000000000000000000000000000FCFCFCFFFEFEFEFFE2E2
      E2FF626262FFF1F1F1FF656565FFBFBFBFFFD77E23FFDB8126FFDC842BFFDD87
      2FFFDD8933FFDE8B37FFE6AA6DFFFFFFFFFFE29A50FFDE8A35FFDD8932FFDC86
      2DFFDC8329FFDB8024FF615B55FFD4D4D4FF0000000000000000000000000000
      000000000000596DADFF6A71C6FF526CA1FFC7542EFFC7542EFFC7542EFFC754
      2EFFA37566FFC2C2C2FFFEFEFEFF000000002248DFFF4B69E5FF5470E7FFFFFF
      FFFF536FE7FF4D6BE6FF4668E6FFFFFFFFFF355EE6FF2B59E7FF2353E6FF476F
      EBFFF1F4FDFF1D4BE0FF163BC1FFFFFFFFFF00000000F6F6F6FF656565FFD6D6
      D6FF000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFDFDFDFF737373FFD0D0D0FFDA7D1EFFDA7E20FFDB8024FFDB83
      28FFDC842BFFDC852DFFDF8D3AFFFFFFFFFFF8E6D5FFDC852DFFDC842AFFDB82
      27FFDB8023FFDA7E1FFF95622DFFBBBBBBFF0000000000000000000000000000
      000000000000000000005F77A7FFC9603EFFDED7B6FFDFD7B6FFDFD7B6FFDED7
      B5FFC65531FFA37566FFFCFCFCFF00000000284DE0FF526EE7FF5973E8FFFFFF
      FFFF546FE7FF4D6AE6FF4565E5FFFFFFFFFF345BE4FF2B55E5FF2450E5FF1E4D
      E5FFFFFFFFFF244EDFFF1B3DC0FFFFFFFFFF0000000000000000C1C1C1FF6D6D
      6DFFF9F9F9FF0000000000000000000000000000000000000000000000000000
      0000FCFCFCFF8C8C8CFF787878FFFEFEFEFFDA7D1FFFDB842CFFDC862EFFDD88
      31FFDD8832FFDD8933FFDD8933FFF8E7D6FFFFFFFFFFFBF1E8FFDD8832FFDD87
      30FFDC862DFFDB842BFFB36920FFB5B5B5FF0000000000000000000000000000
      00000000000000000000CF6E4EFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DC
      BEFFE2DBBEFFCC6340FFC4C4C4FF000000002F52E1FF5D77E8FF607AE8FFFFFF
      FFFF556FE7FF4D69E5FF4564E4FFFFFFFFFF3458E3FF2B53E3FF264FE3FF748F
      EDFFC8D2F8FF2950DDFF1F40BFFFFFFFFFFF0000000000000000FEFEFEFF6666
      66FF696969FFFDFDFDFF00000000000000000000000000000000FEFEFEFFD1D1
      D1FF727272FF9F9F9FFFFDFDFDFF00000000DC852CFFDE8C39FFDE8D3AFFDE8D
      3BFFDE8E3CFFDE8E3CFFDE8E3CFFDE8E3CFFF1CFACFFFFFFFFFFF9EBDDFFDE8D
      3AFFDE8D39FFDE8C39FFA76826FFC6C6C6FF0000000000000000000000000000
      00000000000000000000D57F63FFE5DFC5FFE5DFC5FFE5DFC5FFE5DFC5FFE5DF
      C5FFE5DFC5FFD57E62FF8D8D8DFF000000003255E2FF6780E9FF6881E9FFF5F7
      FEFFA1AEF2FF506BE6FF4764E4FFFFFFFFFF3658E2FF2E53E2FF2A50E2FFFFFF
      FFFF3659E4FF2D52DDFF2242BFFFFFFFFFFF000000000000000000000000FCFC
      FCFF4F4F4FFF9C9C9CFFFEFEFEFF0000000000000000FCFCFCFF6C6C6CFF6F6F
      6FFFE9E9E9FFFEFEFEFF0000000000000000DA7E1FFFE09447FFE09548FFE195
      48FFF1D1B0FFF6E2CDFFE09649FFE09649FFE09649FFFFFFFFFFFFFFFFFFE195
      48FFE09548FFE09446FF8E6F50FFE4E4E4FF0000000000000000000000000000
      00000000000000000000D98D74FFE8E3CCFFE8E3CCFFE8E3CCFFE8E3CCFFE8E3
      CCFFE7E2CAFFD8896FFF9C9C9CFF000000003759E3FF7089EBFF718AEBFF6780
      EAFFFFFFFFFF9EADF1FF4B67E5FF4361E4FF3B5CE3FF3456E2FFFFFFFFFFB0BD
      F4FF2D51E2FF2E51DEFF2443BFFFFFFFFFFF0000000000000000000000000000
      0000E2E2E2FF6E6E6EFFC2C2C2FFFDFDFDFFF1F1F1FFF8F8F8FF797979FFFBFB
      FBFF00000000000000000000000000000000DA9854FFE39D56FFE39E58FFE39E
      58FFFCF5EDFFFFFFFFFFEAB986FFE39E58FFE5A768FFFFFFFFFFFEFEFDFFE39E
      58FFE39E58FFDD8832FFACACACFFF9F9F9FF0000000000000000000000000000
      00000000000000000000DB927AFFEAE5D0FFEBE6D2FFEBE6D2FFEBE6D2FFEBE6
      D2FFEBE6D2FFCA5F3BFFFCFCFCFF000000003E5EE3FF7F96EDFF8398EDFF718A
      EBFF657EE9FFF5F6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91A4F0FF385A
      E3FF3457E2FF3053DDFF2140BDFFFFFFFFFF0000000000000000000000000000
      0000FEFEFEFF969696FF575757FF5D5D5DFF5D5D5DFFFDFDFDFFA6A6A6FF9999
      99FF00000000000000000000000000000000FBFBFBFFDC842AFFE6A869FFE6A8
      69FFE6A869FFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6A96BFFE6A8
      69FFE5A665FFB27435FFE7E7E7FF000000000000000000000000000000000000
      00000000000000000000E8BAABFFE2AA98FFEDE9D7FFEDE9D8FFEDE9D7FFEEEA
      D8FFD78A71FFC29586FF00000000000000004867E5FF94A6F0FF96A8F0FF8095
      EDFF728BEBFF6B84EAFF657EE8FF617BE8FF5E78E8FF5A75E8FF5370E6FF4B6A
      E5FF4061E4FF3154DDFF1B3BBCFFFFFFFFFF0000000000000000000000000000
      000000000000FEFEFEFFFDFDFDFFE0E0E0FF707070FFE2E2E2FFF8F8F8FF7B7B
      7BFF0000000000000000000000000000000000000000ECD7C1FFE1974BFFE9B2
      7AFFE9B27AFFE9B27AFFE9B57FFFEEC59AFFEAB681FFE9B27AFFE9B27AFFE9B1
      78FFD4791CFFD5D5D5FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000E8BAABFFD8886EFFE7B8A8FFE6B3A3FFCE6A
      49FFE5B8A9FF0000000000000000000000005D78E8FF8FA2EFFF92A5F0FF7B92
      ECFF718AEBFF6781E9FF647EE9FF607AE8FF5E78E8FF5874E7FF5370E6FF4A69
      E5FF3D5EE4FF2C50DBFF1636B9FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000FEFEFEFFABABABFF545454FF767676FFAEAE
      AEFF000000000000000000000000000000000000000000000000EDD9C5FFDE8A
      35FFECBC8BFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFE9B178FFD077
      1EFFDDDDDDFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF607BE8FF4261E4FF3859
      E3FF3557E2FF3053E2FF3254E2FF3154E2FF2B4EE1FF284DE1FF2349DFFF2449
      E0FF1B42DFFF133AD5FFB2BCE6FFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFDDDDDDFFEFEFEFFFFBFB
      FBFF00000000000000000000000000000000000000000000000000000000FBFB
      FBFFDA9854FFDD8A34FFE7AB6DFFE9B27AFFE4A05BFFD57716FFCEBCA9FFF2F2
      F2FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF0F0F0FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFEAEAEAFFF6F6
      F6FF000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFB5B5B5FF646464FF434343FF454545FF787878FFBFBFBFFFF3F3
      F3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFF1F1F1FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFF0000000000000000000000000000000000000000FAFA
      FAFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFFEDED
      EDFF000000000000000000000000000000000000000000000000FBFBFBFFB6B5
      B5FF5F4429FF985C1EFFA96622FFAC6823FF1F9413FF0D820DFF062F06FF4343
      43FFC6C6C6FFFCFCFCFF0000000000000000ECECECFFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE5E5E5FFF2F2F2FF0000000000000000FDFDFDFFECEC
      ECFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFA1A1A1FFEBEBEBFF00000000000000000000000000000000F9F9
      F9FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FF6E694CFFEBEB
      EBFF0000000000000000000000000000000000000000F9F9F9FF9E9284FFA161
      21FFAE6924FFB26C25FFB56D25FFB46E25FF209E13FF12A212FF119D11FF0D86
      0DFF0D170DFFADADADFFFCFCFCFF00000000EC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFE0E0E0FF00000000FBFBFBFFECECECFFFFA6
      4DFFFFA64DFFFFA64DFFC7542EFF7F7F7FFFC0C0C0FFC0C0C0FFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFFEBEBEBFF00000000FBFBFBFFF1F1F1FFEBEBEBFFE7E7
      E7FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FF6E694CFFDFDF
      DFFFEBEBEBFFEDEDEDFFF6F6F6FFFEFEFEFFFEFEFEFF92AF91FF956C20FFAF69
      24FFB36C25FFB66E26FFB86F26FFB87026FF21A214FF13A513FF11A211FF119F
      11FF0F910FFF0D170DFFC8C8C8FF00000000E5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFB2B2B2FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFE5E5E5FFEC8335FFDCDCDCFFFDFDFDFFECECECFFC2522CFFFFA6
      4DFFFFA64DFFFFA64DFFC7542EFF7F7F7FFFC0C0C0FFC0C0C0FFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFFEBEBEBFF00000000EBEBEBFF5F4242FF5F4242FF5F42
      42FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFF6E694CFF5F42
      42FF5F4242FF5F4242FFA3A3A3FFF4F4F4FFDDE3DDFF139611FF239813FFB06C
      24FFB66E26FFB97026FFBB7027FFBA7126FF22A414FF13A813FF12A612FF12A2
      11FF129E11FF0F850EFF434343FFF3F3F3FFECECECFFECECECFFECECECFFECEC
      ECFF343434FF404040FF828282FFB8B8B8FFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEC8335FFDCDCDCFFFAFAFAFFFFA64DFFF9A24BFFFFA6
      4DFFFFA64DFFFFA64DFFC7542EFFC7542EFFC7542EFFC7542EFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFFEBEBEBFF00000000B69696FFB79898FFB89A9AFFB89B
      9BFFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFB89A
      9AFFB79999FFB69797FF5F4242FFE9E9E9FF4AA24AFF119E11FF14A114FF6887
      1DFFB87026FFBB7127FFBD7228FFBD7328FF22A814FF13AB13FF13A913FF13A4
      13FF4A8E17FFA26A21FF32200BFFBEBEBEFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FF313131FF3291F2FF3291F2FF434343FF878787FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFEC8335FFDCDCDCFFF9F9F9FFFFA64DFFF9A24BFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFFEBEBEBFF00000000B39191FFB39191FFB39292FFB392
      92FFB49393FFB49393FFB59494FFB59494FFB59595FFB59595FFB69696FFB696
      96FFB69797FFB69797FF5F4242FFE7E7E7FF129910FF12A112FFD3EDD3FF18A7
      15FFAC7625FFBD7228FFC37D37FFECDAC6FF23AA16FF26B225FFD2E2C3FFAC75
      26FFB36E25FFAF6A24FF8B541CFF787878FFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFB0B0B0FF2F90F1FF2F90F1FF3291F2FF3090F1FF8B8B8BFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFEC8335FFDCDCDCFFF9F9F9FFFFA64DFFF9A24BFFFFA6
      4DFFFFA64DFFED8F4AFFED8C45FFED8B43FFED8B43FFED8B43FFED8E48FFED90
      4DFFFFA64DFFC7542EFFEBEBEBFF00000000B18F8FFFB18F8FFFB29090FFB290
      90FFB29090FFB29090FFB39292FFB39292FFB49393FFB49393FFB59494FFB594
      94FFB59595FFB59595FF5F4242FFE7E7E7FF129E12FF13A213FFD5EED5FF17AA
      16FF57971EFFBE752AFFC58039FFEDDBC8FF4C9D1CFFB18637FFEEDECEFFCC98
      64FFBC7D3CFFB26B25FFA56321FF454545FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE6E6E6FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2ACBF0FF8D8D8DFFFFFF
      FFFFFFFFFFFFFFFFFFFFEC8335FFDCDCDCFFF9F9F9FFFFA64DFFF9A24BFFFFA9
      53FFFFA953FFED9454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED94
      54FFFFA953FFC7542EFFEBEBEBFF00000000B99A9AFFB99A9AFFB99B9BFFB99B
      9BFFBA9B9BFFBA9B9BFFBA9C9CFFBA9C9CFFBB9D9DFFBB9D9DFFBB9E9EFFBB9E
      9EFFBC9E9EFFBC9E9EFF5F4242FFE7E7E7FF17A117FF25A925FFD8EFD8FFC8E8
      C7FFE9DDCAFFD29F6BFFC98948FFEFDECCFFC48039FFC88847FFEEDECEFFC589
      4EFFEBD8C6FFC08A51FFA56A25FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FF2A8DF0FF2B8DF0FF28B2F0FF26CAF0FF22C9EFFF8D8D
      8DFFFFFFFFFFFFFFFFFFEC8335FFDCDCDCFFF9F9F9FFFFA64DFFF9A24BFFFFB3
      67FFFFB367FFED995DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED99
      5DFFFFB367FFC7542EFFEBEBEBFF00000000CCB6B6FFCCB6B6FFCCB6B6FFCCB6
      B6FFCDB7B7FFCDB7B7FFCDB7B7FFCDB7B7FFCDB8B8FFCDB8B8FFCEB8B8FFCEB8
      B8FFCEB8B8FFCEB8B8FF5F4242FFE7E7E7FF1DA31DFF37B037FFDAEFD9FF9198
      43FFC68849FFC88849FFCD9256FFEFE0CFFFC9894AFFCB9156FFEEDFCFFFC388
      4BFFDFD4BAFF75BD67FF1A9917FF646464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF2A8DF0FF28CBF0FF28CBF0FF25CAF0FF23CAF0FF2DCC
      F0FF8D8D8DFFFFFFFFFFEC8335FFDCDCDCFFF9F9F9FFFFA953FFF9A551FFFFC4
      88FFFFC488FFEDA06BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDA0
      6BFFFFC488FFC7542EFFEBEBEBFF00000000E5D9D9FFE5D9D9FFE5D9D9FFE5D9
      D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5DADAFFE5DADAFFE5DADAFFE5DA
      DAFFE5DADAFFE5DADAFF5F4242FFEEEEEEFF159E15FF48B648FFB9D9ADFFE3CB
      B1FFE5CBB1FFE6CCB2FFE6CCB2FFE7CDB3FFE6CCB1FFBB9F5EFFB4DDACFFADDE
      AAFF88CF86FF46B446FF0E880EFFB5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF2DCCF0FF2FCDF0FF35CEF0FF3BCFF1FF4DD3
      F2FF6DDBF4FF8D8D8DFFEC8335FFDCDCDCFFF9F9F9FFFFB367FFF9AE64FFFFD4
      AAFFFFD4AAFFEDAB82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDAB
      82FFFFD4AAFFC7542EFFEBEBEBFF000000009C7171FFF2ECECFFF2ECECFFF2EC
      ECFFF2ECECFFF2ECECFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2ED
      EDFFF2EDEDFFF2EDEDFFECECECFFFBFBFBFF2AA12AFF4DB44BFFBB9D65FFCB9A
      68FFCE9B69FFCF9D69FFD19D6AFFD19D69FFD09E69FF7AB85EFF5CC25BFF5BC0
      5BFF59BE59FF40AF40FF225821FFF0F0F0FFFAA986FFFAA986FFFAA986FFFAA9
      86FFFAA986FFFAA986FFFAA986FFFAA986FF3FD0F1FF51D4F2FF60D7F3FF6FDB
      F4FF88E1F5FFA1E7F7FF82481DFFDCDCDCFFF9F9F9FFFFC488FFFEC387FFC754
      2EFFFFE9D3FFEDB99EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDB9
      9EFFFFE9D3FFECECECFFFBFBFBFF00000000FEFEFEFFFBFBFBFFF9F9F9FFF4F4
      F4FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFA7A180FFE7E7
      E7FFF9F9F9FFFAFAFAFFFDFDFDFF00000000EBF3EBFF5D8C28FFC9A074FFCFA3
      77FFD1A478FFD3A578FFD4A578FFD4A579FFD2A577FFD0A677FF8DBB6FFF6CC4
      6BFF65C065FF199519FFB9BAB9FF00000000FAAD8DFFFAAD8DFFFAAD8DFFFAAD
      8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFF73DCF4FF85E0F5FF91E3
      F6FFA4E8F8FFB8EDF9FFC2F0FAFFB8B8B8FFF9F9F9FFFFD4AAFFFFD4AAFFECAA
      81FFFBFBFBFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFE7A67EFFF9CFA6FFC252
      2CFFE6E6E6FFFDFDFDFF0000000000000000000000000000000000000000F9F9
      F9FFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFA7A180FFEBEB
      EBFF0000000000000000000000000000000000000000B5B88FFFB78249FFD0AA
      83FFD4AD86FFD6AF88FFD7AF88FFD7AF88FFD6AF88FFD4AE88FFD2AD85FF9DBA
      7CFF30A52FFF819B81FFFBFBFBFF00000000FBB89CFFFBB89CFFFBB89CFFFBB8
      9CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFAEEAF8FFBCEE
      F9FFC8F1FAFFD2F4FBFFD3F4FBFFC2C2C2FFFEFEFEFFC7542EFFFFE9D3FFEDB9
      9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDB99EFFFFE9D3FFECEC
      ECFFFBFBFBFF000000000000000000000000000000000000000000000000F9F9
      F9FFF0EEE9FFEFEEE8FFEFEEE8FFEFEEE8FFEFEEE8FFF0EEE9FFA7A180FFEBEB
      EBFF0000000000000000000000000000000000000000FEFEFEFFC6B493FFB176
      39FFCFA781FFD8B795FFD9B896FFD9B897FFD9B896FFD7B694FFCBA279FFA970
      31FFA2A892FFF9F9F9FF0000000000000000FCC0A6FFFCC0A6FFFCC0A6FFFCC0
      A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFD8F5
      FCFFDDF7FCFFDFF7FCFF9B5622FFE9E9E9FF00000000FEFEFEFFFBFBFBFFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFAFAFAFFFDFD
      FDFF00000000000000000000000000000000000000000000000000000000FBFB
      FBFFFAF9F7FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F7FFA7A180FFF2F2
      F2FF00000000000000000000000000000000000000000000000000000000F4F0
      EDFFAE753BFFAF6F2FFFBF8953FFC49463FFBC864FFFAB6C2CFFAB8056FFE3E1
      DDFFFEFEFEFF000000000000000000000000F9F9F9FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFB7B7B7FFB7B7B7FFF7F7F7FFFBFBFBFF00000000FCFCFCFFE0DFE0FFD2D1
      D2FFCBCACBFFAFAEAFFF969596FF908F90FF919091FF8D8B8DFF9F9D9FFFC2C1
      C2FFD0CFD0FFD5D4D5FFF1F1F1FF00000000FEFEFEFFFAFAFAFFDDDCDDFFD0CF
      D0FFC9C8C9FFADACADFF949394FF8E8D8EFF8F8E8FFF8B898BFF9D9B9DFFC0BF
      C0FF000000000000000000000000000000000000000000000000000000000000
      0000C8C7C8FFA7A6A7FF8C8C8CFF878687FF888788FF848284FF959395FFB6B5
      B6FFC5C4C5FFCBCACBFFEDEDEDFF0000000000000000F4F4F4FFBDBABDFFA8A4
      A8FFA19EA1FF878387FF726F72FF6E6A6EFF6F6B6FFF6C676CFF797479FF938F
      93FF9F9B9FFFA6A2A6FFDBDADBFFFEFEFEFF00000000848084FFDE9760FFDE98
      62FFDE9964FFDF9B67FFDF9B67FFDF9B68FFDF9B68FFDF9B68FFDF9B67FFDE99
      64FFDC9762FFDA935FFFCBC9C9FF00000000D3D2D3FF5A575AFF966641FF9667
      42FF966743FF966945FF966945FF966946FF966946FF966946FF966945FF9869
      45FFD99561FF00000000000000000000000000000000585558FF835939FF7C55
      36FF7A5436FF65472FFF5B402AFF5B402BFF5B402BFF5B402BFF5B402AFF5C40
      2AFF845B3BFF8A5D3CFFB2B1B1FF00000000D1D0D1FF4C474CFFA9491BFFAB4A
      1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAB4A
      1AFFA9491BFFA2441EFF837D82FFEBEAEBFF00000000D7D2D7FFE8E7E8FFE8E7
      E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFEAE9EAFFE9E8
      E9FFE5E3E5FFDC945DFFC2BFC0FF00000000229BC7FF51CEE9FF56CEE9FF69D1
      E9FF79D3E9FF7BD3E9FF7CD3E9FF7CD3E9FF79D3E9FF76D2E8FF6FCFE6FF6696
      AAFFD3D1D3FFDB935DFF00000000000000002299C5FF41A6BBFF2B99B9FF339D
      BCFF3BA1BFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFF1A964FFA09D9EFF000000002195C0FFD7803DFFDE883EFFE18A
      40FFB95416FF4F4B4FFF4F4B4FFFD5D1D5FFEBE6EBFFF1EDF1FFF1EDF1FFE18A
      40FFDD863FFFD27C3EFFA2441EFFD0CDD0FF00000000E1DFE1FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFE9E8E9FFDC935AFFB9B5B6FF00000000239FCBFF239FCBFF5AD5EEFF6DD8
      EEFF7DD9EEFF81DAEEFF83DAEEFF83DAEEFF7FD9EDFF79D8EDFF70D4EBFF2199
      C6FF9D9C9DFFD99159FF00000000000000002299C4FF25CEFFFF2ED0FFFF37D2
      FFFF3ED3FFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFF0A65EFF989596FF000000002194BEFFE48A3BFFE9903DFFEB92
      3FFFC05913FF424142FF424142FFDEDDDEFFF5F4F5FFFCFBFCFFFCFBFCFFEB92
      3FFFE78E3DFFDC843CFFA9491BFFCDCACDFF00000000DFDFDFFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFE8E7E8FFDC9156FF938F90FF0000000025A4CFFF5EDDF4FF5EDDF4FF6BE0
      F4FF7BE1F4FF83E2F4FF85E2F4FF83E2F4FF7FE0F3FF78DFF2FF6EDAF0FF5ED0
      E8FF6E97A7FFCF8851FF928E8FFF00000000249EC7FF26CEFFFF2FD0FFFF38D2
      FFFF3FD4FFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFF0A359FF787576FF000000002399C1FFE78D39FFEB913BFFEE94
      3CFFC35B13FF515151FF515151FFE1E1E1FFF8F8F8FFFFFFFFFFFFFFFFFFEE94
      3DFFEA903BFFE0873AFFAB4A1AFFCBC8CBFF00000000DFDFDFFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFE7E6E7FFDC8F51FF615E5FFF0000000027A9D2FF5FE4F9FF27A9D2FF64E4
      F9FF70E6F9FF7BE7F9FF7DE8F9FF7CE7F9FF79E7F9FF71E4F7FF67DFF4FF5CD8
      F0FF219AC6FF946037FF605D5EFF0000000025A2CAFF25CEFFFF2DD0FFFF35D1
      FFFF3CD3FFFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFF0A154FF4F4D4DFF00000000249DC4FFE88C37FFEC9038FFED92
      39FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFED92
      39FFEA8E38FFE08637FFAC4B1AFFBDBABDFF00000000DFDFDFFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFE6E5E6FFDC8F51FF504239FF0000000028ABD4FF55E7FCFF56E7FCFF5EE8
      FCFF67E8FCFF6DE9FCFF6EE9FCFF6EE9FCFF6BE9FCFF65E6FAFF5CE2F8FF52DB
      F3FF44CAE8FF706D5BFF4D3F37FFCBCBCBFF26A4CCFF20CDFFFF27CEFFFF2ED0
      FFFF34D1FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFF0A359FF3F342DFF00000000259FC6FFE88A33FFEC8E34FFED90
      35FFED8E32FFED8F34FFED9035FFED9036FFED9137FFED9137FFED8F34FFED8F
      35FFEA8C34FFE08333FFAC4B1AFFA4A1A4FF00000000E0E0E0FFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFE7E6E7FFDC9156FF684326FF0000000028ACD5FF55E7FDFF58E8FDFF28AC
      D5FF61E9FDFF62E9FDFF63E9FDFF62E9FDFF60E9FDFF5CE8FCFF56E3FAFF4FDD
      F6FF4AD6F1FF219AC6FF472E1AFFB4B4B4FF26A5CDFF19CBFFFF1ECCFFFF23CD
      FFFF28CEFFFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF0A760FF3A2615FF0000000025A0C7FFE88930FFEC8D32FFED8E
      32FFED8E32FFED8F34FFED9035FFED9036FFED9137FFED9137FFED8F34FFED8E
      32FFEA8A31FFE08332FFAC4B1AFF928F92FF00000000E1E1E1FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFE8E7E8FFDC945CFF744621FF0000000029ADD6FF69EAFDFF6BEBFDFF71EC
      FDFF29ADD6FF29ADD6FF29ADD6FF29ADD6FF28ACD5FF28ACD5FF28AAD4FF27A7
      D1FF25A4CEFF229DC9FF605642FFB5B5B5FF27A6CEFF28CEFEFF2BCFFEFF2FD0
      FEFF31D0FEFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF1B172FF544B39FF0000000026A1C8FFE88C36FFEC8F36FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFCFFE08333FFAC4B1AFF928F92FF00000000E3E3E3FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFE9E8E9FFDC945CFF84572EFF0000000029ADD6FF88EEFDFF89EFFDFF8DEF
      FDFF92F0FDFF93F0FEFF91F0FDFF8EEEFCFF8DEEFCFF8BEDFCFF88EAFAFFA3A3
      A3FFE7E6E7FF00000000000000000000000027A6CEFF3BD2FEFF3CD3FEFF3ED3
      FEFF3FD4FEFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF3B77EFFF7E0
      CEFFF7E0CEFFA56F45FF81552DFF0000000026A1C8FFE99141FFED9541FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFBFAFBFFE0873BFFAC4B1AFFA6A3A6FF00000000E3E3E3FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFEAE9EAFFDC9863FF786C61FF0000000028ACD5FFA9F3FDFFAFF3FEFFB0F4
      FEFFB1F4FEFFADF3FDFFA4F1FDFF28ACD5FF28ABD4FF28AAD4FF27A9D2FFECEC
      ECFFE8E7E8FFDA9762FF776B60FFEAEAEAFF26A5CDFF50D7FEFF51D7FEFF52D7
      FEFF52D8FEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4BE89FFF7E0
      CEFF0486ADFFB47C51FF000000000000000025A0C7FFEA974BFFEE9B4BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFCFFE18E46FFAC4B1AFFBCB9BCFF00000000E4E4E4FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFEBEAEBFFDD9D6CFFB0B0B0FF000000000000000028ACD5FFC7F6FDFFC8F6
      FDFFC7F5FDFFC3F4FCFFEAEAEAFFF1F1F1FFF1F1F1FFF1F1F1FF000000000000
      0000E7E6E7FF986C4AFF777777FFA7A7A7FFE7A666FF68DDFEFF69DCFEFF69DC
      FEFF69DCFEFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF5C596FF68DD
      FEFF0185ACFF7D593DFF0000000000000000E0A163FFEA9D55FFEEA155FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFCFFE29452FFAC4B1AFF878487FF00000000E6E6E6FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3B77DFFF7E0
      CEFFF2DACAFF887564FFEFEFEFFF00000000000000000000000028ABD4FF28AB
      D4FF28AAD4FFEEEEEEFFF3F3F3FF00000000F0F0F0FFA8A8A8FFEEB37BFFF5DE
      CCFF009610FF009412FF009214FFA4A4A4FFE8AB6FFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF0085ACFF007A0FFF0000000000000000E1A66CFFECA96BFFF0AD6CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFCFFE3A169FFAB4A1AFF858285FF00000000E7E7E7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4BD87FFF4DD
      CCFF65482EFFE5E5E5FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000790CFF007D0EFFAE8760FFB8A6
      9AFF32251CFF009611FF009512FFA7A7A7FFECB37CFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF0085ACFF00830FFF0000000000000000E6AF79FFECB889FFF1BD8BFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF9F8F9FFE4AE85FFA9491BFF8F8D8FFF00000000EEEEEEFFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF2BF8FFF9696
      96FFD8D8D8FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F11FF008711FF0090
      11FF009610FFE5E5E5FF00960FFFFBFBFBFFF3BE8BFF0085ACFFB7EEFFFFB7EE
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFDD7614FFB7EEFFFFAAEC
      FFFF00790DFFE1E1E1FF0000000000000000F2BD8AFFB85316FFEEBF96FFF9F7
      F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F7
      F9FFF3F0F3FFDEAD8EFF027E0FFFF5F5F5FF0000000000000000EBBD90FFE6B9
      8CFFE3B78BFFE4B88BFFE6B98CFFE5B78CFFE4B58CFFB0A49BFFE4E4E4FFF7F7
      F7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E3FFF5F5
      F5FFFBFBFBFFFEFEFEFF000000000000000000000000F4C495FFE5B88CFFDDB2
      87FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FF978D85FFD8D8D8FFECEC
      ECFFF8F8F8FF0000000000000000000000000000000000000000E1B489FFD6AC
      83FFD67213FFD67213FFD67213FFD67213FFD67213FF928981FFD1D1D1FFE5E5
      E5FFF0F0F0FFF7F7F7FFFDFDFDFF000000000000000000000000000000000000
      0000FCFCFCFFEBEBEBFFCACACAFFB3B3B3FFB3B3B3FFCACACAFFEBEBEBFFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B1FFB6B5B6FFDAD9DAFFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F6FFD4D4D4FFB6B6B6FFAFAFAFFFB0B0B0FFABAAABFFC1C0C1FFEBEB
      EBFFFDFDFDFF000000000000000000000000000000000000000000000000F2F2
      F2FFBFBFBFFF897C6FFFA87D54FFB98555FFA3774EFF695C50FF7B7B7BFFBFBF
      BFFFF2F2F2FF000000000000000000000000D7D6D7FF888488FF7F7B7FFF7975
      79FF605C60FF463C3AFF553C2DFF5D402DFF4A3326FF130BE5FF2F292FFF5E58
      5EFFA09CA0FFF6F6F6FF00000000000000000000000000000000000000000000
      00005C585CFF392E2CFF3D271DFF422A1DFF352119FF110796FF241B1FFF433A
      3EFF6E6669FFACA6A6FFE6E4E4FF000000000000000000000000000000007874
      78FF524E52FFC77D36FF1E130EFF3A2519FF311E17FF6F4540FF714620FF241F
      21FF696164FF0000000000000000000000000000000000000000EAEAEAFFA690
      7BFFD49354FFD79A5FFFD99E66FFDAA069FFD99E66FFD79A60FFD59456FF6D57
      42FF969696FFEAEAEAFF0000000000000000E19A5FFFDDD8DDFFDDD8DDFFDDD8
      DDFFDDD8DDFFDED9DEFFDED9DEFFDBD6DBFF0F0BF2FF100CF1FF524CB3FFB0A7
      B0FF524C52FFDFDFDFFF00000000000000000000000000000000000000000000
      0000D1CCD1FFDCD5D5FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDED8
      D8FFDAD2D2FFC8824CFFDDDADAFF00000000000000000000000000000000D6D1
      D6FFC67A32FFA97E57FFCD8540FF6C6969FFCE8743FFCC843FFFC87E39FF986E
      47FFC2BBBBFF00000000000000000000000000000000F2F2F2FFB78A5FFFD38F
      4FFFD6975BFFD99E65FFDAA26CFFDBA36EFFDBA26DFFD99E66FFD6985CFFD491
      51FF94673DFF969696FFF2F2F2FF00000000EBA15EFFE7E5E7FFE7E5E7FFE7E5
      E7FFE7E5E7FFE7E5E7FFE7E5E7FFD9D7D9FF0C0AFAFF8887BAFF0C09F5FF958F
      95FF4C3222FF8F8F8FFF00000000000000000000000000000000E2E1E2FFE1DF
      E1FFD4D2D4FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFE7E5E5FFCE864DFFD2CFCFFF00000000000000000000000000000000D9D7
      D9FFC77B34FF9A9A9AFFDADADAFFD08A48FFD08A48FFCCCCCCFFCDA57EFFC57A
      33FFCAC8C8FF000000000000000000000000FDFDFDFFC2AC96FFD18B48FFD492
      53FFD79A5FFFD99F68FFDBA36EFFF1DDC9FFE0B185FFDAA069FFD89B61FFD593
      55FFD28C49FF6C5540FFC0C0C0FFFCFCFCFFEEA35CFFEAEAEAFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFF5D5DE3FF0807FEFFCFCFCFFF0907F9FF403A
      C7FF5C3A23FF66503CFF000000000000000000000000E5E5E5FFBAB6B6FFA39F
      9FFF9A9898FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFE7E5E5FFCE854BFFA7A4A4FF00000000000000000000000000000000A09C
      9CFFC77B33FF6F6F6FFFCBCBCBFFD28C49FFD28C49FFC2C2C2FFB38B63FFC579
      31FFD4D2D2FF000000000000000000000000F1F1F1FFCF853EFFD28B48FFD493
      54FFD7995EFFD99E66FFDAA26CFFFFFFFFFFE3B890FFD99F67FFD79A5FFFD593
      55FFD28D4AFFD08640FF7D7D7DFFEBEBEBFFF0A358FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFF1B1BFEFF8787E0FFE5E5E5FFDAD8E4FF1C18
      EFFF4D301EFFB67539FF000000000000000000000000E5E5E5FFDBD4D4FFDFDA
      DAFFEFEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFE8E6E6FFCE8346FF6E6B6BFF00000000000000000000000000000000DED9
      D9FFC5782EFFCB8038FF6B6B6BFFD28A46FFD18945FFAA825AFFC97E36FFCFCF
      CFFFE3E1E1FF000000000000000000000000D6C9BCFFCE833CFFD18A46FFD38F
      4FFFD59557FFD7995DFFD89B62FFFFFFFFFFE1B388FFD7995EFFD59558FFD390
      50FFD18A47FFCF853EFF685B4DFFCCCCCCFFF0A155FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE7E6E7FF5450
      E5FF332AE4FF986030FF66594BFF0000000000000000E5E5E5FFEBEBEBFFEDED
      EDFFF5F5F5FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFE9E7E7FFCE8447FF5A4C40FF000000000000000000000000000000000000
      0000F4F4F4FFC7792EFFCC8037FFCF843BFFCE833BFFCB7D34FFD4D4D4FFE9E9
      E9FF00000000000000000000000000000000C89767FFCD8036FFCF853EFFD189
      45FFD28D4BFFD39050FFD49252FFFFFFFFFFDEAC7CFFD39050FFD28D4BFFD18A
      46FFCF853EFFCD8137FF976536FFB6B6B6FFF0A256FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFEBEBEBFFE8E8E8FFDFDC
      DFFF4841E9FF73453BFF875A31FFB5B5B5FF00000000E6E6E6FFEBEBEBFFEDED
      EDFFF5F5F5FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFEBE9E9FFCE874DFF764D2AFF000000000000000000000000000000000000
      000000000000F0F0F0FFD7D7D7FF838383FF838383FF9D9D9DFFE8E8E8FF0000
      000000000000000000000000000000000000C8894DFFCF8640FFD08945FFD28C
      49FFD28E4DFFD39050FFD49151FFFFFFFFFFDEAC7BFFD39050FFD28E4DFFD28C
      4AFFD08946FFCF8640FFA96A2EFFB7B7B7FFF0A45BFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEBEBEBFFE9E9E9FFE3E0
      E3FF463292FF5C51DDFF905929FFB6B6B6FF00000000E7E7E7FFECECECFFEEEE
      EEFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFECEAEAFFCE8B55FF835025FF000000000000000000000000000000000000
      000000000000EDEDEDFF828282FF848484FF848484FF707070FFDDDDDDFFF2F2
      F2FF00000000000000000000000000000000CE9A69FFD28E4DFFD39050FFD491
      52FFD49254FFD49355FFE9C8AAFFFFFFFFFFDEAD7FFFD49355FFD49354FFD491
      52FFD39050FFD28E4EFF9A6735FFCECECEFFF0A65FFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFECECECFFE9E8E9FFE3DF
      E3FF6F4A2CFFC48549FF986534FF0000000000000000E9E9E9FFEDEDEDFFEFEF
      EFFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF3B77DFFF5DE
      CCFFE9CFBEFFA56F3DFF966333FF000000000000000000000000000000000000
      0000F4F4F4FFDFDFDFFF858585FFA4A4A4FF868686FF848484FFA37B54FFEFD9
      C7FF00000000000000000000000000000000E9DCCFFFD6975AFFD6995EFFD79A
      5FFFD79A60FFD79A61FFF9F2EBFFFAF2EBFFDFAF83FFD79A61FFD79A60FFD79A
      5FFFD6995EFFD6975AFF887B6EFFECECECFFF0A863FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEBEBEBFFE8E6E8FFE0DB
      E0FF734F35FFCC9056FF000000000000000000000000E9E9E9FFEFEFEFFFF1F1
      F1FFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF2BB85FFEAD1
      C0FF62422CFFC98E55FF00000000000000000000000000000000000000000000
      0000EFEFEFFF8A8A8AFF8B8B8BFFE1E1E1FFF0F0F0FF8B8B8BFF70573EFFD5BE
      AFFF62422CFF000000000000000000000000FDFDFDFFCA7A2DFFDBA470FFDAA4
      70FFDBA571FFDBA571FFDBA571FFF0D9C4FFDBA672FFDBA571FFDBA571FFDAA4
      70FFDAA470FFCA7A2DFFC2C2C2FFFCFCFCFFF0AD6AFFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFEDEDEDFFE8E6E8FFDED8
      DEFF795741FFC1752BFF000000000000000000000000EAEAEAFFF1F1F1FFF3F3
      F3FFF5F5F5FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF6F6F6FFE8B586FFBBB4
      B9FF775640FF000000000000000000000000000000000000000000000000F2F2
      F2FFDFDFDFFF939393FFA5A5A5FFF2F2F2FFF7F7F7FF939393FF939393FF7D78
      7BFF74543EFF00000000000000000000000000000000E6CFB9FFD79A5FFFE0B1
      84FFE0B184FFE0B184FFE0B184FFFFFFFFFFEDD2B9FFE0B184FFE0B184FFE0B1
      84FFD89D64FFA38C76FFF3F3F3FF00000000F1B274FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1F1FFEEAE71FFE7A76FFFDC9C
      6CFFA5774EFFA08A74FF000000000000000000000000ECECECFFF3F3F3FFF5F5
      F5FFF5F5F5FFF0F0F0FFEDEDEDFFEBB179FFEDD6C5FFE4CABAFFBD875AFFD798
      69FF00000000000000000000000000000000000000000000000000000000EFEF
      EFFF9C9C9CFF9C9C9CFFD8D8D8FFEAB079FF00000000DFC5B6FF9C9C9CFF6346
      31FF966C47FF9F8974FF00000000000000000000000000000000D5A374FFDAA3
      6DFFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFDCA7
      74FFB17F50FFECECECFF0000000000000000F3B880FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF3F3F3FFEFD7C8FFE6CBC1FFA77D
      59FFAD7C4EFF00000000000000000000000000000000EEEEEEFFF5F5F5FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF2BB85FFEAD1C0FFC9B3A6FFE2C8BEFF0000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFA5A5A5FFA4A4A4FFF1F1F1FF0000000000000000C8B2A5FFA5A5A5FFA5A5
      A5FF775536FFE9E9E9FF0000000000000000000000000000000000000000E6CF
      B9FFCD7F35FFE9C7A7FFEBCCAEFFEBCCAEFFEBCCAEFFEAC9AAFFCE833BFFC2AB
      95FFF3F3F3FF000000000000000000000000F4BF8CFFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF6F6F6FFF2F1F2FFE9CFC3FF9C622EFFBDA7
      91FF0000000000000000000000000000000000000000F3F3F3FFF5F4F4FFF6F6
      F6FFF6F6F6FFF6F6F6FFF5F5F5FFE8B586FFCDCACBFFE5CCC0FF000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FFAFAFAFFFE3E3E3FFF4F4F4FF00000000000000000000000098602DFFAFAF
      AFFFDBDBDBFFFDFDFDFF00000000000000000000000000000000000000000000
      0000FDFDFDFFEADCCFFFCE9966FFC58343FFC6925FFFD7C9BCFFF1F1F1FFFDFD
      FDFF00000000000000000000000000000000F5C393FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF4C495FFF2C194FFECBB91FFB5A99FFFEBEBEBFF0000
      0000000000000000000000000000000000000000000000000000F0C193FFEDBF
      91FFEDBF91FFEDBF91FFECBE90FFEBBC90FFEABA90FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECBE
      90FFE9BC8FFFEABD8FFF00000000000000000000000000000000EAEAEAFFF9F9
      F9FFFCFCFCFF000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC7E30000FFFFFFFF83C10000
      8FFFFFF00180000007F107E000000000070100E000000000020100C080010000
      00010001C003000080018001E007000080038003E0070000C0038007C0030000
      F003C00F80010000FCE3CE7F00000000FFFFFFFF00000000FFFFFFFF01800000
      FFFFFFFF83C10000FFFFFFFFC7E30000FFFF0001FFFFF00FCFFF0000FFBFC007
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
      494C010118001D00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000000001000001002000000000000000
      0200000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FDFDFDFFF9F9F9FFF0F0F0FFE4E4
      E4FFD3D3D3FFC3C3C3FFB8B8B8FFB3B3B3FFB3B3B3FFB8B8B8FFC3C3C3FFD3D3
      D3FFE3E3E3FFF0F0F0FFF9F9F9FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFBFBFBFFF9F9F9FFF7F7F7FFF9F9F9FFFBFBFBFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFBFBFBFFF9F9F9FFF7F7F7FFF9F9F9FFFBFB
      FBFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFFF1F1F1FFE1E1E1FFCBCBCBFFB3B3
      B3FF9C9C9CFF898989FF7D7D7DFF767676FF767676FF7D7D7DFF898989FF9C9C
      9CFFB3B3B3FFCBCBCBFFE0E0E0FFF1F1F1FFFAFAFAFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF9F9F9FFF2F2F2FFEAEAEAFFE5E5E5FFEAEAEAFFF2F2F2FFF9F9F9FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF9F9F9FFF2F2F2FFEAEAEAFFE5E5E5FFEAEAEAFFF2F2
      F2FFF9F9F9FFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000FDFDFDFFF7F7F7FFE7E7E7FFCCCCCCFFAAAAAAFF8A8682FF9275
      58FFA57545FFB0783EFFBC7C3CFFBB7C3BFFAD753AFF9C6D3CFF7E6144FF5F5B
      56FF6D6D6DFF888888FFAAAAAAFFCCCCCCFFE6E6E6FFF7F7F7FFFDFDFDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFF0F0F0FFE3E3E3FF808080FF7B7B7BFF808080FFE3E3E3FFF0F0F0FFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFFF0F0F0FFE3E3E3FF808080FF7B7B7BFF808080FFE3E3
      E3FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000FCFCFCFFF3F3F3FFDCDCDCFFB6B6B6FF9A8876FFB87D40FFD98937FFDF8E
      3CFFDF903EFFDF903FFFDF9140FFDF9140FFDF9140FFDF903EFFDF8E3CFFD98A
      38FFAC7034FF665442FF656565FF8B8B8BFFB6B6B6FFDCDCDCFFF3F3F3FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFF0F0
      F0FFE1E1E1FF1119E7FF1119E7FF1119E7FF6C6C6CFF797979FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFF0000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFF0F0F0FFE1E1E1FF1018E7FF1018E7FF1018E7FF6C6C6CFF7979
      79FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFF000000000000000000000000FCFC
      FCFFF1F1F1FFD5D5D5FFABA299FFB87F46FFDA8833FFDE8C39FFDF8E3CFFDF90
      3EFFDF9140FFE09242FFE09242FFE09242FFE09242FFDF9140FFDF903EFFDF8E
      3CFFDE8C39FFDA8834FFA36B32FF5B534AFF767676FFA7A7A7FFD5D5D5FFF1F1
      F1FFFCFCFCFF0000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF00000000FCFCFCFFF2F2F2FFE3E3
      E3FF1119E7FF1119E7FF1119E7FF1119E7FF1119E7FF696969FF787878FFE1E1
      E1FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000FEFEFEFFFAFA
      FAFFF0F0F0FFE1E1E1FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF6969
      69FF797979FFE3E3E3FFF2F2F2FFFBFBFBFF0000000000000000FDFDFDFFF3F3
      F3FFD4D4D4FFAC9985FFD28332FFDD8933FFDE8B37FFDE8D3AFFDF8E3CFFDF90
      3FFFE09242FFE09243FFE09344FFE09344FFE09243FFE09242FFDF9140FFDF8F
      3DFFDF8D3BFFDE8C38FFDD8A34FFCD7E2DFF64513DFF6B6B6BFFA1A1A1FFD4D4
      D4FFF3F3F3FFFDFDFDFF000000000000000000000000FCFCFCFFF0F0F0FFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFF7F7F7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFF8F8F8FFEBEBEBFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEFEFEFFFFBFBFBFF00000000FAFAFAFFEBEBEBFF1018
      E7FF1018E7FF1119E7FF1119E7FF1119E7FF1119E7FF1119E7FF696969FF7878
      78FFE1E1E1FFF0F0F0FFFAFAFAFFFEFEFEFF00000000FEFEFEFFFAFAFAFFF0F0
      F0FFE1E1E1FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018
      E7FF6C6C6CFF808080FFEAEAEAFFF9F9F9FF00000000FEFEFEFFF6F6F6FFDCDC
      DCFFB89879FFD7822CFFDD8831FFDD8A34FFDE8C38FFDF8E3CFFDF903EFFDF91
      40FFE09242FFE1994FFFE7AD72FFE7AD72FFE7AD72FFE09447FFE09141FFDF90
      3FFFDF8E3CFFDE8C39FFDE8A35FFDD8932FFD7832DFF765737FF6B6B6BFFA7A7
      A7FFDCDCDCFFF6F6F6FFFEFEFEFF00000000FAFAFAFFA7A5A3FF6F6B67FF6A66
      62FF6A6662FF6A6662FF6A6662FF7B7B7AFFD1D1D1FFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFFFCFCFCFFF9F9
      F9FFF3F3F3FFEAEAEAFFEEEEEEFF0000000000000000A4A2A0FF67635FFF625E
      5BFF65625EFF686460FF696561FF7B7B7AFFD0D0D0FFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E1FF817E7BFF6B6763FF696561FF6864
      60FF65615DFF65625FFF8F8F8FFFEEEEEEFF00000000F9F9F9FF1018E7FF1018
      E7FF1018E7FF1019E7FF1119E7FF1119E7FF1119E8FF1119E8FF1119E8FF6969
      69FF787878FFE1E1E1FFF0F0F0FFFAFAFAFFFDFDFDFFFAFAFAFFF0F0F0FFE1E1
      E1FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018
      E7FF1018E7FF7B7B7BFFE5E5E5FFF7F7F7FF00000000FBFBFBFFE6E6E6FFBDA8
      93FFD8822BFFDD862EFFDD8932FFDE8B36FFDE8C39FFDF8E3CFFDF903FFFE091
      41FFE09243FFE7AD72FFFFFFFFFFFFFFFFFFFFFFFFFFE39D56FFE09242FFDF90
      3FFFDF8E3CFFDE8D3AFFDE8B37FFDD8933FFDD872FFFD68129FF66513BFF7676
      76FFB6B6B6FFE6E6E6FFFBFBFBFF00000000EBEBEBFFC57B32FFF59332FFF593
      32FFF59332FFF59332FFF59332FF4D3C2CFFB9B9B9FFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFDFDFDFFFCFCFCFFF7F7F7FFEDEDEDFFE0E0E0FFC8C8C8FFA9A9
      A9FF888786FF6F6E6DFFB5B5B5FF00000000000000009F6328FF704316FF7D4B
      19FF985B1FFFB56C25FFCB7A29FF443527FFADADADFFF3F3F3FFFBFBFBFFFDFD
      FDFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A09890FFEE9033FFF59332FFF59332FFF492
      31FFF49231FFC57728FF545351FFEBEBEBFF00000000FAFAFAFF1018E7FF1018
      E7FF1018E7FF1018E7FF1019E7FF1119E8FF1119E8FF1119E8FF1119E8FF1119
      E8FF696969FF787878FFE1E1E1FFEFEFEFFFF4F4F4FFEFEFEFFFE1E1E1FF1019
      E8FF1019E8FF1018E8FF1018E7FF1018E7FF1018E7FF1018E7FF1018E7FF1018
      E7FF1018E7FF808080FFEAEAEAFFF9F9F9FFFDFDFDFFF2F2F2FFCDC4BBFFD381
      2FFFDC852CFFDD862EFFDD8932FFDE8B36FFDE8D3AFFDF8E3CFFDF903EFFE091
      41FFE09242FFE7AD72FFFFFFFFFFFFFFFFFFFFFFFFFFE39D56FFE09141FFDF90
      3FFFDF8E3CFFDE8D3AFFDE8B37FFDD8933FFDD8730FFDC852DFFCC7C29FF5B53
      49FF8C8C8CFFCCCCCCFFF2F2F2FFFDFDFDFFF0F0F0FFBB742FFFFF9933FFFF99
      33FFFF9933FFFF9933FFFF9933FF604224FFA7A7A7FFF8F8F8FFFEFEFEFF0000
      000000000000000000000000000000000000FEFEFEFFF9F9F9FFF1F1F1FFE7E7
      E7FFD4D4D4FFBDBDBDFFA1A1A1FF828180FF70675FFF79614AFF89623CFF9965
      2EFFBB722AFF714C25FFBCBCBCFF00000000EEEEEEFF7F4E1EFFC17427FF9F5E
      20FF8A531BFF764717FF623B13FF2B1C0FFF555555FF999999FFB2B2B2FFC9C9
      C9FFDDDDDDFFEAEAEAFFF3F3F3FFF8F8F8FFFDFDFDFF00000000000000000000
      00000000000000000000A0A0A0FF635546FFFA9632FFFF9933FFFF9933FFFF99
      33FFFF9933FFBF7327FF5E5D5BFFEFEFEFFF00000000FCFCFCFF1018E7FF1018
      E7FF1018E7FF1018E8FF1019E8FF1019E8FF1119E8FF1119E8FF1119E8FF1119
      E8FF1119E8FF696969FF787878FFDEDEDEFFE3E3E3FFDEDEDEFF1019E8FF1019
      E8FF1019E8FF1019E8FF1018E8FF1018E8FF1018E7FF1018E7FF1018E7FF1018
      E7FF1018E7FFE3E3E3FFF2F2F2FFFBFBFBFFF9F9F9FFE1E1E1FFC88E52FFDC83
      29FFDC852CFFDD862EFFDD8932FFDE8B36FFDE8C39FFDF8E3CFFDF8F3DFFDF90
      3FFFE09141FFE7AC70FFFFFFFFFFFFFFFFFFFFFFFFFFE39C55FFDF9140FFDF90
      3EFFDF8E3CFFDE8D3AFFDE8B36FFDD8933FFDD8730FFDC852DFFDC842AFFA166
      2BFF666666FFABABABFFE1E1E1FFF9F9F9FFFAFAFAFF976635FFFF9933FFFF99
      33FFFF9933FFFF9933FFFF9933FFA96927FF868686FFEBEBEBFFFEFEFEFF0000
      000000000000000000000000000000000000E4E4E4FFA6A6A6FF82817FFF615E
      5CFF50453AFF714A26FFBA722AFFE98D31FFF79431FFFB9632FFFE9833FFFF99
      33FFFA9733FF524940FFDEDEDEFF00000000000000006D4925FFF59331FFFF99
      33FFFE9933FFFB9732FFF89430FFED8D2FFFC47728FF7E5023FF4B3C2CFF504C
      48FF686664FF7E7E7DFF989898FFC6C6C6FFDDDDDDFFA5A5A5FF000000000000
      00000000000000000000B77029FF9A5C1FFFFD9833FFFF9933FFFF9933FFFF99
      33FFFF9933FFA16222FF818080FFF6F6F6FF00000000FEFEFEFFFAFAFAFF1018
      E8FF1018E8FF1018E8FF1019E8FF1019E8FF1019E8FF1119E8FF1119E8FF1119
      E9FF1119E9FF1019E9FF696969FF747474FFCFCFCFFF1019E9FF1019E9FF1019
      E8FF1019E8FF1019E8FF1019E8FF1018E8FF1018E8FF1018E8FF1018E8FF1018
      E7FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFFF1F1F1FFCEBBA9FFD97F24FFDB83
      28FFDC852CFFDD862EFFDD8831FFDD8A34FFDE8B37FFDE8D3AFFDF8E3CFFDF8F
      3DFFDF903FFFE29D56FFEEC79FFFEEC79FFFEEC79FFFE09548FFDF8F3DFFDF8E
      3CFFDE8D3AFFDE8C38FFDE8A35FFDD8932FFDD872FFFDC852CFFDC8329FFD87F
      25FF665341FF898989FFCCCCCCFFF1F1F1FFFDFDFDFF81705FFFFE9933FFFF99
      33FFFF9933FFFF9933FFFF9933FFEE8F30FF605851FFC5C5C5FFF6F6F6FFFEFE
      FEFF000000000000000000000000F9F9F9FF8F7D6BFF9D652DFFC3772AFFEB8D
      2FFFFD9833FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFD17E2CFF7C7B7AFFF1F1F1FF0000000000000000736455FFCC7928FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFE9933FFF090
      30FFCD7C2AFFA56629FF835A32FF959494FF8C7B69FF00000000000000000000
      000000000000FE9833FFE2882DFFB56C23FFFF9933FFFF9933FFFF9933FFFF99
      33FFFF9933FF825425FFB2B2B2FFFBFBFBFF0000000000000000FEFEFEFFFAFA
      FAFF1018E8FF1018E8FF1019E8FF1019E8FF1019E8FF1019E8FF1119E9FF1119
      E9FF1019E9FF1019E9FF1019E9FF656565FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E8FF1019E8FF1019E8FF1018E8FF1018E8FF1018E8FFE1E1
      E1FFF0F0F0FFFAFAFAFFFEFEFEFF00000000E4E4E4FFCC8D4DFFDB8024FFDB82
      27FFDC842AFFDC852DFFDD872FFFDD8932FFDE8A35FFDE8B37FFDE8C39FFDF8D
      3BFFDF8E3CFFE09447FFE6A96CFFE6A96CFFE6A96CFFDF9040FFDF8D3BFFDE8D
      3AFFDE8B37FFDE8A35FFDD8933FFDD8730FFDC862DFFDC842BFFDB8328FFDB81
      25FFA66727FF6E6E6EFFB4B4B4FFE4E4E4FF00000000C1C0BEFFED8D2FFFFF99
      33FFFF9933FFFF9933FFFF9933FFFE9833FF855B31FF7E7E7EFFD9D9D9FFFAFA
      FAFFFEFEFEFF000000000000000000000000A89E93FFF59433FFFF9933FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FF9B652EFFB0B0B0FFFAFAFAFF0000000000000000BFBEBDFF7E4C18FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFFF9933FFFA9632FF69523BFFE1E1E1FF0000000000000000000000000000
      000000000000F49231FF794818FFF99633FFFF9933FFFF9933FFFF9933FFFF99
      33FFFC9732FF6C5237FFDEDEDEFFFEFEFEFF000000000000000000000000FEFE
      FEFFFAFAFAFF1019E8FF1019E8FF1019E8FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E8FF1019E8FF1018E8FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFF0000000000000000D4CEC8FFD77E23FFDB8023FFDB81
      26FFDB8328FFDC842BFFDC852DFFDD872FFFDD8831FFDD8933FFDE8A35FFDE8B
      37FFDE8B37FFE6AA6DFFFFFFFFFFFFFFFFFFFFFFFFFFE29A50FFDE8B37FFDE8A
      35FFDD8A34FFDD8932FFDD8730FFDC862DFFDC852CFFDC8329FFDB8126FFDB80
      24FFD47B20FF615B55FF9E9E9EFFD4D4D4FF00000000F2F2F2FFB47A40FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFE58A2EFF5F4C37FF8B8B8BFFD4D4
      D4FFF3F3F3FFFDFDFDFFFEFEFEFFFEFEFEFFF3F3F3FF998068FFF69431FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFD98
      33FF826343FFD8D8D8FFFDFDFDFF0000000000000000F1F1F1FF7D542BFFF392
      31FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFFE9833FF9D6C3CFFC3C3C3FFF9F9F9FFF2F2F2FF987F68FFF59331FFFC97
      32FFED8E2FFF995B1EFFDC832CFFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFEB8D2FFF74706CFFF5F5F5FF000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FFE1E1E1FFF0F0F0FFFAFA
      FAFFFEFEFEFF000000000000000000000000CBAD8EFFDA7E1FFFDA7F21FFDB80
      23FFDB8126FFDB8328FFDC842AFFDC852CFFDC862DFFDD872FFFDD8831FFDD89
      32FFDD8932FFE4A360FFFFFFFFFFFFFFFFFFFFFFFFFFE6A869FFDD8932FFDD88
      31FFDD872FFFDD862EFFDC852DFFDC842BFFDC8329FFDB8126FFDB8024FFDB7F
      22FFDA7E1FFF7A5B3CFF8C8C8CFFC5C5C5FF00000000FEFEFEFFA5937FFFFC97
      33FFFF9934FFFF9934FFFF9934FFFF9933FFFF9933FFF29231FF624A33FF7473
      73FFB1B1B1FFDBDBDBFFEAEAEAFFF0F0F0FFECECECFFD1D1D1FFA3703DFFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFF794
      31FF736A61FFF0F0F0FFFEFEFEFF0000000000000000000000009A8977FFC576
      27FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFDD842CFF5C5956FFB4B4B4FFD5D5D5FFDCDCDCFFC4C4C4FF946637FFC677
      28FF6E4215FFD07D29FFFF9933FFFF9933FFFF9934FFFF9934FFFF9934FFFF99
      34FF784B1EFFBDBDBDFFFDFDFDFF000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFF1019E9FF111AE9FF111AE9FF111AE9FF111A
      E9FF111AE9FF111AE9FF111AE9FF111AE9FF111AE9FF111AE9FF111AE9FF111A
      E9FF111AE9FF111AE9FF111AE9FF1019E9FFE1E1E1FFF0F0F0FFFAFAFAFFFEFE
      FEFF00000000000000000000000000000000CA9763FFDA7D1EFFDA7D1EFFDA7E
      20FFDB7F22FFDB8024FFDB8126FFDB8328FFDC842AFFDC842BFFDC852CFFDC85
      2DFFDC862DFFDF8D3AFFFEFCFAFFFFFFFFFFFFFFFFFFF8E6D5FFDD8B36FFDC85
      2DFFDC852CFFDC842AFFDC8329FFDB8227FFDB8125FFDB8023FFDA7F21FFDA7E
      1FFFDA7D1EFF95622DFF7F7F7FFFBBBBBBFF0000000000000000D5D5D4FFC583
      3FFFFFA246FFFFA246FFFFA246FFFFA246FFFFA142FFFF9F40FFF0953AFF9A66
      33FF6B5742FF605C58FF706F6FFF757473FF706861FF84674AFFC6803CFFFFA1
      45FFFFA245FFFFA246FFFFA246FFFFA246FFFFA246FFFFA246FFFFA246FFD688
      3CFF929291FFFAFAFAFF00000000000000000000000000000000D0D0CFFF9861
      2BFFFFA246FFFFA246FFFFA246FFFFA246FFFFA246FFFFA246FFFFA245FFFFA2
      45FFDF8C3CFF704A25FF3B3024FF32302CFF35302CFF3F3021FF613F1CFF935C
      26FFEA9137FFFF9F40FFFFA041FFFFA245FFFFA246FFFFA246FFFFA246FFD084
      37FF514E4BFFEFEFEFFF00000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFF121BE9FF121BE9FF131CE9FF131C
      E9FF131CE9FF131CE9FF131CE9FF131CE9FF131CE9FF131CE9FF131CE9FF131C
      E9FF131CE9FF131BE9FF121BE9FFDEDEDEFFEFEFEFFFFAFAFAFFFEFEFEFF0000
      000000000000000000000000000000000000CB8D4CFFD97B1BFFDA7D1EFFDA7E
      20FFDB8024FFDB8227FFDB8329FFDB842CFFDC852DFFDC852EFFDC862EFFDC86
      2FFFDC8730FFDC8730FFF1D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E7D7FFDF92
      43FFDC852EFFDC852DFFDB842CFFDB842AFFDB8227FFDB8126FFDA7F21FFDA7D
      1EFFD97C1CFFA56726FF797979FFB5B5B5FF000000000000000000000000ACA9
      A5FFEA9F55FFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE
      5CFFFAAB5BFFF4A75AFFEAA157FFECA157FFF7A95AFFFCAC5CFFFFAE5DFFFFAE
      5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFF7A57
      35FFBEBEBEFFFDFDFDFF00000000000000000000000000000000FEFEFEFF7F6E
      5DFFFBAB5CFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE
      5DFFFFAE5DFFFDAD5CFFF7A95AFFEFA257FFE89F55FFF1A458FFF9AA5AFFFEAD
      5CFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFBAB5BFF6344
      25FFADADADFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFF4F4F4FF161FEAFF161FEAFF161F
      EAFF161FEAFF161FEAFF161EEAFF161FEAFF161FEAFF161FEAFF161FEAFF161F
      EAFF161FEAFF161EEAFFCFCFCFFFE3E3E3FFF4F4F4FFFDFDFDFF000000000000
      000000000000000000000000000000000000CF863DFFDA7D1FFFDB832AFFDB84
      2CFFDC862DFFDC862EFFDC872FFFDD8831FFDD8831FFDD8832FFDD8833FFDD89
      33FFDD8933FFDD8933FFDE8E3CFFF8E7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFBF1
      E8FFE29B54FFDD8832FFDD8831FFDD8730FFDC862EFFDC862DFFDB852CFFDB84
      2BFFDA7D1FFFB36920FF797979FFB5B5B5FF000000000000000000000000FAFA
      FAFF9D8D7DFFF9B470FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFF7B36FFF544E
      48FFDEDEDEFF000000000000000000000000000000000000000000000000B0AE
      ABFFF1AF6DFFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFBB671FF92683DFF403C
      37FFDCDCDCFF0000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFFEFEFEFFFDEDEDEFF1C25EAFF1B24
      EAFF1B24EAFF1A23EAFF1A23EAFF1A23EAFF1A23EAFF1B23EAFF1B23EAFF1B24
      EAFF1C24EAFF656565FF747474FFDEDEDEFFEFEFEFFFFAFAFAFFFEFEFEFF0000
      000000000000000000000000000000000000D0873DFFDB842AFFDC8831FFDD88
      32FFDD8933FFDD8934FFDD8A35FFDD8A35FFDD8A35FFDD8B36FFDD8B36FFDD8B
      37FFDD8B37FFDD8B37FFDD8B38FFDE9142FFF5DFC8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF5EEFFE19B53FFDD8A35FFDD8A35FFDD8934FFDD8933FFDD8832FFDC88
      31FFDB842AFFB46B20FF7F7F7FFFBBBBBBFF0000000000000000000000000000
      0000F2F2F2FF857462FFF7BE84FFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC4
      8AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC4
      8AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFCD9C6DFF7E7D
      7CFFF2F2F2FF000000000000000000000000000000000000000000000000E6E6
      E6FFC6986BFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC4
      8AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFFC4
      8AFFFFC48AFFFFC48AFFFFC48AFFFFC48AFFFCC188FF99744FFFA47D57FF7C7B
      7AFF000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFFF0F0F0FFE1E1E1FF252EEBFF232CEBFF222A
      EAFF2129EAFF2029EAFF2028EAFF2028EAFF2028EAFF2028EAFF2029EAFF2129
      EAFF222AEBFF242CEBFF696969FF787878FFE1E1E1FFF0F0F0FFFAFAFAFFFEFE
      FEFF00000000000000000000000000000000D08F4EFFDC852CFFDD8B38FFDE8C
      39FFDE8D39FFDE8D3AFFDE8D3AFFDE8D3BFFDE8E3CFFDE8E3CFFDE8E3CFFDE8E
      3CFFDE8E3CFFDE8E3CFFDE8E3CFFDE8E3CFFDE8F3EFFF1CFACFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9EBDDFFDE8E3EFFDE8D3AFFDE8D3AFFDE8D39FFDE8C39FFDE8C
      39FFDC852CFFA76826FF8C8C8CFFC6C6C6FF0000000000000000000000000000
      000000000000F4F4F4FF9E948AFFDCB187FFFFD0A0FFFFD0A1FFFFD0A1FFFFD0
      A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0
      A1FFFFD0A1FFFDCE9EFFEBBE90FFFFD0A0FFFFD0A1FFFFD0A0FF9A7F65FFAFAF
      AFFFFAFAFAFF000000000000000000000000000000000000000000000000FCFC
      FCFF827365FFFFD0A0FFFFD0A1FFFFD0A1FFF0C193FFF4C597FFFFD0A1FFFFD0
      A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0
      A1FFFFD0A1FFFFD0A1FFFFD0A1FFE6B98CFF967758FFC6A17CFF987E64FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFFF0F0F0FFE1E1E1FF333AECFF2F36EBFF2C34EBFF2A32
      EBFF2831EBFF2730EBFF272FEBFF262FEBFF262FEBFF262FEBFF272FEBFF2730
      EBFF2931EBFF2B33EBFF2E36ECFF696969FF787878FFE1E1E1FFF0F0F0FFFAFA
      FAFFFEFEFEFF000000000000000000000000D6A16CFFDB8329FFDE903FFFDE90
      3FFFDF9040FFDF9040FFDF9141FFDF9141FFDF9141FFDF9141FFDF9141FFDF91
      42FFDF9142FFDF9142FFDF9142FFDF9142FFDF9142FFDF9142FFF2D3B3FFFFFF
      FFFFFFFFFFFFFFFFFFFFE8B078FFDF9141FFDF9040FFDF9040FFDE903FFFDE90
      3FFFDB8329FF9C6834FF9F9F9FFFD5D5D5FF0000000000000000000000000000
      00000000000000000000FBFBFBFFC3C2C1FFA89079FFF7D3AFFFFEDAB6FFFFDB
      B7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFDD9
      B5FFE6C2A0FF76695DFF8C8681FFF2CEABFFFFDBB7FFFCD9B5FF817467FFD9D9
      D9FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000AEADACFFF3CFABFFFFDBB7FFF8D3B0FF4E4134FF826E59FFDFBC99FFFBD7
      B3FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDB
      B7FFFFDBB6FFF9D4B0FFC3A383FF8A745FFFEECCABFFFBD8B4FF000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFF0F0F0FFE1E1E1FF4047EDFF3C43ECFF383FECFF353DECFF333B
      EBFF3139EBFF3038EBFF2E36EBFF2E36EBFF2D35EBFF2E36EBFF2E36EBFF2F37
      EBFF3139ECFF333BECFF353DECFF3840ECFF696969FF787878FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFF0000000000000000DFC1A1FFDA7E1FFFE09446FFE094
      47FFE09548FFE09548FFE19548FFE19548FFE6A86AFFF1D1B0FFF3D7BAFFF6E2
      CDFFE29F59FFE09649FFE09649FFE09649FFE09649FFE09649FFE5AA6BFFFFFF
      FFFFFFFFFFFFFFFFFFFFEFC69EFFE19548FFE09548FFE09548FFE09548FFE094
      46FFDA7E1FFF8E6F50FFB5B5B5FFE4E4E4FF0000000000000000000000000000
      000000000000000000000000000000000000E6E6E6FFA7A3A0FFA3978DFFB8A4
      90FFE2C8AEFFF6DBC1FFFBE1C8FFFBE0C6FFF0D6BCFFD4BCA3FFAB9A8AFF9F96
      8DFFB3B2B1FFF3F3F3FFF4F4F4FF948C85FFF2D9C0FFF6DCC4FF73706CFFEFEF
      EFFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000E7E7E7FFC1AD98FFFDE4CCFF948678FFB7B7B7FFA29F9CFF847B72FF8071
      61FFA18E7AFFCAB29BFFEED3B9FFF9DFC4FFFCE2C9FFF8DDC3FFE9CEB4FFBCA6
      91FF928376FF97928DFFC8C8C8FF918982FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFF0F0F0FFE1E1E1FF4C52EDFF484EEDFF444BEDFF4148ECFF3E45ECFF3C43
      ECFF3941ECFF373FECFF363DECFF353CECFF343CECFF343CECFF353DECFF373E
      ECFF3840ECFF3A41ECFF3C43ECFF3F46EDFF4249EDFF696969FF787878FFE1E1
      E1FFF0F0F0FFFAFAFAFFFEFEFEFF00000000EEE8E2FFD57715FFE09547FFE199
      4FFFE1994FFFE1994FFFE1994FFFE1994FFFE8B27BFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFC8A0FFE29A50FFE29A50FFE29A50FFE29A50FFE29A50FFE9B47DFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDC398FFE1994FFFE1994FFFE1994FFFE1994FFFE095
      47FFD27413FF8D8781FFCCCCCCFFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFAFFEEEE
      EEFFCECDCDFFA5A4A3FF91908FFF959492FFAFAEAEFFD8D8D7FFF0F0F0FFFBFB
      FBFF000000000000000000000000F3F3F3FFA39B92FFD4C5B5FF969595FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFA49D95FFCBBAABFFA1A0A0FFFBFBFBFF0000000000000000ECEC
      ECFFC7C6C6FF929190FF6C6B6AFF5E5C5AFF676564FF868584FFB3B3B2FFE0E0
      E0FFF6F6F6FFFDFDFDFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFF0F0
      F0FFE1E1E1FF575DEEFF5359EEFF4F56EEFF4C53EDFF4950EDFF474EEDFF454C
      EDFF4249EDFF3F46EDFF3C43EDFF3A42ECFF3A41EDFF3B42EDFF3C44EDFF3E45
      EDFF4047EDFF4249EDFF434BEDFF464DEDFF4950EDFF4D53EEFF696969FF7878
      78FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFFF9F9F9FFDA9854FFDD8832FFE39D
      56FFE39E57FFE39E58FFE39E58FFE39E58FFE39F5AFFFCF5EDFFFFFFFFFFFFFF
      FFFFFDFBF8FFEAB986FFE39E58FFE39E58FFE39E58FFE5A768FFF9EDE0FFFFFF
      FFFFFFFFFFFFFEFEFDFFE6AB6FFFE39E58FFE39E58FFE39E58FFE39D56FFDD88
      32FFB16F2BFFACACACFFE2E2E2FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF00000000000000000000
      0000000000000000000000000000FEFEFEFFC8C7C7FF8C8782FFE1E1E1FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFACAAA8FF9E9C9BFFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000FDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF2F2F2FFE3E3
      E3FF6066EFFF5D63EFFF5A60EEFF575EEEFF555BEEFF5359EEFF5057EDFF4E54
      EDFF4A51EDFF464DEDFF4249EDFFDEDEDEFF3F46EDFF4148EDFF444BEDFF464D
      EDFF494FEDFF4B51EDFF4C53EEFF4F55EEFF5157EEFF555BEEFF595EEFFF6969
      69FF797979FFE3E3E3FFF2F2F2FFFBFBFBFFFDFDFDFFECDAC7FFD77816FFE29A
      51FFE4A361FFE4A361FFE4A361FFE4A361FFE4A361FFEDC296FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9ECDFFFF4DCC3FFF6E3CFFFFDFBF8FFFFFFFFFFFFFF
      FFFFFFFFFFFFF3D8BCFFE4A361FFE4A361FFE4A361FFE4A361FFE29B52FFD576
      15FF9A8875FFCDCDCDFFF2F2F2FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFAFAFAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFEBEBEBFF686E
      EFFF666BEFFF6369EFFF6167EFFF5F65EFFF5D63EFFF5B61EEFF585FEEFF555C
      EEFF5258EEFF4D53EEFFE1E1E1FFEFEFEFFFF4F4F4FF464DEEFF4A51EEFF4E54
      EEFF5057EEFF5359EEFF555BEEFF575DEFFF595FEFFF5C62EFFF5F65EFFF6267
      EFFF6C6C6CFF808080FFEAEAEAFFF9F9F9FF00000000FBFBFBFFDC9E5FFFDC84
      2AFFE5A564FFE6A869FFE6A869FFE6A869FFE6A869FFE6A869FFF1CFADFFFEFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E1CCFFE6A96BFFE6A869FFE6A869FFE6A869FFE5A665FFDD8730FFB274
      35FFB8B8B8FFE7E7E7FFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FF6E73F0FF6D72
      F0FF6B70F0FF696FF0FF686DEFFF666CEFFF646AEFFF6268EFFF5F65EFFF5C62
      EEFF585FEEFFE1E1E1FFF0F0F0FFFAFAFAFFFDFDFDFFFAFAFAFF5057EEFF545B
      EEFF585EEFFF5B61EFFF5E63EFFF6065EFFF6267F0FF6469F0FF666BF0FF686D
      F0FF696FF0FF7B7B7BFFE5E5E5FFF7F7F7FF00000000FEFEFEFFF3EAE1FFD67D
      22FFDF903EFFE7AC70FFE8AD72FFE8AD72FFE8AD72FFE8AD72FFE8AD72FFEDC0
      93FFF8E7D7FFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEDE1FFF0C9
      A3FFE8AD72FFE8AD72FFE8AD72FFE8AD72FFE7AC70FFE09344FFCC761CFFABA2
      99FFDDDDDDFFF7F7F7FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFF7176F0FF7176
      F0FF7075F0FF7075F0FF6E74F0FF6D73F0FF6C71F0FF696FEFFF666CEFFF6368
      EFFFE1E1E1FFF0F0F0FFFAFAFAFFFEFEFEFF00000000FEFEFEFFFAFAFAFF5B61
      EFFF6065EFFF6369EFFF666BF0FF686EF0FF6A6FF0FF6B70F0FF6C71F0FF6C71
      F0FF6D72F0FF808080FFEAEAEAFFF9F9F9FF0000000000000000FDFDFDFFECD7
      C1FFD67A1BFFE1974BFFE9B178FFE9B27AFFE9B27AFFE9B27AFFE9B27AFFE9B2
      7AFFE9B27AFFE9B57FFFEDC194FFEEC59AFFEDC296FFEAB681FFE9B27AFFE9B2
      7AFFE9B27AFFE9B27AFFE9B27AFFE9B178FFE29A50FFD4791CFFAD9882FFD5D5
      D5FFF3F3F3FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFF7479F0FF7479
      F0FF7579F0FF757AF0FF7479F0FF7378F0FF7177F0FF6F74F0FF6C71F0FFE1E1
      E1FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000FEFEFEFFFAFA
      FAFF666CF0FF6A6FF0FF6D72F0FF6F74F0FF7176F1FF7176F1FF7176F1FF7176
      F1FF7075F0FFE3E3E3FFF2F2F2FFFBFBFBFF000000000000000000000000FDFD
      FDFFE8C7A7FFD67A1BFFE09446FFE9B47DFFEAB884FFEAB884FFEAB884FFEAB8
      84FFEAB884FFEAB884FFEAB884FFEAB884FFEAB884FFEAB884FFEAB884FFEAB8
      84FFEAB884FFEAB884FFEAB47EFFE2984DFFD57A1CFFB79676FFD5D5D5FFF1F1
      F1FFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFF787C
      F0FF787DF1FF797EF1FF797EF1FF787DF1FF767BF0FF7479F0FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFF0000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFF7075F0FF7378F1FF757AF1FF767BF1FF777CF1FF767BF1FF757A
      F1FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFF0000000000000000000000000000
      0000FCFCFCFFEDD9C5FFD67E23FFDE8A35FFE8AE74FFECBC8BFFECBC8CFFECBC
      8CFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFECBC8CFFECBC
      8CFFECBC8CFFE9B178FFDF8E3CFFD0771EFFBEAA95FFDDDDDDFFF3F3F3FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFF7C80F1FF7C81F1FF7C81F1FF7C80F1FF7A7FF1FFE3E3E3FFF0F0F0FFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFF787DF1FF7A7FF1FF7A7FF1FF7A7FF1FF797EF1FFE3E3
      E3FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      000000000000FDFDFDFFF3EAE1FFDD9F60FFD87B1CFFE2994FFFEBB986FFEDC1
      95FFEDC296FFEDC296FFEDC296FFEDC296FFEDC296FFEDC296FFEDC195FFEBBB
      89FFE39D56FFD77B1DFFC68849FFCDC4BBFFE8E8E8FFF7F7F7FFFDFDFDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFF7E83F1FF7E83F1FF7E83F1FFEBEBEBFFF2F2F2FFFAFAFAFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFF7D82F1FF7D82F1FF7D82F1FFEBEBEBFFF2F2
      F2FFFAFAFAFFFEFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFBFBFBFFECDAC7FFDA9854FFD57716FFDD8A
      34FFE39E58FFE7AB6DFFE9B27AFFE9B27AFFE7AB6DFFE4A05BFFDE8C38FFD577
      16FFCB8944FFCEBCA9FFE2E2E2FFF2F2F2FFFBFBFBFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFCFCFCFFFAFAFAFFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFCFCFCFFFAFAFAFFF9F9F9FFFAFAFAFFFCFC
      FCFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFF9F9F9FFEFEBE6FFE0C2
      A2FFD6A16BFFD0904EFFCF8439FFCE8438FFCA8A47FFC9955FFFCAAB8CFFD4CF
      CBFFE5E5E5FFF1F1F1FFF9F9F9FFFDFDFDFF0000000000000000000000000000
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
      0000000000000000000000000000FEFEFEFFFBFBFBFFF1F1F1FFDDDCDBFFC6C5
      C5FFA4A3A3FFA4A4A4FFA4A3A3FF9C9B9BFF9C9C9CFFA4A3A3FFB4B4B3FFCAC9
      C9FFDFDFDFFFEAEAEAFFF6F6F6FFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF0000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFEFEFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFF0000000000000000000000000000
      00000000000000000000FDFDFDFFF4F3F3FFDBDBDAFFB8B6B5FF928D87FF766B
      5FFF7C6043FF97734EFFA27B51FFA57A4EFF9C754EFF947453FF877460FF8880
      77FF9C9997FFB8B8B7FFC4C3C3FFC8C8C7FFCDCCCCFFCECDCDFFCFCECEFFCFCF
      CEFFD0CFCFFFCFCFCFFFEBEAEAFF00000000FFFFFFFFFFFFFFFFC0C7E5FF334B
      A8FF062295FF082494FF092697FF0B2797FF0B2797FF0D2997FF0D2895FF0C28
      99FF0B2899FF0C289BFF0C299DFF0B299DFF09269AFF08269BFF06259DFF0626
      A0FF05259FFF04239BFF03239FFF0223A1FF0222A0FF0021A0FF00209DFF001E
      97FF2F47A4FFAFB7D9FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F1FFF2F2F2FFCACACAFFCACA
      CAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFCACACAFFCCCCCCFFE5E5E5FFF8F8F8FF0000000000000000000000000000
      000000000000FBFBFBFFEAE9E9FFBDBCBBFF94887BFF906D4BFFAC7135FFC880
      35FFD28638FFD6893BFFD88B3CFFD98B3CFFD78B3CFFD58A3CFFD1873BFFC380
      3CFFA58464FFAFACA5FFBAB6B1FFBAB7B3FFBBB8B4FFBAB8B4FFBBB8B4FFBBB9
      B4FFBEBCB7FFAEABA6FFC0C0BFFF00000000FFFFFFFFC0C8EAFF0627ACFF0B2D
      B3FF0F30B5FF1333B4FF1637B8FF1938B8FF1A39B8FF1B3AB8FF1A3AB7FF1939
      B8FF1939B9FF1839B9FF1739B9FF1537B8FF1337BCFF1237BDFF0F35BEFF0D34
      C0FF0C34C1FF0A31BEFF082FBDFF062EBFFF032CBFFF022BC0FF0029BBFF0026
      B6FF0022A9FF001D94FFAFB7D9FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000727272FF787777FF737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF757575FFB7B7B7FFF7F7F7FF0000000000000000000000000000
      0000F9F9F9FFE0DFDFFFA7A199FF9A7854FFB87633FFD48431FFDC8A37FFDD8C
      3BFFDD8F3DFFDD8E40FFDD8F40FFDD8F42FFDC8F41FFDA8F43FFD98E40FFDA8C
      41FFD1A476FFD9D8D0FFDEDCD4FFDEDCD5FFDFDDD6FFDFDDD6FFDFDDD6FFDEDC
      D5FFE2E2DBFFD0CBC5FFC1C0BFFF00000000FFFFFFFF3352CCFF0B30C6FF1237
      CAFF173ACAFF1B3ECBFF2043CEFF2345CEFF2546CEFF2547CEFF2446CDFF2346
      CFFF2246CEFF2246CFFF2045CFFF1E44CFFF1C45D2FF1A43D2FF1742D3FF1440
      D4FF123FD4FF103DD3FF0D3BD3FF0938D4FF0737D5FF0333D4FF0131D2FF002D
      CAFF0028BFFF0022A9FF2F47A4FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFB7B7B7FFA4A4
      A4FFD4D4D4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000F9F9
      F9FFDCDBDAFFA79785FFB0773CFFD2812EFFDA8833FFDD8A37FFDD8D3BFFDE8F
      3EFFDE9140FFDE9042FFDD9145FFDE9248FFD19C68FFC09E7AFFC2A07DFFC19E
      7BFFB9A28BFFDAD7CEFFE0DAD1FFE0DAD2FFDFDAD2FFE0DBD3FFE1DBD3FFE0DA
      D2FFE2DED6FFCFC8C2FFC1BFBFFFFEFEFEFFFFFFFFFF072FCFFF1037D4FF183E
      D7FF1F45D8FF2449D9FF2A4DDAFF2C4FDBFF2F52DBFF2F52DCFF2E51DBFF2C51
      DCFF2C50DBFF2B52DDFF2951DDFF2750DDFF2550DFFF224FDFFF1F4DE0FF1B4B
      E1FF184AE1FF1447E1FF1044E2FF0C42E2FF093EE1FF053AE0FF0237DEFF0032
      D8FF002DCCFF0026B7FF001E96FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFBFF828282FF5C5C
      5CFFA6A6A6FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFEFEFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFF9D9C9CFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FF0000000000000000FBFBFBFFE1DF
      DFFFAB9782FFBC7A35FFD8832CFFDB8732FFDC8A36FFDD8C3AFFDE8E3CFFDF90
      41FFDF9243FFDE9346FFDE9247FFDF9751FFCEB8A2FFD1CFC8FFD7D5CEFFD5D5
      CFFFC1BCB5FFDBD7CFFFE0DBD4FFE1DAD4FFE1DAD4FFE1DBD4FFE1DAD4FFE1DA
      D4FFE1DED6FFCEC8C1FFC1BFBFFFFEFEFEFFFFFFFFFF0933D8FF143CDBFF1D44
      DDFF254ADFFF2B4FDFFF3053E0FF3356E0FF3658E1FF3658E1FF3558E1FF3457
      E1FF3358E1FF3258E2FF2F57E2FF2D56E3FF2A56E4FF2755E5FF2453E5FF2051
      E6FF1C4FE6FF184CE6FF144AE6FF0F46E7FF0B43E6FF073FE5FF043BE4FF0136
      DEFF0131D2FF0029BEFF00209EFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFF7E7E7EFF6464
      64FFA8A8A8FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F1FFF2F2F2FFCACACAFFCACA
      CAFFCACACAFFCACACAFFCACACAFFC9C9C9FF888787FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FF00000000FDFDFDFFE9E8E8FFB7A4
      91FFC27B34FFD8822AFFDB862FFFDC8934FFDD8C38FFDE8E3CFFDE903FFFDF91
      43FFE09346FFE2A15FFFE6AD76FFE5B07DFFD3C1B0FFD9D4CCFFE0DCD1FFDEDB
      D2FFC6BFB8FFDAD6CDFFDFDAD3FFDFD9D3FFE0DAD3FFE0DAD3FFDFD9D3FFDFD9
      D3FFE1DED5FFCEC7C1FFC0BEBEFFFEFEFEFFFFFFFFFF0B35DCFF1840DEFF2349
      E0FF2B50E1FF3154E1FF3659E2FF3A5CE3FF3D5EE4FF3D5EE4FF3B5EE4FF4667
      E6FF839AEEFFC1CCF7FFE6EBFCFFFFFFFFFFFFFFFFFFE5EAFCFFBCCBF8FF7595
      F1FF2C5EEAFF1B51E9FF174EE9FF124AE9FF0E48E9FF0A43E8FF063FE6FF0339
      E1FF0233D4FF012BC0FF01219FFFFFFFFFFF00000000FEFEFEFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFCFCFCFF7B7B7BFF6565
      65FFA4A4A4FFFDFDFDFFFEFEFEFF000000000000000000000000000000000000
      000000000000000000000000000000000000727272FF787777FF737272FF7372
      72FF737272FF737272FF737272FF717070FF646363FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FFFEFEFEFFF5F4F3FFC6BBAFFFBF81
      41FFD88128FFDB852DFFDC8831FFDD8A36FFDD8C3AFFDE8F3FFFDE9141FFDF94
      46FFE09448FFEEC59DFFF9F0E7FFF8F1EAFFD8D1CDFFD9D6CEFFE0DCD3FFDFDD
      D3FFC6C1BAFFDBD9D3FFE0DED7FFE1DED7FFE1DED7FFE1DED8FFE1DED7FFE2DE
      D7FFE2E0D9FFCEC9C4FFBFBDBDFFFEFEFEFFFFFFFFFF0D37DDFF1C43DFFF294E
      E0FF3155E1FF3759E2FF3C5DE3FF4060E4FF4263E5FF4263E5FF889CEFFFF3F5
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F4FEFF809EF3FF1951EAFF144EEAFF114AEAFF0C45E9FF0841E7FF053B
      E1FF0334D5FF022BC1FF0122A0FFFFFFFFFF00000000F3F3F3FFF4F4F4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFF898989FF6666
      66FF919191FFFEFEFEFFFDFDFDFFFEFEFEFF000000000000000000000000FEFE
      FEFF000000000000000000000000000000009F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FFFDFCFCFFDEDBD7FFBC8E5EFFD57E
      26FFDA832BFFDB862EFFDC8932FFDD8B37FFDD8D3BFFDE8F3FFFDF9142FFDF93
      46FFE09448FFEFCAA5FFFCFAF7FFFAF9F8FFD8D4D2FFD9D5CDFFE0DCD4FFDFDC
      D3FFC6C2BAFFDAD9D2FFDFDDD7FFDFDCD7FFDFDDD6FFE0DED9FFDDDACFFFDAD6
      CCFFDCD9CFFFC6C1B8FFBDBDBBFFFDFDFDFFFFFFFFFF1039DDFF2046E0FF2E52
      E1FF3759E3FF3D5EE4FF4262E4FF4665E5FF4767E5FFBAC6F6FFFFFFFFFFFFFF
      FFFFE7ECFCFF93A8F1FF6181EBFF3A63E7FF3763E7FF597EECFF89A4F3FFE4EB
      FCFFFFFFFFFFFFFFFFFFAABFF7FF1750EAFF134CEAFF0E48EAFF0B43E7FF073D
      E2FF0637D6FF042EC2FF0122A0FFFFFFFFFFF6F6F6FF919191FF909090FFF5F5
      F5FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFF909090FF6565
      65FF686868FFA7A7A7FFEAEAEAFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFF7F7
      F7FFFDFDFDFFFEFEFEFF00000000000000009F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FFF3F3F3FFC5B09BFFCF7E2DFFDA82
      28FFDB842BFFDC862FFFDC8932FFDD8B38FFDD8D3BFFDE9040FFDE9142FFDF94
      47FFE09447FFEECAA5FFFCFAF8FFFAF9F9FFD8D4D2FFD8D6CEFFDFDCD5FFDEDC
      D5FFC6C2BCFFDBDBD7FFE1E1DBFFE2E1DBFFE0E0DAFFE2DFD7FFDBC174FFE5C1
      57FFDEBB55FFB0A174FFC6C5C3FFF7F7F7FFFFFFFFFF123BDDFF254AE0FF3356
      E2FF3C5DE3FF4262E4FF4666E5FF4A69E5FFBBC7F5FFFFFFFFFFFFFFFFFFA3B4
      F2FF4567E6FF4267E7FF3F66E7FF3C65E7FF3863E7FF3461E8FF2F5FE9FF2B5D
      EAFF84A2F3FFFFFFFFFFFFFFFFFFA8BDF7FF134CEAFF1049E9FF0D45E7FF0A3F
      E2FF0A39D6FF0730C2FF0324A0FFFFFFFFFFD9D9D9FF5C5C5CFF6E6E6EFFADAD
      ADFFFCFCFCFFFEFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFA6A6A6FF6A6A
      6AFF6D6D6DFF707070FF707070FFB6B6B6FFF3F3F3FFF7F7F7FFBABABAFF6C6C
      6CFFBABABAFFFAFAFAFFFEFEFEFF000000009F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FFDFDBD8FFC6915AFFD87E23FFDA82
      28FFDB842BFFDC862EFFDC8832FFDD8A37FFDD8C3AFFDE8E3DFFDE9040FFDF91
      43FFDF9244FFEEC9A3FFFDFBF8FFFAFAFAFFD8D5D3FFD9D8D2FFE0DFD8FFDFDF
      D8FFC6C4BFFFDADAD8FFDFE0DAFFDFDFDAFFDFE0D9FFDCDBD3FFE3C158FFF1C2
      34FFD29A36FF8D785AFFB6B5B4FFE9E9E9FFFFFFFFFF153EDEFF294EE0FF385A
      E3FF4160E4FF4665E5FF4A68E5FF90A2EFFFFFFFFFFFFFFFFFFF8FA2EFFF496A
      E6FF4769E7FF4468E7FF4167E7FF3D66E7FF3964E7FF3562E8FF305FE9FF2B5C
      E9FF2659E9FF7496F1FFFFFFFFFFFFFFFFFF7B9AF3FF134BE9FF1046E7FF0E42
      E1FF0D3CD6FF0A32C2FF0425A1FFFFFFFFFFFCFCFCFF9A9A9AFF646464FF6E6E
      6EFFCDCDCDFFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9FF5F5F
      5FFF646464FF707070FF767676FF7B7B7BFF868686FF7F7F7FFF5F5F5FFF6F6F
      6FFF6A6A6AFFAFAFAFFFF9F9F9FFFEFEFEFF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFEFE4DBFF737272FFB4B4B4FFF7F7F7FFCEBBA8FFCC8032FFD97F23FFDA81
      26FFDA832AFFDB852EFFDC8730FFDD8A36FFDD8B38FFDE8D3BFFDE8E3CFFDF90
      3FFFDF9040FFEEC8A1FFFDFBF8FFFBFAFAFFD8D5D4FFD8D8D5FFDFDFD9FFDEDF
      DAFFC5C4C0FFDADCDAFFDFE1DEFFE0E2DEFFDFE1DDFFDEDDD6FFDEBE76FFD99F
      46FFD4842EFF9C6B36FF9A9793FFDCDBDBFFFFFFFFFF1840DEFF2E52E1FF3D5D
      E4FF4564E5FF4A68E5FF5874E7FFF4F6FDFFFFFFFFFFA7B6F2FF4D6DE6FF4B6B
      E6FF496AE6FF4569E7FF4268E7FFFFFFFFFFFFFFFFFF3562E7FF315FE9FF2C5D
      E9FF2759E9FF2356E9FF819EF3FFFFFFFFFFF1F4FEFF2457E9FF1449E6FF1245
      E1FF103ED5FF0C34C3FF0626A1FFFFFFFFFFFEFEFEFFF1F1F1FF707070FF6C6C
      6CFF767676FFEAEAEAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1FF7676
      76FFCACACAFFECECECFFA5A5A5FF606060FF6E6E6EFF747474FF5E5E5EFF6F6F
      6FFF6A6A6AFF707070FFA5A5A5FFF4F4F4FF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EEE5FFFFF5EBFFFFF5
      EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5
      EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5
      EBFFEFE5DCFF737272FFB4B4B4FFF7F7F7FFC6A581FFD37A1FFFD97E21FFDA7F
      24FFDB8228FFDB842BFFDC852DFFDC8731FFDC8934FFDD8A35FFDD8B37FFDE8C
      3AFFDE8C3BFFEDC69EFFFDFAF8FFFAFAFAFFD8D5D4FFD9D9D6FFE0E1DBFFDEDF
      DCFFC5C4C0FFCAC9C7FFD0C8AEFFD5C9A5FFD2C0A4FFD5BA9DFFD39450FFD783
      2DFFD87E21FFBC7326FF877F77FFCBCBCAFFFFFFFFFF1C42DFFF3255E2FF4261
      E4FF4967E5FF4E6BE6FF92A4EFFFFFFFFFFFE9EDFCFF516EE6FF4E6EE7FF4C6C
      E6FF4A6AE6FF4669E7FF4367E7FFFFFFFFFFFFFFFFFF3661E7FF315FE8FF2C5C
      E8FF2859E9FF2457E9FF2054E9FFE3E9FCFFFFFFFFFF6E8FF0FF174BE6FF1647
      E1FF1441D6FF1037C3FF0928A1FFFFFFFFFF00000000FDFDFDFFD7D7D7FF5858
      58FF727272FF909090FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFCFC
      FCFFFEFEFEFFFEFEFEFFFDFDFDFFE2E2E2FF838383FF626262FFB3B3B3FFF1F1
      F1FFBBBBBBFF656565FF5E5E5EFFBFBFBFFF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EEE6FFFFF5ECFFFFF5
      ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5
      ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5
      ECFFEFE5DDFF737272FFB4B4B4FFF7F7F7FFC0884EFFD87B1DFFD97D1FFFDA7E
      22FFDA8125FFDB8228FFDB842AFFDC852DFFDB862FFFDC8731FFDC8831FFDD8A
      34FFDD8935FFEDC59BFFFDFBF8FFFBFAFAFFD8D7D5FFDADBD9FFE1E2DFFFE2E2
      DFFFDBDCD8FFD4D3CEFFD5BD70FFD9AE47FFCE8A3EFFD88532FFD98229FFD87F
      22FFD77E1FFFCC7820FF86725BFFB6B6B5FFFFFFFFFF1F46DFFF3759E3FF4665
      E5FF4D6BE6FF526EE6FFC9D2F7FFFFFFFFFF9EAEF1FF526FE7FF506EE6FF4D6C
      E6FF4A6AE6FF4669E7FF4367E7FFFFFFFFFFFFFFFFFF3560E6FF315DE7FF2C5B
      E8FF2757E8FF2355E8FF2053E8FF7F9CF1FFFFFFFFFFB7C7F7FF1A4CE5FF1949
      E0FF1943D5FF1339C2FF0B29A0FFFFFFFFFF0000000000000000FCFCFCFFABAB
      ABFF595959FF6C6C6CFFB4B4B4FFFCFCFCFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF0000000000000000FEFEFEFFFEFEFEFFFBFBFBFFF5F5F5FFFEFEFEFFFDFD
      FDFFF3F3F3FF727272FF585858FFB5B5B5FF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EFE8FFFFF6EEFFFFF6
      EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
      EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
      EEFFEFE6DFFF737272FFB4B4B4FFF7F7F7FFC27629FFD87A1AFFD97B1DFFDA7C
      1EFFDA7F22FFDA8024FFDA8126FFDB8328FFDB842BFFDB842CFFDB852DFFDC86
      2FFFDC862FFFEDC399FFFDFAF8FFFBFAFAFFD6D5D5FFD3D3D1FFDCDCD8FFDBDB
      D8FFDBDBD7FFD9D7D1FFD5AF79FFD89040FFD9812AFFD98024FFD87F21FFD77E
      1EFFD77C1DFFD0771CFF8F6D48FFA6A6A6FFFFFFFFFF2248DFFF3D5DE4FF4B69
      E5FF526EE6FF5470E7FFEAEDFCFFFFFFFFFF748AECFF536FE7FF516DE6FF4D6B
      E6FF4969E6FF4668E6FF4266E6FFFFFFFFFFFFFFFFFF355EE6FF305CE6FF2B59
      E7FF2756E7FF2353E6FF2051E7FF476FEBFFFFFFFFFFF1F4FDFF1D4DE4FF1D4B
      E0FF1C45D5FF163BC1FF0D2BA0FFFFFFFFFF0000000000000000FEFEFEFFF6F6
      F6FF7E7E7EFF656565FF696969FFD6D6D6FFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FDFFDEDEDEFF737373FF636363FFD0D0D0FF9F9F9FFFF8EDE4FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFF8EFE9FFFFF6EFFFFFF6
      EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6
      EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6
      EFFFEFE6E0FF737272FFB4B4B4FFF7F7F7FFC7721DFFD97919FFD97C1DFFDA7E
      22FFDA8024FFDA8227FFDA8329FFDB842BFFDB852DFFDB852EFFDB862EFFDC87
      31FFDC8730FFEDC39AFFFDFAF8FFFCFBFBFFE7E7E7FFD6CEC6FFD4C0ACFFD4BF
      AAFFD5BDA9FFD2B99EFFD68D44FFD9852EFFD88229FFD88228FFD87F24FFD87F
      21FFD77C1CFFD17619FF976C3FFF9E9E9DFFFFFFFFFF264BE0FF4161E4FF4F6C
      E6FF5571E7FF5672E8FFFFFFFFFFFFFFFFFF5670E7FF536FE7FF506CE6FF4D6A
      E6FF4968E5FF4566E6FF4164E6FFFFFFFFFFFFFFFFFF345CE5FF305AE5FF2B57
      E6FF2754E6FF2452E6FF2050E5FF1E4EE5FFFFFFFFFFFFFFFFFF204EE4FF214D
      DFFF2048D4FF193CC1FF0E2CA0FFFFFFFFFF000000000000000000000000FEFE
      FEFFE6E6E6FF5E5E5EFF707070FF797979FFEDEDEDFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFDFDFDFFF4F4
      F4FF959595FF757575FF969696FFFAFAFAFF9F9F9FFFF8EEE5FFFFF5EBFFFFF5
      EBFFFFF5EBFFFFF5EBFFFFF5EBFFFEF4EAFF9F9B96FFF8F0EBFFFFF7F1FFFFF7
      F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7
      F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7
      F1FFEFE7E2FF737272FFB4B4B4FFF7F7F7FFCB7217FFD97B1DFFDA8127FFDA83
      2AFFDB842CFFDB852DFFDB862EFFDC872FFFDB8730FFDC8731FFDC8732FFDD88
      33FFDD8833FFEDC49AFFFDFBF8FFFDFCFBFFFCFCFBFFEED0B3FFDC9146FFDB8C
      3EFFDB8C3DFFDA8B3BFFDB8831FFDA8630FFD9862EFFD9852DFFD9842CFFD983
      2BFFD98025FFD3771AFF9E6F3CFF9E9E9DFFFFFFFFFF284DE0FF4464E5FF526E
      E7FF5772E8FF5973E8FFFFFFFFFFFFFFFFFF5771E7FF546FE7FF516DE6FF4D6A
      E6FF4967E5FF4565E5FF4163E5FFFFFFFFFFFFFFFFFF345BE4FF2F58E4FF2B55
      E5FF2753E5FF2450E5FF214FE4FF1E4DE5FFFFFFFFFFFFFFFFFF224EE3FF244E
      DFFF2248D3FF1B3DC0FF102D9FFFFFFFFFFF0000000000000000000000000000
      0000FDFDFDFFC1C1C1FF515151FF6D6D6DFF969696FFF9F9F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFCFCFCFFDBDBDBFF8C8C
      8CFF7D7D7DFF787878FFE1E1E1FFFEFEFEFF9F9F9FFFF8EEE6FFFFF5ECFFFFF5
      ECFFFFF5ECFFFFF5ECFFFFF5ECFFFEF4EBFF9F9B97FFF8F1ECFFFFF8F2FFFFF8
      F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8
      F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8F2FFFFF8
      F2FFEFE8E3FF737272FFB4B4B4FFF7F7F7FFC97218FFD97E20FFDB862EFFDB86
      30FFDC8731FFDC8832FFDC8833FFDD8934FFDC8934FFDD8934FFDC8934FFDD8A
      36FFDD8A37FFECC59BFFFCFAF8FFFDFCFBFFFDFDFCFFF0D1B2FFDC8E3EFFDB8A
      36FFDB8A35FFDA8934FFDA8934FFDA8834FFDA8834FFDA8733FFDA8731FFD986
      30FFD9842CFFD3781BFF9F7141FFA7A6A6FFFFFFFFFF2C50E1FF4967E5FF5772
      E8FF5C76E8FF5D77E8FFEBEEFCFFFFFFFFFF778BEBFF546FE7FF516DE6FF4D6A
      E5FF4967E5FF4665E5FF4162E5FFFFFFFFFFFFFFFFFF345AE4FF3057E4FF2B54
      E4FF2851E4FF2550E4FF224EE4FF3B62E6FFFFFFFFFFF1F4FDFF244EE3FF264F
      DEFF254AD3FF1D3FC0FF112EA0FFFFFFFFFF0000000000000000000000000000
      0000FEFEFEFFFAFAFAFF909090FF595959FF686868FFB9B9B9FFFDFDFDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFDFDFDFFF1F1F1FFADADADFF797979FF7979
      79FF808080FFD1D1D1FFFDFDFDFF000000009F9F9FFFF8EFE8FFFFF6EEFFFFF6
      EEFFFFF6EEFFFFF6EEFFFFF6EEFFFEF5EDFF9F9B98FFF8F2EDFFFFF9F3FFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9
      F3FFEFE9E3FF737272FFB4B4B4FFFDFDFDFFC7731DFFD97D20FFDC8934FFDC8A
      37FFDD8A38FFDD8B39FFDD8C39FFDD8C3AFFDD8C3AFFDE8D3AFFDD8C3AFFDE8D
      3CFFDE8D3CFFEDC69DFFFCFAF7FFFDFCFBFFFDFDFBFFF0D1B3FFDD9043FFDC8D
      3CFFDC8D3BFFDC8C3AFFDC8C3AFFDB8C39FFDB8C3AFFDB8B39FFDB8A38FFDA8A
      38FFDA8630FFD0761AFF936A41FFA8A7A7FFFFFFFFFF2F52E1FF4D6BE6FF5D77
      E8FF607AE8FF607AE8FFCDD5F8FFFFFFFFFFA1AFF2FF556FE7FF516CE6FF4D69
      E5FF4966E5FF4564E4FF4161E4FFFFFFFFFFFFFFFFFF3458E3FF3056E3FF2B53
      E3FF2851E3FF264FE3FF234DE3FF748FEDFFFFFFFFFFC8D2F8FF274FE2FF2950
      DDFF274BD3FF1F40BFFF132F9FFFFFFFFFFF0000000000000000000000000000
      000000000000FEFEFEFFEFEFEFFF666666FF6B6B6BFF696969FFDCDCDCFFFDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFBFBFBFFD1D1D1FF7B7B7BFF727272FF777777FF9F9F
      9FFFEFEFEFFFFDFDFDFF00000000000000009F9F9FFFF8EFE9FFFFF6EFFFFFF6
      EFFFFFF6EFFFFFF6EFFFFFF6EFFFFEF5EEFF9F9B98FFF8F2EDFFFFF9F4FFFFF9
      F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9
      F4FFEAE3DDFF978A6BFF948867FF948867FF948867FF948867FF948867FF9488
      67FF887D5FFF777676FFEFEFEFFFFEFEFEFFC77D30FFD87B1BFFDD8C3AFFDD8F
      3EFFDE8F3EFFDE903FFFDE903FFFDE9040FFDE9040FFDF9040FFDE9040FFDF91
      42FFDF9142FFEDC49AFFFBF3EBFFFBF5EFFFFBF6EFFFF1D0AEFFDF9448FFDF91
      42FFDF9141FFDF9040FFDE9040FFDE903FFFDE9040FFDE8F3FFFDD8F3EFFDD8F
      3EFFDB8631FFCC7216FF795939FFA7A7A6FFFFFFFFFF3356E2FF516EE7FF617B
      E9FF647EE9FF637DE8FF9CACF1FFFFFFFFFFEAEDFCFF566FE7FF526CE6FF4D69
      E5FF4966E4FF4563E4FF4160E4FFFFFFFFFFFFFFFFFF3457E2FF3054E2FF2C52
      E2FF2950E3FF274EE2FF244DE2FFE3E8FBFFFFFFFFFF849BEFFF2950E1FF2B50
      DDFF294CD2FF2141BFFF142F9FFFFFFFFFFF0000000000000000000000000000
      00000000000000000000FDFDFDFFD5D5D5FF4F4F4FFF707070FF797979FFF2F2
      F2FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFECECECFF9B9B9BFF6A6A6AFF747474FF7A7A7AFFCBCBCBFFFBFB
      FBFFFEFEFEFF0000000000000000000000009F9F9FFFF8F0EBFFFFF7F1FFFFF7
      F1FFFFF7F1FFFFF7F1FFFFF7F1FFFEF6F0FF9F9B99FFF8F3EFFFFFFAF6FFFFFA
      F6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFA
      F6FFCAC3B6FFFAC936FFFFCC33FFFFCC33FFFFCC33FFFFCC33FFFFCC33FFF7C5
      31FF867747FFE0E0E0FFFEFEFEFF00000000CD9A64FFD67614FFDD8C39FFDF93
      46FFDF9346FFE09347FFDF9447FFE09447FFDF9447FFE09448FFDF9447FFE094
      48FFE09448FFE3A15DFFE6AD72FFE6AD73FFE6AD73FFE3A362FFE09549FFE094
      48FFDF9448FFE09448FFDF9447FFE09447FFDF9447FFDF9347FFDF9346FFDF92
      44FFDA842DFFC16C15FF786A5EFFC7C6C6FFFFFFFFFF3255E2FF5671E8FF6780
      E9FF6983EAFF6881E9FF6E86EAFFF5F7FEFFFFFFFFFFA1AEF2FF546EE7FF506B
      E6FF4B67E5FF4764E4FF4261E4FFFFFFFFFFFFFFFFFF3658E2FF3256E2FF2E53
      E2FF2C51E2FF2A50E2FF859BEFFFFFFFFFFFF1F4FDFF3659E4FF2B51E1FF2D52
      DDFF2A4DD3FF2242BFFF14309FFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000FCFCFCFFA7A7A7FF4F4F4FFF6B6B6BFF9C9C
      9CFFFAFAFAFFFEFEFEFF0000000000000000000000000000000000000000FCFC
      FCFFC6C6C6FF6C6C6CFF6A6A6AFF6F6F6FFF979797FFE9E9E9FFFDFDFDFFFEFE
      FEFF000000000000000000000000000000009F9F9FFFF8F1ECFFFFF8F2FFFFF8
      F2FFFFF8F2FFFFF8F2FFFFF8F2FFFEF7F1FF9F9C99FFF8F3F0FFFFFAF7FFFFFA
      F7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFA
      F7FFCAC3B7FFFAC936FFFFCC33FFFFCC33FFFFCC33FFFFCC33FFF5C430FF685B
      3AFFE1E1E1FFFEFEFEFF0000000000000000D7B390FFD17516FFDC862DFFE097
      4CFFE0984EFFE1984FFFE1984FFFE1994FFFE1984FFFE19950FFE1984FFFE199
      50FFE1984FFFE19A51FFE29A53FFE39E59FFE29B54FFE19A52FFE1994FFFE199
      50FFE1984FFFE19950FFE1984FFFE1994FFFE1984FFFE0984FFFE0984EFFDF95
      47FFD87E21FFA6631DFF948E88FFDFDEDDFFFFFFFFFF3659E3FF5974E8FF6B84
      EAFF6F88EBFF6D86EAFF6982EAFFA8B6F3FFFFFFFFFFFFFFFFFF96A5F0FF526C
      E6FF4D69E5FF4965E4FF4563E4FF4160E4FF3C5CE4FF385AE3FF3557E2FF3154
      E2FF2F53E2FF5371E7FFFFFFFFFFFFFFFFFF879DEFFF2B50E2FF2D52E1FF2E52
      DDFF2B4DD1FF2342BFFF14309FFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000FEFEFEFFF6F6F6FF757575FF5F5F5FFF6262
      62FFC3C3C3FFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFDCDC
      DCFF4A4A4AFF757575FF747474FFBFBFBFFFF9F9F9FFFEFEFEFF000000000000
      0000000000000000000000000000000000009F9F9FFFF8F2EDFFFFF9F3FFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFFEF8F2FF9F9C9AFFF8F4F2FFFFFBF9FFFFFB
      F9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFB
      F9FFCAC4B8FFFAC937FFFFCC34FFFFCC34FFFFCC34FFEFBF30FF807451FFE3E3
      E3FFFEFEFEFF000000000000000000000000EAE0D5FFCF802EFFD97C1EFFE096
      4BFFE29D56FFE29D57FFE29D57FFE39E57FFE29D58FFE39E57FFE29D58FFE39E
      58FFE39E58FFE4A665FFEDC49BFFF1D5B9FFEECBA7FFE5AB6FFFE39E58FFE39E
      58FFE29E58FFE39E57FFE29D58FFE39E57FFE29D57FFE29D57FFE29D56FFDD8F
      3FFFCF7316FF8E6842FFBAB8B6FFF1F1F1FFFFFFFFFF3759E3FF5D78E8FF7089
      EBFF748CECFF718AEBFF6C85EBFF6780EAFFC4CDF6FFFFFFFFFFFFFFFFFF9EAD
      F1FF4F6AE6FF4B67E5FF4764E4FF4361E4FF3E5EE4FF3B5CE3FF3759E3FF3456
      E2FF8B9FEFFFFFFFFFFFFFFFFFFFB0BDF4FF2E52E2FF2D51E2FF2F52E1FF2E51
      DEFF2D4ED3FF2443BFFF15319EFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFE2E2E2FF515151FF6E6E
      6EFF656565FFC2C2C2FFF6F6F6FFFDFDFDFFFDFDFDFFF1F1F1FFFBFBFBFFF8F8
      F8FF808080FF797979FF9A9A9AFFFBFBFBFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F2EDFFFFF9F4FFFFF9
      F4FFFFF9F4FFFFF9F4FFFFF9F4FFFEF8F3FF9F9C9AFFF8F5F2FFFFFCF9FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
      F9FFCAC5BAFFFAD051FFFFD34FFFFFD34FFFEDC347FF615C4AFFE8E8E8FFFEFE
      FEFF00000000000000000000000000000000FBFBFBFFD7A471FFD57716FFDE8D
      3AFFE3A05CFFE3A25FFFE3A260FFE4A360FFE4A361FFE4A360FFE4A361FFE4A3
      61FFE4A361FFF0CDA9FFFCF9F5FFFDFCFBFFFDFCFAFFF4DBC2FFE4A767FFE4A3
      61FFE4A361FFE4A360FFE4A361FFE4A260FFE3A260FFE3A25FFFE29D57FFD984
      2DFFB66A1EFF97887AFFDCDCDBFFFBFBFBFFFFFFFFFF3B5BE3FF617BE9FF768E
      ECFF7A92ECFF778FECFF708AEBFF6A83EAFF647DE9FFC3CDF6FFFFFFFFFFFFFF
      FFFFE9EDFCFF9CABF1FF6B82EAFF4663E4FF4260E4FF5672E6FF8498EDFFE6EA
      FBFFFFFFFFFFFFFFFFFFB2BFF4FF3054E1FF3054E1FF3053E2FF3053E0FF3053
      DDFF2D4ED2FF2443BEFF14309EFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFBEBEBEFF4747
      47FF717171FF585858FF757575FFB2B2B2FF898989FF535353FFDCDCDCFFFDFD
      FDFFDADADAFF717171FF818181FFDADADAFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F3EFFFFFFAF6FFFFFA
      F6FFFFFAF6FFFFFAF6FFFFFAF6FFFEF9F5FF9F9D9BFFF8F6F4FFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
      FBFFCAC6BFFFFADB7FFFFFDF7EFFE6C76DFF807967FFEBEBEBFFFEFEFEFF0000
      000000000000000000000000000000000000FEFEFEFFF0E7DEFFCE7923FFD97E
      20FFE29C55FFE5A767FFE5A769FFE5A869FFE5A869FFE6A869FFE6A869FFE6A8
      6AFFE6AB6FFFF6E1CBFFFDFCFBFFFDFDFBFFFDFDFCFFF8EDE1FFE6AE75FFE6A8
      69FFE6A869FFE6A869FFE5A869FFE5A869FFE5A769FFE4A565FFDE9347FFCF77
      1DFF99744CFFC1C0BEFFF3F3F3FFFEFEFEFFFFFFFFFF3E5EE3FF6881EAFF7F96
      EDFF869BEEFF8398EDFF7A91ECFF718AEBFF6982EAFF657EE9FFA6B4F2FFF5F6
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F5FDFF91A4F0FF3A5BE3FF385AE3FF3759E2FF3457E2FF3356E1FF3053
      DDFF2C4DD2FF2140BDFF122E9DFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFF9696
      96FF464646FF575757FF6A6A6AFF5D5D5DFF636363FF5D5D5DFFACACACFFFDFD
      FDFFFBFBFBFFA6A6A6FF7C7C7CFF999999FFF8F8F8FF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F3F0FFFFFAF7FFFFFA
      F7FFFFFAF7FFFFFAF7FFFFFAF7FFFEF9F6FF9F9D9BFFF8F6F5FFFFFDFCFFFFFD
      FCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFD
      FCFFCAC7C2FFFAE6ABFFDFCC93FF6A6863FFEFEFEFFFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000FCFBFBFFDFBE9CFFD178
      1CFFDC8933FFE4A361FFE6AB70FFE6AD72FFE6AD72FFE7AE73FFE7AD72FFE7AE
      73FFE7AE74FFF0CFADFFFCF7F1FFFDFBF8FFFCFAF7FFF4DBC2FFE8B078FFE7AE
      73FFE7AD72FFE7AD72FFE6AD72FFE6AD71FFE6AB6EFFE19D58FFD78028FFAD6E
      2FFFAEA8A0FFE9E9E8FFFDFDFDFF00000000FFFFFFFF4363E5FF7189EBFF8A9E
      EFFF92A5F0FF8CA1EFFF8398EDFF7990ECFF7089EBFF6C85EAFF6982EAFF6E86
      EAFF9CACF1FFCDD5F8FFF5F6FDFFFFFFFFFFFFFFFFFFF4F6FDFFD3DAF9FF9BAB
      F1FF5773E7FF4967E5FF4564E4FF4162E4FF3F60E4FF3B5CE3FF3659E1FF3154
      DDFF2A4BD2FF1E3EBDFF0F2B9BFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFDDDDDDFF8E8E8EFF585858FF5D5D5DFF5A5A5AFF707070FF787878FFF9F9
      F9FFFCFCFCFFF0F0F0FF7E7E7EFF848484FFCECECEFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F4F2FFFFFBF9FFFFFB
      F9FFFFFBF9FFFFFBF9FFFFFBF9FFFEFAF8FFA19E9DFFF8F7F7FFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFCAC9C7FFD3C9ADFF8A8982FFF2F2F2FFFEFEFEFF00000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF9F7F4FFD9A3
      6CFFD37617FFDD8D3AFFE5A86AFFE8B079FFE8B179FFE8B27AFFE8B27AFFE9B2
      7AFFE8B27AFFE9B682FFEFCAA4FFF3D7BCFFF0CEACFFE9B887FFE8B27BFFE9B2
      7AFFE8B27AFFE8B17AFFE8B179FFE8B077FFE2A160FFD98530FFB97127FFAC9A
      88FFDEDDDCFFFBFBFBFF0000000000000000FFFFFFFF4867E5FF7990ECFF94A6
      F0FF9BACF1FF96A8F0FF8B9FEFFF8095EDFF778FECFF728BEBFF6E87EBFF6B84
      EAFF6881E9FF657EE8FF637DE8FF617BE8FF607AE9FF5E78E8FF5C77E8FF5A75
      E8FF5773E7FF5370E6FF4F6CE6FF4B6AE5FF4766E5FF4061E4FF395BE2FF3154
      DDFF284AD1FF1B3BBCFF0D299BFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFEFEFEFFFDFDFDFFEDEDEDFFE0E0E0FFC7C7C7FF707070FF616161FFE2E2
      E2FFFBFBFBFFF8F8F8FF9A9A9AFF7B7B7BFFADADADFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F5F2FFFFFCF9FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFA19F9DFFA19F9DFF9F9E9CFF9F9E
      9CFF898682FF9D8B55FF9F8C54FF9F8C54FF978551FF5C5952FF959595FF9E9E
      9EFF9F9F9FFFAEAEADFFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFF8F4
      F1FFD49557FFD37617FFDE8D3AFFE5A86AFFE9B47EFFE9B682FFE9B683FFEAB7
      84FFEAB784FFEAB885FFEAB784FFEAB886FFEAB784FFEAB885FFEAB784FFEAB6
      83FFE9B683FFE9B682FFE8B27BFFE2A15FFFD9852FFFC07528FFAF9A84FFD9D8
      D7FFF9F9F9FFFEFEFEFF0000000000000000FFFFFFFF4967E5FF7B92EDFF98AA
      F1FFA0B1F2FF9AACF1FF8FA2F0FF8398EDFF7991ECFF748DECFF718AEBFF6E86
      EAFF6B84EAFF6982E9FF6780E9FF667FE9FF657FE9FF637DE9FF627CE9FF5F79
      E9FF5C77E8FF5774E7FF5370E7FF4F6DE6FF4A68E5FF4363E5FF395BE2FF3153
      DDFF2547D0FF1839BAFF0C289AFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFFDFDFDFFF5F5F5FF838383FF656565FFA1A1
      A1FFC3C3C3FF707070FF616161FF8A8A8AFFDDDDDDFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F6F4FFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFEFCFAFFFEFCFAFFFEFC
      FAFFC9C5BEFFF9DA7EFFFEDE7DFFE4C56CFF7F7865FFEAEAEAFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFD
      FDFFF6F2EFFFD8A36DFFD2791DFFDA8228FFE29B52FFE7AF76FFEABA88FFEBBB
      8BFFEBBB8BFFECBC8CFFEBBB8CFFECBC8CFFEBBB8CFFEBBC8BFFEBBB8BFFEBBB
      8BFFE9B886FFE6AA6DFFDF9142FFD57B21FFBE7B36FFBAA692FFDEDCDAFFF8F8
      F7FFFEFEFEFF000000000000000000000000FFFFFFFF5D78E8FF7088EBFF8FA2
      EFFF97A9F1FF92A5F0FF879CEEFF7B92ECFF748CEBFF718AEBFF6D86EAFF6781
      E9FF667FE9FF647EE9FF627CE9FF607AE8FF607AE8FF5E78E8FF5A76E8FF5874
      E7FF5673E7FF5370E6FF4E6DE6FF4A69E5FF4464E4FF3D5EE4FF3456E1FF2C50
      DBFF2144CFFF1636B9FF374FACFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFEFEFEFFABABABFF747474FF5454
      54FF595959FF767676FF808080FFAEAEAEFFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000009F9F9FFFF8F6F5FFFFFDFCFFFFFD
      FCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFD
      FCFFCAC7C2FFFAE6ABFFDFCC93FF6A6863FFEFEFEFFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF9F6F3FFDFBE9BFFCE7923FFD6791AFFDA842AFFE19950FFE7AF
      75FFEABA88FFEBBC8DFFEBBD8FFFECBF90FFEBBD8FFFEBBC8CFFEAB886FFE6AA
      6EFFDF9446FFD77F24FFCC7820FFBD8C5AFFCABDB1FFE9E8E7FFFBFBF9FFFEFE
      FEFF00000000000000000000000000000000FFFFFFFFC9D2F7FF4766E5FF6D86
      EAFF7990ECFF758DECFF6B84EAFF627DE9FF5E78E8FF5C76E8FF5974E8FF526F
      E7FF526EE7FF526EE7FF506DE7FF4E6BE6FF4E6BE6FF4C6AE6FF4967E5FF4664
      E5FF4362E4FF4061E4FF3E5FE4FF3C5EE4FF3658E2FF3054E1FF284CDFFF2246
      D9FF1A3DCBFF1030B2FFB2BBE0FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E3FF8D8D8DFF7A7A
      7AFF787878FF909090FF8A8A8AFFDCDCDCFF0000000000000000000000000000
      000000000000000000000000000000000000A1A0A0FFF8F7F7FFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFCAC9C7FFD3C9ADFF8A8982FFF2F2F2FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFCFBFBFFF0E7DEFFD7A673FFD08130FFD17719FFD77B
      1CFFDC8730FFDF9344FFE19A50FFE29D56FFE1984EFFDF9040FFDA832AFFD378
      1BFFCB7B29FFC68F56FFC9B59FFFDFDBD8FFF4F3F2FFFDFDFDFFFEFEFEFF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFC9D2F7FF607B
      E8FF4463E4FF4261E4FF3D5EE4FF3859E3FF3456E2FF3557E2FF3355E2FF3053
      E2FF3154E1FF3254E2FF3254E2FF3154E2FF2C50E1FF2B4EE1FF2A4EE1FF284D
      E1FF2349E0FF2349DFFF2449E0FF2449E0FF1E45DFFF1B42DFFF173EDCFF133A
      D5FF3C59D0FFB2BCE6FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF9F9F9FFDDDD
      DDFFBABABAFFEFEFEFFFF0F0F0FFFBFBFBFF0000000000000000000000000000
      000000000000000000000000000000000000A1A0A0FFA1A0A0FF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFFAEAEADFFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFEFDFDFFFBFBFBFFEBE0D6FFD7B592FFC893
      5CFFC37626FFC6731CFFC97017FFCA6F13FFC57018FFC17325FFBF8549FFC6A2
      7DFFD1BDA9FFDFDCD9FFF2F1F1FFFCFBFBFFFEFEFDFFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF9F9F9FFF0F0F0FFE9E9E9FFE9E9E9FFF0F0F0FFF9F9F9FFFEFE
      FEFF00000000000000000000000000000000FEFEFEFFF9F9F9FFF0F0F0FFE9E9
      E9FFE9E9E9FFF0F0F0FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFBFFF2F2F2FFE9E9
      E9FFE0E0E0FFDFDFDFFFE7E7E7FFF0F0F0FFF9F9F9FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFEFEFEFFFEFEFEFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFDFDFDFFFEFEFEFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF9F9F9FFEFEFEFFFE2E2E2FF7C7C7CFF7C7C7CFFE2E2E2FFEFEFEFFFF9F9
      F9FFFEFEFEFF0000000000000000FEFEFEFFF9F9F9FFEFEFEFFFE2E2E2FF7C7C
      7CFF7C7C7CFFE2E2E2FFEFEFEFFFF8F8F8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFECECECFF8282
      82FF757575FF727272FF797979FFE2E2E2FFEFEFEFFFF9F9F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1FFF2F2F2FFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACA
      CAFFCCCCCCFFE5E5E5FFF8F8F8FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF2F2F2FFE3E3E3FF1119E7FF1119E7FF6E6E6EFF797979FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFFFEFEFEFFFAFAFAFFF0F0F0FFE1E1E1FF1018E7FF1018
      E7FF6E6E6EFF7A7A7AFFE2E2E2FFF0F0F0FF0000000000000000000000000000
      000000000000D7D7D7FF8D8D8DFF8D8D8DFFD7D7D7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFC88671FFC886
      71FFC88671FFC88570FF6C6C6CFF797979FFE1E1E1FFF0F0F0FFFAFAFAFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007272
      72FF787777FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF757575FFB7B7B7FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFEDEDEDFF1018E7FF1018E7FF1119E7FF1119E7FF696969FF787878FFE1E1
      E1FFF0F0F0FFF9F9F9FFF9F9F9FFF0F0F0FFE1E1E1FF1018E7FF1018E7FF1018
      E7FF1018E7FF6E6E6EFF7C7C7CFFE9E9E9FF0000000000000000000000000000
      0000A7B0C3FF526CA1FF526CA1FF778093FF8D8D8DFFD7D7D7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFC88671FFC886
      71FFC78570FFC7856FFFC7846FFF696969FF787878FFE0E0E0FFEDEDEDFFF4F4
      F4FFF6F6F6FFF8F8F8FFFAFAFAFFFCFCFCFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFF1018E7FF1018E7FF1018E7FF1119E7FF1119E8FF1119E8FF696969FF7878
      78FFE0E0E0FFEBEBEBFFEBEBEBFFE0E0E0FF1119E8FF1018E7FF1018E7FF1018
      E7FF1018E7FF1018E7FF7C7C7CFFE9E9E9FF000000000000000000000000C1CB
      DDFF526CA1FF526CA1FF526CA1FF526CA1FF778093FF8D8D8DFFD7D7D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC78570FFC785
      70FFC7856FFFC7846EFFC7836EFFC6836DFF696969FF767676FFD9D9D9FFE0E0
      E0FFE2E2E2FFE4E4E4FFEBEBEBFFF2F2F2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFF1018E7FF1018E7FF1018E8FF1019E8FF1119E8FF1119E8FF1119E8FF6969
      69FF767676FFD7D7D7FFD7D7D7FF1119E8FF1119E8FF1019E8FF1018E8FF1018
      E7FF1018E7FF1018E7FFE2E2E2FFF0F0F0FF000000000000000000000000526C
      A1FF6A71C6FF596DADFF526CA1FF526CA1FF526CA1FF778093FF8D8D8DFFD4D4
      D4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFC7856FFFC785
      6FFFC7846EFFC7836DFFC6836DFFC6826CFFC5806AFF676767FF6E6E6EFF7575
      75FF777777FF797979FF808080FFE3E3E3FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFF1018E8FF1018E8FF1019E8FF1019E8FF1119E8FF1119E9FF1019
      E9FF676767FF6C6C6CFF1019E9FF1019E9FF1019E8FF1019E8FF1018E8FF1018
      E8FF1018E8FFE1E1E1FFEFEFEFFFF9F9F9FF000000000000000000000000526C
      A1FF6A71C6FF6A71C6FF596DADFF526CA1FF526CA1FF526CA1FF778093FF8C8C
      8CFFD3D3D3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFC784
      6EFFC6836DFFC6826CFFC6816BFFC5816AFFC57F69FFC47E67FFC37B65FFC279
      62FFC17861FFC0775FFF6C6C6CFF797979FFE1E1E1FFEBEBEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF838A87FF838A
      87FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFF1018E8FF1019E8FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E8FF1018
      E8FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFF000000000000000000000000C1CB
      DDFF596DADFF6A71C6FF6A71C6FF596DADFF526CA1FF526CA1FF526CA1FF7780
      93FF8C8C8CFFD3D3D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFC6826CFFC6816BFFC5806AFFC57F69FFC47E67FFC47D66FFC37B64FFC279
      62FFC17760FFC0765FFFBF755DFF696969FF787878FFDEDEDEFFEBEBEBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF464240FF464240FF8D86
      81FFC7BEB6FFC7BEB6FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFF1019E9FF1019E9FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FFE0E0
      E0FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000C1CBDDFF596DADFF6A71C6FF6A71C6FF596DADFF526CA1FF526CA1FF526C
      A1FF778093FF8C8C8CFFD3D3D3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFC6816BFFC5816AFFC57F69FFC47E67FFC37C65FFC37A63FFC279
      61FFC1775FFFC0765EFFBF745CFFBF735BFF696969FF787878FFE0E0E0FFEEEE
      EEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFF343434FF343434FF353535FF2E30
      2FFF2E302FFF5D625FFF838A87FF838A87FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFF9F9F9FF111AE9FF121BE9FF121BE9FF121B
      E9FF121BE9FF121BE9FF121BE9FF121BE9FF121BE9FF111AE9FFD7D7D7FFEBEB
      EBFFF9F9F9FFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000C1CBDDFF596DADFF6A71C6FF6A71C6FF596DADFF526CA1FF526C
      A1FF526CA1FF778093FF8C8C8CFFD2D2D2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF4F4F4FFC6826CFFC5816AFFC47E68FFC37C65FFC37A62FFC278
      60FFC1765FFFC0755DFFBF735BFFBF725AFFBE7158FF6E6E6EFF828282FFEDED
      EDFFEEEEEEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFF343434FF343434FF353535FF3535
      35FF2F90F1FF464240FF464240FF8D8681FFC7BEB6FFC7BEB6FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFF9F9F9FFEBEBEBFF1720EAFF1720EAFF161F
      EAFF161FEAFF171FEAFF1720EAFF1720EAFF1820EAFF6C6C6CFFD7D7D7FFEBEB
      EBFFF9F9F9FFFEFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000C1CBDDFF596DADFF6A71C6FF6A71C6FF596DADFF526C
      A1FF526CA1FF526CA1FF778093FF8A8A8AFFC6C6C6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FFCA8A75FFC98873FFC7856FFFC6826CFFC57F68FFC47D
      66FFC37A63FFC27760FFC0745CFFBF725AFFBD7058FFBD7057FF6E6E6EFF8282
      82FFEDEDEDFFEEEEEEFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFF313131FF313131FF353535FF3291
      F2FF3291F2FF3291F2FF2F90F1FF2E302FFF2E302FFF5D625FFF838A87FFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFFF0F0F0FFE0E0E0FF222BEBFF2029EAFF1F28
      EAFF1F27EAFF1E27EAFF1F27EAFF2028EAFF2129EBFF676767FF767676FFE0E0
      E0FFF0F0F0FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000C1CBDDFF596DADFF6A71C6FF6A71C6FF596D
      ADFF526CA1FF526CA1FF526CA1FF727B8EFF7C7C7CFF1D24C6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F8FFCE9481FFCD927EFFCC8E7BFFCA8B77FFC98772FFC885
      6FFFC6806AFFC37B64FFC1765EFFBF735AFFBD7057FFBD7057FFBD7057FF6E6E
      6EFF828282FFEDEDEDFFEEEEEEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF313131FF3291F2FF3291
      F2FF3291F2FF3291F2FF2F90F1FF2F90F1FF3291F2FF464240FF8D8681FFC7BE
      B6FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFFF0F0F0FFE1E1E1FF363DECFF3138EBFF2E36EBFF2B33
      EBFF2A33EBFF2A32EBFF2931EBFF2A33EBFF2C34EBFF3038ECFF696969FF7878
      78FFE1E1E1FFF0F0F0FFF9F9F9FFFEFEFEFF0000000000000000000000000000
      000000000000000000000000000000000000C1CBDDFF596DADFF6A71C6FF6A71
      C6FF596DADFF526CA1FF526CA1FF526CA1FF2F3B8CFF1B1F82FF232AB5FF1A1F
      90FF181D85FF171C82FF171C85FF1A1F90FF2228B5FF2F37E9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFAFFD3A08FFFD39F8EFFD29D8CFFD19B89FFD09785FFCF95
      82FFCC8E7AFFC88671FFC47D66FFC1775FFFBE7158FFBD7057FFBD7057FFBD70
      57FF6E6E6EFF828282FFEDEDEDFFEEEEEEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF767C79FF2F90F1FF2F90
      F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF3090F1FF2E302FFF5D62
      5FFF838A87FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFF0F0F0FFE1E1E1FF4950EDFF444BEDFF3F47ECFF3C43ECFF3840
      ECFF363DECFF343CECFF343CECFF353DECFF383FECFF3B43ECFF4047EDFF6969
      69FF787878FFE1E1E1FFEFEFEFFFF9F9F9FF0000000000000000000000000000
      00000000000000000000000000000000000000000000C1CBDDFF596DADFF6A71
      C6FF6A71C6FF596DADFF526CA1FF526CA1FF526CA1FF3A4990FFB04B37FFC152
      2EFFC7542EFFC1522EFFAF4B37FF743A54FF23237FFF212685FF353AC3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFCFFD7A899FFD7A99AFFD7A99AFFD8A99AFFD7A798FFD6A5
      95FFD29D8CFFCE9381FFC88772FFC47D66FFC1775FFFBE7158FFBD7057FFBD70
      57FFBD7057FF6E6E6EFF828282FFE0E0E0FFEEEEEEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFB3ABA4FF2F90F1FF2F90
      F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF3090F1FF2A8DF0FF4642
      40FF8D8681FFC7BEB6FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF2F2F2FFE3E3E3FF595FEEFF555BEEFF5157EEFF4D54EDFF4A51EDFF454C
      EDFF4047EDFF3E45EDFF3F46EDFF4148EDFF444BEDFF474EEDFF4B51EEFF5056
      EEFF696969FF797979FFE2E2E2FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C1CBDDFF596D
      ADFF6A71C6FF6A71C6FF596DADFF526CA1FF526CA1FFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC2522DFF663A60FF292D84FF3D41
      B5FF00000000797979FF00000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFFDCB3A7FFDDB5A9FFDEB7ABFFDEB7AAFFDDB5
      A8FFDAAEA0FFD5A393FFCF9583FFC88772FFC47D66FFC1775FFFBE7158FFBD70
      57FFBD7057FFBD7057FF6E6E6EFF787878FFDEDEDEFFEBEBEBFF000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EDE4FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF98A09CFF717774FF2F90
      F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF2AA6F0FF2ACB
      F0FF2E302FFF5D625FFF838A87FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFEFE4
      DBFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFEDEDEDFF676CEFFF6469EFFF6066EFFF5E64EFFF5A60EEFF575DEEFF5157
      EEFFE0E0E0FFEBEBEBFF484FEEFF4D53EEFF5057EEFF545AEEFF575DEFFF5C61
      EFFF6066EFFF6E6E6EFF7C7C7CFFE9E9E9FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEC7
      DAFF5C6FAEFF6A71C6FF596DADFF526CA1FFC7542EFFC05737FFC08B70FFD0BD
      9EFFDDD5B2FFD3C09EFFC08A70FFC05737FFC7542EFFC7542EFF804353FF3336
      84FF4F54C5FF6D6D6DFF0000000000000000000000000000000000000000FEFE
      FEFFFCFCFCFF0000000000000000F2F2F2FFDFBBB0FFE0BDB2FFE1BEB3FFE0BD
      B2FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D66FFC1775FFFBE71
      58FFBD7057FFBD7057FFBD7057FF696969FF787878FFE1E1E1FFF0F0F0FF0000
      0000FEFEFEFF0000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EEE5FFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFE6DCD3FFB3ABA4FF2F90
      F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF29CBF0FF28CB
      F0FF27CBF0FF464340FF8D8781FFC7BFB7FFFFF5EBFFFFF5EBFFFFF5EBFFEFE5
      DCFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFF7075F0FF6F74F0FF6D73F0FF6B71F0FF696FEFFF656BEFFF6167EFFFE1E1
      E1FFF0F0F0FFF9F9F9FFF9F9F9FF595FEFFF5D63EFFF6267EFFF656AF0FF686D
      F0FF6A6FF0FF6C71F0FF7C7C7CFFE9E9E9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006874D5FF5F77A7FF5F77A7FFC9603EFFC2876FFFDED7B6FFDFD7B6FFDFD7
      B6FFDFD7B6FFDFD7B6FFDFD7B6FFDED7B5FFBE816AFFC65531FFC7542EFF7144
      61FF3C3F88FF6B70EDFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFE3C3B9FFE3C4BAFFE3C4
      BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D66FFC177
      5FFFBE7158FFBD7057FFBD7057FFBD7057FF696969FF797979FFE3E3E3FFF2F2
      F2FF000000000000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EEE6FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF767C
      79FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF2F90F1FF28B2F0FF27CBF0FF26CA
      F0FF24CAF0FF22C9EFFF2E302FFF5D625FFF838A87FFA9B2ADFFA9B2ADFFEFE5
      DDFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFF757AF0FF767AF0FF767BF0FF757AF0FF7378F0FF6F74F0FFE1E1E1FFF0F0
      F0FFFAFAFAFFFEFEFEFFFEFEFEFFFAFAFAFF6A6FF0FF6E73F0FF7176F1FF7277
      F1FF7277F1FF7277F0FFE2E2E2FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007479EDFF6078A8FFCE6948FFC38C74FFE1DABBFFE1DABBFFE1DABBFFE1DA
      BBFFE1DABBFFE1DABBFFE1DABBFFE1DABBFFE1D9BBFFC48C75FFCE6948FFC252
      2DFF424181FF5D62C5FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEBFFE4C5BBFFE4C5
      BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D
      66FFC1775FFFBE7158FFBD7057FFBD7057FFBD7057FF6C6C6CFF808080FFEBEB
      EBFFFAFAFAFF0000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EFE8FFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFB3AC
      A7FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF28B2F0FF28CBF0FF25CAF0FF23CA
      F0FF22C9EFFF1FC9EFFF1EC9EFFF464341FF8D8883FFC7BFB9FFFFF6EEFFEFE6
      DFFF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFF7C80F1FF7D81F1FF7C81F1FF7B7FF1FFE3E3E3FFF0F0F0FFFAFA
      FAFFFEFEFEFF0000000000000000FEFEFEFFFAFAFAFF787DF1FF7A7FF1FF7B80
      F1FF7A7FF1FFE3E3E3FFEFEFEFFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFA592FFCF6E4EFFCA7053FFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DC
      BEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DBBEFFC97256FFCC63
      40FF864B55FFAEAEAEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBEBEBFFE4C5
      BBFFE4C5BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC887
      72FFC47D66FFC1775FFFBE7158FFBD7057FFBD7057FFBD7057FF797979FFE4E4
      E4FFF8F8F8FF0000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8EFE9FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFF767C79FF2A8DF0FF29A5F0FF28CBF0FF28CBF0FF28CBF0FF26CBF0FF25CA
      F0FF24CAF0FF23CAF0FF26CAF0FF2DCCF0FF2E302FFF5D625FFF838A87FFEFE6
      E0FF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFAFAFAFF8287F1FF8286F1FFEDEDEDFFF2F2F2FFFAFAFAFFFEFE
      FEFF00000000000000000000000000000000FEFEFEFFFAFAFAFF8287F2FF8287
      F2FFEDEDEDFFF2F2F2FFF9F9F9FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2795CFFD27759FFCD9F87FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DD
      C2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE3DDC1FFCDA18AFFD174
      55FFBC5737FF898989FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EBFFE4C5BBFFE4C5BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF95
      83FFC88772FFC47D66FFC1775FFFBE7158FFBD7057FFBD7057FF777777FFE2E2
      E2FFF6F6F6FF0000000000000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8F0EBFFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7
      F1FFFFF7F1FFB3ADA9FF29CBF0FF2ACCF0FF2ACCF0FF2ACBF0FF2ACBF0FF2ACB
      F0FF2BCBF0FF2CCCF0FF32CDF0FF3BCFF1FF49D3F2FF464342FF8D8885FFBAB4
      B0FF737272FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFFCFCFCFFFEFEFEFF0000
      00000000000000000000000000000000000000000000FEFEFEFFFCFCFCFFFBFB
      FBFFFBFBFBFFFCFCFCFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF7354FFD57F63FFDDCEB4FFE5DFC5FFE5DFC5FFE5DFC5FFE5DFC5FFE5DF
      C5FFE5DFC5FFE5DFC5FFE5DFC5FFE5DFC5FFE5DFC5FFE5DFC5FFDECFB5FFD57E
      62FFC3542EFF8B8B8BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEBFFE4C5BBFFE4C5BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A3
      93FFCF9583FFC88772FFC47D66FFC1775FFFBE7158FFBD7057FF757575FFE0E0
      E0FFF4F4F4FFFEFEFEFF00000000000000000000000000000000FEFEFEFF9F9F
      9FFFF8F1ECFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFF767C79FF2DCCF0FF2ECCF0FF2FCDF0FF32CDF0FF35CE
      F0FF38CEF1FF3BCFF1FF43D1F1FF4DD3F2FF5DD7F3FF6DDBF4FF2E302FFF8480
      7DFF595858FFB4B4B4FFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2785AFFD7866CFFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1
      C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFD786
      6BFFC7542EFF909090FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEBFFE4C5BBFFE4C5BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0
      A3FFD5A393FFCF9583FFC88772FFC47D66FFC1775FFFBE7158FF6E6E6EFFD9D9
      D9FFEDEDEDFFFAFAFAFFFEFEFEFF000000000000000000000000FEFEFEFF9F9F
      9FFFF8F2EDFFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFB3AEAAFF33CDF0FF35CEF0FF3ACFF1FF40D0
      F1FF46D1F1FF4BD3F2FF54D5F2FF5DD7F3FF6CDBF4FF7ADEF4FF8BE2F5FF413F
      3EFF3E3E3EFF8C8C8CFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D27B5EFFD98D74FFE1D3BBFFE8E3CCFFE8E3CCFFE8E3CCFFE8E3CCFFE8E3
      CCFFE8E3CCFFE8E3CCFFE8E3CCFFE8E3CCFFE8E3CCFFE7E2CAFFE2D4BDFFD889
      6FFFC3542EFF9C9C9CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBEBEBFFE4C5BBFFE4C5BBFFE3C4BAFFE2C2B8FFDEB8
      ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D66FFC1775FFF676767FF7676
      76FFE0E0E0FFF0F0F0FFF9F9F9FFFEFEFEFF0000000000000000FEFEFEFF9F9F
      9FFFF8F2EDFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF767C79FF3FD0F1FF48D2F1FF51D4
      F2FF59D6F2FF60D7F3FF68D9F4FF6FDBF4FF7CDEF5FF88E1F5FF97E5F6FFA1E7
      F7FF1F1F1FFF848484FFC6C6C6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D37F63FFDB9179FFD9B59EFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5
      CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFE9E4CEFFDBB7A2FFD57E
      62FFBD5838FFC4C4C4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E8FFE4C5BBFFE4C5BBFFE3C4BAFFE2C2
      B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D66FFC1775FFF6969
      69FF787878FFE1E1E1FFEFEFEFFFF9F9F9FF0000000000000000FEFEFEFF9F9F
      9FFFF8F3EFFFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFA
      F6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFB3AFACFF54D5F2FF5FD7
      F3FF69DAF3FF70DBF4FF76DDF4FF7CDEF5FF88E1F5FF93E4F6FFA1E7F7FFAAEA
      F8FFB4ECF9FF454545FF8D8D8DFFD6D6D6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1A793FFDB927AFFDA9D87FFEAE5D0FFEBE6D2FFEBE6D2FFEBE6D2FFEBE6
      D2FFEBE6D2FFEBE6D2FFEBE6D2FFEBE6D2FFEAE5D0FFEBE6D2FFDA9C86FFCA5F
      3BFFAA6F5BFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFE4C5BBFFE4C5BBFFE3C4
      BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D66FFC177
      5FFF696969FF797979FFE2E2E2FFF0F0F0FF0000000000000000FEFEFEFF9F9F
      9FFFF8F3F0FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFB3AFADFF73DC
      F4FF7EDFF5FF85E0F5FF8BE2F6FF91E3F6FF9AE5F7FFA4E8F8FFB0EBF9FFB8ED
      F9FFBFEFFAFFC2F0FAFF5A5A5AFFD6D6D6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFAF9FFD07557FFE0A28DFFDCB6A2FFEBE6D2FFEDE8D6FFEDE8D6FFEDE8
      D6FFEDE8D6FFEDE8D6FFEDE8D6FFECE7D4FFECE7D4FFDDB8A6FFD47C5FFFC353
      2DFFD1CECDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFE4C5BBFFE4C5
      BBFFE3C4BAFFE2C2B8FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC88772FFC47D
      66FFC1775FFF6C6C6CFF797979FFE7E7E7FF0000000000000000FEFEFEFF9F9F
      9FFFF8F4F2FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFB
      F9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FFFFFBF9FF8D89
      81FF8FE3F6FF98E5F7FF9FE7F7FFA5E8F8FFADEAF8FFB5ECF9FFBEEFFAFFC5F0
      FAFFC9F2FBFFCAF2FBFF5A5A5AFFE2E2E2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BAABFFD68267FFE2AA98FFDFBDABFFEDE9D7FFECE8D5FFEDE9
      D8FFEEEAD9FFEDE9D7FFEDE9D6FFEEEAD8FFDFBDABFFD78A71FFC85732FFC295
      86FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFCFCFCFFFAFA
      FAFFF8F8F8FFF6F6F6FFF4F4F4FFDEB8ACFFDBB0A3FFD5A393FFCF9583FFC887
      72FFC47D66FFC1775FFF727272FFDFDFDFFF0000000000000000FEFEFEFF9F9F
      9FFFF8F5F2FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFFFFCF9FFCAC5
      BAFFAF9238FFAEEAF8FFB4ECF9FFBCEEF9FFC2F0FAFFC8F1FAFFCEF3FBFFD2F4
      FBFFD3F4FBFFD3F4FBFF696969FFE2E2E2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFA18DFFD3795BFFE5B19FFFE2B0A0FFE3C8B7FFEBE2
      D2FFEFECDCFFEBE2D2FFE3C8B7FFE1AF9FFFD8886EFFC85934FFCA8C78FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFFDEB8ACFFDBB0A3FFD5A393FFCF95
      83FFC88772FFC37C65FF757575FFE0E0E0FF0000000000000000FEFEFEFF9F9F
      9FFFF8F6F4FFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFCAC6
      BFFFFADB7FFFB39C58FFC4F0FAFFCBF2FBFFD1F3FBFFD5F4FBFFD8F5FCFFDAF6
      FCFFDAF6FCFFD9F6FCFFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8BAABFFC65733FFD8886EFFE4AD9BFFE7B8
      A8FFE8B9A9FFE6B3A3FFDE9B84FFCE6A49FFC4542EFFE5B8A9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFAFAFAFFDEB8ACFFDBB0A3FFD5A3
      93FFCF9583FFC6816BFF828282FFE9E9E9FF0000000000000000FEFEFEFF9F9F
      9FFFF8F6F5FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFFFFDFCFFCAC7
      C2FFFAE6ABFFDFCC93FF4A4845FFD8F5FCFFDBF6FCFFDDF7FCFFDEF7FCFFDFF7
      FCFFDFF7FCFFA8A8A8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFAF9FFE0A591FFCD6847FFC757
      31FFC7542EFFC75731FFCD6847FFE0A591FFFDFAF9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFAFAFAFFDFBAAEFFDBB0
      A3FFD5A393FFCF9583FFECECECFFF2F2F2FF0000000000000000FEFEFEFFA1A0
      A0FFF8F7F7FFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFCAC9
      C7FFD3C9ADFF8A8982FFF2F2F2FFB2B2B2FFDFF7FCFFDFF7FCFFDFF7FCFFDFF7
      FCFFA8A8A8FF0000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FEFEFEFFFCFCFCFFF9F9
      F9FFF7F7F7FFF7F7F7FFF9F9F9FFFBFBFBFF000000000000000000000000A1A0
      A0FFA1A0A0FF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFFAEAEADFFF6F6F6FF0000000000000000BEBEBEFFBEBEBEFFBEBEBEFFBEBE
      BEFF000000000000000000000000000000000000000000000000000000000000
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
      0000FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFF9F9F9FFF0F0F0FFE6E6
      E6FFE2E2E2FFE6E6E6FFF0F0F0FFF9F9F9FFFDFDFDFFFDFDFDFFF9F9F9FFF0F0
      F0FFE6E6E6FFE2E2E2FFE6E6E6FFF0F0F0FFF9F9F9FFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF0EFEFFFDDDB
      DBFFD0CDCDFFCECACAFFCECACAFFCECACAFFCECACAFFCECACAFFCECACAFFCECA
      CAFFCECACAFFCECACAFFCECACAFFCECACAFFCECACAFFCECACAFFCECACAFFD1CD
      CDFFDEDBDBFFF0EFEFFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFAFAFAFFEFEFEFFFE2E2E2FFAAAA
      AAFF808080FFA9A9A9FFE0E0E0FFEEEEEEFFF7F7F7FFF7F7F7FFEEEEEEFFE0E0
      E0FFA9A9A9FF808080FFAAAAAAFFE2E2E2FFEFEFEFFFFAFAFAFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFDFDFDFFFBFBFBFFFAFAFAFFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF00000000000000000000000000000000FBFBFBFFF9F9F9FFF7F7F7FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF7F7F7FFF9F9F9FFFBFBFBFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F5FFE5E4E4FFC6C2
      C2FFB1ACACFFACA7A7FFACA7A7FFACA7A7FFACA7A7FFACA7A7FFACA7A7FFACA7
      A7FFACA7A7FFACA7A7FFACA7A7FFACA7A7FFACA7A7FFACA7A7FFADA7A7FFB2AC
      ACFFC7C2C2FFE6E4E4FFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFF3F3F3FFE3E3E3FFA77E58FFC77D
      36FFA17953FF7C7C7CFF868686FFDFDFDFFFEAEAEAFFEAEAEAFFDFDFDFFFA77F
      59FFC77E38FFA07750FF7C7C7CFF898989FFE3E3E3FFF3F3F3FFFCFCFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFBFBFBFFF6F6F6FFF1F1F1FFEDEDEDFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFF9F9F9FF000000000000000000000000F2F2F2FFECECECFFE5E5E5FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE5E5E5FFECECECFFF2F2F2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFCA8550FFCE89
      52FFD08B55FFD18D57FFD18D58FFD18D58FFD18D58FFD18D58FFD18D58FFD18D
      58FFD18D58FFD18D57FFD08D56FFD08C55FFD08B54FFCE8852FFC8834EFFC17B
      48FFB8B2B2FFDFDCDCFFF8F8F8FF000000000000000000000000000000000000
      0000000000000000000000000000FAFAFAFFEAEAEAFFC47830FFC67B34FFC87E
      38FFCA813BFFCB823DFF7E7E7EFF858585FFD7D7D7FFD7D7D7FFCB833EFFCA82
      3CFFC97F3AFFC77D37FFC57A33FF7C7C7CFFAFAFAFFFEAEAEAFFFAFAFAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFBFBFBFFF5F5F5FFECECECFFA7A7A7FFA2A2A2FFA1A1
      A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFEBEB
      EBFFEBEBEBFFF9F9F9FF0000000000000000E9E9E9FF828282FF7C7C7CFF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF7C7C7CFF828282FFE9E9E9FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFDA9356FFDCD5
      D5FFDDD7D7FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDED8
      D8FFDED8D8FFDED8D8FFDED8D8FFDED8D8FFDDD7D7FFDAD2D2FFD2C7C7FFC882
      4CFFB3ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FFD0A780FFC67A32FFC87D36FFB38A
      63FFCB823DFFCD8540FFCD8642FF7C7C7CFF9A9A9AFFCE8743FFCD8541FFCC84
      3FFFCBA37DFFC87E39FFC77C35FF9F7750FF848484FFE3E3E3FFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFF6F6F6FFECECECFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFA1A1A1FFA1A1
      A1FFEBEBEBFFEBEBEBFFF9F9F9FF00000000EC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FF757575FFE0E0E0FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1FFE49C5BFFE7E4
      E4FFEEB987FFEFB988FFEFB988FFEFB988FFEFB988FFEFB988FFEFB988FFEFB9
      88FFEFB988FFEFB988FFEFB988FFEFB988FFEEB987FFE9B383FFDAD2D2FFCD86
      4EFFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000F6F6F6FFC4782FFFC67B33FFA17852FFA6A6
      A6FFE0E0E0FFCE8642FFCF8845FFA77E57FFA07852FFCF8846FFCF8744FFD4D4
      D4FFE3E3E3FFD1A881FFC77D36FFC57932FF818181FFDFDFDFFFF6F6F6FF0000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFDFDFDFFF7F7F7FFECECECFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFF7F7F7FFF7F7F7FFF999999FFC0C0C0FFC0C0C0FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC7542EFFA1A1
      A1FFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFEC8335FF6F6F6FFFDCDCDCFF0000000000000000000000000000
      0000FDFDFDFFFAFAFAFFF8F8F8FFF8F8F8FFF8F8F8FFEAEAEAFFE99F5BFFEBEB
      EBFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFE7E5E5FFDCD6D6FFCE86
      4DFFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000F6F6F6FFC5782FFFC77B34FFA37953FFA7A7
      A7FFE5E5E5FFEBEBEBFFD08A47FFD08A48FFD18B49FFD08A48FF7B7B7BFFDBDB
      DBFFEBEBEBFFD4AC85FFC87D37FFC57A33FF818181FFDFDFDFFFF6F6F6FF0000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFBFB
      FBFFF6F6F6FFECECECFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFF7F7F7FFF7F7F7FFF999999FFC0C0C0FFC0C0C0FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFB2B2B2FFB2B2
      B2FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000FDFD
      FDFFF4F4F4FFE8E6E6FFDFDDDDFFDCDADAFFDBDADAFFD1D0D0FFE9A05AFFECEC
      ECFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFEEB987FFDDD7D7FFCE86
      4CFFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FFC5782FFFC77B34FFA37953FFA1A1
      A1FFDDDDDDFFE7E7E7FFD18B48FFD28C49FFD28C49FFD18C49FF7B7B7BFFDADA
      DAFFE7E7E7FFD0A881FFC87D37FFC57932FF848484FFE3E3E3FFF7F7F7FF0000
      00000000000000000000000000000000000000000000FEFEFEFFFBFBFBFFF5F5
      F5FFECECECFFA3A3A3FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFF7F7F7FFF7F7F7FFF999999FFC0C0C0FFC0C0C0FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF3F3F3FFF3F3F3FFF7F7F
      7FFFB4B4B4FFB4B4B4FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000FAFA
      FAFFE6E5E5FFCAC6C6FFB6B1B1FFB1ADADFFB0ADADFFA7A5A5FFEA9F5AFFEBEB
      EBFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFE7E5E5FFDCD6D6FFCE85
      4BFFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000FAFAFAFFC4772EFFC77B33FFA37A53FF7878
      78FFA8A8A8FFDADADAFFD18B48FFD28C49FFD38D4AFFD28C49FF787878FFD1D1
      D1FFDADADAFFB89068FFC87D36FFC57931FFAEAEAEFFEAEAEAFFFAFAFAFF0000
      00000000000000000000000000000000000000000000FDFDFDFFF6F6F6FFECEC
      ECFFC7542EFFC2522CFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFF7F7F7FFF7F7F7FFF999999FFC0C0C0FFC0C0C0FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFF343434FF343434FF353535FF4040
      40FF404040FF828282FFB8B8B8FFB8B8B8FFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFC9844FFFCD8852FFD08B55FFD49059FFDC985FFFE09E63FFECA058FFECEC
      ECFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFEEB987FFDCD6D6FFCE85
      49FFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFD7AE87FFC67A31FFC97E36FFA37A
      53FF7A7A7AFFA1A1A1FFD28B47FFD38C49FFD28C49FFD28B48FF717171FFC4C4
      C4FFB68C66FFCA7F39FFC77B34FFA47B53FFE2E2E2FFF3F3F3FFFCFCFCFF0000
      00000000000000000000000000000000000000000000FBFBFBFFF1F1F1FFC754
      2EFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFF7F7F7FFF7F7F7FFF999999FFC0C0C0FFC0C0C0FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF343434FF343434FF353535FF3535
      35FF2F90F1FF414141FF414141FF848484FFBBBBBBFFBBBBBBFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFD99154FFDBD4D4FFDDD7D7FFDFDADAFFE3E0E0FFEFEDEDFFEDA055FFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFE8E6E6FFDDD7D7FFCE83
      46FFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFAFAFAFFC5782EFFC87C33FFCB80
      38FFA57B53FF737373FFD18944FFD28A46FFD28A46FFD18945FF686868FFAE86
      5EFFCB813AFFC97E36FFC67A31FFDEDEDEFFEFEFEFFFFAFAFAFFFEFEFEFF0000
      00000000000000000000000000000000000000000000FAFAFAFFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF313131FF313131FF353535FF3291
      F2FF3291F2FF3291F2FF2F90F1FF434343FF434343FF878787FFBFBFBFFFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE39A58FFE7E4E4FFEEB987FFEFB988FFF0BB89FFF1BC8AFFEFA156FFEFEF
      EFFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFEEB987FFDED8D8FFCE83
      46FFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF9F9F9FFC6782FFFC97D
      33FFCC8038FFA57C53FFD0863FFFD18741FFD18842FFD08740FF9D734CFFCD82
      3AFFCA7E36FFC77B31FFDEDEDEFFEEEEEEFFF9F9F9FFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF313131FF3291F2FF3291
      F2FF3291F2FF3291F2FF2F90F1FF2F90F1FF3291F2FF444444FF898989FFC1C1
      C1FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE79E59FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFF5F5F5FFF0A358FFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFE9E7E7FFDED8D8FFCE84
      47FFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF9F9F9FFC779
      2EFFCA7D33FFCC8037FFCE823AFFCF843BFFCF843BFFCE833BFFCC8038FFCB7D
      34FFC87A30FFE2E2E2FFEFEFEFFFF9F9F9FFFEFEFEFF00000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFB0B0B0FF2F90F1FF2F90
      F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF3090F1FF454545FF8B8B
      8BFFC4C4C4FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89D58FFEBEBEBFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF0A45BFFF0F0
      F0FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFEEB987FFDFD9D9FFCE85
      49FFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFDAAF87FFCB7C30FFCB7D33FFCC7F34FFCD7F35FFCC7E33FFCB7C31FFC69C
      74FFDEDEDEFFF0F0F0FFFAFAFAFFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB2B2B2FF2F90F1FF2F90
      F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF3090F1FF2A8DF0FF4545
      45FF8C8C8CFFC6C6C6FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89C56FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFF5F5F5FFF0A760FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFEBE9E9FFE0DADAFFCE87
      4DFFB2ADADFFDDDADAFFF7F7F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF6F6F6FFE4E4E4FF838383FF838383FF838383FF838383FF6E6E6EFFA6A6
      A6FFE4E4E4FFF6F6F6FFFEFEFEFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFED904DFFED8F
      4AFFED8E48FFED8C45FFED8B43FFED8B43FFED8B43FFED8B43FFED8B43FFED8B
      43FFED8C45FFED8E48FFED8F4AFFED904DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FFABABABFF2F90
      F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF2AA6F0FF2ACB
      F0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89B54FFEBEBEBFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF0AA66FFF2F2
      F2FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFEEB987FFE1DBDBFFCE89
      52FFB5B0B0FFDEDCDCFFF8F8F8FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF2F2F2FFA8A8A8FF828282FF848484FF848484FF828282FF757575FF7E7E
      7EFFDDDDDDFFF2F2F2FFFCFCFCFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA64DFFFFA64DFFFFA64DFFED904DFFED8F
      4AFFED8E48FFED8C45FFED8B43FFED8B43FFED8B43FFED8B43FFED8B43FFED8B
      43FFED8C45FFED8E48FFED8F4AFFED904DFFFFA64DFFFFA64DFFFFA64DFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FFB3B3B3FF2F90
      F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF29CBF0FF28CB
      F0FF27CBF0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89B53FFECECECFFEEEEEEFFEEEEEEFFEEEEEEFFF5F5F5FFF1AE6DFFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFECEAEAFFE0DADAFFCE8B
      55FFC1BDBDFFE6E4E4FFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFF9F9
      F9FFE8E8E8FF828282FF828282FF848484FF848484FF848484FF828282FF7676
      76FFABABABFFE8E8E8FFF9F9F9FFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFA953FFFFA953FFFFA953FFED9454FFED94
      54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFED9454FFED9454FFFFA953FFFFA953FFFFA953FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3
      B3FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF2F90F1FF28B2F0FF27CBF0FF26CA
      F0FF24CAF0FF22C9EFFF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89B53FFEDEDEDFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF1B273FFF4F4
      F4FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4F4F4FFF3B579FFF2B173FFF2B173FFEEAE70FFE9A96DFFDC9C64FFCB89
      56FFD8D6D6FFF2F1F1FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFF2F2
      F2FFA6A6A6FF838383FF848484FF797979FFA1A1A1FF848484FF838383FF7474
      74FF7E7E7EFFDDDDDDFFF2F2F2FFFCFCFCFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFAC59FFFFAC59FFFFAC59FFED9556FFED95
      56FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFED9556FFED9556FFFFAC59FFFFAC59FFFFAC59FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3
      B3FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF28B2F0FF28CBF0FF25CAF0FF23CA
      F0FF22C9EFFF1FC9EFFF1EC9EFFF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFF
      FFFFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89B54FFEDEDEDFFEFEFEFFFEFEFEFFFEFEFEFFFF5F5F5FFF2B67BFFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF3B77DFFF7E0CEFFF5DECCFFF1D9C8FFE9CFBEFFD8A074FFD6D4
      D4FFEFEEEEFFFBFBFBFFFEFEFEFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF9F9F9FFE8E8
      E8FF848484FF858585FF858585FFABABABFFE2E2E2FF868686FF858585FF8484
      84FF767676FFABABABFFE8E8E8FFF9F9F9FFFEFEFEFF00000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFB367FFFFB367FFFFB367FFED995DFFED99
      5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFED995DFFED995DFFFFB367FFFFB367FFFFB367FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB3B3B3FF2A8DF0FF29A5F0FF28CBF0FF28CBF0FF28CBF0FF26CBF0FF25CA
      F0FF24CAF0FF23CAF0FF26CAF0FF2DCCF0FF464646FF8D8D8DFFC7C7C7FFFFFF
      FFFFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89C57FFEEEEEEFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3B880FFF6F6
      F6FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF6F6F6FFF3B980FFF5DECCFFF1D9C8FFEAD1C0FFDA9F6CFFD6D4D4FFEFEE
      EEFFFBFBFBFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF2F2F2FFA6A6
      A6FF878787FF888888FF7A7A7AFFDDDDDDFFEFEFEFFFAFAFAFFF888888FF8888
      88FF747474FF7E7E7EFFDDDDDDFFF2F2F2FFFCFCFCFF00000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA6
      4DFFFFA64DFFF9A24BFFC7542EFFFFBA75FFFFBA75FFFFBA75FFED9B61FFED9B
      61FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFED9B61FFED9B61FFFFBA75FFFFBA75FFFFBA75FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FF29CBF0FF2ACCF0FF2ACCF0FF2ACBF0FF2ACBF0FF2ACB
      F0FF2BCBF0FF2CCCF0FF32CDF0FF3BCFF1FF49D3F2FF464646FF8D8D8DFFC7C7
      C7FFFFFFFFFFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE89F5BFFEFEFEFFFF1F1F1FFF1F1F1FFF1F1F1FFF5F5F5FFF3BC87FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF2BB85FFF1D9C8FFEAD1C0FFDCA577FFD6D4D4FFEFEEEEFFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF9F9F9FFE8E8E8FF8A8A
      8AFF8B8B8BFF8B8B8BFFABABABFFE8E8E8FFF8F8F8FFF8F8F8FF8B8B8BFF8B8B
      8BFF8B8B8BFF767676FFABABABFFE8E8E8FFF9F9F9FFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFA9
      53FFFFA953FFF9A551FFC7542EFFFFC488FFFFC488FFFFC488FFEDA06BFFEDA0
      6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDA06BFFEDA06BFFFFC488FFFFC488FFFFC488FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB3B3B3FF2DCCF0FF2ECCF0FF2FCDF0FF32CDF0FF35CE
      F0FF38CEF1FF3BCFF1FF43D1F1FF4DD3F2FF5DD7F3FF6DDBF4FF464646FF8D8D
      8DFFC7C7C7FFEC8335FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE8A261FFF0F0F0FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF7F7
      F7FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF5F5F5FFEFB988FFEAD1C0FFDCA577FFD6D4D4FFEFEEEEFFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFF2F2F2FFA8A8A8FF8E8E
      8EFF8F8F8FFF7B7B7BFFDDDDDDFFF2F2F2FFFCFCFCFFFCFCFCFFB1B1B1FF8F8F
      8FFF8F8F8FFF757575FF7E7E7EFFDDDDDDFFF2F2F2FFFCFCFCFF000000000000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFAC
      59FFFFAC59FFF9A756FFC7542EFFFFCB96FFFFCB96FFFFCB96FFEDA575FFEDA5
      75FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFEDA575FFEDA575FFFFCB96FFFFCB96FFFFCB96FFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF33CDF0FF35CEF0FF3ACFF1FF40D0
      F1FF46D1F1FF4BD3F2FF54D5F2FF5DD7F3FF6CDBF4FF7ADEF4FF8BE2F5FF4646
      46FF8D8D8DFFB86629FF6F6F6FFFDCDCDCFF000000000000000000000000F8F8
      F8FFE9A668FFF1F1F1FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5F5FFF5C290FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF6F6
      F6FFF3F2F2FFE8B586FFDCA577FFD6D4D4FFEFEEEEFFFBFBFBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFF9F9F9FFE8E8E8FF939393FF9393
      93FF939393FFAAAAAAFFE8E8E8FFF9F9F9FFFEFEFEFFFEFEFEFFF9F9F9FF9393
      93FF939393FF939393FF767676FFAAAAAAFFE8E8E8FFF9F9F9FFFEFEFEFF0000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFB3
      67FFFFB367FFF9AE64FFC7542EFFFFD4AAFFFFD4AAFFFFD4AAFFEDAB82FFEDAB
      82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDAB82FFEDAB82FFFFD4AAFFFFD4AAFFFFD4AAFFC754
      2EFFA1A1A1FFEBEBEBFFF9F9F9FF00000000EC8335FFFAA986FFFAA986FFFAA9
      86FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA9
      86FFFAA986FFFAA986FFFAA986FFFAA986FFAF765EFF3FD0F1FF48D2F1FF51D4
      F2FF59D6F2FF60D7F3FF68D9F4FF6FDBF4FF7CDEF5FF88E1F5FF97E5F6FFA1E7
      F7FF442E24FF82481DFF565656FFDCDCDCFF000000000000000000000000F8F8
      F8FFE9AA6EFFF2F2F2FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF5C393FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF3C394FFF0C0
      92FFE9B88CFFDDA97FFFD6D4D4FFEFEEEEFFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFF2F2F2FFA8A8A8FF989898FF9898
      98FF7C7C7CFFDDDDDDFFF2F2F2FFFCFCFCFF0000000000000000FCFCFCFFB2B2
      B2FF989898FF979797FF777777FF7D7D7DFFDDDDDDFFF2F2F2FFFCFCFCFF0000
      00000000000000000000000000000000000000000000F9F9F9FFC7542EFFFFBA
      75FFFFBA75FFFDB874FFC7542EFFFFE6CDFFFFE6CDFFFFE6CDFFEDB79AFFEDB7
      9AFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFEDB79AFFEDB79AFFFFE6CDFFFFE6CDFFFFE6CDFFC754
      2EFFECECECFFF6F6F6FFFDFDFDFF00000000EC8335FFFAAA89FFFAAA89FFFAAA
      89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA
      89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFAF7760FF54D5F2FF5FD7
      F3FF69DAF3FF70DBF4FF76DDF4FF7CDEF5FF88E1F5FF93E4F6FFA1E7F7FFAAEA
      F8FFB4ECF9FF40230EFF3D3D3DFFB8B8B8FF000000000000000000000000F8F8
      F8FFEAAE75FFF3F3F3FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF3F3F3FFF0F0
      F0FFEEEEEEFFEDEDEDFFEDEDEDFFEBB179FFEFD8C7FFEDD6C5FFEAD2C1FFE4CA
      BAFFD6A073FFD0CECEFFEAE9E9FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFF9F9F9FFE8E8E8FF9C9C9CFF9C9C9CFF9C9C
      9CFFAAAAAAFFE8E8E8FFF9F9F9FFFEFEFEFF0000000000000000FEFEFEFFF9F9
      F9FF9C9C9CFF9C9C9CFF9C9C9CFF767676FFAAAAAAFFE8E8E8FFF9F9F9FFFEFE
      FEFF0000000000000000000000000000000000000000F9F9F9FFC7542EFFFFC4
      88FFFFC488FFFEC387FFE99D69FFC7542EFFFFE9D3FFFFE9D3FFEDB99EFFEDB9
      9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDB99EFFEDB99EFFFFE9D3FFFFE9D3FFC7542EFFECEC
      ECFFF5F5F5FFFBFBFBFFFEFEFEFF00000000EC8335FFFAAD8DFFFAAD8DFFFAAD
      8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD
      8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFAF7962FF73DC
      F4FF7EDFF5FF85E0F5FF8BE2F6FF91E3F6FF9AE5F7FFA4E8F8FFB0EBF9FFB8ED
      F9FFBFEFFAFFC2F0FAFF272727FFB8B8B8FF000000000000000000000000F8F8
      F8FFEBB07AFFF4F4F4FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF7F7F7FFF3B980FFF5DECCFFF1D9C8FFEAD1C0FFDBA0
      6DFFD6D4D4FFEFEEEEFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFFF3F3F3FFA9A9A9FFA0A0A0FFA0A0A0FF7E7E
      7EFFDDDDDDFFF2F2F2FFFCFCFCFF00000000000000000000000000000000FCFC
      FCFFB3B3B3FFA0A0A0FFA0A0A0FF7A7A7AFF7E7E7EFFDEDEDEFFF3F3F3FFFDFD
      FDFF0000000000000000000000000000000000000000F9F9F9FFC7542EFFFFCB
      96FFFFCB96FFFFCB96FFECA474FFE9A273FFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFEBEBEBFFF6F6
      F6FFFBFBFBFFFEFEFEFF0000000000000000EC8335FFFBB394FFFBB294FFFBB2
      94FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB2
      94FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFB07C
      67FF8FE3F6FF98E5F7FF9FE7F7FFA5E8F8FFADEAF8FFB5ECF9FFBEEFFAFFC5F0
      FAFFC9F2FBFFCAF2FBFF272727FFC2C2C2FF000000000000000000000000F8F8
      F8FFEBB381FFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFF2BB85FFF1D9C8FFEAD1C0FFDCA577FFD6D4
      D4FFEFEEEEFFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFFEFEFEFFFA5A5A5FFA5A5A5FFA5A5A5FFA9A9
      A9FFE8E8E8FFF9F9F9FFFEFEFEFF00000000000000000000000000000000FEFE
      FEFFF9F9F9FFA5A5A5FFA5A5A5FFA5A5A5FF7C7C7CFFAFAFAFFFEFEFEFFFFCFC
      FCFF0000000000000000000000000000000000000000F9F9F9FFC7542EFFFFD4
      AAFFFFD4AAFFFFD4AAFFEDAB82FFECAA81FFFDFDFDFFFBFBFBFFFAFAFAFFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFE7A67EFFE7A6
      7EFFF9CFA6FFF9CFA6FFF9CFA6FFC2522CFF9D9D9DFFE6E6E6FFF5F5F5FFFDFD
      FDFFFEFEFEFF000000000000000000000000EC8335FFFBB89CFFFBB89CFFFBB8
      9CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB8
      9CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB8
      9CFFB0816DFFAEEAF8FFB4ECF9FFBCEEF9FFC2F0FAFFC8F1FAFFCEF3FBFFD2F4
      FBFFD3F4FBFFD3F4FBFF2D2D2DFFC2C2C2FF000000000000000000000000F8F8
      F8FFECB685FFF5F5F5FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF7F7F7FFEFB988FFEAD1C0FFDCA577FFD6D4D4FFEFEE
      EEFFFBFBFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFFB3B3B3FFAAAAAAFFAAAAAAFF848484FFDEDE
      DEFFF2F2F2FFFCFCFCFF00000000000000000000000000000000000000000000
      0000FCFCFCFFB4B4B4FFAAAAAAFFAAAAAAFF848484FFB2B2B2FFEFEFEFFFFCFC
      FCFF0000000000000000000000000000000000000000FDFDFDFFC7542EFFFFE6
      CDFFFFE6CDFFFFE6CDFFEDB79AFFEDB79AFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFEDB79AFFEDB7
      9AFFFFE6CDFFFFE6CDFFFFE6CDFFC7542EFFECECECFFF6F6F6FFFDFDFDFF0000
      000000000000000000000000000000000000EC8335FFFCBDA2FFFCBDA2FFFCBD
      A2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBD
      A2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBD
      A2FFFCBDA2FFB08471FFC4F0FAFFCBF2FBFFD1F3FBFFD5F4FBFFD8F5FCFFDAF6
      FCFFDAF6FCFFD9F6FCFF4D4D4DFFE0E0E0FF000000000000000000000000FAFA
      FAFFEBB888FFF5F4F4FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF5F5F5FFF3F1F1FFE8B586FFDCA577FFD8D6D6FFEFEEEEFFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFFB6B6B6FFAFAFAFFFAFAFAFFFB7B7B7FFEBEB
      EBFFF9F9F9FFFEFEFEFF00000000000000000000000000000000000000000000
      0000FEFEFEFFF9F9F9FFAEAEAEFFAFAFAFFF8B8B8BFFE6E6E6FFF4F4F4FFFDFD
      FDFF0000000000000000000000000000000000000000FEFEFEFFFBFBFBFFC754
      2EFFFFE9D3FFFFE9D3FFEDB99EFFEDB99EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDB99EFFEDB9
      9EFFFFE9D3FFFFE9D3FFC7542EFFECECECFFF5F5F5FFFBFBFBFFFEFEFEFF0000
      000000000000000000000000000000000000EC8335FFFCC0A6FFFCC0A6FFFCC0
      A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0
      A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0
      A6FFFCC0A6FFFCC0A6FFB08674FFD8F5FCFFDBF6FCFFDDF7FCFFDEF7FCFFDFF7
      FCFFDFF7FCFF9B5622FF828282FFE9E9E9FF000000000000000000000000FDFD
      FDFFE7B488FFEDBC8FFFEEBE90FFEEBE90FFEEBE90FFEEBE90FFEEBE90FFEEBE
      90FFEEBE90FFECBB8EFFE7B68AFFDDA97FFFE5E4E4FFF1F1F1FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFFB3B3B3FFB4B4B4FFF0F0F0FFF5F5
      F5FFFCFCFCFF0000000000000000000000000000000000000000000000000000
      000000000000FCFCFCFFB7B7B7FFB3B3B3FFEFEFEFFFF2F2F2FFFAFAFAFFFEFE
      FEFF000000000000000000000000000000000000000000000000FEFEFEFFFBFB
      FBFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFF1F1F1FFF6F6F6FFFBFBFBFFFEFEFEFF000000000000
      000000000000000000000000000000000000EC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFA55B25FFDFF7FCFFDFF7FCFFDFF7FCFFDFF7
      FCFF9B5622FFEC8335FFECECECFFF2F2F2FF0000000000000000000000000000
      0000FDFDFDFFFAFAFAFFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8F8FFFAFAFAFFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFFCFC
      FCFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFFCFCFCFFFEFEFEFF0000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFDFDFDFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFFAFAFAFFFBFBFBFFFDFDFDFFFEFEFEFF00000000000000000000
      000000000000000000000000000000000000FBFBFBFFF9F9F9FFF7F7F7FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFF6F6F6FFF7F7F7FFF9F9F9FFFBFBFBFF0000000000000000000000000000
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
      0000000000000000000000000000FCFCFCFFF6F6F6FFF0F0F0FFEAEAEAFFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFEAEAEAFFF0F0F0FFF6F6F6FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFF9F9
      F9FFECEBECFFDAD8DAFFD0CDD0FFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCA
      CDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCA
      CDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFCDCACDFFD0CD
      D0FFDBD8DBFFECEBECFFF9F9F9FFFEFEFEFF0000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFCFCFCFFF5F5F5FFEBEB
      EBFFDBDBDBFFCACACAFFBBBBBBFFB3B3B3FFB0B0B0FFB3B3B3FFBBBBBBFFCACA
      CAFFDBDBDBFFEBEBEBFFF5F5F5FFFCFCFCFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF2F2F2FFE6E5
      E6FFE2E1E2FFECEBECFFF7F7F7FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFFF2F2F2FFA9A9A9FFA0A0A0FF9C9C
      9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C
      9CFF9C9C9CFFA0A0A0FFA9A9A9FFF2F2F2FFFBFBFBFF00000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFBFBFBFFEEED
      EEFFD5D3D5FFBCB8BCFFAFAAAFFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFABA7
      ABFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFABA7
      ABFFABA7ABFFABA7ABFFABA7ABFFABA7ABFFACA7ACFFACA7ACFFACA7ACFFB0AA
      B0FFBDB8BDFFD6D3D6FFEDECEDFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000FDFDFDFFF8F8F8FFECECECFFD7D7D7FFC0C0
      C0FFA8A8A8FF919191FF808080FF767676FF737373FF767676FF808080FF9191
      91FFA7A7A7FFC0C0C0FFD7D7D7FFEBEBEBFFF8F8F8FFFDFDFDFF000000000000
      000000000000000000000000000000000000FAFAFAFFE8E7E8FFCAC8CAFFB8B5
      B8FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0
      B3FFB3B0B3FFB3B0B3FFB3B0B3FFB3B0B3FFB1AEB1FFABA8ABFF9B979BFF8884
      88FF847F84FF908C90FFA4A0A4FFB0ACB0FFB9B5B9FFCBC8CBFFE8E7E8FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFAFFA7A180FF6E694CFF6E694CFF6E69
      4CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E69
      4CFF6E694CFF6E694CFFA5A5A5FFEDEDEDFFFAFAFAFF00000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFF1F1F1FFD8D6
      D8FFA7471CFFA9491BFFAA4A1BFFAB4A1AFFAB4A1AFFAC4B1AFFAC4B1AFFAC4B
      1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B
      1AFFAC4B1AFFAC4B1AFFAC4B1AFFAB4A1AFFAA4A1BFFA9491BFFA6471CFFA244
      1EFFA19BA1FFB9B4B9FFD6D3D6FFEBEAEBFF0000000000000000000000000000
      00000000000000000000FCFCFCFFF2F2F2FFDDDDDDFFBFBFBFFF9B9B9BFF897C
      6FFF997859FFA87D54FFB58454FFB98555FFB48253FFA3774EFF8B6A4BFF695C
      50FF636363FF7B7B7BFF9B9B9BFFBFBFBFFFDDDDDDFFF2F2F2FFFCFCFCFF0000
      000000000000000000000000000000000000F7F7F7FFD7D6D7FFA7A4A7FF8884
      88FF7F7B7FFF7F7B7FFF7F7B7FFF7F7B7FFF7F7B7FFF7F7B7FFF7F7B7FFF7F7B
      7FFF7F7B7FFF7F7B7FFF7F7B7FFF7F7B7FFF7C787CFF726E72FF130BE5FF130B
      E5FF322A91FF5A545AFF6C676CFF7B757BFF898389FFA8A4A8FFD8D6D8FFF6F6
      F6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFF4F3EFFFF4F3EFFFF4F3
      EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3
      EFFFF4F3EFFF6E694CFFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFE5E4E5FFAB4A
      1BFFD27C3EFFD6803FFFD88240FFD88340FFD98440FFB35018FF9E969EFF9E96
      9EFFA49DA4FFB0A8B0FFBFB7BFFFCEC6CEFFDCD4DCFFE2DAE2FFE5DEE5FFE8E1
      E8FFE8E1E8FFE8E1E8FFB35018FFD88340FFD78140FFD47F40FFD07B3FFFCA75
      3EFFA3451DFFA29BA2FFBDB8BDFFDBD8DBFF0000000000000000000000000000
      0000FEFEFEFFFAFAFAFFEDEDEDFFCFCFCFFFA5A4A3FF9E8063FFC28952FFD697
      5BFFD79A5FFFD89B62FFD99D65FFD99E65FFD99D65FFD89C63FFD79A60FFD697
      5BFFBE844EFF7E6043FF575656FF7B7B7BFFA5A5A5FFCFCFCFFFEDEDEDFFFAFA
      FAFFFEFEFEFF000000000000000000000000F5F5F5FFDA935EFFDB945FFFDB96
      62FFDC9662FFDC9764FFDC9764FFDD9A66FFDD9A66FFDD9A66FFDD9A66FFDD9A
      67FFDD9A67FFDD9A67FFDE9A68FFDD9967FFD49463FF6C499AFF120BECFF120B
      EBFF120BEAFF855846FFA66F4CFFBF7E55FFCB855BFF918C91FFCECBCEFFF4F4
      F4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFF5F4F1FFF5F4F1FFF5F4
      F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4
      F1FFF5F4F1FF6E694CFFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000F8F8F8FFAD4C1AFFD780
      3DFFDC843DFFDE883EFFE1893FFFE18A40FFE18B40FFB95416FFA39EA3FF4F4B
      4FFF4E4A4EFF4F4B4FFFC5C1C5FFD5D1D5FFE4DFE4FFEBE6EBFFEEEAEEFFF1ED
      F1FFF1EDF1FFF1EDF1FFB95416FFE18A40FFE08940FFDD863FFFD8823EFFD27C
      3EFFCB763DFFA2441EFFB0AAB0FFD0CDD0FF0000000000000000000000000000
      0000FBFBFBFFEAEAEAFFC7C7C7FFA6907BFFC0864FFFD49354FFD6965AFFD79A
      5FFFD89C63FFD99E66FFD99F68FFDAA069FFD99F68FFD99E66FFD89D64FFD79A
      60FFD6975BFFD59456FFB87F48FF6D5742FF666666FF969696FFC7C7C7FFEAEA
      EAFFFBFBFBFF000000000000000000000000F4F4F4FFE19A5FFFDDD7DDFFDDD8
      DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDED9
      DEFFDED9DEFFDED9DEFFDFDADFFFDBD6DBFFA8A3D1FF0F0BF2FF100CF2FF100C
      F1FF110BF0FF524CB3FF958E95FFB0A7B0FFC68358FF888288FFCBC8CBFFF3F3
      F3FF0000000000000000000000000000000000000000FEFEFEFFFDFDFDFFFBFB
      FBFFFAFAFAFFF9F9F9FFF9F9F9FFF4F4F4FFA7A180FFF7F6F3FFF7F6F3FFF7F6
      F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6
      F3FFF7F6F3FF6E694CFF9F9F9FFFE7E7E7FFF4F4F4FFF9F9F9FFF9F9F9FFFAFA
      FAFFFBFBFBFFFDFDFDFFFEFEFEFF0000000000000000F7F7F7FFB35018FFDE86
      3CFFE38A3DFFE58D3EFFE78F3FFFE78F40FFE79040FFBE5714FFA7A4A7FF403D
      40FF403D40FF403D40FFCAC8CAFFDBD9DBFFEAE8EAFFF1EFF1FFF5F3F5FFF8F6
      F8FFF8F6F8FFF8F6F8FFBE5714FFE78F3FFFE68E3FFFE38C3EFFDF873DFFD882
      3DFFD07A3CFFA6471CFFACA7ACFFCDCACDFF000000000000000000000000FCFC
      FCFFEDEDEDFFC7C7C7FFAD8967FFD08B4BFFD49151FFD59558FFD7995DFFD89C
      63FFD99E66FFDAA069FFDAA26CFFDAA26CFFDAA26CFFDAA16AFFD99F67FFD89D
      64FFD79A5FFFD6965AFFD49253FFD08D4DFF825F3DFF5C5C5CFF909090FFC7C7
      C7FFEDEDEDFFFBFBFBFF0000000000000000F4F4F4FFE79E60FFE2DFE2FFE3DF
      E3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DF
      E3FFE3DFE3FFE3E0E3FFE2DFE2FFDBD9DBFF6F6DDAFF0E0BF7FF0E0BF6FF3431
      D8FF0E0BF4FF0E0AF2FF7F799AFFA29AA2FFBF7E52FF858085FFCAC7CAFFF3F3
      F3FF00000000000000000000000000000000FEFEFEFFFBFBFBFFF6F6F6FFF1F1
      F1FFEDEDEDFFEBEBEBFFEBEBEBFFE7E7E7FFA7A180FFF9F8F6FFF9F8F6FFF9F8
      F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8F6FFF9F8
      F6FFF9F8F6FF6E694CFF999999FFDFDFDFFFE7E7E7FFEBEBEBFFEBEBEBFFEDED
      EDFFF1F1F1FFF6F6F6FFFBFBFBFFFEFEFEFF00000000F7F7F7FFB75316FFE48A
      3BFFE78D3CFFE9903DFFEB913EFFEB923FFFEB923FFFC05913FFA9A8A9FF4241
      42FF434243FF424142FFCDCCCDFFDEDDDEFFEEEDEEFFF5F4F5FFF9F8F9FFFCFB
      FCFFFCFBFCFFFCFBFCFFC05913FFEB923FFFEA913EFFE78E3DFFE38A3CFFDC84
      3CFFD47D3BFFA9491BFFACA7ACFFCDCACDFF0000000000000000FDFDFDFFF2F2
      F2FFCFCFCFFFB78A5FFFD28B48FFD38F4FFFD59355FFD6975BFFD89B61FFD99E
      65FFDAA069FFDAA26CFFDBA36EFFDBA36EFFDBA36EFFDBA26DFFDAA16AFFD99E
      66FFD89B62FFD6985CFFD59557FFD49151FFD28D4AFF94673DFF5D5D5DFF9696
      96FFCFCFCFFFF2F2F2FFFDFDFDFF00000000F4F4F4FFEBA15EFFE6E4E6FFE7E5
      E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5
      E7FFE7E5E7FFE7E5E7FFE5E3E5FFD9D7D9FF3B39E5FF0C0AFAFF0D0BFAFF8887
      BAFF0C0AF8FF0C09F5FF4B46C1FF958F95FFB2754CFF807B80FFC7C5C7FFF3F3
      F3FF00000000000000000000000000000000FBFBFBFFF4F4F4FFECECECFFA7A7
      A7FFA2A2A2FFA1A1A1FFA1A1A1FF9F9F9FFFA7A180FFFAFAF9FFFAFAF9FFFAFA
      F9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFA
      F9FFFAFAF9FF6E694CFF949494FF999999FF9F9F9FFFA1A1A1FFA1A1A1FFA2A2
      A2FFA7A7A7FFECECECFFF4F4F4FFFBFBFBFF00000000F7F7F7FFB95416FFE68C
      3AFFEA903BFFEB913CFFEC923DFFED933EFFED943FFFC25A13FFAAAAAAFF403F
      40FF403F40FF403F40FFCFCFCFFFE0E0E0FFF0F0F0FFF7F7F7FFFBFBFBFFFEFE
      FEFFFEFEFEFFFEFEFEFFC25A13FFED933EFFEB923DFFE9903CFFE68C3BFFDE86
      3BFFD67F3AFFAA4A1BFFACA7ACFFCDCACDFF0000000000000000F8F8F8FFDEDE
      DEFFB89471FFD18A46FFD28D4BFFD49151FFD59558FFD7995DFFD89C63FFD99F
      67FFDAA26CFFDBA36EFFDBA570FFDBA570FFDBA570FFDBA36EFFDAA26CFFD99F
      68FFD89D64FFD79A5FFFD6965AFFD49253FFD38E4DFFD18B48FF825E3BFF6666
      66FFA6A6A6FFDDDDDDFFF8F8F8FFFEFEFEFFF4F4F4FFEDA35DFFE9E8E9FFE9E8
      E9FFE9E8E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE4E3E4FF9898DBFF0908FCFF0A09FCFF5958C7FFBFBE
      BFFF6765E3FF0B08F7FF0B07F3FF746EA0FFA16944FF797379FFC4C1C4FFF2F2
      F2FF00000000000000000000000000000000F4F4F4FFEBEBEBFF5F4242FF5F42
      42FF5F4242FF5F4242FF5F4242FF5F4242FFA7A180FFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFF6E694CFF5F4242FF5F4242FF5F4242FF5F4242FF5F4242FF5F42
      42FF999999FFA3A3A3FFEBEBEBFFF4F4F4FF00000000F7F7F7FFBB5515FFE78D
      39FFEA8F3AFFEB913BFFEE933CFFEE943CFFEE943DFFC35B13FFABABABFF5151
      51FF505050FF515151FFD0D0D0FFE1E1E1FFF1F1F1FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFC35B13FFEE943DFFEC923CFFEA903BFFE68D3AFFE087
      3AFFD78039FFAB4A1AFFABA7ABFFCDCACDFF00000000FDFDFDFFEDEDEDFFC2AC
      96FFCE8541FFD18B48FFD38F4EFFD49253FFD6965AFFD79A5FFFD99D65FFD99F
      68FFDAA26CFFDBA36EFFE8C7A7FFF1DDC9FFF1DDC9FFE0B185FFDBA26DFFDAA0
      69FFD99E65FFD89B61FFD6975BFFD59355FFD39050FFD28C49FFCD8642FF6C55
      40FF7C7C7CFFC0C0C0FFECECECFFFCFCFCFFF4F4F4FFEEA35CFFEAEAEAFFEAEA
      EAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFE1E1E1FF5D5DE3FF0706FEFF0807FEFF8F8EBCFFCFCF
      CFFFC2C1E0FF0907F9FF0A06F4FF403AC7FF93613FFF6F6A6FFFBCB9BCFFF0F0
      F0FF00000000000000000000000000000000EEEEEEFF9C7171FFB79999FFB899
      99FFB89A9AFFB99B9BFFB99B9BFFB99C9CFFA7A180FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF6E694CFFB99C9CFFB99B9BFFB99B9BFFB89A9AFFB89999FFB799
      99FF5F4242FF999999FFA3A3A3FFEEEEEEFF00000000F7F7F7FFBB5615FFE88D
      38FFEA9039FFEC9139FFED933AFFEE933BFFEE933CFFC35B13FFABABABFFABAB
      ABFFB2B2B2FFBFBFBFFFD0D0D0FFE1E1E1FFF1F1F1FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFC35B13FFEE933BFFED923AFFEA8F3AFFE68C39FFE087
      38FFD87F38FFAC4B1AFFABA7ABFFCDCACDFF00000000F8F8F8FFDAD9D8FFC586
      4AFFD08843FFD28B48FFD38F4FFFD49354FFD6965AFFD79A5FFFD99D65FFD99F
      68FFDAA26CFFDBA36EFFF1DCC8FFFFFFFFFFFFFFFFFFE3B991FFDAA26CFFDAA0
      69FFD99E65FFD89B61FFD6975BFFD59456FFD49151FFD28D4AFFD18945FFB577
      3BFF595858FF9D9D9DFFD9D9D9FFF6F6F6FFF4F4F4FFEFA359FFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFCCCCE3FF0606FEFF0E0EFEFF4949E0FFC4C4C4FFDCDC
      DCFFE6E5E6FF7F7DE7FF0E0BF5FF0A05EEFF694169FF655F65FFB0ADB0FFEAE9
      EAFFFEFEFEFF0000000000000000000000009C7171FFB69696FFB69797FFB798
      98FFB79999FFB89A9AFFB89A9AFFB89B9BFFA7A180FFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFB89B9BFFB89A9AFFB89A9AFFB79999FFB79898FFB697
      97FFB69696FF5F4242FF9D9D9DFFE9E9E9FF00000000F7F7F7FFBB5615FFE88C
      37FFEA8F37FFEC9038FFED9239FFED9239FFED923AFFC35B13FFC35B13FFC35B
      13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B
      13FFC35B13FFC35B13FFC35B13FFED9239FFEC9039FFEA8E38FFE68B37FFE086
      37FFD87F38FFAC4B1AFFABA7ABFFCDCACDFFFEFEFEFFF1F1F1FFC6A788FFCF85
      3EFFD08843FFD28B48FFD38F4FFFD49354FFD6965AFFD7995EFFD89C63FFD99E
      66FFDAA069FFDAA26CFFF1DBC8FFFFFFFFFFFFFFFFFFE3B890FFDAA16AFFD99F
      67FFD89D64FFD79A5FFFD6975BFFD59355FFD39050FFD28D4AFFD18945FFD086
      40FF7A5A3DFF7D7D7DFFC2C2C2FFEBEBEBFFF4F4F4FFF0A358FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFF9595EDFF1B1BFEFF1B1BFEFF8787E0FFDCDCDCFFE5E5
      E5FFE8E8E8FFDAD8E4FF1C19F5FF1C18EFFF3C26B0FF5C575CFFA09CA0FFDFDE
      DFFFFAFAFAFF0000000000000000000000009C7171FFB59494FFB59494FFB594
      94FFB59494FFB59595FFB59595FFB59595FFB59595FFB69696FFB69696FFB696
      96FFB69696FFB69797FFB69797FFB69797FFB69797FFB79898FFB79898FFB798
      98FFB79898FFB79999FFB79999FFB79999FFB79999FFB89999FFB89999FFB899
      99FFB89999FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE88C
      35FFEA8E35FFEC8F36FFED9137FFED9138FFED9138FFED8E32FFED8F34FFED8F
      34FFED9035FFED9035FFED9036FFED9036FFED9137FFED9137FFED9137FFED91
      37FFED8F34FFED8F34FFED8E32FFED9037FFEC8F37FFEA8D36FFE68A36FFE085
      35FFD87F36FFAC4B1AFFABA7ABFFCDCACDFFFBFBFBFFE6E6E6FFC6874AFFCF85
      3EFFD08843FFD18B48FFD38E4DFFD49252FFD59557FFD6975BFFD79A5FFFD89C
      63FFD99E65FFD99F67FFF0DAC6FFFFFFFFFFFFFFFFFFE2B68CFFD99E66FFD89D
      64FFD79A60FFD6985CFFD59558FFD49253FFD38F4FFFD28C49FFD08944FFCF86
      3FFFB37437FF646464FFAAAAAAFFDDDDDDFFF4F4F4FFF0A256FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFE8E8E8FFE5E5E5FFE5E5E5FFEAEAEAFFEAEA
      EAFFEAEAEAFFE6E5E6FF8E8CE3FF2723F1FF2821E9FF3E3789FF908B90FFCDCB
      CDFFF3F3F3FFFDFDFDFF00000000000000009C7171FFB39191FFB39191FFB391
      91FFB39191FFB39292FFB39292FFB39292FFB39292FFB49393FFB49393FFB493
      93FFB49393FFB59494FFB59494FFB59494FFB59494FFB59595FFB59595FFB595
      95FFB59595FFB69696FFB69696FFB69696FFB69696FFB69797FFB69797FFB697
      97FFB69797FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE88A
      33FFEA8D34FFEC8E34FFED8F35FFED9035FFED9036FFED8E32FFED8F34FFED8F
      34FFED9035FFED9035FFED9036FFED9036FFED9137FFED9137FFED9137FFED91
      37FFED8F34FFED8F34FFED8E32FFED8F35FFEC8E35FFEA8C34FFE68833FFE083
      33FFD87D34FFAC4B1AFFABA7ABFFCDCACDFFF7F7F7FFD6C9BCFFCE8138FFCE83
      3CFFD08640FFD18A46FFD28D4AFFD38F4FFFD49253FFD59557FFD6975BFFD799
      5DFFD79A60FFD89B62FFF0D9C4FFFFFFFFFFFFFFFFFFE1B388FFD79A60FFD799
      5EFFD6975BFFD59558FFD49354FFD39050FFD28D4BFFD18A47FFD08742FFCF85
      3EFFCE8239FF685B4DFF949494FFCCCCCCFFF4F4F4FFF0A155FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEBEB
      EBFFEAEAEAFFE7E6E7FFE2DFE2FF5450E5FF322CECFF332AE4FF807B88FFBBB8
      BBFFE7E6E7FFF9F9F9FF00000000000000009C7171FFB28F8FFFB28F8FFFB28F
      8FFFB28F8FFFB29090FFB29090FFB29090FFB29090FFB39191FFB39191FFB391
      91FFB39191FFB39292FFB39292FFB39292FFB39292FFB49494FFB49494FFB494
      94FFB49494FFB59595FFB59595FFB59595FFB59595FFB69595FFB69595FFB695
      95FFB69595FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE889
      31FFEA8C32FFEC8D33FFED8E33FFED8F33FFED8F34FFED8E32FFED8F34FFED8F
      34FFED9035FFED9035FFED9036FFED9036FFED9137FFED9137FFED9137FFED91
      37FFED8F34FFED8F34FFED8E32FFED8E33FFEC8D33FFEA8B32FFE68832FFE083
      32FFD87D33FFAC4B1AFFABA7ABFFCDCACDFFF4F4F4FFCDA988FFCD7F35FFCE82
      3AFFCF853EFFD08742FFD18A46FFD28D4AFFD38F4EFFD49151FFD49354FFD595
      57FFD69659FFD6975BFFEFD7C1FFFFFFFFFFFFFFFFFFE0B083FFD6965AFFD595
      58FFD59355FFD49252FFD38F4FFFD28D4BFFD18B48FFD08843FFCF863FFFCE83
      3BFFCD8137FF835F3DFF848484FFBFBFBFFFF4F4F4FFF0A155FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEBEB
      EBFFE9E9E9FFE8E7E8FFE3E1E3FF9F9BE0FF3E38EEFF3E36E7FF554DACFFAAA6
      AAFFD5D3D5FFF1F1F1FFFDFDFDFF000000009C7171FFB18F8FFFB18F8FFFB18F
      8FFFB18F8FFFB29090FFB29090FFB29090FFB29090FFB29090FFB29090FFB290
      90FFB29090FFB39292FFB39292FFB39292FFB39292FFB49393FFB49393FFB493
      93FFB49393FFB59494FFB59494FFB59494FFB59494FFB59595FFB59595FFB595
      95FFB59595FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE889
      30FFEA8C31FFEC8D32FFED8E32FFED8E32FFED8E32FFED8E32FFED8F34FFED8F
      34FFED9035FFED9035FFED9036FFED9036FFED9137FFED9137FFED9137FFED91
      37FFED8F34FFED8F34FFED8E32FFED8E32FFEC8D32FFEA8A31FFE68831FFE083
      32FFD87C32FFAC4B1AFFABA7ABFFCDCACDFFF2F2F2FFC89767FFCC7E33FFCD80
      36FFCE823AFFCF853EFFD08741FFD18945FFD18B48FFD28D4BFFD38E4DFFD390
      50FFD49151FFD49252FFEED5BDFFFFFFFFFFFFFFFFFFDEAC7CFFD49151FFD390
      50FFD38F4EFFD28D4BFFD28B48FFD18A46FFD08742FFCF853EFFCE833BFFCD81
      37FFCC7E34FF976536FF7B7B7BFFB6B6B6FFF4F4F4FFF0A256FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFEBEB
      EBFFEBEBEBFFE8E8E8FFE6E4E6FFDFDCDFFF6748B2FF4841E9FF483EE2FF8E89
      A6FFC1BEC1FFE4E3E4FFF8F8F8FFFEFEFEFF9C7171FFB49393FFB49393FFB493
      93FFB49393FFB49393FFB49393FFB49393FFB49393FFB59494FFB59494FFB594
      94FFB59494FFB69595FFB69595FFB69595FFB69595FFB69696FFB69696FFB696
      96FFB69696FFB79797FFB79797FFB79797FFB79797FFB79898FFB79898FFB798
      98FFB79898FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE88A
      32FFEA8B31FFEC8C31FFED8D31FFED8D31FFED8D31FFED8E32FFED8F34FFED8F
      34FFED9035FFED9035FFED9036FFED9036FFED9137FFED9137FFED9137FFED91
      37FFED8F34FFED8F34FFED8E32FFED8D31FFEC8C31FFEA8A30FFE68832FFE083
      32FFD87D33FFAC4B1AFFABA7ABFFCDCACDFFF1F1F1FFC88D53FFCB7B2FFFCC7E
      33FFCD8239FFCE843DFFCF8742FFD08946FFD18B49FFD28D4BFFD38F4EFFD38F
      4EFFD39050FFD39151FFEED5BDFFFFFFFFFFFFFFFFFFDDAC7BFFD39050FFD390
      4FFFD38F4EFFD28D4CFFD18B49FFD08946FFD08742FFCF863FFFCD823AFFCC7F
      34FFCC7C30FFA56A30FF777777FFB4B4B4FFF4F4F4FFF0A358FFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECECECFFECECECFFEBEB
      EBFFEBEBEBFFE8E8E8FFE6E5E6FFE2DFE2FFB27674FF544DEAFF534AE4FF5F56
      BFFFB5B2B5FFD7D5D7FFF2F2F2FFFDFDFDFF9C7171FFB99A9AFFB99A9AFFB99A
      9AFFB99A9AFFB99B9BFFB99B9BFFB99B9BFFB99B9BFFBA9B9BFFBA9B9BFFBA9B
      9BFFBA9B9BFFBA9C9CFFBA9C9CFFBA9C9CFFBA9C9CFFBB9D9DFFBB9D9DFFBB9D
      9DFFBB9D9DFFBB9E9EFFBB9E9EFFBB9E9EFFBB9E9EFFBC9E9EFFBC9E9EFFBC9E
      9EFFBC9E9EFF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE88C
      36FFEA8E36FFEC8F36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE68833FFE083
      33FFD87D34FFAC4B1AFFABA7ABFFCDCACDFFF2F2F2FFC8894DFFCC7E34FFCF86
      40FFD08742FFD08945FFD18A47FFD28C49FFD28D4CFFD28E4DFFD28F4FFFD390
      50FFD39050FFD49151FFEED5BDFFFFFFFFFFFFFFFFFFDEAC7BFFD39050FFD390
      50FFD28F4FFFD28E4DFFD28D4CFFD28C4AFFD18A47FFD08946FFD08843FFCF86
      40FFCC7F35FFA96A2EFF7B7B7BFFB7B7B7FFF4F4F4FFF0A45BFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFFEBEB
      EBFFEAEAEAFFE9E9E9FFE7E6E7FFE3E0E3FFE19556FF504BB9FF5E55E4FF5C51
      DDFF9E99C5FFD9D7D9FFF1F1F1FFFDFDFDFF9C7171FFC1A6A6FFC1A6A6FFC1A6
      A6FFC1A6A6FFC2A7A7FFC2A7A7FFC2A7A7FFC2A7A7FFC2A7A7FFC2A7A7FFC2A7
      A7FFC2A7A7FFC2A8A8FFC2A8A8FFC2A8A8FFC2A8A8FFC3A9A9FFC3A9A9FFC3A9
      A9FFC3A9A9FFC3A9A9FFC3A9A9FFC3A9A9FFC3A9A9FFC4AAAAFFC4AAAAFFC4AA
      AAFFC4AAAAFF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE88D
      3BFFEA903BFFEC913BFFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE68A37FFE085
      37FFD87F38FFAC4B1AFFABA7ABFFCDCACDFFF4F4F4FFC98C51FFCE843DFFD18A
      47FFD18B48FFD28C4AFFD28D4BFFD28E4DFFD38F4FFFD39050FFD39051FFD391
      52FFD39152FFD39253FFEED5BEFFFFFFFFFFFFFFFFFFDDAC7DFFD39152FFD391
      52FFD39051FFD39050FFD3904FFFD28E4EFFD28D4CFFD28D4BFFD28C49FFD18A
      47FFCE843DFFA6692EFF858585FFC0C0C0FFF4F4F4FFF0A65DFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEDEDEDFFECECECFFEBEB
      EBFFEAEAEAFFE9E8E9FFE7E5E7FFE3E0E3FFE29A5DFF74718FFF695FE3FF675B
      DCFF746BD9FFECEBECFFF8F8F8FFFEFEFEFF9C7171FFCCB6B6FFCCB6B6FFCCB6
      B6FFCCB6B6FFCCB6B6FFCCB6B6FFCCB6B6FFCCB6B6FFCDB7B7FFCDB7B7FFCDB7
      B7FFCDB7B7FFCDB7B7FFCDB7B7FFCDB7B7FFCDB7B7FFCDB8B8FFCDB8B8FFCDB8
      B8FFCDB8B8FFCEB8B8FFCEB8B8FFCEB8B8FFCEB8B8FFCEB8B8FFCEB8B8FFCEB8
      B8FFCEB8B8FF5F4242FF9C9C9CFFE7E7E7FF00000000F7F7F7FFBB5615FFE991
      41FFEB9441FFED9541FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFBFAFBFFE68C3BFFE087
      3BFFD8803BFFAC4B1AFFABA7ABFFCDCACDFFF7F7F7FFCE9A69FFCE833CFFD28E
      4DFFD38F4FFFD39050FFD39051FFD49152FFD49253FFD49254FFD49355FFD493
      55FFD9A06AFFE9C8AAFFF7EADFFFFFFFFFFFFFFFFFFFDEAD7FFFD49356FFD493
      55FFD49355FFD49354FFD49254FFD49152FFD39151FFD39050FFD38F4FFFD28E
      4EFFCE833CFF9A6735FF969696FFCECECEFFF4F4F4FFF0A65FFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFEDEDEDFFEDEDEDFFECEC
      ECFFEBEBEBFFE9E8E9FFE7E5E7FFE3DFE3FFE0985DFF868386FFC7C5C7FFEEEE
      EEFFF9F9F9FFFBFBFBFFFDFDFDFF000000009C7171FFD9C8C8FFD9C8C8FFD9C8
      C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8
      C8FFD9C8C8FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9
      C9FFD9C9C9FFDAC9C9FFDAC9C9FFDAC9C9FFDAC9C9FFDACACAFFDACACAFFDACA
      CAFFDACACAFF5F4242FF9D9D9DFFE9E9E9FF00000000F7F7F7FFBB5615FFE994
      46FFEB9746FFED9846FFFEFEFEFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFBFAFBFFE79041FFE18B
      41FFD98441FFAC4B1AFFABA7ABFFCDCACDFFFBFBFBFFD8B390FFCC7E34FFD493
      54FFD59456FFD59457FFD59557FFD59558FFD59558FFD69659FFD5965AFFD596
      5AFFDFB083FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB083FFD5975BFFD597
      5BFFD5965AFFD69659FFD59558FFD59558FFD59557FFD59457FFD59456FFD493
      55FFCC7E34FF8E6946FFABABABFFDEDEDEFFF4F4F4FFF0A861FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFECECECFFECEC
      ECFFEAEAEAFFE8E7E8FFE6E3E6FFE1DDE1FFDE965CFF878487FFCAC8CAFFF3F3
      F3FF000000000000000000000000000000009C7171FFE5D9D9FFE5D9D9FFE5D9
      D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9
      D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5D9D9FFE5DADAFFE5DADAFFE5DA
      DAFFE5DADAFFE5DADAFFE5DADAFFE5DADAFFE5DADAFFE5DADAFFE5DADAFFE5DA
      DAFFE5DADAFF5F4242FFA3A3A3FFEEEEEEFF00000000F7F7F7FFBB5615FFEA97
      4BFFEC9A4BFFEE9B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE79346FFE18E
      46FFD98746FFAC4B1AFFABA7ABFFCDCACDFFFEFEFEFFE9DCCFFFC97525FFD697
      5AFFD6995EFFD6995EFFD7995FFFD79A5FFFD79A5FFFD79A60FFD79A60FFD79A
      61FFDFAF83FFF9F2EBFFFAF2EBFFFAF2EBFFFAF2EBFFDFAF83FFD79A61FFD79A
      61FFD79A61FFD79A60FFD79A5FFFD79A5FFFD7995FFFD6995EFFD6995EFFD697
      5AFFC97526FF887B6EFFC3C3C3FFECECECFFF4F4F4FFF0A863FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFECECECFFEBEB
      EBFFEAEAEAFFE8E6E8FFE4E1E4FFE0DBE0FFDC945CFF888488FFCAC8CAFFF3F3
      F3FF000000000000000000000000000000009C7171FFEDE4E4FFEDE4E4FFEDE4
      E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4
      E4FFEDE4E4FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5
      E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5
      E5FFEDE5E5FF5F4242FFEBEBEBFFF4F4F4FF00000000F7F7F7FFBB5615FFEA9A
      50FFEC9D50FFEE9E50FFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE8974DFFE291
      4DFFDA8A4CFFAC4B1AFFABA7ABFFCDCACDFF00000000F9F9F9FFC9823EFFD28E
      4DFFD89E66FFD99F67FFD99F67FFD99F67FFD99F67FFD99F68FFD99F68FFD99F
      68FFD9A069FFD9A069FFD9A069FFD9A069FFD9A069FFD9A069FFD9A069FFD9A0
      69FFD99F68FFD99F68FFD99F68FFD99F67FFD99F67FFD99F67FFD89E66FFD28E
      4DFFB16926FF9F9F9FFFDADADAFFF6F6F6FFF4F4F4FFF0AA67FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFECEC
      ECFFEBEAEBFFE8E6E8FFE5E1E5FFDED9DEFFDA9663FF888488FFCAC8CAFFF3F3
      F3FF00000000000000000000000000000000FBFBFBFF9C7171FFF2ECECFFF2EC
      ECFFF2ECECFFF2ECECFFF2ECECFFF2ECECFFF2ECECFFF2ECECFFF2ECECFFF2EC
      ECFFF2ECECFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2ED
      EDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2EDEDFFF2ED
      EDFF9C7171FFECECECFFF4F4F4FFFBFBFBFF00000000F7F7F7FFBB5615FFEA9D
      55FFECA055FFEEA155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE89A53FFE294
      52FFDA8D51FFAC4B1AFFABA7ABFFCDCACDFF00000000FDFDFDFFDDBD9DFFCA7A
      2DFFD99F68FFDBA470FFDAA470FFDAA470FFDBA571FFDBA571FFDBA571FFDBA5
      71FFDBA571FFDBA571FFDFB183FFF0D9C4FFECCFB4FFDBA672FFDBA571FFDBA5
      71FFDBA571FFDBA571FFDBA571FFDAA470FFDAA470FFDAA470FFD9A069FFCA7A
      2DFF977657FFC2C2C2FFEDEDEDFFFCFCFCFFF4F4F4FFF0AD6AFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFEEEEEEFFEDED
      EDFFEBEAEBFFE8E6E8FFE4E0E4FFDED8DEFFD89462FF8D888DFFCDCBCDFFF4F4
      F4FF00000000000000000000000000000000FEFEFEFFFBFBFBFF9C7171FF9C71
      71FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C71
      71FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C71
      71FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C71
      71FFF1F1F1FFF6F6F6FFFBFBFBFFFEFEFEFF00000000F7F7F7FFBB5615FFEBA2
      5FFFEDA55FFFEFA65FFFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE9A15EFFE39B
      5DFFDB935CFFAC4B1AFFABA7ABFFCDCACDFF0000000000000000F7F6F5FFC981
      3DFFD28D4BFFDDAA79FFDDAA7AFFDDAA7AFFDDAA7AFFDDAB7AFFDDAB7AFFDDAB
      7AFFDDAB7AFFDDAB7AFFF7ECE1FFFFFFFFFFFFFFFFFFEACCAFFFDDAB7AFFDDAB
      7AFFDDAB7AFFDDAB7AFFDDAB7AFFDDAA7AFFDDAA7AFFDDAA79FFD39050FFB46B
      28FFA8A7A6FFDFDFDFFFF8F8F8FF00000000F4F4F4FFF1B070FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFEDEDEDFFECEC
      ECFFEAE9EAFFE7E4E7FFE2DEE2FFDCD5DCFFD7976AFFA09CA0FFD8D6D8FFF7F7
      F7FF0000000000000000000000000000000000000000FEFEFEFFFDFDFDFFFBFB
      FBFFFAFAFAFFF9F9F9FFF9F9F9FFF4F4F4FFA7A180FFE9E7E0FFE9E7E0FFE9E7
      E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7
      E0FFE9E7E0FFA7A180FF9F9F9FFFE7E7E7FFF4F4F4FFF9F9F9FFF9F9F9FFFAFA
      FAFFFBFBFBFFFDFDFDFFFEFEFEFF0000000000000000F7F7F7FFBB5615FFECA9
      6BFFEEAB6CFFF0AD6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFEAA76BFFE3A1
      69FFDB9867FFAB4A1AFFABA7ABFFCDCACDFF0000000000000000FDFDFDFFE6CF
      B9FFC77322FFD79A5FFFE0B184FFE0B184FFE0B184FFE0B184FFE0B184FFE0B1
      84FFE0B184FFE0B184FFF9F0E7FFFFFFFFFFFFFFFFFFEDD2B9FFE0B184FFE0B1
      84FFE0B184FFE0B184FFE0B184FFE0B184FFE0B184FFD89D64FFC77627FFA38C
      76FFD1D1D1FFF3F3F3FFFDFDFDFF00000000F4F4F4FFF1B274FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1F1FFF0B378FFEEAE
      71FFEBAB70FFE7A76FFFE2A26DFFDC9C6CFFD49469FFC3C1C3FFEBEAEBFFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFE9E7DFFFE9E7DFFFE9E7
      DFFFE9E7DFFFE9E7DFFFE9E7DFFFE9E7DFFFE9E7DFFFE9E7DFFFE9E7DFFFE9E7
      DFFFE9E7DFFFA7A180FFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000F8F8F8FFBB5515FFEDB2
      7DFFF0B57EFFF1B67EFFFEFEFEFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD2D2D2FFFBFAFBFFEBB07CFFE4A9
      7AFFDCA077FFAA4A1BFFAFAAAFFFD0CDD0FF000000000000000000000000FCFC
      FCFFDBB48FFFCA792BFFDBA46FFFE2B78EFFE2B78EFFE2B78EFFE2B78EFFE2B7
      8EFFE2B78EFFE2B78EFFE8C5A5FFF6EADEFFF3E2D1FFE3B991FFE2B78EFFE2B7
      8EFFE2B78EFFE2B78EFFE2B78EFFE2B78EFFDCA774FFCC7E33FFA8825DFFCACA
      CAFFEDEDEDFFFCFCFCFF0000000000000000F4F4F4FFF2B67BFFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF0B47CFFF1D9
      CAFFEFD6C7FFEAD0C3FFE4C9BFFFDBA37EFFC1BFC1FFE7E6E7FFF9F9F9FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFE8E6DEFFE8E6DEFFE8E6
      DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6
      DEFFE8E6DEFFA7A180FFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFB95416FFECB8
      89FFF0BB8AFFF1BD8BFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFBFBFBFFF9F8F9FFEBB688FFE4AE
      85FFDBA581FFA9491BFFBCB8BCFFDAD8DAFF0000000000000000000000000000
      0000FBFBFBFFD5A374FFCB7A2CFFDAA36DFFE5BD98FFE5BE98FFE5BE98FFE5BE
      98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE
      98FFE5BE98FFE5BE98FFE5BD98FFDCA774FFCC7E33FFB17F50FFCACACAFFECEC
      ECFFFBFBFBFF000000000000000000000000F4F4F4FFF3B880FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFEEB47EFFEFD7
      C8FFECD2C5FFE6CBC1FFDEA680FFC1BFC1FFE7E6E7FFF9F9F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFEBE9E2FFEBE9E2FFEBE9
      E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9
      E2FFEBE9E2FFA7A180FFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFB75316FFEBBA
      92FFEEBE93FFF0C094FFFBFAFBFFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD1D0D1FFD0CFD0FFF7F5F7FFE9B891FFE1B0
      8DFFD8A689FFA7471CFFD5D3D5FFEBEAEBFF0000000000000000000000000000
      0000FEFEFEFFFBFBFBFFDBB490FFC77424FFD7995EFFE5BD96FFE8C5A3FFE8C5
      A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5
      A3FFE8C5A3FFE5BE99FFD99E65FFC77627FFB48E69FFD1D1D1FFEEEEEEFFFBFB
      FBFFFEFEFEFF000000000000000000000000F4F4F4FFF3BC87FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF4F4F4FFF3F2F3FFEDB684FFECD3
      C6FFE7CDC2FFDFA880FFC1BFC1FFE7E6E7FFF9F9F9FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F9FFA7A180FFF0EEE9FFF0EEE9FFEFEE
      E8FFEFEEE8FFEFEEE8FFEFEEE8FFEFEEE8FFEFEEE8FFEFEEE8FFEFEEE8FFF0EE
      E9FFF0EEE9FFA7A180FFA1A1A1FFEBEBEBFFF9F9F9FF00000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFBFBFBFFB853
      16FFECBC95FFEEBF96FFF9F7F9FFF9F7F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8
      F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8
      F9FFF9F8F9FFF9F8F9FFF9F7F9FFF9F7F9FFF7F5F7FFF3F0F3FFE6B592FFDEAD
      8EFFAB4A1BFFD8D6D8FFEEEDEEFFF9F9F9FF0000000000000000000000000000
      00000000000000000000FCFCFCFFE6CFB9FFC9813CFFCD7F35FFDEAB7AFFE9C7
      A7FFEBCCAEFFEBCCAEFFEBCCAEFFEBCCAEFFEBCCAEFFEBCCAEFFEBCCAEFFEAC9
      AAFFE0AF81FFCE833BFFBD7531FFC2AB95FFDFDFDFFFF3F3F3FFFCFCFCFF0000
      000000000000000000000000000000000000F5F5F5FFF4BF8CFFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6F6FFF5F4F5FFF2F1F2FFEBB688FFE9CF
      C3FFE0A981FFC1BFC1FFE7E6E7FFF9F9F9FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFAFFA7A180FFF5F4F0FFF5F4F0FFF5F4
      F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4
      F0FFF5F4F0FFA7A180FFA5A5A5FFEDEDEDFFFAFAFAFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFFB75316FFB95416FFBB5515FFBB5615FFBB5615FFBB5615FFBB5615FFBB56
      15FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB56
      15FFBB5615FFBB5615FFBB5615FFBB5515FFBA5416FFB75316FFB35018FFAD4C
      1AFFE5E4E5FFF1F1F1FFFBFBFBFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000FDFDFDFFF8F7F6FFDEBD9DFFC87E38FFCA78
      2AFFD49354FFDDA775FFE2B68BFFE3B990FFE2B68BFFDDA977FFD69659FFCB7A
      2CFFC17831FFC5A484FFDBDAD9FFEEEEEEFFF9F9F9FFFDFDFDFF000000000000
      000000000000000000000000000000000000F7F7F7FFF5C290FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF8F8F8FFF6F6F6FFF4F3F4FFF1EFF1FFE9B58AFFE3AC
      82FFC2C1C2FFE6E6E6FFF9F9F9FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFFA7A180FFFAF9F7FFFAF9F7FFFAF9
      F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9F8FFFAF9
      F7FFFAF9F7FFA7A180FFA9A9A9FFF2F2F2FFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFDFFFAFAFAFFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8
      F8FFFAFAFAFFFDFDFDFFFEFEFEFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFF9F9F9FFEADC
      CFFFD9B38FFFCE9966FFC8884BFFC58343FFC68649FFC6925FFFCCA682FFD7C9
      BCFFE7E7E7FFF1F1F1FFF9F9F9FFFDFDFDFF0000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFF5C393FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF4C495FFF3C395FFF2C194FFF0BF93FFECBB91FFE6B38CFFD7D6
      D7FFEAEAEAFFF9F9F9FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFA7A180FFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFF0F0F0FFF6F6F6FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFBFBFBFFF7F7F7FFF4F4F4FFF2F2F2FFF1F1F1FFF2F2F2FFF4F4F4FFF7F7
      F7FFFBFBFBFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFBFBFBFFF7F7F7FFF4F4
      F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF7F7
      F7FFFBFBFBFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFF0F0F0FFD9D9D9FFB5B5
      B5FF8C8C8CFF646464FF4D4D4DFF434343FF404040FF454545FF565656FF7878
      78FF9C9C9CFFBFBFBFFFDDDDDDFFF3F3F3FFFCFCFCFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF1F1F1FFE0DFE0FFD5D4D5FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD5D4
      D5FFE0DFE0FFF1F1F1FFFCFCFCFF0000000000000000FEFEFEFFFDFDFDFFFDFD
      FDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFBFBFBFFF6F6
      F6FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3
      F3FFF6F6F6FFFBFBFBFFFEFEFEFF000000000000000000000000000000000000
      00000000000000000000FDFDFDFFF2F2F2FFD8D8D8FFA9A8A7FF706B67FF463C
      33FF4C361FFF513314FF583511FF5D3712FF3F390EFF0B3D06FF062A06FF111F
      11FF232823FF4B4B4BFF848484FFB7B7B7FFE0E0E0FFF6F6F6FFFEFEFEFF0000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FAFFE7E7E7FFCBCACBFFB9B7B9FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2
      B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2
      B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB4B2B4FFB9B7
      B9FFCBCACBFFE7E7E7FFFAFAFAFF00000000FEFEFEFFFCFCFCFFFAFAFAFFF8F8
      F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFF9F9F9FFFBFBFBFFFEFEFEFF000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFCFCFCFFF8F8F8FFF6F6F6FFF5F5F5FFF5F5F5FFF3F3F3FFEAEAEAFFDBDB
      DBFFD2D2D2FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD2D2
      D2FFDEDEDEFFF0F0F0FFFCFCFCFF000000000000000000000000000000000000
      000000000000FBFBFBFFE7E7E7FFB6B5B5FF7A7065FF5F4429FF7A4B1CFF985C
      1EFFA66321FFA96622FFAC6823FFAC6823FF82751EFF1F9413FF119310FF0D82
      0DFF085808FF062F06FF131B13FF434343FF898989FFC6C6C6FFEEEEEEFFFCFC
      FCFF00000000000000000000000000000000000000000000000000000000F8F8
      F8FFDD965FFFDE9760FFDE9862FFDE9862FFDE9964FFDE9964FFDF9B67FFDF9B
      67FFDF9B67FFDF9B67FFDF9B68FFDF9B68FFDF9B68FFDF9B68FFDF9B68FFDF9B
      68FFDF9B67FFDF9B67FFDE9964FFDE9964FFDD9862FFDC9762FFDC955FFFDA93
      5FFFBEBCBEFFE1E1E1FFF8F8F8FF00000000FDFDFDFFFAFAFAFFB1B1B1FFADAD
      ADFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
      ACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
      ACFFACACACFFACACACFFADADADFFAFAFAFFFEAEAEAFFFCFCFCFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFEEEEEEFFDEDEDEFFD5D5D5FFD2D2D2FFD2D2D2FFCFCFCFFFC1C1C1FFACAC
      ACFF9E9E9EFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
      9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFFA1A1
      A1FFBABABAFFE0E0E0FFF8F8F8FF000000000000000000000000000000000000
      0000F9F9F9FFDFDEDEFF9F9993FF775C42FF86521EFFA46321FFAE6823FFB06A
      25FFB26B24FFB26C25FFB26C24FFB16D24FF887920FF209B13FF13A112FF119F
      11FF109D10FF0E8D0EFF096109FF042504FF202420FF646464FFB5B5B5FFE8E8
      E8FFFCFCFCFF000000000000000000000000000000000000000000000000F8F8
      F8FFE29B60FFDDD8DDFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9
      DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9
      DEFFDED9DEFFE0DBE0FFE0DBE0FFDFDADFFFDED9DEFFDCD6DCFFDAD3DAFFDB94
      5FFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FDFDFDFF2199C6FF2199C6FF2199
      C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199
      C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199
      C6FF2199C6FF2198C5FF2198C5FF8CA5AFFFD8D8D8FFFAFAFAFFFDFDFDFF0000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFEAEA
      EAFFCDCDCDFFAEAEAEFF9E9E9EFF9B9B9BFF9B9B9BFF989898FFF1A963FFF1A9
      64FFF2AE6CFFF2AE6CFFF2AE6DFFF2AE6DFFF2AE6DFFF2AE6DFFF2AE6DFFF2AE
      6DFFF2AE6CFFF2AE6CFFF1AC69FFF1AC69FFF1AB67FFF1AB67FFF1A964FFF1A9
      64FFA1A1A1FFD5D5D5FFF6F6F6FF00000000000000000000000000000000F9F9
      F9FFDCDCDCFF9E9284FF825526FFA16121FFAB6723FFAE6924FFB06A24FFB26C
      25FFB46D25FFB56D25FFB56E25FFB46E25FF8A7B20FF209E13FF13A312FF12A2
      12FF11A011FF119D11FF0F980FFF0D860DFF074507FF0D170DFF535353FFADAD
      ADFFE8E8E8FFFCFCFCFF0000000000000000000000000000000000000000F8F8
      F8FFEDA461FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7
      E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7
      E8FFE8E7E8FFEAE9EAFFEAE9EAFFE9E8E9FFE8E7E8FFE5E3E5FFDCD6DCFFDC94
      5DFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF229BC7FF229BC7FF51CE
      E9FF51CEE9FF56CEE9FF5DCFE9FF69D1E9FF72D2E9FF79D3E9FF79D3E9FF7BD3
      E9FF7CD3E9FF7CD3E9FF7CD3E9FF7CD3E9FF7BD3E9FF79D3E9FF79D3E9FF76D2
      E8FF73D0E8FF6FCFE6FF2198C5FF6E9FB2FFACACACFFEBEBEBFFFCFCFCFFFEFE
      FEFF0000000000000000000000000000000000000000FCFCFCFFEEEEEEFFCDCD
      CDFF2797B8FF2B99B9FF2F9BBBFF339DBCFF379FBDFF3BA1BFFFF1A963FFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF1A9
      64FF9B9B9BFFD2D2D2FFF5F5F5FF000000000000000000000000FCFCFCFFE1E3
      E1FF9D9986FF8E5C27FFA76522FFAC6724FFAF6924FFB16A25FFB26C25FFB46D
      26FFB56E26FFB66E26FFB66F26FFB66F26FF8C7C21FF21A114FF13A413FF12A4
      12FF12A212FF11A111FF119E11FF0F9B0FFF0F910FFF085408FF0B170BFF5353
      53FFB6B6B6FFEFEFEFFFFEFEFEFF00000000000000000000000000000000F8F8
      F8FFEFA55FFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E7FFDDD7DDFFDC94
      5DFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF229CC9FF56D2EBFF239D
      C9FF52D1EBFF58D2EBFF5FD3EBFF6AD4EBFF74D5EBFF7BD6EBFF7DD6EBFF7FD7
      EBFF80D7EBFF80D7EBFF80D7EBFF80D7EBFF7FD7EBFF7DD5EBFF7BD5EBFF77D5
      EAFF74D3EAFF6FD2E9FF5AC2DFFF2198C5FF8FA5ADFFDADADAFFFAFAFAFFFDFD
      FDFF0000000000000000000000000000000000000000F8F8F8FFDEDEDEFF2496
      B7FF28CEFFFF2DD0FFFF31D0FFFF35D1FFFF39D2FFFF3CD3FFFFF1A760FFEEEE
      EEFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFFF1A8
      61FF9B9B9BFFD2D2D2FFF5F5F5FF0000000000000000FEFEFEFFECECECFF92AF
      91FF3E7B1DFF956C20FFAA6823FFAF6924FFB16B24FFB36C25FFB46D25FFB66E
      26FFB76E26FFB86F26FFB87026FFB87026FF8D7D21FF21A214FF13A613FF13A5
      13FF12A412FF11A211FF11A111FF119F11FF109A10FF0F910FFF085408FF0D17
      0DFF656565FFC8C8C8FFF7F7F7FF00000000000000000000000000000000F8F8
      F8FFF0A65EFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEAEAEAFFE9E8E9FFDDD8DDFFDC93
      5AFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF239FCBFF59D5EEFF239F
      CBFF55D4EEFF5AD5EEFF61D6EEFF6DD8EEFF76D9EEFF7DD9EEFF7FD9EEFF81DA
      EEFF83DAEEFF83DAEEFF83DAEEFF83DAEEFF81DAEEFF7FD9EDFF7DD9EDFF79D8
      EDFF74D6ECFF70D4EBFF69CFE8FF2199C6FF73A0B2FFACACACFFEDEDEDFFFCFC
      FCFFFEFEFEFF00000000000000000000000000000000F6F6F6FF2194B6FF25CE
      FFFF29CFFFFF2ED0FFFF32D1FFFF37D2FFFF3AD2FFFF3ED3FFFFF0A65EFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0A6
      5EFF9B9B9BFFD2D2D2FFF5F5F5FF0000000000000000F6F6F6FFB9CAB9FF328F
      2BFF189711FF5D821AFFA76A23FFAF6B24FFB26C25FFB46D26FFB66E26FFB86F
      26FFB86F27FFBA7027FFB97027FFB97127FF8E7E22FF22A414FF13A713FF13A7
      13FF12A512FF12A412FF12A212FF11A111FF119E11FF109A10FF0F900FFF0743
      07FF212421FF8A8A8AFFE0E0E0FFFCFCFCFF000000000000000000000000F8F8
      F8FFF0A55DFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEAEAEAFFE8E7E8FFDDD8DDFFDC93
      5AFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF24A1CDFF5CD9F1FF5AD9
      F1FF24A1CDFF5DD9F1FF62DAF1FF6CDBF1FF74DCF1FF7CDEF1FF80DEF1FF83DE
      F1FF84DEF1FF84DEF1FF84DEF1FF84DEF1FF83DEF1FF7FDDF0FF7DDCF0FF79DB
      EFFF74D9EEFF6FD7EDFF6BD5ECFF53C2DFFF2199C5FF94A5ACFFDDDDDDFFFAFA
      FAFFFDFDFDFF00000000000000000000000000000000F5F5F5FF2194B6FF26CE
      FFFF2ACFFFFF2FD0FFFF33D1FFFF37D2FFFF3BD3FFFF3FD4FFFFF0A55DFFEDED
      EDFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEDEDEDFFF0A6
      5EFF9B9B9BFFD2D2D2FFF5F5F5FF00000000FCFCFCFFDDE3DDFF55A055FF1396
      11FF139B12FF239813FF85781FFFB06C24FFB46D25FFB66E26FFB86F26FFB970
      26FFBA7026FFBB7027FFBB7126FFBA7126FF8F7F21FF22A414FF13A913FF13A8
      13FF12A712FF12A612FF12A312FF12A211FF12A012FF129E11FF109A10FF0F85
      0EFF092506FF434343FFB6B6B6FFF3F3F3FF000000000000000000000000F8F8
      F8FFF0A45AFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E7E8FFDDD8DDFFDC91
      56FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF25A4CFFF5FDDF4FF5EDD
      F4FF25A4CFFF5EDDF4FF63DEF4FF6BE0F4FF72E1F4FF7BE1F4FF7FE1F4FF83E2
      F4FF84E2F4FF85E2F4FF85E2F4FF83E2F4FF82E2F4FF7FE0F3FF7CDFF3FF78DF
      F2FF74DCF1FF6EDAF0FF69D7EEFF5ED0E8FF219AC6FF78A1B1FFACACACFFF0F0
      F0FFFCFCFCFFFEFEFEFF000000000000000000000000F5F5F5FF2295B7FF26CE
      FFFF2BCFFFFF2FD0FFFF33D1FFFF38D2FFFF3BD3FFFF3FD4FFFFF0A45AFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF0A3
      59FF9B9B9BFFD2D2D2FFF5F5F5FF00000000F5F5F5FFA7C5A7FF149514FF119B
      11FF129D12FF169F13FF439118FFA17423FFB56E25FFB86F26FFB97026FFBB71
      27FFBB7127FFBD7228FFBD7328FFBD7428FF908022FF23A715FF14AA13FF14AA
      14FF13A913FF14A914FF13A513FF12A412FF12A112FF149F12FF1F9812FF4A84
      16FF544A12FF1C1913FF848484FFDDDDDDFF000000000000000000000000F8F8
      F8FFF0A358FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E7E8FFDDD8DDFFDC91
      56FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF26A7D1FF60E1F7FF5FE1
      F7FF5EE0F7FF26A7D1FF60E1F7FF67E2F7FF6DE3F7FF75E4F7FF7AE4F7FF7EE5
      F7FF80E5F7FF81E5F7FF81E5F7FF80E5F7FF7EE5F7FF7CE4F6FF79E3F6FF75E1
      F5FF70DFF4FF6BDDF2FF65D9F0FF60D6EEFF49C0E0FF2199C6FF99A6ACFFDFDF
      DFFFFAFAFAFFFEFEFEFF000000000000000000000000F5F5F5FF2194B6FF26CE
      FFFF2ACFFFFF2ED0FFFF33D1FFFF37D2FFFF3AD2FFFF3ED3FFFFF0A358FFEDED
      EDFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEDEDEDFFF0A3
      59FF9B9B9BFFD2D2D2FFF5F5F5FF00000000E3E6E3FF4AA24AFF109A10FF119E
      11FF129F12FF14A114FF1BA114FF68871DFFB27025FFB87026FFBA7026FFBB71
      27FFBD7128FFBD7228FFBE7328FFBD7328FF918123FF22A814FF14AB14FF13AB
      13FF13AA13FF13A913FF13A613FF13A413FF209F13FF4A8E17FF85781EFFA26A
      21FF985D1FFF32200BFF4B4B4BFFBEBEBEFF000000000000000000000000F8F8
      F8FFF0A256FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E7FFDCD7DCFFDC8F
      51FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF27A9D2FF5FE4F9FF5FE4
      F9FF5EE4F9FF27A9D2FF5EE4F9FF64E4F9FF6AE5F9FF70E6F9FF76E6F9FF7BE7
      F9FF7CE7F9FF7DE8F9FF7DE8F9FF7CE7F9FF7AE7F9FF79E7F9FF76E5F8FF71E4
      F7FF6DE1F6FF67DFF4FF62DBF2FF5CD8F0FF51CDE8FF219AC6FF7CA1AFFFACAC
      ACFFF2F2F2FFFCFCFCFFFEFEFEFF0000000000000000F5F5F5FF2194B6FF25CE
      FFFF29CFFFFF2DD0FFFF31D0FFFF35D1FFFF38D2FFFF3CD3FFFFF0A257FFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF0A1
      54FF9B9B9BFFD2D2D2FFF5F5F5FF00000000B9CDB6FF1B9719FF129E12FF12A0
      12FF3DB13DFF91D391FF67C364FF2AA016FF937D22FFB97226FFBB7127FFBD73
      28FFBE7328FFC27A33FFDBB68FFFDCB790FF95892DFF23A916FF14AC14FF20B1
      1FFF85D285FF87D286FF2AA71FFF469519FF817E1EFFA87023FFAE6B23FFAC69
      23FFA96622FF603A13FF282623FF9C9C9CFF000000000000000000000000F8F8
      F8FFF0A155FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E7FFDCD6DCFFDC8F
      51FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF28AAD3FF5AE5FBFF5AE5
      FBFF5AE5FBFF5AE5FBFF28AAD4FF60E6FBFF65E7FBFF6BE8FBFF70E8FBFF74E9
      FBFF75E9FBFF76E9FBFF76E9FBFF75E8FBFF74E8FBFF71E8FAFF6EE6FAFF6BE5
      F9FF66E2F8FF61E0F6FF5CDDF4FF56DAF2FF53D5EFFF3EBEDFFF219AC6FF9EA8
      ABFFE2E2E2FFFAFAFAFFFEFEFEFF0000000000000000F5F5F5FF1F93B6FF23CD
      FFFF27CEFFFF2BCFFFFF2ED0FFFF32D1FFFF35D1FFFF38D2FFFFF0A257FFEEEE
      EEFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFFF0A1
      54FF9B9B9BFFD2D2D2FFF5F5F5FF0000000081B57FFF129910FF129F12FF12A1
      12FF55BC55FFD3EDD3FF90D490FF18A715FF4C961AFFAC7625FFBC7227FFBD72
      28FFBE7429FFC37D37FFECDAC5FFECDAC6FF978D32FF23AA16FF16AD14FF26B2
      25FFC3E7C1FFD2E2C3FF908C32FFAC7526FFB37026FFB36E25FFB06B25FFAF6A
      24FFAC6722FF8B541CFF201912FF787878FF000000000000000000000000F8F8
      F8FFF0A155FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE6E5E6FFDCD6DCFFDC8F
      51FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF28ABD4FF55E7FCFF55E7
      FCFF55E7FCFF56E7FCFF28ABD4FF5EE8FCFF63E8FCFF67E8FCFF6AE9FCFF6DE9
      FCFF6EE9FCFF6EE9FCFF6EE9FCFF6EE9FCFF6DE9FCFF6BE9FCFF68E7FBFF65E6
      FAFF61E4F9FF5CE2F8FF58DEF6FF52DBF3FF4ED7F1FF44CAE8FF219AC6FF81A2
      AEFFADADADFFF5F5F5FFFCFCFCFFFEFEFEFF00000000F5F5F5FF1D92B5FF20CD
      FFFF24CEFFFF27CEFFFF2BCFFFFF2ED0FFFF31D0FFFF34D1FFFFF0A358FFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0A3
      59FF9B9B9BFFD2D2D2FFF5F5F5FF00000000549F48FF119E11FF12A012FF13A2
      13FF55BC55FFD4EED4FF90D590FF16AA15FF1EA816FF778A1FFFBA7428FFBF74
      29FFBF7429FFC57F38FFECDAC7FFEDDBC8FF978D33FF25AA17FF1DAD15FF48A9
      29FFD7E1C4FFE9DCC7FFBE7D38FFB97229FFB66F27FFB66F27FFB26C26FFB06A
      25FFAE6924FF9F6020FF2C1B0AFF565656FF000000000000000000000000F8F8
      F8FFF0A256FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEAEAEAFFE7E6E7FFDCD6DCFFDC8F
      51FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF28ACD5FF53E6FDFF53E6
      FDFF54E6FDFF56E6FDFF58E7FDFF28ACD5FF61E8FDFF64E9FDFF65E9FDFF66E9
      FDFF67E9FDFF67E9FDFF67E9FDFF66E9FDFF66E9FDFF64E9FDFF61E8FCFF5FE6
      FBFF5CE5FAFF58E2F9FF54E0F7FF4FDCF5FF4CD8F2FF49D4EFFF38BBDEFF219A
      C7FFA3A8ABFFE4E4E4FFFAFAFAFFFEFEFEFF00000000F5F5F5FF1A91B4FF1DCC
      FFFF20CDFFFF23CDFFFF26CEFFFF29CFFFFF2CCFFFFF2ED0FFFFF0A45BFFF0F0
      F0FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF0F0F0FFF0A3
      59FF9B9B9BFFD2D2D2FFF5F5F5FF000000003B9327FF129E12FF12A012FF13A2
      13FF56BD56FFD5EED5FF91D691FF17AA16FF1AAC17FF57971EFFB77729FFBE75
      2AFFC0762AFFC58039FFEDDBC7FFEDDBC8FF9F8D35FF4C9D1CFF7B8D21FFB186
      37FFEBDCC7FFEEDECEFFD0A070FFCC9864FFC78F58FFBC7D3CFFB46E27FFB26B
      25FFAE6A25FFA56321FF43280DFF454545FF000000000000000000000000F8F8
      F8FFF0A358FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEBEBEBFFE7E6E7FFDCD7DCFFDC91
      56FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF28ACD5FF54E7FDFF55E7
      FDFF55E7FDFF58E8FDFF5AE8FDFF28ACD5FF5FE9FDFF61E9FDFF62E9FDFF62E9
      FDFF63E9FDFF63E9FDFF63E9FDFF62E9FDFF62E9FDFF60E9FDFF5FE8FDFF5CE8
      FCFF5AE5FBFF56E3FAFF53E1F8FF4FDDF6FF4CDAF3FF4AD6F1FF41C8E6FF219A
      C6FF87A4AFFFAFAFAFFFF8F8F8FFFDFDFDFF00000000F5F5F5FF168FB3FF19CB
      FFFF1CCCFFFF1ECCFFFF21CDFFFF23CDFFFF26CEFFFF28CEFFFFF0A760FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0A7
      60FF9B9B9BFFD2D2D2FFF5F5F5FF000000002F901AFF129F12FF16A216FF1AA6
      1AFF5BC05BFFD6EFD6FF9AD99AFF2FB32DFF3DAF2EFF979139FFC2823EFFC37D
      36FFC27A31FFC78541FFEEDCCAFFEFDDCBFFBD883FFFB18030FFBF7A31FFC584
      41FFEEDDCBFFF3E6DAFFEDDCCCFFEDDCCBFFEAD7C5FFE3C8ADFFC7935FFFB572
      2DFFAF6B26FFA76622FF513110FF404040FF000000000000000000000000F8F8
      F8FFF0A45BFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFECECECFFE8E7E8FFDCD7DCFFDC91
      56FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF29ADD6FF5DE9FDFF5EE9
      FDFF5FE9FDFF61EAFDFF63EAFDFF66EAFDFF29ADD6FF68EBFEFF67EBFEFF67EB
      FEFF67EBFEFF67EBFEFF67EBFEFF67EBFEFF65EAFDFF64EAFDFF64EAFDFF62E8
      FDFF5FE7FCFF5BE6FBFF56E3F9FF52E0F7FF4FDCF5FF4DD8F2FF4CD5EFFF3ABA
      DCFF219AC7FFAEB0B0FFEBEBEBFFFDFDFDFF00000000F5F5F5FF128DB1FF1FCC
      FDFF22CDFEFF24CDFEFF27CEFEFF29CEFEFF2ACEFEFF2CCFFEFFF0AA66FFF2F2
      F2FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF2F2F2FFF0A7
      60FF9E9E9EFFD4D4D4FFF6F6F6FF000000002E9016FF17A117FF23A723FF25A9
      25FF63C263FFD8EFD8FFD0EDD0FFC8E8C7FFD5E5C7FFE9DDCAFFEDDCC9FFD29F
      6BFFC5803AFFC98948FFEEDECBFFEFDECCFFC88947FFC48039FFC37F39FFC888
      47FFEEDDCBFFEEDECEFFC98F55FFC5894EFFD2A579FFEBD8C6FFE6CFB8FFC08A
      51FFB27332FFA56A25FF4D3A10FF434343FF000000000000000000000000F8F8
      F8FFF0A65DFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEDEDEDFFE8E7E8FFDDD8DDFFDC94
      5CFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF29ADD6FF68EAFDFF69EA
      FDFF6AEAFDFF6BEBFDFF6EEBFDFF71ECFDFF29ADD6FF29ADD6FF29ADD6FF29AD
      D6FF29ADD6FF29ADD6FF29ADD6FF29ADD6FF29ADD6FF28ACD5FF28ACD5FF28AC
      D5FF28ABD4FF28AAD4FF27A9D3FF27A7D1FF26A6D0FF25A4CEFF24A1CCFF229D
      C9FF219AC6FFCBE5EEFFFCFCFCFFFEFEFEFF00000000F5F5F5FF0F8CB0FF28CE
      FEFF2ACEFEFF2BCFFEFF2DCFFEFF2FD0FEFF30D0FEFF31D0FEFFF1AE6DFFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1B1
      72FFAEAEAEFFDEDEDEFFF8F8F8FF00000000328F18FF1DA41DFF2CAB2CFF2EAE
      2EFF68C468FFDAF0DAFFB3E1B2FF88C070FFCBA977FFD5A778FFD5A677FFCC91
      55FFC78442FFCC8F50FFEFDFCDFFF1E0CEFFCB8D4FFFC88643FFC68441FFCB8D
      4FFFEFDECDFFF0DFCFFFC88C50FFC38444FFC28446FFE2C7ABFFEEE3D6FFBFA3
      6EFF878834FF50891DFF184809FF4D4D4DFF000000000000000000000000F8F8
      F8FFF0A65FFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFE9E8E9FFDED9DEFFDC94
      5CFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FCFCFCFF29ADD6FF79ECFDFF7AEC
      FDFF7AEDFDFF7BEDFDFF7DEDFDFF80EEFDFF83EEFDFF84EEFDFF85EEFEFF85EE
      FEFF85EEFEFF84EEFEFF84EEFEFF84EEFDFF84EEFDFF83EDFCFF82EDFCFF81EC
      FCFF7FEBFBFF7CE9FAFF27A9D3FFABABABFFF6F6F6FFFBFBFBFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFEFEFEFF0000000000000000F5F5F5FF0B8AAFFF32D0
      FEFF32D1FEFF33D1FEFF35D1FEFF36D1FEFF36D1FDFF37D2FEFFF1B273FFF4F4
      F4FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF4F4F4FFF2B173FFF2B173FFF2B173FFF1B172FFF1B172FFF1B172FFF1B1
      72FFCCCCCCFFEEEEEEFFFCFCFCFF00000000389321FF1DA31DFF34AD33FF37B0
      37FF6EC76EFFDAEFD9FFABD8A2FF919843FFC38949FFC68849FFC78849FFC888
      49FFC98949FFCD9256FFEFDFCEFFEFE0CFFFCD9256FFC9894AFFC88849FFCB91
      56FFEEDFCEFFEEDFCFFFC89056FFC3884BFFC69963FFDFD4BAFFDCE7D1FF75BD
      67FF38A730FF1A9917FF0C490BFF646464FF000000000000000000000000F8F8
      F8FFF0A861FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFE9E8E9FFDED9DEFFDC94
      5CFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FDFDFDFF29ADD6FF88EEFDFF88EE
      FDFF89EEFDFF89EFFDFF8BEFFDFF8DEFFDFF8FEFFDFF92F0FDFF93F0FEFF93F0
      FEFF92F0FEFF91F0FDFF90EFFDFF8EEEFCFF8DEEFCFF8DEEFCFF8DEEFCFF8BED
      FCFF89ECFBFF88EAFAFF27A9D3FFADADADFFF8F8F8FFFDFDFDFF000000000000
      00000000000000000000000000000000000000000000F5F5F5FF0888AEFF3BD2
      FEFF3BD3FEFF3CD3FEFF3DD3FEFF3ED3FEFF3ED3FDFF3FD4FEFFF2B67BFFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF3B77EFFF7E0CEFFF7E0CEFFF7E0CEFFF7E0CEFFF4BE89FFBFBF
      BFFFE7E7E7FFFAFAFAFFFEFEFEFF00000000469E37FF1AA11AFF3AAF3AFF3FB4
      3FFF75C975FFDEF1DDFFD8E4CAFFDCCCACFFE4C9ADFFE5CAAEFFE4C9ACFFE6CA
      AEFFE5C8ACFFE8CDB2FFF3E6DAFFF4E8DCFFE6CBB0FFE6CAADFFDBB58CFFCE97
      5FFFEFE1D2FFF1E7DBFFE1CCB0FFDACEAEFFD5DCBEFFD6ECD3FFABDCA9FF51B8
      4FFF33AB31FF149513FF1B451AFF8C8C8CFF000000000000000000000000F8F8
      F8FFF0A863FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFE9E8E9FFDED9DEFFDC94
      5CFFB9B7B9FFE0DFE0FFF8F8F8FF00000000FDFDFDFF29ADD6FF99F1FDFF9BF1
      FDFF9DF1FDFF9EF1FEFF9EF1FEFF9FF1FEFFA0F2FDFFA0F2FEFFA0F2FEFFA0F2
      FEFF9DF0FDFF99F0FCFF96EFFCFF93EFFCFF92EFFCFF91EEFCFF91EEFCFF90ED
      FBFF8EECFAFF8DEBF9FF27A9D2FFB1B1B1FFFAFAFAFFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000F5F5F5FF0687ADFF45D5
      FEFF46D5FEFF46D5FEFF46D5FEFF47D5FEFF48D5FEFF48D5FEFFF3B880FFF6F6
      F6FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF6F6F6FFF3B77EFFF7E0CEFFF7E0CEFFF7E0CEFFF2B77DFF999999FFCFCF
      CFFFF4F4F4FFFEFEFEFF00000000000000006BB567FF159E15FF39AE39FF48B6
      48FF6AC369FFB9D9ADFFDBCCB0FFE3CBB1FFE4CBB1FFE5CBB1FFE6CBB1FFE6CC
      B2FFE6CCB2FFE6CCB2FFE7CCB3FFE7CDB3FFE6CCB1FFE6CCB1FFDAB992FFBB9F
      5EFFBBD5A6FFB4DDACFFAFDEABFFADDEAAFFA5DAA3FF88CF86FF59BD58FF46B4
      46FF2DA82DFF0E880EFF314331FFB5B5B5FF000000000000000000000000F8F8
      F8FFF0AA67FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEAE9EAFFDFDADFFFDC98
      63FFB9B7B9FFE0DFE0FFF8F8F8FF00000000FEFEFEFF28ACD5FFA4F1FCFFA9F3
      FDFFACF3FEFFAFF3FEFFAFF4FEFFB0F4FEFFB0F4FEFFB1F4FEFFAFF3FDFFADF3
      FDFFA9F2FDFFA4F1FDFF28ACD5FF28ACD5FF28ACD5FF28ABD4FF28ABD4FF28AA
      D4FF27AAD3FF27A9D2FF27A7D1FFFAFAFAFFFCFCFCFFFDFDFDFFFEFEFEFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF00000000F5F5F5FF0486ADFF50D7
      FEFF51D7FEFF51D7FEFF52D7FEFF52D7FEFF52D7FEFF52D8FEFFF3BC87FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF4BE89FFF7E0CEFFF7E0CEFFF4BE89FF0486ADFF9B9B9BFFD2D2
      D2FFF6F6F6FF000000000000000000000000B4D8B4FF139B13FF2EA92EFF4DB6
      4DFF54B851FF90A659FFC4965EFFC99560FFCB9560FFCC9660FFCD9760FFCE97
      60FFCF9861FFCF9860FFCF9862FFCF9961FFCF9960FFCC9960FFA0A75AFF6CB9
      55FF57BF53FF53C152FF52BE51FF52BE51FF52BC51FF51BB51FF50B950FF49B4
      49FF21A321FF0F6F0FFF666F66FFD9D9D9FF000000000000000000000000F8F8
      F8FFF0AD6AFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEBEAEBFFE0DBE0FFDC98
      63FFBCBABCFFE1E1E1FFF8F8F8FF0000000000000000FDFDFDFF28ACD5FFB8F4
      FDFFBBF4FDFFBEF5FDFFC0F5FDFFC0F5FDFFC0F5FDFFC0F5FDFFBFF5FDFFBBF4
      FDFFB7F3FDFF28ABD4FFF6F6F6FFFAFAFAFFFCFCFCFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFDFDFDFFFCFCFCFFFAFAFAFFF8F8
      F8FFF7F7F7FFF7F7F7FFF8F8F8FFFAFAFAFF00000000F5F5F5FF0285ACFF5CDA
      FEFF5CDAFEFF5CDAFEFF5CDAFEFF5DDAFEFF5DDAFEFF5DDAFEFFF4BF8CFFF8F8
      F8FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF8F8F8FFF4BE89FFF7E0CEFFF4BE89FF5CDAFEFF0285ACFF9B9B9BFFD2D2
      D2FFF6F6F6FF000000000000000000000000ECF2ECFF2AA12AFF1FA11FFF4DB4
      4BFF77B15CFFBB9D65FFC99A66FFCB9A68FFCD9B68FFCE9B69FFCF9C69FFCF9D
      69FFD09D69FFD19D6AFFD19D69FFD19D69FFD19E69FFD09E69FFB9A365FF7AB8
      5EFF5EC15CFF5CC25BFF5BC15BFF5BC05BFF5ABF5AFF59BE59FF57BB57FF40AF
      40FF169716FF225821FFA7A8A7FFF0F0F0FF000000000000000000000000F8F8
      F8FFF1B070FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF0F0F0FFEBEAEBFFE0DBE0FFDD9D
      6CFFC6C5C6FFE7E7E7FFFAFAFAFF000000000000000000000000FEFEFEFF28AC
      D5FFC5F6FDFFC7F6FDFFC8F6FDFFC8F6FDFFC8F6FDFFC7F5FDFFC6F5FDFFC3F4
      FCFF28ABD4FFF7F7F7FFFBFBFBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFF000000000000000000000000FEFEFEFFFBFBFBFFB2B2B2FFAFAF
      AFFFADADADFFACACACFFABABABFFA9A9A9FF00000000F5F5F5FF0185ACFF68DD
      FEFF68DDFEFF69DCFEFF69DCFEFF69DCFEFF69DCFEFF69DCFEFFF5C290FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF5C596FFF4BE89FF68DDFEFF68DDFEFF0185ACFF9B9B9BFFD2D2
      D2FFF6F6F6FF000000000000000000000000FCFCFCFF93CA93FF159B14FF46A9
      3CFFA6A465FFC89C6DFFCB9D6DFFCD9E6FFFCE9E6FFFCF9F70FFD0A070FFD1A1
      70FFD2A170FFD2A171FFD2A170FFD3A271FFD2A170FFD2A270FFD0A16FFFBDA7
      6EFF81BB66FF65C463FF63C363FF62C262FF61C161FF60BF60FF58BA58FF2EA7
      2EFF127C12FF647964FFD9D9D9FFFBFBFBFF000000000000000000000000F8F8
      F8FFF1B274FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF2F2F2FFF2B579FFF1B172FFF1B172FFEFAF71FFECAC70FFE2A26DFFDC9C
      6CFFDCDBDCFFF2F2F2FFFDFDFDFF00000000000000000000000000000000FEFE
      FEFF28ACD5FFCEF6FDFFCEF6FDFFCEF6FDFFCEF6FDFFCDF5FCFFCCF5FCFF28AA
      D4FFF7F7F7FFFBFBFBFFFEFEFEFF00000000FEFEFEFFFCFCFCFFFBFBFBFFFAFA
      FAFFFBFBFBFFFDFDFDFF0000000000000000FEFEFEFF00960FFF009511FF0094
      12FF009313FF009114FF008F15FFA6A6A6FF00000000F5F5F5FF0085ACFF76E0
      FFFF76E0FEFF76E0FEFF76E0FEFF76E0FEFF76E0FEFF76E0FEFFF5C393FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FF76E0FEFF76E0FEFF76E0FFFF0085ACFF9B9B9BFFD2D2
      D2FFF6F6F6FF000000000000000000000000FEFEFEFFEBF3EBFF34A332FF5D8C
      28FFBB9661FFC9A074FFCDA176FFCFA377FFD0A477FFD1A478FFD2A578FFD3A5
      78FFD3A578FFD4A578FFD4A678FFD4A579FFD3A678FFD2A577FFD2A577FFD0A6
      77FFC1AA74FF8DBB6FFF6EC56CFF6CC46BFF69C269FF65C065FF48B248FF1995
      19FF3D713DFFB9BAB9FFF4F4F4FF00000000000000000000000000000000F8F8
      F8FFF2B67BFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF3B77DFFF7E0CEFFF7E0CEFFF5DECCFFF2DACAFFE3AC82FFDAD9
      DAFFF0F0F0FFFBFBFBFF00000000000000000000000000000000000000000000
      0000FEFEFEFF28ABD4FF28ABD4FF28ABD4FF28ABD4FF28AAD4FF28AAD3FFF9F9
      F9FFFBFBFBFFFEFEFEFF0000000000000000FEFEFEFFFBFBFBFFB2B2B2FFB0B0
      B0FFF7F7F7FFFAFAFAFFFCFCFCFFFDFDFDFFFCFCFCFF009610FF009512FF0094
      12FF009313FF009214FF009115FFA4A4A4FF00000000F5F5F5FF0085ACFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF0085ACFF9B9B9BFFD2D2
      D2FFF6F6F6FF00000000000000000000000000000000FDFDFDFFBDD8B8FF7679
      22FFB27E43FFC69C6EFFCDA57BFFD0A77EFFD1A87FFFD2A97FFFD3A97FFFD4AA
      80FFD5AA80FFD5AA80FFD5AB80FFD5AA81FFD5AB80FFD5AA80FFD4AA7FFFD4AA
      7FFFD1AA7EFFC5AD7EFF95BC77FF76C573FF70C36EFF59B959FF27A127FF1D77
      1DFF949F94FFE8E8E8FFFEFEFEFF00000000000000000000000000000000F8F8
      F8FFF3B880FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6
      F6FFF6F6F6FFF3B980FFF7E0CEFFF6DFCDFFF4DCCBFFEEB886FFD9D9D9FFF0F0
      F0FFFBFBFBFF0000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFF000000000000000000000000FEFEFEFF007A0AFF007A0BFFAEAE
      AEFFADADADFFDEDEDEFFF7F7F7FFF8F8F8FFF8F8F8FFF6F6F6FFDDDDDDFF0095
      12FF009413FF009313FF009114FFA5A5A5FF00000000F6F6F6FF0085ACFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF0085ACFF9E9E9EFFD4D4
      D4FFF7F7F7FF0000000000000000000000000000000000000000F9FBF9FFB5B8
      8FFF947127FFB78249FFCAA075FFD0AA83FFD3AC86FFD4AD86FFD5AE87FFD6AF
      88FFD6AF87FFD7AF88FFD7AF87FFD7AF88FFD7AF87FFD6AF88FFD6AF87FFD4AE
      88FFD3AE86FFD2AD85FFC7B083FF9DBA7CFF65BB61FF30A52FFF1C851CFF819B
      81FFDEDEDEFFFBFBFBFF0000000000000000000000000000000000000000F8F8
      F8FFF3BC87FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF4BD87FFF6DFCDFFF4DDCCFFEFB886FFD9D9D9FFF0F0F0FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFF00790CFF007B0DFF007D
      0EFF717376FFB6B6B6FFBEBEBEFFC0C0C0FFC0C0C0FF7D7F82FF009611FF0096
      11FF009512FF009512FF009313FFA7A7A7FF00000000F8F8F8FF0085ACFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF0085ACFFAEAEAEFFDEDE
      DEFFF9F9F9FF000000000000000000000000000000000000000000000000F7F6
      F4FFA5AB78FFA16D29FFB8824AFFCAA076FFD2AD89FFD5B18DFFD6B28EFFD7B3
      8FFFD7B48FFFD8B490FFD8B490FFD8B490FFD8B490FFD8B490FFD8B48FFFD7B2
      8FFFD6B28EFFD4B18BFFCEAC85FFBB9C6BFF6A9135FF238A1EFF83A283FFDCDC
      DCFFF9F9F9FF000000000000000000000000000000000000000000000000F8F8
      F8FFF4BF8CFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF3BE8BFFF4DDCCFFEFB886FFD9D9D9FFF0F0F0FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF007B0FFF007E
      10FF176D24FF296235FF2C6338FF2D6639FF296A35FF177824FF009710FF0097
      10FFF6F6F6FF009610FF009411FFABABABFF00000000FCFCFCFF0085ACFFAAEC
      FFFFAAECFFFFAAECFFFFAAECFFFFAAECFFFFDD7614FFDD7614FFDD7614FFDD76
      14FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD76
      14FFAAECFFFFAAECFFFFAAECFFFFAAECFFFFAAECFFFF0085ACFFCDCDCDFFEEEE
      EEFFFCFCFCFF000000000000000000000000000000000000000000000000FEFE
      FEFFF9F7F5FFC6B493FFA96A2AFFB17639FFC19161FFCFA781FFD6B492FFD8B7
      95FFD8B896FFD9B896FFD9B896FFD9B897FFD9B896FFD9B896FFD8B796FFD7B6
      94FFD4B28FFFCBA279FFBB8752FFA97031FF8B7138FFA2A892FFE0E1E0FFF9F9
      F9FF00000000000000000000000000000000000000000000000000000000FAFA
      FAFFF5C290FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF8F8F8FFF2BF8FFFEFB886FFDBDBDBFFF0F0F0FFFBFBFBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFF007F
      11FF008211FF008711FF008B11FF009011FF009310FF009610FF00970FFFE7E7
      E7FFFAFAFAFF00960FFF00960FFFFBFBFBFF00000000FEFEFEFFFAFAFAFF0085
      ACFFAAECFFFFB7EEFFFFB7EEFFFFB7EEFFFFDD7614FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFDD76
      14FFB7EEFFFFB7EEFFFFAAECFFFFAAECFFFF0085ACFFCDCDCDFFEAEAEAFFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFBF9F9FFDECDBCFFAF7941FFAA6A29FFB3783CFFC18F5EFFCFA7
      80FFD5B392FFD8B796FFD9B898FFD9B999FFD8B898FFD8B695FFD5B290FFCDA3
      78FFBD8954FFAF7234FFA26628FFA88560FFCBC3BAFFECECECFFFCFCFCFF0000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFF5C393FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF4C4
      95FFF2C294FFF0BD90FFE7E7E7FFF3F3F3FFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEDD
      C2FF8DC394FF5CAB66FF279034FF279134FF5BAA64FF8BC291FFBCDCBFFFFCFC
      FCFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFF0000000000000000FEFEFEFFFAFA
      FAFF0085ACFF0085ACFF0085ACFF0085ACFFDD7614FFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDD76
      14FF0085ACFF0085ACFF0085ACFF0085ACFFDEDEDEFFEEEEEEFFFAFAFAFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFCFFF4F0EDFFD1B69CFFAE753BFFAB6A28FFAF6F
      2FFFB77C41FFBF8953FFC3915FFFC49463FFC28F5DFFBC864FFFB4783CFFAB6C
      2CFFA66A2DFFAB8056FFC8BAACFFE3E1DDFFF6F6F6FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFDFFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF9F9F9FFFAFAFAFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
      FEFF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFFCFCFCFFF8F8F8FFF6F6F6FFF5F5F5FFF3F3F3FFDD7614FFDD7614FFDD76
      14FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDBDB
      DBFFEAEAEAFFF3F3F3FFF5F5F5FFF6F6F6FFF8F8F8FFFCFCFCFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFDFCFCFFF3F0EDFFDCCCBBFFC099
      73FFB17C46FFA96D31FFA86828FFA86927FFA7692BFFA87037FFAE8254FFBDA3
      88FFD2C6B9FFE7E5E3FFF6F6F6FFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFBFBFBFFF6F6F6FFF3F3
      F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF6F6
      F6FFFBFBFBFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000000100000100010000000000001000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FF0000FFFFFFFFFFFFFFFFFFF01FFC07
      FC00003FFFFFFFFFFFFFFFFFE00FF803F800001FFFFFFFFFFFFFFFFFC007F001
      F000000FFFFFFFFFFFFFFFFF8003E000E0000007C07FFFFFFFFFFF808001C000
      C0000003807FFFFFFFFFFE008000800080000001003FFF01803FFE0080000000
      80000001003FF0018007FE008000000000000000001F000100007C0080000000
      00000000001F000180003C008000000000000000000E000180007800C0000001
      00000000800700018000F800E0000003000000008000000180000001F0000007
      0000000080000001C0000001F800000F00000000C0000003C0000003FC00001F
      00000000E0000003C0000003FE00003F00000000E0000007E0000007FC00001F
      00000000F0000007E000000FF800000F00000000F8000007E000001FF0000007
      00000000FC000007F000003FE000000300000000FF000007F00000FFC0000001
      00000000FFC00E0FF06003FF8000000000000000FFF87E0FF0FE1FFF80000000
      00000000FFFFFF3FF9FFFFFF8000000080000001FFFFFFFFFFFFFFFF80000000
      80000001FFFFFFFFFFFFFFFF80008000C0000003FFFFFFFFFFFFFFFF8001C000
      E0000007FFFFFFFFFFFFFFFF8003E000F000000FFFFFFFFFFFFFFFFFC007F001
      F800001FFFFFFFFFFFFFFFFFE00FF803FC00003FFFFFFFFFFFFFFFFFF01FFC07
      FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000180000001FFFFFFFF
      FF000000FC00000100000000FFFFFFFFFF000000F800000100000000FFFFCFFF
      FF000000F000000100000000FFFF87FFFE000000E000000000000000FFFF87FF
      00000000C000000000000000FFFF87FF0000000080000000000000009FFF01FF
      0000000000000000000000009FFF00EF00000000000000000000000007FF0003
      00000000000000000000000003FF800100000000000000000000000003FFC000
      00000000000000000000000001FFC00000000000000000000000000080FFC000
      000000000000000000000000C0FFEC00000000000000000000000000C07FFF00
      000000000000000000000000E03FFF80000000000000000000000000F01FFF00
      000000000000000000000000F01FFC01000000000000000000000000F80FF803
      000000000000000000000000FC07F007000000010000000000000000FE03E00F
      000000030000000000000000FE00003F000000070000000000000000FF00007F
      0000000F0000000000000000FF80007F0000001F0000000000000000FF80007F
      0000003F8000000100000000FFE0007F0000007F8000000300000000FFE0007F
      000001FFC000000300000000FFF8007F000003FFE000000700000000FFFE007F
      00003FFFF000000F00000000FFFF80FF00007FFFF800001F00000000FFFF80FF
      0001FFFFFC00003F80000001FFFFC1FFFFF00F00FFFFFFFF803FFFFFE0000001
      FFE00600FFFFFFFF801FFFFFE0000001FFE00000F87FFFFF800FFFFFE0000001
      FFE00000F03FFFFF80007FFFC0000001FFE00000E01FFFFF8000FFFFC0000001
      FFE00000E00FFFFF80007FFFC0000001FFE00000E007FFFF80003FFFC0000001
      FFF00000E003FFFFC0001FFFC0000001FFF80001F001FFFFE0000FFFC0000001
      FFFC0003F800FFFFF00007FFC0000001FFFC0003FC007FFFF80001FFC0000001
      FFF80001FE003FFFF80001FFC0000001FFF00000FF00003FF80000FFC0000001
      FFE00000FF80001FF800007FC0000001FFE00000FFC0000BFC00003FC0000001
      FFE00000FFE00003E6000017C0000001FFE00000FFF00003FF00000FC0000001
      FFE00000FFF00003FF800007C0000001FFE00600FFF00003FFC00007C0000001
      FFF00F00FFF00003FFE00007C0000001FFF81F81FFF00003FFF00003C0000001
      FFFFFFFFFFF00003FFF80001C0000001FFFFFFFFFFF00003FFFC0000C0000001
      FFFFFFFFFFF00003FFFE0000C0000000FFFFFFFFFFF00003FFFF0000C0000000
      FFFFFFFFFFF00007FFFF8000C0000000FFFFFFFFFFF8000FFFFF8000C0000000
      FFFFFFFFFFFC001FFFFFFC00C0000001FFFFFFFFFFFE003FFFFFFE00C0000003
      FFFFFFFFFFFF007FFFFFFF00C0000007FFFFFFFFFFFFFFFFFFFFFF80E000030F
      FFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFF00003FFFFFFFFFFFFFFFFF
      FF800001FE00001FFE00000F00000000FF800001FE00001FFC00000700000000
      FF800001FE00001FF800000300000000FF800001FE00001FF800000100000000
      FF800001FE00001FE000000100000000F0000001FE00001FC000000100000000
      E0000001FE00001F8000000100000000E0000001FE00001F8000000100000000
      E0000001FE00001F8000000100000000E0000001FE00001F8000000100000000
      E0000001FF00003F8000000100000000E0000001FF80007F8000000100000000
      E0000001FFC000FF8000000100000000E0000001FFE001FF8000000100000000
      E0000001FFE001FF8000000100000000E0000001FFC000FF8000000100000000
      E0000001FFC000FF8000000100000000E0000001FF80007F8000000100000000
      E0000007FF80007F8000000100000000E000000FFF00003F8000000100000000
      E000001FFF00003F8000000100000000E000003FFE00001F8000000100000000
      E000007FFE00C01F8000000100000000E00000FFFC00C00F8000000100000000
      E00001FFFC01E00F8000000300000000E00003FFFC01E00F8000000700000000
      E00007FFFC03F00F8000001F00000000E0000FFFFC03F00F8000001F00000000
      E0001FFFFC07F80FC000003F00000000F0003FFFFE07F81FE000007F00000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FC0000000FF00007FFFFF80FF
      FE00007F80000000FE00003F0000000FFE00007F80000000FC00001F0000000F
      FE00007F80000000F00000070000000FFE00007F80000000F00000070000000F
      8000000180000000E00000030000000F0000000080000000C00000010000000F
      0000000080000000C00000000000000F0000000080000000800000000000000F
      0000000080000000800000000000000700000000800000000000000000000007
      0000000080000000000000000000000300000000800000000000000000000003
      0000000080000000000000000000000100000000800000000000000000000000
      0000000080000000000000000000000000000000800000000000000000000000
      0000000080000000000000000000000000000000800000000000000000000001
      0000000080000000000000000000000F0000000080000000000000000000000F
      0000000080000000800000000000000F0000000080000000800000000000000F
      0000000080000000C00000010000000F8000000180000000C00000010000000F
      FE00007F80000000E00000030000000FFE00007F80000000F00000070000001F
      FE00007F80000000F00000070000003FFE00007F80000000FC00001F0000007F
      FE00007FE0000000FE00003F000000FFFE00007FF0000001FF8000FF000001FF
      FE00007FFFFFFFFFFFE003FF000003FFFF00007FE00000018000007FFF800001
      FC00001FE00000010000003FE0000001F800000FE00000010000001FC0000001
      F0000007E00000010000001F80000001E0000003E00000010000000F80000001
      C0000001E00000010000000F8000000180000001E00000010000000780000001
      80000000E0000001000000078000000100000000E00000010000000380000001
      00000000E0000001000000038000000100000000E00000010000000180000001
      00000000E0000001000000018000000100000000E00000010000000080000001
      00000000E0000001000000008000000100000000E00000010000000080000001
      00000000E0000001000000008000000100000000E00000010000000080000001
      00000000E0000001000000018000000100000000E00000010000003F80000001
      00000000E00000010000003F8000000300000000E00000010000000080000007
      00000000E0000001800000008000000700000000E0000001C000070080000007
      00000000E0000001E00103008000000700000001E0000003F003000080000007
      80000001E0000007F807000080000007C0000003E000000FFFFF000080000007
      E0000007E000001FFFFF800080000007E000000FE000003FFFFFC00080000007
      F000001FE000007FFFFFE000C000000FFC00003FF00000FFFFFFF00FE000001F
      FE0000FFFFFFFFFFFFFFFFFFFF0003FF00000000000000000000000000000000
      000000000000}
  end
  object ilCommon24: TImageList
    Height = 20
    Width = 20
    Left = 52
    Top = 552
    Bitmap = {
      494C010116001800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000007800000001002000000000000096
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFBFBFBFFF7F7F7FFF9F9F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000FBFBFBFFF9F9
      F9FFF9F9F9FFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF0F0F0FFE3E3E3FF7B7B7BFF808080FFF0F0F0FFFEFE
      FEFF00000000000000000000000000000000FEFEFEFFFAFAFAFFE3E3E3FF8080
      80FF808080FFF0F0F0FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFAFFE1E1E1FF1119E7FF1119E7FF6C6C6CFFE1E1E1FFFAFA
      FAFFFEFEFEFF000000000000000000000000FAFAFAFFF0F0F0FF1018E7FF1018
      E7FF6C6C6CFFE1E1E1FFF0F0F0FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFF8F8F8FFEAEAEAFFEAEAEAFFEAEAEAFFFBFB
      FBFF00000000EBEBEBFF1018E7FF1119E7FF1119E7FF1119E7FF696969FFE1E1
      E1FFF0F0F0FFFEFEFEFF00000000FAFAFAFFE1E1E1FF1018E7FF1018E7FF1018
      E7FF1018E7FF6C6C6CFF808080FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000704316FF985B1FFFB56C
      25FF443527FFADADADFFFBFBFBFFFEFEFEFF0000000000000000000000000000
      00000000000000000000A09890FFEE9033FFF59332FFF49231FFC57728FFEBEB
      EBFF000000001018E7FF1018E7FF1018E7FF1119E8FF1119E8FF1119E8FF6969
      69FF787878FFEFEFEFFFF4F4F4FFE1E1E1FF1019E8FF1018E8FF1018E7FF1018
      E7FF1018E7FF1018E7FF808080FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEEFFC17427FF8A531BFF7647
      17FF2B1C0FFF555555FFB2B2B2FFDDDDDDFFEAEAEAFFF8F8F8FFFDFDFDFF0000
      00000000000000000000635546FFFA9632FFFF9933FFFF9933FFBF7327FFEFEF
      EFFF000000001018E7FF1018E7FF1018E8FF1019E8FF1119E8FF1119E8FF1119
      E8FF696969FFDEDEDEFFE3E3E3FF1019E8FF1019E8FF1019E8FF1018E8FF1018
      E7FF1018E7FF1018E7FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC7928FFFF9933FFFF99
      33FFFF9933FFFF9933FFFE9933FFCD7C2AFFA56629FF959494FF8C7B69FF0000
      000000000000FE9833FFB56C23FFFF9933FFFF9933FFFF9933FF825425FFFBFB
      FBFF00000000FEFEFEFF1018E8FF1018E8FF1019E8FF1019E8FF1119E9FF1019
      E9FF1019E9FF656565FF1019E9FF1019E9FF1019E9FF1019E8FF1019E8FF1018
      E8FF1018E8FFF0F0F0FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E4C18FFFF9933FFFF99
      33FFFF9933FFFF9933FFFF9933FFFF9933FFFA9632FFE1E1E1FF000000000000
      000000000000F49231FFF99633FFFF9933FFFF9933FFFC9732FF6C5237FFFEFE
      FEFF0000000000000000FAFAFAFF1019E8FF1019E8FF1019E9FF1019E9FF1019
      E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E9FF1019E8FF1019
      E8FFE1E1E1FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A8977FFFF9933FFFF99
      33FFFF9933FFFF9933FFFF9933FFDD842CFF5C5956FFD5D5D5FFDCDCDCFF9466
      37FF6E4215FFD07D29FFFF9933FFFF9934FFFF9934FF784B1EFFBDBDBDFF0000
      0000000000000000000000000000FEFEFEFF1019E9FF111AE9FF111AE9FF111A
      E9FF111AE9FF111AE9FF111AE9FF111AE9FF111AE9FF111AE9FF1019E9FFE1E1
      E1FFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFBAB5CFFFFAE
      5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFDAD5CFFEFA257FFE89F55FFF9AA
      5AFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFBAB5BFFADADADFFFCFCFCFF0000
      000000000000000000000000000000000000FDFDFDFFF4F4F4FF161FEAFF161F
      EAFF161FEAFF161FEAFF161FEAFF161FEAFF161FEAFF161EEAFFE3E3E3FFF4F4
      F4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1AF6DFFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FF92683DFFDCDCDCFF000000000000
      000000000000000000000000000000000000FAFAFAFFEFEFEFFF1C25EAFF1B24
      EAFF1A23EAFF1A23EAFF1A23EAFF1B23EAFF1C24EAFF656565FFDEDEDEFFEFEF
      EFFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000827365FFFFD0
      A0FFFFD0A1FFF0C193FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0
      A1FFFFD0A1FFFFD0A1FFE6B98CFF967758FF987E64FF00000000000000000000
      00000000000000000000FEFEFEFFFAFAFAFFE1E1E1FF333AECFF2C34EBFF2831
      EBFF2730EBFF262FEBFF262FEBFF272FEBFF2931EBFF2B33EBFF696969FF7878
      78FFF0F0F0FFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEADACFFF3CF
      ABFFF8D3B0FF4E4134FFDFBC99FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDB
      B7FFFFDBB6FFF9D4B0FF8A745FFFEECCABFF0000000000000000000000000000
      00000000000000000000FAFAFAFFF0F0F0FF4047EDFF3C43ECFF353DECFF3139
      EBFF3038EBFF2E36EBFF2D35EBFF2E36EBFF3139ECFF333BECFF3840ECFF6969
      69FFE1E1E1FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9FFA49D
      95FFA1A0A0FFFBFBFBFF00000000C7C6C6FF929190FF5E5C5AFF676564FFB3B3
      B2FFF6F6F6FFFDFDFDFF00000000000000000000000000000000000000000000
      000000000000FAFAFAFFE1E1E1FF575DEEFF4F56EEFF4C53EDFF474EEDFF4249
      EDFF3F46EDFF3A42ECFF3A41EDFF3C44EDFF4047EDFF4249EDFF464DEDFF4950
      EDFF696969FFE1E1E1FFF0F0F0FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEBFF666BEFFF6369EFFF5F65EFFF5D63EFFF585FEEFF5258
      EEFF4D53EEFFEFEFEFFFF4F4F4FF4A51EEFF5057EEFF5359EEFF575DEFFF595F
      EFFF5F65EFFF6C6C6CFF808080FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E73F0FF6B70F0FF696FF0FF666CEFFF646AEFFF5F65EFFF585F
      EEFFE1E1E1FFFAFAFAFFFDFDFDFF5057EEFF585EEFFF5B61EFFF6065EFFF6267
      F0FF666BF0FF696FF0FF7B7B7BFFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007479F0FF7579F0FF757AF0FF7378F0FF7177F0FF6C71F0FFF0F0
      F0FFFAFAFAFF0000000000000000FEFEFEFF666CF0FF6A6FF0FF6F74F0FF7176
      F1FF7176F1FF7075F0FFE3E3E3FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFAFF787DF1FF797EF1FF787DF1FF767BF0FFE1E1E1FFFAFA
      FAFFFEFEFEFF000000000000000000000000FAFAFAFF7075F0FF757AF1FF767B
      F1FF767BF1FFE1E1E1FFF0F0F0FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFF7E83F1FF7E83F1FFEBEBEBFFFAFAFAFF0000
      00000000000000000000000000000000000000000000FEFEFEFF7D82F1FF7D82
      F1FFEBEBEBFFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000EFEFEFFFC2C1C2FFA5A3
      A5FF9B979BFF989498FF716E71FF3C383CFF292529FF1E1A1EFF1C191CFF2521
      25FF403C40FF565256FF878387FF989498FF9F9B9FFFB7B4B7FFDAD9DAFFFEFE
      FEFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      000000000000979397FF6D6A6DFF343034FF201D20FF151215FF131113FF1B18
      1BFF373437FF4F4C4FFF858185FF979397FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082584AFFA7471CFFA949
      1BFFAB4A1AFFAB4A1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B1AFFAC4B
      1AFFAC4B1AFFAC4B1AFFAB4A1AFFAA4A1BFFA6471CFF1B141BFF464045FFD9D8
      D9FFFFFFFFFF0627ACFF0F30B5FF1333B4FF1938B8FF1A39B8FF1A3AB7FF1939
      B9FF1839B9FF1537B8FF1337BCFF0F35BEFF0C34C1FF0A31BEFF062EBFFF032C
      BFFF0029BBFF0022A9FF001D94FFFFFFFFFF0000000000000000000000000000
      0000A24619FF944017FF692E10FF89552CFF9F6A3CFFB57D4AFFB07947FF7F51
      2BFF431D0AFF53240DFF803713FF934017FFA4461CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E85AEFFD27C3EFFD680
      3FFFD88340FFD98440FF9E969EFFA49DA4FFB0A8B0FFCEC6CEFFDCD4DCFFE5DE
      E5FFE8E1E8FFE8E1E8FFD88340FFD78140FFD07B3FFFA3451DFF170F16FFC2BF
      C2FFFFFFFFFF0B30C6FF173ACAFF1B3ECBFF2345CEFF2546CEFF2446CDFF2246
      CEFF2246CFFF1E44CFFF1C45D2FF1742D3FF123FD4FF103DD3FF0938D4FF0737
      D5FF0131D2FF0028BFFF0022A9FFFFFFFFFF0000000000000000D17C3EFFD27D
      3EFFAF6A34FF8D5529FFBE844EFFD79A5FFFD89B62FFD99E65FFD99D65FFD79A
      60FFBD834DFF7B5C40FF683F1FFF8B5329FFC1723BFFA2451DFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B35018FFE38A3DFFE58D
      3EFFE78F40FFE79040FFA7A4A7FF403D40FF403D40FFDBD9DBFFEAE8EAFFF5F3
      F5FFF8F6F8FFF8F6F8FFE78F3FFFE68E3FFFDF873DFFD07A3CFFA6471CFFACA9
      ACFFFFFFFFFF143CDBFF254ADFFF2B4FDFFF3356E0FF3658E1FF3558E1FF3358
      E1FF3258E2FF2D56E3FF2A56E4FF2453E5FF1C4FE6FF184CE6FF0F46E7FF0B43
      E6FF043BE4FF0131D2FF0029BEFFFFFFFFFF0000000000000000D38039FFB36E
      30FFD08B4AFFD49151FFD7995DFFD99E66FFDAA069FFDAA26CFFDAA26CFFD99F
      67FFD79A5FFFD6965AFFD08D4DFF7F5226FF7E4C22FFC17138FFA3461CFF0000
      000000000000F0F0F0FFEAEAEAFFEAEAEAFFEBEBEBFFF7F7F7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B95416FFEA903BFFEB91
      3CFFED933EFFED943FFFAAAAAAFF403F40FF403F40FFE0E0E0FFF0F0F0FFFBFB
      FBFFFEFEFEFFFEFEFEFFED933EFFEB923DFFE68C3BFFD67F3AFFAA4A1BFFA7A4
      A7FFFFFFFFFF1C43DFFF3155E1FF3759E2FF4060E4FF4263E5FF889CEFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F4FEFF809EF3FF144EEAFF114A
      EAFF0841E7FF0334D5FF022BC1FFFFFFFFFF00000000B45215FFB16F2FFFD18A
      46FFD49151FFD59558FFD89C63FFDAA26CFFDBA36EFFDBA570FFDBA570FFDAA2
      6CFFD89D64FFD79A5FFFD49253FFD38E4DFF7F5023FF8B5326FF934017FFA6A3
      A6FFEBEBEBFFF59332FFF59332FFF59332FF4D3C2CFFB9B9B9FF000000000000
      000000000000000000000000000000000000FEFEFEFFFDFDFDFFF7F7F7FFEDED
      EDFFC8C8C8FF888786FF6F6E6DFF0000000000000000BB5515FFEA8F3AFFEB91
      3BFFEE943CFFEE943DFFABABABFF505050FF515151FFE1E1E1FFF1F1F1FFFCFC
      FCFFFFFFFFFFFFFFFFFFEE943DFFEC923CFFE68D3AFFD78039FFAB4A1AFF9B98
      9BFFFFFFFFFF2046E0FF3759E3FF3D5EE4FF4665E5FF4767E5FFFFFFFFFFE7EC
      FCFF93A8F1FF3A63E7FF3763E7FF89A4F3FFFFFFFFFFFFFFFFFF1750EAFF134C
      EAFF0B43E7FF0637D6FF042EC2FFFFFFFFFF00000000AE4F14FFCE8540FFD18B
      48FFD49253FFD6965AFFD99D65FFDAA26CFFDBA36EFFF1DDC9FFF1DDC9FFDBA2
      6DFFD99E65FFD89B61FFD59355FFD39050FFCD8642FF693E1CFF813814FF9996
      99FFF0F0F0FFFF9933FFFF9933FFFF9933FF604224FFA7A7A7FFFEFEFEFF0000
      00000000000000000000FEFEFEFFF1F1F1FFD4D4D4FFBDBDBDFF828180FF7067
      5FFF89623CFFBB722AFF714C25FF0000000000000000BB5615FFEA8F37FFEC90
      38FFED9239FFED923AFFC35B13FFC35B13FFC35B13FFC35B13FFC35B13FFC35B
      13FFC35B13FFC35B13FFED9239FFEC9039FFE68B37FFD87F38FFAC4B1AFF706D
      70FFFFFFFFFF294EE0FF4160E4FF4665E5FF90A2EFFFFFFFFFFF8FA2EFFF4769
      E7FF4468E7FF3D66E7FF3964E7FF305FE9FF2659E9FF7496F1FFFFFFFFFF7B9A
      F3FF1046E7FF0D3CD6FF0A32C2FFFFFFFFFF9B7171FFA75A1EFFD08843FFD28B
      48FFD49354FFD6965AFFD89C63FFDAA069FFDAA26CFFFFFFFFFFFFFFFFFFDAA1
      6AFFD89D64FFD79A5FFFD59355FFD39050FFD18945FF74461FFF54250DFF6764
      67FFFDFDFDFFFE9933FFFF9933FFFF9933FFEE8F30FF605851FFF6F6F6FF0000
      000000000000F9F9F9FF8F7D6BFFC3772AFFFD9833FFFF9933FFFF9933FFFF99
      33FFFF9933FFD17E2CFF7C7B7AFF0000000000000000BB5615FFEA8E35FFEC8F
      36FFED9138FFED9138FFED8F34FFED9035FFED9035FFED9036FFED9137FFED91
      37FFED8F34FFED8F34FFED9037FFEC8F37FFE68A36FFD87F36FFAC4B1AFF5754
      57FFFFFFFFFF2E52E1FF4564E5FF4A68E5FFF4F6FDFFFFFFFFFF4D6DE6FF496A
      E6FF4569E7FFFFFFFFFFFFFFFFFF315FE9FF2759E9FF2356E9FFFFFFFFFFF1F4
      FEFF1449E6FF103ED5FF0C34C3FFFFFFFFFF9A6F6FFFBF7430FFD08843FFD18B
      48FFD49252FFD59557FFD79A5FFFD99E65FFD99F67FFFFFFFFFFFFFFFFFFD99E
      66FFD79A60FFD6985CFFD49253FFD38F4FFFD08944FFB27031FF431D0AFF4B49
      4BFF00000000ED8D2FFFFF9933FFFF9933FFFE9833FF855B31FFD9D9D9FFFEFE
      FEFF0000000000000000A89E93FFFF9933FFFF9933FFFF9933FFFF9933FFFF99
      33FFFF9933FF9B652EFFB0B0B0FF0000000000000000BB5615FFEA8C32FFEC8D
      33FFED8F33FFED8F34FFED8F34FFED9035FFED9035FFED9036FFED9137FFED91
      37FFED8F34FFED8F34FFED8E33FFEC8D33FFE68832FFD87D33FFAC4B1AFF2B28
      2BFFFFFFFFFF3759E3FF4D6BE6FF526EE6FFFFFFFFFF9EAEF1FF506EE6FF4A6A
      E6FF4669E7FFFFFFFFFFFFFFFFFF315DE7FF2757E8FF2355E8FF7F9CF1FFFFFF
      FFFF1A4CE5FF1943D5FF1339C2FFFFFFFFFF956C6CFFCD7F35FFCF853EFFD087
      42FFD28D4AFFD38F4EFFD49354FFD69659FFD6975BFFFFFFFFFFFFFFFFFFD696
      5AFFD59355FFD49252FFD28D4BFFD18B48FFCF863FFFCD8137FF764319FF201E
      20FF00000000A5937FFFFF9934FFFF9934FFFF9933FFFF9933FF624A33FFB1B1
      B1FFDBDBDBFFF0F0F0FFECECECFFA3703DFFFF9933FFFF9933FFFF9933FFFF99
      33FFFF9933FF736A61FFF0F0F0FF0000000000000000BB5615FFEA8B31FFEC8C
      31FFED8D31FFED8D31FFED8F34FFED9035FFED9035FFED9036FFED9137FFED91
      37FFED8F34FFED8F34FFED8D31FFEC8C31FFE68832FFD87D33FFAC4B1AFF1E1B
      1EFFFFFFFFFF4161E4FF5571E7FF5672E8FFFFFFFFFF5670E7FF506CE6FF4968
      E5FF4566E6FFFFFFFFFFFFFFFFFF305AE5FF2754E6FF2452E6FF1E4EE5FFFFFF
      FFFF204EE4FF2048D4FF193CC1FFFFFFFFFF936B6BFFCB7B2FFFCD8239FFCE84
      3DFFD08946FFD18B49FFD38F4EFFD39050FFD39151FFFFFFFFFFFFFFFFFFD390
      50FFD38F4EFFD28D4CFFD08946FFD08742FFCD823AFFCC7C30FF9F5E21FF1513
      15FF0000000000000000EA9F55FFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFAAB
      5BFFF4A75AFFECA157FFF7A95AFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE5DFFFFAE
      5DFFFFAE5DFFBEBEBEFFFDFDFDFF0000000000000000BB5615FFEA8E36FFEC8F
      36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE68833FFD87D34FFAC4B1AFF1F1C
      1FFFFFFFFFFF4464E5FF5772E8FF5973E8FFFFFFFFFF5771E7FF516DE6FF4967
      E5FF4565E5FFFFFFFFFFFFFFFFFF2F58E4FF2753E5FF2450E5FF1E4DE5FFFFFF
      FFFF224EE3FF2248D3FF1B3DC0FFFFFFFFFF946B6BFFCC7E34FFD08742FFD089
      45FFD28C49FFD28D4CFFD28F4FFFD39050FFD49151FFFFFFFFFFFFFFFFFFD390
      50FFD28F4FFFD28E4DFFD28C4AFFD18A47FFD08843FFCC7F35FFA45F20FF1614
      16FF00000000000000009D8D7DFFF9B470FFFFB974FFFFB974FFFFB974FFFFB9
      74FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB974FFFFB9
      74FFF7B36FFFDEDEDEFF000000000000000000000000BB5615FFEB9441FFED95
      41FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFE68C3BFFD8803BFFAC4B1AFF3330
      33FFFFFFFFFF4D6BE6FF607AE8FF607AE8FFFFFFFFFFA1AFF2FF516CE6FF4966
      E5FF4564E4FFFFFFFFFFFFFFFFFF3056E3FF2851E3FF264FE3FF748FEDFFFFFF
      FFFF274FE2FF274BD3FF1F40BFFFFFFFFFFF976D6DFFCE833CFFD38F4FFFD390
      50FFD49152FFD49253FFD49355FFD9A06AFFE9C8AAFFFFFFFFFFFFFFFFFFD493
      56FFD49355FFD49354FFD49152FFD39151FFD38F4FFFCE833CFF8F4F16FF2927
      29FF000000000000000000000000F4F4F4FFDCB187FFFFD0A0FFFFD0A1FFFFD0
      A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFFD0A1FFFDCE9EFFFFD0A0FFFFD0
      A1FF9A7F65FFFAFAFAFF000000000000000000000000BB5615FFEB9746FFED98
      46FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFE79041FFD98441FFAC4B1AFF4C49
      4CFFFFFFFFFF516EE7FF647EE9FF637DE8FFFFFFFFFFEAEDFCFF526CE6FF4966
      E4FF4563E4FFFFFFFFFFFFFFFFFF3054E2FF2950E3FF274EE2FFE3E8FBFFFFFF
      FFFF2950E1FF294CD2FF2141BFFFFFFFFFFF9A6F6FFFCC7E34FFD59456FFD594
      57FFD59558FFD59558FFD5965AFFDFB083FFFFFFFFFFFFFFFFFFFFFFFFFFD597
      5BFFD5965AFFD69659FFD59558FFD59557FFD59456FFCC7E34FF7B4012FF4240
      42FF00000000000000000000000000000000C3C2C1FFA89079FFFEDAB6FFFFDB
      B7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFE6C2A0FF76695DFFF2CEABFFFFDB
      B7FF817467FFFEFEFEFF000000000000000000000000BB5615FFEC9D50FFEE9E
      50FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFE8974DFFDA8A4CFFAC4B1AFF8683
      86FFFFFFFFFF5974E8FF6F88EBFF6D86EAFFA8B6F3FFFFFFFFFF96A5F0FF4D69
      E5FF4965E4FF4160E4FF3C5CE4FF3557E2FF2F53E2FF5371E7FFFFFFFFFF879D
      EFFF2D52E1FF2B4DD1FF2342BFFFFFFFFFFF00000000BE6719FFD89E66FFD99F
      67FFD99F67FFD99F67FFD99F68FFD9A069FFD9A069FFD9A069FFD9A069FFD9A0
      69FFD99F68FFD99F68FFD99F67FFD99F67FFD89E66FFAF621BFF6B2F10FF817E
      81FF000000000000000000000000000000000000000000000000FAFAFAFFCECD
      CDFFA5A4A3FF959492FFAFAEAEFFF0F0F0FF0000000000000000F3F3F3FFA39B
      92FF969595FF00000000000000000000000000000000BB5615FFEDA55FFFEFA6
      5FFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFE9A15EFFDB935CFFAC4B1AFF504D
      50FFFFFFFFFF617BE9FF7A92ECFF778FECFF6A83EAFF647DE9FFFFFFFFFFE9ED
      FCFF9CABF1FF4663E4FF4260E4FF8498EDFFFFFFFFFFFFFFFFFF3054E1FF3054
      E1FF3053E0FF2D4ED2FF2443BEFFFFFFFFFF00000000B65414FFD28D4BFFDDAA
      79FFDDAA7AFFDDAA7AFFDDAB7AFFDDAB7AFFDDAB7AFFFFFFFFFFFFFFFFFFDDAB
      7AFFDDAB7AFFDDAB7AFFDDAA7AFFDDAA7AFFD39050FF91613CFF964217FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF0000000000000000000000000000000000000000BB5615FFEEAB6CFFF0AD
      6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFEAA76BFFDB9867FFAB4A1AFF4D4A
      4DFFFFFFFFFF6881EAFF869BEEFF8398EDFF718AEBFF6982EAFFA6B4F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F5FDFF91A4F0FF385AE3FF3759
      E2FF3356E1FF2C4DD2FF2140BDFFFFFFFFFF00000000BA5515FFC77221FFD79A
      5FFFE0B184FFE0B184FFE0B184FFE0B184FFE0B184FFFFFFFFFFFFFFFFFFE0B1
      84FFE0B184FFE0B184FFE0B184FFE0B184FFC77626FFB37D54FFA34719FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B95416FFF0BB8AFFF1BD
      8BFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFCFCFCFFFBFBFBFFEBB688FFDBA581FFA9491BFF5553
      55FFFFFFFFFF7990ECFF9BACF1FF96A8F0FF8095EDFF778FECFF6E87EBFF6881
      E9FF657EE8FF617BE8FF607AE9FF5C77E8FF5773E7FF5370E6FF4B6AE5FF4766
      E5FF395BE2FF284AD1FF1B3BBCFFFFFFFFFF0000000000000000ECB888FFCF88
      45FFDAA36DFFE5BD98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE98FFE5BE
      98FFE5BE98FFE5BE98FFDCA774FFCC7E33FFBA906CFFD8A27FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B75316FFEEBE93FFF0C0
      94FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD1D0D1FFD0CFD0FFE9B891FFD8A689FFA7471CFF7A79
      7AFFFFFFFFFF7B92EDFFA0B1F2FF9AACF1FF8398EDFF7991ECFF718AEBFF6B84
      EAFF6982E9FF667FE9FF657FE9FF627CE9FF5C77E8FF5774E7FF4F6DE6FF4A68
      E5FF395BE2FF2547D0FF1839BAFFFFFFFFFF0000000000000000EDBD92FFECBD
      92FFC77424FFD7995EFFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5A3FFE8C5
      A3FFE8C5A3FFE5BE99FFC77627FFA27C57FFD9AC87FFD7A588FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B75316FFB954
      16FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB5615FFBB56
      15FFBB5615FFBB5615FFBB5515FFBA5416FFB35018FF7D6057FFC38C7BFFE4E4
      E4FFFFFFFFFF4766E5FF7990ECFF758DECFF627DE9FF5E78E8FF5974E8FF526E
      E7FF526EE7FF4E6BE6FF4E6BE6FF4967E5FF4362E4FF4061E4FF3C5EE4FF3658
      E2FF284CDFFF1A3DCBFF1030B2FFFFFFFFFF0000000000000000000000000000
      0000BA5515FFB65414FFBE6516FFD49354FFDDA775FFE3B990FFE2B68BFFD696
      59FFB96415FFA45212FFAF4F14FFB65215FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000A49E7EFFA29C7CFF9E9979FF9E9879FFA09A
      7AFFA49E7EFFA6A07FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989798FF4F4E4FFF353435FF252425FF232223FF2F2E
      2FFF555455FF727072FFADACADFFBEBDBEFFC5C4C5FFD5D4D5FFEBEBEBFF0000
      000000000000000000000000000000000000C0BFC0FFBCBBBCFF8B8B8BFF4847
      48FF302F30FF222122FF201F20FF2B2A2BFF4D4C4DFF696769FFA7A6A7FFBCBB
      BCFF000000000000000000000000000000000000000000000000787777FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF757575FFB7B7B7FF0000
      000000000000000000000000000000000000000000005B524DFF4C4640FF4C46
      40FF4C4640FF4C4640FF4C4640FF4C4640FF4C4640FF4C4640FF4D4640FF544A
      43FF564B44FF302D2EFF696868FFEBEBEBFF000000008A5D4EFF5C524CFF544C
      46FF4F4843FF4B443FFF3A3530FF2F2B28FF2E2B27FF2E2B27FF2E2B27FF2E2B
      27FF2E2B27FF2E2B27FF2F2B27FF332D29FF342E29FF232122FF5C5B5BFF0000
      0000000000000000000000000000000000004D4742FFA7A180FF6E694CFF6E69
      4CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF6E694CFF2C2824FF322C
      28FF0000000000000000000000000000000000000000FEFEFEFFF8EDE4FFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF737272FFB4B4B4FF0000
      0000000000000000000000000000000000000000000072706EFF73706EFF7370
      6EFF73706EFF73706EFF73706EFF73706EFF73706EFF73706EFF73706EFF7370
      6EFF73706EFF545353FF1F1D1EFFE2E2E2FF000000002095C1FFC7BFB7FFAEA6
      A0FF9B948EFF454443FFF1A963FFF2AE6CFFF2AE6CFFF2AE6DFFF2AE6DFFF2AE
      6DFFF2AE6CFFF2AE6CFFF1AC69FFF1AB67FFF1A964FF353434FF1A1819FF0000
      00000000000000000000000000000000000097918BFFA7A180FFF4F3EFFFF4F3
      EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFFF4F3EFFF6E694CFFDE9F61FFEBA7
      65FF0000000000000000000000000000000000000000FEFEFEFFF8EDE4FFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF737272FFB4B4B4FF0000
      0000DE7C32FF56D0E9FFF5EAE1FFFCF1E7FFFBF0E6FF9D9793FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFEFE4DBFF594F49FFD5D5D5FF000000004BB5CBFF28CEFFFF2DD0
      FFFF35D1FFFF39D2FFFFF1A760FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFF918B85FF49413CFF0000
      0000000000004AB4C9FF27CAFAFF2CCBF9FF33C8F4FFA7A180FFF7F6F3FFF7F6
      F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FFF7F6F3FF6E694CFFDEB288FFEABD
      90FFE8E8E8FF8F8983FF48403CFF0000000000000000FEFEFEFFF8EDE4FFFFF4
      EAFFFFF4EAFFFFF4EAFF464240FFC7BEB6FFC7BEB6FFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF737272FFB4B4B4FF0000
      00006C5A4DFF566B6FFF726F6DFF73706EFF716E6CFF646261FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFEFE4DBFF504B47FFD2D2D2FF000000002194B6FF2ACFFFFF2FD0
      FFFF37D2FFFF3BD3FFFFF0A55DFFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFEDEDEDFF918B85FF423E3AFF0000
      00006A594CFF1F89A8FF1B84A2FF1E83A1FF22839FFFA7A180FFFAFAF9FFFAFA
      F9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FFFAFAF9FF6E694CFF93765AFF997B
      5EFF969696FF5F5B57FF3D3936FFCFCFCFFF00000000FEFEFEFFF8EDE4FFA9B2
      ADFFA9B2ADFF343434FF353535FF2E302FFF5D625FFF838A87FFA9B2ADFFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF737272FFB4B4B4FF0000
      00008F6748FFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFEFE4DBFF4A4746FFC9C9C9FF000000002295B7FF2BCFFFFF2FD0
      FFFF38D2FFFF3BD3FFFFF0A45AFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF918B85FF3D3A3AFF0000
      0000896345FF5F4242FF5F4242FF5F4242FF5F4242FFA7A180FFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFF6E694CFF5F4242FF5F42
      42FF5F4242FF575350FF272525FFC0C0C0FF00000000FEFEFEFFF8EDE4FFA9B2
      ADFFA9B2ADFF313131FF353535FF3291F2FF3291F2FF2E302FFF2E302FFF838A
      87FFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFF737272FFB4B4B4FF0000
      0000836045FFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFEFE4DBFF494746FF969696FF000000002194B6FF29CFFFFF2DD0
      FFFF35D1FFFF38D2FFFFF0A257FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF918B85FF3C3A3AFF0000
      00009C7171FFB69797FFB79999FFB89A9AFFB89B9BFFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFB89A9AFFB89A
      9AFFB79898FFB69696FF5F4242FF898989FF00000000FEFEFEFFF8EDE4FFFFF4
      EAFFFFF4EAFFFFF4EAFF3291F2FF3291F2FF3291F2FF2F90F1FF3291F2FF8D86
      81FFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFF737272FFB4B4B4FF0000
      0000715D41FFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFFFF4EAFFFFF4
      EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4EAFFFFF4
      EAFFFFF4EAFFEFE4DBFF4A4846FF757575FF000000001F93B6FF27CEFFFF2BCF
      FFFF32D1FFFF35D1FFFFF0A257FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFF918B85FF3D3B3AFF0000
      00009C7171FFB59494FFB59494FFB59595FFB59595FFB59595FFB69696FFB696
      96FFB69797FFB69797FFB69797FFB79898FFB79898FFB79999FFB79999FFB799
      99FFB89999FFB89999FF5F4242FF6A6A6AFF00000000FEFEFEFFF8EDE4FFFFF4
      EAFFFFF4EAFFFFF4EAFF2F90F1FF2F90F1FF2F90F1FF3291F2FF3090F1FF2A8D
      F0FF8D8681FFC7BEB6FFFFF4EAFFFFF4EAFFFFF4EAFF737272FFB4B4B4FF0000
      0000615F3BFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFFFF5ECFFFFF5
      ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5ECFFFFF5
      ECFFFFF5ECFFEFE5DDFF504B46FF373737FF000000001A91B4FF20CDFFFF23CD
      FFFF29CFFFFF2CCFFFFFF0A45BFFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF0F0F0FF918B86FF423E3AFF0000
      00009C7171FFB28F8FFFB28F8FFFB29090FFB29090FFB29090FFB39191FFB391
      91FFB39292FFB39292FFB39292FFB49494FFB49494FFB59595FFB59595FFB595
      95FFB69595FFB69595FF5F4242FF323232FF00000000FEFEFEFFF8EEE5FFFFF5
      EBFFFFF5EBFFFFF5EBFFB3ABA4FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF29CB
      F0FF27CBF0FF464340FFC7BFB7FFFFF5EBFFFFF5EBFF737272FFB4B4B4FF0000
      000073633BFFFFF4EAFFFFF4EAFFFFF4EAFFFEF3E9FF9F9A96FFFFF6EFFFFFF6
      EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6EFFFFFF6
      EFFFFFF6EFFFEFE6E0FF524C47FF262626FF00000000128DB1FF22CDFEFF24CD
      FEFF29CEFEFF2ACEFEFFF0AA66FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF2F2F2FF948F8BFF443F3BFF0000
      00009C7171FFB49393FFB49393FFB49393FFB49393FFB49393FFB59494FFB594
      94FFB69595FFB69595FFB69595FFB69696FFB69696FFB79797FFB79797FFB797
      97FFB79898FFB79898FF5F4242FF222222FF00000000FEFEFEFFF8EEE6FFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFF2A8DF0FF2A8DF0FF2B8DF0FF2F90F1FF27CB
      F0FF24CAF0FF22C9EFFF5D625FFF838A87FFA9B2ADFF737272FFB4B4B4FF0000
      00007B633BFFFFF5EBFFFFF5EBFFFFF5EBFFFEF4EAFF9F9B96FFFFF7F1FFFFF7
      F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7
      F1FFFFF7F1FFEFE7E2FF55514CFF272727FF000000000F8CB0FF2ACEFEFF2BCF
      FEFF2FD0FEFF30D0FEFFF1AE6DFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFA39E9AFF4A4742FF0000
      00009C7171FFB99A9AFFB99A9AFFB99B9BFFB99B9BFFB99B9BFFBA9B9BFFBA9B
      9BFFBA9C9CFFBA9C9CFFBA9C9CFFBB9D9DFFBB9D9DFFBB9E9EFFBB9E9EFFBB9E
      9EFFBC9E9EFFBC9E9EFF5F4242FF232323FF00000000FEFEFEFFF8EFE9FFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFF767C79FF2A8DF0FF28CBF0FF28CBF0FF26CB
      F0FF24CAF0FF23CAF0FF2DCCF0FF2E302FFF838A87FF737272FFB4B4B4FF0000
      000075623AFFFFF6EEFFFFF6EEFFFFF6EEFFFEF5EDFF9F9B98FFFFF9F3FFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9
      F3FFFFF9F3FFEFE9E3FF514C45FF424242FF000000000888AEFF3BD3FEFF3CD3
      FEFF3ED3FEFF3ED3FDFFF2B67BFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF3B77EFFF7E0CEFFF7E0CEFFF4BE89FFD9D3CEFF4F4B44FF0000
      00009C7171FFCCB6B6FFCCB6B6FFCCB6B6FFCCB6B6FFCCB6B6FFCDB7B7FFCDB7
      B7FFCDB7B7FFCDB7B7FFCDB7B7FFCDB8B8FFCDB8B8FFCEB8B8FFCEB8B8FFCEB8
      B8FFCEB8B8FFCEB8B8FF5F4242FF3C3C3CFF00000000FEFEFEFFF8F0EBFFFFF7
      F1FFFFF7F1FFFFF7F1FFFFF7F1FFFFF7F1FFB3ADA9FF2ACCF0FF2ACCF0FF2ACB
      F0FF2BCBF0FF2CCCF0FF3BCFF1FF49D3F2FF8D8885FF737272FFB4B4B4FF0000
      00006E633AFFFFF6EFFFFFF6EFFFFFF6EFFFFEF5EEFF9F9B98FFFFF9F4FFFFF9
      F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFEAE3DDFF978A6BFF948867FF9488
      67FF948867FF887D5FFF4E4B46FF656565FF000000000687ADFF46D5FEFF46D5
      FEFF47D5FEFF48D5FEFFF3B880FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF6F6F6FFF3B77EFFF7E0CEFFF7E0CEFF59523EFF82785BFF4E4B46FF0000
      00009C7171FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8C8FFD9C8
      C8FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9C9FFD9C9C9FFDAC9C9FFDAC9C9FFDAC9
      C9FFDACACAFFDACACAFF5F4242FF5C5C5CFF00000000FEFEFEFFF8F2EDFFFFF9
      F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFB3AEAAFF33CDF0FF3ACF
      F1FF46D1F1FF4BD3F2FF5DD7F3FF6CDBF4FF8BE2F5FF3E3E3EFF8C8C8CFF0000
      0000746541FFFFF8F2FFFFF8F2FFFFF8F2FFFEF7F1FF9F9C99FFFFFAF7FFFFFA
      F7FFFFFAF7FFFFFAF7FFFFFAF7FFFFFAF7FFCAC3B7FFFAC936FFFFCC33FFFFCC
      33FFF5C430FF2D2623FF051002FF00000000000000000285ACFF5CDAFEFF5CDA
      FEFF5DDAFEFF5DDAFEFFF4BF8CFFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF8F8F8FFF4BE89FFF4BE89FF5CDAFEFF95771DFF2B2522FF000000000000
      00009C7171FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4E4FFEDE4
      E4FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5E5FFEDE5
      E5FFEDE5E5FFEDE5E5FF5F4242FFA6A6A6FF00000000FEFEFEFFF8F3EFFFFFFA
      F6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FFFFFAF6FF54D5
      F2FF69DAF3FF70DBF4FF7CDEF5FF88E1F5FFA1E7F7FFB4ECF9FF454545FFD6D6
      D6FF916748FFFFF9F4FFFFF9F4FFFFF9F4FFFEF8F3FF9F9C9AFFFFFCF9FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFCAC5BAFFFAD051FFFFD34FFFEDC3
      47FF92D2E1FF000000000000000000000000000000000085ACFF76E0FEFF76E0
      FEFF76E0FEFF76E0FEFFF5C393FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FF76E0FEFF76E0FFFF598089FFAEE4F0FF000000000000
      0000906748FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C71
      71FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C7171FF9C71
      71FF9C7171FFA4D7E3FF002605FF616161FF00000000FEFEFEFFF8F3F0FFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFB3AF
      ADFF7EDFF5FF85E0F5FF91E3F6FF9AE5F7FFB0EBF9FFBFEFFAFFC2F0FAFFD6D6
      D6FF926849FFFFFAF6FFFFFAF6FFFFFAF6FFFEF9F5FF9F9D9BFFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFCAC6BFFFFADB7FFFE6C76DFF5E70
      64FFAFEAF8FF000000000000000000000000000000000085ACFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF6A8E97FFB8E7F1FF000000000000
      0000000000000084ABFF80DFFAFF80DEF9FF7DD9F4FFA7A180FFE9E7E0FFE9E7
      E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFE9E7E0FFA7A180FF77CEE7FF7DD9
      F4FF688B93FFB5E3EDFFC0EEF8FF0000000000000000FEFEFEFFF8F5F2FFA9B2
      ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFA9B2ADFFFFFC
      F9FFAF9238FFAEEAF8FFBCEEF9FFC2F0FAFFCEF3FBFFD3F4FBFFD3F4FBFFE2E2
      E2FF936849FFFFFBF9FFFFFBF9FFFFFBF9FFFEFAF8FFA19E9DFFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFCAC9C7FFD2C9ADFFB2E2ECFFC1EF
      F9FF00000000000000000000000000000000000000000085ACFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF8DA6ABFFCEEEF5FF000000000000
      00000000000000000000000000000000000099E4F9FFA7A180FFE8E6DEFFE8E6
      DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFE8E6DEFFA7A180FF91D7EBFF99E4
      F9FF0000000000000000000000000000000000000000FEFEFEFFF8F6F4FFFFFD
      FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
      FBFFFADB7FFFB39C58FFCBF2FBFFD1F3FBFFD8F5FCFFDAF6FCFFD9F6FCFF0000
      0000936849FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFA19F9DFF9F9E9CFF8986
      82FF9D8B55FF9F8C54FF978551FF959493FF9D9069FF7B6C3EFF000000000000
      000000000000000000000000000000000000000000000085ACFFAAECFFFFAAEC
      FFFFAAECFFFFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD7614FFDD76
      14FFAAECFFFFAAECFFFFAAECFFFFAAECFFFFAEC5CBFFD7F3F9FF000000000000
      000000000000000000000000000000000000A6E6F9FFA7A180FFEBE9E2FFEBE9
      E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFEBE9E2FFA7A180FF9DD9EBFFA6E6
      F9FF0000000000000000000000000000000000000000FEFEFEFFF8F7F7FFFFFE
      FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFD3C9ADFF8A8982FFB2B2B2FFDFF7FCFFDFF7FCFFA8A8A8FF000000000000
      0000946949FFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFCAC7
      C2FFFAE6ABFF6A6863FFEFEEEEFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFCFBFF0085ACFF0085
      ACFF0085ACFFDD7614FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFF0085ACFF0085ACFF0085ACFFC2D7DBFFDBF2F7FF00000000000000000000
      0000000000000000000000000000000000000082A9FFA7A180FFF5F4F0FFF5F4
      F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F1FFF5F4F0FFA7A180FF007CA0FFBED3
      D7FF000000000000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000A1A0A0FF9C9C9CFF999999FF999999FF999999FF989797FF878077FF8061
      41FF7F4A12FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000979696FF827B73FF795C3EFF794611FFB46511FFAB6112FF9562
      2DFFB6AB9FFFD8D6D5FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000979797FFA7A180FFA7A180FFA7A1
      80FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFA7A180FFF1F1F1FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F1FFC0C0C0FF676767FF454545FF2E2E2EFF2C2C2CFF3D3D
      3DFF6F6E6FFF949394FFE1E1E1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D4FFC4C3
      C4FFC6C5C6FFC7C6C7FF9E9D9EFF555455FF3A393AFF272627FF252425FF3332
      33FF5C5A5CFF7A787AFFB9B8B9FFCBCACBFFD2D1D2FFE0DFE0FFF1F1F1FF0000
      000000000000F0F0F0FFD2D2D2FFC2C1C2FFC4C3C4FFC5C4C5FF9C9B9CFF5453
      54FF393839FF272627FF252425FF323132FF5B595BFF797779FFB8B7B8FFCAC9
      CAFF00000000000000000000000000000000000000000000000000000000C382
      6DFF222022FF2F261EFF45290DFF985E24FFA86B2BFFB77430FFA46B29FF4F4C
      15FF032503FF021702FF080707FF221F20FF6F686AFF00000000000000000000
      0000000000000000000000000000A46E5CFF131213FF282019FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DD965FFFDE97
      60FFDE9862FFDE9964FFDF9B67FFDF9B67FFDF9B67FFDF9B68FFDF9B68FFDF9B
      68FFDF9B67FFDF9B67FFDE9964FFDD9862FFDC955FFF827C7EFFB7B5B5FF0000
      0000E8E8E8FF8B5D4EFF956540FF966641FF966742FF966743FF966945FF9669
      45FF966945FF966946FF966946FF966946FF966945FF966945FF986945FFCB8B
      5AFFDB945FFF0000000000000000000000000000000000000000C0806CFFA56E
      5CFF3B240EFF653C14FFD98836FFDF903EFFDF903FFFDF9140FFDF9140FFDF8E
      3CFF9D6A25FF2F3A0BFF011301FF080904FF543620FF00000000000000000000
      00000000000000000000856B73FF526CA1FF31323DFF38210BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E29B60FFDDD8
      DDFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9
      DEFFDED9DEFFE0DBE0FFDFDADFFFDED9DEFFDAD3DAFF3C3638FF5F5B5CFF0000
      0000DEDEDEFF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199
      C6FF2199C6FF2199C6FF2199C6FF2199C6FF2199C6FF2198C5FF7B929EFFBCB8
      BCFFD8D1D8FF00000000000000000000000000000000C3826DFF6A4B32FF7346
      17FFDD8933FFDE8B37FFDF8E3CFFE09242FFE09243FFE09344FFE09243FFDF91
      40FFDF8D3BFFDE8C38FFCA7D2AFF323A0BFF060A01FF444242FFB06026FF0000
      000000000000000000006A71C6FF596DADFF526CA1FF526CA1FF7B4F21FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA55FFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFDDD7DDFF332F31FF9B5422FF0000
      0000DF7C32FF56D2EBFF52D1EBFF58D2EBFF6AD4EBFF74D5EBFF7DD6EBFF80D7
      EBFF80D7EBFF80D7EBFF7FD7EBFF7BD5EBFF74D3EAFF6FD2E9FF2198C5FF8399
      A1FFD9D3D9FF0000000000000000000000000000000096A496FFD58128FFDD86
      2EFFDE8B36FFDE8C39FFDF903FFFE09243FFE7AD72FFFFFFFFFFFFFFFFFFE092
      42FFDF8E3CFFDE8D3AFFDD8933FFDD872FFF353A0AFF090B09FF5C3314FF0000
      00000000000000000000596DADFF6A71C6FF596DADFF526CA1FF526CA1FF7C51
      25FFC39260FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A55DFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFEAEAEAFFDDD8DDFF080808FF512D12FF0000
      0000DF7C32FF5CD9F1FF24A1CDFF5DD9F1FF6CDBF1FF74DCF1FF80DEF1FF84DE
      F1FF84DEF1FF84DEF1FF83DEF1FF7DDCF0FF74D9EEFF6FD7EDFF53C2DFFF2199
      C5FFC0BBC0FF080808FF0000000000000000DD7B32FF4C793AFFDC852CFFDD86
      2EFFDE8B36FFDE8D3AFFDF903EFFE09242FFE7AD72FFFFFFFFFFFFFFFFFFE091
      41FFDF8E3CFFDE8D3AFFDD8933FFDD8730FFC87A25FF041302FF281609FFD0D0
      D0FF0000000000000000AA7C54FF596DADFF6A71C6FF596DADFF526CA1FF6C59
      50FF80603FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A45AFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFDDD8DDFF050E03FF241309FF0000
      0000DA7A31FF5FDDF4FF25A4CFFF5EDDF4FF6BE0F4FF72E1F4FF7FE1F4FF84E2
      F4FF85E2F4FF83E2F4FF82E2F4FF7CDFF3FF74DCF1FF6EDAF0FF5ED0E8FF219A
      C6FF959295FF050E03FF241309FF00000000BE6C2BFFD87F23FFDC852CFFDD86
      2EFFDD8A34FFDE8B37FFDF8E3CFFDF903FFFE29D56FFEEC79FFFEEC79FFFDF8F
      3DFFDE8D3AFFDE8C38FFDD8932FFDD872FFFDC8329FF4E2D0CFF1A1004FF9B9B
      9BFF00000000000000000000000000000000596DADFF6A71C6FF596DADFF526C
      A1FF526CA1FF846E58FFC9A886FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A256FFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFDCD7DCFF3A200BFF180E04FF0000
      0000BC6B2AFF5FE4F9FF5EE4F9FF27A9D2FF64E4F9FF6AE5F9FF76E6F9FF7CE7
      F9FF7DE8F9FF7CE7F9FF7AE7F9FF76E5F8FF6DE1F6FF67DFF4FF5CD8F0FF51CD
      E8FF6C8F9FFF371E0AFF180E04FF00000000946522FFDB8024FFDC842AFFDC85
      2DFFDD8932FFDE8A35FFDE8C39FFDF8E3CFFE09447FFE6A96CFFE6A96CFFDF8D
      3BFFDE8B37FFDE8A35FFDD8730FFDC862DFFDB8328FFA05D18FF291908FF7979
      79FF00000000000000000000000000000000AB7F58FF596DADFF6A71C6FF526C
      A1FF526CA1FF6E615FFF7F5D3CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A155FFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFDCD6DCFF754313FF251608FF0000
      0000926422FF5AE5FBFF5AE5FBFF5AE5FBFF60E6FBFF65E7FBFF70E8FBFF75E9
      FBFF76E9FBFF75E8FBFF74E8FBFF6EE6FAFF66E2F8FF61E0F6FF56DAF2FF53D5
      EFFF219AC6FF683B11FF241608FF000000006D6A14FFDA7F21FFDB8126FFDB83
      28FFDC852CFFDC862DFFDD8831FFDD8932FFE4A360FFFFFFFFFFFFFFFFFFDD89
      32FFDD872FFFDD862EFFDC842BFFDC8329FFDB8024FFDA7E1FFF663A0DFF3939
      39FF000000000000000000000000000000000000000000000000596DADFF6A71
      C6FF596DADFF526CA1FF526CA1FFBB502AFFC7542EFFC3532CFFA04D21FF7B47
      16FFB4691EFF0000000000000000000000000000000000000000F0A256FFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFEAEAEAFFDCD6DCFF9E5A18FF5A330CFF0000
      00006C6914FF53E6FDFF54E6FDFF56E6FDFF28ACD5FF61E8FDFF65E9FDFF67E9
      FDFF67E9FDFF66E9FDFF66E9FDFF61E8FCFF5CE5FAFF58E2F9FF4FDCF5FF4CD8
      F2FF38BBDEFF653F18FF502E0BFF393939FF9A7214FFDA7D1EFFDB8024FFDB82
      27FFDB842CFFDC852DFFDC862EFFDC8730FFDC8730FFFFFFFFFFFFFFFFFFF8E7
      D7FFDC852EFFDC852DFFDB842AFFDB8227FFDA7F21FFD97C1CFF9D5A13FF2727
      27FF000000000000000000000000000000000000000000000000000000005C6F
      AEFF6A71C6FF526CA1FFC7542EFFC9926FFFDDD5B2FFD2BE9BFFC35832FFC754
      2EFFA14C1FFFB36617FF9B5913FF000000000000000000000000F0A45BFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFECECECFFDCD7DCFF824913FF894E12FF0000
      0000987114FF5DE9FDFF5FE9FDFF61EAFDFF66EAFDFF29ADD6FF67EBFEFF67EB
      FEFF67EBFEFF67EBFEFF65EAFDFF64EAFDFF5FE7FCFF5BE6FBFF52E0F7FF4FDC
      F5FF4CD5EFFF219AC7FF5D370EFF272727FFAB7214FFDB832AFFDC862DFFDC86
      2EFFDD8831FFDD8831FFDD8833FFDD8933FFDD8933FFF8E7D6FFFFFFFFFFFFFF
      FFFFE29B54FFDD8832FFDD8730FFDC862EFFDB852CFFDA7D1FFFAD6012FF2828
      28FF00000000000000000000000000000000000000000000000000000000AD81
      5EFF5F77A7FFC9603EFFCB8F70FFDFD7B6FFDFD7B6FFDFD7B6FFDED7B5FFC583
      60FFC7542EFF7B4712FFAB5F12FF000000000000000000000000F0A65DFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEDEDEDFFDDD8DDFF5A330FFF975311FF0000
      0000A97114FF68EAFDFF6AEAFDFF6BEBFDFF71ECFDFF29ADD6FF29ADD6FF29AD
      D6FF29ADD6FF29ADD6FF29ADD6FF28ACD5FF28ABD4FF28AAD4FF27A7D1FF26A6
      D0FF24A1CCFF219AC6FF7B6036FF282828FF9C7111FFDD8B38FFDE8D39FFDE8D
      3AFFDE8D3BFFDE8E3CFFDE8E3CFFDE8E3CFFDE8E3CFFDE8E3CFFDE8F3EFFFFFF
      FFFFFFFFFFFFF9EBDDFFDE8D3AFFDE8D3AFFDE8C39FFDC852CFF905D0EFF4343
      43FF00000000000000000000000000000000000000000000000000000000D273
      3AFFCF6E4EFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DCBEFFE2DC
      BEFFCA7253FFA04D22FF6F470BFF000000000000000000000000F0A861FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFDED9DEFF75371AFF623E0BFF0000
      00009B7011FF88EEFDFF89EEFDFF89EFFDFF8DEFFDFF8FEFFDFF93F0FEFF92F0
      FEFF91F0FDFF8EEEFCFF8DEEFCFF8DEEFCFF89ECFBFF88EAFAFFA3A3A3FFE7E7
      E7FF000000000000000000000000000000008C7311FFDE903FFFDF9040FFDF90
      40FFDF9141FFDF9141FFDF9141FFDF9142FFDF9142FFDF9142FFDF9142FFF2D3
      B3FFFFFFFFFFFFFFFFFFDF9141FFDF9040FFDE903FFFDB8329FF75560DFF6565
      65FF00000000000000000000000000000000000000000000000000000000CE6D
      47FFD27759FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DDC2FFE4DD
      C2FFD1A283FFBB502AFF423107FF000000000000000000000000F0A863FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEEEEEEFFDED9DEFF883920FF3B2B07FF0000
      00008B7211FF99F1FDFF9DF1FDFF9EF1FEFF9FF1FEFFA0F2FDFFA0F2FEFF9DF0
      FDFF99F0FCFF93EFFCFF92EFFCFF91EEFCFF8EECFAFF8DEBF9FFA7A7A7FFE9E9
      E9FF000000000000000000000000000000009A7622FFE09547FFE1994FFFE199
      4FFFE1994FFFE8B27BFFFFFFFFFFEFC8A0FFE29A50FFE29A50FFE29A50FFE9B4
      7DFFFFFFFFFFFFFFFFFFE1994FFFE1994FFFE1994FFFD07311FF133D06FFB1B1
      B1FF00000000000000000000000000000000000000000000000000000000D278
      5AFFD7866CFFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1C8FFE7E1
      C8FFE7E1C8FFC7542EFF0B2203FF000000000000000000000000F0AD6AFFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFE0DBE0FF933D24FF0A1E03FF0000
      00000000000028ACD5FFBBF4FDFFBEF5FDFFC0F5FDFFC0F5FDFFBFF5FDFFB7F3
      FDFF28ABD4FFECECECFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFEDED
      EDFFDCD7DCFF8E3B23FF0A1D03FFAEAEAEFFDD7B32FFD57714FFE4A361FFE4A3
      61FFE4A361FFE4A361FFFFFFFFFFFFFFFFFFFFFFFFFFF4DCC3FFF6E3CFFFFFFF
      FFFFFFFFFFFFF3D8BCFFE4A361FFE4A361FFE29B52FF2E4C09FF121B05FFB0B0
      B0FF00000000000000000000000000000000000000000000000000000000D37F
      63FFDB9179FFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5CFFFEAE5
      CFFFDAB49DFFAF4C28FF0E1504FF000000000000000000000000F1B274FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF2F2F2FFF2B579FFF1B172FFEFAF71FFE2A26DFF974123FF0D1404FF0000
      0000000000000000000028ACD5FFCEF6FDFFCEF6FDFFCEF6FDFFCCF5FCFFEBEB
      EBFFEFEFEFFF00000000F2F2F2FFEFEFEFFFEEEEEEFFF0B478FF00000000EEAE
      71FF009511FF009313FF009114FF737373FF00000000957710FFE5A564FFE6A8
      69FFE6A869FFE6A869FFF1CFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E1CCFFE6A96BFFE6A869FFE6A869FFDD8730FF103813FF3C4A4DFF0000
      000000000000000000000000000000000000000000000000000000000000E1A7
      93FFDB927AFFEAE5D0FFEBE6D2FFEBE6D2FFEBE6D2FFEBE6D2FFEBE6D2FFEAE5
      D0FFDA9B84FF6A3A1CFF3B494CFF000000000000000000000000F2B67BFFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF3B77DFFF7E0CEFFF5DECCFFE3AC82FF64371AFF3A484BFF0000
      00000000000000000000F1B57BFF28ABD4FF28ABD4FF28ABD4FF28AAD3FFF0F0
      F0FFF3F3F3FF00000000F3F3F3FFAAAAAAFFECECECFFEEB37BFFF5DECCFFF2DB
      CAFF009512FF009313FF009214FF6F6F6FFF00000000C0532DFFD47717FFE197
      4BFFE9B27AFFE9B27AFFE9B27AFFE9B27AFFE9B57FFFEEC59AFFEDC296FFE9B2
      7AFFE9B27AFFE9B27AFFE9B178FFE29A50FF3A580DFFA26855FFBD745DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB8D5EFFE2AA98FFDEBBA8FFECE8D5FFEEEAD9FFEDE9D7FFEEEAD8FFDEBA
      A6FFC85732FF0000000000000000000000000000000000000000F3BC87FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF4BD87FFF4DDCCFFEFB886FFBC522FFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F6FF007B0DFF6D6F72FFAE8760FFB8A69AFFB48B
      65FF009611FF009512FF009512FF6F6F6FFF0000000000000000AF8B44FFD477
      17FFE9B47DFFEAB884FFEAB884FFEAB884FFEAB884FFEAB884FFEAB884FFEAB8
      84FFEAB884FFEAB884FFE2984DFFD3791AFF555C3CFFC1836EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3795BFFE5B19FFFE3C6B4FFEFECDCFFEBE1D1FFE1AE9EFFD888
      6EFF8A4F2FFF0000000000000000000000000000000000000000F4BF8CFFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF3BE8BFFEFB886FFB8745EFF884E2EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B0FFF166C23FF275822FF2A5924FF1E54
      1BFF009710FFBA7E6AFF009610FF848484FF000000000000000000000000C251
      2DFFBF6915FFD77A1AFFEBB986FFEDC296FFEDC296FFEDC296FFEDC296FFEDC1
      95FFE39D56FFD77A1CFF7B5935FF989F9AFFD6B3A8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBBF93FFCB603AFFC7542EFFC6542CFFA15630FF999D
      97FF000000000000000000000000000000000000000000000000F5C393FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF2C294FFF0BD90FF99522EFF979B95FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086A159FF57933EFF177714FF3686
      3EFF9EA47FFFD3A292FFCE9482FFE5E5E5FF0000000000000000000000000000
      000000000000EFEEEEFFC8B6A1FFB76D22FFB96917FFBF6A12FFB56613FF9D67
      2FFFBAAFA3FFD9D7D6FFFAFAFAFF000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000F7F7F7FFF0F0F0FFE2E2
      E2FFE6E6E6FFF9F9F9FFFDFDFDFFECECECFFCCCBCCFFD1D0D1FFEEEEEEFFF9F9
      F9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F3FFCCCCCCFF7C7C
      7CFF5A5A5AFF414141FF3F3F3FFF505050FF7D7C7DFF9D9C9DFFE3E3E3FFF6F6
      F6FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646063FF514A4CFF4F474AFF4F474AFF4D4548FF1107
      96FF22185CFF393034FF4D4448FF554C50FF847C7EFFB1ACACFFCFCDCDFF0000
      000000000000000000000000000000000000353335FF5F5B5FFF815731FF7B52
      2CFF262324FF453E41FF473F42FF0F0683FFC77E38FF754A24FF292527FF4C44
      47FF827B7DFF0000000000000000000000000000000000000000000000000000
      0000343234FF5C585CFF78512EFF714C29FF232021FF40393CFF413A3DFF0E06
      79FFB77434FF6C4421FF262224FF463F41FF787173FFADA8A8FF000000000000
      0000000000000000000000000000C5836EFF262325FF3B3026FF774717FFA562
      20FFA86521FFAB6722FF81741DFF10920FFF085707FF042C03FF0A0909FF2622
      23FF70696BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000CA8550FFD08B55FFD18D57FFD18D58FFD18D58FFD18D
      58FFD18D58FFD18D57FFD08C55FFD08B54FFC8834EFF595353FF6E6B6BFF0000
      000000000000000000000000000000000000593E29FF5F422CFFC67B34FFCA81
      3BFFCB823DFF6D4A2EFFB0774AFFCB833EFFC97F3AFFC77D37FF654429FF8F5F
      3AFFC4804CFF000000000000000000000000000000000000000000000000C684
      6FFF563C27FF583D29FF7E4E21FF805125FF805227FF452F1DFF6F4B2FFF8053
      27FF7F5025FF7E4F23FF402B1AFF5A3C25FF7C5130FF524C4CFF6B6868FF0000
      00000000000000000000C2826DFFAD7361FF533314FF834F1BFFAD6722FFB26B
      24FFB26C25FFB16D24FF887920FF13A112FF0F9C0FFF0D8C0DFF022301FF0B0C
      05FF583922FF514B4BFF00000000000000000000000000000000000000000000
      00000000000000000000E49C5BFFEEB987FFEFB988FFEFB988FFEFB988FFEFB9
      88FFEFB988FFEFB988FFEFB988FFEEB987FFDAD2D2FF9F9A9AFFCD702DFF0000
      000000000000000000000000000000000000BF7D68FFC4782FFF9B632FFFD1A3
      77FFCE8642FFA46F3EFF9D6B3CFFCF8744FFD5A579FFCB8C52FFC57932FF785E
      44FFD2CBCBFF0000000000000000000000000000000000000000C5836DFFC17F
      6AFFC7542EFFFFA64DFFFFA64DFFFFA64DFFC7542EFF7F7F7FFF999999FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFC7542EFF646161FFBD6729FF0000
      000000000000C5836EFF805A3CFF8B551FFFAC6724FFAF6924FFB26C25FFB56E
      26FFB66E26FFB66F26FF8C7C21FF13A413FF12A212FF11A111FF0F9B0EFF0F91
      0EFF091002FF474545FFB16126FF000000000000000000000000BD7C67FFB574
      61FFAA6D5AFFA96C58FFE9A05AFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFDDD7D7FFA29D9DFFCD702DFF0000
      000000000000000000000000000000000000A56A57FFC5782FFF9E652FFFD3A6
      79FFDDAD7FFFD28C49FFD28C49FF765C44FFDDAD7FFFCC8F54FFC57932FF7E62
      48FFD6D0D0FF00000000000000000000000000000000E4E3E4FFAF735FFF744A
      3EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC7542EFF7F7F7FFF999999FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFF666363FFBD6729FF0000
      000000000000A6B6A6FF189610FF5D821AFFAF6B24FFB26C25FFB66E26FFB86F
      27FFBA7027FFB97127FF8E7E22FF13A713FF12A512FF12A412FF11A111FF119E
      11FF0F900EFF0D100DFF663816FFD9D9D9FF0000000000000000D0CFCFFF9E64
      53FF8A5647FF885546FFEA9F5AFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFDCD6D6FFA5A0A0FFCD702DFF0000
      000000000000000000000000000000000000875446FFC4772EFF9E652FFF9C9C
      9CFFCBCBCBFFD28C49FFD38D4AFF707070FFCBCBCBFFB38B63FFC57931FFA1A1
      A1FFD8D2D2FF00000000000000000000000000000000E2E2E2FFC7542EFFC252
      2CFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC7542EFF7F7F7FFF999999FFC0C0
      C0FFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFF686565FFBD6729FF0000
      0000DF7C32FF4C974CFF139B12FF239813FFB06C24FFB46D25FFB86F26FFBA70
      26FFBB7027FFBA7126FF8F7F21FF13A913FF12A712FF12A612FF12A211FF12A0
      12FF109A0FFF072304FF321B0BFFD2D2D2FF0000000000000000D99154FFDBD4
      D4FFDFDADAFFE3E0E0FFEDA055FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFDDD7D7FFA8A3A3FFCD702DFF0000
      000000000000000000000000000000000000DED9D9FFDFDCDCFFC87C33FFA177
      4FFF6B6B6BFFD28A46FFD28A46FF616161FFCB813AFFC97E36FFCFCFCFFFDEDE
      DEFFDCD6D6FF00000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFFFA64DFFFFA64DFFFFA64DFFFFA64DFF6A6767FFBD6729FF0000
      0000C9722DFF10990FFF129F12FF14A114FF68871DFFB27025FFBA7026FFBD71
      28FFBD7228FFBD7328FF918123FF14AB14FF13AA13FF13A913FF13A413FF209F
      13FF85781EFF975C1EFF311E08FFA4A4A4FF0000000000000000E39A58FFE7E4
      E4FFEFB988FFF0BB89FFEFA156FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFDED8D8FFA5A0A0FFCB6F2DFF0000
      00000000000000000000000000000000000000000000EFBA88FFC6782FFFCC80
      38FFA36E3BFFD18741FFD18842FF9B6838FFCA7E36FFC77B31FFE4B283FFEDBA
      88FF0000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFF686565FFBB6629FF0000
      0000A57126FF129E12FF3DB13DFF91D391FF2AA016FF937D22FFBB7127FFBE73
      28FFC27A33FFDCB790FF95892DFF14AC14FF85D285FF87D286FF469519FF817E
      1EFFAE6B23FFA86521FF603912FF878787FF0000000000000000E89D58FFEBEB
      EBFFF4BF8CFFF4BF8CFFF0A45BFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFDFD9D9FF958E90FFC26A2BFF0000
      0000000000000000000000000000000000000000000000000000EFA35BFFD593
      54FFCB7C30FFCC7F34FFCD7F35FFCB7C31FFD4A67AFFE6B484FFF3BE8BFF0000
      00000000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA6
      4DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFFFFA64DFF5E5A5BFFB36228FF0000
      00004D8017FF12A012FF55BC55FFD4EED4FF16AA15FF1EA816FFBA7428FFBF74
      29FFC57F38FFEDDBC8FF978D33FF1DAD15FFD7E1C4FFE9DCC7FFB97229FFB66F
      27FFB26C26FFAE6924FF9F5F1FFF4A4A4AFF0000000000000000E89B54FFEBEB
      EBFFF4BF8CFFF4BF8CFFF0AA66FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF4BF8CFFF4BF8CFFF4BF8CFFF3BE8BFFE1DBDBFF817A7CFFAE5E28FF0000
      000000000000000000000000000000000000000000000000000000000000E8B5
      85FFA48E79FF848484FF848484FF73685EFFD3A679FFE8B585FF000000000000
      00000000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFA64DFFFFA64DFFED904DFFED8E48FFED8C45FFED8B43FFED8B43FFED8B
      43FFED8C45FFED8E48FFED904DFFFFA64DFFFFA64DFF514D4EFFA05725FF0000
      00002E8B12FF16A216FF5BC05BFFD6EFD6FF2FB32DFF3DAF2EFFC2823EFFC27A
      31FFC78541FFEFDDCBFFBD883FFFBF7A31FFEEDDCBFFF3E6DAFFEDDCCBFFEAD7
      C5FFC7935FFFAF6B26FFA76521FF373737FF0000000000000000E89B53FFECEC
      ECFFEEEEEEFFEEEEEEFFF1AE6DFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFE0DADAFF797192FFB6622AFF0000
      0000000000000000000000000000000000000000000000000000F0AD6DFFDDDD
      DDFF828282FF848484FF848484FF828282FFA3A3A3FFDDDDDDFFF2F2F2FF0000
      00000000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFA953FFFFA953FFED9454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFED9454FFFFA953FFFFA953FF4C475CFFA85A27FF0000
      00002D8D12FF23A723FF63C263FFD8EFD8FFC8E8C7FFD5E5C7FFEDDCC9FFC580
      3AFFC98948FFEFDECCFFC88947FFC37F39FFEEDDCBFFEEDECEFFC5894EFFD2A5
      79FFE6CFB8FFB27332FFA56924FF393939FF0000000000000000E89B54FFEDED
      EDFFEFEFEFFFEFEFEFFFF2B67BFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF3B77DFFF5DECCFFF1D9C8FFD8A074FFE3E2E2FFE47F33FF0000
      0000000000000000000000000000000000000000000000000000ECB278FF8484
      84FF858585FFA4A4A4FFD9D9D9FF858585FF717171FFA37B54FFEFD9C7FFF0D8
      C7FF0000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFB367FFFFB367FFED995DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFED995DFFFFB367FFFFB367FF8F8F8FFFD2752FFF0000
      0000368A13FF34AD33FF6EC76EFFDAEFD9FF919843FFC38949FFC78849FFC989
      49FFCD9256FFEFE0CFFFCD9256FFC88849FFEEDFCEFFEEDFCFFFC3884BFFC699
      63FFDCE7D1FF38A730FF1A9816FF565656FF0000000000000000E89C57FFEEEE
      EEFFF4BF8CFFF4BF8CFFF3B880FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF6F6F6FFF3B980FFF1D9C8FFEAD1C0FF2E2B2CFFF2F2F2FF000000000000
      0000000000000000000000000000000000000000000000000000E7AF79FF8787
      87FF888888FFD3A679FFE5B383FF888888FF727272FF785B3FFFE5CEBEFFE7CF
      BEFF0000000000000000000000000000000000000000C7542EFFFFA64DFFF9A2
      4BFFFFBA75FFFFBA75FFED9B61FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFED9B61FFFFBA75FFFFBA75FF999999FFD97931FF0000
      0000418915FF3AAF3AFF75C975FFDEF1DDFFDCCCACFFE4C9ADFFE4C9ACFFE5C8
      ACFFE8CDB2FFF4E8DCFFE6CBB0FFDBB58CFFEFE1D2FFF1E7DBFFDACEAEFFD5DC
      BEFFABDCA9FF33AB31FF149412FF797979FF0000000000000000E8A261FFF0F0
      F0FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF
      8CFFF5F5F5FFEFB988FFDCA577FFA2634FFF2F4B53FF00000000000000000000
      00000000000000000000000000000000000000000000F1BD8AFFA48E79FF8F8F
      8FFF786C60FFE8B585FFF1BD8AFFAC957EFF8F8F8FFF72665CFFBF8F67FF9A5E
      4BFF0000000000000000000000000000000000000000C7542EFFFFAC59FFF9A7
      56FFFFCB96FFFFCB96FFEDA575FFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFEDA575FFFFCB96FFFFCB96FF535353FFA65C25FF0000
      0000A07E26FF2EA92EFF54B851FF90A659FFC99560FFCB9560FFCD9760FFCF98
      61FFCF9860FFCF9961FFCF9960FFA0A75AFF57BF53FF53C152FF52BE51FF52BC
      51FF50B950FF20A220FF0D6C0BFFBBBBBBFF0000000000000000E9AA6EFFF2F2
      F2FFF4BF8CFFF4BF8CFFF5C393FFF5C596FFF5C596FFF5C596FFF5C596FFF3C3
      94FFE9B88CFFDDA97FFFC28B7AFFC58570FF0000000000000000000000000000
      000000000000000000000000000000000000F1BD8AFFE8B585FF989898FF7A6F
      65FFD4AB82FFF2C394FF00000000F0C192FF989898FF979797FF5F443CFFAB73
      61FFBF765EFF00000000000000000000000000000000C7542EFFFFBA75FFFDB8
      74FFFFE6CDFFFFE6CDFFEDB79AFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFFEDB79AFFFFE6CDFFFFE6CDFF4F676CFF361E0CFF0000
      0000DF7C32FF159A13FFA6A465FFC89C6DFFCD9E6FFFCE9E6FFFD0A070FFD2A1
      70FFD2A171FFD3A271FFD2A170FFD0A16FFF81BB66FF65C463FF62C262FF61C1
      61FF58BA58FF0F7A10FF162206FFB1B1B1FF0000000000000000EAAE75FFF3F3
      F3FFF5F5F5FFF5F5F5FFF3F3F3FFEEEEEEFFEDEDEDFFEBB179FFEFD8C7FFEAD2
      C1FFD6A073FFB5958BFFD09F90FF000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEFFFDFDFDFFF9C9C9CFF9F9F
      9FFFD8D8D8FFEAB079FF00000000E9D1C0FF9C9C9CFF9C9C9CFF604A43FF8A63
      57FFBF7A64FF00000000000000000000000000000000C7542EFFFFC488FFFEC3
      87FFC7542EFFFFE9D3FFEDB99EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDB99EFFFFE9D3FFC7542EFF4C5E63FF5B7075FF0000
      0000E17D33FF2C8B14FFBB9661FFC9A074FFCFA377FFD0A477FFD2A578FFD3A5
      78FFD4A578FFD4A579FFD3A678FFD2A577FFC1AA74FF8DBB6FFF6CC46BFF69C2
      69FF48B248FF164E1BFF425255FF000000000000000000000000EBB381FFF5F5
      F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF2BB85FFF1D9C8FFDCA5
      77FFD8BEB3FFDBC1B7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E8FFA5A5A5FFA5A5A5FFE1E1
      E1FFF1F1F1FF000000000000000000000000D3BAAFFFA5A5A5FFA5A5A5FF6A56
      4FFFC28C7BFF00000000000000000000000000000000C7542EFFFFD4AAFFFFD4
      AAFFECAA81FFFDFDFDFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFE7A6
      7EFFF9CFA6FFF9CFA6FFC2522CFF413531FFBA8776FFC37D66FF000000000000
      000000000000C2542DFF947126FFB78249FFD0AA83FFD3AC86FFD5AE87FFD6AF
      87FFD7AF88FFD7AF88FFD7AF87FFD6AF87FFD3AE86FFD2AD85FF9DBA7CFF65BB
      61FF187F15FFAA6D59FFBE755EFF000000000000000000000000ECB685FFF5F5
      F5FFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFF4BF8CFFEFB988FFEAD1C0FFC797
      6EFFE3CABFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE9883FFAAAAAAFF817569FFE8B5
      85FFF1BD8AFF000000000000000000000000E0C8BDFFA68F7EFFAAAAAAFF7C74
      71FFC8998AFF00000000000000000000000000000000C7542EFFFFE6CDFFFFE6
      CDFFEDB79AFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFEDB7
      9AFFFFE6CDFFFFE6CDFFC7542EFF736B69FFC69889FF00000000000000000000
      00000000000000000000A5A163FFA16D29FFCAA076FFD2AD89FFD6B28EFFD7B4
      8FFFD8B490FFD8B490FFD8B490FFD8B48FFFD6B28EFFD4B18BFFBB9C6BFF6990
      34FF666E48FFC3846FFF00000000000000000000000000000000E7B488FFEDBC
      8FFFEEBE90FFEEBE90FFEEBE90FFEEBE90FFECBB8EFFDDA97FFFDBD9DAFFE5B2
      88FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9BA8DFFB3B3B3FFE0B388FFEBBC
      8EFF0000000000000000000000000000000000000000D2752FFFB3B3B3FFD0E7
      EBFFDBB6ABFF00000000000000000000000000000000F8F8F8FFC7542EFFC754
      2EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC7542EFFC754
      2EFFC7542EFFC7542EFFADADADFFCDE3E7FF0000000000000000000000000000
      00000000000000000000C6542EFFC4522DFFA76123FFAA6928FFC18F5EFFD5B3
      92FFD8B796FFD9B999FFD8B898FFD5B290FFBD8954FFAF7133FF8F6C47FFA7AF
      A9FFD8B4A9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFF1F0F0FFD4C4B3FFAF7A
      44FFA86C30FFA86927FFA7692BFFAB7F51FFCFC3B6FFE6E4E2FFFCFCFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FFE2E1E2FFECEBECFFFDFDFDFF000000000000000000000000000000000000
      000000000000F2F2F2FFE0E0E0FFDFDFDFFFF0F0F0FFF9F9F9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FFE5E5E5FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE5E5E5FFF2F2F2FFEAEAEAFF969396FF716D71FF716D
      71FF716D71FF716D71FF716D71FF716D71FF716D71FF716D71FF6E6A6EFF130B
      E5FF2D258CFF504A50FF6E686EFF7A747AFFC0BEC0FF00000000000000000000
      000000000000C88671FFC88671FFC88570FF363436FF646064FF6F6B6FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FFD4D4D4FF0000000000000000000000000000000000000000000000000000
      0000E9E9E9FF7C7C7CFF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF7C7C7CFFE9E9E9FFE0E0E0FFDB945FFFDC9662FFDC97
      64FFDD9A66FFDD9A66FFDD9A66FFDD9A67FFDD9A67FFDD9967FFD49463FF120B
      ECFF120BEAFF855846FFBF7E55FFCB855BFF625F62FF00000000000000000000
      000000000000C88671FFC78570FFC7856FFF5B3F2AFF684830FFCD8F5FFFD595
      63FFD79664FFDA9766FFD39363FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7EFFA8A8A8FF0000000000000000000000000000000000000000000000000000
      0000EC8335FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFEC8335FFDCDCDCFFE27D33FFE2DFE2FFE3DFE3FFE3DF
      E3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3E0E3FFDBD9DBFF6F6DDAFF0E0B
      F6FF0E0BF4FF0E0AF2FFA29AA2FFBF7E52FFB4B1B4FF00000000000000000000
      000000000000C7856FFFC7846EFFC7836DFFC6826CFFC5806AFF626062FF6A68
      6AFF6C6A6CFFC3C1C3FF6867CDFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF8989
      89FF919191FFFEFEFEFFFEFEFEFF000000000000000000000000000000000000
      0000EC8335FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF3F3F3FFFB4B4
      B4FFB4B4B4FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFEC8335FFDCDCDCFFE27D33FFE9E8E9FFE9E8E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF9898DBFF0908FCFF5958
      C7FF6765E3FF0B08F7FF746EA0FFA16944FFB2AFB2FF00000000000000000000
      000000000000E8E7E8FFC6826CFFC6816BFFC57F69FFC47E67FFC37B64FFC177
      60FFC0765FFF3F3F5AFF040477FF5251B7FF0000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FF909090FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9090
      90FF686868FFA7A7A7FFFDFDFDFFFEFEFEFFFEFEFEFFFDFDFDFFFEFEFEFF0000
      0000EC8335FFECECECFFECECECFFECECECFFECECECFF343434FF353535FF4040
      40FF828282FFB8B8B8FFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEC8335FFDCDCDCFFE27D33FFEAEAEAFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFF5D5DE3FF0706FEFF8F8E
      BCFFC2C1E0FF0907F9FF403AC7FF93613FFFAEABAEFF00000000000000000000
      00000000000000000000E6E6E6FFC6816BFFC57F69FFC47E67FFC37A63FFC177
      5FFFC0765EFFBF735BFF030269FF7E7DA5FF0000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF646464FFCDCDCDFFFDFD
      FDFF00000000000000000000000000000000000000000000000000000000A9A9
      A9FF646464FF707070FF7B7B7BFF868686FF5F5F5FFF6A6A6AFFAFAFAFFFFEFE
      FEFFEC8335FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF313131FF353535FF3291
      F2FF3291F2FF434343FF434343FFBFBFBFFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFEC8335FFDCDCDCFFE27D33FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFF1B1BFEFF1B1BFEFFDCDC
      DCFFE8E8E8FFDAD8E4FF1C18EFFF3C26B0FF9A969AFFF0F0F0FF000000000000
      0000000000000000000000000000E3E3E3FFC98873FFC7856FFFC57F68FFC37A
      63FFC27760FFBF725AFFBD7058FF5F5F5FFFD8D8D8FFCBCAD5FF000000000000
      000000000000000000000000000000000000FEFEFEFF707070FF767676FFEAEA
      EAFF00000000000000000000000000000000000000000000000000000000D1D1
      D1FFCACACAFFECECECFF606060FF6E6E6EFF5E5E5EFF6A6A6AFF707070FFF4F4
      F4FFEC8335FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF3291F2FF3291
      F2FF3291F2FF2F90F1FF3291F2FF898989FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFEC8335FFDCDCDCFFE27D33FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE8E8E8FFE5E5E5FFEAEA
      EAFFEAEAEAFFE6E5E6FF2723F1FF2821E9FF8C878CFFECECECFFEA8235FF0000
      0000000000000000000000000000E5E5E5FFCD927EFFCC8E7BFFC98772FFC680
      6AFFC37B64FFBF735AFFBD7057FFBD7057FF777777FFD6D5D6FF000000000000
      00000000000000000000000000000000000000000000FCFCFCFF595959FF6C6C
      6CFFFCFCFCFF0000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFBFBFBFFFEFEFEFFF3F3F3FF727272FFB5B5
      B5FFEC8335FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF2F90F1FF2F90
      F1FF2F90F1FF3291F2FF3090F1FF2A8DF0FF8C8C8CFFC6C6C6FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFEC8335FFDCDCDCFFE27D33FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
      ECFFE9E9E9FFE8E7E8FF9F9BE0FF3E38EEFF554DACFFD4D2D4FFDF7C32FF0000
      0000000000000000000000000000E8E8E8FFD7A99AFFD7A99AFFD7A798FFD29D
      8CFFCE9381FFC47D66FFC1775FFFBD7057FFBD7057FF646464FF8C88C5FF3A34
      DEFF000000000000000000000000000000000000000000000000E6E6E6FF5E5E
      5EFF797979FFEDEDEDFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFF959595FF757575FFFAFA
      FAFFEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90
      F1FF2F90F1FF2F90F1FF2E8FF1FF29CBF0FF27CBF0FF464646FFC7C7C7FFFFFF
      FFFFFFFFFFFFFFFFFFFFEC8335FFDCDCDCFFE27D33FFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECEC
      ECFFEBEBEBFFE8E8E8FFE2DFE2FFB27674FF534AE4FFB5B2B5FFC76D2EFFDADA
      DAFF0000000000000000EAEAEAFF00000000E1E1E1FFDFBBB0FFE1BEB3FFDEB8
      ACFFDBB0A3FFCF9583FFC88772FFC1775FFFBD7057FFBD7057FF5D5C5DFF5438
      37FF4E46D7FFB4B1B4FF00000000000000000000000000000000FDFDFDFFC1C1
      C1FF6D6D6DFF969696FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFDBDBDBFF7D7D7DFF787878FFFEFE
      FEFFEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A8D
      F0FF2A8DF0FF2B8DF0FF2F90F1FF27CBF0FF24CAF0FF22C9EFFF8D8D8DFFC7C7
      C7FFFFFFFFFFFFFFFFFFEC8335FFDCDCDCFFE27D33FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFECEC
      ECFFEAEAEAFFE9E9E9FFE3E0E3FFE19556FF5E55E4FF9E99C5FFC96E2FFFDADA
      DAFF0000000000000000000000000000000000000000DBDBDBFFE3C4BAFFE2C2
      B8FFDEB8ACFFD5A393FFCF9583FFC47D66FFBE7158FFBD7057FFBD7057FF5D3D
      23FF544CCBFF000000000000000000000000000000000000000000000000FEFE
      FEFF666666FF6B6B6BFFDCDCDCFF000000000000000000000000000000000000
      000000000000FEFEFEFFD1D1D1FF7B7B7BFF777777FFEFEFEFFFFDFDFDFF0000
      0000EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3
      B3FF2A8DF0FF28CBF0FF28CBF0FF26CBF0FF24CAF0FF23CAF0FF2DCCF0FF4646
      46FFC7C7C7FFFFFFFFFFEC8335FFDCDCDCFFE27D33FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
      EDFFEBEBEBFFE9E8E9FFE3DFE3FFE0985DFF9C9A9CFFF9F9F9FFE88134FF0000
      0000000000000000000000000000000000000000000000000000DDDDDDFFE4C5
      BBFFE3C4BAFFDEB8ACFFDBB0A3FFCF9583FFC47D66FFC1775FFFBD7057FFBD70
      57FF4A494AFFF2F2F2FF00000000000000000000000000000000000000000000
      0000D5D5D5FF4F4F4FFF797979FFFEFEFEFF0000000000000000000000000000
      0000FEFEFEFFECECECFF6A6A6AFF747474FFCBCBCBFFFEFEFEFF000000000000
      0000EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB3B3B3FF2ACCF0FF2ACCF0FF2ACBF0FF2BCBF0FF2CCCF0FF3BCFF1FF49D3
      F2FF8D8D8DFFFFFFFFFFEC8335FFDCDCDCFFE27D33FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFECEC
      ECFFEAEAEAFFE8E7E8FFE1DDE1FFDE965CFF716F71FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4C5
      BBFFE4C5BBFFE2C2B8FFDEB8ACFFD5A393FFC88772FFC47D66FFBE7158FFBD70
      57FF353435FFF6F6F6FF00000000000000000000000000000000000000000000
      0000FEFEFEFFF6F6F6FF5F5F5FFFC3C3C3FFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
      FEFF4A4A4AFF757575FFBFBFBFFFF9F9F9FF0000000000000000000000000000
      0000EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FF33CDF0FF3ACFF1FF46D1F1FF4BD3F2FF5DD7F3FF6CDB
      F4FF8BE2F5FF8D8D8DFFB86629FFDCDCDCFFE27D33FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFEDED
      EDFFEBEAEBFFE8E6E8FFDED9DEFFDA9663FF6FB1C2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDEFFE4C5BBFFE3C4BAFFDEB8ACFFD5A393FFCF9583FFC47D66FFC177
      5FFF304C54FF838383FFB46428FF000000000000000000000000000000000000
      00000000000000000000BEBEBEFF717171FF585858FFB2B2B2FF898989FFDCDC
      DCFFDADADAFF717171FFDADADAFFFEFEFEFF0000000000000000000000000000
      0000EC8335FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA
      89FFFAAA89FFFAAA89FFFAAA89FF54D5F2FF69DAF3FF70DBF4FF7CDEF5FF88E1
      F5FFA1E7F7FFB4ECF9FF40230EFFB8B8B8FFE27D33FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFEDED
      EDFFEAE9EAFFE7E4E7FFDCD5DCFFD7976AFF89C2D1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDBFFE4C5BBFFE3C4BAFFDEB8ACFFDBB0A3FFCF9583FFC887
      72FFC1775FFF556F75FF381F0CFFB4B4B4FF0000000000000000000000000000
      00000000000000000000FAFAFAFF464646FF575757FF5D5D5DFF636363FFACAC
      ACFFFBFBFBFFA6A6A6FF999999FFF8F8F8FF0000000000000000000000000000
      0000EC8335FFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD
      8DFFFAAD8DFFFAAD8DFFFAAD8DFFAF7962FF7EDFF5FF85E0F5FF91E3F6FF9AE5
      F7FFB0EBF9FFBFEFFAFFC2F0FAFFB8B8B8FFE27D33FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF0B3
      78FFEBAB70FFE7A76FFFDC9C6CFFD49469FFA3D8E5FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E7FFE4C5BBFFE2C2B8FFDEB8ACFFD5A393FFCF95
      83FFC47D66FF4F6267FF5C7277FFADADADFF0000000000000000000000000000
      0000000000000000000000000000FEFEFEFFFDFDFDFFE0E0E0FFC7C7C7FF6161
      61FFFBFBFBFFF8F8F8FF7B7B7BFFADADADFF0000000000000000000000000000
      0000EC8335FFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB8
      9CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFB0816DFFAEEAF8FFBCEEF9FFC2F0
      FAFFCEF3FBFFD3F4FBFFD3F4FBFFC2C2C2FFE27D33FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFEEB4
      7EFFECD2C5FFE6CBC1FF8FB2BDFFB0D8E2FFCDF2FAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBB27DFFE6CCC0FFDEC4BAFFDEB8ACFFDBB0
      A3FFCF9583FFC47D66FFC1775FFFAAAAAAFF0000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFDFDFDFFF5F5F5FF6565
      65FFC3C3C3FF707070FF8A8A8AFFDDDDDDFF0000000000000000000000000000
      0000EC8335FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBD
      A2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFB08471FFCBF2FBFFD1F3
      FBFFD8F5FCFFDAF6FCFFD9F6FCFFE0E0E0FFE27D33FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF4F4F4FFEDB6
      84FFE7CDC2FFDFA880FFB8DAE3FFCCEDF5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4D6DFFFDEB8
      ACFFD5A393FFC88772FFC37C65FFC5C5C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008D8D
      8DFF787878FF909090FFDCDCDCFF000000000000000000000000000000000000
      0000EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC83
      35FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFA55B25FFDFF7
      FCFFDFF7FCFF9B5622FFEC8335FFF2F2F2FFE57F33FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF6F6F6FFF4F3F4FFE9B5
      8AFFB46329FFD57630FFA45B25FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEF6
      FBFFDFBAAEFFD5A393FFCF9583FFE6E6E6FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFEFEFEFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF7F7F7FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4
      F4FFFBFBFBFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFFC1FC300000000000000FFFFF80F
      0100000000000000FFFFF8070000000000000000FFFC08020000000000000000
      80FC08000000000000000000001C080000000000000000008018080001000000
      0000000080380C00010000000000000080001E00070000000000000080001F00
      0F00000000000000C0003F000700000000000000C0007C000300000000000000
      C000FC000100000000000000C203F8000000000000000000EFFFF80000000000
      00000000FFFFF8000000000000000000FFFFF8060000000000000000FFFFF807
      0000000000000000FFFFFC1F8100000000000000FFFFFFFFFF00000000000000
      8000080001F800FFFFFF00008000000000F0007FFFFF00008000000000C0003F
      FFFF00008000000000C000183FFF000080000000008000003F01000080000000
      008000001C01000080000000000000001801000080000000000000080C010000
      800000000000000800010000800000000000000C00010000800000000000000C
      00030000800000000000000E00030000800000000000000F0003000080000000
      0080000FC0C70000800000000080001FFFEF0000800000000080001FFFFF0000
      8000000000C0003FFFFF00008000000000C0003FFFFF0000C000000000F000FF
      FFFF0000FFFFF80001FE03FFFFFF0000C0001FFFFFFC001F000F0000C0001F80
      0080001F000F000080001F800080001F000F0000800010000080001800010000
      8000100000800010000000008000100000800010000000008000100000800010
      0000000080001000008000100000000080001000008000100000000080001000
      0080001000000000800010000080001000000000800010000080001000000000
      8000100000800010000000008000100001800030000000008000000007800030
      00000000800000000780003800010000800000000F80003F000F000080001000
      3F80003F000F000080003001FF80007F000F0000C007F007FFF803FF000F0000
      F801FFFFFFC00018000F0000E0007E3FFFC0001000070000C0007C3FFFC00010
      0007000080001C1FFFC000100007000080001C07FFC000100003000000000C07
      FFC000100001000000000F01FFC000100001000000000F01FFC0001000010000
      00000FC007C000100000000000000FE001C000100000000000000FE001C00010
      0000000000000FE001C00010000F000000000FE001C00010000F000000000FE0
      01C000180000000000000FE001C0001C0420000080001FE001C0001C04000000
      80001FF007C0007FFC000000C0003FF807C0007FFE000000E0007FFC0FC000FF
      FF000000F801FFFFFFFFFFFFFFFF0000FFFFFF800FFFFFFF800F0000FC001F00
      07F0003E00070000FC001F0007E0001C00030000FC001F0007C0001800010000
      C0001F000780001800000000C0001F000780001000000000C0001F0007800010
      00000000C0001F800F80001000000000C0001FC01F80001000000000C0001FE0
      3F80001000000000C0001FC01F80001000000000C0001FC00F80001000000000
      C0003FC00F80001000000000C0007F800F80001000000000C000FF0207800010
      00000000C001FF020780001000010000C003FF070780003800010000C007FF07
      0780007C00030000C00FFF0F878000FC00070000FFFFFFFFFFFFFFFF001F0000
      FFFFFFFFFFFFE1F83FFF0000FFEFF000000000781FFF0000FFE7F00000000078
      01FF0000FFE7F0000000007801FF0000BFC1F0000000007800FF00001FC01000
      0000007C00FF00000FE000000000003E003F00000FE000000000001E003F0000
      87FC00000000001E000F0000C3FF00000000000D00030000C1FE00000000000F
      80070000E1F810000000001FC0030000F0F030000000007FE0030000F000F000
      0000007FF0010000FC00F0000000007FF8000000FC00F0000000007FFC000000
      FE00F0000000007FFE000000FF00F000000000FFFFC00000FFE1F000000001FF
      FFE00000FFE3FFFFFF0003FFFFFF000000000000000000000000000000000000
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
