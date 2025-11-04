inherited fPianoConti: TfPianoConti
  Left = 277
  Top = 185
  Caption = 'Piano dei conti'
  ClientHeight = 328
  ClientWidth = 512
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Top = 24
    Width = 512
    Height = 304
    object Label4: TLabel
      Left = 14
      Top = 6
      Width = 58
      Height = 19
      Caption = 'Gruppo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 32
      Width = 17
      Height = 24
      Alignment = taCenter
      Caption = ' - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 98
      Top = 6
      Width = 47
      Height = 19
      Caption = 'Conto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 156
      Top = 32
      Width = 17
      Height = 24
      Alignment = taCenter
      Caption = ' - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 174
      Top = 6
      Width = 88
      Height = 19
      Caption = 'SottoConto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 26
      Top = 64
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object laIndeduc: TLabel
      Left = 26
      Top = 112
      Width = 198
      Height = 16
      Caption = 'Percentuale di indeducibilit'#224
    end
    object dbeID_Piano_Conti: TDBEdit
      Left = 408
      Top = 18
      Width = 81
      Height = 45
      TabStop = False
      CharCase = ecUpperCase
      Color = clMaroon
      Ctl3D = True
      DataField = 'ID_PIANO_CONTO'
      DataSource = dsoPianoConti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object dbeGruppo: TDBEdit
      Left = 26
      Top = 28
      Width = 35
      Height = 30
      CharCase = ecUpperCase
      Color = 8927220
      DataField = 'GRUPPO'
      DataSource = dsoPianoConti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -21
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = dbeGruppoExit
    end
    object dbeConto: TDBEdit
      Left = 98
      Top = 28
      Width = 47
      Height = 30
      CharCase = ecUpperCase
      Color = 8927220
      DataField = 'CONTO'
      DataSource = dsoPianoConti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -21
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = dbeContoExit
    end
    object dbeSottoConto: TDBEdit
      Left = 180
      Top = 28
      Width = 77
      Height = 30
      CharCase = ecUpperCase
      Color = 8927220
      DataField = 'SOTTOCONTO'
      DataSource = dsoPianoConti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -21
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = dbeSottoContoExit
    end
    object dbeDescr: TDBEdit
      Left = 26
      Top = 80
      Width = 469
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoPianoConti
      TabOrder = 4
    end
    object dbragNatura: TDBRadioGroup
      Left = 26
      Top = 140
      Width = 469
      Height = 41
      Caption = 'Natura'
      Columns = 3
      DataField = 'NATURA'
      DataSource = dsoPianoConti
      Items.Strings = (
        'Patrimoniale'
        'Economico'
        'D'#39'Ordine')
      TabOrder = 6
      TabStop = True
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object dbragCapoconto: TDBRadioGroup
      Left = 26
      Top = 236
      Width = 470
      Height = 41
      Caption = 'Capoconto'
      Columns = 4
      DataField = 'CAPO_CONTO_CLI_FOR'
      DataSource = dsoPianoConti
      Items.Strings = (
        'Cliente'
        'Fornitore'
        'Entrambi'
        'Conto')
      TabOrder = 8
      TabStop = True
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
    object dbePercIndeduc: TDBEdit
      Left = 236
      Top = 108
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'INDEDUCIBILE'
      DataSource = dsoPianoConti
      TabOrder = 5
    end
    object dbragVarFiscale: TDBRadioGroup
      Left = 26
      Top = 188
      Width = 469
      Height = 41
      Caption = 'Variazione fiscale'
      Columns = 3
      DataField = 'VARIAZIONE_FISCALE'
      DataSource = dsoPianoConti
      Enabled = False
      Items.Strings = (
        'Nessuna'
        'In aumento'
        'In diminuzione')
      TabOrder = 7
      TabStop = True
      Values.Strings = (
        '0'
        '1'
        '2')
    end
  end
  inherited tbarControl: TToolBar
    Width = 512
    Height = 24
    ButtonHeight = 22
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
    object ToolButton1: TToolButton
      Left = 245
      Top = 0
      Hint = 'Ricerca Conto'
      Caption = 'Ricerca Conto'
      ImageIndex = 23
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 270
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 18
      Style = tbsSeparator
    end
    object Edit1: TEdit
      Left = 278
      Top = 0
      Width = 139
      Height = 22
      Hint = 'Ricerca x Descrizione'
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object dsoPianoConti: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 366
    Top = 82
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select COUNT(*)  from TAB_PIANO_CONTI'
      'where CONTO=:parConto and GRUPPO=:parGruppo and'
      'SOTTOCONTO=:parSottoconto')
    Left = 280
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parConto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parGruppo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parSottoconto'
        ParamType = ptUnknown
      end>
    object IBQuery1COUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
end
