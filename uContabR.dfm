object fContabR: TfContabR
  Left = 189
  Top = 104
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Situazione Contabile'
  ClientHeight = 559
  ClientWidth = 758
  Color = 16765348
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 12
    Width = 40
    Height = 13
    Caption = 'Da Data'
  end
  object Label2: TLabel
    Left = 0
    Top = 40
    Width = 32
    Height = 13
    Caption = 'a Data'
  end
  object Label5: TLabel
    Left = 536
    Top = 536
    Width = 63
    Height = 13
    Caption = 'Da Incassare'
    Visible = False
  end
  object Label6: TLabel
    Left = 40
    Top = 536
    Width = 34
    Height = 13
    Caption = 'Entrate'
    Visible = False
  end
  object Label7: TLabel
    Left = 280
    Top = 536
    Width = 30
    Height = 13
    Caption = 'Uscite'
    Visible = False
  end
  object Label26: TLabel
    Left = 669
    Top = 133
    Width = 38
    Height = 13
    Caption = 'Famiglia'
    Visible = False
  end
  object Label27: TLabel
    Left = 145
    Top = 181
    Width = 21
    Height = 13
    Caption = 'Tipo'
    Visible = False
  end
  object Label28: TLabel
    Left = 269
    Top = 181
    Width = 30
    Height = 13
    Caption = 'Marca'
    Visible = False
  end
  object Label29: TLabel
    Left = 393
    Top = 181
    Width = 35
    Height = 13
    Caption = 'Gruppo'
    Visible = False
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 8
    Width = 91
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Text = '01/01/2001'
  end
  object DateEdit2: TDateEdit
    Left = 48
    Top = 36
    Width = 91
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    TabOrder = 1
  end
  object RadioGroup2: TRadioGroup
    Left = 146
    Top = 31
    Width = 161
    Height = 33
    Caption = 'Scegli Agente'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Agente')
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object RadioGroup6: TRadioGroup
    Left = 3
    Top = 122
    Width = 182
    Height = 59
    Caption = 'Ordina per :'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Data Doc.'
      'Numero'
      'Cliente/Forn.'
      'Agente'
      'Data Mov.')
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 668
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Filtra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 655
    Top = 35
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 676
    Top = 186
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 676
    Top = 86
    Width = 75
    Height = 18
    Cursor = crHandPoint
    Caption = 'Stampa Tot.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 312
    Top = 42
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = dsDipendente
    TabOrder = 8
    OnChange = RxDBLookupCombo4Change
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 368
    Top = 42
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsDipendente
    TabOrder = 9
    OnChange = RxDBLookupCombo3Change
  end
  object RadioGroup3: TRadioGroup
    Left = 3
    Top = 60
    Width = 73
    Height = 63
    Caption = 'Bolle'
    ItemIndex = 0
    Items.Strings = (
      'Tutte'
      'Numero')
    TabOrder = 10
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 78
    Top = 72
    Width = 67
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'NUM_DOC'
    LookupDisplay = 'NUM_DOC'
    LookupSource = DataSource1
    TabOrder = 11
  end
  object DBGrid2: TDBGrid
    Left = 1
    Top = 248
    Width = 752
    Height = 142
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'Numero'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DENOMINAZIONE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente/Forn'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'Agente'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE'
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_DOC'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_MAGAZZINO'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ID_DOCUMENTO'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LISTINO'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENTE_ID'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_IVATO'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_EURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rimessa'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 146
    Top = -1
    Width = 161
    Height = 33
    Caption = 'Scegli Cliente'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cli.'
      'Forn.')
    PopupMenu = PopupMenu2
    TabOrder = 13
    OnClick = RadioGroup1Click
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 312
    Top = 11
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'ID_CLI_FOR'
    LookupSource = dsoCli
    TabOrder = 14
    OnChange = RxDBLookupCombo2Change
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 368
    Top = 11
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'DENOMINAZIONE'
    LookupSource = dsoCli
    TabOrder = 15
    OnChange = RxDBLookupCombo5Change
  end
  object BitBtn5: TBitBtn
    Left = 689
    Top = 35
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. 2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 723
    Top = 35
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. 3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BitBtn6Click
  end
  object Panel1: TPanel
    Left = 192
    Top = 107
    Width = 473
    Height = 141
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 18
    object Label3: TLabel
      Left = 243
      Top = 67
      Width = 34
      Height = 13
      Caption = 'Entrate'
    end
    object Label4: TLabel
      Left = 363
      Top = 67
      Width = 30
      Height = 13
      Caption = 'Uscite'
    end
    object Label8: TLabel
      Left = 314
      Top = 100
      Width = 43
      Height = 13
      Caption = 'Abbuono'
    end
    object Label9: TLabel
      Left = 79
      Top = 30
      Width = 34
      Height = 13
      Caption = 'Agente'
    end
    object DBDateEdit1: TDBDateEdit
      Left = 3
      Top = 47
      Width = 86
      Height = 21
      Hint = 'Data Movimento'
      DataField = 'DATA_MOV'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 243
      Top = 80
      Width = 103
      Height = 21
      DataField = 'DARE'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object RxDBCalcEdit2: TRxDBCalcEdit
      Left = 363
      Top = 80
      Width = 103
      Height = 21
      DataField = 'AVERE'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 178
      Top = 47
      Width = 290
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR_MOV'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 72
      Width = 230
      Height = 41
      DataField = 'NOTE'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 118
      Width = 220
      Height = 19
      Cursor = crHandPoint
      DataSource = DataSource5
      Hints.Strings = (
        'Prima Registrazione'
        'Precedente Registrazione'
        'Prossima Registrazione'
        'Ultima Registrazione'
        'Nuova Registrazione'
        'Cancella Registrazione'
        'Modifica Registrazione'
        'Salva Registrazione'
        'Annulla Registrazione'
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 120
      Top = 3
      Width = 54
      Height = 21
      DropDownCount = 8
      DataField = 'CLIFOR_ID'
      DataSource = DataSource5
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dsoCli
      ParentFont = False
      TabOrder = 6
      OnChange = RxDBLookupCombo6Change
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 176
      Top = 3
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'CLIFOR_ID'
      DataSource = DataSource5
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsoCli
      ParentFont = False
      TabOrder = 7
      OnChange = RxDBLookupCombo7Change
      OnClick = RxDBLookupCombo7Click
    end
    object RadioGroup4: TRadioGroup
      Left = 3
      Top = -2
      Width = 110
      Height = 29
      Caption = 'Tipo'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Cli.'
        'For.')
      ParentFont = False
      TabOrder = 8
      OnClick = RadioGroup4Click
    end
    object RxDBCalcEdit3: TRxDBCalcEdit
      Left = 314
      Top = 115
      Width = 103
      Height = 21
      DataField = 'ABBUONO'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
    end
    object DBDateEdit2: TDBDateEdit
      Left = 91
      Top = 47
      Width = 86
      Height = 21
      Hint = 'Data Documento'
      DataField = 'DATA_DOC'
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object RxDBLookupCombo10: TRxDBLookupCombo
      Left = 120
      Top = 26
      Width = 54
      Height = 21
      DropDownCount = 8
      DataField = 'AGENTE_ID'
      DataSource = DataSource5
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = dsDipendente
      TabOrder = 11
      OnChange = RxDBLookupCombo10Change
    end
    object RxDBLookupCombo11: TRxDBLookupCombo
      Left = 176
      Top = 26
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'AGENTE_ID'
      DataSource = DataSource5
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsDipendente
      TabOrder = 12
      OnChange = RxDBLookupCombo11Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 392
    Width = 753
    Height = 137
    DataSource = DataSource5
    ReadOnly = True
    TabOrder = 19
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_MOV'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'DATA DOC.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID CLi.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DENOMINAZIONE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 161
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCR_MOV'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DARE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVERE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOTE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PK_CODICE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PROT'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CLIFOR'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ASS'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO_CODICE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO_DESCR'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Edit1: TRxCalcEdit
    Left = 320
    Top = 531
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 20
    Visible = False
  end
  object Edit2: TRxCalcEdit
    Left = 80
    Top = 531
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
    Visible = False
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 616
    Top = 531
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 22
    Visible = False
  end
  object CheckBox1: TCheckBox
    Left = 80
    Top = 104
    Width = 57
    Height = 17
    Caption = 'Gruppo'
    TabOrder = 23
  end
  object Edit3: TEdit
    Left = 138
    Top = 105
    Width = 35
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 24
  end
  object rxdblcGruppo: TRxDBLookupCombo
    Left = 351
    Top = 468
    Width = 120
    Height = 21
    Hint = 'Gruppo'
    DropDownCount = 8
    Color = 15138790
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoGRUPPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
    Visible = False
  end
  object rxdblcMarca: TRxDBLookupCombo
    Left = 235
    Top = 292
    Width = 120
    Height = 21
    Hint = 'Marca'
    DropDownCount = 8
    Color = 14811135
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoMARCA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
    Visible = False
  end
  object rxdblcTipo: TRxDBLookupCombo
    Left = 295
    Top = 324
    Width = 120
    Height = 21
    Hint = 'Tipo'
    DropDownCount = 8
    Color = 16050943
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoTIPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
    Visible = False
  end
  object rxdblcFamiglia: TRxDBLookupCombo
    Left = 627
    Top = 212
    Width = 120
    Height = 21
    Hint = 'Famiglia'
    DropDownCount = 8
    Color = 16777177
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoFAMIGLIA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
    Visible = False
  end
  object cbMarca: TCheckBox
    Left = 539
    Top = 75
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
    Visible = False
  end
  object cbFamiglia: TCheckBox
    Left = 667
    Top = 83
    Width = 15
    Height = 17
    Hint = 'Famiglia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 30
    Visible = False
  end
  object cbTipo: TCheckBox
    Left = 127
    Top = 179
    Width = 15
    Height = 17
    Hint = 'Tipo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
    Visible = False
  end
  object cbGruppo: TCheckBox
    Left = 143
    Top = 195
    Width = 15
    Height = 17
    Hint = 'Gruppo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 32
    Visible = False
  end
  object RadioGroup5: TRadioGroup
    Left = 3
    Top = 180
    Width = 190
    Height = 29
    Caption = 'Visualizza'
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cli'
      'For'
      'Spes')
    ParentFont = False
    TabOrder = 33
    OnClick = RadioGroup5Click
  end
  object BitBtn7: TBitBtn
    Left = 676
    Top = 104
    Width = 75
    Height = 18
    Cursor = crHandPoint
    Caption = 'Stampa Det.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 34
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 676
    Top = 128
    Width = 75
    Height = 18
    Cursor = crHandPoint
    Hint = 'Importa Saldi da File esterno'
    Caption = 'Imp. Saldi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 35
    OnClick = BitBtn8Click
  end
  object RadioGroup7: TRadioGroup
    Left = 146
    Top = 58
    Width = 161
    Height = 31
    Caption = 'Scegli Capo Area'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Capo Area')
    TabOrder = 36
    OnClick = RadioGroup7Click
  end
  object RxDBLookupCombo8: TRxDBLookupCombo
    Left = 312
    Top = 69
    Width = 54
    Height = 23
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = DataSource7
    TabOrder = 37
    OnChange = RxDBLookupCombo8Change
  end
  object RxDBLookupCombo9: TRxDBLookupCombo
    Left = 368
    Top = 69
    Width = 249
    Height = 23
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = DataSource7
    TabOrder = 38
    OnChange = RxDBLookupCombo9Change
  end
  object BitBtn9: TBitBtn
    Left = 676
    Top = 148
    Width = 74
    Height = 18
    Cursor = crHandPoint
    Caption = 'Nuovo Cli.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 39
    Visible = False
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 676
    Top = 167
    Width = 74
    Height = 18
    Cursor = crHandPoint
    Caption = 'Nuovo Forn.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 40
    Visible = False
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 655
    Top = 59
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 41
  end
  object BitBtn12: TBitBtn
    Left = 689
    Top = 59
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 42
  end
  object BitBtn13: TBitBtn
    Left = 723
    Top = 59
    Width = 32
    Height = 18
    Cursor = crHandPoint
    Caption = 'S. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 43
  end
  object Edit4: TEdit
    Left = 24
    Top = 214
    Width = 162
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 44
  end
  object CheckBox2: TCheckBox
    Left = 4
    Top = 216
    Width = 17
    Height = 17
    TabOrder = 45
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 560
    Top = 32
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 518
    Top = 6
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select  * from tab_articoli')
    Left = 392
    Top = 268
  end
  object DataSource3: TDataSource
    DataSet = dmodAz.RxMemoryData1
    Left = 563
    Top = 232
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 388
    Top = 36
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      '')
    Left = 640
    Top = 248
    object IBQuery3ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IBQuery3NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IBQuery3TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery3DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery3COSTO: TFloatField
      FieldName = 'COSTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object IBQuery3FATTCONV: TFloatField
      FieldName = 'FATTCONV'
    end
    object IBQuery3QTA_UM: TFloatField
      FieldName = 'QTA_UM'
    end
    object IBQuery3QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBQuery3Col0: TStringField
      FieldKind = fkLookup
      FieldName = 'Col0'
      LookupDataSet = dmodAz.ibqryTaglio
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'COLORE0'
      KeyFields = 'SCHEDA'
      Lookup = True
    end
    object IBQuery3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object IBQuery3SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBQuery3IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBQuery3DEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBQuery3SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object IBQuery3PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object IBQuery3TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object IBQuery3IVATO: TFloatField
      FieldName = 'IVATO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBQuery3DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object IBQuery3RIF_A: TSmallintField
      FieldName = 'RIF_A'
    end
    object IBQuery3RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object IBQuery3RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object IBQuery3RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IBQuery3RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IBQuery3RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object IBQuery3RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IBQuery3RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object IBQuery3RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IBQuery3RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object IBQuery3RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IBQuery3PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBQuery3RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IBQuery3RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IBQuery3RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object IBQuery3OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object IBQuery3OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object IBQuery3OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object IBQuery3OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IBQuery3DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBQuery3TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object IBQuery3TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
    end
    object IBQuery3PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBQuery3PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBQuery3COL: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object IBQuery3ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IBQuery3TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBQuery3CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IBQuery3TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object IBQuery3DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IBQuery3CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery3TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery3DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IBQuery3CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object IBQuery3CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBQuery3CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBQuery3CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery3CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBQuery3ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object IBQuery3SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object IBQuery3DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object IBQuery3DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery3DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object IBQuery3DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IBQuery3STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IBQuery3STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBQuery3MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object IBQuery3CAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBQuery3KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBQuery3LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBQuery3NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery3VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery3CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBQuery3CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBQuery3PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBQuery3BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBQuery3BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBQuery3VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBQuery3VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBQuery3VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBQuery3PORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBQuery3ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBQuery3SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object IBQuery3PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object IBQuery3PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object IBQuery3CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBQuery3DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBQuery3IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object IBQuery3SCONTO11: TFloatField
      FieldName = 'SCONTO11'
    end
    object IBQuery3AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery3DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IBQuery3NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery3NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object IBQuery3SCONTO21: TFloatField
      FieldName = 'SCONTO21'
    end
    object IBQuery3IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object IBQuery3SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object IBQuery3IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBQuery3COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object IBQuery3ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBQuery3ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object IBQuery3SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object IBQuery3SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBQuery3REPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object IBQuery3RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBQuery3ORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object IBQuery3FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object IBQuery3TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object IBQuery3ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object IBQuery3IVATO1: TSmallintField
      FieldName = 'IVATO1'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object IBQuery3DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object IBQuery3MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object IBQuery3TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery3TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IBQuery3NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBQuery3SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IBQuery3MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object IBQuery3ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object IBQuery3SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object IBQuery3SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object IBQuery3SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object IBQuery3SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object IBQuery3SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object IBQuery3SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object IBQuery3CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object IBQuery3PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object IBQuery3IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object IBQuery3ALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object IBQuery3IMPON1: TFloatField
      FieldName = 'IMPON1'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object IBQuery3ALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object IBQuery3IMPON2: TFloatField
      FieldName = 'IMPON2'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object IBQuery3ALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object IBQuery3IMPON3: TFloatField
      FieldName = 'IMPON3'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object IBQuery3ALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object IBQuery3IMPON4: TFloatField
      FieldName = 'IMPON4'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object IBQuery3ALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object IBQuery3IMPON5: TFloatField
      FieldName = 'IMPON5'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBQuery3ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBQuery3SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBQuery3CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object IBQuery3ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery3RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBQuery3TEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBQuery3TEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBQuery3TEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object IBQuery3IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IBQuery3IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBQuery3VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBQuery3VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBQuery3CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object IBQuery3RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
    end
    object IBQuery3RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
    end
    object IBQuery3RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
    end
    object IBQuery3RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
    end
    object IBQuery3RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
    end
    object IBQuery3RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IBQuery3PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object IBQuery3Col1: TStringField
      FieldKind = fkLookup
      FieldName = 'Col1'
      LookupDataSet = dmodAz.ibqryTaglio
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'COLORE1'
      KeyFields = 'SCHEDA'
      Lookup = True
    end
    object IBQuery3Col2: TStringField
      FieldKind = fkLookup
      FieldName = 'Col2'
      LookupDataSet = dmodAz.ibqryTaglio
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'COLORE2'
      KeyFields = 'SCHEDA'
      Lookup = True
    end
    object IBQuery3Cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = dmodAz.ibqTab_Cli
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
    object IBQuery3AGENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'AGENTE'
      LookupDataSet = dmodAz.ibTab_Agenti
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'AGENTE_ID'
      Lookup = True
    end
    object IBQuery3Consegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
    object IBQuery3Magazzino: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Magazzino'
      Calculated = True
    end
  end
  object DataSource2: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 438
    Top = 230
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    AutoCalcFields = False
    BufferChunks = 500
    SQL.Strings = (
      'SELECT DISTINCT'
      'TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo,'
      'SUM(TAB_DET_DOC.quantita) as QTA'
      'FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      'GROUP BY TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo')
    Left = 602
    Top = 296
    object IBQuery4CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery4CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery4QTA: TFloatField
      FieldName = 'QTA'
    end
    object IBQuery4DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCR'
      LookupDataSet = IBQuery2
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'DESCR'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
    object IBQuery4CLIDESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIDESCR'
      LookupDataSet = dmodAz.ibqTab_Cli
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery1CalcFields
    SQL.Strings = (
      
        'SELECT causale_doc,causale_magazzino,clifor_id,id_documento,list' +
        'ino,nota,num_doc,'
      
        'TOTALE_IVATO,TOTALE as TOT,DATA_DOC,agente_id,TIPO_DOC,TOTALE_EU' +
        'RO,TIPO_CLIFOR,tab_cli_for.denominazione,tab_cli_for.fason,'
      'tab_agenti.descr from TAB_DOCUMENTI'
      'left JOIN TAB_cli_for ON'
      'TAB_Documenti.clifor_id=TAB_cli_for.id_cli_for'
      'left JOIN TAB_agenti ON'
      'TAB_Documenti.agente_id=TAB_agenti.codice'
      
        'WHERE (TAB_DOCUMENTI.TIPO_DOC =210 or TAB_DOCUMENTI.TIPO_DOC =21' +
        '2 or TAB_DOCUMENTI.TIPO_DOC =23 or TAB_DOCUMENTI.TIPO_DOC =336'
      
        ' or TAB_DOCUMENTI.TIPO_DOC =24 or TAB_DOCUMENTI.TIPO_DOC =211 or' +
        ' TAB_DOCUMENTI.TIPO_DOC =28)'
      'order by NUM_DOC,DATA_DOC')
    Left = 608
    object IBQuery1CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IBQuery1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery1ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IBQuery1LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBQuery1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery1TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      currency = True
    end
    object IBQuery1DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery1DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1TOTALE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALE'
      currency = True
      Calculated = True
    end
    object IBQuery1TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object IBQuery1NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object IBQuery1TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
      currency = True
    end
    object IBQuery1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object IBQuery1TOT: TFloatField
      FieldName = 'TOT'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
      currency = True
    end
    object IBQuery1FASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery1
    Left = 616
    Top = 40
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    Left = 192
    Top = 268
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 344
    Top = 268
    object RxMemoryData1CodiceArticolo: TStringField
      FieldName = 'CodiceArticolo'
    end
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 304
    Top = 268
  end
  object DBSumList1: TDBSumList
    SumCollection = <
      item
        GroupOperation = goSum
        FieldName = 'TOTALE'
      end>
    DataSet = IBQuery1
    SumListChanged = DBSumList1SumListChanged
    Left = 584
    Top = 432
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    AfterDelete = IBQuery7AfterDelete
    AfterEdit = IBQuery7AfterEdit
    AfterInsert = IBQuery7AfterInsert
    AfterPost = IBQuery7AfterPost
    BeforeDelete = IBQuery7BeforeDelete
    BeforeEdit = IBQuery7BeforeEdit
    BeforeInsert = IBQuery7BeforeInsert
    BeforePost = IBQuery7BeforePost
    SQL.Strings = (
      
        'select contabilitar.*,tab_cli_for.denominazione,tab_cli_for.Faso' +
        'n'
      'from contabilitar'
      'inner JOIN TAB_cli_for ON'
      'TAB_cli_for.id_cli_for=contabilitar.clifor_id'
      'order by data_mov')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_CONTABILITA'
    Left = 80
    Top = 296
    object IBQuery7PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery7NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object IBQuery7DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object IBQuery7DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object IBQuery7NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery7DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object IBQuery7DARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object IBQuery7AVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object IBQuery7CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery7TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery7NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object IBQuery7NUM_ASS: TIntegerField
      FieldName = 'NUM_ASS'
    end
    object IBQuery7DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Size = 3
    end
    object IBQuery7DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Size = 50
    end
    object IBQuery7AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery7DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery7ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITAR"."ABBUONO"'
      currency = True
    end
    object IBQuery7FASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object IBQuery7FASON1: TIBStringField
      FieldName = 'FASON1'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from contabilitar '
      'where'
      '  PK_CODICE = :PK_CODICE')
    ModifySQL.Strings = (
      'update contabilitar'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  AVERE = :AVERE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_MOV = :DATA_MOV,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_PROT = :NUM_PROT,'
      '  PK_CODICE = :PK_CODICE,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into contabilitar'
      
        '  (ABBUONO, AGENTE_ID, AVERE, CLIFOR_ID, DARE, DATA_DOC, DATA_MO' +
        'V, DEPOSITO_CODICE, '
      
        '   DEPOSITO_DESCR, DESCR_MOV, NOTE, NUM_ASS, NUM_DOC, NUM_PROT, ' +
        'PK_CODICE, '
      '   TIPO_CLIFOR)'
      'values'
      
        '  (:ABBUONO, :AGENTE_ID, :AVERE, :CLIFOR_ID, :DARE, :DATA_DOC, :' +
        'DATA_MOV, '
      
        '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :DESCR_MOV, :NOTE, :NUM_AS' +
        'S, :NUM_DOC, '
      '   :NUM_PROT, :PK_CODICE, :TIPO_CLIFOR)')
    DeleteSQL.Strings = (
      'delete from contabilitar'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 128
    Top = 328
  end
  object DataSource5: TDataSource
    AutoEdit = False
    DataSet = IBQuery7
    Left = 192
    Top = 328
  end
  object DBSumList2: TDBSumList
    SumCollection = <
      item
        GroupOperation = goSum
        FieldName = 'DARE'
      end>
    DataSet = IBQuery7
    SumListChanged = DBSumList2SumListChanged
    Left = 616
    Top = 440
  end
  object frReport2: TfrReport
    Left = 96
    Top = 432
    PixelsPerInch = 96
  end
  object PopupMenu2: TPopupMenu
    Left = 144
    Top = 72
    object Stampa1: TMenuItem
      Caption = 'Stampa'
      OnClick = Stampa1Click
    end
    object TipoBolla1: TMenuItem
      Caption = 'TipoBolla'
      OnClick = TipoBolla1Click
    end
  end
  object RxMemoryData2: TRxMemoryData
    FieldDefs = <>
    Left = 128
    Top = 256
    object RxMemoryData2DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object RxMemoryData2CLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object RxMemoryData2DESCR: TStringField
      FieldName = 'DESCR'
    end
    object RxMemoryData2ENTRATE: TCurrencyField
      FieldName = 'ENTRATE'
    end
    object RxMemoryData2USCITE: TCurrencyField
      FieldName = 'USCITE'
    end
    object RxMemoryData2AGENTE: TStringField
      FieldName = 'AGENTE'
    end
    object RxMemoryData2NOTE: TStringField
      FieldName = 'NOTE'
    end
    object RxMemoryData2RIMESSA: TFloatField
      FieldName = 'RIMESSA'
      currency = True
    end
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'select *  from CONTABILITAR2'
      'order by DATA_DOC')
    UpdateObject = IBUpdateSQL2
    Left = 40
    Top = 312
    object IBQuery8PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery8NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object IBQuery8DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object IBQuery8DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object IBQuery8NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery8DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object IBQuery8DARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object IBQuery8AVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object IBQuery8CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery8CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object IBQuery8AGENTE: TIBStringField
      FieldName = 'AGENTE'
      Size = 50
    end
    object IBQuery8TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery8NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object IBQuery8NUM_ASS: TIntegerField
      FieldName = 'NUM_ASS'
    end
    object IBQuery8DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Size = 3
    end
    object IBQuery8DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Size = 50
    end
    object IBQuery8LISTINO: TIntegerField
      FieldName = 'LISTINO'
    end
    object IBQuery8RIMESSA: TFloatField
      FieldName = 'RIMESSA'
      Origin = '"CONTABILITAR2"."RIMESSA"'
      currency = True
    end
    object IBQuery8ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITAR2"."ABBUONO"'
      currency = True
    end
    object IBQuery8SALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"CONTABILITAR2"."SALDO"'
      currency = True
    end
    object IBQuery8FASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"CONTABILITAR2"."FASON"'
      Size = 1
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  NUM_PROT,'
      '  DATA_MOV,'
      '  DATA_DOC,'
      '  NUM_DOC,'
      '  DESCR_MOV,'
      '  DARE,'
      '  AVERE,'
      '  CLIFOR_ID,'
      '  CLIENTE,'
      '  AGENTE,'
      '  TIPO_CLIFOR,'
      '  NOTE,'
      '  NUM_ASS,'
      '  DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR,'
      '  LISTINO,'
      '  RIMESSA,'
      '  ABBUONO,'
      '  SALDO'
      'from CONTABILITAR2 '
      'where'
      '  PK_CODICE = :PK_CODICE')
    ModifySQL.Strings = (
      'update CONTABILITAR2'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  AGENTE = :AGENTE,'
      '  AVERE = :AVERE,'
      '  CLIENTE = :CLIENTE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_MOV = :DATA_MOV,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  LISTINO = :LISTINO,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_PROT = :NUM_PROT,'
      '  PK_CODICE = :PK_CODICE,'
      '  RIMESSA = :RIMESSA,'
      '  SALDO = :SALDO,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into CONTABILITAR2'
      
        '  (ABBUONO, AGENTE, AVERE, CLIENTE, CLIFOR_ID, DARE, DATA_DOC, D' +
        'ATA_MOV, '
      
        '   DEPOSITO_CODICE, DEPOSITO_DESCR, DESCR_MOV, LISTINO, NOTE, NU' +
        'M_ASS, '
      '   NUM_DOC, NUM_PROT, PK_CODICE, RIMESSA, SALDO, TIPO_CLIFOR)'
      'values'
      
        '  (:ABBUONO, :AGENTE, :AVERE, :CLIENTE, :CLIFOR_ID, :DARE, :DATA' +
        '_DOC, :DATA_MOV, '
      
        '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :DESCR_MOV, :LISTINO, :NOT' +
        'E, :NUM_ASS, '
      
        '   :NUM_DOC, :NUM_PROT, :PK_CODICE, :RIMESSA, :SALDO, :TIPO_CLIF' +
        'OR)')
    DeleteSQL.Strings = (
      'delete from CONTABILITAR2'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 8
    Top = 248
  end
  object DataSource6: TDataSource
    DataSet = IBQuery8
    Left = 40
    Top = 248
  end
  object IBQuery9: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      ''
      '')
    Left = 688
    Top = 320
    object IBQuery9ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IBQuery9NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IBQuery9TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBQuery9CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery9DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery9COSTO: TFloatField
      FieldName = 'COSTO'
    end
    object IBQuery9COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object IBQuery9UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object IBQuery9FATTCONV: TFloatField
      FieldName = 'FATTCONV'
    end
    object IBQuery9QTA_UM: TFloatField
      FieldName = 'QTA_UM'
    end
    object IBQuery9QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBQuery9SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery9SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery9SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object IBQuery9SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBQuery9IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
    end
    object IBQuery9IMPORTO: TFloatField
      FieldName = 'IMPORTO'
    end
    object IBQuery9IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object IBQuery9OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBQuery9DEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBQuery9SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object IBQuery9PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object IBQuery9TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object IBQuery9IVATO: TFloatField
      FieldName = 'IVATO'
    end
    object IBQuery9IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
    end
    object IBQuery9CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBQuery9DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object IBQuery9RIF_A: TSmallintField
      FieldName = 'RIF_A'
    end
    object IBQuery9RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object IBQuery9RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object IBQuery9RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IBQuery9RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IBQuery9RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object IBQuery9RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IBQuery9RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object IBQuery9RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IBQuery9RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object IBQuery9RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IBQuery9PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBQuery9RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IBQuery9RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IBQuery9RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object IBQuery9OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object IBQuery9OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object IBQuery9OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object IBQuery9OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IBQuery9DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBQuery9TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object IBQuery9TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
    end
    object IBQuery9PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object IBQuery9SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBQuery9PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBQuery9COL: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object IBQuery9ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IBQuery9TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBQuery9CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IBQuery9TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object IBQuery9DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IBQuery9CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery9TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery9DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IBQuery9CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object IBQuery9CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBQuery9CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBQuery9CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery9CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBQuery9ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object IBQuery9SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object IBQuery9DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object IBQuery9DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery9DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object IBQuery9DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IBQuery9STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IBQuery9STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBQuery9MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object IBQuery9CAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBQuery9KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBQuery9LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBQuery9NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery9VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery9CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBQuery9CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBQuery9PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBQuery9BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBQuery9BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBQuery9VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBQuery9VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBQuery9VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBQuery9PORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBQuery9ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBQuery9SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object IBQuery9PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object IBQuery9PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object IBQuery9CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBQuery9DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBQuery9IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object IBQuery9SCONTO11: TFloatField
      FieldName = 'SCONTO11'
    end
    object IBQuery9AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery9DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IBQuery9NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery9NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object IBQuery9SCONTO21: TFloatField
      FieldName = 'SCONTO21'
    end
    object IBQuery9IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
    end
    object IBQuery9NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object IBQuery9SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object IBQuery9IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBQuery9COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBQuery9COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object IBQuery9ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBQuery9ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object IBQuery9SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object IBQuery9SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBQuery9REPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object IBQuery9RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBQuery9ORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object IBQuery9FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object IBQuery9TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object IBQuery9ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object IBQuery9IVATO1: TSmallintField
      FieldName = 'IVATO1'
    end
    object IBQuery9STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object IBQuery9DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object IBQuery9MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object IBQuery9TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
    end
    object IBQuery9TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery9TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
    end
    object IBQuery9CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IBQuery9NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBQuery9SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IBQuery9MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object IBQuery9ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object IBQuery9SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object IBQuery9SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object IBQuery9SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object IBQuery9SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object IBQuery9SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object IBQuery9SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object IBQuery9CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object IBQuery9PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object IBQuery9IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
    end
    object IBQuery9TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
    end
    object IBQuery9TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
    end
    object IBQuery9TOTALE: TFloatField
      FieldName = 'TOTALE'
    end
    object IBQuery9TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
    end
    object IBQuery9TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
    end
    object IBQuery9TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
    end
    object IBQuery9TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
    end
    object IBQuery9TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
    end
    object IBQuery9CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object IBQuery9ALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object IBQuery9IMPON1: TFloatField
      FieldName = 'IMPON1'
    end
    object IBQuery9IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
    end
    object IBQuery9CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object IBQuery9ALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object IBQuery9IMPON2: TFloatField
      FieldName = 'IMPON2'
    end
    object IBQuery9IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
    end
    object IBQuery9CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object IBQuery9ALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object IBQuery9IMPON3: TFloatField
      FieldName = 'IMPON3'
    end
    object IBQuery9IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
    end
    object IBQuery9CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object IBQuery9ALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object IBQuery9IMPON4: TFloatField
      FieldName = 'IMPON4'
    end
    object IBQuery9IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
    end
    object IBQuery9CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object IBQuery9ALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object IBQuery9IMPON5: TFloatField
      FieldName = 'IMPON5'
    end
    object IBQuery9IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
    end
    object IBQuery9TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBQuery9ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBQuery9SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBQuery9CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object IBQuery9ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery9RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
    end
    object IBQuery9RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
    end
    object IBQuery9RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
    end
    object IBQuery9RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
    end
    object IBQuery9RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
    end
    object IBQuery9RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
    end
    object IBQuery9TEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBQuery9TEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBQuery9TEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object IBQuery9IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IBQuery9IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBQuery9VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBQuery9VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBQuery9CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object IBQuery9RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
    end
    object IBQuery9RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
    end
    object IBQuery9RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
    end
    object IBQuery9RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
    end
    object IBQuery9RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
    end
    object IBQuery9RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IBQuery9PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object IBQuery9ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 58
    Top = 58
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 178
    Top = 208
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 458
    Top = 308
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 168
    Top = 88
  end
  object dsFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 430
    Top = 70
  end
  object IBQuery10: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct TIPO_CLIFOR,CLIFOR_ID,CLIENTE,listino,sum(dare) ' +
        'as F_1,sum(avere) as F_2,sum(rimessa) as F_3,sum(abbuono) as F_4'
      'from contabilitar2'
      'group by TIPO_CLIFOR,CLIFOR_ID,CLIENTE,listino'
      'order by cliente')
    Left = 264
    Top = 320
    object IBQuery10CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object IBQuery10CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery10F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      currency = True
    end
    object IBQuery10F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
      currency = True
    end
    object IBQuery10F_3: TFloatField
      FieldName = 'F_3'
      ProviderFlags = []
      currency = True
    end
    object IBQuery10F_4: TFloatField
      FieldName = 'F_4'
      ProviderFlags = []
      currency = True
    end
    object IBQuery10TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      ProviderFlags = []
    end
    object IBQuery10LISTINO: TIntegerField
      FieldName = 'LISTINO'
      ProviderFlags = []
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 544
    Top = 304
  end
  object OpenDialog1: TOpenDialog
    Left = 680
    Top = 273
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from contabilitar'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into contabilitar'
      
        '  (ABBUONO, AVERE, CLIFOR_ID, DARE, DATA_DOC, DATA_MOV, DEPOSITO' +
        '_CODICE, '
      
        '   DEPOSITO_DESCR, DESCR_MOV, NOTE, NUM_ASS, NUM_DOC, NUM_PROT, ' +
        'PK_CODICE, '
      '   TIPO_CLIFOR)'
      'values'
      
        '  (:ABBUONO, :AVERE, :CLIFOR_ID, :DARE, :DATA_DOC, :DATA_MOV, :D' +
        'EPOSITO_CODICE, '
      
        '   :DEPOSITO_DESCR, :DESCR_MOV, :NOTE, :NUM_ASS, :NUM_DOC, :NUM_' +
        'PROT, :PK_CODICE, '
      '   :TIPO_CLIFOR)')
    RefreshSQL.Strings = (
      'Select *'
      'from contabilitar '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from contabilitar')
    ModifySQL.Strings = (
      'update contabilitar'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  AVERE = :AVERE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_MOV = :DATA_MOV,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_PROT = :NUM_PROT,'
      '  PK_CODICE = :PK_CODICE,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_CONTABILITA'
    Left = 216
    Top = 472
    object IBDataSet1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTABILITAR"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet1NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
      Origin = '"CONTABILITAR"."NUM_PROT"'
    end
    object IBDataSet1DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CONTABILITAR"."DATA_MOV"'
    end
    object IBDataSet1DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"CONTABILITAR"."DATA_DOC"'
    end
    object IBDataSet1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"CONTABILITAR"."NUM_DOC"'
    end
    object IBDataSet1DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"CONTABILITAR"."DESCR_MOV"'
      Size = 100
    end
    object IBDataSet1DARE: TFloatField
      FieldName = 'DARE'
      Origin = '"CONTABILITAR"."DARE"'
    end
    object IBDataSet1AVERE: TFloatField
      FieldName = 'AVERE'
      Origin = '"CONTABILITAR"."AVERE"'
    end
    object IBDataSet1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTABILITAR"."CLIFOR_ID"'
    end
    object IBDataSet1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"CONTABILITAR"."TIPO_CLIFOR"'
    end
    object IBDataSet1NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"CONTABILITAR"."NOTE"'
      Size = 255
    end
    object IBDataSet1NUM_ASS: TIntegerField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITAR"."NUM_ASS"'
    end
    object IBDataSet1DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"CONTABILITAR"."DEPOSITO_CODICE"'
      Size = 3
    end
    object IBDataSet1DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"CONTABILITAR"."DEPOSITO_DESCR"'
      Size = 50
    end
    object IBDataSet1ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITAR"."ABBUONO"'
    end
  end
  object IBQuery11: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2'
      'order by descr')
    Left = 304
    Top = 417
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery2CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery2PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery2IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery2TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery2TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery2TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery2TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery2TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery2CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery2CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery2TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource7: TDataSource
    DataSet = IBQuery11
    Left = 336
    Top = 425
  end
  object frRichExportObject1: TfrRichExportObject
    Left = 144
    Top = 432
  end
  object frTextExportObject1: TfrTextExportObject
    Left = 56
    Top = 432
  end
  object frRichObject1: TfrRichObject
    Left = 184
    Top = 432
  end
  object frCompositeReport1: TfrCompositeReport
    Left = 216
    Top = 432
    PixelsPerInch = 96
  end
  object frDesigner1: TfrDesigner
    Left = 264
    Top = 440
  end
end
