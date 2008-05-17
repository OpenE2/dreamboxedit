object FormSelectiveReceive: TFormSelectiveReceive
  Left = 470
  Top = 356
  Width = 378
  Height = 192
  Caption = 'Select the files to receive from the Dreambox'
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
    Width = 370
    Height = 158
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 273
      Height = 145
      Caption = 'Select files to receive'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cbServices: TCheckBox
        Left = 16
        Top = 24
        Width = 250
        Height = 17
        Caption = 'Services (including Parental Lock file)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbBouquets: TCheckBox
        Left = 16
        Top = 40
        Width = 250
        Height = 17
        Caption = 'Bouquets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbUserBouquetsTV: TCheckBox
        Left = 16
        Top = 72
        Width = 250
        Height = 17
        Caption = 'User Bouquets TV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cbUserBouquetsRadio: TCheckBox
        Left = 16
        Top = 88
        Width = 250
        Height = 17
        Caption = 'User Bouquets Radio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cbSatellitesXML: TCheckBox
        Left = 16
        Top = 120
        Width = 250
        Height = 17
        Caption = 'Satellites.xml / Terrestrial.xml / Cables.xml'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object bOK: TButton
      Left = 288
      Top = 128
      Width = 75
      Height = 25
      Hint = 'Only receive the selected files'
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bOKClick
    end
    object bAll: TButton
      Left = 288
      Top = 96
      Width = 75
      Height = 25
      Hint = 
        'Don'#39't change the selection on the left but just receive all file' +
        's'
      Caption = 'All'
      ModalResult = 8
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bAbort: TButton
      Left = 288
      Top = 64
      Width = 75
      Height = 25
      Hint = 'Completely abort this FTP action'
      Cancel = True
      Caption = 'Abort'
      ModalResult = 3
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
  end
end
