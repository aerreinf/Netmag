inherited fCauCont: TfCauCont
  Left = 296
  Top = 213
  Caption = 'fCauCont'
  ClientHeight = 385
  ClientWidth = 493
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 493
    Height = 358
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 97
      Height = 16
      Caption = 'Codice causale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 127
      Height = 16
      Caption = 'Descrizione causale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 67
      Height = 16
      Caption = 'Codice Iva'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 156
      Width = 83
      Height = 16
      Caption = 'Contropartita'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CAUSALE'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 481
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = DataSource1
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 8
      Top = 120
      Width = 89
      Height = 21
      DropDownCount = 8
      DataField = 'IVA_COD'
      DataSource = DataSource1
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 2
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 104
      Top = 120
      Width = 385
      Height = 21
      DropDownCount = 8
      DataField = 'IVA_COD'
      DataSource = DataSource1
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 3
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 8
      Top = 176
      Width = 217
      Height = 21
      DropDownCount = 8
      DataField = 'ID_CONTRO_PART'
      DataSource = DataSource1
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'NOME_CONTO'
      LookupSource = dsPianoDeiConti
      TabOrder = 4
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 8
      Top = 208
      Width = 479
      Height = 21
      DropDownCount = 8
      DataField = 'ID_CONTRO_PART'
      DataSource = DataSource1
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource2
      TabOrder = 5
    end
  end
  inherited tbarControl: TToolBar
    Width = 493
  end
  object DataSource1: TDataSource
    DataSet = dmodAz.ibqCaucont
    Left = 432
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 304
    Top = 194
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_PIANO_CONTI'
      'Order By descr')
    Left = 344
    Top = 194
    object IBQuery1ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Required = True
    end
    object IBQuery1GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Size = 2
    end
    object IBQuery1CONTO: TIBStringField
      FieldName = 'CONTO'
      Size = 3
    end
    object IBQuery1SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Size = 5
    end
    object IBQuery1NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      ReadOnly = True
      Size = 12
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1NATURA: TSmallintField
      FieldName = 'NATURA'
    end
    object IBQuery1LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
    end
    object IBQuery1RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
    end
    object IBQuery1STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
    end
    object IBQuery1INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
    end
    object IBQuery1STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
    end
    object IBQuery1VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
    end
    object IBQuery1DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Size = 4
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
    end
    object IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
    end
    object IBQuery1SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
    end
  end
  object dsPianoDeiConti: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 334
    Top = 114
  end
end
