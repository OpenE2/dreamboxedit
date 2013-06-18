object frmShowEditServiceDetails: TfrmShowEditServiceDetails
  Left = 439
  Top = 148
  Width = 730
  Height = 523
  Caption = 'Service details'
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
    Width = 722
    Height = 489
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      722
      489)
    object gbxDetails: TGroupBox
      Left = 8
      Top = 8
      Width = 487
      Height = 447
      Caption = 'Details'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object pctlDetails: TPageControl
        Left = 8
        Top = 16
        Width = 474
        Height = 401
        ActivePage = tshtTransponderData
        Style = tsFlatButtons
        TabOrder = 0
        object tshtTransponderData: TTabSheet
          Caption = 'Transponder data'
          DesignSize = (
            466
            370)
          object lblMandatoryTransponderData: TLabel
            Left = -8
            Top = 235
            Width = 97
            Height = 13
            Anchors = [akLeft]
            AutoSize = False
            Caption = '* mandatory fields'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object gbxTransponderData: TGroupBox
            Left = 0
            Top = 0
            Width = 465
            Height = 233
            Caption = 'Transponder Data'
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object lblSatellitePosition: TLabel
              Left = 8
              Top = 24
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
            object lblTransponderID: TLabel
              Left = 8
              Top = 48
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
            object lblFEC: TLabel
              Left = 272
              Top = 144
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
            object lblSymbolRate: TLabel
              Left = 8
              Top = 144
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
              Left = 272
              Top = 120
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
            object lblNamespace: TLabel
              Left = 8
              Top = 96
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
            object lblNetworkID: TLabel
              Left = 8
              Top = 72
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
            object lblFrequency: TLabel
              Left = 8
              Top = 120
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
            object ntLabel1: TLabel
              Left = 112
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
            object ntLabel2: TLabel
              Left = 112
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
            object ntLabel3: TLabel
              Left = 112
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
            object ntLabel4: TLabel
              Left = 112
              Top = 96
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
            object ntLabel5: TLabel
              Left = 112
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
            object ntLabel6: TLabel
              Left = 112
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
            object ntLabel7: TLabel
              Left = 360
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
            object ntLabel8: TLabel
              Left = 360
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
            object lblOtherParameters: TLabel
              Left = 8
              Top = 168
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
            object ntLabel9: TLabel
              Left = 112
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
            object ePos: TComboBox
              Left = 120
              Top = 20
              Width = 121
              Height = 21
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 0
            end
            object eTSID: TEdit
              Left = 120
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
            object eFEC: TComboBox
              Left = 368
              Top = 140
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
                'auto'
                '1/2'
                '2/3'
                '3/4'
                '5/6'
                '7/8')
            end
            object eSymb: TEdit
              Left = 120
              Top = 140
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
              Left = 368
              Top = 116
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
              TabOrder = 5
              Items.Strings = (
                'Horizontal'
                'Vertical')
            end
            object eNamespace: TEdit
              Left = 120
              Top = 92
              Width = 121
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object bCalculate: TButton
              Left = 271
              Top = 93
              Width = 185
              Height = 20
              Hint = 'Calculate the namespace value for this service'
              Caption = 'Calculate Namespace'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object eNID: TEdit
              Left = 120
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
            object eFreq: TEdit
              Left = 120
              Top = 116
              Width = 121
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object pnlNotice: TPanel
              Left = 8
              Top = 200
              Width = 449
              Height = 25
              BevelInner = bvLowered
              Caption = 'All numbers on this screen must be entered in decimal format!'
              Color = 10223615
              TabOrder = 10
            end
            object eTrExtra: TEdit
              Left = 120
              Top = 164
              Width = 337
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
              TabOrder = 8
            end
          end
        end
        object tshtServiceData: TTabSheet
          Caption = 'Service data'
          ImageIndex = 1
          object lblMandatoryServiceData: TLabel
            Left = 0
            Top = 356
            Width = 97
            Height = 13
            AutoSize = False
            Caption = '* mandatory fields'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 465
            Height = 353
            Caption = 'Service Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 24
              Width = 27
              Height = 14
              Caption = 'Name'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 8
              Top = 48
              Width = 41
              Height = 14
              Caption = 'Package'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ntLabel25: TLabel
              Left = 96
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
            object ntLabel24: TLabel
              Left = 96
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
            object Label16: TLabel
              Left = 240
              Top = 72
              Width = 146
              Height = 14
              Caption = '(1,4: TV, 2: Radio, other: data)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ntLabel27: TLabel
              Left = 96
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
            object Label3: TLabel
              Left = 8
              Top = 72
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
            object Label4: TLabel
              Left = 8
              Top = 96
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
            object Label12: TLabel
              Left = 240
              Top = 120
              Width = 37
              Height = 14
              Caption = 'Number'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ntLabel36: TLabel
              Left = 288
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
            object ntLabel29: TLabel
              Left = 96
              Top = 96
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
            object Label20: TLabel
              Left = 8
              Top = 120
              Width = 65
              Height = 14
              Caption = 'Parental Lock'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ntLabel21: TLabel
              Left = 96
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
            object Label21: TLabel
              Left = 8
              Top = 319
              Width = 83
              Height = 14
              Caption = 'Extra parameters'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object eName: TEdit
              Left = 104
              Top = 20
              Width = 313
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ePack: TEdit
              Left = 104
              Top = 44
              Width = 313
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object eType: TEdit
              Left = 104
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
            object eSID: TEdit
              Left = 104
              Top = 92
              Width = 121
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object eNr: TEdit
              Left = 296
              Top = 116
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
            object eLock: TComboBox
              Left = 104
              Top = 116
              Width = 121
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
              Items.Strings = (
                'Disabled'
                'Enabled')
            end
            object GroupBox2: TGroupBox
              Left = 8
              Top = 144
              Width = 361
              Height = 65
              Caption = 'PID'#39's'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              object Label17: TLabel
                Left = 8
                Top = 23
                Width = 28
                Height = 14
                Caption = 'Video'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 56
                Top = 23
                Width = 28
                Height = 14
                Caption = 'Audio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 104
                Top = 23
                Width = 38
                Height = 14
                Caption = 'Teletext'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 152
                Top = 23
                Width = 20
                Height = 14
                Caption = 'PCR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 200
                Top = 23
                Width = 21
                Height = 14
                Caption = 'AC3'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 256
                Top = 7
                Width = 73
                Height = 14
                Caption = 'Delays (in MS):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 256
                Top = 23
                Width = 45
                Height = 14
                Caption = 'Bitstream'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 312
                Top = 23
                Width = 21
                Height = 14
                Caption = 'PCM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Bevel1: TBevel
                Left = 240
                Top = 8
                Width = 9
                Height = 50
                Shape = bsRightLine
              end
              object eVPID: TEdit
                Left = 8
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object eAPID: TEdit
                Left = 56
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object eTPID: TEdit
                Left = 104
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object ePPID: TEdit
                Left = 152
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object e3PID: TEdit
                Left = 200
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object eC07BSDelay: TEdit
                Left = 256
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object eC08PCMDelay: TEdit
                Left = 312
                Top = 36
                Width = 40
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
            end
            object GroupBox3: TGroupBox
              Left = 8
              Top = 216
              Width = 409
              Height = 97
              Caption = 'Flags'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              DesignSize = (
                409
                97)
              object Label15: TLabel
                Left = 8
                Top = 16
                Width = 343
                Height = 14
                AutoSize = False
                Caption = 
                  'Below options affect the way the Dreambox is handling this servi' +
                  'ce'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object cbNODVB: TCheckBox
                Left = 8
                Top = 38
                Width = 382
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                Caption = 
                  'K (Keep): Do not automatically update the service'#39's parameters (' +
                  'No DVB)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object cbNoShow: TCheckBox
                Left = 8
                Top = 54
                Width = 363
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                Caption = 
                  'H (Hide): don'#39't show this service in the '#39'All Services'#39' list (Do' +
                  'n'#39't Show)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cbNoPMT: TCheckBox
                Left = 8
                Top = 70
                Width = 380
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                Caption = 
                  'P (Use PID'#39's): Always use the specified instead of current PID'#39's' +
                  ' (No PMT)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
            object eExtra: TEdit
              Left = 104
              Top = 319
              Width = 121
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
          end
        end
      end
    end
    object gbMemo: TGroupBox
      Left = 500
      Top = 8
      Width = 216
      Height = 447
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Present in Bouquets '
      Color = clCream
      ParentColor = False
      TabOrder = 1
      DesignSize = (
        216
        447)
      object Memo1: TMemo
        Left = 8
        Top = 16
        Width = 200
        Height = 423
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15856371
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object btnDone: TButton
      Left = 640
      Top = 461
      Width = 75
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = '&Done'
      TabOrder = 2
      OnClick = btnDoneClick
    end
  end
end
