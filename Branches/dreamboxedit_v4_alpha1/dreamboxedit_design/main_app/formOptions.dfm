object frmOptions: TfrmOptions
  Left = 637
  Top = 372
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 505
  ClientWidth = 766
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lwpnlBG: TLWPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 505
    Align = alClient
    TabOrder = 0
    Effect = GradientV
    Color1 = clCream
    Color2 = clWhite
    DesignSize = (
      766
      505)
    object gbxDreamboxProfiles: TGroupBox
      Left = 208
      Top = 8
      Width = 553
      Height = 425
      Caption = 'Dreambox profiles'
      Color = clCream
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        553
        425)
      object lbxDreamboxes: TListBox
        Left = 8
        Top = 48
        Width = 121
        Height = 161
        ItemHeight = 13
        TabOrder = 0
      end
      object gbxNetwork: TGroupBox
        Left = 136
        Top = 48
        Width = 409
        Height = 185
        Caption = 'Network'
        TabOrder = 1
        DesignSize = (
          409
          185)
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 119
          Height = 13
          Caption = 'IP address of Dreambox: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 152
          Top = 18
          Width = 135
          Height = 13
          Caption = 'Dreambox HTTP Server port'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 214
          Top = 36
          Width = 53
          Height = 13
          Caption = '(default 80)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 10
          Top = 66
          Width = 390
          Height = 2
        end
        object Label3: TLabel
          Left = 8
          Top = 78
          Width = 114
          Height = 13
          Caption = 'Username on Dreambox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 152
          Top = 78
          Width = 112
          Height = 13
          Caption = 'Password on Dreambox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 125
          Width = 42
          Height = 13
          Caption = 'FTP Port'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 70
          Top = 145
          Width = 53
          Height = 13
          Caption = '(default 21)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 152
          Top = 125
          Width = 50
          Height = 13
          Caption = 'FTP Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object eIP: TEdit
          Left = 8
          Top = 32
          Width = 129
          Height = 21
          Hint = 
            'Enter the IP address of the Dreambox (like 192.168.0.5 or MyDrea' +
            'mbox.DYNDNS.COM etc.)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object eHTTPPort: TEdit
          Left = 152
          Top = 32
          Width = 57
          Height = 21
          Hint = 'Enter the port used for HTTP by the Dreambox (normally 80)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Button1: TButton
          Left = 294
          Top = 32
          Width = 75
          Height = 21
          Anchors = [akTop, akRight]
          Caption = 'Test'
          TabOrder = 2
        end
        object eUsername: TEdit
          Left = 8
          Top = 91
          Width = 129
          Height = 21
          Hint = 'Enter the username for the Dreambox (normally: root)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object ePassword: TEdit
          Left = 152
          Top = 91
          Width = 129
          Height = 21
          Hint = 'Enter the password for the Dreambox (normally: dreambox)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object eFTPPort: TEdit
          Left = 8
          Top = 141
          Width = 57
          Height = 21
          Hint = 'Enter the port used for FTP by the Dreambox (normally 21)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object eFTPPassive: TRadioButton
          Left = 152
          Top = 143
          Width = 121
          Height = 17
          Caption = 'Passive (default)'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          TabStop = True
        end
        object eFTPActive: TRadioButton
          Left = 152
          Top = 157
          Width = 121
          Height = 17
          Caption = 'Active'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Button2: TButton
          Left = 294
          Top = 90
          Width = 75
          Height = 21
          Anchors = [akTop, akRight]
          Caption = 'Test'
          TabOrder = 8
        end
      end
      object gbxFilePaths: TGroupBox
        Left = 136
        Top = 236
        Width = 409
        Height = 157
        Caption = 'File paths on the Dreambox'
        TabOrder = 2
        DesignSize = (
          409
          157)
        object Label20: TLabel
          Left = 8
          Top = 18
          Width = 139
          Height = 14
          Caption = 'Services and Bouquets files:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 8
          Top = 60
          Width = 91
          Height = 14
          Caption = 'User bouquet files:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 8
          Top = 102
          Width = 82
          Height = 14
          Caption = 'Satellites.xml file:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object ePathServices: TEdit
          Left = 8
          Top = 32
          Width = 390
          Height = 21
          Hint = 
            'Enter the file path on the Dreambox where DreamBoxEdit should re' +
            'ad and write the services and bouquet files to and from'
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object ePathUserBouquets: TEdit
          Left = 8
          Top = 74
          Width = 390
          Height = 21
          Hint = 
            'Enter the file path on the Dreambox where DreamBoxEdit should re' +
            'ad and write the user bouquet files to and from'
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object ePathSatellites: TEdit
          Left = 8
          Top = 116
          Width = 390
          Height = 21
          Hint = 
            'Enter the file path on the Dreambox where DreamBoxEdit should re' +
            'ad and write the satellites.xml file to and from'
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
      object brnDreamboxProfileApply: TButton
        Left = 470
        Top = 396
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Apply'
        Enabled = False
        TabOrder = 3
      end
      object btnAddProfile: TButton
        Left = 9
        Top = 216
        Width = 72
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'A&dd profile'
        TabOrder = 4
      end
      object btnRemoveProfile: TButton
        Left = 9
        Top = 248
        Width = 96
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '&Remove profile'
        Enabled = False
        TabOrder = 5
      end
      object brnDreamboxProfileCancel: TButton
        Left = 390
        Top = 396
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Cancel'
        Enabled = False
        TabOrder = 6
      end
    end
    object btnDone: TButton
      Left = 680
      Top = 476
      Width = 75
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = '&Done'
      TabOrder = 1
      OnClick = btnDoneClick
    end
    object tvNavigation: TTreeView
      Left = 8
      Top = 8
      Width = 193
      Height = 489
      Indent = 19
      MultiSelectStyle = []
      ReadOnly = True
      ShowButtons = False
      TabOrder = 2
      OnChange = tvNavigationChange
      Items.Data = {
        070000002A0000000000000000000000FFFFFFFFFFFFFFFF0000000001000000
        11447265616D626F782070726F66696C6573270000000000000000000000FFFF
        FFFFFFFFFFFF00000000000000000E52657365742073657474696E6773290000
        000000000000000000FFFFFFFFFFFFFFFF00000000010000001047656E657261
        6C2073657474696E6773270000000000000000000000FFFFFFFFFFFFFFFF0000
        0000000000000E52657365742073657474696E67732100000000000000000000
        00FFFFFFFFFFFFFFFF0000000000000000084C616E67756167652D0000000000
        000000000000FFFFFFFFFFFFFFFF0000000000000000144170706C6963617469
        6F6E206D65737361676573250000000000000000000000FFFFFFFFFFFFFFFF00
        000000000000000C4654502073657474696E67732A0000000000000000000000
        FFFFFFFFFFFFFFFF000000000000000011416476616E6365642073657474696E
        6773270000000000000000000000FFFFFFFFFFFFFFFF00000000010000000E50
        69636F6E2073657474696E6773270000000000000000000000FFFFFFFFFFFFFF
        FF00000000000000000E52657365742073657474696E6773}
    end
    object gbxResetSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 361
      Height = 305
      Caption = 'Reset Dreambox settings'
      Color = clCream
      ParentColor = False
      TabOrder = 4
      Visible = False
      DesignSize = (
        361
        305)
      object lblDreamboxProfileToReset: TLabel
        Left = 16
        Top = 24
        Width = 79
        Height = 13
        Caption = 'Dreambox profile'
      end
      object chkResetPaths: TCheckBox
        Left = 16
        Top = 144
        Width = 241
        Height = 17
        Caption = 'Reset all file paths for the selected Dreambox'
        TabOrder = 0
      end
      object chkResetNetwork: TCheckBox
        Left = 16
        Top = 120
        Width = 281
        Height = 17
        Caption = 'Reset all network options for the selected Dreambox'
        TabOrder = 1
      end
      object rgpResetPathSettings: TRadioGroup
        Left = 26
        Top = 167
        Width = 327
        Height = 105
        Caption = 'Choose the type of settings you want to reset the file paths to'
        ItemIndex = 0
        Items.Strings = (
          'Dreambox satellite reciever'
          'Dreambox cable reciever'
          'Version 3 settings (Enigma2)'
          'New Enigma2 settings')
        TabOrder = 2
      end
      object btnReset: TButton
        Left = 277
        Top = 276
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Reset'
        Enabled = False
        TabOrder = 3
      end
      object lbxDreamboxProfileToReset: TListBox
        Left = 16
        Top = 40
        Width = 329
        Height = 73
        ItemHeight = 13
        TabOrder = 4
      end
    end
    object gbxGeneralSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 425
      Height = 321
      Caption = 'General settings'
      Color = clCream
      ParentColor = False
      TabOrder = 5
      Visible = False
      object Label12: TLabel
        Left = 104
        Top = 167
        Width = 225
        Height = 14
        AutoSize = False
        Caption = 'Number of days between automatic checks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cbShowDetails: TCheckBox
        Left = 16
        Top = 24
        Width = 400
        Height = 17
        Hint = 'Show all service details on the main screen services list'
        Caption = 'Show all service details in the services list'
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
      object cbAutoload: TCheckBox
        Left = 16
        Top = 48
        Width = 400
        Height = 17
        Hint = 
          'Always try to load the last used file-set when DreamBoxEdit is s' +
          'tarted'
        Caption = 'Automatically load the last used file-set at program start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbSortUseService: TCheckBox
        Left = 16
        Top = 72
        Width = 400
        Height = 17
        Hint = 
          'Also use the servicename when sorting the main screen services l' +
          'ist by clicking on a column header'
        Caption = 'Always include the servicenames when sorting the serviceslist'
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
      object cbSaveTVRadio: TCheckBox
        Left = 16
        Top = 96
        Width = 400
        Height = 17
        Hint = 
          'Save the status of the show TV and show Radio services checkboxe' +
          's on the mainscreen'
        Caption = 'Save mainscreen All / TV / Radio / Data selection'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object cbHidePassword: TCheckBox
        Left = 16
        Top = 120
        Width = 400
        Height = 17
        Hint = 
          'Hide the password when typed and displayed, by replacing it with' +
          ' asterisks (show as ********)'
        Caption = 'Hide password on options screen (replace with asterisks)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object cbAutoCheckVersion: TCheckBox
        Left = 16
        Top = 144
        Width = 400
        Height = 17
        Hint = 
          'Automaticaly check for a newer version of DreamBoxEdit at progra' +
          'm start'
        Caption = 
          'Automaticaly check for a newer version of DreamBoxEdit at progra' +
          'm start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object _SpinEdit1: TSpinEdit
        Left = 56
        Top = 163
        Width = 41
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxValue = 31
        MinValue = 0
        ParentFont = False
        TabOrder = 6
        Value = 0
      end
      object cbEnableZAP: TCheckBox
        Left = 19
        Top = 200
        Width = 166
        Height = 17
        Hint = 'Enable the ZAP function in the services list on the main screen'
        Caption = 'Enable ZAP function on key:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object cbZAPKey: TComboBox
        Left = 56
        Top = 218
        Width = 105
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          'Ctrl+Z'
          'Spacebar'
          'Double Click')
      end
      object cbZAPNoErrorCheck: TCheckBox
        Left = 56
        Top = 244
        Width = 281
        Height = 17
        Hint = 'Disable the checking of the return messages from the Dreambox'
        Caption = 'Disable ZAP function return message error checking'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object btnApplyGeneralSettings: TButton
        Left = 342
        Top = 292
        Width = 75
        Height = 21
        Caption = '&Apply'
        Enabled = False
        TabOrder = 10
      end
    end
    object gbxResetGeneralSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 321
      Height = 113
      Caption = 'Reset general settings'
      Color = clCream
      ParentColor = False
      TabOrder = 6
      Visible = False
      object CheckBox1: TCheckBox
        Left = 16
        Top = 24
        Width = 225
        Height = 17
        Caption = 'Reset all general options to their defaults'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 48
        Width = 217
        Height = 17
        Caption = 'Reset the width of the main screen lists'
        TabOrder = 1
      end
      object Button6: TButton
        Left = 238
        Top = 84
        Width = 75
        Height = 21
        Caption = '&Reset'
        Enabled = False
        TabOrder = 2
      end
    end
    object gbxApplicationMessages: TGroupBox
      Left = 208
      Top = 8
      Width = 385
      Height = 153
      Caption = 'Application messages'
      Color = clCream
      ParentColor = False
      TabOrder = 7
      Visible = False
      object cbConfirmDelete: TCheckBox
        Left = 16
        Top = 24
        Width = 330
        Height = 17
        Hint = 'Ask for confirmation before a delete action is actually done'
        Caption = 'Ask for confirmation before deleting something'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object cbConfirmSort: TCheckBox
        Left = 16
        Top = 48
        Width = 330
        Height = 17
        Hint = 'Ask for confirmation before a sort action is actually done'
        Caption = 'Ask for confirmation before sorting services within bouquets'
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
      object cbShowResult: TCheckBox
        Left = 16
        Top = 72
        Width = 330
        Height = 17
        Hint = 'Show a message with the results of the action after every action'
        Caption = 'Always show a message with the result of an action'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object cbShowDetHint: TCheckBox
        Left = 16
        Top = 96
        Width = 330
        Height = 17
        Hint = 'Show detail info as popup hint box in details list'
        Caption = 'Show detail info as hint in details list'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object btnApplyApplicationMessages: TButton
        Left = 302
        Top = 124
        Width = 75
        Height = 21
        Caption = '&Apply'
        Enabled = False
        TabOrder = 4
      end
    end
    object gbxFTPSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 553
      Height = 297
      Caption = 'FTP settings'
      Color = clCream
      ParentColor = False
      TabOrder = 8
      Visible = False
      object Label6: TLabel
        Left = 16
        Top = 16
        Width = 289
        Height = 14
        AutoSize = False
        Caption = 'User configurable telnet command for use from FTP panel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 56
        Width = 366
        Height = 14
        Caption = 
          'Extra Dreambox command prompt (or part of) to check for in telne' +
          't sessions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object eUserTelnetCmd: TEdit
        Left = 16
        Top = 32
        Width = 369
        Height = 21
        Hint = 
          'Here you can enter a command that can be send to the Dreambox fr' +
          'om the FTP panel, for instance to start a script for a customise' +
          'd reboot.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object eDreamboxCmdPrompt: TEdit
        Left = 16
        Top = 72
        Width = 121
        Height = 21
        Hint = 
          'Here you can enter (part of) the command prompt on the DreamBox.' +
          ' DreamBoxEdit waits for this prompt when sending Telnet commands' +
          ' like Reboot.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 120
        Width = 449
        Height = 137
        Caption = 'Quick FTP options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label7: TLabel
          Left = 24
          Top = 48
          Width = 250
          Height = 14
          Caption = 'What to do after a Quick FTP send to the Dreambox:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cbQuickFTP: TCheckBox
          Left = 8
          Top = 24
          Width = 425
          Height = 17
          Caption = 'Enable Quick FTP buttons on mainscreen toolbar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object rbReload: TRadioButton
          Left = 24
          Top = 64
          Width = 400
          Height = 17
          Caption = 'Issue Reload Settings Command'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object rbReboot: TRadioButton
          Left = 24
          Top = 80
          Width = 400
          Height = 17
          Caption = 'Issue Reboot Command'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object rbCustomCmd: TRadioButton
          Left = 24
          Top = 96
          Width = 400
          Height = 17
          Caption = 'Issue custom Telnet Command'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object rbNothing: TRadioButton
          Left = 24
          Top = 112
          Width = 400
          Height = 17
          Caption = 'Do nothing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object btnApplyFTP: TButton
        Left = 468
        Top = 266
        Width = 75
        Height = 21
        Caption = '&Apply'
        Enabled = False
        TabOrder = 3
      end
    end
    object gbxAdvancedSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 553
      Height = 433
      Caption = 'Advanced settings'
      Color = clCream
      ParentColor = False
      TabOrder = 9
      Visible = False
      DesignSize = (
        553
        433)
      object cbAllowDuplicates: TCheckBox
        Left = 16
        Top = 24
        Width = 233
        Height = 17
        Caption = 'Allow duplicate entries in (user) bouquets'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbNewSatXMLBottom: TCheckBox
        Left = 16
        Top = 48
        Width = 353
        Height = 17
        Caption = 'Add new transponders at bottom when updating SATELLITES.XML'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbShowReboot: TCheckBox
        Left = 16
        Top = 72
        Width = 265
        Height = 17
        Caption = 'Display "Reboot Dreambox" option on FTP screen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object pctlAdvancedSettings: TPageControl
        Left = 12
        Top = 113
        Width = 529
        Height = 280
        ActivePage = tshtServicenameFormatWordlist
        Style = tsFlatButtons
        TabOrder = 3
        object tshtServicenameFormatWordlist: TTabSheet
          Caption = 'Servicename format wordlist'
          DesignSize = (
            521
            249)
          object Label17: TLabel
            Left = 6
            Top = 0
            Width = 515
            Height = 42
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 
              'Here you can enter words that should always be formatted exactly' +
              ' as entered below in the "Format servicename automatically" popu' +
              'p option of bouquet details.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            WordWrap = True
          end
          object mWordList: TMemo
            Left = 4
            Top = 40
            Width = 509
            Height = 208
            Hint = 
              'Sample: if you enter RTL, auto format will always write rtl as R' +
              'TL'
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
        end
        object tshtTVServiceTypes: TTabSheet
          Caption = 'TV service types'
          ImageIndex = 1
          DesignSize = (
            521
            249)
          object Label10: TLabel
            Left = 6
            Top = 0
            Width = 344
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 
              'Enter the servicenumbers that DreamBoxEdit should treat as type ' +
              '"TV"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object mTVTypes: TMemo
            Left = 4
            Top = 16
            Width = 509
            Height = 208
            Hint = 'Default: 1 and 4'
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
          object btnAddToHDTVServices: TButton
            Left = 265
            Top = 228
            Width = 121
            Height = 21
            Anchors = [akLeft, akBottom]
            Caption = '&Add to HDTV services'
            TabOrder = 1
            OnClick = btnDoneClick
          end
          object btnResetTVServces: TButton
            Left = 393
            Top = 228
            Width = 121
            Height = 21
            Anchors = [akLeft, akBottom]
            Caption = '&Reset to defaults'
            TabOrder = 2
            OnClick = btnDoneClick
          end
        end
        object tshtRadioServiceTypes: TTabSheet
          Caption = 'Radio service types'
          ImageIndex = 2
          DesignSize = (
            521
            249)
          object Label11: TLabel
            Left = 6
            Top = 0
            Width = 355
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 
              'Enter the servicenumbers that DreamBoxEdit should treat as type ' +
              '"Radio"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object mRDTypes: TMemo
            Left = 4
            Top = 16
            Width = 509
            Height = 208
            Hint = 'Default: 1 and 4'
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
          end
          object Button3: TButton
            Left = 393
            Top = 228
            Width = 121
            Height = 21
            Anchors = [akLeft, akBottom]
            Caption = '&Reset to defaults'
            TabOrder = 1
            OnClick = btnDoneClick
          end
        end
      end
      object btnAdvancedSettingsApply: TButton
        Left = 470
        Top = 404
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Apply'
        Enabled = False
        TabOrder = 4
      end
    end
    object pnlLocationIcon: TPanel
      Left = 722
      Top = 18
      Width = 32
      Height = 36
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = clCream
      TabOrder = 3
      object imgLocationIcon: TImage
        Left = 0
        Top = 0
        Width = 32
        Height = 32
        AutoSize = True
        Center = True
        Picture.Data = {
          055449636F6E0000010004003030000001002000A82500004600000020200000
          01002000A8100000EE2500001818000001002000880900009636000010100000
          01002000680400001E4000002800000030000000600000000100200000000000
          8025000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010000000300000005
          0000000700000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000070000000600000004000000040000000B00000012
          0000001A0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001A000000130000000D000000060000001300000076
          0000008300000088000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          0000008800000088000000830000007D0000001600000009EC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FF0000008A0000001F0000000AEC8335FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFEC8335FF00000090000000230000000AEC8335FFE4E4E4FF
          E4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF
          E4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF
          E4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF
          E4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF
          E4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF
          E4E4E4FFE4E4E4FFEC8335FF00000090000000230000000AEC8335FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFEC8335FF00000090000000230000000AEC8335FFE6E6E6FF
          E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
          E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
          E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
          E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
          E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
          E6E6E6FFE6E6E6FFEC8335FF00000090000000230000000AEC8335FFE8E8E8FF
          E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF
          E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE3E3E3FFDEDEDEFFE8E8E8FFE8E8E8FF
          E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF
          E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF
          E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF
          E8E8E8FFE8E8E8FFEC8335FF00000090000000230000000AEC8335FFEBEBEBFF
          EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFF
          EBEBEBFFEBEBEBFFEBEBEBFF9F9F9FFFA2A2A2FFC0C0C0FFCCCCCCFFE4E4E4FF
          EAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFF
          EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFF
          EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFF
          EBEBEBFFEBEBEBFFEC8335FF00000090000000230000000AEC8335FFEDEDEDFF
          EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
          EDEDEDFFEDEDEDFF757575FF585858FF616161FF6A6A6AFF7A7A7AFF8F8F8FFF
          C5C5C5FFD9D9D9FFE9E9E9FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
          EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
          EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
          EDEDEDFFEDEDEDFFEC8335FF00000090000000230000000AEC8335FFF0F0F0FF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
          F0F0F0FFF0F0F0FF343434FF343434FF343434FF353535FF3C3C3CFF535353FF
          7C7C7CFFA4A4A4FFC0C0C0FFD4D4D4FFEDEDEDFFF0F0F0FFF0F0F0FFF0F0F0FF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
          F0F0F0FFF0F0F0FFEC8335FF00000090000000230000000AEC8335FFF3F3F3FF
          F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
          F3F3F3FFF3F3F3FF343434FF343434FF343434FF353535FF343434FF323232FF
          374A5CFF494949FF727272FFA8A8A8FFC6C6C6FFDBDBDBFFF2F2F2FFF3F3F3FF
          F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
          F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
          F3F3F3FFF3F3F3FFEC8335FF00000090000000230000000AEC8335FFF6F6F6FF
          F6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF
          F6F6F6FFF6F6F6FF313131FF313131FF313131FF353535FF343434FF3291F2FF
          3291F2FF316498FF384A5EFF4E4E4EFF787878FFACACACFFCCCCCCFFE7E7E7FF
          F5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF
          F6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF
          F6F6F6FFF6F6F6FFEC8335FF00000090000000230000000AEC8335FFF8F8F8FF
          F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          F8F8F8FFF8F8F8FF313131FF313131FF313131FF353535FF3291F2FF3291F2FF
          3291F2FF3291F2FF3291F2FF2F6497FF384B5DFF535353FF888888FFAFAFAFFF
          D1D1D1FFECECECFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          F8F8F8FFF8F8F8FFEC8335FF00000090000000230000000AEC8335FFFAFAFAFF
          FAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFF
          FAFAFAFFFAFAFAFFFAFAFAFF313131FF313131FF3291F2FF3291F2FF3291F2FF
          3291F2FF3291F2FF3291F2FF2F90F1FF2F90F1FF2F6498FF394B5EFF595959FF
          8C8C8CFFD3D3D3FFD6D6D6FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFF
          FAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFF
          FAFAFAFFFAFAFAFFEC8335FF00000090000000230000000AEC8335FFFCFCFCFF
          FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          FCFCFCFFFCFCFCFFFCFCFCFFB0B0B0FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3291F2FF3090F1FF316498FF
          595959FF5D5D5DFFA0A0A0FFC4C4C4FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          FCFCFCFFFCFCFCFFEC8335FF00000090000000230000000AEC8335FFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFB2B2B2FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3291F2FF3090F1FF3090F1FF
          3090F1FF306498FF454545FF8C8C8CFFC6C6C6FFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFEC8335FF00000090000000230000000AEC8335FFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB2B2B2FF2F90F1FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3291F2FF3090F1FF3090F1FF
          3090F1FF2A8DF0FF2F90F1FF454545FF8C8C8CFFC6C6C6FFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90F1FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF
          2E8FF1FF2AA6F0FF2ACBF0FF2ACBF0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF
          2E8FF1FF29A5F0FF29CBF0FF29CBF0FF29CBF0FF464646FF8D8D8DFFC7C7C7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90F1FF2F90F1FF
          2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2E8FF1FF
          29A5F0FF29CBF0FF28CBF0FF28CBF0FF28CBF0FF28CBF0FF464646FF8D8D8DFF
          C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90F1FF
          2A8DF0FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF2B8DF0FF2F90F1FF29A5F0FF
          29CBF0FF28CBF0FF27CBF0FF27CBF0FF26CBF0FF26CBF0FF26CBF0FF464646FF
          8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2F90F1FF
          2A8DF0FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF2B8DF0FF29A5F0FF29CBF0FF
          28CBF0FF27CBF0FF26CAF0FF26CAF0FF25CAF0FF25CAF0FF25CBF0FF26CBF0FF
          464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF
          2A8DF0FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF29A5F0FF29CBF0FF28CBF0FF
          28CBF0FF27CBF0FF25CAF0FF25CAF0FF24CAF0FF24CAF0FF24CAF0FF26CBF0FF
          2ACCF0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF
          2A8DF0FF2A8DF0FF2A8DF0FF29A5F0FF29A5F0FF29CBF0FF29CBF0FF28CBF0FF
          28CBF0FF27CBF0FF26CAF0FF25CAF0FF25CAF0FF25CAF0FF26CAF0FF28CBF0FF
          2ECCF0FF35CEF1FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B3B3B3FF2A8DF0FF2A8DF0FF29CCF0FF29CCF0FF29CBF0FF29CBF0FF29CBF0FF
          29CBF0FF29CBF0FF28CBF0FF28CBF0FF28CBF0FF28CBF0FF2ACBF0FF2DCCF0FF
          34CEF1FF3DD0F1FF47D2F1FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFB3B3B3FF2ACCF0FF2ACCF0FF2ACCF0FF2ACCF0FF2BCCF0FF2BCCF0FF
          2BCCF0FF2CCCF0FF2CCCF0FF2DCCF0FF2DCCF0FF2ECCF0FF31CDF0FF35CEF1FF
          3CCFF1FF45D1F1FF4ED4F2FF59D6F3FF464646FF8D8D8DFFC7C7C7FFFFFFFFFF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB3B3B3FF2BCCF0FF2BCCF0FF2CCCF0FF2DCCF0FF2ECCF0FF
          2FCCF0FF30CDF0FF31CDF0FF33CDF0FF34CEF1FF36CEF1FF3ACFF1FF3ED0F1FF
          45D1F1FF4ED4F2FF58D6F3FF63D9F3FF6EDBF4FF464646FF8D8D8DFFC7C7C7FF
          FFFFFFFFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2CCCF0FF2DCCF0FF2FCDF0FF31CDF0FF
          33CEF0FF36CEF0FF38CEF0FF3BCFF1FF3ED0F1FF41D0F1FF45D1F1FF4AD2F2FF
          50D4F2FF59D6F3FF61D8F3FF6DDBF4FF78DDF4FF82E0F5FF464646FF8D8D8DFF
          C7C7C7FFFFFFFFFFEC8335FF00000090000000230000000AEC8335FFFAA987FF
          FAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FF
          FAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FFFAA987FF
          FAA987FFFAA987FFFAA987FFFAA987FFAF765EFF2FCDF0FF31CDF0FF35CEF0FF
          38CFF0FF3CCFF1FF40D0F1FF44D1F1FF48D2F1FF4BD3F2FF50D4F2FF55D5F2FF
          5CD7F3FF64D8F3FF6CDBF4FF76DDF4FF81E0F5FF8AE2F5FF93E4F6FF442E25FF
          8A5D4AFFC38369FFEC8335FF00000090000000230000000AEC8335FFFAAA88FF
          FAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FF
          FAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FF
          FAAA88FFFAAA88FFFAAA88FFFAAA88FFFAAA88FFAF775FFF35CEF0FF3ACFF1FF
          3FD0F1FF44D1F1FF49D2F1FF4ED3F2FF52D4F2FF57D5F2FF5CD6F3FF60D8F3FF
          66D9F4FF6EDBF4FF76DDF4FF7FDFF5FF88E1F5FF91E3F6FF9BE6F7FFA4E8F7FF
          442E25FF8A5E4BFFB86629FF00000090000000230000000AEC8335FFFAAB89FF
          FAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FF
          FAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FF
          FAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFFAAB89FFAF7860FF3FD0F1FF
          46D2F1FF4CD3F2FF53D4F2FF59D6F2FF5ED7F3FF63D8F3FF68D9F4FF6DDAF4FF
          72DCF4FF79DDF5FF80DFF5FF88E1F5FF91E3F6FF99E5F6FFA2E8F7FFABEAF8FF
          B4ECF9FF442E25FF82481DFF000000A9000000230000000AEC8335FFFAAD8CFF
          FAAD8CFFFAAD8CFFFAAD8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFF
          FAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFF
          FAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFFAAC8CFFAF7862FF
          4ED3F2FF55D5F2FF5DD7F3FF63D8F3FF6ADAF3FF6FDBF4FF74DCF4FF78DDF5FF
          7DDEF5FF83E0F5FF8AE1F6FF92E3F6FF9AE5F7FFA1E7F7FFA9E9F8FFB1EBF9FF
          B9EDF9FFBDEEFAFF40230EFF000000A2000000230000000AEC8335FFFAAF90FF
          FAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FF
          FAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FF
          FAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FFFAAF90FF
          AF7A65FF5ED7F3FF67D9F3FF6EDBF4FF76DDF4FF7BDEF5FF80DFF5FF84E0F5FF
          89E1F6FF8FE3F6FF95E4F7FF9CE6F7FFA3E8F8FFAAE9F8FFB0EBF9FFB7EDF9FF
          BDEEFAFFC0EFFAFF532E12FF000000C2000000470000000AEC8335FFFBB394FF
          FBB394FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FF
          FBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FF
          FBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FF
          FBB294FFB07C67FF71DCF4FF7ADEF5FF81DFF5FF88E1F6FF8EE2F6FF92E3F6FF
          96E5F7FF9CE6F7FFA1E7F7FFA7E9F8FFAEEAF8FFB4ECF9FFB9EDF9FFBEEFFAFF
          C2F0FAFFC4F0FAFFC6F1FAFF000000D8000000470000000AEC8335FFFBB699FF
          FBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FF
          FBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FF
          FBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FFFBB699FF
          FBB699FFFBB699FFB07F6BFF85E0F5FF8DE2F6FF94E4F6FF9AE5F7FF9FE7F7FF
          A4E8F8FFA9E9F8FFAEEAF8FFB3ECF9FFB9EDF9FFBEEFFAFFC2F0FAFFC6F1FAFF
          C8F1FAFFC9F2FBFFCAF2FBFF000000D80000003D0000000AEC8335FFFBB99EFF
          FBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFF
          FBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFF
          FBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFFFBB99EFF
          FBB99EFFFBB99EFFFBB99EFFB0816EFF97E5F7FF9FE7F7FFA6E8F8FFACEAF8FF
          B0EBF8FFB5ECF9FFBAEDF9FFBEEFFAFFC3F0FAFFC7F1FAFFCAF2FBFFCDF3FBFF
          CEF3FBFFCFF3FBFFD0F3FBFF000000D20000003D0000000AEC8335FFFCBCA1FF
          FCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FF
          FCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FF
          FCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FF
          FCBCA1FFFCBCA1FFFCBCA1FFFCBCA1FFB08371FFAAE9F8FFB1EBF8FFB7EDF9FF
          BCEEF9FFC1EFFAFFC5F0FAFFC9F1FAFFCDF2FBFFD0F3FBFFD2F4FBFFD4F4FBFF
          D4F4FBFFD4F4FBFFD4F4FBFF000000D20000003D00000009EC8335FFFCBEA3FF
          FCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FF
          FCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FF
          FCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FF
          FCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFFCBEA3FFB08572FFBBEEF9FFC1EFFAFF
          C6F1FAFFCBF2FBFFCFF3FBFFD2F4FBFFD4F4FBFFD6F5FBFFD8F5FCFFD9F6FCFF
          D9F5FCFFD8F5FCFFD7F5FCFF000000B40000001F00000006EC8335FFFCBFA5FF
          FCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FF
          FCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FF
          FCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FF
          FCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFFCBFA5FFB08673FFC8F1FAFF
          CDF2FBFFD1F3FBFFD5F4FBFFD7F5FCFFD9F6FCFFDAF6FCFFDBF6FCFFDCF6FCFF
          DBF6FCFFDAF6FCFF5A3214FF0000008E0000001600000004EC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFA55B25FF
          D3F4FBFFD6F5FCFFD9F6FCFFDBF6FCFFDCF6FCFFDDF7FCFFDEF7FCFFDEF7FCFF
          DEF7FCFFDEF7FCFF8F4F20FF000000130000000D000000010000000300000005
          0000000700000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          00000053D9F6FCFFDBF6FCFFDCF6FCFFDDF7FCFFDEF7FCFFDFF7FCFFDFF7FCFF
          DEF7FCFF0000006A000000070000000600000004000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000004C00000041DBF6FCFFDBF6FCFFDBF6FCFFDBF6FCFF00000057
          0000004C00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004100000041000000410000004100000000
          0000000000000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFF
          FFFF0000FFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFF00F0000FFFFFFFFFC3F0000280000002000000040000000
          0100200000000000801000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000004
          0000000600000008000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          000000090000000900000009000000090000000800000006000000040000000D
          000000130000001A0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001A000000130000000D00000016
          0000007D00000083000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          00000088000000880000008800000088000000830000007D00000016EC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FF0000008A0000001FEC8335FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFEC8335FF0000009000000023EC8335FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFB2B2B2FFB2B2B2FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF
          E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFEC8335FF0000009000000023EC8335FF
          E7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF
          3F3F3FFF3F3F3FFF7F7F7FFFB4B4B4FFB4B4B4FFE7E7E7FFE7E7E7FFE7E7E7FF
          E7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF
          E7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFEC8335FF0000009000000023EC8335FF
          ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFF343434FF
          343434FF353535FF404040FF404040FF828282FFB8B8B8FFB8B8B8FFECECECFF
          ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFF
          ECECECFFECECECFFECECECFFECECECFFEC8335FF0000009000000023EC8335FF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF343434FF
          343434FF353535FF353535FF2F90F1FF414141FF414141FF848484FFBBBBBBFF
          BBBBBBFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEC8335FF0000009000000023EC8335FF
          F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF313131FF
          313131FF353535FF3291F2FF3291F2FF3291F2FF2F90F1FF434343FF434343FF
          878787FFBFBFBFFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
          F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEC8335FF0000009000000023EC8335FF
          F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          313131FF3291F2FF3291F2FF3291F2FF3291F2FF2F90F1FF2F90F1FF3291F2FF
          444444FF898989FFC1C1C1FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFEC8335FF0000009000000023EC8335FF
          FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          B0B0B0FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF
          3090F1FF454545FF8B8B8BFFC4C4C4FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFEC8335FF0000009000000023EC8335FF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF
          B2B2B2FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF3291F2FF3291F2FF3090F1FF
          3090F1FF2A8DF0FF454545FF8C8C8CFFC6C6C6FFFEFEFEFFFEFEFEFFFEFEFEFF
          FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E6E6E6FFABABABFF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF
          2E8FF1FF2AA6F0FF2ACBF0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E6E6E6FFB3B3B3FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF
          2E8FF1FF29CBF0FF28CBF0FF27CBF0FF464646FF8D8D8DFFC7C7C7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB3B3B3FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF2F90F1FF
          28B2F0FF27CBF0FF26CAF0FF24CAF0FF22C9EFFF464646FF8D8D8DFFC7C7C7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB3B3B3FF2A8DF0FF2A8DF0FF2B8DF0FF2B8DF0FF28B2F0FF
          28CBF0FF25CAF0FF23CAF0FF22C9EFFF1FC9EFFF1EC9EFFF464646FF8D8D8DFF
          C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2A8DF0FF29A5F0FF28CBF0FF28CBF0FF
          28CBF0FF26CBF0FF25CAF0FF24CAF0FF23CAF0FF26CAF0FF2DCCF0FF464646FF
          8D8D8DFFC7C7C7FFFFFFFFFFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF29CBF0FF2ACCF0FF2ACCF0FF
          2ACBF0FF2ACBF0FF2ACBF0FF2BCBF0FF2CCCF0FF32CDF0FF3BCFF1FF49D3F2FF
          464646FF8D8D8DFFC7C7C7FFFFFFFFFFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF2DCCF0FF2ECCF0FF
          2FCDF0FF32CDF0FF35CEF0FF38CEF1FF3BCFF1FF43D1F1FF4DD3F2FF5DD7F3FF
          6DDBF4FF464646FF8D8D8DFFC7C7C7FFEC8335FF0000009000000023EC8335FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF33CDF0FF
          35CEF0FF3ACFF1FF40D0F1FF46D1F1FF4BD3F2FF54D5F2FF5DD7F3FF6CDBF4FF
          7ADEF4FF8BE2F5FF464646FF8D8D8DFFB86629FF0000009000000023EC8335FF
          FAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FF
          FAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFAF765EFF
          3FD0F1FF48D2F1FF51D4F2FF59D6F2FF60D7F3FF68D9F4FF6FDBF4FF7CDEF5FF
          88E1F5FF97E5F6FFA1E7F7FF442E24FF82481DFF000000A900000023EC8335FF
          FAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FF
          FAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FFFAAA89FF
          AF7760FF54D5F2FF5FD7F3FF69DAF3FF70DBF4FF76DDF4FF7CDEF5FF88E1F5FF
          93E4F6FFA1E7F7FFAAEAF8FFB4ECF9FF40230EFF000000C200000047EC8335FF
          FAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFF
          FAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFF
          FAAD8DFFAF7962FF73DCF4FF7EDFF5FF85E0F5FF8BE2F6FF91E3F6FF9AE5F7FF
          A4E8F8FFB0EBF9FFB8EDF9FFBFEFFAFFC2F0FAFF000000D800000047EC8335FF
          FBB394FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FF
          FBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FFFBB294FF
          FBB294FFFBB294FFB07C67FF8FE3F6FF98E5F7FF9FE7F7FFA5E8F8FFADEAF8FF
          B5ECF9FFBEEFFAFFC5F0FAFFC9F2FBFFCAF2FBFF000000D80000003DEC8335FF
          FBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFF
          FBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFF
          FBB89CFFFBB89CFFFBB89CFFB0816DFFAEEAF8FFB4ECF9FFBCEEF9FFC2F0FAFF
          C8F1FAFFCEF3FBFFD2F4FBFFD3F4FBFFD3F4FBFF000000D20000003DEC8335FF
          FCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FF
          FCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FF
          FCBDA2FFFCBDA2FFFCBDA2FFFCBDA2FFB08471FFC4F0FAFFCBF2FBFFD1F3FBFF
          D5F4FBFFD8F5FCFFDAF6FCFFDAF6FCFFD9F6FCFF000000B20000001FEC8335FF
          FCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FF
          FCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FF
          FCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFB08674FFD8F5FCFFDBF6FCFF
          DDF7FCFFDEF7FCFFDFF7FCFFDFF7FCFF9B5622FF0000007D00000016EC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFA55B25FFDFF7FCFF
          DFF7FCFFDFF7FCFFDFF7FCFF9B5622FFEC8335FF000000130000000D00000004
          0000000600000008000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000048
          0000004800000048000000480000000900000008000000060000000400000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FFFFFFFF28000000
          1800000030000000010020000000000060090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000004000000060000000800000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000800000006
          000000040000000D000000130000001A0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D
          0000001D0000001D0000001D0000001D0000001D0000001D0000001A00000013
          0000000D000000160000007D0000008300000088000000880000008800000088
          0000008800000088000000880000008800000088000000880000008800000088
          000000880000008800000088000000880000008800000088000000830000007D
          00000016EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          E07C32FFC76E2CFFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF0000008A
          0000001FEC8335FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          3E3E3EFF696969FFB1B1B1FFC0C0C0FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFEC8335FF00000090
          00000023EC8335FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF343434FF
          343434FF353535FF364F67FF777777FF9D9D9DFFD7D7D7FFDCDCDCFFE7E7E7FF
          E7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFEC8335FF00000090
          00000023EC8335FFECECECFFECECECFFECECECFFECECECFFECECECFF323232FF
          333333FF346190FF3191F2FF336FADFF485665FF656565FFA3A3A3FFE0E0E0FF
          ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFEC8335FF00000090
          00000023EC8335FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
          314F6CFF3291F2FF3291F2FF3191F2FF2F90F1FF3291F2FF565656FFAAAAAAFF
          F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEC8335FF00000090
          00000023EC8335FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FF
          7F8F9EFF2F90F1FF2F90F1FF3090F1FF3291F2FF3090F1FF3178C1FF60666CFF
          B0B0B0FFECECECFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFEC8335FF00000090
          00000023EC8335FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF
          B7BABDFF4486C6FF2F90F1FF2F90F1FF3090F1FF2F8FF1FF2D94F1FF2D98C0FF
          5A5A5AFFAEAEAEFFF0F0F0FFFCFCFCFFFCFCFCFFFCFCFCFFEC8335FF00000090
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D6D6D6FF5085B9FF2F90F1FF2F90F1FF2F90F1FF2E8FF1FF2CA1F1FF28CBF0FF
          27CBF0FF5C5C5CFFB5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFEC8335FF00000090
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFCACACAFF2A8DF0FF2A8DF0FF2B8DF0FF2D9AF1FF28BFF0FF25CAF0FF
          23CAF0FF27A3BFFF626C6FFFB5B5B5FFF3F3F3FFFFFFFFFFEC8335FF00000090
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEFEFEFFF8292A2FF2A92F0FF29B0F0FF28C3F0FF27CBF0FF25CAF0FF
          23CAF0FF22CAF0FF2EA5C0FF5C5C5CFFB1B1B1FFF3F3F3FFEC8335FF00000090
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF829BA2FF2ACCF0FF2ACCF0FF2ACBF0FF2ACBF0FF
          2BCBF0FF2ECCF0FF38CEF1FF49D3F2FF5C5C5CFFB5B5B5FFEC8335FF00000090
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF709FA9FF30CCF0FF32CDF0FF37CFF0FF
          3CCFF1FF42D1F1FF4FD3F2FF62D8F3FF64B2C3FF696E6FFFA75C25FF00000096
          00000023EC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF849CA2FF3FD0F1FF49D2F2FF
          53D4F2FF5CD7F3FF67D9F4FF77DDF5FF89E1F5FF82B9C5FF552F13FF000000B2
          0000002EEC8335FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FF
          FAA986FFFAA986FFFAA986FFFAA986FFFAA986FFFAA986FF867467FF5CD6F3FF
          69DAF3FF72DCF4FF7ADEF5FF88E1F5FF97E5F6FFA7E9F8FFB4ECF9FF000000D7
          0000005AEC8335FFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFF
          FAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFFAAD8DFFEAA284FF83837EFF
          83E0F5FF8DE3F6FF95E5F7FFA0E7F7FFADEAF8FFBAEDF9FFC2F0FAFF7F9CA1F3
          00000066EC8335FFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFF
          FBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFFBB89CFFEBAC92FF
          907D72FFA9E9F8FFB3EBF9FFBCEEF9FFC4F0FAFFCDF3FBFFD0F3FBFF859CA1F2
          0000005EEC8335FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FF
          FCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FFFCC0A6FF
          FCC0A6FF998378FFC9F1FBFFD1F3FBFFD6F4FBFFD9F6FCFFDAF6FCFF84969AE5
          0000002FEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFDD7A31FF9B7B5DFFDCF6FCFFDEF7FCFFDFF7FCFFAAA295FF0000003A
          0000000D00000004000000060000000800000009000000090000000900000009
          0000000900000009000000090000000900000009000000090000000900000009
          00000009000000090000001942494A8042494A8042494A800000002300000006
          0000000400000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFF00000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FFFFFF0028000000100000002000000001002000000000004004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000004C0000004C0000004C0000004C
          0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C
          0000004C0000004C0000004CEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FF0000004CEC8335FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          717171FF717171FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF
          E3E3E3FFEC8335FF0000004CEC8335FFEFEFEFFFEFEFEFFFEFEFEFFF343434FF
          353535FF777777FF777777FFA7A7A7FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF
          EFEFEFFFEC8335FF0000004CEC8335FFF6F6F6FFF6F6F6FFF6F6F6FF313131FF
          3291F2FF3291F2FF7B7B7BFF7B7B7BFF7B7B7BFFF6F6F6FFF6F6F6FFF6F6F6FF
          F6F6F6FFEC8335FF0000004CEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF
          2F90F1FF2F90F1FF3291F2FF3090F1FF808080FF808080FFFFFFFFFFFFFFFFFF
          FFFFFFFFEC8335FF0000004CEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FF
          B3B3B3FF2F90F1FF2F90F1FF2E8FF1FF2BCCF0FF808080FF808080FFFFFFFFFF
          FFFFFFFFEC8335FF0000004CEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B3B3B3FF2A8DF0FF2B8DF0FF2BA6F0FF28CBF0FF1DC8EFFF808080FF808080FF
          FFFFFFFFEC8335FF0000004CEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFB3B3B3FF26CBF0FF26CBF0FF24CAF0FF19C7EFFF15C7EFFF808080FF
          808080FFEC8335FF0000004CEC8335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB3B3B3FF33CDF0FF2ECCF0FF4DD3F2FF4ED3F2FF75DDF4FF
          808080FF76411AFF0000004CEC8335FFFAA480FFFAA480FFFAA480FFFAA480FF
          FAA480FFFAA480FFFAA480FFAF7359FF4CD3F1FF63D8F3FF66D9F4FF87E1F5FF
          9FE7F7FF76411AFF0000008CEC8335FFFBB598FFFBB598FFFBB598FFFBB598FF
          FBB598FFFBB598FFFBB598FFFBB598FFB07F6AFF95E4F6FF96E4F6FF9EE6F7FF
          BFEFFAFF64ABB2FF0000008DEC8335FFFCC7B0FFFCC7B0FFFCC7B0FFFCC7B0FF
          FCC7B0FFFCC7B0FFFCC7B0FFFCC7B0FFFCC7B0FFB08B7BFFDFF7FCFFDFF7FCFF
          DFF7FCFF76B4B8FF0000007AEC8335FFEC8335FFEC8335FFEC8335FFEC8335FF
          EC8335FFEC8335FFEC8335FFEC8335FFEC8335FFEC8335FFA55B25FF84BBBEFF
          89BEC0FFAF6127FF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000041
          000000410000000000000000FFFF000080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000FFF30000}
      end
    end
    object gbxPiconSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 337
      Height = 209
      Caption = 'Picon settings'
      Color = clCream
      ParentColor = False
      TabOrder = 10
      Visible = False
      DesignSize = (
        337
        209)
      object cbPiconActivate: TCheckBox
        Left = 24
        Top = 32
        Width = 289
        Height = 17
        Caption = 'Download and show picons for services in bouquets list'
        TabOrder = 0
      end
      object GroupBox5: TGroupBox
        Left = 24
        Top = 64
        Width = 281
        Height = 97
        Caption = 'Upload picons '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 16
          Top = 48
          Width = 138
          Height = 13
          Caption = 'Path for picons on dreambox:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbPiconUpload: TCheckBox
          Left = 16
          Top = 24
          Width = 249
          Height = 17
          Caption = 'Upload picons when sending files to Dreambox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ePathPicons: TEdit
          Left = 16
          Top = 64
          Width = 249
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object btnApplyPicon: TButton
        Left = 252
        Top = 178
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Apply'
        Enabled = False
        TabOrder = 2
      end
    end
    object gbxResetPiconSettings: TGroupBox
      Left = 208
      Top = 8
      Width = 297
      Height = 161
      Caption = 'Reset Picon settings'
      Color = clCream
      ParentColor = False
      TabOrder = 11
      Visible = False
      DesignSize = (
        297
        161)
      object RadioGroup1: TRadioGroup
        Left = 13
        Top = 22
        Width = 273
        Height = 105
        Caption = 'Reset to default Dreambox Picon archive:'
        ItemIndex = 0
        Items.Strings = (
          'USB'
          'HDD'
          'CF')
        TabOrder = 0
      end
      object btnResetPicon: TButton
        Left = 214
        Top = 132
        Width = 75
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = '&Reset'
        Enabled = False
        TabOrder = 1
      end
    end
    object gbxLanguage: TGroupBox
      Left = 208
      Top = 8
      Width = 313
      Height = 433
      Caption = 'Language'
      Color = clCream
      ParentColor = False
      TabOrder = 12
      DesignSize = (
        313
        433)
      object btnApplyLanguage: TButton
        Left = 230
        Top = 404
        Width = 75
        Height = 21
        Anchors = [akRight, akBottom]
        Caption = '&Apply'
        Enabled = False
        TabOrder = 0
      end
      object lbxLanguage: TListBox
        Left = 8
        Top = 16
        Width = 296
        Height = 377
        ItemHeight = 13
        TabOrder = 1
      end
    end
  end
end
