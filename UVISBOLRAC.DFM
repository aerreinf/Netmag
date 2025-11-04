object fVisDocrac: TfVisDocrac
  Left = 25
  Top = 63
  Width = 750
  Height = 525
  Caption = 'Stampa Documenti'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gbCausale: TGroupBox
    Left = 10
    Top = 8
    Width = 205
    Height = 81
    Caption = '&Causale'
    TabOrder = 0
    OnExit = gbCausaleExit
    object rabCauTutti: TRadioButton
      Left = 8
      Top = 18
      Width = 45
      Height = 17
      Caption = 'Tutte'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rabCauSc: TRadioButton
      Left = 8
      Top = 36
      Width = 63
      Height = 17
      Caption = 'a Scelta'
      TabOrder = 1
    end
    object LookCauCod: TDBLookupComboBox
      Left = 78
      Top = 32
      Width = 71
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'CODICE_CAUSALE'
      ListField = 'CODICE_CAUSALE'
      ListSource = dsoCauMag
      ParentCtl3D = False
      TabOrder = 2
    end
    object LookCauDescr: TDBLookupComboBox
      Left = 8
      Top = 54
      Width = 187
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'CODICE_CAUSALE'
      ListField = 'DESCR_CAUSALE'
      ListSource = dsoCauMag
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object gbData: TGroupBox
    Left = 220
    Top = 8
    Width = 125
    Height = 81
    Caption = '&Data'
    TabOrder = 1
    object laDataDa: TLabel
      Left = 12
      Top = 26
      Width = 14
      Height = 13
      Caption = 'Da'
    end
    object laDataA: TLabel
      Left = 14
      Top = 52
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object meDataDa: TMaskEdit
      Left = 34
      Top = 22
      Width = 69
      Height = 19
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object meDataA: TMaskEdit
      Left = 34
      Top = 48
      Width = 69
      Height = 19
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object gbDeposito: TGroupBox
    Left = 350
    Top = 8
    Width = 199
    Height = 81
    Caption = 'De&posito'
    TabOrder = 2
    object rabDepTutti: TRadioButton
      Left = 8
      Top = 18
      Width = 47
      Height = 15
      Caption = 'Tutti'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rabDepScegli: TRadioButton
      Left = 8
      Top = 36
      Width = 63
      Height = 15
      Caption = 'a Scelta'
      TabOrder = 1
    end
    object LookDepCod: TDBLookupComboBox
      Left = 76
      Top = 32
      Width = 71
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoDep
      ParentCtl3D = False
      TabOrder = 2
    end
    object LookDepDescr: TDBLookupComboBox
      Left = 8
      Top = 54
      Width = 183
      Height = 19
      Ctl3D = False
      DropDownRows = 10
      Enabled = False
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoDep
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object gbTipoCliFor: TGroupBox
    Left = 10
    Top = 92
    Width = 539
    Height = 59
    Caption = '&Tipo'
    TabOrder = 3
    object rabTipoCliFornTutti: TRadioButton
      Left = 10
      Top = 16
      Width = 49
      Height = 15
      Caption = 'Tutti'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rabTipoFornTutti: TRadioButton
      Left = 62
      Top = 34
      Width = 71
      Height = 15
      Caption = 'Tutti Forn.'
      TabOrder = 1
    end
    object rabTipoFornSc: TRadioButton
      Left = 140
      Top = 34
      Width = 75
      Height = 15
      Caption = 'Scegli Forn.'
      TabOrder = 6
    end
    object rabTipoCliTutti: TRadioButton
      Left = 62
      Top = 16
      Width = 63
      Height = 15
      Caption = 'Tutti Cli.'
      TabOrder = 2
    end
    object rabTipoCliSc: TRadioButton
      Left = 140
      Top = 15
      Width = 69
      Height = 17
      Caption = 'Scegli Cli.'
      TabOrder = 3
    end
    object LookCliCod: TDBLookupComboBox
      Left = 220
      Top = 10
      Width = 81
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'ID_CLI_FOR'
      ListField = 'ID_CLI_FOR'
      ListSource = dsoCli
      ParentCtl3D = False
      TabOrder = 4
    end
    object LookCliDescr: TDBLookupComboBox
      Left = 306
      Top = 10
      Width = 225
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'ID_CLI_FOR'
      ListField = 'DENOMINAZIONE'
      ListSource = dsoCli
      ParentCtl3D = False
      TabOrder = 5
    end
    object LookFornDescr: TDBLookupComboBox
      Left = 306
      Top = 32
      Width = 225
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'ID_CLI_FOR'
      ListField = 'DENOMINAZIONE'
      ListSource = dsoForn
      ParentCtl3D = False
      TabOrder = 8
    end
    object LookFornCod: TDBLookupComboBox
      Left = 220
      Top = 32
      Width = 81
      Height = 19
      Ctl3D = False
      Enabled = False
      KeyField = 'ID_CLI_FOR'
      ListField = 'ID_CLI_FOR'
      ListSource = dsoForn
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object gbArticoli: TGroupBox
    Left = 10
    Top = 154
    Width = 727
    Height = 103
    Caption = '&Articoli'
    TabOrder = 4
    object Label1: TLabel
      Left = 406
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label2: TLabel
      Left = 576
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Gruppo'
    end
    object Label3: TLabel
      Left = 406
      Top = 63
      Width = 38
      Height = 13
      Caption = 'Famiglia'
    end
    object Label4: TLabel
      Left = 576
      Top = 63
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object rabArtTutti: TRadioButton
      Left = 8
      Top = 10
      Width = 47
      Height = 17
      Caption = 'Tutti'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rabArtDaA: TRadioButton
      Left = 80
      Top = 10
      Width = 143
      Height = 17
      Caption = 'scelta articolo (fino 2)'
      TabOrder = 1
    end
    object rabArtCat: TRadioButton
      Left = 392
      Top = 10
      Width = 91
      Height = 17
      Hint = 'Marca, Gruppo,'#13#10'Famiglia, Tipo'
      Caption = 'per Categorie'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object rxdblcDaArt: TRxDBLookupCombo
      Left = 198
      Top = 38
      Width = 171
      Height = 21
      DropDownCount = 8
      Enabled = False
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = dsArticoli
      TabOrder = 3
    end
    object rxdblcAdArt: TRxDBLookupCombo
      Left = 198
      Top = 76
      Width = 171
      Height = 21
      DropDownCount = 8
      Enabled = False
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = dsArticoli
      TabOrder = 4
    end
    object rxdblcAdArtCodice: TRxDBLookupCombo
      Left = 96
      Top = 76
      Width = 99
      Height = 21
      DropDownCount = 8
      Enabled = False
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = dsArticoli
      TabOrder = 5
    end
    object rxdblcDaArtCodice: TRxDBLookupCombo
      Left = 96
      Top = 38
      Width = 99
      Height = 21
      DropDownCount = 8
      Enabled = False
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = dsArticoli
      TabOrder = 6
    end
    object rxdblcGruppo: TRxDBLookupCombo
      Left = 576
      Top = 38
      Width = 143
      Height = 21
      Hint = 'Gruppo'
      DropDownCount = 8
      Color = 15138790
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object rxdblcMarca: TRxDBLookupCombo
      Left = 406
      Top = 38
      Width = 143
      Height = 21
      Hint = 'Marca'
      DropDownCount = 8
      Color = 14811135
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object rxdblcTipo: TRxDBLookupCombo
      Left = 576
      Top = 76
      Width = 143
      Height = 21
      Hint = 'Tipo'
      DropDownCount = 8
      Color = 16050943
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object rxdblcFamiglia: TRxDBLookupCombo
      Left = 406
      Top = 76
      Width = 143
      Height = 21
      Hint = 'Famiglia'
      DropDownCount = 8
      Color = 16777177
      Enabled = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object cbMarca: TCheckBox
      Left = 388
      Top = 40
      Width = 15
      Height = 17
      Hint = 'Marca'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object cbFamiglia: TCheckBox
      Left = 388
      Top = 78
      Width = 15
      Height = 17
      Hint = 'Famiglia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object cbTipo: TCheckBox
      Left = 558
      Top = 78
      Width = 15
      Height = 17
      Hint = 'Tipo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object cbGruppo: TCheckBox
      Left = 558
      Top = 40
      Width = 15
      Height = 17
      Hint = 'Gruppo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
  end
  object gbTipoStampa: TGroupBox
    Left = 562
    Top = 10
    Width = 155
    Height = 49
    Caption = 'tipo Stampa'
    TabOrder = 5
    object rabTSAn: TRadioButton
      Left = 8
      Top = 20
      Width = 65
      Height = 17
      Caption = 'analitica'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rabTSSin: TRadioButton
      Left = 84
      Top = 20
      Width = 63
      Height = 17
      Caption = 'sintetica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object bbEsci: TBitBtn
    Left = 660
    Top = 126
    Width = 75
    Height = 25
    Caption = '&Esci'
    TabOrder = 6
  end
  object bbStampa: TBitBtn
    Left = 554
    Top = 126
    Width = 75
    Height = 25
    Caption = '&Stampa'
    TabOrder = 7
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = False
    SQL.Strings = (
      'select * from tab_depositi'
      'order by descr')
    Left = 422
    Top = 8
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery2DETAGLIO: TSmallintField
      FieldName = 'DETAGLIO'
    end
    object IBQuery2MERCE_NS: TSmallintField
      FieldName = 'MERCE_NS'
    end
    object IBQuery2RAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      Size = 4
    end
    object IBQuery2INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IBQuery2CITTA: TIBStringField
      FieldName = 'CITTA'
      Size = 30
    end
    object IBQuery2CAP: TIBStringField
      FieldName = 'CAP'
      Size = 5
    end
    object IBQuery2PROV: TIBStringField
      FieldName = 'PROV'
      Size = 2
    end
  end
  object dsoDep: TDataSource
    DataSet = IBQuery2
    Left = 506
    Top = 22
  end
  object dsoCLIFORN: TDataSource
    DataSet = dmodAz.r_qCliForn
    Left = 406
    Top = 106
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 326
    Top = 94
  end
  object dsoForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 326
    Top = 122
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 172
    Top = 24
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 274
    Top = 190
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 616
    Top = 192
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 610
    Top = 212
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 506
    Top = 216
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 506
    Top = 186
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = False
    SQL.Strings = (
      'select distinct TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino,'
      'sum(TAB_DET_DOC.IMPORTO_SCONTO) as somma1,'
      'sum(TAB_DET_DOC.IMPORTO_CON_IVA) as somma2'
      'FROM TAB_DET_DOC JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      
        'WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DAT' +
        'A_DOC <=:parDataA'
      'group by TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino')
    Left = 408
    Top = 208
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'parDataDa'
        ParamType = ptUnknown
        Value = 29221d
      end
      item
        DataType = ftDateTime
        Name = 'parDataA'
        ParamType = ptUnknown
        Value = 37255d
      end>
    object IBQuery1Nome_Deposito: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Deposito'
      LookupDataSet = IBQuery2
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'DEP'
      Size = 100
      Lookup = True
    end
    object IBQuery1DEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBQuery1CAUSALE_MAGAZZINO: TIBStringField
      DisplayWidth = 10
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 10
    end
    object IBQuery1SOMMA1: TFloatField
      FieldName = 'SOMMA1'
      DisplayFormat = '#,##'
    end
    object IBQuery1SOMMA2: TFloatField
      FieldName = 'SOMMA2'
      DisplayFormat = '#,##'
    end
  end
end
