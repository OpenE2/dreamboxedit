object frmeDataTransfer: TfrmeDataTransfer
  Left = 0
  Top = 0
  Width = 768
  Height = 679
  Color = clCream
  ParentColor = False
  TabOrder = 0
  object lwpnlBG: TLWPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 679
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 449
      Height = 145
      Caption = 'Select your Dreambox'
      Color = clCream
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 57
        Height = 13
        Caption = 'IP Address: '
      end
      object Label2: TLabel
        Left = 80
        Top = 56
        Width = 63
        Height = 13
        Caption = '192.168.1.55'
      end
      object Label3: TLabel
        Left = 16
        Top = 76
        Width = 61
        Height = 13
        Caption = 'Local folder: '
      end
      object Label4: TLabel
        Left = 80
        Top = 76
        Width = 274
        Height = 13
        Caption = 'C:\Dreambox\files\settings\dreamboxedit\20080910\misc'
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 24
        Width = 217
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Dreambox 7020S (192.168.1.55)'
        Items.Strings = (
          'Dreambox 7020S (192.168.1.55)'
          'Dreambox 800S (192.168.1.44)')
      end
      object Button1: TButton
        Left = 296
        Top = 104
        Width = 131
        Height = 21
        Caption = 'Manage Dreamboxes...'
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 176
      Width = 449
      Height = 457
      Caption = 'Transfer files from your Dreambox'
      Color = clCream
      ParentColor = False
      TabOrder = 1
      object Label5: TLabel
        Left = 24
        Top = 40
        Width = 17
        Height = 33
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 112
        Width = 17
        Height = 33
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 184
        Width = 17
        Height = 33
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 248
        Width = 17
        Height = 33
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSkyBlue
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 64
        Top = 24
        Width = 201
        Height = 65
        Caption = 'Select operation'
        ItemIndex = 0
        Items.Strings = (
          'Retrieve file from your Dreambox'
          'Send files to your Dreambox')
        TabOrder = 0
      end
      object RadioGroup2: TRadioGroup
        Left = 64
        Top = 96
        Width = 329
        Height = 65
        Caption = 'What should be done with unused bouquets on your Deambox?'
        ItemIndex = 0
        Items.Strings = (
          'Remove all unused bouquets'
          'Don'#39't touch unused bouquets')
        TabOrder = 1
      end
      object RadioGroup3: TRadioGroup
        Left = 64
        Top = 168
        Width = 329
        Height = 65
        Caption = 'Reload settings after the transfer completes?'
        ItemIndex = 0
        Items.Strings = (
          'Reload the settings on the Dreambox'
          'Don'#39't reload the settings on the Dreambox')
        TabOrder = 2
      end
      object Button2: TButton
        Left = 68
        Top = 254
        Width = 105
        Height = 21
        Caption = 'Start the transfer'
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 304
        Width = 433
        Height = 145
        Caption = 'Files transferred'
        TabOrder = 4
        object ListBox1: TListBox
          Left = 8
          Top = 16
          Width = 417
          Height = 121
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
    object Button3: TButton
      Left = 312
      Top = 638
      Width = 75
      Height = 21
      Caption = '&Ok'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 392
      Top = 638
      Width = 75
      Height = 21
      Caption = '&Cancel'
      TabOrder = 3
    end
  end
end
