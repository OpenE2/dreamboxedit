object frmImportSatcoDXFiles: TfrmImportSatcoDXFiles
  Left = 316
  Top = 171
  Width = 965
  Height = 699
  Caption = 'Import TV and Radio services from SDX files (SatcoDX)'
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
    Width = 957
    Height = 665
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      957
      665)
    object sbtnStatisticsToggle: TSpeedButton
      Left = 480
      Top = 600
      Width = 132
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'Show statistics'
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
      OnClick = sbtnStatisticsToggleClick
    end
    object gbxSatcoDXTVAndRadioServices: TGroupBox
      Left = 8
      Top = 16
      Width = 606
      Height = 583
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'SatcoDX TV and Radio services'
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
        606
        583)
      object lvSDX: TListView
        Left = 8
        Top = 16
        Width = 590
        Height = 559
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Caption = 'Satellite name'
            MinWidth = 25
            Width = 100
          end
          item
            Alignment = taRightJustify
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
            Caption = 'Type'
            MinWidth = 25
            Width = 36
          end
          item
            Alignment = taRightJustify
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
            Alignment = taRightJustify
            Caption = 'Symbolrate'
            MinWidth = 25
            Width = 65
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
            Alignment = taRightJustify
            Caption = 'VPID'
            MinWidth = 25
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'APID'
            MinWidth = 25
            Width = 45
          end
          item
            Alignment = taRightJustify
            Caption = 'PPID'
            MinWidth = 25
            Width = 45
          end
          item
            Caption = 'Lng'
            MinWidth = 25
            Width = 30
          end
          item
            Alignment = taRightJustify
            Caption = 'Namespace'
            MinWidth = 5
            Width = 75
          end
          item
            Caption = 'Nr.'
            MinWidth = 5
          end
          item
            Caption = 'Package'
            MinWidth = 10
            Width = 100
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
    object gbxDisplayOptions: TGroupBox
      Left = 621
      Top = 16
      Width = 329
      Height = 80
      Anchors = [akTop, akRight]
      Caption = 'Display options'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object rbAll: TRadioButton
        Left = 8
        Top = 20
        Width = 217
        Height = 17
        Hint = 'Show new AND already known services'
        Caption = 'Show new AND already known services'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object rbNew: TRadioButton
        Left = 8
        Top = 36
        Width = 217
        Height = 17
        Hint = 'Show new services only'
        Caption = 'Show new services only'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
      end
      object rbSame: TRadioButton
        Left = 8
        Top = 52
        Width = 217
        Height = 17
        Hint = 'Show already known services only'
        Caption = 'Show already known services only'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object gbxProcessingOptions: TGroupBox
      Left = 621
      Top = 99
      Width = 329
      Height = 118
      Anchors = [akTop, akRight]
      Caption = 'Processing options'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object cbNewBouq: TCheckBox
        Left = 8
        Top = 19
        Width = 313
        Height = 24
        Hint = 
          'Check this option if you want a bouquet per satellite with all t' +
          'he services added from the SatcoDX files'
        Caption = 'Create a bouquet per satellite for all imported services'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
        WordWrap = True
      end
      object cbReplace: TCheckBox
        Left = 8
        Top = 40
        Width = 313
        Height = 24
        Hint = 
          'Replace already existing services in dreambox settings (only add' +
          ' unique services!)'
        Caption = 'Replace existing services in dreambox settings'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbUsePIDs: TCheckBox
        Left = 8
        Top = 61
        Width = 313
        Height = 24
        Hint = 'Include Video, Audio and PCR PID'#39's in import'
        Caption = 'Include Video, Audio and PCR PID'#39's in import'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object cbNoDVB: TCheckBox
        Left = 8
        Top = 83
        Width = 313
        Height = 24
        Hint = 'Include Video, Audio and PCR PID'#39's in import'
        Caption = 'Keep Dreambox from updating imported service parameters'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        WordWrap = True
      end
    end
    object btnDone: TButton
      Left = 873
      Top = 635
      Width = 75
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = '&Done'
      TabOrder = 4
      OnClick = btnDoneClick
    end
    object lwpnlStatistics: TLWPanel
      Left = 317
      Top = 365
      Width = 295
      Height = 233
      Anchors = [akRight, akBottom]
      TabOrder = 5
      Visible = False
      Effect = GradientH
      Color1 = clCream
      Color2 = clBlack
      DesignSize = (
        295
        233)
      object gbxFilesTransfered: TGroupBox
        Left = 0
        Top = 17
        Width = 293
        Height = 214
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Statistics'
        TabOrder = 0
        DesignSize = (
          293
          214)
        object Panel1: TPanel
          Left = 5
          Top = 14
          Width = 282
          Height = 194
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvLowered
          Color = clCream
          TabOrder = 0
          object Label5: TLabel
            Left = 12
            Top = 12
            Width = 179
            Height = 14
            Caption = 'Number of SatcodDX files processed'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 12
            Top = 32
            Width = 94
            Height = 14
            Caption = 'SatcoDX records:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 20
            Top = 48
            Width = 177
            Height = 14
            Caption = 'Number of Services read from file(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 20
            Top = 64
            Width = 153
            Height = 14
            Caption = 'Skipped services (analog, data)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 20
            Top = 88
            Width = 145
            Height = 14
            Caption = 'Processed digital TV Services'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 20
            Top = 104
            Width = 158
            Height = 14
            Caption = 'Processed digital Radio Services'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 20
            Top = 120
            Width = 176
            Height = 14
            Caption = 'Unique services (SID/TSID/NID/Type)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 12
            Top = 144
            Width = 207
            Height = 14
            Caption = 'Compared to open Dreambox file-set:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 20
            Top = 160
            Width = 161
            Height = 14
            Caption = 'New valid TV and Radio services'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlDS: TLabel
            Left = 212
            Top = 12
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlTotal: TLabel
            Left = 212
            Top = 48
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlSkipped: TLabel
            Left = 212
            Top = 64
            Width = 50
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlTV: TLabel
            Left = 212
            Top = 88
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlRadio: TLabel
            Left = 212
            Top = 104
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlUnique: TLabel
            Left = 212
            Top = 120
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ntlNew: TLabel
            Left = 212
            Top = 160
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object gbxControl: TGroupBox
      Left = 621
      Top = 256
      Width = 329
      Height = 273
      Anchors = [akTop, akRight]
      Color = clCream
      ParentColor = False
      TabOrder = 6
      DesignSize = (
        329
        273)
      object bProcess: TLWButton
        Left = 40
        Top = 197
        Width = 249
        Height = 37
        Hint = 'Add all checked services to your dreambox settings file'
        ShowFocus = False
        BoldOnDefault = False
        ButtonLook = blNormal
        InactiveFont.Charset = DEFAULT_CHARSET
        InactiveFont.Color = clWindowText
        InactiveFont.Height = -11
        InactiveFont.Name = 'Arial'
        InactiveFont.Style = []
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Arial'
        ActiveFont.Style = []
        DownFont.Charset = DEFAULT_CHARSET
        DownFont.Color = clWindowText
        DownFont.Height = -11
        DownFont.Name = 'Arial'
        DownFont.Style = []
        InactiveColor = clBtnFace
        InactiveLineColor = clMaroon
        InactiveOutlineColor2 = clBlack
        InactiveOutlineColor3 = clGray
        ActiveColor = clBtnFace
        ActiveLineColor = clMaroon
        ActiveOutlineColor1 = clBlack
        ActiveOutlineColor3 = clGray
        DownColor = clBtnFace
        DownLineColor = clMaroon
        DownOutlineColor1 = clBlack
        DownOutlineColor2 = clGray
        DownOutlineColor3 = clMaroon
        RoundedPixels = 16
        Anchors = [akTop, akRight]
        Caption = 'Add all checked services to the current Dreambox settings files'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object bAddPackageName: TButton
        Left = 40
        Top = 76
        Width = 249
        Height = 21
        Hint = 
          'Add packagenames based on satellite name (@SDX + satellite name ' +
          'or @SatcoDX)'
        Anchors = [akTop, akRight]
        Caption = 'Add Package Names'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        WordWrap = True
      end
      object bGetPackageInfo: TButton
        Left = 40
        Top = 116
        Width = 249
        Height = 21
        Hint = 
          'Try to append package names to the imported SatcoDX entries from' +
          ' an exported services file (based on position/frequency/service ' +
          'id)'
        Anchors = [akTop, akRight]
        Caption = 'Append Package Names'
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
        OnClick = bGetPackageInfoClick
      end
      object btnOpen: TLWButton
        Left = 40
        Top = 156
        Width = 249
        Height = 21
        Hint = 'Select the set of SatcoDX files you want to import services from'
        ShowFocus = False
        BoldOnDefault = False
        ButtonLook = blNormal
        InactiveFont.Charset = DEFAULT_CHARSET
        InactiveFont.Color = clWindowText
        InactiveFont.Height = -11
        InactiveFont.Name = 'Arial'
        InactiveFont.Style = []
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Arial'
        ActiveFont.Style = []
        DownFont.Charset = DEFAULT_CHARSET
        DownFont.Color = clWindowText
        DownFont.Height = -11
        DownFont.Name = 'Arial'
        DownFont.Style = []
        InactiveColor = clBtnFace
        InactiveLineColor = clMaroon
        InactiveOutlineColor2 = clBlack
        InactiveOutlineColor3 = clGray
        ActiveColor = clBtnFace
        ActiveLineColor = clMaroon
        ActiveOutlineColor1 = clBlack
        ActiveOutlineColor3 = clGray
        DownColor = clBtnFace
        DownLineColor = clMaroon
        DownOutlineColor1 = clBlack
        DownOutlineColor2 = clGray
        DownOutlineColor3 = clMaroon
        RoundedPixels = 16
        Anchors = [akTop, akRight]
        Caption = 'Open a (set of) SatcoDX file(s)'
        Default = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnOpenClick
      end
      object btnCheckDuplicates: TButton
        Left = 40
        Top = 36
        Width = 249
        Height = 21
        Hint = 'Check and show duplicate entries'
        Anchors = [akTop, akRight]
        Caption = 'Check selected services for duplicates'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        WordWrap = True
        OnClick = btnCheckDuplicatesClick
      end
    end
    object gbxImportDuplicates: TGroupBox
      Left = 8
      Top = 16
      Width = 945
      Height = 614
      Caption = 'Import duplicates'
      Color = clCream
      ParentColor = False
      TabOrder = 7
      Visible = False
      DesignSize = (
        945
        614)
      object gbxTransponderDetails: TGroupBox
        Left = 406
        Top = 96
        Width = 191
        Height = 77
        Caption = 'Transponder details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblTransponderID: TLabel
          Left = 8
          Top = 16
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
        object lblNetworkID: TLabel
          Left = 8
          Top = 32
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
          Left = 96
          Top = 16
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
          Left = 96
          Top = 32
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
        object lblNamespace: TLabel
          Left = 8
          Top = 48
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
          Left = 96
          Top = 48
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
      object gbxServiceDetails: TGroupBox
        Left = 406
        Top = 20
        Width = 191
        Height = 73
        Caption = 'Service details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblServiceID: TLabel
          Left = 8
          Top = 16
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
        object lblServiceType: TLabel
          Left = 8
          Top = 32
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
          Left = 96
          Top = 16
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
          Left = 96
          Top = 32
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
      object gbxExistingDefinition: TGroupBox
        Left = 8
        Top = 20
        Width = 393
        Height = 153
        Caption = 'Existing definition in Dreambox for this transponder/service'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          393
          153)
        object lblSatellite: TLabel
          Left = 8
          Top = 22
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
        object lblPosition: TLabel
          Left = 8
          Top = 41
          Width = 37
          Height = 14
          Caption = 'Position'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblFrequency: TLabel
          Left = 8
          Top = 60
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
        object lblSymbolrate: TLabel
          Left = 8
          Top = 79
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
        object lblPolarisation: TLabel
          Left = 8
          Top = 98
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
        object lblFEC: TLabel
          Left = 8
          Top = 118
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
          Top = 22
          Width = 209
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
          Left = 88
          Top = 41
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
          Top = 60
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
          Top = 79
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
          Left = 88
          Top = 98
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
          Left = 88
          Top = 118
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
      object lvSDXDup: TListView
        Left = 8
        Top = 182
        Width = 927
        Height = 389
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
      end
      object btnNext: TButton
        Left = 782
        Top = 585
        Width = 75
        Height = 21
        Anchors = [akRight, akBottom]
        Caption = '&Next'
        TabOrder = 4
        OnClick = btnNextClick
      end
      object btnBack: TButton
        Left = 862
        Top = 585
        Width = 75
        Height = 21
        Anchors = [akRight, akBottom]
        Caption = '&Back'
        TabOrder = 5
        OnClick = btnBackClick
      end
    end
    object gbxSelectSatcoDXFiles: TGroupBox
      Left = 8
      Top = 16
      Width = 944
      Height = 614
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Select the SatcoDX files to process'
      Color = clCream
      ParentColor = False
      TabOrder = 8
      Visible = False
      DesignSize = (
        944
        614)
      object Label9: TLabel
        Left = 11
        Top = 24
        Width = 96
        Height = 13
        Caption = 'SatcoDX files (*.sdx)'
      end
      object Panel2: TPanel
        Left = 8
        Top = 539
        Width = 927
        Height = 33
        Anchors = [akLeft, akRight, akBottom]
        BevelInner = bvLowered
        Caption = 
          'Uncheck the files you don'#39't want to process! (spacebar also chec' +
          'ks / unchecks)'
        Color = 16510433
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnProcess: TButton
        Left = 853
        Top = 584
        Width = 81
        Height = 21
        Hint = 'Process all services from the checked file(s)'
        Anchors = [akRight, akBottom]
        Caption = '&Process'
        Default = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnProcessClick
      end
      object btnCancel: TButton
        Left = 765
        Top = 584
        Width = 81
        Height = 21
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = '&Cancel'
        ModalResult = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnCancelClick
      end
      object lvDir: TListView
        Left = 8
        Top = 37
        Width = 927
        Height = 492
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Caption = 'Filename'
            MinWidth = 25
            Width = 90
          end
          item
            Caption = 'SatName'
            MinWidth = 25
            Width = 120
          end
          item
            Alignment = taRightJustify
            Caption = 'SatPos'
            MinWidth = 25
            Width = 55
          end
          item
            Alignment = taRightJustify
            Caption = 'RealPos'
            Width = 55
          end
          item
            Alignment = taRightJustify
            Caption = '#services'
            MinWidth = 25
            Width = 60
          end
          item
            Alignment = taRightJustify
            Caption = 'Size'
            MinWidth = 25
            Width = 70
          end
          item
            Caption = 'Filedate'
            MinWidth = 25
            Width = 115
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
        TabOrder = 3
        ViewStyle = vsReport
      end
    end
    object chkSelectDeselectAll: TCheckBox
      Left = 24
      Top = 601
      Width = 121
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Select / deselect all'
      Color = clCream
      ParentColor = False
      TabOrder = 3
      OnClick = chkSelectDeselectAllClick
    end
  end
  object cdsSDX: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SatName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SatPos'
        DataType = ftInteger
      end
      item
        Name = 'ServName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'STyp'
        DataType = ftString
        Size = 1
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
        Name = 'SymbRate'
        DataType = ftInteger
      end
      item
        Name = 'SID'
        DataType = ftInteger
      end
      item
        Name = 'Uniq'
        DataType = ftInteger
      end
      item
        Name = 'TSID'
        DataType = ftInteger
      end
      item
        Name = 'NID'
        DataType = ftInteger
      end
      item
        Name = 'FEC'
        DataType = ftInteger
      end
      item
        Name = 'VPID'
        DataType = ftInteger
      end
      item
        Name = 'APID'
        DataType = ftInteger
      end
      item
        Name = 'PPID'
        DataType = ftInteger
      end
      item
        Name = 'Language'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DBName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OrgSeq'
        DataType = ftInteger
      end
      item
        Name = 'Package'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Checked'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 624
    Top = 224
  end
  object pulvSDX: TPopupMenu
    Left = 664
    Top = 224
    object Check1: TMenuItem
      Caption = 'Check / Uncheck          [Spacebar]'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Checkall1: TMenuItem
      Caption = 'Check all'
    end
    object Uncheckall1: TMenuItem
      Caption = 'Uncheck all'
    end
  end
  object cdsPck: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'pckSatPos'
        DataType = ftInteger
      end
      item
        Name = 'pckFreq'
        DataType = ftInteger
      end
      item
        Name = 'pckSID'
        DataType = ftInteger
      end
      item
        Name = 'pckPackage'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 224
  end
  object JvSelectDirectory1: TJvSelectDirectory
    ClassicDialog = False
    Left = 744
    Top = 224
  end
  object JvOpenDialog1: TJvOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text files (*.txt)|*.txt'
    Height = 0
    Width = 0
    Left = 776
    Top = 224
  end
end
