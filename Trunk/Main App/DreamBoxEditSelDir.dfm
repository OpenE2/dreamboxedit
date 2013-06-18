object FormSelDir: TFormSelDir
  Left = 401
  Top = 291
  Width = 439
  Height = 281
  Caption = 'Select Directory'
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
  object Splitter1: TSplitter
    Left = 241
    Top = 49
    Height = 167
    Beveled = True
    Color = clBtnFace
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      431
      49)
    object _lDir: TLabel
      Left = 8
      Top = 24
      Width = 201
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = '_lDir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 77
      Height = 14
      Caption = 'Directory Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object eDir: TEdit
      Left = 224
      Top = 24
      Width = 199
      Height = 21
      Hint = 'Select a directory below or enter a directoryname here'
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'eDir'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 241
    Height = 167
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      241
      167)
    object Label3: TLabel
      Left = 8
      Top = 0
      Width = 55
      Height = 14
      Caption = 'Directories:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dlb: TDirectoryListBox
      Left = 8
      Top = 16
      Width = 225
      Height = 145
      Anchors = [akLeft, akTop, akRight, akBottom]
      FileList = flb
      ItemHeight = 16
      TabOrder = 0
      OnChange = dlbChange
    end
  end
  object Panel3: TPanel
    Left = 244
    Top = 49
    Width = 187
    Height = 167
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      187
      167)
    object Label2: TLabel
      Left = 4
      Top = 0
      Width = 25
      Height = 14
      Caption = 'Files:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 4
      Top = 122
      Width = 33
      Height = 13
      Caption = 'Drives:'
    end
    object flb: TFileListBox
      Left = 4
      Top = 16
      Width = 175
      Height = 100
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
    end
    object dcb: TDriveComboBox
      Left = 4
      Top = 140
      Width = 175
      Height = 19
      Anchors = [akLeft, akRight, akBottom]
      DirList = dlb
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 216
    Width = 431
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      431
      36)
    object bOK: TButton
      Left = 248
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bOKClick
    end
    object bCancel: TButton
      Left = 348
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
end
