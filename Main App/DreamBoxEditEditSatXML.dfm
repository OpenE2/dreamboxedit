object FormEditSatXML: TFormEditSatXML
  Left = 384
  Top = 189
  Width = 620
  Height = 515
  Caption = 'Edit ...'
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
    Width = 604
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      604
      479)
    object Label1: TLabel
      Left = 8
      Top = 120
      Width = 45
      Height = 14
      Caption = 'Filename:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lFileName: TLabel
      Left = 64
      Top = 120
      Width = 537
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object bMoveUp: TSpeedButton
      Left = 519
      Top = 256
      Width = 20
      Height = 22
      Hint = 'Move the highlighted record one position up'
      Anchors = [akTop, akRight]
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFF0FFFFFFF888FFFFF0FFFFFF0008FFFFF0FFFFFF0008FFFFF0FFFFFF0008FF
        FFF0FFFFFF0008FFFFF0FFFFFF0008FFFFF0FFFF880008888FF0FFF000000000
        FFF0FFFF0000000FFFF0FFFFF00000FFFFF0FFFFFF000FFFFFF0FFFFFFF0FFFF
        FFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0}
      Layout = blGlyphBottom
      ParentShowHint = False
      ShowHint = True
      OnClick = bMoveUpClick
    end
    object bMoveDown: TSpeedButton
      Left = 519
      Top = 280
      Width = 20
      Height = 22
      Hint = 'Move the highlighted record one position down'
      Anchors = [akTop, akRight]
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFF0FFFFFFFFFFFFFFF0FFFFFFF08FFFFFF0FFFFFF0008FFFFF0FFFFF000008F
        FFF0FFFF00000008FFF0FFF000000000FFF0FFFFFF0008FFFFF0FFFFFF0008FF
        FFF0FFFFFF0008FFFFF0FFFFFF0008FFFFF0FFFFFF0008FFFFF0FFFFFF000FFF
        FFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0}
      Layout = blGlyphBottom
      ParentShowHint = False
      ShowHint = True
      OnClick = bMoveDownClick
    end
    object Label14: TLabel
      Left = 8
      Top = 468
      Width = 158
      Height = 14
      Anchors = [akLeft, akBottom]
      Caption = 'Number of transponders in table:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lTT: TLabel
      Left = 170
      Top = 468
      Width = 41
      Height = 14
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ntgbFileName: TGroupBox
      Left = 8
      Top = 136
      Width = 512
      Height = 329
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'satellites.xml'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        512
        329)
      object dgSatXML: TDBGrid
        Left = 8
        Top = 16
        Width = 495
        Height = 305
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = puSatXML
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pos'
            Title.Caption = 'Position'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = 'Satellite Name'
            Width = 152
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Freq'
            Title.Caption = 'Frequency'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pol'
            PickList.Strings = (
              '0'
              '1'
              '2'
              '3')
            Title.Caption = 'Polarization'
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Symb'
            Title.Caption = 'Symbolrate'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FEC'
            PickList.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '9')
            Width = 35
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Flags'
            PickList.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '')
            Width = 40
            Visible = True
          end>
      end
    end
    object bSave: TButton
      Left = 526
      Top = 438
      Width = 75
      Height = 25
      Hint = 
        'Save the satellites.xml table to disk and return to the main scr' +
        'een'
      Anchors = [akRight, akBottom]
      Caption = 'Save'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSaveClick
    end
    object bCancel: TButton
      Left = 526
      Top = 406
      Width = 75
      Height = 25
      Hint = 'Return to the main screen without saving'
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bCancelClick
    end
    object bReload: TButton
      Left = 526
      Top = 344
      Width = 75
      Height = 39
      Hint = 'Discard changes and reload the satellite.xml table from disk'
      Anchors = [akRight, akBottom]
      Caption = 'Reload table'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      WordWrap = True
      OnClick = bReloadClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 597
      Height = 97
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Explanation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 58
        Height = 14
        Caption = 'Polarization:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 60
        Height = 14
        Caption = '0: Horizontal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 49
        Height = 14
        Caption = '1: Vertical'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 160
        Top = 24
        Width = 22
        Height = 14
        Caption = 'FEC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 160
        Top = 40
        Width = 35
        Height = 14
        Caption = '0: Auto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 160
        Top = 56
        Width = 27
        Height = 14
        Caption = '1: 1/2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 160
        Top = 72
        Width = 27
        Height = 14
        Caption = '2: 2/3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 208
        Top = 24
        Width = 27
        Height = 14
        Caption = '3: 3/4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 208
        Top = 40
        Width = 27
        Height = 14
        Caption = '4: 5/6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 208
        Top = 56
        Width = 27
        Height = 14
        Caption = '5: 7/8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 80
        Top = 40
        Width = 31
        Height = 14
        Caption = '2: Left'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 80
        Top = 56
        Width = 36
        Height = 14
        Caption = '3: Right'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 288
        Top = 24
        Width = 26
        Height = 14
        Caption = 'Flags'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 288
        Top = 40
        Width = 81
        Height = 14
        Caption = '1: Network Scan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 288
        Top = 56
        Width = 55
        Height = 14
        Caption = '2: Use BAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 384
        Top = 40
        Width = 57
        Height = 14
        Caption = '4: Use ONIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 384
        Top = 56
        Width = 154
        Height = 14
        Caption = '8: Skip NITs of known networks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 208
        Top = 72
        Width = 33
        Height = 14
        Caption = '9: 9/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FormMain.cdsSERV
    Left = 32
    Top = 232
  end
  object puSatXML: TPopupMenu
    Left = 192
    Top = 200
    object InsertTransponder1: TMenuItem
      Caption = 'Insert transponder'
      OnClick = InsertTransponder1Click
    end
    object Insertcopyoftransponder1: TMenuItem
      Caption = 'Insert copy of transponder'
      OnClick = Insertcopyoftransponder1Click
    end
    object DeleteTransponder1: TMenuItem
      Caption = 'Delete transponder'
      OnClick = DeleteTransponder1Click
    end
  end
end
