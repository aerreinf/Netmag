object fOrdPrezzi: TfOrdPrezzi
  Left = 199
  Top = 204
  Width = 544
  Height = 194
  Caption = 'Prezzi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 200
    Top = 3
    Width = 30
    Height = 13
    Caption = 'Listino'
  end
  object Label8: TLabel
    Left = 264
    Top = 3
    Width = 34
    Height = 13
    Caption = 'Agente'
  end
  object Label9: TLabel
    Left = 408
    Top = 3
    Width = 21
    Height = 13
    Caption = 'C.G.'
  end
  object Label10: TLabel
    Left = 480
    Top = 3
    Width = 20
    Height = 13
    Caption = 'C.A.'
  end
  object Label1: TLabel
    Left = 336
    Top = 3
    Width = 32
    Height = 13
    Caption = 'R.C.G.'
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 18
    Width = 82
    Height = 21
    DataField = 'PREZZO_BASE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 42
    Width = 82
    Height = 21
    DataField = 'IMP2'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 160
    Top = 66
    Width = 82
    Height = 21
    DataField = 'IMP3'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 90
    Width = 82
    Height = 21
    DataField = 'IMP4'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 114
    Width = 82
    Height = 21
    DataField = 'IMP5'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 160
    Top = 138
    Width = 82
    Height = 21
    DataField = 'IMP6'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 248
    Top = 18
    Width = 70
    Height = 21
    DataField = 'AG'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 248
    Top = 42
    Width = 70
    Height = 21
    DataField = 'AG2'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 248
    Top = 66
    Width = 70
    Height = 21
    DataField = 'AG3'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 248
    Top = 90
    Width = 70
    Height = 21
    DataField = 'AG4'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 248
    Top = 114
    Width = 70
    Height = 21
    DataField = 'AG5'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 248
    Top = 138
    Width = 70
    Height = 21
    DataField = 'AG6'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 392
    Top = 18
    Width = 70
    Height = 21
    DataField = 'CG'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 392
    Top = 42
    Width = 70
    Height = 21
    DataField = 'CG2'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 392
    Top = 66
    Width = 70
    Height = 21
    DataField = 'CG3'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 392
    Top = 90
    Width = 70
    Height = 21
    DataField = 'CG4'
    DataSource = DataSource1
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 392
    Top = 114
    Width = 70
    Height = 21
    DataField = 'CG5'
    DataSource = DataSource1
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 392
    Top = 138
    Width = 70
    Height = 21
    DataField = 'CG6'
    DataSource = DataSource1
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 464
    Top = 18
    Width = 70
    Height = 21
    DataField = 'CA'
    DataSource = DataSource1
    TabOrder = 18
  end
  object DBEdit20: TDBEdit
    Left = 464
    Top = 42
    Width = 70
    Height = 21
    DataField = 'CA2'
    DataSource = DataSource1
    TabOrder = 19
  end
  object DBEdit21: TDBEdit
    Left = 464
    Top = 66
    Width = 70
    Height = 21
    DataField = 'CA3'
    DataSource = DataSource1
    TabOrder = 20
  end
  object DBEdit22: TDBEdit
    Left = 464
    Top = 90
    Width = 70
    Height = 21
    DataField = 'CA4'
    DataSource = DataSource1
    TabOrder = 21
  end
  object DBEdit23: TDBEdit
    Left = 464
    Top = 114
    Width = 70
    Height = 21
    DataField = 'CA5'
    DataSource = DataSource1
    TabOrder = 22
  end
  object DBEdit24: TDBEdit
    Left = 464
    Top = 138
    Width = 70
    Height = 21
    DataField = 'CA6'
    DataSource = DataSource1
    TabOrder = 23
  end
  object DBEdit25: TDBEdit
    Left = 0
    Top = 0
    Width = 153
    Height = 20
    DataField = 'CODICE_ARTICOLO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object Button1: TButton
    Left = 107
    Top = 20
    Width = 49
    Height = 17
    Caption = 'Base'
    TabOrder = 25
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 107
    Top = 44
    Width = 49
    Height = 17
    Caption = '1'
    TabOrder = 26
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 107
    Top = 68
    Width = 49
    Height = 17
    Caption = '2'
    TabOrder = 27
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 107
    Top = 92
    Width = 49
    Height = 17
    Caption = '3'
    TabOrder = 28
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 107
    Top = 116
    Width = 49
    Height = 17
    Caption = '4'
    TabOrder = 29
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 107
    Top = 140
    Width = 49
    Height = 17
    Caption = '5'
    TabOrder = 30
    OnClick = Button6Click
  end
  object DBEdit26: TDBEdit
    Left = 320
    Top = 18
    Width = 70
    Height = 21
    DataField = 'CR'
    DataSource = DataSource1
    TabOrder = 31
  end
  object DBEdit27: TDBEdit
    Left = 320
    Top = 42
    Width = 70
    Height = 21
    DataField = 'CR2'
    DataSource = DataSource1
    TabOrder = 32
  end
  object DBEdit28: TDBEdit
    Left = 320
    Top = 66
    Width = 70
    Height = 21
    DataField = 'CR3'
    DataSource = DataSource1
    TabOrder = 33
  end
  object DBEdit29: TDBEdit
    Left = 320
    Top = 90
    Width = 70
    Height = 21
    DataField = 'CR4'
    DataSource = DataSource1
    TabOrder = 34
  end
  object DBEdit30: TDBEdit
    Left = 320
    Top = 114
    Width = 70
    Height = 21
    DataField = 'CR5'
    DataSource = DataSource1
    TabOrder = 35
  end
  object DBEdit31: TDBEdit
    Left = 320
    Top = 138
    Width = 70
    Height = 21
    DataField = 'CR6'
    DataSource = DataSource1
    TabOrder = 36
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_articolo=:a')
    Left = 16
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery1DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Size = 1000
    end
    object IBQuery1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBQuery1UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Size = 3
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery1SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery1PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
    end
    object IBQuery1PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
    end
    object IBQuery1SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
    end
    object IBQuery1SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
    end
    object IBQuery1LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
    end
    object IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
    end
    object IBQuery1QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
    end
    object IBQuery1ANNO: TIntegerField
      FieldName = 'ANNO'
    end
    object IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Size = 4
    end
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      currency = True
    end
    object IBQuery1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      currency = True
    end
    object IBQuery1TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
    end
    object IBQuery1FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
    end
    object IBQuery1FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
    end
    object IBQuery1COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
    end
    object IBQuery1RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
    end
    object IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
    end
    object IBQuery1ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Size = 4
    end
    object IBQuery1RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
    end
    object IBQuery1RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
    end
    object IBQuery1RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
    end
    object IBQuery1RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
    end
    object IBQuery1STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Size = 4
    end
    object IBQuery1GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Size = 4
    end
    object IBQuery1PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Size = 10
    end
    object IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Size = 4
    end
    object IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
    end
    object IBQuery1CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
    end
    object IBQuery1DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
    end
    object IBQuery1VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Size = 3
    end
    object IBQuery1VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Size = 3
    end
    object IBQuery1VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Size = 3
    end
    object IBQuery1NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
    end
    object IBQuery1TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
    end
    object IBQuery1TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
    end
    object IBQuery1OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBQuery1TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object IBQuery1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery1CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Size = 50
    end
    object IBQuery1DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object IBQuery1NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
    end
    object IBQuery1NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
    end
    object IBQuery1NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
    end
    object IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
    end
    object IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
    end
    object IBQuery1PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
    end
    object IBQuery1COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
    end
    object IBQuery1DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
    end
    object IBQuery1NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
    end
    object IBQuery1TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
    end
    object IBQuery1CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
    end
    object IBQuery1CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
    end
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IBQuery1UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
    end
    object IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IBQuery1CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IBQuery1CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object IBQuery1FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Size = 255
    end
    object IBQuery1CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBQuery1FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Size = 1
    end
    object IBQuery1DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
    end
    object IBQuery1SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBQuery1PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      currency = True
    end
    object IBQuery1P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      currency = True
    end
    object IBQuery1P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      currency = True
    end
    object IBQuery1P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      currency = True
    end
    object IBQuery1P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      currency = True
    end
    object IBQuery1SC21: TFloatField
      FieldName = 'SC21'
    end
    object IBQuery1SC22: TFloatField
      FieldName = 'SC22'
    end
    object IBQuery1SC23: TFloatField
      FieldName = 'SC23'
    end
    object IBQuery1SC31: TFloatField
      FieldName = 'SC31'
    end
    object IBQuery1SC32: TFloatField
      FieldName = 'SC32'
    end
    object IBQuery1SC33: TFloatField
      FieldName = 'SC33'
    end
    object IBQuery1SC41: TFloatField
      FieldName = 'SC41'
    end
    object IBQuery1SC42: TFloatField
      FieldName = 'SC42'
    end
    object IBQuery1SC43: TFloatField
      FieldName = 'SC43'
    end
    object IBQuery1SC51: TFloatField
      FieldName = 'SC51'
    end
    object IBQuery1SC52: TFloatField
      FieldName = 'SC52'
    end
    object IBQuery1SC53: TFloatField
      FieldName = 'SC53'
    end
    object IBQuery1R2: TFloatField
      FieldName = 'R2'
    end
    object IBQuery1R3: TFloatField
      FieldName = 'R3'
    end
    object IBQuery1R4: TFloatField
      FieldName = 'R4'
    end
    object IBQuery1R5: TFloatField
      FieldName = 'R5'
    end
    object IBQuery1IMP2: TFloatField
      FieldName = 'IMP2'
      currency = True
    end
    object IBQuery1IMP3: TFloatField
      FieldName = 'IMP3'
      currency = True
    end
    object IBQuery1IMP4: TFloatField
      FieldName = 'IMP4'
      currency = True
    end
    object IBQuery1IMP5: TFloatField
      FieldName = 'IMP5'
      currency = True
    end
    object IBQuery1RICARPREC: TFloatField
      FieldName = 'RICARPREC'
    end
    object IBQuery1P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      currency = True
    end
    object IBQuery1IMP6: TFloatField
      FieldName = 'IMP6'
      currency = True
    end
    object IBQuery1STRUTT: TFloatField
      FieldName = 'STRUTT'
      currency = True
    end
    object IBQuery1CA: TFloatField
      FieldName = 'CA'
      currency = True
    end
    object IBQuery1CG: TFloatField
      FieldName = 'CG'
      currency = True
    end
    object IBQuery1AG: TFloatField
      FieldName = 'AG'
      currency = True
    end
    object IBQuery1CA2: TFloatField
      FieldName = 'CA2'
      currency = True
    end
    object IBQuery1CG2: TFloatField
      FieldName = 'CG2'
      currency = True
    end
    object IBQuery1AG2: TFloatField
      FieldName = 'AG2'
      currency = True
    end
    object IBQuery1CA3: TFloatField
      FieldName = 'CA3'
      currency = True
    end
    object IBQuery1CG3: TFloatField
      FieldName = 'CG3'
      currency = True
    end
    object IBQuery1AG3: TFloatField
      FieldName = 'AG3'
      currency = True
    end
    object IBQuery1CA4: TFloatField
      FieldName = 'CA4'
      currency = True
    end
    object IBQuery1CG4: TFloatField
      FieldName = 'CG4'
      currency = True
    end
    object IBQuery1AG4: TFloatField
      FieldName = 'AG4'
      currency = True
    end
    object IBQuery1CA5: TFloatField
      FieldName = 'CA5'
      currency = True
    end
    object IBQuery1CG5: TFloatField
      FieldName = 'CG5'
      currency = True
    end
    object IBQuery1AG5: TFloatField
      FieldName = 'AG5'
      currency = True
    end
    object IBQuery1CA6: TFloatField
      FieldName = 'CA6'
      currency = True
    end
    object IBQuery1CG6: TFloatField
      FieldName = 'CG6'
      currency = True
    end
    object IBQuery1AG6: TFloatField
      FieldName = 'AG6'
      currency = True
    end
    object IBQuery1ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
    end
    object IBQuery1CR: TFloatField
      FieldName = 'CR'
      currency = True
    end
    object IBQuery1CR2: TFloatField
      FieldName = 'CR2'
      currency = True
    end
    object IBQuery1CR3: TFloatField
      FieldName = 'CR3'
      currency = True
    end
    object IBQuery1CR4: TFloatField
      FieldName = 'CR4'
      currency = True
    end
    object IBQuery1CR5: TFloatField
      FieldName = 'CR5'
      currency = True
    end
    object IBQuery1CR6: TFloatField
      FieldName = 'CR6'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 96
  end
end
