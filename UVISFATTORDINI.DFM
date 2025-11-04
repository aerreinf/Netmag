object fVisFattOrdini: TfVisFattOrdini
  Left = 10
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Carico Fatture Fornitori'
  ClientHeight = 550
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Top = 35
    Width = 161
    Height = 33
    Caption = 'Scegli Agente'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Agente')
    TabOrder = 2
  end
  object RadioGroup6: TRadioGroup
    Left = 3
    Top = 126
    Width = 182
    Height = 59
    Caption = 'Ordina per :'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Data'
      'Numero'
      'Cliente'
      'Agente')
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 676
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Filtra'
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 641
    Top = 40
    Width = 32
    Height = 25
    Caption = 'S. 1'
    TabOrder = 5
  end
  object BitBtn3: TBitBtn
    Left = 676
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Esci'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 676
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Stampa Tot.'
    TabOrder = 7
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 312
    Top = 47
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = dsDipendente
    TabOrder = 8
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 368
    Top = 47
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsDipendente
    TabOrder = 9
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
    Left = 80
    Top = 64
    Width = 73
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
    Top = 400
    Width = 752
    Height = 127
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
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
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
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DENOMINAZIONE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'Agente'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE'
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -12
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_DOC'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_MAGAZZINO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ID_DOCUMENTO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LISTINO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENTE_ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_IVATO'
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 146
    Top = 3
    Width = 161
    Height = 33
    Caption = 'Scegli Cliente'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cliente')
    TabOrder = 13
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 312
    Top = 15
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'ID_CLI_FOR'
    LookupSource = dsoCli
    TabOrder = 14
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 368
    Top = 15
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'DENOMINAZIONE'
    LookupSource = dsoCli
    TabOrder = 15
  end
  object BitBtn5: TBitBtn
    Left = 681
    Top = 40
    Width = 32
    Height = 25
    Caption = 'S. 2'
    TabOrder = 16
  end
  object BitBtn6: TBitBtn
    Left = 721
    Top = 40
    Width = 32
    Height = 25
    Caption = 'S. 3'
    TabOrder = 17
  end
  object Panel1: TPanel
    Left = 192
    Top = 72
    Width = 473
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 18
    object Label3: TLabel
      Left = 259
      Top = 56
      Width = 34
      Height = 13
      Caption = 'Entrate'
    end
    object Label4: TLabel
      Left = 363
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Uscite'
    end
    object DBDateEdit1: TDBDateEdit
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      DataField = 'DATA_MOV'
      DataSource = DataSource5
      NumGlyphs = 2
      TabOrder = 0
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 259
      Top = 69
      Width = 103
      Height = 21
      DataField = 'DARE'
      DataSource = DataSource5
      NumGlyphs = 2
      TabOrder = 1
    end
    object RxDBCalcEdit2: TRxDBCalcEdit
      Left = 363
      Top = 69
      Width = 103
      Height = 21
      DataField = 'AVERE'
      DataSource = DataSource5
      NumGlyphs = 2
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 32
      Width = 353
      Height = 21
      DataField = 'DESCR_MOV'
      DataSource = DataSource5
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 7
      Top = 57
      Width = 242
      Height = 60
      DataField = 'NOTE'
      DataSource = DataSource5
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 256
      Top = 93
      Width = 200
      Height = 25
      DataSource = DataSource5
      TabOrder = 5
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 120
      Top = 7
      Width = 54
      Height = 21
      DropDownCount = 8
      DataField = 'CLIFOR_ID'
      DataSource = DataSource5
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dsoCli
      TabOrder = 6
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 176
      Top = 7
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsoCli
      TabOrder = 7
    end
    object RadioGroup4: TRadioGroup
      Left = 3
      Top = 2
      Width = 110
      Height = 29
      Caption = 'Tipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Cli.'
        'For.')
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 200
    Width = 753
    Height = 193
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
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID CLi.'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 161
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCR_MOV'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DARE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVERE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOTE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PK_CODICE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PROT'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CLIFOR'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ASS'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO_CODICE'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO_DESCR'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end>
  end
  object Edit3: TEdit
    Left = 598
    Top = 527
    Width = 116
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object Edit1: TRxCalcEdit
    Left = 448
    Top = 529
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
  end
  object Edit2: TRxCalcEdit
    Left = 320
    Top = 529
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
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 640
  end
  object TDataSource
    Left = 248
    Top = 232
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 390
    Top = 6
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    CachedUpdates = False
    SQL.Strings = (
      'select  * from tab_articoli')
    Left = 344
    Top = 232
  end
  object DataSource3: TDataSource
    DataSet = dmodAz.RxMemoryData1
    Left = 499
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
    CachedUpdates = False
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      '')
    Left = 560
    Top = 232
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
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT'
      'TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo,'
      'SUM(TAB_DET_DOC.quantita) as QTA'
      'FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      'GROUP BY TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo')
    Left = 530
    Top = 232
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
    BufferChunks = 500
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT causale_doc,causale_magazzino,clifor_id,id_documento,list' +
        'ino,num_doc,'
      'TOTALE_IVATO,DATA_DOC,agente_id,tab_cli_for.denominazione,'
      'tab_agenti.descr from TAB_DOCUMENTI'
      'inner JOIN TAB_cli_for ON'
      'TAB_cli_for.id_cli_for=TAB_Documenti.clifor_id'
      'inner JOIN TAB_agenti ON'
      'TAB_agenti.codice=TAB_Documenti.agente_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
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
  end
  object DataSource4: TDataSource
    DataSet = IBQuery1
    Left = 616
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 232
    object Stampe1: TMenuItem
      Caption = 'Stampe'
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    CachedUpdates = False
    Left = 216
    Top = 232
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 312
    Top = 232
    object RxMemoryData1CodiceArticolo: TStringField
      FieldName = 'CodiceArticolo'
    end
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    CachedUpdates = False
    Left = 280
    Top = 232
  end
  object DBSumList1: TDBSumList
    SumCollection = <
      item
        GroupOperation = goSum
        FieldName = 'TOTALE'
      end>
    DataSet = IBQuery1
    Left = 680
    Top = 128
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from contabilitar'
      'order by data_doc')
    UpdateObject = IBUpdateSQL1
    Left = 80
    Top = 96
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
    object IBQuery7CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = dmodAz.ibqTab_Cli
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
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
      '  PK_CODICE = :PK_CODICE,'
      '  NUM_PROT = :NUM_PROT,'
      '  DATA_MOV = :DATA_MOV,'
      '  DATA_DOC = :DATA_DOC,'
      '  NUM_DOC = :NUM_DOC,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  DARE = :DARE,'
      '  AVERE = :AVERE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into contabilitar'
      '  (PK_CODICE, NUM_PROT, DATA_MOV, DATA_DOC, NUM_DOC, DESCR_MOV, '
      'DARE, AVERE, '
      '   CLIFOR_ID, TIPO_CLIFOR, NOTE, NUM_ASS, DEPOSITO_CODICE, '
      'DEPOSITO_DESCR)'
      'values'
      '  (:PK_CODICE, :NUM_PROT, :DATA_MOV, :DATA_DOC, :NUM_DOC, '
      ':DESCR_MOV, :DARE, '
      
        '   :AVERE, :CLIFOR_ID, :TIPO_CLIFOR, :NOTE, :NUM_ASS, :DEPOSITO_' +
        'CODICE, '
      '   :DEPOSITO_DESCR)')
    DeleteSQL.Strings = (
      'delete from contabilitar'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 120
    Top = 96
  end
  object DataSource5: TDataSource
    AutoEdit = False
    DataSet = IBQuery7
    Left = 152
    Top = 96
  end
  object DBSumList2: TDBSumList
    SumCollection = <
      item
        GroupOperation = goSum
        FieldName = 'DARE'
      end>
    DataSet = IBQuery7
    Left = 712
    Top = 136
  end
end
