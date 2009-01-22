object frmeServices: TfrmeServices
  Left = 0
  Top = 0
  Width = 754
  Height = 557
  TabOrder = 0
  object LWPanelB: TLWPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 557
    Align = alClient
    Color = 16378331
    TabOrder = 0
    Color2 = 16378331
    LineWidth1 = 2
    object Splitter1: TSplitter
      Left = 382
      Top = 1
      Height = 555
      Align = alRight
      Color = clSkyBlue
      ParentColor = False
    end
    object LWPanelR: TLWPanel
      Left = 385
      Top = 1
      Width = 368
      Height = 555
      Align = alRight
      Color = 16378331
      TabOrder = 0
      Color2 = 16378331
      LineWidth1 = 2
      object Splitter2: TSplitter
        Left = 189
        Top = 1
        Height = 553
        Align = alRight
        Color = clSkyBlue
        ParentColor = False
      end
      object LWPanelRR: TLWPanel
        Left = 192
        Top = 1
        Width = 175
        Height = 553
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
          553)
        object Image1: TImage
          Left = 0
          Top = 16
          Width = 70
          Height = 53
        end
        object LWPanel3: TLWPanel
          Left = 2
          Top = 532
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
          Height = 458
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
        Height = 553
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
          553)
        object lvDet: TListView
          Left = 2
          Top = 40
          Width = 183
          Height = 489
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
          Top = 532
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
      Width = 381
      Height = 555
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
        381
        555)
      object lvServ: TListView
        Left = 2
        Top = 22
        Width = 377
        Height = 508
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
        Top = 534
        Width = 379
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
          379
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
          Left = 229
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
          Left = 335
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
end
