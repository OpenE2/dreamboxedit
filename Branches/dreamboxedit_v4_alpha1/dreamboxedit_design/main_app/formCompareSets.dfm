object frmCompareSets: TfrmCompareSets
  Left = 400
  Top = 123
  Width = 935
  Height = 723
  BorderIcons = [biMaximize]
  Caption = 'Compare sets'
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
    Width = 927
    Height = 689
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      927
      689)
    object lblOptionalBouquetName: TLabel
      Left = 311
      Top = 622
      Width = 208
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'Optional bouquet name for added services:'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object bvlRule: TBevel
      Left = 8
      Top = 653
      Width = 908
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
    end
    object sbtnInterpretToggle: TSpeedButton
      Left = 717
      Top = 577
      Width = 196
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'How to interpret comparison results'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000F0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFE9F4F8C0C9CCA0A7AA959C9EABB3B6CED8DBEDF8FCF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFEFFAFEC09B73C97A28D47617D8
        7510D47617C879269F7A517B8183CAD4D7F0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        EDEFEAD27A21D87919DC852CDE8E3AE09141DE8E3ADC862DD87919CF761D827B
        72B4BCBFF0FBFFF0FBFFF0FBFFEEF1EED77818DB8126DF8D3BDF8F3DDF9140E0
        9141DF9140DF903EDF8E3CDB8227D47616827B72CAD4D7F0FBFFF0FBFFD98228
        DA8023DE8B36DE8D3ADF8E3CDF903EDF903FDF903FDF8F3DDF8D3BDE8B37DA80
        24CF771D7C8284EDF8FCEADAC5D87917DD8730DD8A34DE8B37DE8D3AFFFFFFFF
        FFFFFFFFFFDF8D3BDE8C38DE8A35DD8831D777169D7952D0DADDDE9D58DA7E21
        DC862DDD8831DD8A34DE8B36FFFFFFFFFFFFFFFFFFDE8B36DD8A34DD8831DD86
        2EDA7F22C77725ADB5B8D97D20DA8024DC842ADC852DDD862EDD8730FFFFFFFF
        FFFFFFFFFFDD8730DD862EDC852DDC842ADA8125D37514989EA1D97917DD8730
        DD8A34DD8A36DE8C39DE8D3AFFFFFFFFFFFFFFFFFFDE8D3ADE8C39DD8A36DD8A
        34DD8730D87510A2A9ACDD8F3FDE8D3ADF9141DF9142FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDF9142DF9141DE8D3AD37516C1CACDE4BA8BDD8B37
        E1984EE2994FE29950FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE29950E2994FE198
        4EDD8B37C87826E9F4F8EEEFEADA7E21E3A05CE3A05CE3A15DE3A15DFFFFFFFF
        FFFFFFFFFFE3A15DE3A15DE3A05CE3A05CD97D20BE9C75F0FBFFF0FBFFE3B481
        E09345E6AA6CE6AA6CE6AA6CE6AA6CFFFFFFE6AA6CE6AA6CE6AA6CE6AA6CE093
        45D27A21EFFAFEF0FBFFF0FBFFF0FBFFDF9F5CE1984EE8B37CE8B37CE8B37CE8
        B37CE8B37CE8B37CE8B37CE1984ED7791AEDEFEAF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFE3B481DB842BE4A260E8B47FEBBC8DE8B47FE4A260DB842BD98329EEF1
        EEF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFEEEFEAE5BB8CDC9040D9
        7917D97F23E09F5CEADAC4F0FBFFF0FBFFF0FBFFF0FBFFF0FBFF}
      OnClick = sbtnInterpretToggleClick
    end
    object sbtnToggleUseSpacebar: TSpeedButton
      Left = 189
      Top = 578
      Width = 340
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'You can use the spacebar to select/deselect selected services.'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000F0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFE9F4F8C0C9CCA0A7AA959C9EABB3B6CED8DBEDF8FCF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFEFFAFEC09B73C97A28D47617D8
        7510D47617C879269F7A517B8183CAD4D7F0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        EDEFEAD27A21D87919DC852CDE8E3AE09141DE8E3ADC862DD87919CF761D827B
        72B4BCBFF0FBFFF0FBFFF0FBFFEEF1EED77818DB8126DF8D3BDF8F3DDF9140E0
        9141DF9140DF903EDF8E3CDB8227D47616827B72CAD4D7F0FBFFF0FBFFD98228
        DA8023DE8B36DE8D3ADF8E3CDF903EDF903FDF903FDF8F3DDF8D3BDE8B37DA80
        24CF771D7C8284EDF8FCEADAC5D87917DD8730DD8A34DE8B37DE8D3AFFFFFFFF
        FFFFFFFFFFDF8D3BDE8C38DE8A35DD8831D777169D7952D0DADDDE9D58DA7E21
        DC862DDD8831DD8A34DE8B36FFFFFFFFFFFFFFFFFFDE8B36DD8A34DD8831DD86
        2EDA7F22C77725ADB5B8D97D20DA8024DC842ADC852DDD862EDD8730FFFFFFFF
        FFFFFFFFFFDD8730DD862EDC852DDC842ADA8125D37514989EA1D97917DD8730
        DD8A34DD8A36DE8C39DE8D3AFFFFFFFFFFFFFFFFFFDE8D3ADE8C39DD8A36DD8A
        34DD8730D87510A2A9ACDD8F3FDE8D3ADF9141DF9142FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDF9142DF9141DE8D3AD37516C1CACDE4BA8BDD8B37
        E1984EE2994FE29950FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE29950E2994FE198
        4EDD8B37C87826E9F4F8EEEFEADA7E21E3A05CE3A05CE3A15DE3A15DFFFFFFFF
        FFFFFFFFFFE3A15DE3A15DE3A05CE3A05CD97D20BE9C75F0FBFFF0FBFFE3B481
        E09345E6AA6CE6AA6CE6AA6CE6AA6CFFFFFFE6AA6CE6AA6CE6AA6CE6AA6CE093
        45D27A21EFFAFEF0FBFFF0FBFFF0FBFFDF9F5CE1984EE8B37CE8B37CE8B37CE8
        B37CE8B37CE8B37CE8B37CE1984ED7791AEDEFEAF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFE3B481DB842BE4A260E8B47FEBBC8DE8B47FE4A260DB842BD98329EEF1
        EEF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFEEEFEAE5BB8CDC9040D9
        7917D97F23E09F5CEADAC4F0FBFFF0FBFFF0FBFFF0FBFFF0FBFF}
      OnClick = sbtnToggleUseSpacebarClick
    end
    object gbxFileInfo: TGroupBox
      Left = 8
      Top = 8
      Width = 910
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File info'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        910
        49)
      object lblServicesFileCompared: TLabel
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
      object lblActiveFilesetDir: TLabel
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
        Width = 713
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
        Width = 713
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
    object gbxDifferences: TGroupBox
      Left = 8
      Top = 60
      Width = 910
      Height = 509
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 
        'Differences in services between active file-set and the just rea' +
        'd services file'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        910
        509)
      object lvDiff: TListView
        Left = 10
        Top = 19
        Width = 891
        Height = 481
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
      end
    end
    object eNewBouquetName: TEdit
      Left = 527
      Top = 620
      Width = 204
      Height = 22
      Anchors = [akRight, akBottom]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'eNewBouquetName'
    end
    object bImport: TButton
      Left = 746
      Top = 609
      Width = 164
      Height = 33
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
      TabOrder = 3
      WordWrap = True
    end
    object chkSelectDeselect: TCheckBox
      Left = 22
      Top = 576
      Width = 121
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Select / Deselect all'
      Color = clCream
      ParentColor = False
      TabOrder = 4
    end
    object btnDone: TButton
      Left = 845
      Top = 660
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = '&Done'
      TabOrder = 5
      OnClick = btnDoneClick
    end
    object lwpnlInterpret: TLWPanel
      Left = 541
      Top = 423
      Width = 372
      Height = 153
      Anchors = [akRight, akBottom]
      TabOrder = 6
      Visible = False
      Effect = GradientH
      Color1 = clCream
      Color2 = clBlack
      DesignSize = (
        372
        153)
      object gbxInterpret: TGroupBox
        Left = 0
        Top = 17
        Width = 370
        Height = 134
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'How to interpret comparison results'
        TabOrder = 0
        DesignSize = (
          370
          134)
        object gbxInterpresInner: TGroupBox
          Left = 6
          Top = 14
          Width = 358
          Height = 117
          Anchors = [akTop, akRight, akBottom]
          Color = clCream
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            358
            117)
          object lExplanation: TLabel
            Left = 13
            Top = 17
            Width = 334
            Height = 88
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
      end
    end
    object lwpnlToggleUseSpaceBar: TLWPanel
      Left = 189
      Top = 356
      Width = 340
      Height = 220
      Anchors = [akRight, akBottom]
      TabOrder = 7
      Visible = False
      Effect = GradientH
      Color1 = clCream
      Color2 = clBlack
      DesignSize = (
        340
        220)
      object gbxUseSpacebar: TGroupBox
        Left = 0
        Top = 17
        Width = 338
        Height = 201
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'You can use the spacebar to select/deselect selected services.'
        TabOrder = 0
        DesignSize = (
          338
          201)
        object gbxUseSpacebarInner: TGroupBox
          Left = 6
          Top = 14
          Width = 326
          Height = 181
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clCream
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblCheckedBlack: TLabel
            Left = 15
            Top = 20
            Width = 275
            Height = 28
            Caption = 
              'When choosing "update active set" the following actions are perf' +
              'ormed:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCheckedGreen: TLabel
            Left = 16
            Top = 59
            Width = 266
            Height = 28
            Caption = 
              'Checked services with action ADD wil be added to the active file' +
              '-set'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCheckedBliue: TLabel
            Left = 16
            Top = 98
            Width = 236
            Height = 28
            Caption = 
              'For checked services with UPDATE the service- and/or packagename' +
              ' will be updated'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCheckedRed: TLabel
            Left = 16
            Top = 137
            Width = 258
            Height = 28
            Caption = 
              'Checked services with action DELETE will be deleted from the act' +
              'ive file-set'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
        end
      end
    end
  end
end
