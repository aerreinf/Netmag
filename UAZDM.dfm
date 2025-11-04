object dmodAz: TdmodAz
  OldCreateOrder = False
  Left = 175
  Top = 103
  Height = 645
  Width = 1197
  object ibdbAzUni: TIBDatabase
    Connected = True
    DatabaseName = 'C:\geibdb\GAZDEMO.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=almera')
    LoginPrompt = False
    DefaultTransaction = ibtrDef
    BeforeDisconnect = ibdbAzUniBeforeDisconnect
    Left = 16
  end
  object ibtrDef: TIBTransaction
    Active = True
    DefaultDatabase = ibdbAzUni
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 8
    Top = 40
  end
  object ibTab_Raggruppamenti: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    FieldDefs = <
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY68'
        Fields = 'CODICE'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_RAGGRUPPAMENTI'
    Left = 536
    Top = 256
  end
  object dsoTab_CAB: TDataSource
    DataSet = ibTab_CAB
    Left = 112
    Top = 200
  end
  object dsoTab_ABI: TDataSource
    DataSet = ibTab_ABI
    Left = 80
    Top = 472
  end
  object dsoTab_Banche: TDataSource
    DataSet = ibTab_Banche
    Left = 96
    Top = 160
  end
  object dsoTab_Zone: TDataSource
    DataSet = ibTab_Zone
    Left = 248
    Top = 128
  end
  object dsoTab_Agenti: TDataSource
    AutoEdit = False
    DataSet = ibTab_Agenti
    Left = 752
    Top = 384
  end
  object dsoTab_Sotto_Zone: TDataSource
    DataSet = ibTab_SottoZone
    Left = 248
    Top = 184
  end
  object dsoTab_Codici_IVA: TDataSource
    DataSet = ibTab_Codici_IVA
    Left = 144
    Top = 424
  end
  object dsoTab_Vettori: TDataSource
    DataSet = ibTab_Vettori
    Left = 536
    Top = 448
  end
  object dsoTab_Marca: TDataSource
    DataSet = ibTab_Marca
    Left = 136
    Top = 152
  end
  object dsoTab_Famiglia: TDataSource
    DataSet = ibTab_Famiglia
    Left = 224
    Top = 472
  end
  object dsoTab_Gruppo: TDataSource
    DataSet = ibTab_Gruppo
    Left = 232
    Top = 424
  end
  object dsoTab_Tipo: TDataSource
    DataSet = ibTab_Tipo
    Left = 784
    Top = 96
  end
  object dsoTab_Cat_Cli: TDataSource
    DataSet = ibTab_Cat_Cli
    Left = 160
    Top = 328
  end
  object dsoTab_Pagamenti: TDataSource
    AutoEdit = False
    DataSet = ibTab_Pagamenti
    Left = 424
    Top = 120
  end
  object dsoTab_Piano_Conti: TDataSource
    DataSet = ibTab_Piano_Conti
    Left = 336
    Top = 512
  end
  object dsoTab_Porto: TDataSource
    DataSet = ibTab_Porto
    Left = 656
    Top = 344
  end
  object ibTab_Imballi: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_IMBALLI'
    Left = 648
    Top = 280
    object ibTab_ImballiCODICE: TIBStringField
      DisplayLabel = 'ID(Imballi)'
      FieldName = 'CODICE'
      Size = 4
    end
    object ibTab_ImballiDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object dsoTab_Imballi: TDataSource
    DataSet = ibTab_Imballi
    Left = 632
    Top = 288
  end
  object dsoTab_Aspetto_Est: TDataSource
    DataSet = ibTab_Aspetto_Esteriore
    Left = 680
    Top = 152
  end
  object ibTab_Produttori: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_PRODUTTORI'
    Left = 496
    Top = 136
    object ibTab_ProduttoriCODICE: TIBStringField
      DisplayLabel = 'ID(Produttore)'
      FieldName = 'CODICE'
      Size = 10
    end
    object ibTab_ProduttoriDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object dsoTab_Produttori: TDataSource
    DataSet = ibTab_Produttori
    Left = 448
    Top = 160
  end
  object dsoTab_Ubicazioni: TDataSource
    DataSet = ibTab_Ubicazioni
    Left = 720
    Top = 256
  end
  object dsoTab_Commessi: TDataSource
    DataSet = IBQryCommessi
    Left = 776
    Top = 136
  end
  object dsoTab_Reparti: TDataSource
    DataSet = ibTab_Reparti
    Left = 568
    Top = 168
  end
  object ibTab_Stagioni: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_STAGIONI'
    Left = 712
    Top = 416
  end
  object dsoTab_Stagioni: TDataSource
    DataSet = ibTab_Stagioni
    Left = 632
    Top = 400
  end
  object dsoTab_Unita_Di_Misura: TDataSource
    DataSet = ibTab_Unita_di_Misura
    Left = 608
    Top = 456
  end
  object dsoTab_RaggDep: TDataSource
    DataSet = ibTab_Ragg_Dep
    Left = 472
    Top = 496
  end
  object dlgFindAz: TOpenDialog
    DefaultExt = 'gdb'
    FileName = 'GAZDEMO.GDB'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Selezionare "Azienda" database...'
    Left = 224
    Top = 56
  end
  object dsoTab_Depositi: TDataSource
    DataSet = ibTab_Depositi
    Left = 528
    Top = 208
  end
  object dsoTab_Tipo_Provvigione: TDataSource
    DataSet = ibTab_Tipo_Provvigione
    Left = 529
    Top = 363
  end
  object ibTab_Tipo_Somma_Provv: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_TIPO_SOMMA_PROVV'
    Left = 392
    Top = 144
  end
  object dsoTab_Tipo_Somma_Provv: TDataSource
    DataSet = ibTab_Tipo_Somma_Provv
    Left = 512
    Top = 168
  end
  object ibTab_Cat_Merc: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    FieldDefs = <
      item
        Name = 'ID_CATEGORIA_MERCEOLOGICA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PIANO_CONTI_ID'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PIANO_CONTI'
        DataType = ftSmallint
      end
      item
        Name = 'PERC_PROVV'
        DataType = ftFloat
      end
      item
        Name = 'SCAT_MERC1'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCAT_MERC2'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODICE_CATEGORIA'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY32'
        Fields = 'ID_CATEGORIA_MERCEOLOGICA'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_CATEGORIA_MERCEOLOGICA'
    Left = 712
    Top = 488
  end
  object dsoTab_Cat_Merc: TDataSource
    DataSet = ibTab_Cat_Merc
    Left = 664
    Top = 440
  end
  object dsoTab_Altre_Sedi: TDataSource
    DataSet = ibqAltreSedi
    Left = 16
    Top = 112
  end
  object ibTab_Raggrup_Cli_For: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_RAGGRUP_CLI_FOR'
    Left = 576
    Top = 144
  end
  object dsoTab_Ragg_Cli_For: TDataSource
    DataSet = ibTab_Raggrup_Cli_For
    Left = 560
    Top = 160
  end
  object dsoTab_Casse: TDataSource
    DataSet = ibTab_Casse
    Left = 56
    Top = 512
  end
  object dsoTab_Cau_Trasp: TDataSource
    DataSet = ibTab_Cau_Trasp
    Left = 16
    Top = 432
  end
  object ibSP_New_ID_Piano_Conti: TIBStoredProc
    Tag = 2
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_NEW_ID_PIANO_CONTI'
    Left = 424
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEW_ID_PC'
        ParamType = ptOutput
      end>
  end
  object dsoTab_Articoli: TDataSource
    DataSet = ibTab_Articoli
    Left = 760
    Top = 464
  end
  object ibTab_CodIVA_Colleg: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_CODICI_IVA'
    Left = 520
    Top = 80
  end
  object dsoTab_CodIVA_Colleg: TDataSource
    DataSet = ibTab_CodIVA_Colleg
    Left = 488
    Top = 40
  end
  object dsoTabPersAz: TDataSource
    AutoEdit = False
    DataSet = ibTabPersAz
    Left = 568
    Top = 504
  end
  object dsoqTabCli: TDataSource
    DataSet = ibqTab_Cli
    Left = 248
    Top = 16
  end
  object dsoqTabFor: TDataSource
    DataSet = ibqTab_For
    Left = 496
  end
  object dsoTab_Cau_Mag: TDataSource
    DataSet = ibTab_Cau_Mag
    Left = 96
    Top = 344
  end
  object ibTab_Descr_agg: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    TableName = 'TAB_DESCR_AGG'
    Left = 744
    Top = 296
  end
  object dsoTab_Descr_Agg: TDataSource
    DataSet = ibTab_Descr_agg
    Left = 696
    Top = 216
  end
  object ibUpAgCatMecr: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AGENTE_CODICE,'
      '  PROVVIGIONE,'
      '  CATEGORIA_MERCEOLOGICA_ID'
      'from TAB_AGENTI_CAT_MERC '
      'where'
      '  AGENTE_CODICE = :AGENTE_CODICE and'
      '  PROVVIGIONE = :PROVVIGIONE and'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID')
    ModifySQL.Strings = (
      'update TAB_AGENTI_CAT_MERC'
      'set'
      '  AGENTE_CODICE = :AGENTE_CODICE,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID'
      'where'
      '  AGENTE_CODICE = :OLD_AGENTE_CODICE and'
      '  PROVVIGIONE = :OLD_PROVVIGIONE and'
      '  CATEGORIA_MERCEOLOGICA_ID = :OLD_CATEGORIA_MERCEOLOGICA_ID')
    InsertSQL.Strings = (
      'insert into TAB_AGENTI_CAT_MERC'
      '  (AGENTE_CODICE, PROVVIGIONE, CATEGORIA_MERCEOLOGICA_ID)'
      'values'
      '  (:AGENTE_CODICE, :PROVVIGIONE, :CATEGORIA_MERCEOLOGICA_ID)')
    DeleteSQL.Strings = (
      'delete from TAB_AGENTI_CAT_MERC'
      'where'
      '  AGENTE_CODICE = :OLD_AGENTE_CODICE and'
      '  PROVVIGIONE = :OLD_PROVVIGIONE and'
      '  CATEGORIA_MERCEOLOGICA_ID = :OLD_CATEGORIA_MERCEOLOGICA_ID')
    Left = 624
    Top = 232
  end
  object dsoCatMerc: TDataSource
    DataSet = ibTab_Cat_Merc
    Left = 16
    Top = 192
  end
  object ibTab_Listino: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    SQL.Strings = (
      'select * from TAB_LISTINO'
      'order by CODICE')
    Left = 640
    Top = 184
    object ibTab_ListinoCODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 10
    end
    object ibTab_ListinoDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibTab_ListinoDATA_INIZIO_VALIDITA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA_INIZIO_VALIDITA'
      EditMask = '!90/90/0000;1;_'
    end
    object ibTab_ListinoDATA_FINE_VALIDITA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA_FINE_VALIDITA'
      EditMask = '!90/90/0000;1;_'
    end
    object ibTab_ListinoMONETE_ID: TIBStringField
      FieldName = 'MONETE_ID'
      Size = 4
    end
    object ibTab_ListinoSCONTATO: TSmallintField
      FieldName = 'SCONTATO'
    end
    object ibTab_ListinoIVATO: TSmallintField
      FieldName = 'IVATO'
    end
    object ibTab_ListinoARROTONDAMENTO_ID: TIBStringField
      FieldName = 'ARROTONDAMENTO_ID'
      Size = 5
    end
    object ibTab_ListinoCODICE_ALTRO_LISTINO_ID: TIBStringField
      FieldName = 'CODICE_ALTRO_LISTINO_ID'
      Size = 10
    end
    object ibTab_ListinoDATA_FIXING: TDateTimeField
      FieldName = 'DATA_FIXING'
    end
    object ibTab_ListinoFIXING: TFloatField
      FieldName = 'FIXING'
    end
    object ibTab_ListinoTIPO_FIXING: TSmallintField
      FieldName = 'TIPO_FIXING'
    end
    object ibTab_ListinoPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object ibTab_ListinoCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
  end
  object dsoTab_Listini: TDataSource
    DataSet = ibTab_Listino
    Left = 248
    Top = 408
  end
  object ibupListini: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  DATA_INIZIO_VALIDITA,'
      '  DATA_FINE_VALIDITA,'
      '  MONETE_ID,'
      '  SCONTATO,'
      '  IVATO,'
      '  ARROTONDAMENTO_ID,'
      '  CODICE_ALTRO_LISTINO_ID,'
      '  DATA_FIXING,'
      '  FIXING,'
      '  TIPO_FIXING,'
      '  PERC_PROVV,'
      '  CLI_FOR_ID'
      'from TAB_LISTINO '
      'where'
      '  CODICE = :CODICE')
    ModifySQL.Strings = (
      'update TAB_LISTINO'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  DATA_INIZIO_VALIDITA = :DATA_INIZIO_VALIDITA,'
      '  DATA_FINE_VALIDITA = :DATA_FINE_VALIDITA,'
      '  MONETE_ID = :MONETE_ID,'
      '  SCONTATO = :SCONTATO,'
      '  IVATO = :IVATO,'
      '  ARROTONDAMENTO_ID = :ARROTONDAMENTO_ID,'
      '  CODICE_ALTRO_LISTINO_ID = :CODICE_ALTRO_LISTINO_ID,'
      '  DATA_FIXING = :DATA_FIXING,'
      '  FIXING = :FIXING,'
      '  TIPO_FIXING = :TIPO_FIXING,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  CLI_FOR_ID = :CLI_FOR_ID'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_LISTINO'
      
        '  (CODICE, DESCR, DATA_INIZIO_VALIDITA, DATA_FINE_VALIDITA, MONE' +
        'TE_ID, '
      
        '   SCONTATO, IVATO, ARROTONDAMENTO_ID, CODICE_ALTRO_LISTINO_ID, ' +
        'DATA_FIXING, '
      '   FIXING, TIPO_FIXING, PERC_PROVV, CLI_FOR_ID)'
      'values'
      
        '  (:CODICE, :DESCR, :DATA_INIZIO_VALIDITA, :DATA_FINE_VALIDITA, ' +
        ':MONETE_ID, '
      
        '   :SCONTATO, :IVATO, :ARROTONDAMENTO_ID, :CODICE_ALTRO_LISTINO_' +
        'ID, :DATA_FIXING, '
      '   :FIXING, :TIPO_FIXING, :PERC_PROVV, :CLI_FOR_ID)')
    DeleteSQL.Strings = (
      'delete from TAB_LISTINO'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 384
    Top = 336
  end
  object ibTab_Articoli_: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 5000
    DeleteSQL.Strings = (
      'delete from TAB_ARTICOLI'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into TAB_ARTICOLI'
      
        '  (CODICE_ARTICOLO, DESCR, DESCR2, CODICE_IVA_ID, UNITA_DI_MISUR' +
        'A1_ID, '
      
        '   UNITA_DI_MISURA2_ID, UNITA_DI_MISURA3_ID, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   PROVVIGIONE, PESO_NETTO_KG, PESO_LORDO_KG, SCORTA_MIN, SCORTA' +
        '_MAX, LOTTO_RIORDINO, '
      
        '   GG_APPROVVIGIONAMENTO, QTA_X_CONFEZIONE, ANNO, DESCR_AGGIUNTI' +
        'VA_ID, '
      
        '   PREZZO_BASE, COSTO_STANDART, TIPO_ARTICOLO_ID, FATT_CONV1, FA' +
        'TT_CONV2, '
      
        '   COSTO_ID, RICAVO_ID, GIORNI_MAX_INVENDUTO, ASPETTO_ID, RIORDI' +
        'NO_MESE_DA, '
      
        '   RIORDINO_MESE_A, RIORDINO_GIORNO_DA, RIORDINO_GIORNO_A, STAGI' +
        'ONE_ID, '
      
        '   GRUPPO_ALTERNATIVO, PRODUTTORE_ID, CATEGORIA_ARTICOLO_ID, CAT' +
        'EGORIA_MERCEOLOGICA_ID, '
      
        '   CODICE_BASE, DERIVATO, VARIANTE1_ID, VARIANTE2_ID, VARIANTE3_' +
        'ID, NUM_VARIANTI, '
      
        '   TIPO_COSTO_ID, TIPO_RICAVO_ID, OMAGGIO, TIPO_CLI_FOR_ID, CLI_' +
        'FOR_ID, '
      
        '   CODE_BAR, DESCR_CODE_BAR, NON_STAMPA_INVENTARIO, NON_STAMPA_R' +
        'EGISTRO, '
      
        '   NOMENCLATURA, FATT_CONV1_NOMENCLATURA, FATT_CONV2_NOMENCLATUR' +
        'A, PROV_ORDINE, '
      
        '   COSTO_ULTIMO, DATA_COSTO_ULTIMO, NUM_REPARTO, TIPO_CODE_BAR_I' +
        'D, CONTO_ACQUISTO, '
      
        '   CONTO_VENDITA, UN_MIS2_VAL, UN_MIS3_VAL, CAT_ART_FAMIGLIA_ID,' +
        ' CAT_ART_GRUPPO_ID, '
      
        '   CAT_ART_MARCA_ID, FOTO_PERCORSO, CAT_ART_TIPO_ID, FLAG_ACCESS' +
        'ORIE, DATAMOD, '
      
        '   SCONTO4, PREZZO_IVATO, P2IVATO, P3IVATO, P4IVATO, P5IVATO, SC' +
        '21, SC22, '
      
        '   SC23, SC31, SC32, SC33, SC41, SC42, SC43, SC51, SC52, SC53, R' +
        '2, R3, '
      
        '   R4, R5, IMP2, IMP3, IMP4, IMP5, RICARPREC, P6IVATO, IMP6, STR' +
        'UTT, CA, '
      
        '   CG, AG, CA2, CG2, AG2, CA3, CG3, AG3, CA4, CG4, AG4, CA5, CG5' +
        ', AG5, '
      '   CA6, CG6, AG6)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DESCR, :DESCR2, :CODICE_IVA_ID, :UNITA_DI_' +
        'MISURA1_ID, '
      
        '   :UNITA_DI_MISURA2_ID, :UNITA_DI_MISURA3_ID, :SCONTO1, :SCONTO' +
        '2, :SCONTO3, '
      
        '   :PROVVIGIONE, :PESO_NETTO_KG, :PESO_LORDO_KG, :SCORTA_MIN, :S' +
        'CORTA_MAX, '
      
        '   :LOTTO_RIORDINO, :GG_APPROVVIGIONAMENTO, :QTA_X_CONFEZIONE, :' +
        'ANNO, :DESCR_AGGIUNTIVA_ID, '
      
        '   :PREZZO_BASE, :COSTO_STANDART, :TIPO_ARTICOLO_ID, :FATT_CONV1' +
        ', :FATT_CONV2, '
      
        '   :COSTO_ID, :RICAVO_ID, :GIORNI_MAX_INVENDUTO, :ASPETTO_ID, :R' +
        'IORDINO_MESE_DA, '
      
        '   :RIORDINO_MESE_A, :RIORDINO_GIORNO_DA, :RIORDINO_GIORNO_A, :S' +
        'TAGIONE_ID, '
      
        '   :GRUPPO_ALTERNATIVO, :PRODUTTORE_ID, :CATEGORIA_ARTICOLO_ID, ' +
        ':CATEGORIA_MERCEOLOGICA_ID, '
      
        '   :CODICE_BASE, :DERIVATO, :VARIANTE1_ID, :VARIANTE2_ID, :VARIA' +
        'NTE3_ID, '
      
        '   :NUM_VARIANTI, :TIPO_COSTO_ID, :TIPO_RICAVO_ID, :OMAGGIO, :TI' +
        'PO_CLI_FOR_ID, '
      
        '   :CLI_FOR_ID, :CODE_BAR, :DESCR_CODE_BAR, :NON_STAMPA_INVENTAR' +
        'IO, :NON_STAMPA_REGISTRO, '
      
        '   :NOMENCLATURA, :FATT_CONV1_NOMENCLATURA, :FATT_CONV2_NOMENCLA' +
        'TURA, :PROV_ORDINE, '
      
        '   :COSTO_ULTIMO, :DATA_COSTO_ULTIMO, :NUM_REPARTO, :TIPO_CODE_B' +
        'AR_ID, '
      
        '   :CONTO_ACQUISTO, :CONTO_VENDITA, :UN_MIS2_VAL, :UN_MIS3_VAL, ' +
        ':CAT_ART_FAMIGLIA_ID, '
      
        '   :CAT_ART_GRUPPO_ID, :CAT_ART_MARCA_ID, :FOTO_PERCORSO, :CAT_A' +
        'RT_TIPO_ID, '
      
        '   :FLAG_ACCESSORIE, :DATAMOD, :SCONTO4, :PREZZO_IVATO, :P2IVATO' +
        ', :P3IVATO, '
      
        '   :P4IVATO, :P5IVATO, :SC21, :SC22, :SC23, :SC31, :SC32, :SC33,' +
        ' :SC41, '
      
        '   :SC42, :SC43, :SC51, :SC52, :SC53, :R2, :R3, :R4, :R5, :IMP2,' +
        ' :IMP3, '
      
        '   :IMP4, :IMP5, :RICARPREC, :P6IVATO, :IMP6, :STRUTT, :CA, :CG,' +
        ' :AG, :CA2, '
      
        '   :CG2, :AG2, :CA3, :CG3, :AG3, :CA4, :CG4, :AG4, :CA5, :CG5, :' +
        'AG5, :CA6, '
      '   :CG6, :AG6)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  DESCR2,'
      '  CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  PROVVIGIONE,'
      '  PESO_NETTO_KG,'
      '  PESO_LORDO_KG,'
      '  SCORTA_MIN,'
      '  SCORTA_MAX,'
      '  LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE,'
      '  ANNO,'
      '  DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE,'
      '  COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID,'
      '  FATT_CONV1,'
      '  FATT_CONV2,'
      '  COSTO_ID,'
      '  RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID,'
      '  RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A,'
      '  STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE,'
      '  DERIVATO,'
      '  VARIANTE1_ID,'
      '  VARIANTE2_ID,'
      '  VARIANTE3_ID,'
      '  NUM_VARIANTI,'
      '  TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID,'
      '  OMAGGIO,'
      '  TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID,'
      '  CODE_BAR,'
      '  DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE,'
      '  COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO,'
      '  CONTO_VENDITA,'
      '  UN_MIS2_VAL,'
      '  UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE,'
      '  DATAMOD,'
      '  SCONTO4,'
      '  PREZZO_IVATO,'
      '  P2IVATO,'
      '  P3IVATO,'
      '  P4IVATO,'
      '  P5IVATO,'
      '  SC21,'
      '  SC22,'
      '  SC23,'
      '  SC31,'
      '  SC32,'
      '  SC33,'
      '  SC41,'
      '  SC42,'
      '  SC43,'
      '  SC51,'
      '  SC52,'
      '  SC53,'
      '  R2,'
      '  R3,'
      '  R4,'
      '  R5,'
      '  IMP2,'
      '  IMP3,'
      '  IMP4,'
      '  IMP5,'
      '  RICARPREC,'
      '  P6IVATO,'
      '  IMP6,'
      '  STRUTT,'
      '  CA,'
      '  CG,'
      '  AG,'
      '  CA2,'
      '  CG2,'
      '  AG2,'
      '  CA3,'
      '  CG3,'
      '  AG3,'
      '  CA4,'
      '  CG4,'
      '  AG4,'
      '  CA5,'
      '  CG5,'
      '  AG5,'
      '  CA6,'
      '  CG6,'
      '  AG6'
      'from TAB_ARTICOLI '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Order By CODICE_ARTICOLO, DESCR')
    ModifySQL.Strings = (
      'update TAB_ARTICOLI'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  DESCR2 = :DESCR2,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID = :UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID = :UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID = :UNITA_DI_MISURA3_ID,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  PESO_NETTO_KG = :PESO_NETTO_KG,'
      '  PESO_LORDO_KG = :PESO_LORDO_KG,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO = :GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE = :QTA_X_CONFEZIONE,'
      '  ANNO = :ANNO,'
      '  DESCR_AGGIUNTIVA_ID = :DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID = :TIPO_ARTICOLO_ID,'
      '  FATT_CONV1 = :FATT_CONV1,'
      '  FATT_CONV2 = :FATT_CONV2,'
      '  COSTO_ID = :COSTO_ID,'
      '  RICAVO_ID = :RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO = :GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID = :ASPETTO_ID,'
      '  RIORDINO_MESE_DA = :RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A = :RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA = :RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A = :RIORDINO_GIORNO_A,'
      '  STAGIONE_ID = :STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO = :GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID = :PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID = :CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE = :CODICE_BASE,'
      '  DERIVATO = :DERIVATO,'
      '  VARIANTE1_ID = :VARIANTE1_ID,'
      '  VARIANTE2_ID = :VARIANTE2_ID,'
      '  VARIANTE3_ID = :VARIANTE3_ID,'
      '  NUM_VARIANTI = :NUM_VARIANTI,'
      '  TIPO_COSTO_ID = :TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID = :TIPO_RICAVO_ID,'
      '  OMAGGIO = :OMAGGIO,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODE_BAR = :CODE_BAR,'
      '  DESCR_CODE_BAR = :DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO = :NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO = :NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA = :NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA = :FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA = :FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE = :PROV_ORDINE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO = :DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO = :NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID = :TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO = :CONTO_ACQUISTO,'
      '  CONTO_VENDITA = :CONTO_VENDITA,'
      '  UN_MIS2_VAL = :UN_MIS2_VAL,'
      '  UN_MIS3_VAL = :UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID = :CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID = :CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID = :CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO = :FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID = :CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE = :FLAG_ACCESSORIE,'
      '  DATAMOD = :DATAMOD,'
      '  SCONTO4 = :SCONTO4,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  P2IVATO = :P2IVATO,'
      '  P3IVATO = :P3IVATO,'
      '  P4IVATO = :P4IVATO,'
      '  P5IVATO = :P5IVATO,'
      '  SC21 = :SC21,'
      '  SC22 = :SC22,'
      '  SC23 = :SC23,'
      '  SC31 = :SC31,'
      '  SC32 = :SC32,'
      '  SC33 = :SC33,'
      '  SC41 = :SC41,'
      '  SC42 = :SC42,'
      '  SC43 = :SC43,'
      '  SC51 = :SC51,'
      '  SC52 = :SC52,'
      '  SC53 = :SC53,'
      '  R2 = :R2,'
      '  R3 = :R3,'
      '  R4 = :R4,'
      '  R5 = :R5,'
      '  IMP2 = :IMP2,'
      '  IMP3 = :IMP3,'
      '  IMP4 = :IMP4,'
      '  IMP5 = :IMP5,'
      '  RICARPREC = :RICARPREC,'
      '  P6IVATO = :P6IVATO,'
      '  IMP6 = :IMP6,'
      '  STRUTT = :STRUTT,'
      '  CA = :CA,'
      '  CG = :CG,'
      '  AG = :AG,'
      '  CA2 = :CA2,'
      '  CG2 = :CG2,'
      '  AG2 = :AG2,'
      '  CA3 = :CA3,'
      '  CG3 = :CG3,'
      '  AG3 = :AG3,'
      '  CA4 = :CA4,'
      '  CG4 = :CG4,'
      '  AG4 = :AG4,'
      '  CA5 = :CA5,'
      '  CG5 = :CG5,'
      '  AG5 = :AG5,'
      '  CA6 = :CA6,'
      '  CG6 = :CG6,'
      '  AG6 = :AG6'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 112
    Top = 120
    object ibTab_Articoli_CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibTab_Articoli_DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object ibTab_Articoli_COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
    end
    object ibTab_Articoli_COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      currency = True
    end
    object ibTab_Articoli_FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
    end
    object ibTab_Articoli_FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
    end
    object ibTab_Articoli_FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
    end
    object ibTab_Articoli_FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
    end
    object ibTab_Articoli_LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
    end
    object ibTab_Articoli_SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
    end
    object ibTab_Articoli_SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
    end
    object ibTab_Articoli_PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
    end
    object ibTab_Articoli_PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
    end
    object ibTab_Articoli_PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object ibTab_Articoli_SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object ibTab_Articoli_SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibTab_Articoli_SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibTab_Articoli_CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object ibTab_Articoli_CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object ibTab_Articoli_CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object ibTab_Articoli_CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object ibTab_Articoli_UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
    end
    object ibTab_Articoli_UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object ibTab_Articoli_CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
    end
    object ibTab_Articoli_CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
    end
    object ibTab_Articoli_NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
    end
    object ibTab_Articoli_PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
    end
    object ibTab_Articoli_NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
    end
    object ibTab_Articoli_DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object ibTab_Articoli_CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Size = 50
    end
    object ibTab_Articoli_CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object ibTab_Articoli_NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
    end
    object ibTab_Articoli_CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
    end
    object ibTab_Articoli_PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Size = 10
    end
    object ibTab_Articoli_GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
    end
    object ibTab_Articoli_RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
    end
    object ibTab_Articoli_COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
    end
    object ibTab_Articoli_ANNO: TIntegerField
      FieldName = 'ANNO'
    end
    object ibTab_Articoli_QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
    end
    object ibTab_Articoli_GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
    end
    object ibTab_Articoli_TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
    end
    object ibTab_Articoli_NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
    end
    object ibTab_Articoli_NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
    end
    object ibTab_Articoli_TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object ibTab_Articoli_OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object ibTab_Articoli_TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
    end
    object ibTab_Articoli_TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
    end
    object ibTab_Articoli_DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
    end
    object ibTab_Articoli_CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
    end
    object ibTab_Articoli_CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Size = 4
    end
    object ibTab_Articoli_GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Size = 4
    end
    object ibTab_Articoli_STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Size = 4
    end
    object ibTab_Articoli_RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
    end
    object ibTab_Articoli_RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
    end
    object ibTab_Articoli_RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
    end
    object ibTab_Articoli_RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
    end
    object ibTab_Articoli_ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Size = 4
    end
    object ibTab_Articoli_TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
    end
    object ibTab_Articoli_DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Size = 4
    end
    object ibTab_Articoli_CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object ibTab_Articoli_FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Size = 255
    end
    object ibTab_Articoli_VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Size = 3
    end
    object ibTab_Articoli_VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Size = 3
    end
    object ibTab_Articoli_VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Size = 3
    end
    object ibTab_Articoli_UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Size = 3
    end
    object ibTab_Articoli_UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Size = 3
    end
    object ibTab_Articoli_UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Size = 3
    end
    object ibTab_Articoli_FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Size = 1
    end
    object ibTab_Articoli_DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
    end
    object ibTab_Articoli_SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object ibTab_Articoli_PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_SC21: TFloatField
      FieldName = 'SC21'
    end
    object ibTab_Articoli_SC22: TFloatField
      FieldName = 'SC22'
    end
    object ibTab_Articoli_SC23: TFloatField
      FieldName = 'SC23'
    end
    object ibTab_Articoli_SC31: TFloatField
      FieldName = 'SC31'
    end
    object ibTab_Articoli_SC32: TFloatField
      FieldName = 'SC32'
    end
    object ibTab_Articoli_SC33: TFloatField
      FieldName = 'SC33'
    end
    object ibTab_Articoli_SC41: TFloatField
      FieldName = 'SC41'
    end
    object ibTab_Articoli_SC42: TFloatField
      FieldName = 'SC42'
    end
    object ibTab_Articoli_SC43: TFloatField
      FieldName = 'SC43'
    end
    object ibTab_Articoli_SC51: TFloatField
      FieldName = 'SC51'
    end
    object ibTab_Articoli_SC52: TFloatField
      FieldName = 'SC52'
    end
    object ibTab_Articoli_SC53: TFloatField
      FieldName = 'SC53'
    end
    object ibTab_Articoli_R2: TFloatField
      FieldName = 'R2'
    end
    object ibTab_Articoli_R3: TFloatField
      FieldName = 'R3'
    end
    object ibTab_Articoli_R4: TFloatField
      FieldName = 'R4'
    end
    object ibTab_Articoli_R5: TFloatField
      FieldName = 'R5'
    end
    object ibTab_Articoli_IMP2: TFloatField
      FieldName = 'IMP2'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_IMP3: TFloatField
      FieldName = 'IMP3'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_IMP4: TFloatField
      FieldName = 'IMP4'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_IMP5: TFloatField
      FieldName = 'IMP5'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibTab_Articoli_RICARPREC: TFloatField
      FieldName = 'RICARPREC'
    end
    object ibTab_Articoli_P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      currency = True
    end
    object ibTab_Articoli_IMP6: TFloatField
      FieldName = 'IMP6'
      currency = True
    end
    object ibTab_Articoli_STRUTT: TFloatField
      FieldName = 'STRUTT'
    end
    object ibTab_Articoli_CA: TFloatField
      FieldName = 'CA'
    end
    object ibTab_Articoli_CG: TFloatField
      FieldName = 'CG'
    end
    object ibTab_Articoli_AG: TFloatField
      FieldName = 'AG'
    end
    object ibTab_Articoli_CA2: TFloatField
      FieldName = 'CA2'
    end
    object ibTab_Articoli_CG2: TFloatField
      FieldName = 'CG2'
    end
    object ibTab_Articoli_AG2: TFloatField
      FieldName = 'AG2'
    end
    object ibTab_Articoli_CA3: TFloatField
      FieldName = 'CA3'
    end
    object ibTab_Articoli_CG3: TFloatField
      FieldName = 'CG3'
    end
    object ibTab_Articoli_AG3: TFloatField
      FieldName = 'AG3'
    end
    object ibTab_Articoli_CA4: TFloatField
      FieldName = 'CA4'
    end
    object ibTab_Articoli_CG4: TFloatField
      FieldName = 'CG4'
    end
    object ibTab_Articoli_AG4: TFloatField
      FieldName = 'AG4'
    end
    object ibTab_Articoli_CA5: TFloatField
      FieldName = 'CA5'
    end
    object ibTab_Articoli_CG5: TFloatField
      FieldName = 'CG5'
    end
    object ibTab_Articoli_AG5: TFloatField
      FieldName = 'AG5'
    end
    object ibTab_Articoli_CA6: TFloatField
      FieldName = 'CA6'
    end
    object ibTab_Articoli_CG6: TFloatField
      FieldName = 'CG6'
    end
    object ibTab_Articoli_AG6: TFloatField
      FieldName = 'AG6'
    end
    object ibTab_Articoli_ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
    end
    object ibTab_Articoli_CR: TFloatField
      FieldName = 'CR'
    end
    object ibTab_Articoli_CR2: TFloatField
      FieldName = 'CR2'
    end
    object ibTab_Articoli_CR3: TFloatField
      FieldName = 'CR3'
    end
    object ibTab_Articoli_CR4: TFloatField
      FieldName = 'CR4'
    end
    object ibTab_Articoli_CR5: TFloatField
      FieldName = 'CR5'
    end
    object ibTab_Articoli_CR6: TFloatField
      FieldName = 'CR6'
    end
    object ibTab_Articoli_FOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"TAB_ARTICOLI"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ibTab_Articoli_DESCR2: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 10002
    end
  end
  object ibTab_CAB: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AutoCalcFields = False
    DeleteSQL.Strings = (
      'delete from TAB_CAB'
      'where'
      '  ABI_ID = :OLD_ABI_ID and'
      '  ID_CAB = :OLD_ID_CAB')
    InsertSQL.Strings = (
      'insert into TAB_CAB'
      
        '  (ABI_ID, CAP_ID, COMUNE, COMUNE_ID, DESCR, ID_CAB, INDIRIZZO, ' +
        'LOCALITA, '
      '   PK_CODICE, PROV, PROVINCIA_ID)'
      'values'
      
        '  (:ABI_ID, :CAP_ID, :COMUNE, :COMUNE_ID, :DESCR, :ID_CAB, :INDI' +
        'RIZZO, '
      '   :LOCALITA, :PK_CODICE, :PROV, :PROVINCIA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ABI_ID,'
      '  INDIRIZZO,'
      '  LOCALITA,'
      '  COMUNE_ID,'
      '  PROVINCIA_ID,'
      '  CAP_ID,'
      '  DESCR,'
      '  ID_CAB,'
      '  COMUNE,'
      '  PROV,'
      '  PK_CODICE'
      'from TAB_CAB '
      'where'
      '  ABI_ID = :ABI_ID and'
      '  ID_CAB = :ID_CAB')
    SelectSQL.Strings = (
      'select * from TAB_CAB order by id_cab,abi_id')
    ModifySQL.Strings = (
      'update TAB_CAB'
      'set'
      '  ABI_ID = :ABI_ID,'
      '  CAP_ID = :CAP_ID,'
      '  COMUNE = :COMUNE,'
      '  COMUNE_ID = :COMUNE_ID,'
      '  DESCR = :DESCR,'
      '  ID_CAB = :ID_CAB,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  LOCALITA = :LOCALITA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PROV = :PROV,'
      '  PROVINCIA_ID = :PROVINCIA_ID'
      'where'
      '  ABI_ID = :OLD_ABI_ID and'
      '  ID_CAB = :OLD_ID_CAB')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_CAB'
    Left = 168
    Top = 208
    object ibTab_CABID_CAB: TIBStringField
      FieldName = 'ID_CAB'
      Size = 5
    end
    object ibTab_CABABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 5
    end
    object ibTab_CABDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibTab_CABPROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
    end
    object ibTab_CABCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object ibTab_CABLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object ibTab_CABINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object ibTab_CABCAP_ID: TIBStringField
      FieldName = 'CAP_ID'
      Size = 5
    end
    object ibTab_CABCOMUNE: TIBStringField
      FieldName = 'COMUNE'
      Size = 50
    end
    object ibTab_CABPROV: TIBStringField
      FieldName = 'PROV'
      Size = 5
    end
    object ibTab_CABPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_CAB"."PK_CODICE"'
      Required = True
    end
  end
  object ibTab_Banche: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_BANCHE'
      'where'
      '  ID_BANCA = :OLD_ID_BANCA')
    InsertSQL.Strings = (
      'insert into TAB_BANCHE'
      
        '  (CITTA, CAB_ID, AZIENDA, SPORTELLO, EMAIL, DESCR, INTERNET, IN' +
        'DIRIZZO, '
      '   ABI_ID, FAX, TEL2, TEL1, ID_BANCA)'
      'values'
      
        '  (:CITTA, :CAB_ID, :AZIENDA, :SPORTELLO, :EMAIL, :DESCR, :INTER' +
        'NET, :INDIRIZZO, '
      '   :ABI_ID, :FAX, :TEL2, :TEL1, :ID_BANCA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_BANCA,'
      '  DESCR,'
      '  INDIRIZZO,'
      '  CITTA,'
      '  TEL1,'
      '  TEL2,'
      '  FAX,'
      '  EMAIL,'
      '  SPORTELLO,'
      '  AZIENDA,'
      '  ABI_ID,'
      '  CAB_ID,'
      '  INTERNET'
      'from TAB_BANCHE '
      'where'
      '  ID_BANCA = :ID_BANCA')
    SelectSQL.Strings = (
      
        'select CITTA, CAB_ID, AZIENDA, SPORTELLO, EMAIL, DESCR, INTERNET' +
        ', INDIRIZZO, ABI_ID, FAX, TEL2, TEL1, ID_BANCA  from TAB_BANCHE ' +
        'order by descr')
    ModifySQL.Strings = (
      'update TAB_BANCHE'
      'set'
      '  CITTA = :CITTA,'
      '  CAB_ID = :CAB_ID,'
      '  AZIENDA = :AZIENDA,'
      '  SPORTELLO = :SPORTELLO,'
      '  EMAIL = :EMAIL,'
      '  DESCR = :DESCR,'
      '  INTERNET = :INTERNET,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  ABI_ID = :ABI_ID,'
      '  FAX = :FAX,'
      '  TEL2 = :TEL2,'
      '  TEL1 = :TEL1,'
      '  ID_BANCA = :ID_BANCA'
      'where'
      '  ID_BANCA = :OLD_ID_BANCA')
    Left = 152
    Top = 112
    object ibTab_BancheDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_BANCHE"."DESCR"'
      Size = 50
    end
    object ibTab_BancheABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_BANCHE"."ABI_ID"'
      Size = 5
    end
    object ibTab_BancheCAB_ID: TIntegerField
      FieldName = 'CAB_ID'
      Origin = '"TAB_BANCHE"."CAB_ID"'
    end
    object ibTab_BancheINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_BANCHE"."INDIRIZZO"'
      Size = 100
    end
    object ibTab_BancheCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_BANCHE"."CITTA"'
      Size = 30
    end
    object ibTab_BancheAZIENDA: TIBStringField
      FieldName = 'AZIENDA'
      Origin = '"TAB_BANCHE"."AZIENDA"'
      Size = 10
    end
    object ibTab_BancheSPORTELLO: TIBStringField
      FieldName = 'SPORTELLO'
      Origin = '"TAB_BANCHE"."SPORTELLO"'
      Size = 50
    end
    object ibTab_BancheEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_BANCHE"."EMAIL"'
      Size = 50
    end
    object ibTab_BancheINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_BANCHE"."INTERNET"'
      Size = 100
    end
    object ibTab_BancheFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_BANCHE"."FAX"'
      Size = 15
    end
    object ibTab_BancheTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_BANCHE"."TEL2"'
      Size = 15
    end
    object ibTab_BancheTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_BANCHE"."TEL1"'
      Size = 15
    end
    object ibTab_BancheID_BANCA: TIBStringField
      FieldName = 'ID_BANCA'
      Origin = '"TAB_BANCHE"."ID_BANCA"'
      Required = True
      Size = 5
    end
  end
  object ibTab_ABI: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AutoCalcFields = False
    DeleteSQL.Strings = (
      'delete from TAB_ABI'
      'where'
      '  ID_ABI = :OLD_ID_ABI')
    InsertSQL.Strings = (
      'insert into TAB_ABI'
      '  (ID_ABI, DESCR)'
      'values'
      '  (:ID_ABI, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  DESCR,'
      '  ID_ABI'
      'from TAB_ABI '
      'where'
      '  ID_ABI = :ID_ABI'
      'order by id_abi')
    SelectSQL.Strings = (
      'select ID_ABI,DESCR  from TAB_ABI'
      'order by id_abi')
    ModifySQL.Strings = (
      'update TAB_ABI'
      'set'
      '  ID_ABI = :ID_ABI,'
      '  DESCR = :DESCR'
      'where'
      '  ID_ABI = :OLD_ID_ABI')
    Left = 24
    Top = 480
    object ibTab_ABIID_ABI: TIBStringField
      FieldName = 'ID_ABI'
      Size = 5
    end
    object ibTab_ABIDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 100
    end
  end
  object ibTab_SottoZone: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_SOTTO_ZONE'
      'where'
      '  ID_CODICE_SOTTO_ZONE = :OLD_ID_CODICE_SOTTO_ZONE')
    InsertSQL.Strings = (
      'insert into TAB_SOTTO_ZONE'
      '  (DESCR, CODICE_ZONA_ID, ID_CODICE_SOTTO_ZONE)'
      'values'
      '  (:DESCR, :CODICE_ZONA_ID, :ID_CODICE_SOTTO_ZONE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CODICE_SOTTO_ZONE,'
      '  DESCR,'
      '  CODICE_ZONA_ID'
      'from TAB_SOTTO_ZONE '
      'where'
      '  ID_CODICE_SOTTO_ZONE = :ID_CODICE_SOTTO_ZONE')
    SelectSQL.Strings = (
      
        'select DESCR, CODICE_ZONA_ID, ID_CODICE_SOTTO_ZONE from TAB_SOTT' +
        'O_ZONE'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_SOTTO_ZONE'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE_ZONA_ID = :CODICE_ZONA_ID,'
      '  ID_CODICE_SOTTO_ZONE = :ID_CODICE_SOTTO_ZONE'
      'where'
      '  ID_CODICE_SOTTO_ZONE = :OLD_ID_CODICE_SOTTO_ZONE')
    Left = 272
    Top = 176
    object ibTab_SottoZoneDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_SOTTO_ZONE"."DESCR"'
      Size = 50
    end
    object ibTab_SottoZoneCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_SOTTO_ZONE"."CODICE_ZONA_ID"'
      Size = 7
    end
    object ibTab_SottoZoneID_CODICE_SOTTO_ZONE: TIBStringField
      FieldName = 'ID_CODICE_SOTTO_ZONE'
      Origin = '"TAB_SOTTO_ZONE"."ID_CODICE_SOTTO_ZONE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
  end
  object ibTab_Casse: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_CASSE'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_CASSE'
      
        '  (CODICE, DESCR, NUMERO_SERIE, SERIE, VELOCITA_BAUD_ID, BIT_DAT' +
        'I_ID, BIT_STOP_ID, '
      
        '   PARITA_ID, TIME_OUT, PORTA_ID, TIPO_REG, NUM_CARATTERI, NUM_R' +
        'EPARTI, '
      '   ENABLED)'
      'values'
      
        '  (:CODICE, :DESCR, :NUMERO_SERIE, :SERIE, :VELOCITA_BAUD_ID, :B' +
        'IT_DATI_ID, '
      
        '   :BIT_STOP_ID, :PARITA_ID, :TIME_OUT, :PORTA_ID, :TIPO_REG, :N' +
        'UM_CARATTERI, '
      '   :NUM_REPARTI, :ENABLED)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  NUMERO_SERIE,'
      '  SERIE,'
      '  VELOCITA_BAUD_ID,'
      '  BIT_DATI_ID,'
      '  BIT_STOP_ID,'
      '  PARITA_ID,'
      '  TIME_OUT,'
      '  PORTA_ID,'
      '  TIPO_REG,'
      '  NUM_CARATTERI,'
      '  NUM_REPARTI,'
      '  ENABLED'
      'from TAB_CASSE '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_CASSE')
    ModifySQL.Strings = (
      'update TAB_CASSE'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  NUMERO_SERIE = :NUMERO_SERIE,'
      '  SERIE = :SERIE,'
      '  VELOCITA_BAUD_ID = :VELOCITA_BAUD_ID,'
      '  BIT_DATI_ID = :BIT_DATI_ID,'
      '  BIT_STOP_ID = :BIT_STOP_ID,'
      '  PARITA_ID = :PARITA_ID,'
      '  TIME_OUT = :TIME_OUT,'
      '  PORTA_ID = :PORTA_ID,'
      '  TIPO_REG = :TIPO_REG,'
      '  NUM_CARATTERI = :NUM_CARATTERI,'
      '  NUM_REPARTI = :NUM_REPARTI,'
      '  ENABLED = :ENABLED'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 184
    Top = 488
  end
  object ibTab_Cat_Cli: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_CATEGORIA_CLIENTI'
      'where'
      '  CODICE_LISTINO_ID = :OLD_CODICE_LISTINO_ID and'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_CATEGORIA_CLIENTI'
      '  (CODICE_LISTINO_ID, DESCR, CODICE)'
      'values'
      '  (:CODICE_LISTINO_ID, :DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  CODICE_LISTINO_ID'
      'from TAB_CATEGORIA_CLIENTI '
      'where'
      '  CODICE_LISTINO_ID = :CODICE_LISTINO_ID and'
      '  CODICE = :CODICE'
      'order by DESCR')
    SelectSQL.Strings = (
      
        'select CODICE_LISTINO_ID, DESCR, CODICE from TAB_CATEGORIA_CLIEN' +
        'TI'
      'order by DESCR')
    ModifySQL.Strings = (
      'update TAB_CATEGORIA_CLIENTI'
      'set'
      '  CODICE_LISTINO_ID = :CODICE_LISTINO_ID,'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  CODICE_LISTINO_ID = :OLD_CODICE_LISTINO_ID and'
      '  CODICE = :OLD_CODICE')
    Left = 232
    Top = 280
    object ibTab_Cat_CliCODICE_LISTINO_ID: TIBStringField
      FieldName = 'CODICE_LISTINO_ID'
      Size = 10
    end
    object ibTab_Cat_CliDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibTab_Cat_CliCODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
  end
  object ibTab_Pagamenti: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_PAGAMENTI'
      'where'
      '  ID_PAGAMENTO = :OLD_ID_PAGAMENTO')
    InsertSQL.Strings = (
      'insert into TAB_PAGAMENTI'
      '  (SPESE, SCONTO_INCASSO, GIORNO_SCADENZA, TIPO_PAGAMENTO, '
      'GIORNI_TRA_RATE, '
      '   GIORNI_PRIMA_RATA, DESCR, ADDEBITA_INCASSO, PERSONALIZZA, '
      'ESC_FESTIVI, '
      '   ESC_SABATI, NUMERO_RATE, CALCOLO_PRIMA_RATA, '
      'GIORNI_COMMERCIALI, FINE_MESE, '
      '   ID_PAGAMENTO)'
      'values'
      '  (:SPESE, :SCONTO_INCASSO, :GIORNO_SCADENZA, :TIPO_PAGAMENTO, '
      ':GIORNI_TRA_RATE, '
      
        '   :GIORNI_PRIMA_RATA, :DESCR, :ADDEBITA_INCASSO, :PERSONALIZZA,' +
        ' '
      ':ESC_FESTIVI, '
      '   :ESC_SABATI, :NUMERO_RATE, :CALCOLO_PRIMA_RATA, '
      ':GIORNI_COMMERCIALI, '
      '   :FINE_MESE, :ID_PAGAMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PAGAMENTO,'
      '  DESCR,'
      '  FINE_MESE,'
      '  GIORNI_PRIMA_RATA,'
      '  GIORNI_TRA_RATE,'
      '  GIORNI_COMMERCIALI,'
      '  CALCOLO_PRIMA_RATA,'
      '  NUMERO_RATE,'
      '  TIPO_PAGAMENTO,'
      '  ESC_SABATI,'
      '  ESC_FESTIVI,'
      '  PERSONALIZZA,'
      '  GIORNO_SCADENZA,'
      '  ADDEBITA_INCASSO,'
      '  SCONTO_INCASSO,'
      '  SPESE'
      'from TAB_PAGAMENTI '
      'where'
      '  ID_PAGAMENTO = :ID_PAGAMENTO')
    SelectSQL.Strings = (
      
        'select SPESE, SCONTO_INCASSO, GIORNO_SCADENZA, TIPO_PAGAMENTO, G' +
        'IORNI_TRA_RATE, GIORNI_PRIMA_RATA, DESCR, ADDEBITA_INCASSO, PERS' +
        'ONALIZZA, ESC_FESTIVI, ESC_SABATI, NUMERO_RATE, CALCOLO_PRIMA_RA' +
        'TA, GIORNI_COMMERCIALI, FINE_MESE, ID_PAGAMENTO from TAB_PAGAMEN' +
        'TI'
      'order by id_pagamento,descr')
    ModifySQL.Strings = (
      'update TAB_PAGAMENTI'
      'set'
      '  SPESE = :SPESE,'
      '  SCONTO_INCASSO = :SCONTO_INCASSO,'
      '  GIORNO_SCADENZA = :GIORNO_SCADENZA,'
      '  TIPO_PAGAMENTO = :TIPO_PAGAMENTO,'
      '  GIORNI_TRA_RATE = :GIORNI_TRA_RATE,'
      '  GIORNI_PRIMA_RATA = :GIORNI_PRIMA_RATA,'
      '  DESCR = :DESCR,'
      '  ADDEBITA_INCASSO = :ADDEBITA_INCASSO,'
      '  PERSONALIZZA = :PERSONALIZZA,'
      '  ESC_FESTIVI = :ESC_FESTIVI,'
      '  ESC_SABATI = :ESC_SABATI,'
      '  NUMERO_RATE = :NUMERO_RATE,'
      '  CALCOLO_PRIMA_RATA = :CALCOLO_PRIMA_RATA,'
      '  GIORNI_COMMERCIALI = :GIORNI_COMMERCIALI,'
      '  FINE_MESE = :FINE_MESE,'
      '  ID_PAGAMENTO = :ID_PAGAMENTO'
      'where'
      '  ID_PAGAMENTO = :OLD_ID_PAGAMENTO')
    Left = 464
    Top = 120
    object ibTab_PagamentiID_PAGAMENTO: TIBStringField
      DisplayLabel = 'Codice'
      FieldName = 'ID_PAGAMENTO'
      Required = True
      Size = 4
    end
    object ibTab_PagamentiDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 50
    end
    object ibTab_PagamentiNUMERO_RATE: TSmallintField
      DisplayLabel = 'N'#176' Rate'
      FieldName = 'NUMERO_RATE'
    end
    object ibTab_PagamentiSPESE: TFloatField
      FieldName = 'SPESE'
      Visible = False
    end
    object ibTab_PagamentiSCONTO_INCASSO: TFloatField
      FieldName = 'SCONTO_INCASSO'
      Visible = False
    end
    object ibTab_PagamentiGIORNO_SCADENZA: TIntegerField
      FieldName = 'GIORNO_SCADENZA'
      Visible = False
    end
    object ibTab_PagamentiTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Visible = False
      Size = 2
    end
    object ibTab_PagamentiGIORNI_TRA_RATE: TIntegerField
      FieldName = 'GIORNI_TRA_RATE'
      Visible = False
    end
    object ibTab_PagamentiGIORNI_PRIMA_RATA: TIntegerField
      FieldName = 'GIORNI_PRIMA_RATA'
    end
    object ibTab_PagamentiADDEBITA_INCASSO: TSmallintField
      FieldName = 'ADDEBITA_INCASSO'
      Visible = False
    end
    object ibTab_PagamentiPERSONALIZZA: TSmallintField
      FieldName = 'PERSONALIZZA'
      Visible = False
    end
    object ibTab_PagamentiESC_FESTIVI: TSmallintField
      FieldName = 'ESC_FESTIVI'
      Visible = False
    end
    object ibTab_PagamentiESC_SABATI: TSmallintField
      FieldName = 'ESC_SABATI'
      Visible = False
    end
    object ibTab_PagamentiCALCOLO_PRIMA_RATA: TSmallintField
      FieldName = 'CALCOLO_PRIMA_RATA'
      Visible = False
    end
    object ibTab_PagamentiGIORNI_COMMERCIALI: TSmallintField
      FieldName = 'GIORNI_COMMERCIALI'
      Visible = False
    end
    object ibTab_PagamentiFINE_MESE: TSmallintField
      FieldName = 'FINE_MESE'
    end
  end
  object ibTab_Codici_IVA: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_CODICI_IVA'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_CODICI_IVA'
      
        '  (CODICE, ALIQUOTA, DESCR, INDETRABILITA, NON_IMPONIBILE_IVA_ID' +
        ', NON_SOGGETTO_IVA_ID, '
      
        '   CONCORRE_PLAFOND, CODICE_IVA_COLLEGATO_ID, VOLUME_AFFARI, ESE' +
        'NTE, CLASSIFICAZIONE, '
      '   SIGLA_IDENTIFICATIVA, RIFERIMENTO_IVA11_ID)'
      'values'
      
        '  (:CODICE, :ALIQUOTA, :DESCR, :INDETRABILITA, :NON_IMPONIBILE_I' +
        'VA_ID, '
      
        '   :NON_SOGGETTO_IVA_ID, :CONCORRE_PLAFOND, :CODICE_IVA_COLLEGAT' +
        'O_ID, :VOLUME_AFFARI, '
      
        '   :ESENTE, :CLASSIFICAZIONE, :SIGLA_IDENTIFICATIVA, :RIFERIMENT' +
        'O_IVA11_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  ALIQUOTA,'
      '  INDETRABILITA,'
      '  CLASSIFICAZIONE,'
      '  ESENTE,'
      '  RIFERIMENTO_IVA11_ID,'
      '  VOLUME_AFFARI,'
      '  CODICE_IVA_COLLEGATO_ID,'
      '  SIGLA_IDENTIFICATIVA,'
      '  CONCORRE_PLAFOND,'
      '  NON_SOGGETTO_IVA_ID,'
      '  NON_IMPONIBILE_IVA_ID'
      'from TAB_CODICI_IVA '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_CODICI_IVA'
      'order by codice,aliquota,descr')
    ModifySQL.Strings = (
      'update TAB_CODICI_IVA'
      'set'
      '  CODICE = :CODICE,'
      '  ALIQUOTA = :ALIQUOTA,'
      '  DESCR = :DESCR,'
      '  INDETRABILITA = :INDETRABILITA,'
      '  NON_IMPONIBILE_IVA_ID = :NON_IMPONIBILE_IVA_ID,'
      '  NON_SOGGETTO_IVA_ID = :NON_SOGGETTO_IVA_ID,'
      '  CONCORRE_PLAFOND = :CONCORRE_PLAFOND,'
      '  CODICE_IVA_COLLEGATO_ID = :CODICE_IVA_COLLEGATO_ID,'
      '  VOLUME_AFFARI = :VOLUME_AFFARI,'
      '  ESENTE = :ESENTE,'
      '  CLASSIFICAZIONE = :CLASSIFICAZIONE,'
      '  SIGLA_IDENTIFICATIVA = :SIGLA_IDENTIFICATIVA,'
      '  RIFERIMENTO_IVA11_ID = :RIFERIMENTO_IVA11_ID'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 192
    Top = 432
    object ibTab_Codici_IVACODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object ibTab_Codici_IVADESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibTab_Codici_IVAALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object ibTab_Codici_IVAINDETRABILITA: TFloatField
      FieldName = 'INDETRABILITA'
    end
    object ibTab_Codici_IVANON_IMPONIBILE_IVA_ID: TSmallintField
      FieldName = 'NON_IMPONIBILE_IVA_ID'
    end
    object ibTab_Codici_IVANON_SOGGETTO_IVA_ID: TSmallintField
      FieldName = 'NON_SOGGETTO_IVA_ID'
    end
    object ibTab_Codici_IVACONCORRE_PLAFOND: TSmallintField
      FieldName = 'CONCORRE_PLAFOND'
    end
    object ibTab_Codici_IVACODICE_IVA_COLLEGATO_ID: TIBStringField
      FieldName = 'CODICE_IVA_COLLEGATO_ID'
      Size = 4
    end
    object ibTab_Codici_IVAVOLUME_AFFARI: TSmallintField
      FieldName = 'VOLUME_AFFARI'
    end
    object ibTab_Codici_IVAESENTE: TSmallintField
      FieldName = 'ESENTE'
    end
    object ibTab_Codici_IVACLASSIFICAZIONE: TSmallintField
      FieldName = 'CLASSIFICAZIONE'
    end
    object ibTab_Codici_IVASIGLA_IDENTIFICATIVA: TIBStringField
      FieldName = 'SIGLA_IDENTIFICATIVA'
      Size = 5
    end
    object ibTab_Codici_IVARIFERIMENTO_IVA11_ID: TIBStringField
      FieldName = 'RIFERIMENTO_IVA11_ID'
      Size = 5
    end
  end
  object ibTab_Ragg_Dep: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_RAGGRUPPAMENTI_DEPOSITI'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_RAGGRUPPAMENTI_DEPOSITI'
      '  (DESCR, CODICE)'
      'values'
      '  (:DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_RAGGRUPPAMENTI_DEPOSITI '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select DESCR, CODICE from TAB_RAGGRUPPAMENTI_DEPOSITI')
    ModifySQL.Strings = (
      'update TAB_RAGGRUPPAMENTI_DEPOSITI'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 512
    Top = 480
  end
  object ibTab_Cau_Trasp: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_CAU_TRASP'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_CAU_TRASP'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_CAU_TRASP '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select DESCR, CODICE from TAB_CAU_TRASP'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_CAU_TRASP'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 88
    Top = 408
    object ibTab_Cau_TraspDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CAU_TRASP"."DESCR"'
      Size = 50
    end
    object ibTab_Cau_TraspCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_CAU_TRASP"."CODICE"'
      Required = True
      Size = 4
    end
  end
  object ibupCatCli: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AGENTE_CODICE_ID,'
      '  PROVVIGIONE,'
      '  CATEGORIA_CLIENTE_ID'
      'from TAB_AGENTI_CAT_CLIENTI '
      'where'
      '  AGENTE_CODICE_ID = :AGENTE_CODICE_ID and'
      '  PROVVIGIONE = :PROVVIGIONE and'
      '  CATEGORIA_CLIENTE_ID = :CATEGORIA_CLIENTE_ID')
    ModifySQL.Strings = (
      'update TAB_AGENTI_CAT_CLIENTI'
      'set'
      '  AGENTE_CODICE_ID = :AGENTE_CODICE_ID,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  CATEGORIA_CLIENTE_ID = :CATEGORIA_CLIENTE_ID'
      'where'
      '  AGENTE_CODICE_ID = :OLD_AGENTE_CODICE_ID and'
      '  PROVVIGIONE = :OLD_PROVVIGIONE and'
      '  CATEGORIA_CLIENTE_ID = :OLD_CATEGORIA_CLIENTE_ID')
    InsertSQL.Strings = (
      'insert into TAB_AGENTI_CAT_CLIENTI'
      '  (AGENTE_CODICE_ID, PROVVIGIONE, CATEGORIA_CLIENTE_ID)'
      'values'
      '  (:AGENTE_CODICE_ID, :PROVVIGIONE, :CATEGORIA_CLIENTE_ID)')
    DeleteSQL.Strings = (
      'delete from TAB_AGENTI_CAT_CLIENTI'
      'where'
      '  AGENTE_CODICE_ID = :OLD_AGENTE_CODICE_ID and'
      '  PROVVIGIONE = :OLD_PROVVIGIONE and'
      '  CATEGORIA_CLIENTE_ID = :OLD_CATEGORIA_CLIENTE_ID')
    Left = 584
    Top = 352
  end
  object ibupArtDep: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTTICOLO,'
      '  DEPOSITO_ID,'
      '  SCORTA_MIN,'
      '  SCORTA_MAX,'
      '  LOTTO_RIORDINO,'
      '  UBICAZIONE_ID'
      'from TAB_ART_DEPOSITI '
      'where'
      '  CODICE_ARTTICOLO = :CODICE_ARTTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID and'
      '  SCORTA_MIN = :SCORTA_MIN and'
      '  SCORTA_MAX = :SCORTA_MAX and'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO and'
      '  UBICAZIONE_ID = :UBICAZIONE_ID')
    ModifySQL.Strings = (
      'update TAB_ART_DEPOSITI'
      'set'
      '  CODICE_ARTTICOLO = :CODICE_ARTTICOLO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  UBICAZIONE_ID = :UBICAZIONE_ID'
      'where'
      '  CODICE_ARTTICOLO = :OLD_CODICE_ARTTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID and'
      '  SCORTA_MIN = :OLD_SCORTA_MIN and'
      '  SCORTA_MAX = :OLD_SCORTA_MAX and'
      '  LOTTO_RIORDINO = :OLD_LOTTO_RIORDINO and'
      '  UBICAZIONE_ID = :OLD_UBICAZIONE_ID')
    InsertSQL.Strings = (
      'insert into TAB_ART_DEPOSITI'
      
        '  (CODICE_ARTTICOLO, DEPOSITO_ID, SCORTA_MIN, SCORTA_MAX, LOTTO_' +
        'RIORDINO, '
      '   UBICAZIONE_ID)'
      'values'
      
        '  (:CODICE_ARTTICOLO, :DEPOSITO_ID, :SCORTA_MIN, :SCORTA_MAX, :L' +
        'OTTO_RIORDINO, '
      '   :UBICAZIONE_ID)')
    DeleteSQL.Strings = (
      'delete from TAB_ART_DEPOSITI'
      'where'
      '  CODICE_ARTTICOLO = :OLD_CODICE_ARTTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID and'
      '  SCORTA_MIN = :OLD_SCORTA_MIN and'
      '  SCORTA_MAX = :OLD_SCORTA_MAX and'
      '  LOTTO_RIORDINO = :OLD_LOTTO_RIORDINO and'
      '  UBICAZIONE_ID = :OLD_UBICAZIONE_ID')
    Left = 600
    Top = 360
  end
  object ibTab_Cau_Mag: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_CAUSALI_MAGAZZINO'
      'where'
      '  CODICE_CAUSALE = :OLD_CODICE_CAUSALE')
    InsertSQL.Strings = (
      'insert into TAB_CAUSALI_MAGAZZINO'
      
        '  (CODICE_CAUSALE, DESCR_CAUSALE, DATA_ULTIMO_ACQUISTO, FATTURAT' +
        'O_ACQUISTI, '
      
        '   FATTURATO_VENDITA, NON_STAMPA, MOV_NON_VALIDO, COSTO_ULTIMO, ' +
        'CONTROCAUSALE, '
      
        '   CONTROPARTE, VAL_GIACENZA_INIZIALE, QTA_GIACENZA_INIZIALE, VA' +
        'L_EVASO_FORNITORE, '
      
        '   QTA_EVASA_FORNITORE, VAL_EVASO_CLIENTE, QTA_EVASA_CLIENTE, VA' +
        'L_IMPEGNATO, '
      
        '   QTA_IMPEGNATO, VAL_ORDINATO, QTA_ORDINATO, VAL_RESO_FORNITORE' +
        ', QTA_RESO_FORNITORE, '
      
        '   VAL_RESO_CLIENTE, QTA_RESO_CLIENTE, VAL_ALTRE_USCITE, QTA_ALT' +
        'RE_USCITE, '
      
        '   VAL_ALTRE_ENTRATE, QTA_ALTRE_ENTRATE, DATA_ULTIMA_VENDITA, VA' +
        'L_VENDITA, '
      '   QTA_VENDITA, VAL_ACQUISTI, QTA_ACQUISTI)'
      'values'
      
        '  (:CODICE_CAUSALE, :DESCR_CAUSALE, :DATA_ULTIMO_ACQUISTO, :FATT' +
        'URATO_ACQUISTI, '
      
        '   :FATTURATO_VENDITA, :NON_STAMPA, :MOV_NON_VALIDO, :COSTO_ULTI' +
        'MO, :CONTROCAUSALE, '
      
        '   :CONTROPARTE, :VAL_GIACENZA_INIZIALE, :QTA_GIACENZA_INIZIALE,' +
        ' :VAL_EVASO_FORNITORE, '
      
        '   :QTA_EVASA_FORNITORE, :VAL_EVASO_CLIENTE, :QTA_EVASA_CLIENTE,' +
        ' :VAL_IMPEGNATO, '
      
        '   :QTA_IMPEGNATO, :VAL_ORDINATO, :QTA_ORDINATO, :VAL_RESO_FORNI' +
        'TORE, :QTA_RESO_FORNITORE, '
      
        '   :VAL_RESO_CLIENTE, :QTA_RESO_CLIENTE, :VAL_ALTRE_USCITE, :QTA' +
        '_ALTRE_USCITE, '
      
        '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_ENTRATE, :DATA_ULTIMA_VENDITA,' +
        ' :VAL_VENDITA, '
      '   :QTA_VENDITA, :VAL_ACQUISTI, :QTA_ACQUISTI)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_CAUSALE,'
      '  DESCR_CAUSALE,'
      '  QTA_ACQUISTI,'
      '  VAL_ACQUISTI,'
      '  QTA_VENDITA,'
      '  VAL_VENDITA,'
      '  DATA_ULTIMA_VENDITA,'
      '  QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITE,'
      '  QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO,'
      '  VAL_ORDINATO,'
      '  QTA_IMPEGNATO,'
      '  VAL_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE,'
      '  CONTROPARTE,'
      '  CONTROCAUSALE,'
      '  COSTO_ULTIMO,'
      '  MOV_NON_VALIDO,'
      '  NON_STAMPA,'
      '  FATTURATO_VENDITA,'
      '  FATTURATO_ACQUISTI,'
      '  DATA_ULTIMO_ACQUISTO'
      'from TAB_CAUSALI_MAGAZZINO '
      'where'
      '  CODICE_CAUSALE = :CODICE_CAUSALE')
    SelectSQL.Strings = (
      'select * from TAB_CAUSALI_MAGAZZINO'
      'order by CODICE_CAUSALE, DESCR_CAUSALE')
    ModifySQL.Strings = (
      'update TAB_CAUSALI_MAGAZZINO'
      'set'
      '  CODICE_CAUSALE = :CODICE_CAUSALE,'
      '  DESCR_CAUSALE = :DESCR_CAUSALE,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  FATTURATO_ACQUISTI = :FATTURATO_ACQUISTI,'
      '  FATTURATO_VENDITA = :FATTURATO_VENDITA,'
      '  NON_STAMPA = :NON_STAMPA,'
      '  MOV_NON_VALIDO = :MOV_NON_VALIDO,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  CONTROCAUSALE = :CONTROCAUSALE,'
      '  CONTROPARTE = :CONTROPARTE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  VAL_IMPEGNATO = :VAL_IMPEGNATO,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  VAL_ALTRE_USCITE = :VAL_ALTRE_USCITE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  VAL_VENDITA = :VAL_VENDITA,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI'
      'where'
      '  CODICE_CAUSALE = :OLD_CODICE_CAUSALE')
    Left = 208
    Top = 360
    object ibTab_Cau_MagCODICE_CAUSALE: TIBStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE_CAUSALE'
      Required = True
      Size = 4
    end
    object ibTab_Cau_MagDESCR_CAUSALE: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR_CAUSALE'
      Size = 50
    end
    object ibTab_Cau_MagDATA_ULTIMO_ACQUISTO: TSmallintField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Visible = False
    end
    object ibTab_Cau_MagFATTURATO_ACQUISTI: TSmallintField
      FieldName = 'FATTURATO_ACQUISTI'
      Visible = False
    end
    object ibTab_Cau_MagFATTURATO_VENDITA: TSmallintField
      FieldName = 'FATTURATO_VENDITA'
      Visible = False
    end
    object ibTab_Cau_MagNON_STAMPA: TSmallintField
      FieldName = 'NON_STAMPA'
      Visible = False
    end
    object ibTab_Cau_MagMOV_NON_VALIDO: TSmallintField
      FieldName = 'MOV_NON_VALIDO'
      Visible = False
    end
    object ibTab_Cau_MagCOSTO_ULTIMO: TSmallintField
      FieldName = 'COSTO_ULTIMO'
      Visible = False
    end
    object ibTab_Cau_MagCONTROCAUSALE: TIBStringField
      FieldName = 'CONTROCAUSALE'
      Visible = False
      Size = 4
    end
    object ibTab_Cau_MagCONTROPARTE: TSmallintField
      FieldName = 'CONTROPARTE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_GIACENZA_INIZIALE: TSmallintField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_GIACENZA_INIZIALE: TSmallintField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_EVASO_FORNITORE: TSmallintField
      FieldName = 'VAL_EVASO_FORNITORE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_EVASA_FORNITORE: TSmallintField
      FieldName = 'QTA_EVASA_FORNITORE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_EVASO_CLIENTE: TSmallintField
      FieldName = 'VAL_EVASO_CLIENTE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_EVASA_CLIENTE: TSmallintField
      FieldName = 'QTA_EVASA_CLIENTE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_IMPEGNATO: TSmallintField
      FieldName = 'VAL_IMPEGNATO'
      Visible = False
    end
    object ibTab_Cau_MagQTA_IMPEGNATO: TSmallintField
      FieldName = 'QTA_IMPEGNATO'
      Visible = False
    end
    object ibTab_Cau_MagVAL_ORDINATO: TSmallintField
      FieldName = 'VAL_ORDINATO'
      Visible = False
    end
    object ibTab_Cau_MagQTA_ORDINATO: TSmallintField
      FieldName = 'QTA_ORDINATO'
      Visible = False
    end
    object ibTab_Cau_MagVAL_RESO_FORNITORE: TSmallintField
      FieldName = 'VAL_RESO_FORNITORE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_RESO_FORNITORE: TSmallintField
      FieldName = 'QTA_RESO_FORNITORE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_RESO_CLIENTE: TSmallintField
      FieldName = 'VAL_RESO_CLIENTE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_RESO_CLIENTE: TSmallintField
      FieldName = 'QTA_RESO_CLIENTE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_ALTRE_USCITE: TSmallintField
      FieldName = 'VAL_ALTRE_USCITE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_ALTRE_USCITE: TSmallintField
      FieldName = 'QTA_ALTRE_USCITE'
      Visible = False
    end
    object ibTab_Cau_MagVAL_ALTRE_ENTRATE: TSmallintField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Visible = False
    end
    object ibTab_Cau_MagQTA_ALTRE_ENTRATE: TSmallintField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Visible = False
    end
    object ibTab_Cau_MagDATA_ULTIMA_VENDITA: TSmallintField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Visible = False
    end
    object ibTab_Cau_MagVAL_VENDITA: TSmallintField
      FieldName = 'VAL_VENDITA'
      Visible = False
    end
    object ibTab_Cau_MagQTA_VENDITA: TSmallintField
      FieldName = 'QTA_VENDITA'
      Visible = False
    end
    object ibTab_Cau_MagVAL_ACQUISTI: TSmallintField
      FieldName = 'VAL_ACQUISTI'
      Visible = False
    end
    object ibTab_Cau_MagQTA_ACQUISTI: TSmallintField
      FieldName = 'QTA_ACQUISTI'
      Visible = False
    end
  end
  object ibqShowSZone: TIBQuery
    Tag = 2
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    SQL.Strings = (
      
        'select DESCR, CODICE_ZONA_ID, ID_CODICE_SOTTO_ZONE from TAB_SOTT' +
        'O_ZONE'
      'WHERE CODICE_ZONA_ID=:parIDZona')
    Left = 504
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'parIDZona'
        ParamType = ptUnknown
        Value = '0'
      end>
    object ibqShowSZoneDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibqShowSZoneCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object ibqShowSZoneID_CODICE_SOTTO_ZONE: TIBStringField
      FieldName = 'ID_CODICE_SOTTO_ZONE'
      Size = 7
    end
  end
  object ibqShowArtPerListini: TIBQuery
    Tag = 2
    Database = ibdbAzUni
    Transaction = ibtrDef
    OnCalcFields = ibqShowArtPerListiniCalcFields
    BufferChunks = 500
    SQL.Strings = (
      'select * from TAB_DET_LISTINO'
      'WHERE'
      'TAB_DET_LISTINO.CODICE_LISTINO=:parCodiceListino')
    UpdateObject = ibusqlShowArtPerListino
    Left = 472
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'parCodiceListino'
        ParamType = ptUnknown
        Value = ' '
      end>
    object ibqShowArtPerListiniCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 10
    end
    object ibqShowArtPerListiniCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqShowArtPerListiniSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibqShowArtPerListiniSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibqShowArtPerListiniSCONTATO: TSmallintField
      FieldName = 'SCONTATO'
    end
    object ibqShowArtPerListiniSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object ibqShowArtPerListiniPREZZO: TFloatField
      FieldName = 'PREZZO'
    end
    object ibqShowArtPerListiniPrezzo_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Prezzo_'
      Calculated = True
    end
    object ibqShowArtPerListiniDINAMICO: TSmallintField
      FieldName = 'DINAMICO'
    end
    object ibqShowArtPerListiniRICARICA_PERC: TSmallintField
      FieldName = 'RICARICA_PERC'
    end
    object ibqShowArtPerListiniRICARICA: TFloatField
      FieldName = 'RICARICA'
    end
    object ibqShowArtPerListiniORIGINE_IMP: TSmallintField
      FieldName = 'ORIGINE_IMP'
    end
    object ibqShowArtPerListiniID_CLIFOR: TIntegerField
      FieldName = 'ID_CLIFOR'
    end
    object ibqShowArtPerListiniPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
    end
    object ibqShowArtPerListiniIVA: TFloatField
      FieldName = 'IVA'
    end
    object ibqShowArtPerListiniArt_descr: TStringField
      FieldKind = fkLookup
      FieldName = 'Art_descr'
      LookupDataSet = ibTab_Articoli_
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'DESCR'
      KeyFields = 'CODICE_ARTICOLO'
      Size = 200
      Lookup = True
    end
    object ibqShowArtPerListiniPrezzo_Ivato_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Prezzo_Ivato_'
      Calculated = True
    end
    object ibqShowArtPerListiniTIPO_DINAMICO: TSmallintField
      FieldName = 'TIPO_DINAMICO'
    end
    object ibqShowArtPerListiniBASE: TSmallintField
      FieldName = 'BASE'
    end
    object ibqShowArtPerListiniBASE_TIPO: TIBStringField
      FieldName = 'BASE_TIPO'
      Size = 1
    end
  end
  object ibqShowCAB: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CAB'
      'WHERE ABI_ID=:parIDABI'
      '')
    Left = 400
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parIDABI'
        ParamType = ptUnknown
      end>
    object ibqShowCABDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 50
    end
    object ibqShowCABLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object ibqShowCABINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object ibqShowCABCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object ibqShowCABPROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
    end
    object ibqShowCABCAP_ID: TIBStringField
      FieldName = 'CAP_ID'
      Size = 5
    end
    object ibqShowCABABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 5
    end
    object ibqShowCABID_CAB: TIBStringField
      FieldName = 'ID_CAB'
      Size = 5
    end
    object ibqShowCABCOMUNE: TIBStringField
      FieldName = 'COMUNE'
      Size = 50
    end
    object ibqShowCABPROV: TIBStringField
      FieldName = 'PROV'
      Size = 5
    end
  end
  object ibTab_Cat_Cli_x_Ag: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 30
    IndexFieldNames = 'AGENTE_CODICE_ID'
    MasterFields = 'CODICE'
    MasterSource = dsoTab_Agenti
    TableName = 'TAB_AGENTI_CAT_CLIENTI'
    Left = 72
    Top = 152
    object ibTab_Cat_Cli_x_AgAGENTE_CODICE_ID: TIBStringField
      FieldName = 'AGENTE_CODICE_ID'
      Visible = False
      Size = 4
    end
    object ibTab_Cat_Cli_x_AgPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object ibTab_Cat_Cli_x_AgCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Visible = False
      Size = 4
    end
    object ibTab_Cat_Cli_x_AgCatCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cat. Cliente'
      LookupDataSet = ibTab_Cat_Cli
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CATEGORIA_CLIENTE_ID'
      Lookup = True
    end
  end
  object ibTab_Cat_Merc_x_Ag: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    IndexFieldNames = 'AGENTE_CODICE'
    MasterFields = 'CODICE'
    MasterSource = dsoTab_Agenti
    TableName = 'TAB_AGENTI_CAT_MERC'
    Left = 72
    Top = 200
    object ibTab_Cat_Merc_x_AgAGENTE_CODICE: TIBStringField
      FieldName = 'AGENTE_CODICE'
      Visible = False
      Size = 4
    end
    object ibTab_Cat_Merc_x_AgPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object ibTab_Cat_Merc_x_AgCATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Visible = False
    end
    object ibTab_Cat_Merc_x_AgCatMerc: TStringField
      FieldKind = fkLookup
      FieldName = 'Cat. Merc.'
      LookupDataSet = ibTab_Cat_Merc
      LookupKeyFields = 'ID_CATEGORIA_MERCEOLOGICA'
      LookupResultField = 'DESCR'
      KeyFields = 'CATEGORIA_MERCEOLOGICA_ID'
      Lookup = True
    end
  end
  object ibqRicerca_ContArt: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      
        'select Count(*) from TAB_CONTABILE_ARTICOLO WHERE CODICE_ARTICOL' +
        'O=:parCod_Art and DEPOSITO_ID=:parCod_Dep')
    Left = 352
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parCod_Art'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parCod_Dep'
        ParamType = ptUnknown
      end>
    object ibqRicerca_ContArtCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object ibqRicerca_Art: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      
        'select CODICE_ARTICOLO, DESCR, DESCR2, PREZZO_BASE, COSTO_STANDA' +
        'RT,PREZZO_IVATO, DESCR_CODE_BAR from TAB_ARTICOLI')
    Left = 528
    Top = 368
    object ibqRicerca_ArtCODICE_ARTICOLO: TIBStringField
      DisplayLabel = 'Codice Articolo'
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object ibqRicerca_ArtDESCR: TIBStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCR'
      Size = 100
    end
    object ibqRicerca_ArtDESCR2: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 257
    end
    object ibqRicerca_ArtPREZZO_BASE: TFloatField
      DisplayLabel = 'Prezzo base'
      FieldName = 'PREZZO_BASE'
      currency = True
    end
    object ibqRicerca_ArtCOSTO_STANDART: TFloatField
      DisplayLabel = 'Costo standart'
      FieldName = 'COSTO_STANDART'
      currency = True
    end
    object ibqRicerca_ArtDESCR_CODE_BAR: TIBStringField
      DisplayLabel = 'Descr. barcode'
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object ibqRicerca_ArtPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      currency = True
    end
  end
  object dsoDoc_Det: TDataSource
    DataSet = ibqryDetDoc
    Left = 392
    Top = 256
  end
  object r_ibtCont_Art: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 5000
    SQL.Strings = (
      
        'select CODICE_ARTICOLO, DEPOSITO_ID, CLI_FOR_ID, TIPO_CLI_FOR_ID' +
        ', DESCR, QTA_ACQUISTI, VAL_ACQUISTI, DATA_ULTIMO_ACQUISTO, QTA_V' +
        'ENDITA, VAL_VENDITA, DATA_ULTIMA_VENDITA, QTA_ALTRE_ENTRATE, VAL' +
        '_ALTRE_ENTRATE, QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLI' +
        'ENTE, VAL_RESO_CLIENTE, QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, ' +
        'QTA_ORDINATO, VAL_ORDINATO, QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QT' +
        'A_EVASA_CLIENTE, VAL_EVASO_CLIENTE, QTA_EVASA_FORNITORE, VAL_EVA' +
        'SO_FORNITORE, QTA_GIACENZA_INIZIALE, COSTO_GIACENZA_INIZIALE, VA' +
        'L_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, COSTO_ULTI' +
        'MO, MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ from TAB_CON' +
        'TABILE_ARTICOLO'
      'ORDER by CODICE_ARTICOLO')
    Left = 336
    Top = 336
    object r_ibtCont_ArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object r_ibtCont_ArtDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Size = 3
    end
    object r_ibtCont_ArtCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object r_ibtCont_ArtTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object r_ibtCont_ArtDESCR: TIBStringField
      DisplayWidth = 100
      FieldName = 'DESCR'
      Size = 100
    end
    object r_ibtCont_ArtQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
    end
    object r_ibtCont_ArtVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      currency = True
    end
    object r_ibtCont_ArtDATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
    end
    object r_ibtCont_ArtQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
    end
    object r_ibtCont_ArtVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      currency = True
    end
    object r_ibtCont_ArtDATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
    end
    object r_ibtCont_ArtQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
    end
    object r_ibtCont_ArtVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      currency = True
    end
    object r_ibtCont_ArtQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
    end
    object r_ibtCont_ArtVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      currency = True
    end
    object r_ibtCont_ArtQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
    end
    object r_ibtCont_ArtVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      currency = True
    end
    object r_ibtCont_ArtQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
    end
    object r_ibtCont_ArtVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      currency = True
    end
    object r_ibtCont_ArtQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
    end
    object r_ibtCont_ArtVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      currency = True
    end
    object r_ibtCont_ArtQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
    end
    object r_ibtCont_ArtVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      currency = True
    end
    object r_ibtCont_ArtQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
    end
    object r_ibtCont_ArtVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      currency = True
    end
    object r_ibtCont_ArtQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
    end
    object r_ibtCont_ArtVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      currency = True
    end
    object r_ibtCont_ArtQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
    end
    object r_ibtCont_ArtCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      currency = True
    end
    object r_ibtCont_ArtVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      currency = True
    end
    object r_ibtCont_ArtGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
    end
    object r_ibtCont_ArtDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
    end
    object r_ibtCont_ArtCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      currency = True
    end
    object r_ibtCont_ArtMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      currency = True
    end
    object r_ibtCont_ArtULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      currency = True
    end
    object r_ibtCont_ArtMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      currency = True
    end
    object r_ibtCont_ArtDeposito: TStringField
      FieldKind = fkLookup
      FieldName = 'Deposito'
      LookupDataSet = IBQDepositi
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'DEPOSITO_ID'
      Lookup = True
    end
  end
  object r_qBrogliaccio: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      
        'SELECT tab_det_doc.*, TAB_DOCUMENTI.* ,tab_causali_magazzino.mov' +
        '_non_valido as TIPOMOV,tab_causali_magazzino.descr_causale as ca' +
        'usale_descr,TAB_CONTABILE_ARTICOLO.giacenza_attuale,TAB_CONTABIL' +
        'E_ARTICOLO.ULT_COSTO_ACQ,tab_cli_for.denominazione as CliFornDes' +
        'cr,distinte.COSTO as COSTOD,tab_depositi.descr as deposito'
      'FROM TAB_DET_DOC'
      
        ' JOIN TAB_DOCUMENTI ON (TAB_DOCUMENTI.id_documento = TAB_DET_DOC' +
        '.doc_id)'
      'JOIN TAB_causali_magazzino ON'
      
        '(TAB_DOCUMENTI.causale_magazzino=TAB_causali_magazzino.codice_ca' +
        'usale)'
      'JOIN TAB_cli_for ON'
      '(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)'
      
        'JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_a' +
        'rticolo = TAB_DET_DOC.codice_Articolo) and'
      '(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))'
      'join tab_depositi on'
      '(TAB_Det_doc.dep=tab_depositi.codice)'
      ''
      
        'left join distinte on Tab_det_doc.codice_articolo=distinte.codic' +
        'e_articolo'
      'ORDER BY  TAB_DET_DOC.DEP,  TAB_DET_DOC.codice_articolo')
    Left = 72
    Top = 296
    object r_qBrogliaccioDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object r_qBrogliaccioCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object r_qBrogliaccioDESCR: TIBStringField
      DisplayWidth = 100
      FieldName = 'DESCR'
      Size = 100
    end
    object r_qBrogliaccioUNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object r_qBrogliaccioQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##.00'
    end
    object r_qBrogliaccioSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccioSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccioSCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccioCOSTO: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'COSTO'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccioDEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object r_qBrogliaccioID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object r_qBrogliaccioDATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object r_qBrogliaccioNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object r_qBrogliaccioSERIE_DOC: TIBStringField
      DisplayWidth = 10
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object r_qBrogliaccioTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object r_qBrogliaccioCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object r_qBrogliaccioCAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object r_qBrogliaccioCODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object r_qBrogliaccioIMPORTO_SCONTO: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##'
    end
    object r_qBrogliaccioIMPORTO_CON_IVA: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##'
    end
    object r_qBrogliaccioQTA_UM: TFloatField
      FieldName = 'QTA_UM'
    end
    object r_qBrogliaccioTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
    end
    object r_qBrogliaccioLISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object r_qBrogliaccioCOL: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object r_qBrogliaccioID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object r_qBrogliaccioNUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object r_qBrogliaccioTIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object r_qBrogliaccioCOSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object r_qBrogliaccioFATTCONV: TFloatField
      FieldName = 'FATTCONV'
    end
    object r_qBrogliaccioSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object r_qBrogliaccioSCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object r_qBrogliaccioIMPORTO: TFloatField
      FieldName = 'IMPORTO'
    end
    object r_qBrogliaccioIMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object r_qBrogliaccioOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object r_qBrogliaccioPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object r_qBrogliaccioTIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object r_qBrogliaccioIVATO: TFloatField
      FieldName = 'IVATO'
    end
    object r_qBrogliaccioCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object r_qBrogliaccioDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object r_qBrogliaccioRIF_A: TSmallintField
      FieldName = 'RIF_A'
    end
    object r_qBrogliaccioRIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object r_qBrogliaccioRIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object r_qBrogliaccioRIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object r_qBrogliaccioRIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object r_qBrogliaccioRIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object r_qBrogliaccioRIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object r_qBrogliaccioRIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object r_qBrogliaccioRIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object r_qBrogliaccioRIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object r_qBrogliaccioRIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object r_qBrogliaccioPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object r_qBrogliaccioRIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object r_qBrogliaccioRIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object r_qBrogliaccioRIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object r_qBrogliaccioTOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object r_qBrogliaccioPREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object r_qBrogliaccioSCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object r_qBrogliaccioPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object r_qBrogliaccioTESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object r_qBrogliaccioCAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object r_qBrogliaccioTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object r_qBrogliaccioDA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object r_qBrogliaccioCONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object r_qBrogliaccioCONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object r_qBrogliaccioCONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object r_qBrogliaccioCONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object r_qBrogliaccioATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object r_qBrogliaccioSUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object r_qBrogliaccioDATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object r_qBrogliaccioDATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object r_qBrogliaccioDATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object r_qBrogliaccioSTATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object r_qBrogliaccioSTATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object r_qBrogliaccioMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object r_qBrogliaccioCAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object r_qBrogliaccioKINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object r_qBrogliaccioNS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object r_qBrogliaccioVS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object r_qBrogliaccioCAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object r_qBrogliaccioPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object r_qBrogliaccioBANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object r_qBrogliaccioBANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object r_qBrogliaccioVETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object r_qBrogliaccioVETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object r_qBrogliaccioVETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object r_qBrogliaccioPORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object r_qBrogliaccioASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object r_qBrogliaccioSPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object r_qBrogliaccioPESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object r_qBrogliaccioPESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object r_qBrogliaccioCUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object r_qBrogliaccioDESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object r_qBrogliaccioIMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object r_qBrogliaccioSCONTO11: TFloatField
      FieldName = 'SCONTO11'
    end
    object r_qBrogliaccioAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object r_qBrogliaccioDATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object r_qBrogliaccioNRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object r_qBrogliaccioSCONTO21: TFloatField
      FieldName = 'SCONTO21'
    end
    object r_qBrogliaccioIMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
    end
    object r_qBrogliaccioNOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object r_qBrogliaccioSOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object r_qBrogliaccioIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object r_qBrogliaccioCOD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object r_qBrogliaccioCOD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object r_qBrogliaccioACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object r_qBrogliaccioATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object r_qBrogliaccioSUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object r_qBrogliaccioSOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object r_qBrogliaccioREPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object r_qBrogliaccioRILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object r_qBrogliaccioORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object r_qBrogliaccioFATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object r_qBrogliaccioTIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object r_qBrogliaccioST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object r_qBrogliaccioIVATO1: TSmallintField
      FieldName = 'IVATO1'
    end
    object r_qBrogliaccioSTAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object r_qBrogliaccioDATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object r_qBrogliaccioMEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object r_qBrogliaccioTOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
    end
    object r_qBrogliaccioTIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object r_qBrogliaccioTOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
    end
    object r_qBrogliaccioCAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object r_qBrogliaccioNUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object r_qBrogliaccioSERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object r_qBrogliaccioMESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object r_qBrogliaccioALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object r_qBrogliaccioSPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object r_qBrogliaccioSPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object r_qBrogliaccioSPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object r_qBrogliaccioSPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object r_qBrogliaccioSPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object r_qBrogliaccioSPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object r_qBrogliaccioCAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object r_qBrogliaccioPER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object r_qBrogliaccioIMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
    end
    object r_qBrogliaccioTOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
    end
    object r_qBrogliaccioTOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
    end
    object r_qBrogliaccioTOTALE: TFloatField
      FieldName = 'TOTALE'
    end
    object r_qBrogliaccioTOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
    end
    object r_qBrogliaccioTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
    end
    object r_qBrogliaccioTOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
    end
    object r_qBrogliaccioTOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
    end
    object r_qBrogliaccioTOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
    end
    object r_qBrogliaccioCODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object r_qBrogliaccioALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object r_qBrogliaccioIMPON1: TFloatField
      FieldName = 'IMPON1'
    end
    object r_qBrogliaccioIMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
    end
    object r_qBrogliaccioCODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object r_qBrogliaccioALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object r_qBrogliaccioIMPON2: TFloatField
      FieldName = 'IMPON2'
    end
    object r_qBrogliaccioIMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
    end
    object r_qBrogliaccioCODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object r_qBrogliaccioALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object r_qBrogliaccioIMPON3: TFloatField
      FieldName = 'IMPON3'
    end
    object r_qBrogliaccioIMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
    end
    object r_qBrogliaccioCODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object r_qBrogliaccioALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object r_qBrogliaccioIMPON4: TFloatField
      FieldName = 'IMPON4'
    end
    object r_qBrogliaccioIMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
    end
    object r_qBrogliaccioCODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object r_qBrogliaccioALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object r_qBrogliaccioIMPON5: TFloatField
      FieldName = 'IMPON5'
    end
    object r_qBrogliaccioIMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
    end
    object r_qBrogliaccioTOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object r_qBrogliaccioALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object r_qBrogliaccioCLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object r_qBrogliaccioACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object r_qBrogliaccioTEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object r_qBrogliaccioTEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object r_qBrogliaccioTEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object r_qBrogliaccioIVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object r_qBrogliaccioIVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object r_qBrogliaccioVETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object r_qBrogliaccioVETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object r_qBrogliaccioCLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object r_qBrogliaccioPIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object r_qBrogliaccioALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object r_qBrogliaccioA: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object r_qBrogliaccioB: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object r_qBrogliaccioC: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object r_qBrogliaccioCA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object r_qBrogliaccioGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object r_qBrogliaccioCOSTOD: TFloatField
      FieldName = 'COSTOD'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
    object r_qBrogliaccioOP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object r_qBrogliaccioOP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object r_qBrogliaccioOP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object r_qBrogliaccioOP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object r_qBrogliaccioRATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object r_qBrogliaccioRATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object r_qBrogliaccioRATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object r_qBrogliaccioRATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object r_qBrogliaccioRATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object r_qBrogliaccioRATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object r_qBrogliaccioRATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object r_qBrogliaccioRATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object r_qBrogliaccioRATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object r_qBrogliaccioRATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object r_qBrogliaccioRATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object r_qBrogliaccioRATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object r_qBrogliaccioCLIFORNDESCR: TIBStringField
      FieldName = 'CLIFORNDESCR'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object r_qBrogliaccioTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"TAB_CAUSALI_MAGAZZINO"."MOV_NON_VALIDO"'
    end
    object r_qBrogliaccioCAUSALE_DESCR: TIBStringField
      FieldName = 'CAUSALE_DESCR'
      Origin = '"TAB_CAUSALI_MAGAZZINO"."DESCR_CAUSALE"'
      Size = 50
    end
    object r_qBrogliaccioDEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object r_qBrogliaccioDESCR1: TIBStringField
      FieldName = 'deposito3'
      Origin = '"TAB_DEPOSITI"."DESCR"'
      Size = 50
    end
    object r_qBrogliaccioULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
      currency = True
    end
  end
  object r_dsoBrogliaccio: TDataSource
    DataSet = r_qBrogliaccio
    Left = 128
    Top = 304
  end
  object r_qCliForn: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from TAB_CLI_FOR'
      'order by denominazione')
    Left = 64
    Top = 104
    object r_qCliFornID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object r_qCliFornTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object r_qCliFornDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object r_qCliFornCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object r_qCliFornNOME: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object r_qCliFornNOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object r_qCliFornFULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object r_qCliFornINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object r_qCliFornCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object r_qCliFornPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object r_qCliFornCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object r_qCliFornPERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object r_qCliFornPIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object r_qCliFornCONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object r_qCliFornMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object r_qCliFornPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 5
    end
    object r_qCliFornCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object r_qCliFornCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object r_qCliFornCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object r_qCliFornAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object r_qCliFornPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object r_qCliFornLINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object r_qCliFornCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object r_qCliFornSCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object r_qCliFornSCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object r_qCliFornTEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object r_qCliFornTEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object r_qCliFornFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object r_qCliFornEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object r_qCliFornINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object r_qCliFornDATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object r_qCliFornSESSO: TIntegerField
      FieldName = 'SESSO'
    end
    object r_qCliFornTITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object r_qCliFornPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object r_qCliFornFIDO: TFloatField
      FieldName = 'FIDO'
    end
    object r_qCliFornABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object r_qCliFornFATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object r_qCliFornACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object r_qCliFornIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object r_qCliFornPOS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object r_qCliFornCODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object r_qCliFornRIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object r_qCliFornESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object r_qCliFornRIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object r_qCliFornESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object r_qCliFornTIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object r_qCliFornNAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object r_qCliFornNAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object r_qCliFornRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object r_qCliFornRISCHIO: TFloatField
      FieldName = 'RISCHIO'
    end
    object r_qCliFornGG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object r_qCliFornGG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object r_qCliFornCONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object r_qCliFornTIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object r_qCliFornCERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object r_qCliFornDENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object r_qCliFornINDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object r_qCliFornLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object r_qCliFornCOMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object r_qCliFornCAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object r_qCliFornABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object r_qCliFornTITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object r_qCliFornCOMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object r_qCliFornCAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object r_qCliFornNAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object r_qCliFornCOM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object r_qCliFornCAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object r_qCliFornPR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object r_qCliFornCAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object r_qCliFornABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object r_qCliFornNAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object r_qCliFornFASON: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object r_qCliFornNOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object r_qCliFornCG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object r_qCliFornCA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object r_qCliFornCOD2: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
  end
  object r_qVisDoc: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 5000
    SQL.Strings = (
      
        'select ID_DOCUMENTO, CLIFOR_ID, TIPO_CLIFOR, DATA_DOC, AGENTE_ID' +
        ', NUM_DOC, TOTALE_IVATO, TOTALE, PAGAMENTO_ID from TAB_DOCUMENTI' +
        ' '
      'ORDER BY DATA_DOC,NUM_DOC')
    Left = 72
    Top = 240
    object r_qVisDocID_DOCUMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object r_qVisDocCLIFOR_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'CLIFOR_ID'
    end
    object r_qVisDocNUM_DOC: TIntegerField
      DisplayWidth = 12
      FieldName = 'NUM_DOC'
    end
    object r_qVisDocCLIFORDESCR: TStringField
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'CLIFORDESCR'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Size = 100
      Lookup = True
    end
    object r_qVisDocDATA_DOC: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DATA_DOC'
    end
    object r_qVisDocAGENTE_ID: TIBStringField
      DisplayWidth = 12
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object r_qVisDocTIPO_CLIFOR: TSmallintField
      DisplayWidth = 14
      FieldName = 'TIPO_CLIFOR'
    end
    object r_qVisDocTOTALE: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object r_qVisDocTOTALE_IVATO: TFloatField
      DisplayWidth = 16
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object r_qVisDocPAGAMENTO_ID: TIBStringField
      DisplayWidth = 17
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
  end
  object ibqOrdini: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    AfterInsert = ibqOrdiniAfterInsert
    AfterOpen = ibqOrdiniAfterOpen
    AfterRefresh = ibqOrdiniAfterOpen
    AfterScroll = ibqOrdiniAfterOpen
    BeforeDelete = ibqOrdiniBeforeDelete
    OnCalcFields = ibqOrdiniCalcFields
    SQL.Strings = (
      'select * from ordini order by numero,data')
    UpdateObject = ibupOrd
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_ORDINI'
    Left = 440
    Top = 416
    object ibqOrdiniNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"ORDINI"."NUMERO"'
    end
    object ibqOrdiniDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"ORDINI"."DATA"'
    end
    object ibqOrdiniCLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Origin = '"ORDINI"."CLI_NOM"'
      Size = 100
    end
    object ibqOrdiniFOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      Origin = '"ORDINI"."FOR_NOM"'
      Size = 100
    end
    object ibqOrdiniPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"ORDINI"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqOrdiniAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"ORDINI"."AGENTE_ID"'
      Size = 4
    end
    object ibqOrdiniAGENTE_NOM: TIBStringField
      FieldName = 'AGENTE_NOM'
      Origin = '"ORDINI"."AGENTE_NOM"'
      Size = 100
    end
    object ibqOrdiniCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = '"ORDINI"."CLI_ID"'
    end
    object ibqOrdiniFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
      Origin = '"ORDINI"."FOR_ID"'
    end
    object ibqOrdiniPAGAM_ID: TIBStringField
      FieldName = 'PAGAM_ID'
      Origin = '"ORDINI"."PAGAM_ID"'
      Size = 4
    end
    object ibqOrdiniNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"ORDINI"."NOTE"'
      Size = 2500
    end
    object ibqOrdiniBANCA: TIBStringField
      FieldName = 'BANCA'
      Origin = '"ORDINI"."BANCA"'
      Size = 5
    end
    object ibqOrdiniSPEDOZIONE_ID: TIBStringField
      FieldName = 'SPEDOZIONE_ID'
      Origin = '"ORDINI"."SPEDOZIONE_ID"'
      Size = 4
    end
    object ibqOrdiniCORIERE: TIBStringField
      FieldName = 'CORIERE'
      Origin = '"ORDINI"."CORIERE"'
      Size = 100
    end
    object ibqOrdiniPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"ORDINI"."PORTO_ID"'
      Size = 4
    end
    object ibqOrdiniSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"ORDINI"."SCONTO1"'
    end
    object ibqOrdiniSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"ORDINI"."SCONTO2"'
    end
    object ibqOrdiniSCONTO_MON: TFloatField
      FieldName = 'SCONTO_MON'
      Origin = '"ORDINI"."SCONTO_MON"'
      currency = True
    end
    object ibqOrdiniPROVV1: TFloatField
      FieldName = 'PROVV1'
      Origin = '"ORDINI"."PROVV1"'
    end
    object ibqOrdiniPROVV2: TFloatField
      FieldName = 'PROVV2'
      Origin = '"ORDINI"."PROVV2"'
    end
    object ibqOrdiniPROVV_MON: TFloatField
      FieldName = 'PROVV_MON'
      Origin = '"ORDINI"."PROVV_MON"'
      currency = True
    end
    object ibqOrdiniPROT: TIBStringField
      FieldName = 'PROT'
      Origin = '"ORDINI"."PROT"'
    end
    object ibqOrdiniTOTALE_IMPON: TFloatField
      FieldName = 'TOTALE_IMPON'
      Origin = '"ORDINI"."TOTALE_IMPON"'
      currency = True
    end
    object ibqOrdiniTOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"ORDINI"."TOTALE"'
      currency = True
    end
    object ibqOrdiniTOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"ORDINI"."TOTALE_IVA"'
      currency = True
    end
    object ibqOrdiniTOTALE_PROVV: TFloatField
      FieldName = 'TOTALE_PROVV'
      Origin = '"ORDINI"."TOTALE_PROVV"'
      currency = True
    end
    object ibqOrdiniTOTALE_SCONTO: TFloatField
      FieldName = 'TOTALE_SCONTO'
      Origin = '"ORDINI"."TOTALE_SCONTO"'
      currency = True
    end
    object ibqOrdiniBANCA_NOM: TIBStringField
      FieldName = 'BANCA_NOM'
      Origin = '"ORDINI"."BANCA_NOM"'
      Size = 100
    end
    object ibqOrdiniPAGAM_NOM: TIBStringField
      FieldName = 'PAGAM_NOM'
      Origin = '"ORDINI"."PAGAM_NOM"'
      Size = 500
    end
    object ibqOrdiniPORTO_NOM: TIBStringField
      FieldName = 'PORTO_NOM'
      Origin = '"ORDINI"."PORTO_NOM"'
      Size = 500
    end
    object ibqOrdiniSPEDIZ_NOM: TIBStringField
      FieldName = 'SPEDIZ_NOM'
      Origin = '"ORDINI"."SPEDIZ_NOM"'
      Size = 500
    end
    object ibqOrdiniCLI_IND: TIBStringField
      FieldName = 'CLI_IND'
      Origin = '"ORDINI"."CLI_IND"'
      Size = 255
    end
    object ibqOrdiniFOR_IND: TIBStringField
      FieldName = 'FOR_IND'
      Origin = '"ORDINI"."FOR_IND"'
      Size = 255
    end
    object ibqOrdiniCLI_TEL: TIBStringField
      FieldName = 'CLI_TEL'
      Origin = '"ORDINI"."CLI_TEL"'
      Size = 26
    end
    object ibqOrdiniFOR_TEL: TIBStringField
      FieldName = 'FOR_TEL'
      Origin = '"ORDINI"."FOR_TEL"'
      Size = 26
    end
    object ibqOrdiniFOR_PIVA: TIBStringField
      FieldName = 'FOR_PIVA'
      Origin = '"ORDINI"."FOR_PIVA"'
      Size = 30
    end
    object ibqOrdiniCLI_PIVA: TIBStringField
      FieldName = 'CLI_PIVA'
      Origin = '"ORDINI"."CLI_PIVA"'
      Size = 30
    end
    object ibqOrdiniCLI_IND2: TIBStringField
      FieldName = 'CLI_IND2'
      Origin = '"ORDINI"."CLI_IND2"'
      Size = 255
    end
    object ibqOrdiniFOR_IND2: TIBStringField
      FieldName = 'FOR_IND2'
      Origin = '"ORDINI"."FOR_IND2"'
      Size = 255
    end
    object ibqOrdiniDATA_SPEDIZIONE_TEXT: TIBStringField
      FieldName = 'DATA_SPEDIZIONE_TEXT'
      Origin = '"ORDINI"."DATA_SPEDIZIONE_TEXT"'
      Size = 50
    end
    object ibqOrdiniCLI_TEL2: TIBStringField
      FieldName = 'CLI_TEL2'
      Origin = '"ORDINI"."CLI_TEL2"'
      Size = 50
    end
    object ibqOrdiniCLI_FAX2: TIBStringField
      FieldName = 'CLI_FAX2'
      Origin = '"ORDINI"."CLI_FAX2"'
      Size = 50
    end
    object ibqOrdiniFOR_TEL2: TIBStringField
      FieldName = 'FOR_TEL2'
      Origin = '"ORDINI"."FOR_TEL2"'
      Size = 50
    end
    object ibqOrdiniFOR_FAX2: TIBStringField
      FieldName = 'FOR_FAX2'
      Origin = '"ORDINI"."FOR_FAX2"'
      Size = 50
    end
    object ibqOrdiniDESTINAZIONE: TIBStringField
      FieldName = 'DESTINAZIONE'
      Origin = '"ORDINI"."DESTINAZIONE"'
      Size = 500
    end
    object ibqOrdiniCABABI: TIBStringField
      FieldName = 'CABABI'
      Origin = '"ORDINI"."CABABI"'
      Size = 50
    end
    object ibqOrdiniDATA_SPEDIZIONE: TDateTimeField
      FieldName = 'DATA_SPEDIZIONE'
      Origin = '"ORDINI"."DATA_SPEDIZIONE"'
    end
    object ibqOrdiniSNRP: TIBStringField
      FieldName = 'SNRP'
      Origin = '"ORDINI"."SNRP"'
      Size = 1
    end
    object ibqOrdiniACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"ORDINI"."ACCONTO"'
    end
    object ibqOrdiniTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ORDINI"."TIPO"'
      Size = 4
    end
    object ibqOrdiniCA_DESCR: TIBStringField
      FieldName = 'CA_DESCR'
      Origin = '"ORDINI"."CA_DESCR"'
      Size = 50
    end
    object ibqOrdiniCG_DESCR: TIBStringField
      FieldName = 'CG_DESCR'
      Origin = '"ORDINI"."CG_DESCR"'
      Size = 50
    end
    object ibqOrdiniCA: TIBStringField
      FieldName = 'CA'
      Origin = '"ORDINI"."CA"'
      Size = 5
    end
    object ibqOrdiniCG: TIBStringField
      FieldName = 'CG'
      Origin = '"ORDINI"."CG"'
      Size = 5
    end
    object ibqOrdiniACQ: TIBStringField
      FieldName = 'ACQ'
      Origin = '"ORDINI"."ACQ"'
      Size = 1
    end
    object ibqOrdiniQQQ: TFloatField
      FieldName = 'QQQ'
      Origin = '"ORDINI"."QQQ"'
    end
    object ibqOrdiniTOTALE_QTA: TFloatField
      FieldName = 'TOTALE_QTA'
      Origin = '"ORDINI"."TOTALE_QTA"'
    end
    object ibqOrdiniCR: TIBStringField
      FieldName = 'CR'
      Origin = '"ORDINI"."CR"'
      Size = 5
    end
    object ibqOrdiniTotale_Lordo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Totale_Lordo'
      currency = True
      Calculated = True
    end
    object ibqOrdiniSITO_CLI: TIBStringField
      FieldName = 'SITO_CLI'
      Origin = '"ORDINI"."SITO_CLI"'
      Size = 100
    end
    object ibqOrdiniEMAIL_FOR: TIBStringField
      FieldName = 'EMAIL_FOR'
      Origin = '"ORDINI"."EMAIL_FOR"'
      Size = 100
    end
    object ibqOrdiniSITO_FOR: TIBStringField
      FieldName = 'SITO_FOR'
      Origin = '"ORDINI"."SITO_FOR"'
      Size = 100
    end
    object ibqOrdiniEMAIL_CLI: TIBStringField
      FieldName = 'EMAIL_CLI'
      Origin = '"ORDINI"."EMAIL_CLI"'
      Size = 100
    end
  end
  object ibspNext_Num_Ord: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_NEXT_NUM_ORD'
    Left = 432
    Top = 480
  end
  object ibqOrd_Det: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    AfterInsert = ibqOrd_DetAfterInsert
    BeforeOpen = ibqOrd_DetBeforeOpen
    SQL.Strings = (
      'select * from ODR_DETT'
      'Where FK_CODICE = :parPK_Ord'
      'order by CODICE_ART')
    UpdateObject = ibupOrddet
    GeneratorField.Field = 'ID_CODICE'
    GeneratorField.Generator = 'GEN_ORD_DET'
    Left = 472
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parPK_Ord'
        ParamType = ptUnknown
      end>
    object ibqOrd_DetFK_CODICE: TIntegerField
      FieldName = 'FK_CODICE'
    end
    object ibqOrd_DetCODICE_ART: TIBStringField
      FieldName = 'CODICE_ART'
    end
    object ibqOrd_DetDESCR: TIBStringField
      DisplayWidth = 100
      FieldName = 'DESCR'
      Size = 100
    end
    object ibqOrd_DetPREZZO_UNITA: TFloatField
      FieldName = 'PREZZO_UNITA'
      currency = True
    end
    object ibqOrd_DetSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibqOrd_DetSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibqOrd_DetSCONTO_MON: TFloatField
      FieldName = 'SCONTO_MON'
      currency = True
    end
    object ibqOrd_DetPREZZO_TOT: TFloatField
      FieldName = 'PREZZO_TOT'
      currency = True
    end
    object ibqOrd_DetSCONTO_TOT: TFloatField
      FieldName = 'SCONTO_TOT'
      currency = True
    end
    object ibqOrd_DetPREZZO_SCONTATO: TFloatField
      FieldName = 'PREZZO_SCONTATO'
      currency = True
    end
    object ibqOrd_DetPROVV: TFloatField
      FieldName = 'PROVV'
    end
    object ibqOrd_DetCAPO_AREA: TFloatField
      FieldName = 'CAPO_AREA'
      currency = True
    end
    object ibqOrd_DetCAPO_GRUPPO: TFloatField
      FieldName = 'CAPO_GRUPPO'
      currency = True
    end
    object ibqOrd_DetAGENTE: TFloatField
      FieldName = 'AGENTE'
      currency = True
    end
    object ibqOrd_DetQTA: TFloatField
      FieldName = 'QTA'
      DisplayFormat = '#,##.000'
    end
    object ibqOrd_DetID_CODICE: TFloatField
      FieldName = 'ID_CODICE'
    end
    object ibqOrd_DetDIAM: TFloatField
      FieldName = 'DIAM'
    end
    object ibqOrd_DetQUALITA: TIBStringField
      FieldName = 'QUALITA'
      Size = 30
    end
    object ibqOrd_DetBARRE: TIBStringField
      FieldName = 'BARRE'
      Size = 30
    end
    object ibqOrd_DetPREZZODEST: TFloatField
      FieldName = 'PREZZODEST'
      currency = True
    end
    object ibqOrd_DetEXTRA: TFloatField
      FieldName = 'EXTRA'
      currency = True
    end
    object ibqOrd_DetUM: TIBStringField
      FieldName = 'UM'
      Size = 2
    end
    object ibqOrd_DetFINITURA: TIBStringField
      FieldName = 'FINITURA'
      Size = 30
    end
    object ibqOrd_DetACCIAIO: TIBStringField
      FieldName = 'ACCIAIO'
      Size = 30
    end
    object ibqOrd_DetNORMA: TIBStringField
      FieldName = 'NORMA'
      Size = 30
    end
    object ibqOrd_DetLATO: TFloatField
      FieldName = 'LATO'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetSPESSORE: TFloatField
      FieldName = 'SPESSORE'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetLUNGHEZZA: TFloatField
      FieldName = 'LUNGHEZZA'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetLARGHEZZA: TFloatField
      FieldName = 'LARGHEZZA'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetTIPOLOGIA: TFloatField
      FieldName = 'TIPOLOGIA'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetNUMFOGLI: TFloatField
      FieldName = 'NUMFOGLI'
      DisplayFormat = '#,##.00'
    end
    object ibqOrd_DetCAPO_REPARTO: TFloatField
      FieldName = 'CAPO_REPARTO'
      currency = True
    end
  end
  object ibupOrd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  NUMERO,'
      '  AGENTE_ID,'
      '  AGENTE_NOM,'
      '  CLI_ID,'
      '  CLI_NOM,'
      '  FOR_ID,'
      '  FOR_NOM,'
      '  PAGAM_ID,'
      '  NOTE,'
      '  BANCA,'
      '  SPEDOZIONE_ID,'
      '  CORIERE,'
      '  PORTO_ID,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO_MON,'
      '  PROVV1,'
      '  PROVV2,'
      '  PROVV_MON,'
      '  PROT,'
      '  TOTALE_IMPON,'
      '  TOTALE,'
      '  TOTALE_IVA,'
      '  TOTALE_PROVV,'
      '  TOTALE_SCONTO,'
      '  BANCA_NOM,'
      '  PAGAM_NOM,'
      '  PORTO_NOM,'
      '  SPEDIZ_NOM,'
      '  CLI_IND,'
      '  FOR_IND,'
      '  CLI_TEL,'
      '  FOR_TEL,'
      '  FOR_PIVA,'
      '  CLI_PIVA,'
      '  CLI_IND2,'
      '  FOR_IND2,'
      '  DATA_SPEDIZIONE_TEXT,'
      '  CLI_TEL2,'
      '  CLI_FAX2,'
      '  FOR_TEL2,'
      '  FOR_FAX2,'
      '  DESTINAZIONE,'
      '  CABABI,'
      '  DATA,'
      '  DATA_SPEDIZIONE,'
      '  SNRP,'
      '  ACCONTO,'
      '  TIPO,'
      '  CA_DESCR,'
      '  CG_DESCR,'
      '  CA,'
      '  CG,'
      '  ACQ,'
      '  QQQ,'
      '  TOTALE_QTA,'
      '  CR,'
      '  EMAIL_CLI,'
      '  SITO_CLI,'
      '  EMAIL_FOR,'
      '  SITO_FOR'
      'from ORDINI '
      'where'
      '  PK_CODICE = :PK_CODICE')
    ModifySQL.Strings = (
      'update ORDINI'
      'set'
      '  ACCONTO = :ACCONTO,'
      '  ACQ = :ACQ,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  AGENTE_NOM = :AGENTE_NOM,'
      '  BANCA = :BANCA,'
      '  BANCA_NOM = :BANCA_NOM,'
      '  CA = :CA,'
      '  CA_DESCR = :CA_DESCR,'
      '  CABABI = :CABABI,'
      '  CG = :CG,'
      '  CG_DESCR = :CG_DESCR,'
      '  CLI_FAX2 = :CLI_FAX2,'
      '  CLI_ID = :CLI_ID,'
      '  CLI_IND = :CLI_IND,'
      '  CLI_IND2 = :CLI_IND2,'
      '  CLI_NOM = :CLI_NOM,'
      '  CLI_PIVA = :CLI_PIVA,'
      '  CLI_TEL = :CLI_TEL,'
      '  CLI_TEL2 = :CLI_TEL2,'
      '  CORIERE = :CORIERE,'
      '  CR = :CR,'
      '  DATA = :DATA,'
      '  DATA_SPEDIZIONE = :DATA_SPEDIZIONE,'
      '  DATA_SPEDIZIONE_TEXT = :DATA_SPEDIZIONE_TEXT,'
      '  DESTINAZIONE = :DESTINAZIONE,'
      '  EMAIL_CLI = :EMAIL_CLI,'
      '  EMAIL_FOR = :EMAIL_FOR,'
      '  FOR_FAX2 = :FOR_FAX2,'
      '  FOR_ID = :FOR_ID,'
      '  FOR_IND = :FOR_IND,'
      '  FOR_IND2 = :FOR_IND2,'
      '  FOR_NOM = :FOR_NOM,'
      '  FOR_PIVA = :FOR_PIVA,'
      '  FOR_TEL = :FOR_TEL,'
      '  FOR_TEL2 = :FOR_TEL2,'
      '  NOTE = :NOTE,'
      '  NUMERO = :NUMERO,'
      '  PAGAM_ID = :PAGAM_ID,'
      '  PAGAM_NOM = :PAGAM_NOM,'
      '  PK_CODICE = :PK_CODICE,'
      '  PORTO_ID = :PORTO_ID,'
      '  PORTO_NOM = :PORTO_NOM,'
      '  PROT = :PROT,'
      '  PROVV_MON = :PROVV_MON,'
      '  PROVV1 = :PROVV1,'
      '  PROVV2 = :PROVV2,'
      '  SCONTO_MON = :SCONTO_MON,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SITO_CLI = :SITO_CLI,'
      '  SITO_FOR = :SITO_FOR,'
      '  SNRP = :SNRP,'
      '  SPEDIZ_NOM = :SPEDIZ_NOM,'
      '  SPEDOZIONE_ID = :SPEDOZIONE_ID,'
      '  TIPO = :TIPO,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_IMPON = :TOTALE_IMPON,'
      '  TOTALE_IVA = :TOTALE_IVA,'
      '  TOTALE_PROVV = :TOTALE_PROVV,'
      '  TOTALE_QTA = :TOTALE_QTA,'
      '  TOTALE_SCONTO = :TOTALE_SCONTO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into ORDINI'
      
        '  (ACCONTO, ACQ, AGENTE_ID, AGENTE_NOM, BANCA, BANCA_NOM, CA, CA' +
        '_DESCR, '
      
        '   CABABI, CG, CG_DESCR, CLI_FAX2, CLI_ID, CLI_IND, CLI_IND2, CL' +
        'I_NOM, '
      
        '   CLI_PIVA, CLI_TEL, CLI_TEL2, CORIERE, CR, DATA, DATA_SPEDIZIO' +
        'NE, DATA_SPEDIZIONE_TEXT, '
      
        '   DESTINAZIONE, EMAIL_CLI, EMAIL_FOR, FOR_FAX2, FOR_ID, FOR_IND' +
        ', FOR_IND2, '
      
        '   FOR_NOM, FOR_PIVA, FOR_TEL, FOR_TEL2, NOTE, NUMERO, PAGAM_ID,' +
        ' PAGAM_NOM, '
      
        '   PK_CODICE, PORTO_ID, PORTO_NOM, PROT, PROVV_MON, PROVV1, PROV' +
        'V2, SCONTO_MON, '
      
        '   SCONTO1, SCONTO2, SITO_CLI, SITO_FOR, SNRP, SPEDIZ_NOM, SPEDO' +
        'ZIONE_ID, '
      
        '   TIPO, TOTALE, TOTALE_IMPON, TOTALE_IVA, TOTALE_PROVV, TOTALE_' +
        'QTA, TOTALE_SCONTO)'
      'values'
      
        '  (:ACCONTO, :ACQ, :AGENTE_ID, :AGENTE_NOM, :BANCA, :BANCA_NOM, ' +
        ':CA, :CA_DESCR, '
      
        '   :CABABI, :CG, :CG_DESCR, :CLI_FAX2, :CLI_ID, :CLI_IND, :CLI_I' +
        'ND2, :CLI_NOM, '
      
        '   :CLI_PIVA, :CLI_TEL, :CLI_TEL2, :CORIERE, :CR, :DATA, :DATA_S' +
        'PEDIZIONE, '
      
        '   :DATA_SPEDIZIONE_TEXT, :DESTINAZIONE, :EMAIL_CLI, :EMAIL_FOR,' +
        ' :FOR_FAX2, '
      
        '   :FOR_ID, :FOR_IND, :FOR_IND2, :FOR_NOM, :FOR_PIVA, :FOR_TEL, ' +
        ':FOR_TEL2, '
      
        '   :NOTE, :NUMERO, :PAGAM_ID, :PAGAM_NOM, :PK_CODICE, :PORTO_ID,' +
        ' :PORTO_NOM, '
      
        '   :PROT, :PROVV_MON, :PROVV1, :PROVV2, :SCONTO_MON, :SCONTO1, :' +
        'SCONTO2, '
      
        '   :SITO_CLI, :SITO_FOR, :SNRP, :SPEDIZ_NOM, :SPEDOZIONE_ID, :TI' +
        'PO, :TOTALE, '
      
        '   :TOTALE_IMPON, :TOTALE_IVA, :TOTALE_PROVV, :TOTALE_QTA, :TOTA' +
        'LE_SCONTO)')
    DeleteSQL.Strings = (
      'delete from ORDINI'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 344
    Top = 456
  end
  object ibupOrddet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FK_CODICE,'
      '  CODICE_ART,'
      '  DESCR,'
      '  PREZZO_UNITA,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO_MON,'
      '  PREZZO_TOT,'
      '  SCONTO_TOT,'
      '  PREZZO_SCONTATO,'
      '  PROVV,'
      '  CAPO_AREA,'
      '  CAPO_GRUPPO,'
      '  AGENTE,'
      '  ID_CODICE,'
      '  DIAM,'
      '  QUALITA,'
      '  BARRE,'
      '  PREZZODEST,'
      '  EXTRA,'
      '  UM,'
      '  FINITURA,'
      '  ACCIAIO,'
      '  NORMA,'
      '  LATO,'
      '  SPESSORE,'
      '  LUNGHEZZA,'
      '  LARGHEZZA,'
      '  TIPOLOGIA,'
      '  NUMFOGLI,'
      '  QTA,'
      '  CAPO_REPARTO'
      'from ODR_DETT '
      'where'
      '  FK_CODICE = :FK_CODICE and'
      '  ID_CODICE = :ID_CODICE')
    ModifySQL.Strings = (
      'update ODR_DETT'
      'set'
      '  FK_CODICE = :FK_CODICE,'
      '  CODICE_ART = :CODICE_ART,'
      '  DESCR = :DESCR,'
      '  PREZZO_UNITA = :PREZZO_UNITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO_MON = :SCONTO_MON,'
      '  PREZZO_TOT = :PREZZO_TOT,'
      '  SCONTO_TOT = :SCONTO_TOT,'
      '  PREZZO_SCONTATO = :PREZZO_SCONTATO,'
      '  PROVV = :PROVV,'
      '  CAPO_AREA = :CAPO_AREA,'
      '  CAPO_GRUPPO = :CAPO_GRUPPO,'
      '  AGENTE = :AGENTE,'
      '  ID_CODICE = :ID_CODICE,'
      '  DIAM = :DIAM,'
      '  QUALITA = :QUALITA,'
      '  BARRE = :BARRE,'
      '  PREZZODEST = :PREZZODEST,'
      '  EXTRA = :EXTRA,'
      '  UM = :UM,'
      '  FINITURA = :FINITURA,'
      '  ACCIAIO = :ACCIAIO,'
      '  NORMA = :NORMA,'
      '  LATO = :LATO,'
      '  SPESSORE = :SPESSORE,'
      '  LUNGHEZZA = :LUNGHEZZA,'
      '  LARGHEZZA = :LARGHEZZA,'
      '  TIPOLOGIA = :TIPOLOGIA,'
      '  NUMFOGLI = :NUMFOGLI,'
      '  QTA = :QTA,'
      '  CAPO_REPARTO = :CAPO_REPARTO'
      'where'
      '  FK_CODICE = :OLD_FK_CODICE and'
      '  ID_CODICE = :OLD_ID_CODICE')
    InsertSQL.Strings = (
      'insert into ODR_DETT'
      
        '  (FK_CODICE, CODICE_ART, DESCR, PREZZO_UNITA, SCONTO1, SCONTO2,' +
        ' '
      'SCONTO_MON, '
      '   PREZZO_TOT, SCONTO_TOT, PREZZO_SCONTATO, PROVV, CAPO_AREA, '
      'CAPO_GRUPPO, '
      
        '   AGENTE, ID_CODICE, DIAM, QUALITA, BARRE, PREZZODEST, EXTRA, U' +
        'M, '
      'FINITURA, '
      
        '   ACCIAIO, NORMA, LATO, SPESSORE, LUNGHEZZA, LARGHEZZA, TIPOLOG' +
        'IA, '
      'NUMFOGLI, '
      '   QTA, CAPO_REPARTO)'
      'values'
      
        '  (:FK_CODICE, :CODICE_ART, :DESCR, :PREZZO_UNITA, :SCONTO1, :SC' +
        'ONTO2, '
      '   :SCONTO_MON, :PREZZO_TOT, :SCONTO_TOT, :PREZZO_SCONTATO, '
      ':PROVV, :CAPO_AREA, '
      '   :CAPO_GRUPPO, :AGENTE, :ID_CODICE, :DIAM, :QUALITA, :BARRE, '
      ':PREZZODEST, '
      '   :EXTRA, :UM, :FINITURA, :ACCIAIO, :NORMA, :LATO, :SPESSORE, '
      ':LUNGHEZZA, '
      '   :LARGHEZZA, :TIPOLOGIA, :NUMFOGLI, :QTA, :CAPO_REPARTO)')
    DeleteSQL.Strings = (
      'delete from ODR_DETT'
      'where'
      '  FK_CODICE = :OLD_FK_CODICE and'
      '  ID_CODICE = :OLD_ID_CODICE')
    Left = 384
    Top = 496
  end
  object q_ibqVisOrd: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 5000
    SQL.Strings = (
      'select * from ORDINI'
      'Order by numero,data')
    Left = 552
    Top = 32
    object q_ibqVisOrdPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object q_ibqVisOrdNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object q_ibqVisOrdAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object q_ibqVisOrdAGENTE_NOM: TIBStringField
      FieldName = 'AGENTE_NOM'
      Size = 100
    end
    object q_ibqVisOrdCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object q_ibqVisOrdCLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Size = 100
    end
    object q_ibqVisOrdFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
    end
    object q_ibqVisOrdFOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      Size = 100
    end
    object q_ibqVisOrdDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object q_ibqVisOrdPAGAM_ID: TIBStringField
      FieldName = 'PAGAM_ID'
      Size = 4
    end
    object q_ibqVisOrdDATA_SPEDIZIONE: TDateTimeField
      FieldName = 'DATA_SPEDIZIONE'
    end
    object q_ibqVisOrdNOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object q_ibqVisOrdBANCA: TIBStringField
      FieldName = 'BANCA'
      Size = 5
    end
    object q_ibqVisOrdSPEDOZIONE_ID: TIBStringField
      FieldName = 'SPEDOZIONE_ID'
      Size = 4
    end
    object q_ibqVisOrdCORIERE: TIBStringField
      FieldName = 'CORIERE'
      Size = 100
    end
    object q_ibqVisOrdPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object q_ibqVisOrdSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object q_ibqVisOrdSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object q_ibqVisOrdSCONTO_MON: TFloatField
      FieldName = 'SCONTO_MON'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdPROVV1: TFloatField
      FieldName = 'PROVV1'
    end
    object q_ibqVisOrdPROVV2: TFloatField
      FieldName = 'PROVV2'
    end
    object q_ibqVisOrdPROVV_MON: TFloatField
      FieldName = 'PROVV_MON'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdTOTALE_IMPON: TFloatField
      FieldName = 'TOTALE_IMPON'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdTOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdTOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdTOTALE_PROVV: TFloatField
      FieldName = 'TOTALE_PROVV'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdTOTALE_SCONTO: TFloatField
      FieldName = 'TOTALE_SCONTO'
      DisplayFormat = '#,##.00'
    end
    object q_ibqVisOrdPROT: TIBStringField
      FieldName = 'PROT'
      Size = 22
    end
    object q_ibqVisOrdBANCA_NOM: TIBStringField
      FieldName = 'BANCA_NOM'
      Size = 100
    end
    object q_ibqVisOrdPAGAM_NOM: TIBStringField
      FieldName = 'PAGAM_NOM'
      Size = 100
    end
    object q_ibqVisOrdPORTO_NOM: TIBStringField
      FieldName = 'PORTO_NOM'
      Size = 100
    end
    object q_ibqVisOrdSPEDIZ_NOM: TIBStringField
      FieldName = 'SPEDIZ_NOM'
      Size = 100
    end
    object q_ibqVisOrdCLI_IND: TIBStringField
      FieldName = 'CLI_IND'
      Size = 255
    end
    object q_ibqVisOrdFOR_IND: TIBStringField
      FieldName = 'FOR_IND'
      Size = 255
    end
    object q_ibqVisOrdCLI_TEL: TIBStringField
      FieldName = 'CLI_TEL'
      Size = 26
    end
    object q_ibqVisOrdFOR_TEL: TIBStringField
      FieldName = 'FOR_TEL'
      Size = 26
    end
    object q_ibqVisOrdFOR_PIVA: TIBStringField
      FieldName = 'FOR_PIVA'
      Size = 30
    end
    object q_ibqVisOrdCLI_PIVA: TIBStringField
      FieldName = 'CLI_PIVA'
      Size = 30
    end
    object q_ibqVisOrdCLI_IND2: TIBStringField
      FieldName = 'CLI_IND2'
      Size = 255
    end
    object q_ibqVisOrdFOR_IND2: TIBStringField
      FieldName = 'FOR_IND2'
      Size = 255
    end
    object q_ibqVisOrdDATA_SPEDIZIONE_TEXT: TIBStringField
      FieldName = 'DATA_SPEDIZIONE_TEXT'
      Size = 50
    end
    object q_ibqVisOrdCLI_TEL2: TIBStringField
      FieldName = 'CLI_TEL2'
      Size = 50
    end
    object q_ibqVisOrdCLI_FAX2: TIBStringField
      FieldName = 'CLI_FAX2'
      Size = 50
    end
    object q_ibqVisOrdFOR_TEL2: TIBStringField
      FieldName = 'FOR_TEL2'
      Size = 50
    end
    object q_ibqVisOrdFOR_FAX2: TIBStringField
      FieldName = 'FOR_FAX2'
      Size = 50
    end
    object q_ibqVisOrdDESTINAZIONE: TIBStringField
      FieldName = 'DESTINAZIONE'
      Size = 50
    end
    object q_ibqVisOrdCABABI: TIBStringField
      FieldName = 'CABABI'
      Size = 50
    end
    object q_ibqVisOrdSNRP: TIBStringField
      FieldName = 'SNRP'
      Size = 1
    end
    object q_ibqVisOrdACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object q_ibqVisOrdTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object q_ibqVisOrdCA_DESCR: TIBStringField
      FieldName = 'CA_DESCR'
      Size = 52
    end
    object q_ibqVisOrdCG_DESCR: TIBStringField
      FieldName = 'CG_DESCR'
      Size = 52
    end
    object q_ibqVisOrdCA: TIBStringField
      FieldName = 'CA'
      Size = 5
    end
    object q_ibqVisOrdCG: TIBStringField
      FieldName = 'CG'
      Size = 5
    end
    object q_ibqVisOrdACQ: TIBStringField
      FieldName = 'ACQ'
      Size = 1
    end
    object q_ibqVisOrdQQQ: TFloatField
      FieldName = 'QQQ'
    end
    object q_ibqVisOrdTOTALE_QTA: TFloatField
      FieldName = 'TOTALE_QTA'
    end
  end
  object ibqTab_Spedizione: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select CODICE, DESCR from TAB_SPEDIZIONE')
    Left = 264
    Top = 232
  end
  object ibupSpedizione: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_SPEDIZIONE '
      'where'
      '  CODICE = :CODICE and'
      '  DESCR = :DESCR')
    ModifySQL.Strings = (
      'update TAB_SPEDIZIONE'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE and'
      '  DESCR = :OLD_DESCR')
    InsertSQL.Strings = (
      'insert into TAB_SPEDIZIONE'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    DeleteSQL.Strings = (
      'delete from TAB_SPEDIZIONE'
      'where'
      '  CODICE = :OLD_CODICE and'
      '  DESCR = :OLD_DESCR')
    Left = 320
    Top = 240
  end
  object ibusqlShowArtPerListino: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from tAB_DET_LISTINO '
      'where'
      '  CODICE_LISTINO = :CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update tAB_DET_LISTINO'
      'set'
      '  CODICE_LISTINO = :CODICE_LISTINO,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTATO = :SCONTATO,'
      '  SCONTO3 = :SCONTO3,'
      '  PREZZO = :PREZZO,'
      '  DINAMICO = :DINAMICO,'
      '  RICARICA_PERC = :RICARICA_PERC,'
      '  RICARICA = :RICARICA,'
      '  ORIGINE_IMP = :ORIGINE_IMP,'
      '  ID_CLIFOR = :ID_CLIFOR,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  IVA = :IVA,'
      '  TIPO_DINAMICO = :TIPO_DINAMICO,'
      '  BASE = :BASE,'
      '  BASE_TIPO = :BASE_TIPO'
      'where'
      '  CODICE_LISTINO = :OLD_CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tAB_DET_LISTINO'
      
        '  (CODICE_LISTINO, CODICE_ARTICOLO, SCONTO1, SCONTO2, SCONTATO, ' +
        'SCONTO3, '
      
        '   PREZZO, DINAMICO, RICARICA_PERC, RICARICA, ORIGINE_IMP, ID_CL' +
        'IFOR, PREZZO_IVATO, '
      '   IVA, TIPO_DINAMICO, BASE, BASE_TIPO)'
      'values'
      
        '  (:CODICE_LISTINO, :CODICE_ARTICOLO, :SCONTO1, :SCONTO2, :SCONT' +
        'ATO, :SCONTO3, '
      
        '   :PREZZO, :DINAMICO, :RICARICA_PERC, :RICARICA, :ORIGINE_IMP, ' +
        ':ID_CLIFOR, '
      '   :PREZZO_IVATO, :IVA, :TIPO_DINAMICO, :BASE, :BASE_TIPO)')
    DeleteSQL.Strings = (
      'delete from tAB_DET_LISTINO'
      'where'
      '  CODICE_LISTINO = :OLD_CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 408
    Top = 464
  end
  object ibqContabile_Articolo: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'Select a.CODICE_ARTICOLO, a.DEPOSITO_ID, a.CLI_FOR_ID,'
      'a.TIPO_CLI_FOR_ID, a.DESCR, a.QTA_ACQUISTI, a.VAL_ACQUISTI,'
      
        'a.DATA_ULTIMO_ACQUISTO, a.QTA_VENDITA, a.VAL_VENDITA, a.DATA_ULT' +
        'IMA_VENDITA,'
      'a.QTA_ALTRE_ENTRATE, a.VAL_ALTRE_ENTRATE, a.QTA_ALTRE_USCITE,'
      
        'a.VAL_ALTRE_USCITA, a.QTA_RESO_CLIENTE, a.VAL_RESO_CLIENTE, a.QT' +
        'A_RESO_FORNITORE,'
      
        'a.VAL_RESO_FORNITORE, a.QTA_ORDINATO, a.VAL_ORDINATO, a.QTA_IMPE' +
        'GNATO,'
      
        'a.VAL_QTA_IMPEGNATO, a.QTA_EVASA_CLIENTE, a.VAL_EVASO_CLIENTE, a' +
        '.QTA_EVASA_FORNITORE,'
      
        'a.VAL_EVASO_FORNITORE, a.QTA_GIACENZA_INIZIALE, a.COSTO_GIACENZA' +
        '_INIZIALE,a.MEDIA_SPESE,'
      'a.VAL_GIACENZA_INIZIALE, a.GIACENZA_ATTUALE, a.DISPONIBILITA,'
      
        'a.COSTO_ULTIMO, a.MED_PREZZO_VEND, a.ULT_COSTO_ACQ, a.MEDIO_COST' +
        'O_ACQ, a.ULT_PREZZO_VEND,'
      
        'B.descr as ArtDescr,b.SCORTA_MIN,E.costo,(((a.MED_PREZZO_VEND)-(' +
        'a.MEDIO_COSTO_ACQ))*(a.QTA_VENDITA)) as GUAD,C.descr as Deposito'
      'FROM tab_contabile_articolo A join tab_articoli B'
      'on A.codice_articolo=B.codice_articolo'
      'join tab_depositi C on A.DEPOSITO_ID=C.codice'
      'left join distinte E on A.codice_articolo=E.codice_articolo'
      'Order By C.Codice')
    Left = 304
    Top = 88
    object ibqContabile_ArticoloCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object ibqContabile_ArticoloDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Required = True
      Size = 3
    end
    object ibqContabile_ArticoloCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object ibqContabile_ArticoloTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object ibqContabile_ArticoloDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ibqContabile_ArticoloQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloDATA_ULTIMO_ACQUISTO: TDateField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
    end
    object ibqContabile_ArticoloQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloDATA_ULTIMA_VENDITA: TDateField
      FieldName = 'DATA_ULTIMA_VENDITA'
    end
    object ibqContabile_ArticoloQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      DisplayFormat = '#,##.00'
    end
    object ibqContabile_ArticoloARTDESCR: TIBStringField
      DisplayWidth = 100
      FieldName = 'ARTDESCR'
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'DESCR'
      KeyFields = 'CODICE_ARTICOLO'
      Size = 100
    end
    object ibqContabile_ArticoloDEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 50
    end
    object ibqContabile_ArticoloSCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object ibqContabile_ArticoloGUAD: TFloatField
      FieldName = 'GUAD'
    end
    object ibqContabile_ArticoloMEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
    end
    object ibqContabile_ArticoloCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
  end
  object ibTab_Det_Articolo: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'select * from TAB_DET_LISTINO')
    UpdateObject = ibusqlDet_Articolo
    Left = 128
    Top = 488
    object ibTab_Det_ArticoloCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 10
    end
    object ibTab_Det_ArticoloCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibTab_Det_ArticoloSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibTab_Det_ArticoloSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibTab_Det_ArticoloSCONTATO: TSmallintField
      FieldName = 'SCONTATO'
    end
    object ibTab_Det_ArticoloSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object ibTab_Det_ArticoloPREZZO: TFloatField
      FieldName = 'PREZZO'
      DisplayFormat = '#,##.00'
    end
    object ibTab_Det_ArticoloDINAMICO: TSmallintField
      FieldName = 'DINAMICO'
    end
    object ibTab_Det_ArticoloRICARICA_PERC: TSmallintField
      FieldName = 'RICARICA_PERC'
    end
    object ibTab_Det_ArticoloRICARICA: TFloatField
      FieldName = 'RICARICA'
    end
    object ibTab_Det_ArticoloORIGINE_IMP: TSmallintField
      FieldName = 'ORIGINE_IMP'
    end
    object ibTab_Det_ArticoloID_CLIFOR: TIntegerField
      FieldName = 'ID_CLIFOR'
    end
    object ibTab_Det_ArticoloPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      DisplayFormat = '#,##.00'
    end
    object ibTab_Det_ArticoloIVA: TFloatField
      FieldName = 'IVA'
    end
    object ibTab_Det_ArticoloTIPO_DINAMICO: TSmallintField
      FieldName = 'TIPO_DINAMICO'
    end
    object ibTab_Det_ArticoloBASE: TSmallintField
      FieldName = 'BASE'
    end
    object ibTab_Det_ArticoloBASE_TIPO: TIBStringField
      FieldName = 'BASE_TIPO'
      Size = 1
    end
  end
  object ibusqlDet_Articolo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_LISTINO,'
      '  CODICE_ARTICOLO,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTATO,'
      '  SCONTO3,'
      '  PREZZO,'
      '  DINAMICO,'
      '  RICARICA_PERC,'
      '  RICARICA,'
      '  ORIGINE_IMP,'
      '  ID_CLIFOR,'
      '  PREZZO_IVATO,'
      '  IVA,'
      '  TIPO_DINAMICO,'
      '  BASE,'
      '  BASE_TIPO'
      'from TAB_DET_LISTINO '
      'where'
      '  CODICE_LISTINO = :CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update TAB_DET_LISTINO'
      'set'
      '  CODICE_LISTINO = :CODICE_LISTINO,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTATO = :SCONTATO,'
      '  SCONTO3 = :SCONTO3,'
      '  PREZZO = :PREZZO,'
      '  DINAMICO = :DINAMICO,'
      '  RICARICA_PERC = :RICARICA_PERC,'
      '  RICARICA = :RICARICA,'
      '  ORIGINE_IMP = :ORIGINE_IMP,'
      '  ID_CLIFOR = :ID_CLIFOR,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  IVA = :IVA,'
      '  TIPO_DINAMICO = :TIPO_DINAMICO,'
      '  BASE = :BASE,'
      '  BASE_TIPO = :BASE_TIPO'
      'where'
      '  CODICE_LISTINO = :OLD_CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into TAB_DET_LISTINO'
      
        '  (CODICE_LISTINO, CODICE_ARTICOLO, SCONTO1, SCONTO2, SCONTATO, ' +
        'SCONTO3, '
      
        '   PREZZO, DINAMICO, RICARICA_PERC, RICARICA, ORIGINE_IMP, ID_CL' +
        'IFOR, PREZZO_IVATO, '
      '   IVA, TIPO_DINAMICO, BASE, BASE_TIPO)'
      'values'
      
        '  (:CODICE_LISTINO, :CODICE_ARTICOLO, :SCONTO1, :SCONTO2, :SCONT' +
        'ATO, :SCONTO3, '
      
        '   :PREZZO, :DINAMICO, :RICARICA_PERC, :RICARICA, :ORIGINE_IMP, ' +
        ':ID_CLIFOR, '
      '   :PREZZO_IVATO, :IVA, :TIPO_DINAMICO, :BASE, :BASE_TIPO)')
    DeleteSQL.Strings = (
      'delete from TAB_DET_LISTINO'
      'where'
      '  CODICE_LISTINO = :OLD_CODICE_LISTINO and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 272
    Top = 496
  end
  object ibqryListiniPerArt: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    OnCalcFields = ibqryListiniPerArtCalcFields
    BufferChunks = 500
    SQL.Strings = (
      'select '
      
        'A.CODICE_LISTINO, A.CODICE_ARTICOLO, A.SCONTO1, A.SCONTO2, A.SCO' +
        'NTATO, A.SCONTO3, A.PREZZO, A.DINAMICO, A.RICARICA_PERC, A.RICAR' +
        'ICA, A.ORIGINE_IMP, A.ID_CLIFOR, A.PREZZO_IVATO, A.IVA, A.TIPO_D' +
        'INAMICO, A.BASE, A.BASE_TIPO,'
      ''
      
        'B.MED_PREZZO_VEND, B.ULT_COSTO_ACQ, B.MEDIO_COSTO_ACQ, B.ULT_PRE' +
        'ZZO_VEND,'
      ''
      'C.PREZZO_BASE, C.COSTO_STANDART,C.DESCR as art_descr'
      ''
      'from tab_det_listino A join tab_contabile_articolo B'
      'on A.codice_articolo=B.codice_articolo join tab_articoli C'
      'on A.codice_articolo=C.codice_articolo'
      ''
      'Where A.codice_articolo = :parCodArt')
    Left = 456
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'parCodArt'
        ParamType = ptUnknown
        Value = '001'
      end>
    object ibqryListiniPerArtPreZzo_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Prezzo_'
      DisplayFormat = '#,##.00'
      Calculated = True
    end
    object ibqryListiniPerArtPrezzo_Ivato_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Prezzo_Ivato_'
      DisplayFormat = '#,##.00'
      Calculated = True
    end
    object ibqryListiniPerArtCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 10
    end
    object ibqryListiniPerArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqryListiniPerArtSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibqryListiniPerArtSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibqryListiniPerArtSCONTATO: TSmallintField
      FieldName = 'SCONTATO'
    end
    object ibqryListiniPerArtSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object ibqryListiniPerArtPREZZO: TFloatField
      FieldName = 'PREZZO'
      DisplayFormat = '#,##.00'
    end
    object ibqryListiniPerArtDINAMICO: TSmallintField
      FieldName = 'DINAMICO'
    end
    object ibqryListiniPerArtRICARICA_PERC: TSmallintField
      FieldName = 'RICARICA_PERC'
    end
    object ibqryListiniPerArtRICARICA: TFloatField
      FieldName = 'RICARICA'
    end
    object ibqryListiniPerArtORIGINE_IMP: TSmallintField
      FieldName = 'ORIGINE_IMP'
    end
    object ibqryListiniPerArtID_CLIFOR: TIntegerField
      FieldName = 'ID_CLIFOR'
    end
    object ibqryListiniPerArtPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
    end
    object ibqryListiniPerArtIVA: TFloatField
      FieldName = 'IVA'
    end
    object ibqryListiniPerArtTIPO_DINAMICO: TSmallintField
      FieldName = 'TIPO_DINAMICO'
    end
    object ibqryListiniPerArtBASE: TSmallintField
      FieldName = 'BASE'
    end
    object ibqryListiniPerArtBASE_TIPO: TIBStringField
      FieldName = 'BASE_TIPO'
      Size = 1
    end
    object ibqryListiniPerArtMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
    end
    object ibqryListiniPerArtULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
    end
    object ibqryListiniPerArtMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
    end
    object ibqryListiniPerArtULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
    end
    object ibqryListiniPerArtPREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
    end
    object ibqryListiniPerArtCOSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
    end
    object ibqryListiniPerArtART_DESCR: TIBStringField
      FieldName = 'ART_DESCR'
      Size = 50
    end
  end
  object ibqryListCustom: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 500
    SQL.Strings = (
      'select * from TAB_DET_LISTINO'
      'Where CODICE_LISTINO = :parCodListino and'
      'CODICE_ARTICOLO in'
      '(select codice_Articolo from TAB_ARTICOLI'
      'where '
      'CAT_ART_FAMIGLIA_ID = :parFamiglia and'
      'CAT_ART_GRUPPO_ID = :parGruppo and'
      'CAT_ART_MARCA_ID = :parMarca and'
      'CAT_ART_TIPO_ID = :parTipo)')
    Left = 456
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'parCodListino'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'parFamiglia'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'parGruppo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'parMarca'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'parTipo'
        ParamType = ptUnknown
        Value = '0'
      end>
    object ibqryListCustomCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 10
    end
    object ibqryListCustomCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqryListCustomSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibqryListCustomSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibqryListCustomSCONTATO: TSmallintField
      FieldName = 'SCONTATO'
    end
    object ibqryListCustomSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object ibqryListCustomPREZZO: TFloatField
      FieldName = 'PREZZO'
    end
    object ibqryListCustomDINAMICO: TSmallintField
      FieldName = 'DINAMICO'
    end
    object ibqryListCustomRICARICA_PERC: TSmallintField
      FieldName = 'RICARICA_PERC'
    end
    object ibqryListCustomRICARICA: TFloatField
      FieldName = 'RICARICA'
    end
    object ibqryListCustomORIGINE_IMP: TSmallintField
      FieldName = 'ORIGINE_IMP'
    end
    object ibqryListCustomID_CLIFOR: TIntegerField
      FieldName = 'ID_CLIFOR'
    end
    object ibqryListCustomPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
    end
    object ibqryListCustomIVA: TFloatField
      FieldName = 'IVA'
    end
    object ibqryListCustomDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'Descr'
      LookupDataSet = ibTab_Articoli_
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'DESCR'
      KeyFields = 'CODICE_ARTICOLO'
      Size = 255
      Lookup = True
    end
    object ibqryListCustomTIPO_DINAMICO: TSmallintField
      FieldName = 'TIPO_DINAMICO'
    end
    object ibqryListCustomBASE: TSmallintField
      FieldName = 'BASE'
    end
    object ibqryListCustomBASE_TIPO: TIBStringField
      FieldName = 'BASE_TIPO'
      Size = 1
    end
  end
  object ibqStampaDoc: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    AfterClose = ibqStampaDocAfterClose
    BeforeOpen = ibqStampaDocBeforeOpen
    OnCalcFields = ibqStampaDocCalcFields
    SQL.Strings = (
      'select * from TAB_DOCUMENTI'
      'WHERE ID_DOCUMENTO = :parID_Doc'
      'Order By DATA_DOC, Num_DOC')
    Left = 352
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'parID_Doc'
        ParamType = ptUnknown
        Value = 0
      end>
    object ibqStampaDocID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object ibqStampaDocTESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object ibqStampaDocCAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object ibqStampaDocTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object ibqStampaDocDA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object ibqStampaDocCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqStampaDocTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object ibqStampaDocDEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object ibqStampaDocCONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object ibqStampaDocCONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object ibqStampaDocCONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object ibqStampaDocCAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object ibqStampaDocCONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object ibqStampaDocATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object ibqStampaDocSUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object ibqStampaDocDATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object ibqStampaDocDATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object ibqStampaDocDATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object ibqStampaDocDATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object ibqStampaDocSTATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object ibqStampaDocSTATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object ibqStampaDocMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object ibqStampaDocCAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object ibqStampaDocKINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object ibqStampaDocLISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object ibqStampaDocNS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object ibqStampaDocVS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object ibqStampaDocCAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object ibqStampaDocCODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object ibqStampaDocPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object ibqStampaDocBANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object ibqStampaDocBANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object ibqStampaDocVETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object ibqStampaDocVETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object ibqStampaDocVETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object ibqStampaDocASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object ibqStampaDocSPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object ibqStampaDocPESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object ibqStampaDocPESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object ibqStampaDocCUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object ibqStampaDocDESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object ibqStampaDocIMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object ibqStampaDocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object ibqStampaDocAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object ibqStampaDocDATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object ibqStampaDocNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object ibqStampaDocNRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object ibqStampaDocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object ibqStampaDocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocNOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object ibqStampaDocSOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object ibqStampaDocIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object ibqStampaDocCOD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object ibqStampaDocCOD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object ibqStampaDocACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object ibqStampaDocATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object ibqStampaDocSUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object ibqStampaDocSOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object ibqStampaDocREPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object ibqStampaDocRILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object ibqStampaDocORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object ibqStampaDocFATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object ibqStampaDocTIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object ibqStampaDocST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object ibqStampaDocIVATO: TSmallintField
      FieldName = 'IVATO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSTAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object ibqStampaDocDATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object ibqStampaDocMEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object ibqStampaDocTOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object ibqStampaDocTOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object ibqStampaDocNUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object ibqStampaDocSERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object ibqStampaDocMESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object ibqStampaDocALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object ibqStampaDocSPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocSPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocPER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object ibqStampaDocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object ibqStampaDocALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object ibqStampaDocIMPON1: TFloatField
      FieldName = 'IMPON1'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocIMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object ibqStampaDocALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object ibqStampaDocIMPON2: TFloatField
      FieldName = 'IMPON2'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocIMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object ibqStampaDocALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object ibqStampaDocIMPON3: TFloatField
      FieldName = 'IMPON3'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocIMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object ibqStampaDocALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object ibqStampaDocIMPON4: TFloatField
      FieldName = 'IMPON4'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocIMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocCODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object ibqStampaDocALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object ibqStampaDocIMPON5: TFloatField
      FieldName = 'IMPON5'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocIMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocTOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object ibqStampaDocSERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object ibqStampaDocCLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object ibqStampaDocCLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object ibqStampaDocPagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagamento'
      LookupDataSet = ibTab_Pagamenti
      LookupKeyFields = 'ID_PAGAMENTO'
      LookupResultField = 'DESCR'
      KeyFields = 'PAGAMENTO_ID'
      Size = 100
      Lookup = True
    end
    object ibqStampaDocAgente: TStringField
      FieldKind = fkLookup
      FieldName = 'Agente'
      LookupDataSet = ibTab_Agenti
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'AGENTE_ID'
      Size = 100
      Lookup = True
    end
    object ibqStampaDocBanca: TStringField
      FieldKind = fkLookup
      FieldName = 'Banca'
      LookupDataSet = ibTab_Banche
      LookupKeyFields = 'ID_BANCA'
      LookupResultField = 'DESCR'
      KeyFields = 'BANCA_CLIFOR'
      Size = 100
      Lookup = True
    end
    object ibqStampaDocVettore: TStringField
      FieldKind = fkLookup
      FieldName = 'Vettore'
      LookupDataSet = ibTab_Vettori
      LookupKeyFields = 'CODICE'
      LookupResultField = 'RAGIONE_SOCIALE'
      KeyFields = 'VETTORE1'
      Size = 100
      Lookup = True
    end
    object ibqStampaDocCliForPARTITAiva: TStringField
      FieldKind = fkLookup
      FieldName = 'CliForPARTITAiva'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'PARTITA_IVA'
      KeyFields = 'CLIFOR_ID'
      Size = 30
      Lookup = True
    end
    object ibqStampaDocCliForDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'CliForDescr'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Size = 200
      Lookup = True
    end
    object ibqStampaDocVETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object ibqStampaDocVETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object ibqStampaDocTEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object ibqStampaDocTEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object ibqStampaDocTEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object ibqStampaDocIVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object ibqStampaDocIVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object ibqStampaDocRATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
    end
    object ibqStampaDocRATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
    end
    object ibqStampaDocRATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
    end
    object ibqStampaDocRATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
    end
    object ibqStampaDocRATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
    end
    object ibqStampaDocRATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
    end
    object ibqStampaDocRATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocRATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocRATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocRATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocRATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocRATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object ibqStampaDocACCONTO: TFloatField
      FieldName = 'ACCONTO'
      DisplayFormat = '#,##.00'
    end
    object ibqStampaDocPagamento_descr: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagamento_descr'
      LookupDataSet = ibTab_Pagamenti
      LookupKeyFields = 'ID_PAGAMENTO'
      LookupResultField = 'DESCR'
      KeyFields = 'PAGAMENTO_ID'
      Size = 60
      Lookup = True
    end
    object ibqStampaDocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object ibqStampaDocIVA_ESENTE_DESCR: TStringField
      DisplayWidth = 250
      FieldKind = fkLookup
      FieldName = 'IVA_ESENTE_DESCR'
      LookupDataSet = dmodPub.ibTab_Esente_IVA
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'IVA_ESENTE_ID'
      Size = 250
      Lookup = True
    end
    object ibqStampaDocALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object ibqStampaDocCAU_DESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CAU_DESCR'
      LookupDataSet = ibTab_Cau_Trasp
      LookupKeyFields = 'DESCR'
      LookupResultField = 'DESCR'
      KeyFields = 'CAU_TRASP_ID'
      Lookup = True
    end
    object ibqStampaDocPORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 32
    end
    object ibqStampaDocCAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 32
    end
    object ibqStampaDocCliforDescr2: TStringField
      FieldKind = fkLookup
      FieldName = 'CliforDescr2'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE2'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
    object ibqStampaDocCA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object ibqStampaDocCODCLI2: TStringField
      FieldKind = fkLookup
      FieldName = 'CODCLI2'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'COD2'
      KeyFields = 'CLIFOR_ID'
      Size = 5
      Lookup = True
    end
    object ibqStampaDocAspettoBeni: TStringField
      FieldKind = fkLookup
      FieldName = 'AspettoBeni'
      LookupDataSet = ibTab_Aspetto_Esteriore
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'ASPETTO'
      Lookup = True
    end
    object ibqStampaDocCF: TStringField
      FieldKind = fkLookup
      FieldName = 'CF'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'CODICE_FISCALE'
      KeyFields = 'CLIFOR_ID'
      Size = 30
      Lookup = True
    end
    object ibqStampaDocCODF: TStringField
      FieldKind = fkLookup
      FieldName = 'CODF'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'CODICE_FISCALE'
      KeyFields = 'CLIFOR_ID'
      Size = 30
      Lookup = True
    end
    object ibqStampaDocDES_CAU_MAG: TStringField
      FieldKind = fkLookup
      FieldName = 'DES_CAU_MAG'
      LookupDataSet = ibTab_Cau_Mag
      LookupKeyFields = 'CODICE_CAUSALE'
      LookupResultField = 'DESCR_CAUSALE'
      KeyFields = 'CAUSALE_MAGAZZINO'
      Size = 50
      Lookup = True
    end
  end
  object dsStampaDoc: TDataSource
    DataSet = ibqStampaDoc
    Left = 376
    Top = 424
  end
  object dsPassDoc_Master: TDataSource
    DataSet = ibqryPassDoc
    Left = 728
    Top = 128
  end
  object ibspLastNumProt: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_LAST_NUM_PROT'
    Left = 672
    Top = 56
  end
  object ibspPK_Contab: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_NEXT_PK_CONTAB'
    Left = 725
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PK_CONTAB'
        ParamType = ptOutput
        Value = 0
      end>
  end
  object dsContab_rel: TDataSource
    DataSet = ibqryContab
    Left = 64
    Top = 48
  end
  object ibqRicerca2: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from  CONTABILITA')
    Left = 544
    Top = 8
  end
  object ibtblContab_Det2: TIBTable
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 5000
    FieldDefs = <
      item
        Name = 'FK_CONTABILITA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SOTTOCONTO_DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PIANOCONTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CONTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_FATTURA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_FATTURA'
        DataType = ftDate
      end
      item
        Name = 'IMPORTO'
        DataType = ftFloat
      end
      item
        Name = 'ABBUONO'
        DataType = ftFloat
      end
      item
        Name = 'DATA_SCADENZA'
        DataType = ftDate
      end
      item
        Name = 'IMPONIBILE'
        DataType = ftFloat
      end
      item
        Name = 'IVA_PERC'
        DataType = ftFloat
      end
      item
        Name = 'IMPOSTA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN71'
        Fields = 'FK_CONTABILITA'
      end>
    IndexFieldNames = 'FK_CONTABILITA'
    MasterFields = 'PK_CODICE'
    MasterSource = dsContab2
    StoreDefs = True
    TableName = 'CONTAB_DET'
    Left = 760
    Top = 8
    object ibtblContab_Det2FK_CONTABILITA: TIntegerField
      FieldName = 'FK_CONTABILITA'
    end
    object ibtblContab_Det2SOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object ibtblContab_Det2PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object ibtblContab_Det2NOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object ibtblContab_Det2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibtblContab_Det2NUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object ibtblContab_Det2DATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object ibtblContab_Det2IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object ibtblContab_Det2ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      DisplayFormat = '#,##.00'
    end
    object ibtblContab_Det2DATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object ibtblContab_Det2IMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      DisplayFormat = '#,##.00'
    end
    object ibtblContab_Det2IVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
    end
    object ibtblContab_Det2IMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      DisplayFormat = '#,##.00'
    end
    object ibtblContab_Det2TOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
    end
  end
  object dsContab2: TDataSource
    DataSet = ibqryContab2
    Left = 620
  end
  object dsDistinte_dm: TDataSource
    DataSet = ibqryDistinte
    Left = 280
    Top = 312
  end
  object ibqryArt_Acc_per_Distinte: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select CODICE_ARTICOLO, DESCR, COSTO_STANDART from TAB_ARTICOLI'
      'Where FLAG_ACCESSORIE like '#39'S'#39
      'Order By CODICE_ARTICOLO')
    Left = 320
    Top = 48
    object ibqryArt_Acc_per_DistinteCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object ibqryArt_Acc_per_DistinteDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object ibqryArt_Acc_per_DistinteCOSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
    end
  end
  object IBQrICERCA25: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select Doc_ID,costo,SCONTO1,SCONTO2,SCONTO_EQ from tab_det_doc'
      'where codice_articolo =  '#39'PENSIONE'#39' and doc_id in'
      '(select id_documento from tab_documenti '
      'where clifor_id = 9176'
      ')'
      ' ;'
      '')
    Left = 256
    Top = 56
    object IBQrICERCA25DATA: TDateField
      FieldKind = fkLookup
      FieldName = 'DATA'
      LookupKeyFields = 'ID_DOCUMENTO'
      LookupResultField = 'DATA_DOC'
      KeyFields = 'DOC_ID'
      Lookup = True
    end
    object IBQrICERCA25NRDOC: TFloatField
      FieldKind = fkLookup
      FieldName = 'NRDOC'
      LookupKeyFields = 'ID_DOCUMENTO'
      LookupResultField = 'NUM_DOC'
      KeyFields = 'DOC_ID'
      Lookup = True
    end
    object IBQrICERCA25COSTO: TFloatField
      FieldName = 'COSTO'
    end
    object IBQrICERCA25SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQrICERCA25SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQrICERCA25SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object IBQrICERCA25DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
  end
  object IBQuery1: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from tab_documenti'
      'where ID_Documento=:pariddoc')
    Left = 616
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pariddoc'
        ParamType = ptUnknown
      end>
    object IBQuery1ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IBQuery1TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBQuery1CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IBQuery1TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object IBQuery1DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IBQuery1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery1DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IBQuery1CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object IBQuery1CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBQuery1CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBQuery1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery1CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBQuery1ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object IBQuery1SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object IBQuery1DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object IBQuery1DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery1DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object IBQuery1DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IBQuery1STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IBQuery1STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBQuery1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object IBQuery1CAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBQuery1KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBQuery1LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBQuery1NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery1VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery1CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBQuery1CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBQuery1BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBQuery1BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBQuery1VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBQuery1VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBQuery1VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBQuery1PORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBQuery1ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBQuery1SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object IBQuery1PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object IBQuery1PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object IBQuery1CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBQuery1DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBQuery1IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery1DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IBQuery1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery1NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery1IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object IBQuery1SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object IBQuery1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBQuery1COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object IBQuery1ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBQuery1ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object IBQuery1SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object IBQuery1SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBQuery1REPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object IBQuery1RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBQuery1ORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object IBQuery1FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object IBQuery1TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object IBQuery1ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object IBQuery1IVATO: TSmallintField
      FieldName = 'IVATO'
    end
    object IBQuery1STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object IBQuery1DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object IBQuery1MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object IBQuery1TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery1TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IBQuery1NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBQuery1SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IBQuery1MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object IBQuery1ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object IBQuery1SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object IBQuery1PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object IBQuery1IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object IBQuery1ALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object IBQuery1IMPON1: TFloatField
      FieldName = 'IMPON1'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object IBQuery1ALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object IBQuery1IMPON2: TFloatField
      FieldName = 'IMPON2'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object IBQuery1ALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object IBQuery1IMPON3: TFloatField
      FieldName = 'IMPON3'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object IBQuery1ALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object IBQuery1IMPON4: TFloatField
      FieldName = 'IMPON4'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object IBQuery1ALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object IBQuery1IMPON5: TFloatField
      FieldName = 'IMPON5'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBQuery1SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBQuery1CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object IBQuery1ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery1RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1TEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBQuery1TEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBQuery1TEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object IBQuery1IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IBQuery1IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBQuery1VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBQuery1VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBQuery1CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object IBQuery1RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
    end
    object IBQuery1RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
    end
    object IBQuery1RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
    end
    object IBQuery1RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
    end
    object IBQuery1RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
    end
    object IBQuery1RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IBQuery1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
  end
  object IBQuery_IVA: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 15
    SQL.Strings = (
      'select * from tab_codici_iva'
      'order by aliquota')
    Left = 488
    Top = 224
  end
  object IBQDepositi: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    SQL.Strings = (
      'select * from tab_depositi'
      'order by descr')
    Left = 656
    Top = 248
    object IBQDepositiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_DEPOSITI"."CODICE"'
      Required = True
      Size = 3
    end
    object IBQDepositiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DEPOSITI"."DESCR"'
      Size = 50
    end
    object IBQDepositiDETAGLIO: TSmallintField
      FieldName = 'DETAGLIO'
      Origin = '"TAB_DEPOSITI"."DETAGLIO"'
    end
    object IBQDepositiMERCE_NS: TSmallintField
      FieldName = 'MERCE_NS'
      Origin = '"TAB_DEPOSITI"."MERCE_NS"'
    end
    object IBQDepositiRAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      Origin = '"TAB_DEPOSITI"."RAGGRUPPAMENTO_DEPOSITI_ID"'
      Size = 4
    end
    object IBQDepositiINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_DEPOSITI"."INDIRIZZO"'
      Size = 100
    end
    object IBQDepositiCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_DEPOSITI"."CITTA"'
      Size = 30
    end
    object IBQDepositiCAP: TIBStringField
      FieldName = 'CAP'
      Origin = '"TAB_DEPOSITI"."CAP"'
      Size = 5
    end
    object IBQDepositiPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_DEPOSITI"."PROV"'
      Size = 2
    end
    object IBQDepositiATTIVO: TIBStringField
      FieldName = 'ATTIVO'
      Origin = '"TAB_DEPOSITI"."ATTIVO"'
      Size = 1
    end
  end
  object dsDepositi: TDataSource
    DataSet = IBQDepositi
    Left = 704
    Top = 384
  end
  object ibSQL: TIBSQL
    Tag = 255
    Database = ibdbAzUni
    SQL.Strings = (
      'NULL')
    Transaction = ibtrDef
    Left = 352
    Top = 224
  end
  object dsoDoc: TDataSource
    DataSet = ibqTab_Doc
    Left = 440
    Top = 368
  end
  object RxBarCode: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Codice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descrizione'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PrezzoLire'
        DataType = ftFloat
      end
      item
        Name = 'PrezzoEuro'
        DataType = ftFloat
      end
      item
        Name = 'PVLire'
        DataType = ftFloat
      end
      item
        Name = 'PVEuro'
        DataType = ftFloat
      end
      item
        Name = 'COLORE'
        DataType = ftString
        Size = 50
      end>
    Left = 544
    Top = 320
    object RxBarCodeCodice: TStringField
      FieldName = 'Codice'
    end
    object RxBarCodeDescrizione: TStringField
      FieldName = 'Descrizione'
      Size = 100
    end
    object RxBarCodePrezzoLire: TFloatField
      FieldName = 'PrezzoLire'
      DisplayFormat = '#,##'
    end
    object RxBarCodePrezzoEuro: TFloatField
      FieldName = 'PrezzoEuro'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object RxBarCodePVLire: TFloatField
      FieldName = 'PVLire'
      DisplayFormat = '#,##'
    end
    object RxBarCodePVEuro: TFloatField
      FieldName = 'PVEuro'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object RxBarCodeCOLORE: TStringField
      FieldName = 'COLORE'
      Size = 50
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTITA'
        DataType = ftFloat
      end>
    Left = 568
    Top = 280
    object RxMemoryData1CODICE: TStringField
      FieldName = 'CODICE'
    end
    object RxMemoryData1QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = ibtTabDet_Doc
    Left = 576
    Top = 80
  end
  object ibqRicerca: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from tab_agenti')
    Left = 200
    Top = 272
  end
  object ibqStamCli: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from tab_cli_for'
      'left join tab_pagamenti'
      'on tab_cli_for.pagamento_id=tab_pagamenti.id_pagamento'
      'order by denominazione')
    Left = 600
    Top = 312
    object ibqStamCliID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object ibqStamCliTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ibqStamCliDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object ibqStamCliCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object ibqStamCliNOME: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object ibqStamCliNOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object ibqStamCliFULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object ibqStamCliINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object ibqStamCliCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object ibqStamCliPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object ibqStamCliCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object ibqStamCliPERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object ibqStamCliPIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object ibqStamCliCONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object ibqStamCliMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object ibqStamCliPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 5
    end
    object ibqStamCliCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object ibqStamCliCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object ibqStamCliCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object ibqStamCliAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object ibqStamCliPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object ibqStamCliLINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object ibqStamCliCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object ibqStamCliSCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object ibqStamCliSCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object ibqStamCliTEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object ibqStamCliTEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object ibqStamCliFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object ibqStamCliEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ibqStamCliINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object ibqStamCliDATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object ibqStamCliSESSO: TIntegerField
      FieldName = 'SESSO'
    end
    object ibqStamCliTITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object ibqStamCliPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object ibqStamCliFIDO: TFloatField
      FieldName = 'FIDO'
    end
    object ibqStamCliABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object ibqStamCliFATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object ibqStamCliACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object ibqStamCliIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object ibqStamCliPOS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object ibqStamCliCODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object ibqStamCliRIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object ibqStamCliESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object ibqStamCliRIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object ibqStamCliESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object ibqStamCliTIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object ibqStamCliNAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object ibqStamCliNAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object ibqStamCliRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object ibqStamCliRISCHIO: TFloatField
      FieldName = 'RISCHIO'
    end
    object ibqStamCliGG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object ibqStamCliGG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object ibqStamCliCONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object ibqStamCliTIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object ibqStamCliCERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object ibqStamCliDENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object ibqStamCliINDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object ibqStamCliLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object ibqStamCliCOMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object ibqStamCliTITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object ibqStamCliCOMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object ibqStamCliCAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object ibqStamCliNAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object ibqStamCliCOM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object ibqStamCliCAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object ibqStamCliPR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object ibqStamCliCAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object ibqStamCliABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object ibqStamCliNAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object ibqStamCliFASON: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object ibqStamCliCG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object ibqStamCliCA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object ibqStamCliCapoArea: TIBStringField
      FieldKind = fkLookup
      FieldName = 'CapoArea'
      LookupDataSet = ibTab_Agenti
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CA'
      Lookup = True
    end
    object ibqStamCliCapoGruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'CapoGruppo'
      LookupDataSet = ibTab_Agenti
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CG'
      Lookup = True
    end
    object ibqStamCliAgente: TStringField
      FieldKind = fkLookup
      FieldName = 'Agente'
      LookupDataSet = ibTab_Agenti
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'AGENTE_ID'
      Lookup = True
    end
    object ibqStamCliCAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object ibqStamCliABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object ibqStamCliCOD2: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object ibqStamCliCR: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object ibqStamCliDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PAGAMENTI"."DESCR"'
      Size = 50
    end
    object ibqStamCliID_PAGAMENTO: TIBStringField
      FieldName = 'ID_PAGAMENTO'
      Origin = '"TAB_PAGAMENTI"."ID_PAGAMENTO"'
      Size = 4
    end
    object ibqStamCliFINE_MESE: TSmallintField
      FieldName = 'FINE_MESE'
      Origin = '"TAB_PAGAMENTI"."FINE_MESE"'
    end
    object ibqStamCliGIORNI_PRIMA_RATA: TIntegerField
      FieldName = 'GIORNI_PRIMA_RATA'
      Origin = '"TAB_PAGAMENTI"."GIORNI_PRIMA_RATA"'
    end
    object ibqStamCliGIORNI_TRA_RATE: TIntegerField
      FieldName = 'GIORNI_TRA_RATE'
      Origin = '"TAB_PAGAMENTI"."GIORNI_TRA_RATE"'
    end
    object ibqStamCliGIORNI_COMMERCIALI: TSmallintField
      FieldName = 'GIORNI_COMMERCIALI'
      Origin = '"TAB_PAGAMENTI"."GIORNI_COMMERCIALI"'
    end
    object ibqStamCliCALCOLO_PRIMA_RATA: TSmallintField
      FieldName = 'CALCOLO_PRIMA_RATA'
      Origin = '"TAB_PAGAMENTI"."CALCOLO_PRIMA_RATA"'
    end
    object ibqStamCliNUMERO_RATE: TSmallintField
      FieldName = 'NUMERO_RATE'
      Origin = '"TAB_PAGAMENTI"."NUMERO_RATE"'
    end
    object ibqStamCliTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"TAB_PAGAMENTI"."TIPO_PAGAMENTO"'
      Size = 2
    end
    object ibqStamCliESC_SABATI: TSmallintField
      FieldName = 'ESC_SABATI'
      Origin = '"TAB_PAGAMENTI"."ESC_SABATI"'
    end
    object ibqStamCliESC_FESTIVI: TSmallintField
      FieldName = 'ESC_FESTIVI'
      Origin = '"TAB_PAGAMENTI"."ESC_FESTIVI"'
    end
    object ibqStamCliPERSONALIZZA: TSmallintField
      FieldName = 'PERSONALIZZA'
      Origin = '"TAB_PAGAMENTI"."PERSONALIZZA"'
    end
    object ibqStamCliGIORNO_SCADENZA: TIntegerField
      FieldName = 'GIORNO_SCADENZA'
      Origin = '"TAB_PAGAMENTI"."GIORNO_SCADENZA"'
    end
    object ibqStamCliADDEBITA_INCASSO: TSmallintField
      FieldName = 'ADDEBITA_INCASSO'
      Origin = '"TAB_PAGAMENTI"."ADDEBITA_INCASSO"'
    end
    object ibqStamCliSCONTO_INCASSO: TFloatField
      FieldName = 'SCONTO_INCASSO'
      Origin = '"TAB_PAGAMENTI"."SCONTO_INCASSO"'
    end
    object ibqStamCliSPESE: TFloatField
      FieldName = 'SPESE'
      Origin = '"TAB_PAGAMENTI"."SPESE"'
    end
    object ibqStamCliNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 2000
    end
  end
  object dsStamCli: TDataSource
    DataSet = ibqStamCli
    Left = 448
    Top = 256
  end
  object TabCassa: TADOTable
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CASSA'
    CursorType = ctStatic
    TableName = 'PIPPON'
    Left = 280
    Top = 472
    object TabCassaCODICE: TStringField
      FieldName = 'CODICE'
      Size = 80
    end
    object TabCassaC2: TStringField
      FieldName = 'C2'
      Size = 12
    end
    object TabCassaC3: TStringField
      FieldName = 'C3'
      Size = 12
    end
    object TabCassaC5: TFloatField
      FieldName = 'C5'
    end
    object TabCassaC6: TFloatField
      FieldName = 'C6'
    end
    object TabCassaC4: TStringField
      FieldName = 'C4'
      Size = 12
    end
  end
  object ibspOrdDet: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_ORD_DET'
    Left = 576
    Top = 456
    object ibspOrdDetCODICE: TIntegerField
      FieldName = 'CODICE'
    end
  end
  object ibTab_Agenti: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from tab_agenti'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into tab_agenti'
      '  (CODICE, DESCR, CODICE_ZONA_ID, CODICE_SOTTO_ZONA_ID, '
      'PROVVIGIONE, IMPORTO_FISSO, '
      '   TIPO_CLI_FOR, CLI_FOR_ID, TIPO_SOMMA_PRV, TIPO_PROVVIGIONE, '
      'TOTALE_FATTURATO, '
      '   TOTALE_PROVVIGIONE, CG, CA, TIPO_AG, CR)'
      'values'
      '  (:CODICE, :DESCR, :CODICE_ZONA_ID, :CODICE_SOTTO_ZONA_ID, '
      ':PROVVIGIONE, '
      '   :IMPORTO_FISSO, :TIPO_CLI_FOR, :CLI_FOR_ID, :TIPO_SOMMA_PRV, '
      ':TIPO_PROVVIGIONE, '
      
        '   :TOTALE_FATTURATO, :TOTALE_PROVVIGIONE, :CG, :CA, :TIPO_AG, :' +
        'CR)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_agenti '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from tab_agenti'
      'order by descr,codice')
    ModifySQL.Strings = (
      'update tab_agenti'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  CODICE_ZONA_ID = :CODICE_ZONA_ID,'
      '  CODICE_SOTTO_ZONA_ID = :CODICE_SOTTO_ZONA_ID,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  IMPORTO_FISSO = :IMPORTO_FISSO,'
      '  TIPO_CLI_FOR = :TIPO_CLI_FOR,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  TIPO_SOMMA_PRV = :TIPO_SOMMA_PRV,'
      '  TIPO_PROVVIGIONE = :TIPO_PROVVIGIONE,'
      '  TOTALE_FATTURATO = :TOTALE_FATTURATO,'
      '  TOTALE_PROVVIGIONE = :TOTALE_PROVVIGIONE,'
      '  CG = :CG,'
      '  CA = :CA,'
      '  TIPO_AG = :TIPO_AG,'
      '  CR = :CR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 550
    Top = 304
    object ibTab_AgentiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_AGENTI"."CODICE"'
      Required = True
      Size = 4
    end
    object ibTab_AgentiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_AGENTI"."DESCR"'
      Size = 50
    end
    object ibTab_AgentiCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_AGENTI"."CODICE_ZONA_ID"'
      Size = 7
    end
    object ibTab_AgentiCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_AGENTI"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object ibTab_AgentiPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_AGENTI"."PROVVIGIONE"'
    end
    object ibTab_AgentiIMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
      Origin = '"TAB_AGENTI"."IMPORTO_FISSO"'
    end
    object ibTab_AgentiTIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
      Origin = '"TAB_AGENTI"."TIPO_CLI_FOR"'
    end
    object ibTab_AgentiCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_AGENTI"."CLI_FOR_ID"'
    end
    object ibTab_AgentiTIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
      Origin = '"TAB_AGENTI"."TIPO_SOMMA_PRV"'
    end
    object ibTab_AgentiTIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_AGENTI"."TIPO_PROVVIGIONE"'
    end
    object ibTab_AgentiTOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
      Origin = '"TAB_AGENTI"."TOTALE_FATTURATO"'
    end
    object ibTab_AgentiTOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
      Origin = '"TAB_AGENTI"."TOTALE_PROVVIGIONE"'
    end
    object ibTab_AgentiCG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_AGENTI"."CG"'
      Size = 4
    end
    object ibTab_AgentiCA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_AGENTI"."CA"'
      Size = 4
    end
    object ibTab_AgentiTIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
      Origin = '"TAB_AGENTI"."TIPO_AG"'
    end
    object ibTab_AgentiCR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_AGENTI"."CR"'
      Size = 4
    end
  end
  object ibTab_Colori: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_colori'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into tab_colori'
      '  (CODICE, DESCR, PK_CODICE)'
      'values'
      '  (:CODICE, :DESCR, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_colori '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from tab_colori'
      'order by descr')
    ModifySQL.Strings = (
      'update tab_colori'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_COLORI'
    Left = 312
    Top = 200
    object ibTab_ColoriPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_COLORI"."PK_CODICE"'
    end
    object ibTab_ColoriDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_COLORI"."DESCR"'
      Size = 50
    end
    object ibTab_ColoriCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_COLORI"."CODICE"'
      Size = 2
    end
  end
  object ibTab_Commessi: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_commessi'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into tab_commessi'
      
        '  (CODICE, DESCR, TEL2, TEL3, DATAN, QUALIFICA, LIVELLO, DATAASS' +
        ', TIPOCONT, '
      
        '   SSN, LIBLAV, DATALIB, NULLAOS, DATANULLAOS, FAMILIARI, VISITE' +
        'M, RITENUTE, '
      
        '   INPS, INAIL, VARIE, MALATTIE, CARMAL, AZIENDA, PAGAORD, PAGAS' +
        'TRA, PAGAFE, '
      
        '   PAGATRA, PAGATRASF, PAGASPEC, INDIRIZZO, ASSFAM, CITTA, PROV,' +
        ' TEL1)'
      'values'
      
        '  (:CODICE, :DESCR, :TEL2, :TEL3, :DATAN, :QUALIFICA, :LIVELLO, ' +
        ':DATAASS, '
      
        '   :TIPOCONT, :SSN, :LIBLAV, :DATALIB, :NULLAOS, :DATANULLAOS, :' +
        'FAMILIARI, '
      
        '   :VISITEM, :RITENUTE, :INPS, :INAIL, :VARIE, :MALATTIE, :CARMA' +
        'L, :AZIENDA, '
      
        '   :PAGAORD, :PAGASTRA, :PAGAFE, :PAGATRA, :PAGATRASF, :PAGASPEC' +
        ', :INDIRIZZO, '
      '   :ASSFAM, :CITTA, :PROV, :TEL1)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_commessi '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from tab_commessi'
      'order by CODICE, DESCR')
    ModifySQL.Strings = (
      'update tab_commessi'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  DATAN = :DATAN,'
      '  QUALIFICA = :QUALIFICA,'
      '  LIVELLO = :LIVELLO,'
      '  DATAASS = :DATAASS,'
      '  TIPOCONT = :TIPOCONT,'
      '  SSN = :SSN,'
      '  LIBLAV = :LIBLAV,'
      '  DATALIB = :DATALIB,'
      '  NULLAOS = :NULLAOS,'
      '  DATANULLAOS = :DATANULLAOS,'
      '  FAMILIARI = :FAMILIARI,'
      '  VISITEM = :VISITEM,'
      '  RITENUTE = :RITENUTE,'
      '  INPS = :INPS,'
      '  INAIL = :INAIL,'
      '  VARIE = :VARIE,'
      '  MALATTIE = :MALATTIE,'
      '  CARMAL = :CARMAL,'
      '  AZIENDA = :AZIENDA,'
      '  PAGAORD = :PAGAORD,'
      '  PAGASTRA = :PAGASTRA,'
      '  PAGAFE = :PAGAFE,'
      '  PAGATRA = :PAGATRA,'
      '  PAGATRASF = :PAGATRASF,'
      '  PAGASPEC = :PAGASPEC,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  ASSFAM = :ASSFAM,'
      '  CITTA = :CITTA,'
      '  PROV = :PROV,'
      '  TEL1 = :TEL1'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 224
    Top = 512
    object ibTab_CommessiCODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_COMMESSI"."CODICE"'
      Required = True
    end
    object ibTab_CommessiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_COMMESSI"."DESCR"'
      Size = 100
    end
    object ibTab_CommessiTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_COMMESSI"."TEL2"'
      Size = 15
    end
    object ibTab_CommessiTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_COMMESSI"."TEL3"'
      Size = 15
    end
    object ibTab_CommessiDATAN: TDateTimeField
      FieldName = 'DATAN'
      Origin = '"TAB_COMMESSI"."DATAN"'
    end
    object ibTab_CommessiQUALIFICA: TIBStringField
      FieldName = 'QUALIFICA'
      Origin = '"TAB_COMMESSI"."QUALIFICA"'
      Size = 100
    end
    object ibTab_CommessiLIVELLO: TIBStringField
      FieldName = 'LIVELLO'
      Origin = '"TAB_COMMESSI"."LIVELLO"'
      Size = 15
    end
    object ibTab_CommessiDATAASS: TDateTimeField
      FieldName = 'DATAASS'
      Origin = '"TAB_COMMESSI"."DATAASS"'
    end
    object ibTab_CommessiTIPOCONT: TIBStringField
      FieldName = 'TIPOCONT'
      Origin = '"TAB_COMMESSI"."TIPOCONT"'
      Size = 50
    end
    object ibTab_CommessiSSN: TIBStringField
      FieldName = 'SSN'
      Origin = '"TAB_COMMESSI"."SSN"'
      Size = 15
    end
    object ibTab_CommessiLIBLAV: TIBStringField
      FieldName = 'LIBLAV'
      Origin = '"TAB_COMMESSI"."LIBLAV"'
      Size = 50
    end
    object ibTab_CommessiDATALIB: TDateTimeField
      FieldName = 'DATALIB'
      Origin = '"TAB_COMMESSI"."DATALIB"'
    end
    object ibTab_CommessiNULLAOS: TIBStringField
      FieldName = 'NULLAOS'
      Origin = '"TAB_COMMESSI"."NULLAOS"'
      Size = 50
    end
    object ibTab_CommessiDATANULLAOS: TDateTimeField
      FieldName = 'DATANULLAOS'
      Origin = '"TAB_COMMESSI"."DATANULLAOS"'
    end
    object ibTab_CommessiFAMILIARI: TIBStringField
      FieldName = 'FAMILIARI'
      Origin = '"TAB_COMMESSI"."FAMILIARI"'
      Size = 100
    end
    object ibTab_CommessiVISITEM: TIBStringField
      FieldName = 'VISITEM'
      Origin = '"TAB_COMMESSI"."VISITEM"'
      Size = 15
    end
    object ibTab_CommessiRITENUTE: TFloatField
      FieldName = 'RITENUTE'
      Origin = '"TAB_COMMESSI"."RITENUTE"'
    end
    object ibTab_CommessiINPS: TFloatField
      FieldName = 'INPS'
      Origin = '"TAB_COMMESSI"."INPS"'
    end
    object ibTab_CommessiINAIL: TFloatField
      FieldName = 'INAIL'
      Origin = '"TAB_COMMESSI"."INAIL"'
    end
    object ibTab_CommessiVARIE: TFloatField
      FieldName = 'VARIE'
      Origin = '"TAB_COMMESSI"."VARIE"'
    end
    object ibTab_CommessiMALATTIE: TFloatField
      FieldName = 'MALATTIE'
      Origin = '"TAB_COMMESSI"."MALATTIE"'
    end
    object ibTab_CommessiCARMAL: TFloatField
      FieldName = 'CARMAL'
      Origin = '"TAB_COMMESSI"."CARMAL"'
    end
    object ibTab_CommessiAZIENDA: TFloatField
      FieldName = 'AZIENDA'
      Origin = '"TAB_COMMESSI"."AZIENDA"'
    end
    object ibTab_CommessiPAGAORD: TFloatField
      FieldName = 'PAGAORD'
      Origin = '"TAB_COMMESSI"."PAGAORD"'
    end
    object ibTab_CommessiPAGASTRA: TFloatField
      FieldName = 'PAGASTRA'
      Origin = '"TAB_COMMESSI"."PAGASTRA"'
    end
    object ibTab_CommessiPAGAFE: TFloatField
      FieldName = 'PAGAFE'
      Origin = '"TAB_COMMESSI"."PAGAFE"'
    end
    object ibTab_CommessiPAGATRA: TFloatField
      FieldName = 'PAGATRA'
      Origin = '"TAB_COMMESSI"."PAGATRA"'
    end
    object ibTab_CommessiPAGATRASF: TFloatField
      FieldName = 'PAGATRASF'
      Origin = '"TAB_COMMESSI"."PAGATRASF"'
    end
    object ibTab_CommessiPAGASPEC: TFloatField
      FieldName = 'PAGASPEC'
      Origin = '"TAB_COMMESSI"."PAGASPEC"'
    end
    object ibTab_CommessiINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_COMMESSI"."INDIRIZZO"'
      Size = 50
    end
    object ibTab_CommessiASSFAM: TFloatField
      FieldName = 'ASSFAM'
      Origin = '"TAB_COMMESSI"."ASSFAM"'
    end
    object ibTab_CommessiCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_COMMESSI"."CITTA"'
      Size = 50
    end
    object ibTab_CommessiPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_COMMESSI"."PROV"'
      Size = 2
    end
    object ibTab_CommessiTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_COMMESSI"."TEL1"'
      Size = 15
    end
  end
  object ibTab_Depositi: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_depositi'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into tab_depositi'
      
        '  (CODICE, DESCR, DETAGLIO, MERCE_NS, RAGGRUPPAMENTO_DEPOSITI_ID' +
        ', '
      'INDIRIZZO, '
      '   CITTA, CAP, PROV, ATTIVO)'
      'values'
      '  (:CODICE, :DESCR, :DETAGLIO, :MERCE_NS, '
      ':RAGGRUPPAMENTO_DEPOSITI_ID, '
      '   :INDIRIZZO, :CITTA, :CAP, :PROV, :ATTIVO)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_depositi '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from tab_depositi'
      'order by codice,descr')
    ModifySQL.Strings = (
      'update tab_depositi'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  DETAGLIO = :DETAGLIO,'
      '  MERCE_NS = :MERCE_NS,'
      '  RAGGRUPPAMENTO_DEPOSITI_ID = :RAGGRUPPAMENTO_DEPOSITI_ID,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  CITTA = :CITTA,'
      '  CAP = :CAP,'
      '  PROV = :PROV,'
      '  ATTIVO = :ATTIVO'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 504
    Top = 272
    object ibTab_DepositiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_DEPOSITI"."CODICE"'
      Required = True
      Size = 3
    end
    object ibTab_DepositiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DEPOSITI"."DESCR"'
      Size = 50
    end
    object ibTab_DepositiATTIVO: TIBStringField
      FieldName = 'ATTIVO'
      Origin = '"TAB_DEPOSITI"."ATTIVO"'
      Size = 1
    end
    object ibTab_DepositiDETAGLIO: TSmallintField
      FieldName = 'DETAGLIO'
      Origin = '"TAB_DEPOSITI"."DETAGLIO"'
    end
    object ibTab_DepositiMERCE_NS: TSmallintField
      FieldName = 'MERCE_NS'
      Origin = '"TAB_DEPOSITI"."MERCE_NS"'
    end
    object ibTab_DepositiRAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      Origin = '"TAB_DEPOSITI"."RAGGRUPPAMENTO_DEPOSITI_ID"'
      Size = 4
    end
    object ibTab_DepositiINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_DEPOSITI"."INDIRIZZO"'
      Size = 100
    end
    object ibTab_DepositiCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_DEPOSITI"."CITTA"'
      Size = 30
    end
    object ibTab_DepositiCAP: TIBStringField
      FieldName = 'CAP'
      Origin = '"TAB_DEPOSITI"."CAP"'
      Size = 5
    end
    object ibTab_DepositiPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_DEPOSITI"."PROV"'
      Size = 2
    end
  end
  object IBTableArticoli: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_articoli'
      
        '  (CODICE_ARTICOLO, DESCR, DESCR2, CODICE_IVA_ID, UNITA_DI_MISUR' +
        'A1_ID, '
      
        '   UNITA_DI_MISURA2_ID, UNITA_DI_MISURA3_ID, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   PROVVIGIONE, PESO_NETTO_KG, PESO_LORDO_KG, SCORTA_MIN, SCORTA' +
        '_MAX, LOTTO_RIORDINO, '
      
        '   GG_APPROVVIGIONAMENTO, QTA_X_CONFEZIONE, ANNO, DESCR_AGGIUNTI' +
        'VA_ID, '
      
        '   PREZZO_BASE, COSTO_STANDART, TIPO_ARTICOLO_ID, FATT_CONV1, FA' +
        'TT_CONV2, '
      
        '   COSTO_ID, RICAVO_ID, GIORNI_MAX_INVENDUTO, ASPETTO_ID, RIORDI' +
        'NO_MESE_DA, '
      
        '   RIORDINO_MESE_A, RIORDINO_GIORNO_DA, RIORDINO_GIORNO_A, STAGI' +
        'ONE_ID, '
      
        '   GRUPPO_ALTERNATIVO, PRODUTTORE_ID, CATEGORIA_ARTICOLO_ID, CAT' +
        'EGORIA_MERCEOLOGICA_ID, '
      
        '   CODICE_BASE, DERIVATO, VARIANTE1_ID, VARIANTE2_ID, VARIANTE3_' +
        'ID, NUM_VARIANTI, '
      
        '   TIPO_COSTO_ID, TIPO_RICAVO_ID, OMAGGIO, TIPO_CLI_FOR_ID, CLI_' +
        'FOR_ID, '
      
        '   CODE_BAR, DESCR_CODE_BAR, NON_STAMPA_INVENTARIO, NON_STAMPA_R' +
        'EGISTRO, '
      
        '   NOMENCLATURA, FATT_CONV1_NOMENCLATURA, FATT_CONV2_NOMENCLATUR' +
        'A, PROV_ORDINE, '
      
        '   COSTO_ULTIMO, DATA_COSTO_ULTIMO, NUM_REPARTO, TIPO_CODE_BAR_I' +
        'D, CONTO_ACQUISTO, '
      
        '   CONTO_VENDITA, UN_MIS2_VAL, UN_MIS3_VAL, CAT_ART_FAMIGLIA_ID,' +
        ' CAT_ART_GRUPPO_ID, '
      
        '   CAT_ART_MARCA_ID, FOTO_PERCORSO, CAT_ART_TIPO_ID, FLAG_ACCESS' +
        'ORIE, DATAMOD, '
      
        '   SCONTO4, PREZZO_IVATO, P2IVATO, P3IVATO, P4IVATO, P5IVATO, SC' +
        '21, SC22, '
      
        '   SC23, SC31, SC32, SC33, SC41, SC42, SC43, SC51, SC52, SC53, R' +
        '2, R3, '
      
        '   R4, R5, IMP2, IMP3, IMP4, IMP5, RICARPREC, P6IVATO, IMP6, STR' +
        'UTT, CA, '
      
        '   CG, AG, CA2, CG2, AG2, CA3, CG3, AG3, CA4, CG4, AG4, CA5, CG5' +
        ', AG5, '
      '   CA6, CG6, AG6, ID_OFFERTA, CR, CR2, CR3, CR4, CR5, CR6)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DESCR, :DESCR2, :CODICE_IVA_ID, :UNITA_DI_' +
        'MISURA1_ID, '
      
        '   :UNITA_DI_MISURA2_ID, :UNITA_DI_MISURA3_ID, :SCONTO1, :SCONTO' +
        '2, :SCONTO3, '
      
        '   :PROVVIGIONE, :PESO_NETTO_KG, :PESO_LORDO_KG, :SCORTA_MIN, :S' +
        'CORTA_MAX, '
      
        '   :LOTTO_RIORDINO, :GG_APPROVVIGIONAMENTO, :QTA_X_CONFEZIONE, :' +
        'ANNO, :DESCR_AGGIUNTIVA_ID, '
      
        '   :PREZZO_BASE, :COSTO_STANDART, :TIPO_ARTICOLO_ID, :FATT_CONV1' +
        ', :FATT_CONV2, '
      
        '   :COSTO_ID, :RICAVO_ID, :GIORNI_MAX_INVENDUTO, :ASPETTO_ID, :R' +
        'IORDINO_MESE_DA, '
      
        '   :RIORDINO_MESE_A, :RIORDINO_GIORNO_DA, :RIORDINO_GIORNO_A, :S' +
        'TAGIONE_ID, '
      
        '   :GRUPPO_ALTERNATIVO, :PRODUTTORE_ID, :CATEGORIA_ARTICOLO_ID, ' +
        ':CATEGORIA_MERCEOLOGICA_ID, '
      
        '   :CODICE_BASE, :DERIVATO, :VARIANTE1_ID, :VARIANTE2_ID, :VARIA' +
        'NTE3_ID, '
      
        '   :NUM_VARIANTI, :TIPO_COSTO_ID, :TIPO_RICAVO_ID, :OMAGGIO, :TI' +
        'PO_CLI_FOR_ID, '
      
        '   :CLI_FOR_ID, :CODE_BAR, :DESCR_CODE_BAR, :NON_STAMPA_INVENTAR' +
        'IO, :NON_STAMPA_REGISTRO, '
      
        '   :NOMENCLATURA, :FATT_CONV1_NOMENCLATURA, :FATT_CONV2_NOMENCLA' +
        'TURA, :PROV_ORDINE, '
      
        '   :COSTO_ULTIMO, :DATA_COSTO_ULTIMO, :NUM_REPARTO, :TIPO_CODE_B' +
        'AR_ID, '
      
        '   :CONTO_ACQUISTO, :CONTO_VENDITA, :UN_MIS2_VAL, :UN_MIS3_VAL, ' +
        ':CAT_ART_FAMIGLIA_ID, '
      
        '   :CAT_ART_GRUPPO_ID, :CAT_ART_MARCA_ID, :FOTO_PERCORSO, :CAT_A' +
        'RT_TIPO_ID, '
      
        '   :FLAG_ACCESSORIE, :DATAMOD, :SCONTO4, :PREZZO_IVATO, :P2IVATO' +
        ', :P3IVATO, '
      
        '   :P4IVATO, :P5IVATO, :SC21, :SC22, :SC23, :SC31, :SC32, :SC33,' +
        ' :SC41, '
      
        '   :SC42, :SC43, :SC51, :SC52, :SC53, :R2, :R3, :R4, :R5, :IMP2,' +
        ' :IMP3, '
      
        '   :IMP4, :IMP5, :RICARPREC, :P6IVATO, :IMP6, :STRUTT, :CA, :CG,' +
        ' :AG, :CA2, '
      
        '   :CG2, :AG2, :CA3, :CG3, :AG3, :CA4, :CG4, :AG4, :CA5, :CG5, :' +
        'AG5, :CA6, '
      '   :CG6, :AG6, :ID_OFFERTA, :CR, :CR2, :CR3, :CR4, :CR5, :CR6)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from tab_articoli')
    ModifySQL.Strings = (
      'update tab_articoli'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  DESCR2 = :DESCR2,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID = :UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID = :UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID = :UNITA_DI_MISURA3_ID,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  PESO_NETTO_KG = :PESO_NETTO_KG,'
      '  PESO_LORDO_KG = :PESO_LORDO_KG,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO = :GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE = :QTA_X_CONFEZIONE,'
      '  ANNO = :ANNO,'
      '  DESCR_AGGIUNTIVA_ID = :DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID = :TIPO_ARTICOLO_ID,'
      '  FATT_CONV1 = :FATT_CONV1,'
      '  FATT_CONV2 = :FATT_CONV2,'
      '  COSTO_ID = :COSTO_ID,'
      '  RICAVO_ID = :RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO = :GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID = :ASPETTO_ID,'
      '  RIORDINO_MESE_DA = :RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A = :RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA = :RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A = :RIORDINO_GIORNO_A,'
      '  STAGIONE_ID = :STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO = :GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID = :PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID = :CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE = :CODICE_BASE,'
      '  DERIVATO = :DERIVATO,'
      '  VARIANTE1_ID = :VARIANTE1_ID,'
      '  VARIANTE2_ID = :VARIANTE2_ID,'
      '  VARIANTE3_ID = :VARIANTE3_ID,'
      '  NUM_VARIANTI = :NUM_VARIANTI,'
      '  TIPO_COSTO_ID = :TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID = :TIPO_RICAVO_ID,'
      '  OMAGGIO = :OMAGGIO,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODE_BAR = :CODE_BAR,'
      '  DESCR_CODE_BAR = :DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO = :NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO = :NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA = :NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA = :FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA = :FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE = :PROV_ORDINE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO = :DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO = :NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID = :TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO = :CONTO_ACQUISTO,'
      '  CONTO_VENDITA = :CONTO_VENDITA,'
      '  UN_MIS2_VAL = :UN_MIS2_VAL,'
      '  UN_MIS3_VAL = :UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID = :CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID = :CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID = :CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO = :FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID = :CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE = :FLAG_ACCESSORIE,'
      '  DATAMOD = :DATAMOD,'
      '  SCONTO4 = :SCONTO4,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  P2IVATO = :P2IVATO,'
      '  P3IVATO = :P3IVATO,'
      '  P4IVATO = :P4IVATO,'
      '  P5IVATO = :P5IVATO,'
      '  SC21 = :SC21,'
      '  SC22 = :SC22,'
      '  SC23 = :SC23,'
      '  SC31 = :SC31,'
      '  SC32 = :SC32,'
      '  SC33 = :SC33,'
      '  SC41 = :SC41,'
      '  SC42 = :SC42,'
      '  SC43 = :SC43,'
      '  SC51 = :SC51,'
      '  SC52 = :SC52,'
      '  SC53 = :SC53,'
      '  R2 = :R2,'
      '  R3 = :R3,'
      '  R4 = :R4,'
      '  R5 = :R5,'
      '  IMP2 = :IMP2,'
      '  IMP3 = :IMP3,'
      '  IMP4 = :IMP4,'
      '  IMP5 = :IMP5,'
      '  RICARPREC = :RICARPREC,'
      '  P6IVATO = :P6IVATO,'
      '  IMP6 = :IMP6,'
      '  STRUTT = :STRUTT,'
      '  CA = :CA,'
      '  CG = :CG,'
      '  AG = :AG,'
      '  CA2 = :CA2,'
      '  CG2 = :CG2,'
      '  AG2 = :AG2,'
      '  CA3 = :CA3,'
      '  CG3 = :CG3,'
      '  AG3 = :AG3,'
      '  CA4 = :CA4,'
      '  CG4 = :CG4,'
      '  AG4 = :AG4,'
      '  CA5 = :CA5,'
      '  CG5 = :CG5,'
      '  AG5 = :AG5,'
      '  CA6 = :CA6,'
      '  CG6 = :CG6,'
      '  AG6 = :AG6,'
      '  ID_OFFERTA = :ID_OFFERTA,'
      '  CR = :CR,'
      '  CR2 = :CR2,'
      '  CR3 = :CR3,'
      '  CR4 = :CR4,'
      '  CR5 = :CR5,'
      '  CR6 = :CR6'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 760
    Top = 248
  end
  object ibtblContab_Det: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from contab_det'
      'where'
      '  FK_CONTABILITA = :OLD_FK_CONTABILITA and'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into contab_det'
      
        '  (FK_CONTABILITA, SOTTOCONTO_DESCR, PIANOCONTO_ID, NOME_CONTO, ' +
        'CODICE_ARTICOLO, '
      
        '   NUM_FATTURA, DATA_FATTURA, IMPORTO, ABBUONO, DATA_SCADENZA, I' +
        'MPONIBILE, '
      '   IVA_PERC, IMPOSTA, TOTALE, PK_CODICE)'
      'values'
      
        '  (:FK_CONTABILITA, :SOTTOCONTO_DESCR, :PIANOCONTO_ID, :NOME_CON' +
        'TO, :CODICE_ARTICOLO, '
      
        '   :NUM_FATTURA, :DATA_FATTURA, :IMPORTO, :ABBUONO, :DATA_SCADEN' +
        'ZA, :IMPONIBILE, '
      '   :IVA_PERC, :IMPOSTA, :TOTALE, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select *'
      'from contab_det '
      'where'
      '  FK_CONTABILITA = :FK_CONTABILITA and'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from contab_det'
      'where FK_CONTABILITA=:pk_codice')
    ModifySQL.Strings = (
      'update contab_det'
      'set'
      '  FK_CONTABILITA = :FK_CONTABILITA,'
      '  SOTTOCONTO_DESCR = :SOTTOCONTO_DESCR,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  NOME_CONTO = :NOME_CONTO,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  NUM_FATTURA = :NUM_FATTURA,'
      '  DATA_FATTURA = :DATA_FATTURA,'
      '  IMPORTO = :IMPORTO,'
      '  ABBUONO = :ABBUONO,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  IMPONIBILE = :IMPONIBILE,'
      '  IVA_PERC = :IVA_PERC,'
      '  IMPOSTA = :IMPOSTA,'
      '  TOTALE = :TOTALE,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  FK_CONTABILITA = :OLD_FK_CONTABILITA and'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_CONTAB_DETT'
    DataSource = dsContab_rel
    Left = 64
    object ibtblContab_DetFK_CONTABILITA: TIntegerField
      FieldName = 'FK_CONTABILITA'
      Origin = '"CONTAB_DET"."FK_CONTABILITA"'
      Required = True
    end
    object ibtblContab_DetSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Origin = '"CONTAB_DET"."SOTTOCONTO_DESCR"'
      Size = 100
    end
    object ibtblContab_DetPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"CONTAB_DET"."PIANOCONTO_ID"'
    end
    object ibtblContab_DetNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Origin = '"CONTAB_DET"."NOME_CONTO"'
      Size = 12
    end
    object ibtblContab_DetCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"CONTAB_DET"."CODICE_ARTICOLO"'
    end
    object ibtblContab_DetNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
      Origin = '"CONTAB_DET"."NUM_FATTURA"'
    end
    object ibtblContab_DetDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
      Origin = '"CONTAB_DET"."DATA_FATTURA"'
    end
    object ibtblContab_DetIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"CONTAB_DET"."IMPORTO"'
      currency = True
    end
    object ibtblContab_DetABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTAB_DET"."ABBUONO"'
      currency = True
    end
    object ibtblContab_DetDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"CONTAB_DET"."DATA_SCADENZA"'
    end
    object ibtblContab_DetIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      Origin = '"CONTAB_DET"."IMPONIBILE"'
      currency = True
    end
    object ibtblContab_DetIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
      Origin = '"CONTAB_DET"."IVA_PERC"'
    end
    object ibtblContab_DetIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = '"CONTAB_DET"."IMPOSTA"'
      currency = True
    end
    object ibtblContab_DetTOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"CONTAB_DET"."TOTALE"'
      currency = True
    end
    object ibtblContab_DetPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTAB_DET"."PK_CODICE"'
      Required = True
    end
  end
  object ibtOfferte: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibtOfferteAfterInsert
    DeleteSQL.Strings = (
      'delete from TAB_OFFERTE'
      'where'
      '  ID_OFFERTA = :OLD_ID_OFFERTA')
    InsertSQL.Strings = (
      'insert into TAB_OFFERTE'
      '  (ID_OFFERTA, DESCR, TIPO, DATAINIZIO, DATAFINE, NUMPEZZI, '
      'PREZZOUNITARIO, '
      '   PREZZOCONF, SCONTOPERC, AZIONE, GIORNISETT)'
      'values'
      
        '  (:ID_OFFERTA, :DESCR, :TIPO, :DATAINIZIO, :DATAFINE, :NUMPEZZI' +
        ', '
      ':PREZZOUNITARIO, '
      '   :PREZZOCONF, :SCONTOPERC, :AZIONE, :GIORNISETT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_OFFERTA,'
      '  DESCR,'
      '  TIPO,'
      '  DATAINIZIO,'
      '  DATAFINE,'
      '  NUMPEZZI,'
      '  PREZZOUNITARIO,'
      '  PREZZOCONF,'
      '  SCONTOPERC,'
      '  AZIONE,'
      '  GIORNISETT'
      'from TAB_OFFERTE '
      'where'
      '  ID_OFFERTA = :ID_OFFERTA')
    SelectSQL.Strings = (
      'select * from  TAB_OFFERTE'
      'order by DATAINIZIO descending')
    ModifySQL.Strings = (
      'update TAB_OFFERTE'
      'set'
      '  ID_OFFERTA = :ID_OFFERTA,'
      '  DESCR = :DESCR,'
      '  TIPO = :TIPO,'
      '  DATAINIZIO = :DATAINIZIO,'
      '  DATAFINE = :DATAFINE,'
      '  NUMPEZZI = :NUMPEZZI,'
      '  PREZZOUNITARIO = :PREZZOUNITARIO,'
      '  PREZZOCONF = :PREZZOCONF,'
      '  SCONTOPERC = :SCONTOPERC,'
      '  AZIONE = :AZIONE,'
      '  GIORNISETT = :GIORNISETT'
      'where'
      '  ID_OFFERTA = :OLD_ID_OFFERTA')
    GeneratorField.Field = 'ID_OFFERTA'
    GeneratorField.Generator = 'GEN_TAGLIOFAS'
    Left = 448
    Top = 304
    object ibtOfferteDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_OFFERTE"."DESCR"'
      Size = 50
    end
    object ibtOfferteDATAINIZIO: TDateTimeField
      FieldName = 'DATAINIZIO'
      Origin = '"TAB_OFFERTE"."DATAINIZIO"'
    end
    object ibtOfferteDATAFINE: TDateTimeField
      FieldName = 'DATAFINE'
      Origin = '"TAB_OFFERTE"."DATAFINE"'
    end
    object ibtOfferteNUMPEZZI: TFloatField
      FieldName = 'NUMPEZZI'
      Origin = '"TAB_OFFERTE"."NUMPEZZI"'
    end
    object ibtOffertePREZZOUNITARIO: TFloatField
      FieldName = 'PREZZOUNITARIO'
      Origin = '"TAB_OFFERTE"."PREZZOUNITARIO"'
      currency = True
    end
    object ibtOffertePREZZOCONF: TFloatField
      FieldName = 'PREZZOCONF'
      Origin = '"TAB_OFFERTE"."PREZZOCONF"'
      currency = True
    end
    object ibtOfferteTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = '"TAB_OFFERTE"."TIPO"'
    end
    object ibtOfferteSCONTOPERC: TIntegerField
      FieldName = 'SCONTOPERC'
      Origin = '"TAB_OFFERTE"."SCONTOPERC"'
    end
    object ibtOfferteAZIONE: TIBStringField
      FieldName = 'AZIONE'
      Origin = '"TAB_OFFERTE"."AZIONE"'
      Size = 2
    end
    object ibtOfferteGIORNISETT: TIntegerField
      FieldName = 'GIORNISETT'
      Origin = '"TAB_OFFERTE"."GIORNISETT"'
    end
    object ibtOfferteID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_OFFERTE"."ID_OFFERTA"'
      Required = True
    end
  end
  object ibtStampaDetDoc: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BeforeOpen = ibtStampaDetDocBeforeOpen
    DeleteSQL.Strings = (
      'delete from tab_det_doc'
      'where'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into tab_det_doc'
      '  (ID_DOC_DET, NUM_RIGA_ID, TIPO_RIGA, CODICE_ARTICOLO, DESCR, '
      'COSTO, COSTOINVALUTA, '
      '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, '
      'SCONTO3, '
      '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, '
      'DEP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, '
      'DATA_REG, '
      '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, '
      'RIF_DDT_ID_DOC, '
      '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, '
      'RIF_PRE_ID_DOC, '
      '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, '
      'RIF_ORD_NUM_DOC, RIF_DDT_NUM_DOC, '
      '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, '
      'OP_VAL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C)'
      'values'
      
        '  (:ID_DOC_DET, :NUM_RIGA_ID, :TIPO_RIGA, :CODICE_ARTICOLO, :DES' +
        'CR, '
      ':COSTO, '
      
        '   :COSTOINVALUTA, :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA,' +
        ' '
      ':SCONTO1, '
      '   :SCONTO2, :SCONTO3, :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, '
      ':IMPORTOINVALUTA, '
      
        '   :OMAGGIO, :DEP, :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVA' +
        'TO, '
      ':IMPORTO_CON_IVA, '
      
        '   :CODICE_IVA_ID, :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :R' +
        'IF_A_DDT, '
      '   :RIF_ID_DOC_DET, :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, '
      ':RIF_ORD_ID_DOC, '
      '   :RIF_ORD_DATA_DOC, :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, '
      ':PIANOCONTO_ID, '
      '   :RIF_PRE_NUM_DOC, :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, '
      ':OP_QTA_DISPONIBILE, '
      
        '   :OP_VAL_DISPONIBILE, :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC' +
        '_ID, '
      ':TOTCOLLI, '
      '   :TOTSCAT, :PREZZOLIST, :SCHEDA, :PASSATA, :COL, :A, :B, :C)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_det_doc '
      'where'
      '  NUM_RIGA_ID = :NUM_RIGA_ID and'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DOC_ID = :DOC_ID')
    SelectSQL.Strings = (
      
        'select tab_det_doc.*, tab_articoli.descr2,tab_articoli.CAT_ART_M' +
        'ARCA_ID from tab_det_Doc'
      'join tab_Articoli on'
      'tab_det_doc.codice_articolo=tab_articoli.codice_articolo'
      'where tab_det_doc.doc_id=:ID_DOCUMENTO'
      'order by DOC_ID, NUM_RIGA_ID')
    ModifySQL.Strings = (
      'update tab_det_doc'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C'
      'where'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID and'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID')
    DataSource = dsStampaDoc
    Left = 496
    Top = 328
    object ibtStampaDetDocID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object ibtStampaDetDocNUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
    end
    object ibtStampaDetDocTIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object ibtStampaDetDocCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object ibtStampaDetDocDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object ibtStampaDetDocCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
      currency = True
    end
    object ibtStampaDetDocCOSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
      currency = True
    end
    object ibtStampaDetDocUNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object ibtStampaDetDocFATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object ibtStampaDetDocQTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object ibtStampaDetDocQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object ibtStampaDetDocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object ibtStampaDetDocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object ibtStampaDetDocSCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object ibtStampaDetDocSCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object ibtStampaDetDocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
      currency = True
    end
    object ibtStampaDetDocIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
      currency = True
    end
    object ibtStampaDetDocIMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
      currency = True
    end
    object ibtStampaDetDocOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object ibtStampaDetDocDEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object ibtStampaDetDocSCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object ibtStampaDetDocPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object ibtStampaDetDocTIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object ibtStampaDetDocIVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
      currency = True
    end
    object ibtStampaDetDocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
      currency = True
    end
    object ibtStampaDetDocCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibtStampaDetDocDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object ibtStampaDetDocRIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object ibtStampaDetDocRIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object ibtStampaDetDocRIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object ibtStampaDetDocRIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object ibtStampaDetDocRIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object ibtStampaDetDocRIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object ibtStampaDetDocRIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object ibtStampaDetDocRIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object ibtStampaDetDocRIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object ibtStampaDetDocRIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object ibtStampaDetDocRIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object ibtStampaDetDocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object ibtStampaDetDocRIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object ibtStampaDetDocRIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object ibtStampaDetDocRIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object ibtStampaDetDocOP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object ibtStampaDetDocOP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object ibtStampaDetDocOP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object ibtStampaDetDocOP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object ibtStampaDetDocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object ibtStampaDetDocTOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object ibtStampaDetDocTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object ibtStampaDetDocPREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object ibtStampaDetDocSCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object ibtStampaDetDocPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object ibtStampaDetDocCOL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object ibtStampaDetDocA: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object ibtStampaDetDocB: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object ibtStampaDetDocC: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object ibtStampaDetDocDESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object ibtStampaDetDocMarca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = ibqMarca
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_MARCA_ID'
      Lookup = True
    end
    object ibtStampaDetDocCAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
  end
  object ibTab_Taglie: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from tab_taglie'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into tab_taglie'
      '  (PK_CODICE, DESCR, CODICE)'
      'values'
      '  (:PK_CODICE, :DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_taglie '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select pk_codice,descr,codice from tab_taglie'
      'order by descr')
    ModifySQL.Strings = (
      'update tab_taglie'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TAGLIA'
    Left = 744
    Top = 504
    object ibTab_TagliePK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_TAGLIE"."PK_CODICE"'
    end
    object ibTab_TaglieDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_TAGLIE"."DESCR"'
      Size = 50
    end
    object ibTab_TaglieCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_TAGLIE"."CODICE"'
      Size = 7
    end
  end
  object ibqryTaglia: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BeforeOpen = IBDataSet1BeforeOpen
    DeleteSQL.Strings = (
      'delete from TAGLIA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAGLIA'
      '  (TAGLIA, DESCR, CODICE_ARTICOLO, PK_CODICE)'
      'values'
      '  (:TAGLIA, :DESCR, :CODICE_ARTICOLO, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  TAGLIA,'
      '  DESCR,'
      '  CODICE_ARTICOLO,'
      '  PK_CODICE'
      'from TAGLIA '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from TAGLIA'
      'wHERE CODICE_ARTICOLO = :parcodArt'
      'Order By DESCR')
    ModifySQL.Strings = (
      'update TAGLIA'
      'set'
      '  TAGLIA = :TAGLIA,'
      '  DESCR = :DESCR,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TAGLIA'
    Left = 360
    Top = 40
    object ibqryTagliaTAGLIA: TFloatField
      FieldName = 'TAGLIA'
      Origin = '"TAGLIA"."TAGLIA"'
    end
    object ibqryTagliaDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAGLIA"."DESCR"'
    end
    object ibqryTagliaCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAGLIA"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqryTagliaPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAGLIA"."PK_CODICE"'
      Required = True
    end
    object ibqryTagliaCOPPA: TIBStringField
      FieldName = 'COPPA'
      Origin = '"TAGLIA"."COPPA"'
    end
  end
  object ibqAltreSedi: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_ALTRE_SEDI'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_ALTRE_SEDI'
      
        '  (CLI_FOR_ID, INDIRIZZO, CAP, CITTA, PROVINCIA_ID, TEL, FAX, PR' +
        'OV2, RAGSOC, '
      '   PK_CODICE)'
      'values'
      
        '  (:CLI_FOR_ID, :INDIRIZZO, :CAP, :CITTA, :PROVINCIA_ID, :TEL, :' +
        'FAX, :PROV2, '
      '   :RAGSOC, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_FOR_ID,'
      '  INDIRIZZO,'
      '  CAP,'
      '  CITTA,'
      '  PROVINCIA_ID,'
      '  TEL,'
      '  FAX,'
      '  PROV2,'
      '  RAGSOC,'
      '  PK_CODICE'
      'from TAB_ALTRE_SEDI '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from TAB_ALTRE_SEDI where cli_for_id=:ID_CLI_FOR'
      'ORDER BY PK_CODICE,CLI_FOR_ID')
    ModifySQL.Strings = (
      'update TAB_ALTRE_SEDI'
      'set'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  CAP = :CAP,'
      '  CITTA = :CITTA,'
      '  PROVINCIA_ID = :PROVINCIA_ID,'
      '  TEL = :TEL,'
      '  FAX = :FAX,'
      '  PROV2 = :PROV2,'
      '  RAGSOC = :RAGSOC,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_ALTRE_SEDI'
    DataSource = dsoqTabCli
    Left = 16
    Top = 384
    object ibqAltreSediCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ALTRE_SEDI"."CLI_FOR_ID"'
    end
    object ibqAltreSediINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_ALTRE_SEDI"."INDIRIZZO"'
      Size = 100
    end
    object ibqAltreSediCAP: TIBStringField
      FieldName = 'CAP'
      Origin = '"TAB_ALTRE_SEDI"."CAP"'
      Size = 5
    end
    object ibqAltreSediCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_ALTRE_SEDI"."CITTA"'
      Size = 30
    end
    object ibqAltreSediPROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
      Origin = '"TAB_ALTRE_SEDI"."PROVINCIA_ID"'
    end
    object ibqAltreSediTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"TAB_ALTRE_SEDI"."TEL"'
      Size = 15
    end
    object ibqAltreSediFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_ALTRE_SEDI"."FAX"'
      Size = 15
    end
    object ibqAltreSediPROV2: TIBStringField
      FieldName = 'PROV2'
      Origin = '"TAB_ALTRE_SEDI"."PROV2"'
      Size = 5
    end
    object ibqAltreSediRAGSOC: TIBStringField
      FieldName = 'RAGSOC'
      Origin = '"TAB_ALTRE_SEDI"."RAGSOC"'
      Size = 100
    end
    object ibqAltreSediPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_ALTRE_SEDI"."PK_CODICE"'
      Required = True
    end
  end
  object IBQryCommessi: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_COMMESSI'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_COMMESSI'
      
        '  (CODICE, DESCR, TEL2, TEL3, DATAN, QUALIFICA, LIVELLO, DATAASS' +
        ', TIPOCONT, '
      
        '   SSN, LIBLAV, DATALIB, NULLAOS, DATANULLAOS, FAMILIARI, VISITE' +
        'M, RITENUTE, '
      
        '   INPS, INAIL, VARIE, MALATTIE, CARMAL, AZIENDA, PAGAORD, PAGAS' +
        'TRA, PAGAFE, '
      
        '   PAGATRA, PAGATRASF, PAGASPEC, INDIRIZZO, ASSFAM, CITTA, PROV,' +
        ' TEL1)'
      'values'
      
        '  (:CODICE, :DESCR, :TEL2, :TEL3, :DATAN, :QUALIFICA, :LIVELLO, ' +
        ':DATAASS, '
      
        '   :TIPOCONT, :SSN, :LIBLAV, :DATALIB, :NULLAOS, :DATANULLAOS, :' +
        'FAMILIARI, '
      
        '   :VISITEM, :RITENUTE, :INPS, :INAIL, :VARIE, :MALATTIE, :CARMA' +
        'L, :AZIENDA, '
      
        '   :PAGAORD, :PAGASTRA, :PAGAFE, :PAGATRA, :PAGATRASF, :PAGASPEC' +
        ', :INDIRIZZO, '
      '   :ASSFAM, :CITTA, :PROV, :TEL1)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  TEL2,'
      '  TEL3,'
      '  DATAN,'
      '  QUALIFICA,'
      '  LIVELLO,'
      '  DATAASS,'
      '  TIPOCONT,'
      '  SSN,'
      '  LIBLAV,'
      '  DATALIB,'
      '  NULLAOS,'
      '  DATANULLAOS,'
      '  FAMILIARI,'
      '  VISITEM,'
      '  RITENUTE,'
      '  INPS,'
      '  INAIL,'
      '  VARIE,'
      '  MALATTIE,'
      '  CARMAL,'
      '  AZIENDA,'
      '  PAGAORD,'
      '  PAGASTRA,'
      '  PAGAFE,'
      '  PAGATRA,'
      '  PAGATRASF,'
      '  PAGASPEC,'
      '  INDIRIZZO,'
      '  ASSFAM,'
      '  CITTA,'
      '  PROV,'
      '  TEL1'
      'from TAB_COMMESSI '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_COMMESSI'
      'order by DESCR')
    ModifySQL.Strings = (
      'update TAB_COMMESSI'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  DATAN = :DATAN,'
      '  QUALIFICA = :QUALIFICA,'
      '  LIVELLO = :LIVELLO,'
      '  DATAASS = :DATAASS,'
      '  TIPOCONT = :TIPOCONT,'
      '  SSN = :SSN,'
      '  LIBLAV = :LIBLAV,'
      '  DATALIB = :DATALIB,'
      '  NULLAOS = :NULLAOS,'
      '  DATANULLAOS = :DATANULLAOS,'
      '  FAMILIARI = :FAMILIARI,'
      '  VISITEM = :VISITEM,'
      '  RITENUTE = :RITENUTE,'
      '  INPS = :INPS,'
      '  INAIL = :INAIL,'
      '  VARIE = :VARIE,'
      '  MALATTIE = :MALATTIE,'
      '  CARMAL = :CARMAL,'
      '  AZIENDA = :AZIENDA,'
      '  PAGAORD = :PAGAORD,'
      '  PAGASTRA = :PAGASTRA,'
      '  PAGAFE = :PAGAFE,'
      '  PAGATRA = :PAGATRA,'
      '  PAGATRASF = :PAGATRASF,'
      '  PAGASPEC = :PAGASPEC,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  ASSFAM = :ASSFAM,'
      '  CITTA = :CITTA,'
      '  PROV = :PROV,'
      '  TEL1 = :TEL1'
      'where'
      '  CODICE = :OLD_CODICE')
    GeneratorField.Field = 'CODICE'
    GeneratorField.Generator = 'GEN_COMMESSI'
    Left = 736
    Top = 200
    object IBQryCommessiCODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_COMMESSI"."CODICE"'
      Required = True
    end
    object IBQryCommessiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_COMMESSI"."DESCR"'
      Size = 100
    end
    object IBQryCommessiTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_COMMESSI"."TEL2"'
      Size = 15
    end
    object IBQryCommessiTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_COMMESSI"."TEL3"'
      Size = 15
    end
    object IBQryCommessiDATAN: TDateTimeField
      FieldName = 'DATAN'
      Origin = '"TAB_COMMESSI"."DATAN"'
    end
    object IBQryCommessiQUALIFICA: TIBStringField
      FieldName = 'QUALIFICA'
      Origin = '"TAB_COMMESSI"."QUALIFICA"'
      Size = 100
    end
    object IBQryCommessiLIVELLO: TIBStringField
      FieldName = 'LIVELLO'
      Origin = '"TAB_COMMESSI"."LIVELLO"'
      Size = 15
    end
    object IBQryCommessiDATAASS: TDateTimeField
      FieldName = 'DATAASS'
      Origin = '"TAB_COMMESSI"."DATAASS"'
    end
    object IBQryCommessiTIPOCONT: TIBStringField
      FieldName = 'TIPOCONT'
      Origin = '"TAB_COMMESSI"."TIPOCONT"'
      Size = 50
    end
    object IBQryCommessiSSN: TIBStringField
      FieldName = 'SSN'
      Origin = '"TAB_COMMESSI"."SSN"'
      Size = 15
    end
    object IBQryCommessiLIBLAV: TIBStringField
      FieldName = 'LIBLAV'
      Origin = '"TAB_COMMESSI"."LIBLAV"'
      Size = 50
    end
    object IBQryCommessiDATALIB: TDateTimeField
      FieldName = 'DATALIB'
      Origin = '"TAB_COMMESSI"."DATALIB"'
    end
    object IBQryCommessiNULLAOS: TIBStringField
      FieldName = 'NULLAOS'
      Origin = '"TAB_COMMESSI"."NULLAOS"'
      Size = 50
    end
    object IBQryCommessiDATANULLAOS: TDateTimeField
      FieldName = 'DATANULLAOS'
      Origin = '"TAB_COMMESSI"."DATANULLAOS"'
    end
    object IBQryCommessiFAMILIARI: TIBStringField
      FieldName = 'FAMILIARI'
      Origin = '"TAB_COMMESSI"."FAMILIARI"'
      Size = 100
    end
    object IBQryCommessiVISITEM: TIBStringField
      FieldName = 'VISITEM'
      Origin = '"TAB_COMMESSI"."VISITEM"'
      Size = 15
    end
    object IBQryCommessiRITENUTE: TFloatField
      FieldName = 'RITENUTE'
      Origin = '"TAB_COMMESSI"."RITENUTE"'
    end
    object IBQryCommessiINPS: TFloatField
      FieldName = 'INPS'
      Origin = '"TAB_COMMESSI"."INPS"'
    end
    object IBQryCommessiINAIL: TFloatField
      FieldName = 'INAIL'
      Origin = '"TAB_COMMESSI"."INAIL"'
    end
    object IBQryCommessiVARIE: TFloatField
      FieldName = 'VARIE'
      Origin = '"TAB_COMMESSI"."VARIE"'
    end
    object IBQryCommessiMALATTIE: TFloatField
      FieldName = 'MALATTIE'
      Origin = '"TAB_COMMESSI"."MALATTIE"'
    end
    object IBQryCommessiCARMAL: TFloatField
      FieldName = 'CARMAL'
      Origin = '"TAB_COMMESSI"."CARMAL"'
    end
    object IBQryCommessiAZIENDA: TFloatField
      FieldName = 'AZIENDA'
      Origin = '"TAB_COMMESSI"."AZIENDA"'
    end
    object IBQryCommessiPAGAORD: TFloatField
      FieldName = 'PAGAORD'
      Origin = '"TAB_COMMESSI"."PAGAORD"'
      currency = True
    end
    object IBQryCommessiPAGASTRA: TFloatField
      FieldName = 'PAGASTRA'
      Origin = '"TAB_COMMESSI"."PAGASTRA"'
      currency = True
    end
    object IBQryCommessiPAGAFE: TFloatField
      FieldName = 'PAGAFE'
      Origin = '"TAB_COMMESSI"."PAGAFE"'
      currency = True
    end
    object IBQryCommessiPAGATRA: TFloatField
      FieldName = 'PAGATRA'
      Origin = '"TAB_COMMESSI"."PAGATRA"'
      currency = True
    end
    object IBQryCommessiPAGATRASF: TFloatField
      FieldName = 'PAGATRASF'
      Origin = '"TAB_COMMESSI"."PAGATRASF"'
      currency = True
    end
    object IBQryCommessiPAGASPEC: TFloatField
      FieldName = 'PAGASPEC'
      Origin = '"TAB_COMMESSI"."PAGASPEC"'
      currency = True
    end
    object IBQryCommessiINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_COMMESSI"."INDIRIZZO"'
      Size = 50
    end
    object IBQryCommessiASSFAM: TFloatField
      FieldName = 'ASSFAM'
      Origin = '"TAB_COMMESSI"."ASSFAM"'
    end
    object IBQryCommessiCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_COMMESSI"."CITTA"'
      Size = 50
    end
    object IBQryCommessiPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_COMMESSI"."PROV"'
      Size = 2
    end
    object IBQryCommessiTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_COMMESSI"."TEL1"'
      Size = 15
    end
  end
  object ibTab_Unita_di_Misura: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_UNITA_DI_MISURA'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_UNITA_DI_MISURA'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_UNITA_DI_MISURA '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_UNITA_DI_MISURA')
    ModifySQL.Strings = (
      'update TAB_UNITA_DI_MISURA'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 576
    Top = 416
    object ibTab_Unita_di_MisuraCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_UNITA_DI_MISURA"."CODICE"'
      Required = True
      Size = 3
    end
    object ibTab_Unita_di_MisuraDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_UNITA_DI_MISURA"."DESCR"'
      Size = 50
    end
  end
  object ibTab_Ubicazioni: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_UBICAZIONI'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_UBICAZIONI'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_UBICAZIONI '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_UBICAZIONI')
    ModifySQL.Strings = (
      'update TAB_UBICAZIONI'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 776
    Top = 192
    object ibTab_UbicazioniCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_UBICAZIONI"."CODICE"'
      Required = True
      Size = 4
    end
    object ibTab_UbicazioniDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_UBICAZIONI"."DESCR"'
      Size = 50
    end
  end
  object ibTab_Marca: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_MARCA'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_MARCA'
      '  (DESCR, CODICE)'
      'values'
      '  (:DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  DESCR,'
      '  CODICE'
      'from TAB_MARCA '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_MARCA'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_MARCA'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  CODICE = :OLD_CODICE')
    GeneratorField.Field = 'CODICE'
    GeneratorField.Generator = 'GEN_MARCA'
    Left = 192
    Top = 96
  end
  object ibTab_Famiglia: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_FAMIGLIA'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_FAMIGLIA'
      '  (DESCR, CODICE)'
      'values'
      '  (:DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  DESCR,'
      '  CODICE'
      'from TAB_FAMIGLIA '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_FAMIGLIA'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_FAMIGLIA'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  CODICE = :OLD_CODICE')
    GeneratorField.Field = 'CODICE'
    GeneratorField.Generator = 'GEN_FAMIGLIA'
    Left = 616
    Top = 128
  end
  object ibTab_Gruppo: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_GRUPPO'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_GRUPPO'
      '  (DESCR, CODICE, RIC, SC)'
      'values'
      '  (:DESCR, :CODICE, :RIC, :SC)')
    RefreshSQL.Strings = (
      'Select '
      '  DESCR,'
      '  CODICE,'
      '  RIC,'
      '  SC'
      'from TAB_GRUPPO '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_GRUPPO'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_GRUPPO'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE,'
      '  RIC = :RIC,'
      '  SC = :SC'
      'where'
      '  CODICE = :OLD_CODICE')
    GeneratorField.Field = 'CODICE'
    GeneratorField.Generator = 'GEN_GRUPPO'
    Left = 582
    Top = 211
    object ibTab_GruppoDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_GRUPPO"."DESCR"'
      Size = 50
    end
    object ibTab_GruppoCODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_GRUPPO"."CODICE"'
      Required = True
    end
    object ibTab_GruppoRIC: TFloatField
      FieldName = 'RIC'
      Origin = '"TAB_GRUPPO"."RIC"'
      currency = True
    end
    object ibTab_GruppoSC: TIBStringField
      FieldName = 'SC'
      Origin = '"TAB_GRUPPO"."SC"'
      Size = 4
    end
  end
  object ibTab_Tipo: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BufferChunks = 100
    DeleteSQL.Strings = (
      'delete from TAB_TIPO'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_TIPO'
      '  (DESCR, CODICE)'
      'values'
      '  (:DESCR, :CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  DESCR,'
      '  CODICE'
      'from TAB_TIPO '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_TIPO'
      'order by descr')
    ModifySQL.Strings = (
      'update TAB_TIPO'
      'set'
      '  DESCR = :DESCR,'
      '  CODICE = :CODICE'
      'where'
      '  CODICE = :OLD_CODICE')
    GeneratorField.Field = 'CODICE'
    GeneratorField.Generator = 'GEN_TIPO'
    Left = 768
    Top = 40
    object ibTab_TipoDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_TIPO"."DESCR"'
      Size = 50
    end
    object ibTab_TipoCODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_TIPO"."CODICE"'
      Required = True
    end
  end
  object ibTab_Articoli: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_ARTICOLI'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into TAB_ARTICOLI'
      '  (CODICE_ARTICOLO, DESCR, DESCR2, CODICE_IVA_ID, '
      'UNITA_DI_MISURA1_ID, '
      '   UNITA_DI_MISURA2_ID, UNITA_DI_MISURA3_ID, SCONTO1, SCONTO2, '
      'SCONTO3, '
      '   PROVVIGIONE, PESO_NETTO_KG, PESO_LORDO_KG, SCORTA_MIN, '
      'SCORTA_MAX, LOTTO_RIORDINO, '
      '   GG_APPROVVIGIONAMENTO, QTA_X_CONFEZIONE, ANNO, '
      'DESCR_AGGIUNTIVA_ID, '
      '   PREZZO_BASE, COSTO_STANDART, TIPO_ARTICOLO_ID, FATT_CONV1, '
      'FATT_CONV2, '
      '   COSTO_ID, RICAVO_ID, GIORNI_MAX_INVENDUTO, ASPETTO_ID, '
      'RIORDINO_MESE_DA, '
      '   RIORDINO_MESE_A, RIORDINO_GIORNO_DA, RIORDINO_GIORNO_A, '
      'STAGIONE_ID, '
      '   GRUPPO_ALTERNATIVO, PRODUTTORE_ID, CATEGORIA_ARTICOLO_ID, '
      'CATEGORIA_MERCEOLOGICA_ID, '
      
        '   CODICE_BASE, DERIVATO, VARIANTE1_ID, VARIANTE2_ID, VARIANTE3_' +
        'ID, '
      'NUM_VARIANTI, '
      '   TIPO_COSTO_ID, TIPO_RICAVO_ID, OMAGGIO, TIPO_CLI_FOR_ID, '
      'CLI_FOR_ID, '
      '   CODE_BAR, DESCR_CODE_BAR, NON_STAMPA_INVENTARIO, '
      'NON_STAMPA_REGISTRO, '
      '   NOMENCLATURA, FATT_CONV1_NOMENCLATURA, '
      'FATT_CONV2_NOMENCLATURA, PROV_ORDINE, '
      '   COSTO_ULTIMO, DATA_COSTO_ULTIMO, NUM_REPARTO, '
      'TIPO_CODE_BAR_ID, CONTO_ACQUISTO, '
      
        '   CONTO_VENDITA, UN_MIS2_VAL, UN_MIS3_VAL, CAT_ART_FAMIGLIA_ID,' +
        ' '
      'CAT_ART_GRUPPO_ID, '
      '   CAT_ART_MARCA_ID, FOTO_PERCORSO, CAT_ART_TIPO_ID, '
      'FLAG_ACCESSORIE, DATAMOD, '
      
        '   SCONTO4, PREZZO_IVATO, P2IVATO, P3IVATO, P4IVATO, P5IVATO, SC' +
        '21, '
      'SC22, '
      
        '   SC23, SC31, SC32, SC33, SC41, SC42, SC43, SC51, SC52, SC53, R' +
        '2, R3, '
      
        '   R4, R5, IMP2, IMP3, IMP4, IMP5, RICARPREC, P6IVATO, IMP6, STR' +
        'UTT, CA, '
      
        '   CG, AG, CA2, CG2, AG2, CA3, CG3, AG3, CA4, CG4, AG4, CA5, CG5' +
        ', AG5, '
      '   CA6, CG6, AG6, ID_OFFERTA, CR, CR2, CR3, CR4, CR5, CR6)'
      'values'
      '  (:CODICE_ARTICOLO, :DESCR, :DESCR2, :CODICE_IVA_ID, '
      ':UNITA_DI_MISURA1_ID, '
      
        '   :UNITA_DI_MISURA2_ID, :UNITA_DI_MISURA3_ID, :SCONTO1, :SCONTO' +
        '2, '
      ':SCONTO3, '
      '   :PROVVIGIONE, :PESO_NETTO_KG, :PESO_LORDO_KG, :SCORTA_MIN, '
      ':SCORTA_MAX, '
      '   :LOTTO_RIORDINO, :GG_APPROVVIGIONAMENTO, :QTA_X_CONFEZIONE, '
      ':ANNO, :DESCR_AGGIUNTIVA_ID, '
      
        '   :PREZZO_BASE, :COSTO_STANDART, :TIPO_ARTICOLO_ID, :FATT_CONV1' +
        ', '
      ':FATT_CONV2, '
      '   :COSTO_ID, :RICAVO_ID, :GIORNI_MAX_INVENDUTO, :ASPETTO_ID, '
      ':RIORDINO_MESE_DA, '
      '   :RIORDINO_MESE_A, :RIORDINO_GIORNO_DA, :RIORDINO_GIORNO_A, '
      ':STAGIONE_ID, '
      '   :GRUPPO_ALTERNATIVO, :PRODUTTORE_ID, :CATEGORIA_ARTICOLO_ID, '
      ':CATEGORIA_MERCEOLOGICA_ID, '
      '   :CODICE_BASE, :DERIVATO, :VARIANTE1_ID, :VARIANTE2_ID, '
      ':VARIANTE3_ID, '
      '   :NUM_VARIANTI, :TIPO_COSTO_ID, :TIPO_RICAVO_ID, :OMAGGIO, '
      ':TIPO_CLI_FOR_ID, '
      
        '   :CLI_FOR_ID, :CODE_BAR, :DESCR_CODE_BAR, :NON_STAMPA_INVENTAR' +
        'IO, '
      ':NON_STAMPA_REGISTRO, '
      '   :NOMENCLATURA, :FATT_CONV1_NOMENCLATURA, '
      ':FATT_CONV2_NOMENCLATURA, :PROV_ORDINE, '
      '   :COSTO_ULTIMO, :DATA_COSTO_ULTIMO, :NUM_REPARTO, '
      ':TIPO_CODE_BAR_ID, '
      '   :CONTO_ACQUISTO, :CONTO_VENDITA, :UN_MIS2_VAL, :UN_MIS3_VAL, '
      ':CAT_ART_FAMIGLIA_ID, '
      '   :CAT_ART_GRUPPO_ID, :CAT_ART_MARCA_ID, :FOTO_PERCORSO, '
      ':CAT_ART_TIPO_ID, '
      
        '   :FLAG_ACCESSORIE, :DATAMOD, :SCONTO4, :PREZZO_IVATO, :P2IVATO' +
        ', '
      ':P3IVATO, '
      
        '   :P4IVATO, :P5IVATO, :SC21, :SC22, :SC23, :SC31, :SC32, :SC33,' +
        ' :SC41, '
      
        '   :SC42, :SC43, :SC51, :SC52, :SC53, :R2, :R3, :R4, :R5, :IMP2,' +
        ' :IMP3, '
      
        '   :IMP4, :IMP5, :RICARPREC, :P6IVATO, :IMP6, :STRUTT, :CA, :CG,' +
        ' :AG, :CA2, '
      
        '   :CG2, :AG2, :CA3, :CG3, :AG3, :CA4, :CG4, :AG4, :CA5, :CG5, :' +
        'AG5, :CA6, '
      '   :CG6, :AG6, :ID_OFFERTA, :CR, :CR2, :CR3, :CR4, :CR5, :CR6)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  DESCR2,'
      '  CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  PROVVIGIONE,'
      '  PESO_NETTO_KG,'
      '  PESO_LORDO_KG,'
      '  SCORTA_MIN,'
      '  SCORTA_MAX,'
      '  LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE,'
      '  ANNO,'
      '  DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE,'
      '  COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID,'
      '  FATT_CONV1,'
      '  FATT_CONV2,'
      '  COSTO_ID,'
      '  RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID,'
      '  RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A,'
      '  STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE,'
      '  DERIVATO,'
      '  VARIANTE1_ID,'
      '  VARIANTE2_ID,'
      '  VARIANTE3_ID,'
      '  NUM_VARIANTI,'
      '  TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID,'
      '  OMAGGIO,'
      '  TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID,'
      '  CODE_BAR,'
      '  DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE,'
      '  COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO,'
      '  CONTO_VENDITA,'
      '  UN_MIS2_VAL,'
      '  UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE,'
      '  DATAMOD,'
      '  SCONTO4,'
      '  PREZZO_IVATO,'
      '  P2IVATO,'
      '  P3IVATO,'
      '  P4IVATO,'
      '  P5IVATO,'
      '  SC21,'
      '  SC22,'
      '  SC23,'
      '  SC31,'
      '  SC32,'
      '  SC33,'
      '  SC41,'
      '  SC42,'
      '  SC43,'
      '  SC51,'
      '  SC52,'
      '  SC53,'
      '  R2,'
      '  R3,'
      '  R4,'
      '  R5,'
      '  IMP2,'
      '  IMP3,'
      '  IMP4,'
      '  IMP5,'
      '  RICARPREC,'
      '  P6IVATO,'
      '  IMP6,'
      '  STRUTT,'
      '  CA,'
      '  CG,'
      '  AG,'
      '  CA2,'
      '  CG2,'
      '  AG2,'
      '  CA3,'
      '  CG3,'
      '  AG3,'
      '  CA4,'
      '  CG4,'
      '  AG4,'
      '  CA5,'
      '  CG5,'
      '  AG5,'
      '  CA6,'
      '  CG6,'
      '  AG6,'
      '  ID_OFFERTA,'
      '  CR,'
      '  CR2,'
      '  CR3,'
      '  CR4,'
      '  CR5,'
      '  CR6'
      'from TAB_ARTICOLI '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Where FLAG_ACCESSORIE like '#39'N'#39
      'Order By CODICE_ARTICOLO,DESCR')
    ModifySQL.Strings = (
      'update TAB_ARTICOLI'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  DESCR2 = :DESCR2,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID = :UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID = :UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID = :UNITA_DI_MISURA3_ID,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  PESO_NETTO_KG = :PESO_NETTO_KG,'
      '  PESO_LORDO_KG = :PESO_LORDO_KG,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO = :GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE = :QTA_X_CONFEZIONE,'
      '  ANNO = :ANNO,'
      '  DESCR_AGGIUNTIVA_ID = :DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID = :TIPO_ARTICOLO_ID,'
      '  FATT_CONV1 = :FATT_CONV1,'
      '  FATT_CONV2 = :FATT_CONV2,'
      '  COSTO_ID = :COSTO_ID,'
      '  RICAVO_ID = :RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO = :GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID = :ASPETTO_ID,'
      '  RIORDINO_MESE_DA = :RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A = :RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA = :RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A = :RIORDINO_GIORNO_A,'
      '  STAGIONE_ID = :STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO = :GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID = :PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID = :CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE = :CODICE_BASE,'
      '  DERIVATO = :DERIVATO,'
      '  VARIANTE1_ID = :VARIANTE1_ID,'
      '  VARIANTE2_ID = :VARIANTE2_ID,'
      '  VARIANTE3_ID = :VARIANTE3_ID,'
      '  NUM_VARIANTI = :NUM_VARIANTI,'
      '  TIPO_COSTO_ID = :TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID = :TIPO_RICAVO_ID,'
      '  OMAGGIO = :OMAGGIO,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODE_BAR = :CODE_BAR,'
      '  DESCR_CODE_BAR = :DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO = :NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO = :NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA = :NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA = :FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA = :FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE = :PROV_ORDINE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO = :DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO = :NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID = :TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO = :CONTO_ACQUISTO,'
      '  CONTO_VENDITA = :CONTO_VENDITA,'
      '  UN_MIS2_VAL = :UN_MIS2_VAL,'
      '  UN_MIS3_VAL = :UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID = :CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID = :CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID = :CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO = :FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID = :CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE = :FLAG_ACCESSORIE,'
      '  DATAMOD = :DATAMOD,'
      '  SCONTO4 = :SCONTO4,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  P2IVATO = :P2IVATO,'
      '  P3IVATO = :P3IVATO,'
      '  P4IVATO = :P4IVATO,'
      '  P5IVATO = :P5IVATO,'
      '  SC21 = :SC21,'
      '  SC22 = :SC22,'
      '  SC23 = :SC23,'
      '  SC31 = :SC31,'
      '  SC32 = :SC32,'
      '  SC33 = :SC33,'
      '  SC41 = :SC41,'
      '  SC42 = :SC42,'
      '  SC43 = :SC43,'
      '  SC51 = :SC51,'
      '  SC52 = :SC52,'
      '  SC53 = :SC53,'
      '  R2 = :R2,'
      '  R3 = :R3,'
      '  R4 = :R4,'
      '  R5 = :R5,'
      '  IMP2 = :IMP2,'
      '  IMP3 = :IMP3,'
      '  IMP4 = :IMP4,'
      '  IMP5 = :IMP5,'
      '  RICARPREC = :RICARPREC,'
      '  P6IVATO = :P6IVATO,'
      '  IMP6 = :IMP6,'
      '  STRUTT = :STRUTT,'
      '  CA = :CA,'
      '  CG = :CG,'
      '  AG = :AG,'
      '  CA2 = :CA2,'
      '  CG2 = :CG2,'
      '  AG2 = :AG2,'
      '  CA3 = :CA3,'
      '  CG3 = :CG3,'
      '  AG3 = :AG3,'
      '  CA4 = :CA4,'
      '  CG4 = :CG4,'
      '  AG4 = :AG4,'
      '  CA5 = :CA5,'
      '  CG5 = :CG5,'
      '  AG5 = :AG5,'
      '  CA6 = :CA6,'
      '  CG6 = :CG6,'
      '  AG6 = :AG6,'
      '  ID_OFFERTA = :ID_OFFERTA,'
      '  CR = :CR,'
      '  CR2 = :CR2,'
      '  CR3 = :CR3,'
      '  CR4 = :CR4,'
      '  CR5 = :CR5,'
      '  CR6 = :CR6'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 768
    Top = 416
    object ibTab_ArticoliCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibTab_ArticoliDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object ibTab_ArticoliCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibTab_ArticoliUNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object ibTab_ArticoliUNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object ibTab_ArticoliUNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object ibTab_ArticoliSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object ibTab_ArticoliSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object ibTab_ArticoliSCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object ibTab_ArticoliPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object ibTab_ArticoliPESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object ibTab_ArticoliPESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
      currency = True
    end
    object ibTab_ArticoliSCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object ibTab_ArticoliSCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object ibTab_ArticoliLOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object ibTab_ArticoliGG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object ibTab_ArticoliQTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object ibTab_ArticoliANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object ibTab_ArticoliDESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object ibTab_ArticoliPREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
      currency = True
    end
    object ibTab_ArticoliCOSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
      currency = True
    end
    object ibTab_ArticoliTIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object ibTab_ArticoliFATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object ibTab_ArticoliFATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object ibTab_ArticoliCOSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object ibTab_ArticoliRICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object ibTab_ArticoliGIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object ibTab_ArticoliASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object ibTab_ArticoliRIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object ibTab_ArticoliRIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object ibTab_ArticoliRIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object ibTab_ArticoliRIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object ibTab_ArticoliSTAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object ibTab_ArticoliGRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object ibTab_ArticoliPRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object ibTab_ArticoliCATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object ibTab_ArticoliCATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object ibTab_ArticoliCODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object ibTab_ArticoliDERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object ibTab_ArticoliVARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object ibTab_ArticoliVARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object ibTab_ArticoliVARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object ibTab_ArticoliNUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object ibTab_ArticoliTIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object ibTab_ArticoliTIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object ibTab_ArticoliOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object ibTab_ArticoliTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object ibTab_ArticoliCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object ibTab_ArticoliCODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object ibTab_ArticoliDESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object ibTab_ArticoliNON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object ibTab_ArticoliNON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object ibTab_ArticoliNOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object ibTab_ArticoliFATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object ibTab_ArticoliFATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object ibTab_ArticoliPROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object ibTab_ArticoliCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
      currency = True
    end
    object ibTab_ArticoliDATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object ibTab_ArticoliNUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object ibTab_ArticoliTIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object ibTab_ArticoliCONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object ibTab_ArticoliCONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object ibTab_ArticoliUN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object ibTab_ArticoliUN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object ibTab_ArticoliCAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object ibTab_ArticoliCAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object ibTab_ArticoliCAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object ibTab_ArticoliFOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object ibTab_ArticoliCAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object ibTab_ArticoliFLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object ibTab_ArticoliDATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object ibTab_ArticoliSCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object ibTab_ArticoliPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
      currency = True
    end
    object ibTab_ArticoliP2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
      currency = True
    end
    object ibTab_ArticoliP3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
      currency = True
    end
    object ibTab_ArticoliP4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
      currency = True
    end
    object ibTab_ArticoliP5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
      currency = True
    end
    object ibTab_ArticoliSC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliSC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliR2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object ibTab_ArticoliR3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object ibTab_ArticoliR4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object ibTab_ArticoliR5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object ibTab_ArticoliIMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
      currency = True
    end
    object ibTab_ArticoliIMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
      currency = True
    end
    object ibTab_ArticoliIMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
      currency = True
    end
    object ibTab_ArticoliIMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
      currency = True
    end
    object ibTab_ArticoliRICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
      DisplayFormat = '#,##.0'
    end
    object ibTab_ArticoliP6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
      currency = True
    end
    object ibTab_ArticoliIMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
      currency = True
    end
    object ibTab_ArticoliSTRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
      currency = True
    end
    object ibTab_ArticoliCA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
      currency = True
    end
    object ibTab_ArticoliCG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
      currency = True
    end
    object ibTab_ArticoliAG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
      currency = True
    end
    object ibTab_ArticoliCA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
      currency = True
    end
    object ibTab_ArticoliCG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
      currency = True
    end
    object ibTab_ArticoliAG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
      currency = True
    end
    object ibTab_ArticoliCA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
      currency = True
    end
    object ibTab_ArticoliCG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
      currency = True
    end
    object ibTab_ArticoliAG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
      currency = True
    end
    object ibTab_ArticoliCA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
      currency = True
    end
    object ibTab_ArticoliCG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
      currency = True
    end
    object ibTab_ArticoliAG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
      currency = True
    end
    object ibTab_ArticoliCA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
      currency = True
    end
    object ibTab_ArticoliCG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
      currency = True
    end
    object ibTab_ArticoliAG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
      currency = True
    end
    object ibTab_ArticoliCA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
      currency = True
    end
    object ibTab_ArticoliCG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
      currency = True
    end
    object ibTab_ArticoliAG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
      currency = True
    end
    object ibTab_ArticoliID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object ibTab_ArticoliCR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
      currency = True
    end
    object ibTab_ArticoliCR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
      currency = True
    end
    object ibTab_ArticoliCR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
      currency = True
    end
    object ibTab_ArticoliCR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
      currency = True
    end
    object ibTab_ArticoliCR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
      currency = True
    end
    object ibTab_ArticoliCR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
      currency = True
    end
    object ibTab_ArticoliDESCR2: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 10002
    end
    object ibTab_ArticoliFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"TAB_ARTICOLI"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object ibqryColori: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibqryColori2AfterInsert
    BeforeOpen = ibqryColori2BeforeOpen
    DeleteSQL.Strings = (
      'delete from COLORI'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into COLORI'
      '  (COLORE, DESCR, CODICE_ARTICOLO, PK_CODICE)'
      'values'
      '  (:COLORE, :DESCR, :CODICE_ARTICOLO, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  COLORE,'
      '  DESCR,'
      '  CODICE_ARTICOLO,'
      '  PK_CODICE'
      'from COLORI '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from COLORI'
      'wHERE CODICE_ARTICOLO = :parcodArt'
      'Order By COLORE')
    ModifySQL.Strings = (
      'update COLORI'
      'set'
      '  COLORE = :COLORE,'
      '  DESCR = :DESCR,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_COLORI'
    Left = 464
    object ibqryColoriCOLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = '"COLORI"."COLORE"'
      Size = 100
    end
    object ibqryColoriDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"COLORI"."DESCR"'
    end
    object ibqryColoriCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"COLORI"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqryColoriPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"COLORI"."PK_CODICE"'
      Required = True
    end
  end
  object ibqryAssort: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibqryAssort2AfterInsert
    DeleteSQL.Strings = (
      'delete from ASSORTIMENTO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into ASSORTIMENTO'
      
        '  (CODICE_ARTICOLO, TAGLIA01, TAGLIA02, TAGLIA03, TAGLIA04, TAGL' +
        'IA05, TAGLIA06, '
      '   TAGLIA07, TAGLIA08, TAGLIA09, TAGLIA10, COLORE, PK_CODICE)'
      'values'
      
        '  (:CODICE_ARTICOLO, :TAGLIA01, :TAGLIA02, :TAGLIA03, :TAGLIA04,' +
        ' :TAGLIA05, '
      
        '   :TAGLIA06, :TAGLIA07, :TAGLIA08, :TAGLIA09, :TAGLIA10, :COLOR' +
        'E, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  TAGLIA01,'
      '  TAGLIA02,'
      '  TAGLIA03,'
      '  TAGLIA04,'
      '  TAGLIA05,'
      '  TAGLIA06,'
      '  TAGLIA07,'
      '  TAGLIA08,'
      '  TAGLIA09,'
      '  TAGLIA10,'
      '  COLORE,'
      '  PK_CODICE'
      'from ASSORTIMENTO '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from ASSORTIMENTO'
      'WHERE CODICE_ARTICOLO=:CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update ASSORTIMENTO'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  TAGLIA01 = :TAGLIA01,'
      '  TAGLIA02 = :TAGLIA02,'
      '  TAGLIA03 = :TAGLIA03,'
      '  TAGLIA04 = :TAGLIA04,'
      '  TAGLIA05 = :TAGLIA05,'
      '  TAGLIA06 = :TAGLIA06,'
      '  TAGLIA07 = :TAGLIA07,'
      '  TAGLIA08 = :TAGLIA08,'
      '  TAGLIA09 = :TAGLIA09,'
      '  TAGLIA10 = :TAGLIA10,'
      '  COLORE = :COLORE,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_ASSORTIMENTO'
    DataSource = dsoTab_Articoli
    Left = 376
    Top = 96
    object ibqryAssortCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"ASSORTIMENTO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqryAssortTAGLIA01: TIntegerField
      FieldName = 'TAGLIA01'
      Origin = '"ASSORTIMENTO"."TAGLIA01"'
    end
    object ibqryAssortTAGLIA02: TIntegerField
      FieldName = 'TAGLIA02'
      Origin = '"ASSORTIMENTO"."TAGLIA02"'
    end
    object ibqryAssortTAGLIA03: TIntegerField
      FieldName = 'TAGLIA03'
      Origin = '"ASSORTIMENTO"."TAGLIA03"'
    end
    object ibqryAssortTAGLIA04: TIntegerField
      FieldName = 'TAGLIA04'
      Origin = '"ASSORTIMENTO"."TAGLIA04"'
    end
    object ibqryAssortTAGLIA05: TIntegerField
      FieldName = 'TAGLIA05'
      Origin = '"ASSORTIMENTO"."TAGLIA05"'
    end
    object ibqryAssortTAGLIA06: TIntegerField
      FieldName = 'TAGLIA06'
      Origin = '"ASSORTIMENTO"."TAGLIA06"'
    end
    object ibqryAssortTAGLIA07: TIntegerField
      FieldName = 'TAGLIA07'
      Origin = '"ASSORTIMENTO"."TAGLIA07"'
    end
    object ibqryAssortTAGLIA08: TIntegerField
      FieldName = 'TAGLIA08'
      Origin = '"ASSORTIMENTO"."TAGLIA08"'
    end
    object ibqryAssortTAGLIA09: TIntegerField
      FieldName = 'TAGLIA09'
      Origin = '"ASSORTIMENTO"."TAGLIA09"'
    end
    object ibqryAssortTAGLIA10: TIntegerField
      FieldName = 'TAGLIA10'
      Origin = '"ASSORTIMENTO"."TAGLIA10"'
    end
    object ibqryAssortCOLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = '"ASSORTIMENTO"."COLORE"'
      Size = 100
    end
    object ibqryAssortPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"ASSORTIMENTO"."PK_CODICE"'
      Required = True
    end
  end
  object ibTab_Cod_Agg_D: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibTab_Cod_Agg_DAfterInsert
    DeleteSQL.Strings = (
      'delete from TAB_CODICI_AGGIUNTIVI'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  CODICE_AGGIUNTIVO = :OLD_CODICE_AGGIUNTIVO')
    InsertSQL.Strings = (
      'insert into TAB_CODICI_AGGIUNTIVI'
      '  (CODICE_ARTICOLO, CLI_FOR_ID, CODICE_AGGIUNTIVO, '
      'TIPO_CODICE_AGGIUNTIVO_ID, '
      '   QUANTITA, DESCR, VAR1_TG, VAR2_COL)'
      'values'
      '  (:CODICE_ARTICOLO, :CLI_FOR_ID, :CODICE_AGGIUNTIVO, '
      ':TIPO_CODICE_AGGIUNTIVO_ID, '
      '   :QUANTITA, :DESCR, :VAR1_TG, :VAR2_COL)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  CLI_FOR_ID,'
      '  CODICE_AGGIUNTIVO,'
      '  TIPO_CODICE_AGGIUNTIVO_ID,'
      '  QUANTITA,'
      '  DESCR,'
      '  VAR1_TG,'
      '  VAR2_COL'
      'from TAB_CODICI_AGGIUNTIVI '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  CODICE_AGGIUNTIVO = :CODICE_AGGIUNTIVO')
    SelectSQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Articolo=:codice_articolo'
      'order by CODICE_AGGIUNTIVO')
    ModifySQL.Strings = (
      'update TAB_CODICI_AGGIUNTIVI'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODICE_AGGIUNTIVO = :CODICE_AGGIUNTIVO,'
      '  TIPO_CODICE_AGGIUNTIVO_ID = :TIPO_CODICE_AGGIUNTIVO_ID,'
      '  QUANTITA = :QUANTITA,'
      '  DESCR = :DESCR,'
      '  VAR1_TG = :VAR1_TG,'
      '  VAR2_COL = :VAR2_COL'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  CODICE_AGGIUNTIVO = :OLD_CODICE_AGGIUNTIVO')
    DataSource = dsoTab_Articoli
    Left = 240
    Top = 88
    object ibTab_Cod_Agg_DCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object ibTab_Cod_Agg_DCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object ibTab_Cod_Agg_DCODICE_AGGIUNTIVO: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object ibTab_Cod_Agg_DTIPO_CODICE_AGGIUNTIVO_ID: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object ibTab_Cod_Agg_DQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object ibTab_Cod_Agg_DDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
    object ibTab_Cod_Agg_DVAR1_TG: TIBStringField
      FieldName = 'VAR1_TG'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."VAR1_TG"'
      Size = 50
    end
    object ibTab_Cod_Agg_DVAR2_COL: TIBStringField
      FieldName = 'VAR2_COL'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."VAR2_COL"'
      Size = 50
    end
  end
  object ibqCont_Art: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    BeforeInsert = ibqCont_ArtBeforeInsert
    DeleteSQL.Strings = (
      'delete from TAB_CONTABILE_ARTICOLO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    InsertSQL.Strings = (
      'insert into TAB_CONTABILE_ARTICOLO'
      
        '  (CLI_FOR_ID, CODICE_ARTICOLO, COSTO_GIACENZA_INIZIALE, COSTO_U' +
        'LTIMO, '
      
        '   DATA_ULTIMA_VENDITA, DATA_ULTIMO_ACQUISTO, DEPOSITO_ID, DESCR' +
        ', DISPONIBILITA, '
      
        '   GIACENZA_ATTUALE, MED_PREZZO_VEND, MEDIA_SPESE, MEDIO_COSTO_A' +
        'CQ, PRETAGLIO, '
      
        '   QTA_ACQUISTI, QTA_ALTRE_ENTRATE, QTA_ALTRE_USCITE, QTA_EVASA_' +
        'CLIENTE, '
      
        '   QTA_EVASA_FORNITORE, QTA_GIACENZA_INIZIALE, QTA_IMPEGNATO, QT' +
        'A_ORDINATO, '
      
        '   QTA_RESO_CLIENTE, QTA_RESO_FORNITORE, QTA_VENDITA, TIPO_CLI_F' +
        'OR_ID, '
      
        '   ULT_COSTO_ACQ, ULT_PREZZO_VEND, VAL_ACQUISTI, VAL_ALTRE_ENTRA' +
        'TE, VAL_ALTRE_USCITA, '
      
        '   VAL_EVASO_CLIENTE, VAL_EVASO_FORNITORE, VAL_GIACENZA_INIZIALE' +
        ', VAL_ORDINATO, '
      
        '   VAL_QTA_IMPEGNATO, VAL_RESO_CLIENTE, VAL_RESO_FORNITORE, VAL_' +
        'VENDITA)'
      'values'
      
        '  (:CLI_FOR_ID, :CODICE_ARTICOLO, :COSTO_GIACENZA_INIZIALE, :COS' +
        'TO_ULTIMO, '
      
        '   :DATA_ULTIMA_VENDITA, :DATA_ULTIMO_ACQUISTO, :DEPOSITO_ID, :D' +
        'ESCR, :DISPONIBILITA, '
      
        '   :GIACENZA_ATTUALE, :MED_PREZZO_VEND, :MEDIA_SPESE, :MEDIO_COS' +
        'TO_ACQ, '
      
        '   :PRETAGLIO, :QTA_ACQUISTI, :QTA_ALTRE_ENTRATE, :QTA_ALTRE_USC' +
        'ITE, :QTA_EVASA_CLIENTE, '
      
        '   :QTA_EVASA_FORNITORE, :QTA_GIACENZA_INIZIALE, :QTA_IMPEGNATO,' +
        ' :QTA_ORDINATO, '
      
        '   :QTA_RESO_CLIENTE, :QTA_RESO_FORNITORE, :QTA_VENDITA, :TIPO_C' +
        'LI_FOR_ID, '
      
        '   :ULT_COSTO_ACQ, :ULT_PREZZO_VEND, :VAL_ACQUISTI, :VAL_ALTRE_E' +
        'NTRATE, '
      
        '   :VAL_ALTRE_USCITA, :VAL_EVASO_CLIENTE, :VAL_EVASO_FORNITORE, ' +
        ':VAL_GIACENZA_INIZIALE, '
      
        '   :VAL_ORDINATO, :VAL_QTA_IMPEGNATO, :VAL_RESO_CLIENTE, :VAL_RE' +
        'SO_FORNITORE, '
      '   :VAL_VENDITA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DEPOSITO_ID,'
      '  CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID,'
      '  DESCR,'
      '  QTA_ACQUISTI,'
      '  VAL_ACQUISTI,'
      '  QTA_VENDITA,'
      '  VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO,'
      '  VAL_ORDINATO,'
      '  QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE,'
      '  DISPONIBILITA,'
      '  COSTO_ULTIMO,'
      '  MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO,'
      '  MEDIA_SPESE'
      'from TAB_CONTABILE_ARTICOLO '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID')
    SelectSQL.Strings = (
      'select TAB_CONTABILE_ARTICOLO.*, tab_articoli.descr'
      'from TAB_CONTABILE_ARTICOLO inner join tab_articoli on '
      
        'TAB_CONTABILE_ARTICOLO.codice_Articolo = tab_articoli.codice_Art' +
        'icolo'
      'where CODICE_ARTICOLO=:parCod_Art And DEPOSITO_ID=:parCod_Dep'
      'order by codice_Articolo,deposito_id')
    ModifySQL.Strings = (
      'update TAB_CONTABILE_ARTICOLO'
      'set'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  COSTO_GIACENZA_INIZIALE = :COSTO_GIACENZA_INIZIALE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  DESCR = :DESCR,'
      '  DISPONIBILITA = :DISPONIBILITA,'
      '  GIACENZA_ATTUALE = :GIACENZA_ATTUALE,'
      '  MED_PREZZO_VEND = :MED_PREZZO_VEND,'
      '  MEDIA_SPESE = :MEDIA_SPESE,'
      '  MEDIO_COSTO_ACQ = :MEDIO_COSTO_ACQ,'
      '  PRETAGLIO = :PRETAGLIO,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  ULT_COSTO_ACQ = :ULT_COSTO_ACQ,'
      '  ULT_PREZZO_VEND = :ULT_PREZZO_VEND,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  VAL_ALTRE_USCITA = :VAL_ALTRE_USCITA,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  VAL_QTA_IMPEGNATO = :VAL_QTA_IMPEGNATO,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  VAL_VENDITA = :VAL_VENDITA'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    Left = 304
    Top = 136
    object ibqCont_ArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqCont_ArtDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object ibqCont_ArtCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object ibqCont_ArtTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object ibqCont_ArtDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 102
    end
    object ibqCont_ArtQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
      currency = True
    end
    object ibqCont_ArtQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
      currency = True
    end
    object ibqCont_ArtQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
      currency = True
    end
    object ibqCont_ArtQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
      currency = True
    end
    object ibqCont_ArtQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
      currency = True
    end
    object ibqCont_ArtQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
      currency = True
    end
    object ibqCont_ArtQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
      currency = True
    end
    object ibqCont_ArtQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
      currency = True
    end
    object ibqCont_ArtQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
      currency = True
    end
    object ibqCont_ArtQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
      currency = True
    end
    object ibqCont_ArtQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
      currency = True
    end
    object ibqCont_ArtVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
      currency = True
    end
    object ibqCont_ArtGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
      currency = True
    end
    object ibqCont_ArtMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
      currency = True
    end
    object ibqCont_ArtULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
      currency = True
    end
    object ibqCont_ArtMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
      currency = True
    end
    object ibqCont_ArtULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
      currency = True
    end
    object ibqCont_ArtDATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object ibqCont_ArtDATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object ibqCont_ArtPRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
      DisplayFormat = '#,##.00'
    end
    object ibqCont_ArtDESCR1: TIBStringField
      FieldName = 'DESCR1'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object ibqCont_ArtMEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
      DisplayFormat = '#,##.00'
    end
  end
  object ibTab_Reparti: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from Tab_Reparti'
      'where'
      '  ID_NUMERO_REPARTO = :OLD_ID_NUMERO_REPARTO')
    InsertSQL.Strings = (
      'insert into Tab_Reparti'
      
        '  (ID_NUMERO_REPARTO, DESCR, CODICE_IVA_ID, DEFAULT_REPARTO, LOC' +
        'AZIONE_IVA)'
      'values'
      
        '  (:ID_NUMERO_REPARTO, :DESCR, :CODICE_IVA_ID, :DEFAULT_REPARTO,' +
        ' :LOCAZIONE_IVA)')
    RefreshSQL.Strings = (
      'Select *'
      'from Tab_Reparti '
      'where'
      '  ID_NUMERO_REPARTO = :ID_NUMERO_REPARTO')
    SelectSQL.Strings = (
      'select * from Tab_Reparti'
      'order by ID_NUMERO_REPARTO')
    ModifySQL.Strings = (
      'update Tab_Reparti'
      'set'
      '  ID_NUMERO_REPARTO = :ID_NUMERO_REPARTO,'
      '  DESCR = :DESCR,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DEFAULT_REPARTO = :DEFAULT_REPARTO,'
      '  LOCAZIONE_IVA = :LOCAZIONE_IVA'
      'where'
      '  ID_NUMERO_REPARTO = :OLD_ID_NUMERO_REPARTO')
    Left = 360
    Top = 184
  end
  object ibqTab_For: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_CLI_FOR'
      'where'
      '  ID_CLI_FOR = :OLD_ID_CLI_FOR')
    InsertSQL.Strings = (
      'insert into TAB_CLI_FOR'
      '  (ID_CLI_FOR, TIPO, DENOMINAZIONE, COGNOME, NOME, NOME_ALTRO, '
      'INDIRIZZO, '
      '   COMUNE_ID, PARTITA_IVA, CODICE_FISCALE, PERSONA_FISICA, '
      'PIANO_CONTI_ID, '
      '   CONTO_CORRENTE, MONETA_ID, PAGAMENTO_ID, CODICE_ZONA_ID, '
      'CODICE_SOTTO_ZONA_ID, '
      '   CATEGORIA_CLIENTE_ID, AGENTE_ID, PROVVIGIONE, LINGUA_ID, '
      'CODICE_LISTINO, '
      '   SCONTO_TESTATA1, SCONTO_TESTATA2, TEL1, TEL2, FAX, EMAIL, '
      'INTERNET, '
      
        '   DATA_DI_NASCITA, SESSO, TITOLO_ID, PORTO_ID, FIDO, ABILITA_PA' +
        'RTITA, '
      '   FATTURA_RIEPILOGATIVA, ACCORPA_ARTICOLI, IVA_SOSPESA, '
      'POS_RIF_BOLLE, '
      
        '   CODICE_IVA_ESENTE, RIP_RIF_BOLLE, ESCLUDI_MESE1, RIP_RIF_ORDI' +
        'NI, '
      'ESCLUDI_MESE2, '
      '   TIPO_CONTO_ID, NAZIONE_ID, NAZIONE_DI_NASCITA_ID, '
      'RAGGRUPPAMENTO_ID, '
      '   RISCHIO, GG_SCADENZA1, GG_SCADENZA2, CONTROPARTITA_ID, '
      'TIPO_CONTROPARTITA, '
      '   CERTIFICATO, DENOMINAZIONE2, INDIRIZZO2, LOCALITA, '
      'COMUNE_DI_NASCITA_ID, '
      '   CAB_ID, ABI_ID, TITOLO_DESCR, COMNASC_DESCR, CAPNASC_DESCR, '
      'NAZNASC_DESCR, '
      '   COM_DESCR, CAP_DESCR, PR_DESCR, CAB_DESCR, ABI_DESCR, '
      'NAZ_DESCR, FASON, '
      '   NOTE, CG, CA, COD2, CR)'
      'values'
      
        '  (:ID_CLI_FOR, :TIPO, :DENOMINAZIONE, :COGNOME, :NOME, :NOME_AL' +
        'TRO, '
      ':INDIRIZZO, '
      '   :COMUNE_ID, :PARTITA_IVA, :CODICE_FISCALE, :PERSONA_FISICA, '
      ':PIANO_CONTI_ID, '
      '   :CONTO_CORRENTE, :MONETA_ID, :PAGAMENTO_ID, :CODICE_ZONA_ID, '
      ':CODICE_SOTTO_ZONA_ID, '
      '   :CATEGORIA_CLIENTE_ID, :AGENTE_ID, :PROVVIGIONE, :LINGUA_ID, '
      ':CODICE_LISTINO, '
      
        '   :SCONTO_TESTATA1, :SCONTO_TESTATA2, :TEL1, :TEL2, :FAX, :EMAI' +
        'L, '
      ':INTERNET, '
      '   :DATA_DI_NASCITA, :SESSO, :TITOLO_ID, :PORTO_ID, :FIDO, '
      ':ABILITA_PARTITA, '
      '   :FATTURA_RIEPILOGATIVA, :ACCORPA_ARTICOLI, :IVA_SOSPESA, '
      ':POS_RIF_BOLLE, '
      
        '   :CODICE_IVA_ESENTE, :RIP_RIF_BOLLE, :ESCLUDI_MESE1, :RIP_RIF_' +
        'ORDINI, '
      '   :ESCLUDI_MESE2, :TIPO_CONTO_ID, :NAZIONE_ID, '
      ':NAZIONE_DI_NASCITA_ID, '
      '   :RAGGRUPPAMENTO_ID, :RISCHIO, :GG_SCADENZA1, :GG_SCADENZA2, '
      ':CONTROPARTITA_ID, '
      
        '   :TIPO_CONTROPARTITA, :CERTIFICATO, :DENOMINAZIONE2, :INDIRIZZ' +
        'O2, '
      ':LOCALITA, '
      '   :COMUNE_DI_NASCITA_ID, :CAB_ID, :ABI_ID, :TITOLO_DESCR, '
      ':COMNASC_DESCR, '
      '   :CAPNASC_DESCR, :NAZNASC_DESCR, :COM_DESCR, :CAP_DESCR, '
      ':PR_DESCR, :CAB_DESCR, '
      '   :ABI_DESCR, :NAZ_DESCR, :FASON, :NOTE, :CG, :CA, :COD2, :CR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLI_FOR,'
      '  TIPO,'
      '  DENOMINAZIONE,'
      '  COGNOME,'
      '  NOME,'
      '  NOME_ALTRO,'
      '  FULL_NAME,'
      '  INDIRIZZO,'
      '  COMUNE_ID,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  PERSONA_FISICA,'
      '  PIANO_CONTI_ID,'
      '  CONTO_CORRENTE,'
      '  MONETA_ID,'
      '  PAGAMENTO_ID,'
      '  CODICE_ZONA_ID,'
      '  CODICE_SOTTO_ZONA_ID,'
      '  CATEGORIA_CLIENTE_ID,'
      '  AGENTE_ID,'
      '  PROVVIGIONE,'
      '  LINGUA_ID,'
      '  CODICE_LISTINO,'
      '  SCONTO_TESTATA1,'
      '  SCONTO_TESTATA2,'
      '  TEL1,'
      '  TEL2,'
      '  FAX,'
      '  EMAIL,'
      '  INTERNET,'
      '  DATA_DI_NASCITA,'
      '  SESSO,'
      '  TITOLO_ID,'
      '  PORTO_ID,'
      '  FIDO,'
      '  ABILITA_PARTITA,'
      '  FATTURA_RIEPILOGATIVA,'
      '  ACCORPA_ARTICOLI,'
      '  IVA_SOSPESA,'
      '  POS_RIF_BOLLE,'
      '  CODICE_IVA_ESENTE,'
      '  RIP_RIF_BOLLE,'
      '  ESCLUDI_MESE1,'
      '  RIP_RIF_ORDINI,'
      '  ESCLUDI_MESE2,'
      '  TIPO_CONTO_ID,'
      '  NAZIONE_ID,'
      '  NAZIONE_DI_NASCITA_ID,'
      '  RAGGRUPPAMENTO_ID,'
      '  RISCHIO,'
      '  GG_SCADENZA1,'
      '  GG_SCADENZA2,'
      '  CONTROPARTITA_ID,'
      '  TIPO_CONTROPARTITA,'
      '  CERTIFICATO,'
      '  DENOMINAZIONE2,'
      '  INDIRIZZO2,'
      '  LOCALITA,'
      '  COMUNE_DI_NASCITA_ID,'
      '  CAB_ID,'
      '  ABI_ID,'
      '  TITOLO_DESCR,'
      '  COMNASC_DESCR,'
      '  CAPNASC_DESCR,'
      '  NAZNASC_DESCR,'
      '  COM_DESCR,'
      '  CAP_DESCR,'
      '  PR_DESCR,'
      '  CAB_DESCR,'
      '  ABI_DESCR,'
      '  NAZ_DESCR,'
      '  FASON,'
      '  NOTE,'
      '  CG,'
      '  CA,'
      '  COD2,'
      '  CR'
      'from TAB_CLI_FOR '
      'where'
      '  ID_CLI_FOR = :ID_CLI_FOR')
    SelectSQL.Strings = (
      'select * from TAB_CLI_FOR Where TIPO=2 order by denominazione')
    ModifySQL.Strings = (
      'update TAB_CLI_FOR'
      'set'
      '  ID_CLI_FOR = :ID_CLI_FOR,'
      '  TIPO = :TIPO,'
      '  DENOMINAZIONE = :DENOMINAZIONE,'
      '  COGNOME = :COGNOME,'
      '  NOME = :NOME,'
      '  NOME_ALTRO = :NOME_ALTRO,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  COMUNE_ID = :COMUNE_ID,'
      '  PARTITA_IVA = :PARTITA_IVA,'
      '  CODICE_FISCALE = :CODICE_FISCALE,'
      '  PERSONA_FISICA = :PERSONA_FISICA,'
      '  PIANO_CONTI_ID = :PIANO_CONTI_ID,'
      '  CONTO_CORRENTE = :CONTO_CORRENTE,'
      '  MONETA_ID = :MONETA_ID,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  CODICE_ZONA_ID = :CODICE_ZONA_ID,'
      '  CODICE_SOTTO_ZONA_ID = :CODICE_SOTTO_ZONA_ID,'
      '  CATEGORIA_CLIENTE_ID = :CATEGORIA_CLIENTE_ID,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  LINGUA_ID = :LINGUA_ID,'
      '  CODICE_LISTINO = :CODICE_LISTINO,'
      '  SCONTO_TESTATA1 = :SCONTO_TESTATA1,'
      '  SCONTO_TESTATA2 = :SCONTO_TESTATA2,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  INTERNET = :INTERNET,'
      '  DATA_DI_NASCITA = :DATA_DI_NASCITA,'
      '  SESSO = :SESSO,'
      '  TITOLO_ID = :TITOLO_ID,'
      '  PORTO_ID = :PORTO_ID,'
      '  FIDO = :FIDO,'
      '  ABILITA_PARTITA = :ABILITA_PARTITA,'
      '  FATTURA_RIEPILOGATIVA = :FATTURA_RIEPILOGATIVA,'
      '  ACCORPA_ARTICOLI = :ACCORPA_ARTICOLI,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  POS_RIF_BOLLE = :POS_RIF_BOLLE,'
      '  CODICE_IVA_ESENTE = :CODICE_IVA_ESENTE,'
      '  RIP_RIF_BOLLE = :RIP_RIF_BOLLE,'
      '  ESCLUDI_MESE1 = :ESCLUDI_MESE1,'
      '  RIP_RIF_ORDINI = :RIP_RIF_ORDINI,'
      '  ESCLUDI_MESE2 = :ESCLUDI_MESE2,'
      '  TIPO_CONTO_ID = :TIPO_CONTO_ID,'
      '  NAZIONE_ID = :NAZIONE_ID,'
      '  NAZIONE_DI_NASCITA_ID = :NAZIONE_DI_NASCITA_ID,'
      '  RAGGRUPPAMENTO_ID = :RAGGRUPPAMENTO_ID,'
      '  RISCHIO = :RISCHIO,'
      '  GG_SCADENZA1 = :GG_SCADENZA1,'
      '  GG_SCADENZA2 = :GG_SCADENZA2,'
      '  CONTROPARTITA_ID = :CONTROPARTITA_ID,'
      '  TIPO_CONTROPARTITA = :TIPO_CONTROPARTITA,'
      '  CERTIFICATO = :CERTIFICATO,'
      '  DENOMINAZIONE2 = :DENOMINAZIONE2,'
      '  INDIRIZZO2 = :INDIRIZZO2,'
      '  LOCALITA = :LOCALITA,'
      '  COMUNE_DI_NASCITA_ID = :COMUNE_DI_NASCITA_ID,'
      '  CAB_ID = :CAB_ID,'
      '  ABI_ID = :ABI_ID,'
      '  TITOLO_DESCR = :TITOLO_DESCR,'
      '  COMNASC_DESCR = :COMNASC_DESCR,'
      '  CAPNASC_DESCR = :CAPNASC_DESCR,'
      '  NAZNASC_DESCR = :NAZNASC_DESCR,'
      '  COM_DESCR = :COM_DESCR,'
      '  CAP_DESCR = :CAP_DESCR,'
      '  PR_DESCR = :PR_DESCR,'
      '  CAB_DESCR = :CAB_DESCR,'
      '  ABI_DESCR = :ABI_DESCR,'
      '  NAZ_DESCR = :NAZ_DESCR,'
      '  FASON = :FASON,'
      '  NOTE = :NOTE,'
      '  CG = :CG,'
      '  CA = :CA,'
      '  COD2 = :COD2,'
      '  CR = :CR'
      'where'
      '  ID_CLI_FOR = :OLD_ID_CLI_FOR')
    GeneratorField.Field = 'ID_CLI_FOR'
    GeneratorField.Generator = 'GEN_ID_CLI_FOR'
    Left = 288
    Top = 48
    object ibqTab_ForID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Origin = '"TAB_CLI_FOR"."ID_CLI_FOR"'
      Required = True
    end
    object ibqTab_ForTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_CLI_FOR"."TIPO"'
    end
    object ibqTab_ForDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object ibqTab_ForCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = '"TAB_CLI_FOR"."COGNOME"'
      Size = 30
    end
    object ibqTab_ForNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLI_FOR"."NOME"'
      Size = 30
    end
    object ibqTab_ForNOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Origin = '"TAB_CLI_FOR"."NOME_ALTRO"'
      Size = 30
    end
    object ibqTab_ForFULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      Origin = '"TAB_CLI_FOR"."FULL_NAME"'
      ReadOnly = True
      Size = 92
    end
    object ibqTab_ForINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO"'
      Size = 100
    end
    object ibqTab_ForCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_ID"'
    end
    object ibqTab_ForPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object ibqTab_ForCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_CLI_FOR"."CODICE_FISCALE"'
      Size = 30
    end
    object ibqTab_ForPERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
      Origin = '"TAB_CLI_FOR"."PERSONA_FISICA"'
    end
    object ibqTab_ForPIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
      Origin = '"TAB_CLI_FOR"."PIANO_CONTI_ID"'
    end
    object ibqTab_ForCONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Origin = '"TAB_CLI_FOR"."CONTO_CORRENTE"'
      Size = 30
    end
    object ibqTab_ForMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_CLI_FOR"."MONETA_ID"'
      Size = 4
    end
    object ibqTab_ForPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."PAGAMENTO_ID"'
      Size = 5
    end
    object ibqTab_ForCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_ZONA_ID"'
      Size = 7
    end
    object ibqTab_ForCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object ibqTab_ForCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Origin = '"TAB_CLI_FOR"."CATEGORIA_CLIENTE_ID"'
      Size = 4
    end
    object ibqTab_ForAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_CLI_FOR"."AGENTE_ID"'
      Size = 4
    end
    object ibqTab_ForPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_CLI_FOR"."PROVVIGIONE"'
    end
    object ibqTab_ForLINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Origin = '"TAB_CLI_FOR"."LINGUA_ID"'
      Size = 4
    end
    object ibqTab_ForCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Origin = '"TAB_CLI_FOR"."CODICE_LISTINO"'
      Size = 30
    end
    object ibqTab_ForSCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA1"'
    end
    object ibqTab_ForSCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA2"'
    end
    object ibqTab_ForTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_CLI_FOR"."TEL1"'
      Size = 15
    end
    object ibqTab_ForTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_CLI_FOR"."TEL2"'
      Size = 15
    end
    object ibqTab_ForFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_CLI_FOR"."FAX"'
      Size = 15
    end
    object ibqTab_ForEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLI_FOR"."EMAIL"'
      Size = 50
    end
    object ibqTab_ForINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_CLI_FOR"."INTERNET"'
      Size = 100
    end
    object ibqTab_ForDATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
      Origin = '"TAB_CLI_FOR"."DATA_DI_NASCITA"'
    end
    object ibqTab_ForSESSO: TIntegerField
      FieldName = 'SESSO'
      Origin = '"TAB_CLI_FOR"."SESSO"'
    end
    object ibqTab_ForTITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
      Origin = '"TAB_CLI_FOR"."TITOLO_ID"'
    end
    object ibqTab_ForPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"TAB_CLI_FOR"."PORTO_ID"'
      Size = 4
    end
    object ibqTab_ForFIDO: TFloatField
      FieldName = 'FIDO'
      Origin = '"TAB_CLI_FOR"."FIDO"'
    end
    object ibqTab_ForABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
      Origin = '"TAB_CLI_FOR"."ABILITA_PARTITA"'
    end
    object ibqTab_ForFATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
      Origin = '"TAB_CLI_FOR"."FATTURA_RIEPILOGATIVA"'
    end
    object ibqTab_ForACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
      Origin = '"TAB_CLI_FOR"."ACCORPA_ARTICOLI"'
    end
    object ibqTab_ForIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CLI_FOR"."IVA_SOSPESA"'
    end
    object ibqTab_ForPOS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."POS_RIF_BOLLE"'
    end
    object ibqTab_ForCODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Origin = '"TAB_CLI_FOR"."CODICE_IVA_ESENTE"'
      Size = 4
    end
    object ibqTab_ForRIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_BOLLE"'
    end
    object ibqTab_ForESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE1"'
    end
    object ibqTab_ForRIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_ORDINI"'
    end
    object ibqTab_ForESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE2"'
    end
    object ibqTab_ForTIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTO_ID"'
    end
    object ibqTab_ForNAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_ID"'
    end
    object ibqTab_ForNAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_DI_NASCITA_ID"'
    end
    object ibqTab_ForRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object ibqTab_ForRISCHIO: TFloatField
      FieldName = 'RISCHIO'
      Origin = '"TAB_CLI_FOR"."RISCHIO"'
    end
    object ibqTab_ForGG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA1"'
    end
    object ibqTab_ForGG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA2"'
    end
    object ibqTab_ForCONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
      Origin = '"TAB_CLI_FOR"."CONTROPARTITA_ID"'
    end
    object ibqTab_ForTIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTROPARTITA"'
    end
    object ibqTab_ForCERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
      Origin = '"TAB_CLI_FOR"."CERTIFICATO"'
    end
    object ibqTab_ForDENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE2"'
      Size = 50
    end
    object ibqTab_ForINDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO2"'
      Size = 100
    end
    object ibqTab_ForLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CLI_FOR"."LOCALITA"'
      Size = 50
    end
    object ibqTab_ForCOMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_DI_NASCITA_ID"'
    end
    object ibqTab_ForCAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Origin = '"TAB_CLI_FOR"."CAB_ID"'
      Size = 13
    end
    object ibqTab_ForABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CLI_FOR"."ABI_ID"'
      Size = 13
    end
    object ibqTab_ForTITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Origin = '"TAB_CLI_FOR"."TITOLO_DESCR"'
      Size = 10
    end
    object ibqTab_ForCOMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."COMNASC_DESCR"'
      Size = 50
    end
    object ibqTab_ForCAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."CAPNASC_DESCR"'
      Size = 5
    end
    object ibqTab_ForNAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZNASC_DESCR"'
    end
    object ibqTab_ForCOM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Origin = '"TAB_CLI_FOR"."COM_DESCR"'
      Size = 50
    end
    object ibqTab_ForCAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Origin = '"TAB_CLI_FOR"."CAP_DESCR"'
      Size = 5
    end
    object ibqTab_ForPR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Origin = '"TAB_CLI_FOR"."PR_DESCR"'
      Size = 2
    end
    object ibqTab_ForCAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Origin = '"TAB_CLI_FOR"."CAB_DESCR"'
      Size = 50
    end
    object ibqTab_ForABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Origin = '"TAB_CLI_FOR"."ABI_DESCR"'
      Size = 100
    end
    object ibqTab_ForNAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZ_DESCR"'
      Size = 50
    end
    object ibqTab_ForFASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object ibqTab_ForCG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_CLI_FOR"."CG"'
      Size = 4
    end
    object ibqTab_ForCA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_CLI_FOR"."CA"'
      Size = 4
    end
    object ibqTab_ForCOD2: TIBStringField
      FieldName = 'COD2'
      Origin = '"TAB_CLI_FOR"."COD2"'
      Size = 4
    end
    object ibqTab_ForCR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_CLI_FOR"."CR"'
      Size = 4
    end
    object ibqTab_ForNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 2000
    end
  end
  object ibTab_Piano_Conti: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_PIANO_CONTI'
      'where'
      '  ID_PIANO_CONTO = :OLD_ID_PIANO_CONTO')
    InsertSQL.Strings = (
      'insert into TAB_PIANO_CONTI'
      
        '  (ID_PIANO_CONTO, GRUPPO, CONTO, SOTTOCONTO, TIPO, DESCR, NATUR' +
        'A, LIVELLO, '
      
        '   RIVENDITA, STRUMENTALE, INDEDUCIBILE, STAMPA_IN_BILANCIO, VAR' +
        'IAZIONE_FISCALE, '
      
        '   DICH_REDDITI_ID, RAGGRUPPAMENTO_ID, CONTO_PERSONALIZZATO_ID, ' +
        'CAPO_CONTO_CLI_FOR, '
      '   SPECIALE)'
      'values'
      
        '  (:ID_PIANO_CONTO, :GRUPPO, :CONTO, :SOTTOCONTO, :TIPO, :DESCR,' +
        ' :NATURA, '
      
        '   :LIVELLO, :RIVENDITA, :STRUMENTALE, :INDEDUCIBILE, :STAMPA_IN' +
        '_BILANCIO, '
      
        '   :VARIAZIONE_FISCALE, :DICH_REDDITI_ID, :RAGGRUPPAMENTO_ID, :C' +
        'ONTO_PERSONALIZZATO_ID, '
      '   :CAPO_CONTO_CLI_FOR, :SPECIALE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PIANO_CONTO,'
      '  GRUPPO,'
      '  CONTO,'
      '  SOTTOCONTO,'
      '  NOME_CONTO,'
      '  TIPO,'
      '  DESCR,'
      '  NATURA,'
      '  LIVELLO,'
      '  RIVENDITA,'
      '  STRUMENTALE,'
      '  INDEDUCIBILE,'
      '  STAMPA_IN_BILANCIO,'
      '  VARIAZIONE_FISCALE,'
      '  DICH_REDDITI_ID,'
      '  RAGGRUPPAMENTO_ID,'
      '  CONTO_PERSONALIZZATO_ID,'
      '  CAPO_CONTO_CLI_FOR,'
      '  SPECIALE'
      'from TAB_PIANO_CONTI '
      'where'
      '  ID_PIANO_CONTO = :ID_PIANO_CONTO')
    SelectSQL.Strings = (
      'select * from TAB_PIANO_CONTI'
      'Order By NOME_CONTO')
    ModifySQL.Strings = (
      'update TAB_PIANO_CONTI'
      'set'
      '  ID_PIANO_CONTO = :ID_PIANO_CONTO,'
      '  GRUPPO = :GRUPPO,'
      '  CONTO = :CONTO,'
      '  SOTTOCONTO = :SOTTOCONTO,'
      '  TIPO = :TIPO,'
      '  DESCR = :DESCR,'
      '  NATURA = :NATURA,'
      '  LIVELLO = :LIVELLO,'
      '  RIVENDITA = :RIVENDITA,'
      '  STRUMENTALE = :STRUMENTALE,'
      '  INDEDUCIBILE = :INDEDUCIBILE,'
      '  STAMPA_IN_BILANCIO = :STAMPA_IN_BILANCIO,'
      '  VARIAZIONE_FISCALE = :VARIAZIONE_FISCALE,'
      '  DICH_REDDITI_ID = :DICH_REDDITI_ID,'
      '  RAGGRUPPAMENTO_ID = :RAGGRUPPAMENTO_ID,'
      '  CONTO_PERSONALIZZATO_ID = :CONTO_PERSONALIZZATO_ID,'
      '  CAPO_CONTO_CLI_FOR = :CAPO_CONTO_CLI_FOR,'
      '  SPECIALE = :SPECIALE'
      'where'
      '  ID_PIANO_CONTO = :OLD_ID_PIANO_CONTO')
    GeneratorField.Field = 'ID_PIANO_CONTO'
    GeneratorField.Generator = 'GEN_ID_PIANO_CONTI'
    Left = 312
    Top = 392
    object ibTab_Piano_ContiGRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Origin = '"TAB_PIANO_CONTI"."GRUPPO"'
      Size = 2
    end
    object ibTab_Piano_ContiCONTO: TIBStringField
      FieldName = 'CONTO'
      Origin = '"TAB_PIANO_CONTI"."CONTO"'
      Size = 3
    end
    object ibTab_Piano_ContiSOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Origin = '"TAB_PIANO_CONTI"."SOTTOCONTO"'
      Size = 5
    end
    object ibTab_Piano_ContiNOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      Origin = '"TAB_PIANO_CONTI"."NOME_CONTO"'
      ReadOnly = True
      Size = 12
    end
    object ibTab_Piano_ContiTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_PIANO_CONTI"."TIPO"'
    end
    object ibTab_Piano_ContiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PIANO_CONTI"."DESCR"'
      Size = 50
    end
    object ibTab_Piano_ContiNATURA: TSmallintField
      FieldName = 'NATURA'
      Origin = '"TAB_PIANO_CONTI"."NATURA"'
    end
    object ibTab_Piano_ContiLIVELLO: TSmallintField
      FieldName = 'LIVELLO'
      Origin = '"TAB_PIANO_CONTI"."LIVELLO"'
    end
    object ibTab_Piano_ContiRIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
      Origin = '"TAB_PIANO_CONTI"."RIVENDITA"'
    end
    object ibTab_Piano_ContiSTRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
      Origin = '"TAB_PIANO_CONTI"."STRUMENTALE"'
    end
    object ibTab_Piano_ContiINDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
      Origin = '"TAB_PIANO_CONTI"."INDEDUCIBILE"'
    end
    object ibTab_Piano_ContiSTAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
      Origin = '"TAB_PIANO_CONTI"."STAMPA_IN_BILANCIO"'
    end
    object ibTab_Piano_ContiVARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
      Origin = '"TAB_PIANO_CONTI"."VARIAZIONE_FISCALE"'
    end
    object ibTab_Piano_ContiID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Origin = '"TAB_PIANO_CONTI"."ID_PIANO_CONTO"'
      Required = True
    end
    object ibTab_Piano_ContiDICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Origin = '"TAB_PIANO_CONTI"."DICH_REDDITI_ID"'
      Size = 4
    end
    object ibTab_Piano_ContiRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_PIANO_CONTI"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object ibTab_Piano_ContiCONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
      Origin = '"TAB_PIANO_CONTI"."CONTO_PERSONALIZZATO_ID"'
    end
    object ibTab_Piano_ContiCAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
      Origin = '"TAB_PIANO_CONTI"."CAPO_CONTO_CLI_FOR"'
    end
    object ibTab_Piano_ContiSPECIALE: TIntegerField
      FieldName = 'SPECIALE'
      Origin = '"TAB_PIANO_CONTI"."SPECIALE"'
    end
  end
  object ibqryScadenze: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from SCADENZE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into SCADENZE'
      
        '  (CLIFOR_DESCR, CLIFOR_ID, CLIFOR_TIPO, DADARE, DATA_DOC, DATA_' +
        'SCADENZA, '
      
        '   DATO, DOCUMENTO_ID, IMPORTO, NUM_DOC, NUM_DOC_LETT, PAGAMENTO' +
        '_ID, PAGATO, '
      '   PK_CODICE)'
      'values'
      
        '  (:CLIFOR_DESCR, :CLIFOR_ID, :CLIFOR_TIPO, :DADARE, :DATA_DOC, ' +
        ':DATA_SCADENZA, '
      
        '   :DATO, :DOCUMENTO_ID, :IMPORTO, :NUM_DOC, :NUM_DOC_LETT, :PAG' +
        'AMENTO_ID, '
      '   :PAGATO, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  DOCUMENTO_ID,'
      '  DATA_DOC,'
      '  CLIFOR_ID,'
      '  CLIFOR_TIPO,'
      '  CLIFOR_DESCR,'
      '  IMPORTO,'
      '  DATA_SCADENZA,'
      '  PAGATO,'
      '  PAGAMENTO_ID,'
      '  NUM_DOC,'
      '  DATO,'
      '  DADARE,'
      '  NUM_DOC_LETT'
      'from SCADENZE '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from SCADENZE'
      'Order By  DATA_DOC,NUM_DOC')
    ModifySQL.Strings = (
      'update SCADENZE'
      'set'
      '  CLIFOR_DESCR = :CLIFOR_DESCR,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  CLIFOR_TIPO = :CLIFOR_TIPO,'
      '  DADARE = :DADARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  DATO = :DATO,'
      '  DOCUMENTO_ID = :DOCUMENTO_ID,'
      '  IMPORTO = :IMPORTO,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_DOC_LETT = :NUM_DOC_LETT,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  PAGATO = :PAGATO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_SCADENZA'
    Left = 272
    Top = 352
    object ibqryScadenzePK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"SCADENZE"."PK_CODICE"'
      Required = True
    end
    object ibqryScadenzeDOCUMENTO_ID: TIntegerField
      FieldName = 'DOCUMENTO_ID'
      Origin = '"SCADENZE"."DOCUMENTO_ID"'
      Required = True
    end
    object ibqryScadenzeDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"SCADENZE"."DATA_DOC"'
    end
    object ibqryScadenzeCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"SCADENZE"."CLIFOR_ID"'
    end
    object ibqryScadenzeCLIFOR_TIPO: TSmallintField
      FieldName = 'CLIFOR_TIPO'
      Origin = '"SCADENZE"."CLIFOR_TIPO"'
    end
    object ibqryScadenzeCLIFOR_DESCR: TIBStringField
      FieldName = 'CLIFOR_DESCR'
      Origin = '"SCADENZE"."CLIFOR_DESCR"'
      Size = 50
    end
    object ibqryScadenzeIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"SCADENZE"."IMPORTO"'
      currency = True
    end
    object ibqryScadenzeDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"SCADENZE"."DATA_SCADENZA"'
    end
    object ibqryScadenzePAGATO: TIBStringField
      FieldName = 'PAGATO'
      Origin = '"SCADENZE"."PAGATO"'
      Size = 1
    end
    object ibqryScadenzePAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"SCADENZE"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibqryScadenzeNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"SCADENZE"."NUM_DOC"'
    end
    object ibqryScadenzeDATO: TFloatField
      FieldName = 'DATO'
      Origin = '"SCADENZE"."DATO"'
      currency = True
    end
    object ibqryScadenzeDADARE: TFloatField
      FieldName = 'DADARE'
      Origin = '"SCADENZE"."DADARE"'
      currency = True
    end
    object ibqryScadenzeNUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"SCADENZE"."NUM_DOC_LETT"'
      Size = 4
    end
  end
  object ibqryDistinte: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibqryDistinteAfterInsert
    DeleteSQL.Strings = (
      'delete from DISTINTE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into DISTINTE'
      '  (PK_CODICE, CODICE_ARTICOLO, DESCR_ARTICOLO, MANODOPERA, '
      'RICAMO, FASONISTA, '
      
        '   SITUAZIONE, COPPE, ACCESSORI, ALTRO1, ALTRO2, ALTRO3, ALTRO4,' +
        ' '
      'COSTO, '
      '   RICAR1PERC, RICAR2PERC, RICAR_LIRE, PREZZO_VENDITA, '
      'COSTO_ACCESS_TOTALE, '
      '   COSTO_TOTALE, DATA_CREAZIONE, CODCLI, RICAR_LIRE2)'
      'values'
      '  (:PK_CODICE, :CODICE_ARTICOLO, :DESCR_ARTICOLO, :MANODOPERA, '
      ':RICAMO, '
      
        '   :FASONISTA, :SITUAZIONE, :COPPE, :ACCESSORI, :ALTRO1, :ALTRO2' +
        ', '
      ':ALTRO3, '
      '   :ALTRO4, :COSTO, :RICAR1PERC, :RICAR2PERC, :RICAR_LIRE, '
      ':PREZZO_VENDITA, '
      
        '   :COSTO_ACCESS_TOTALE, :COSTO_TOTALE, :DATA_CREAZIONE, :CODCLI' +
        ', '
      ':RICAR_LIRE2)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO,'
      '  MANODOPERA,'
      '  RICAMO,'
      '  FASONISTA,'
      '  SITUAZIONE,'
      '  COPPE,'
      '  ACCESSORI,'
      '  ALTRO1,'
      '  ALTRO2,'
      '  ALTRO3,'
      '  ALTRO4,'
      '  COSTO,'
      '  RICAR1PERC,'
      '  RICAR2PERC,'
      '  RICAR_LIRE,'
      '  PREZZO_VENDITA,'
      '  COSTO_ACCESS_TOTALE,'
      '  COSTO_TOTALE,'
      '  DATA_CREAZIONE,'
      '  CODCLI,'
      '  RICAR_LIRE2'
      'from DISTINTE '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'Select * FROM DISTINTE'
      'Order By CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update DISTINTE'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  MANODOPERA = :MANODOPERA,'
      '  RICAMO = :RICAMO,'
      '  FASONISTA = :FASONISTA,'
      '  SITUAZIONE = :SITUAZIONE,'
      '  COPPE = :COPPE,'
      '  ACCESSORI = :ACCESSORI,'
      '  ALTRO1 = :ALTRO1,'
      '  ALTRO2 = :ALTRO2,'
      '  ALTRO3 = :ALTRO3,'
      '  ALTRO4 = :ALTRO4,'
      '  COSTO = :COSTO,'
      '  RICAR1PERC = :RICAR1PERC,'
      '  RICAR2PERC = :RICAR2PERC,'
      '  RICAR_LIRE = :RICAR_LIRE,'
      '  PREZZO_VENDITA = :PREZZO_VENDITA,'
      '  COSTO_ACCESS_TOTALE = :COSTO_ACCESS_TOTALE,'
      '  COSTO_TOTALE = :COSTO_TOTALE,'
      '  DATA_CREAZIONE = :DATA_CREAZIONE,'
      '  CODCLI = :CODCLI,'
      '  RICAR_LIRE2 = :RICAR_LIRE2'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_DISTINTE'
    Left = 216
    Top = 320
    object ibqryDistinteCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqryDistinteDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibqryDistinteMANODOPERA: TFloatField
      FieldName = 'MANODOPERA'
      Origin = '"DISTINTE"."MANODOPERA"'
      currency = True
    end
    object ibqryDistinteRICAMO: TFloatField
      FieldName = 'RICAMO'
      Origin = '"DISTINTE"."RICAMO"'
      currency = True
    end
    object ibqryDistinteFASONISTA: TFloatField
      FieldName = 'FASONISTA'
      Origin = '"DISTINTE"."FASONISTA"'
      currency = True
    end
    object ibqryDistinteSITUAZIONE: TFloatField
      FieldName = 'SITUAZIONE'
      Origin = '"DISTINTE"."SITUAZIONE"'
      currency = True
    end
    object ibqryDistinteCOPPE: TFloatField
      FieldName = 'COPPE'
      Origin = '"DISTINTE"."COPPE"'
      currency = True
    end
    object ibqryDistinteACCESSORI: TFloatField
      FieldName = 'ACCESSORI'
      Origin = '"DISTINTE"."ACCESSORI"'
      currency = True
    end
    object ibqryDistinteALTRO1: TFloatField
      FieldName = 'ALTRO1'
      Origin = '"DISTINTE"."ALTRO1"'
      currency = True
    end
    object ibqryDistinteALTRO2: TFloatField
      FieldName = 'ALTRO2'
      Origin = '"DISTINTE"."ALTRO2"'
      currency = True
    end
    object ibqryDistinteALTRO3: TFloatField
      FieldName = 'ALTRO3'
      Origin = '"DISTINTE"."ALTRO3"'
      currency = True
    end
    object ibqryDistinteALTRO4: TFloatField
      FieldName = 'ALTRO4'
      Origin = '"DISTINTE"."ALTRO4"'
      currency = True
    end
    object ibqryDistinteCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
    object ibqryDistinteRICAR1PERC: TFloatField
      FieldName = 'RICAR1PERC'
      Origin = '"DISTINTE"."RICAR1PERC"'
    end
    object ibqryDistintePK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE"."PK_CODICE"'
      Required = True
    end
    object ibqryDistinteRICAR2PERC: TFloatField
      FieldName = 'RICAR2PERC'
      Origin = '"DISTINTE"."RICAR2PERC"'
    end
    object ibqryDistinteRICAR_LIRE: TFloatField
      FieldName = 'RICAR_LIRE'
      Origin = '"DISTINTE"."RICAR_LIRE"'
      currency = True
    end
    object ibqryDistintePREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = '"DISTINTE"."PREZZO_VENDITA"'
      currency = True
    end
    object ibqryDistinteCOSTO_ACCESS_TOTALE: TFloatField
      FieldName = 'COSTO_ACCESS_TOTALE'
      Origin = '"DISTINTE"."COSTO_ACCESS_TOTALE"'
      currency = True
    end
    object ibqryDistinteCOSTO_TOTALE: TFloatField
      FieldName = 'COSTO_TOTALE'
      Origin = '"DISTINTE"."COSTO_TOTALE"'
      currency = True
    end
    object ibqryDistinteDATA_CREAZIONE: TDateTimeField
      FieldName = 'DATA_CREAZIONE'
      Origin = '"DISTINTE"."DATA_CREAZIONE"'
    end
    object ibqryDistinteCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"DISTINTE"."CODCLI"'
    end
    object ibqryDistinteRICAR_LIRE2: TFloatField
      FieldName = 'RICAR_LIRE2'
      Origin = '"DISTINTE"."RICAR_LIRE2"'
      currency = True
    end
  end
  object ibtblDistinte_Dett: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from DISTINTE_DETT'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into DISTINTE_DETT'
      '  (FK_DISTINTE, CODICE_ARTICOLO, DESCR_ARTICOLO, QTA, COSTO, '
      'PREZZO, FLAG_SCATOLO, '
      '   PK_CODICE)'
      'values'
      
        '  (:FK_DISTINTE, :CODICE_ARTICOLO, :DESCR_ARTICOLO, :QTA, :COSTO' +
        ', '
      ':PREZZO, '
      '   :FLAG_SCATOLO, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  FK_DISTINTE,'
      '  CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO,'
      '  QTA,'
      '  COSTO,'
      '  PREZZO,'
      '  FLAG_SCATOLO,'
      '  PK_CODICE'
      'from DISTINTE_DETT '
      'where'
      '  PK_CODICE = :PK_CODICE'
      'order by FK_DISTINTE,CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from DISTINTE_DETT'
      'where fk_distinte=:pk_codice'
      'order by FK_DISTINTE,CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update DISTINTE_DETT'
      'set'
      '  FK_DISTINTE = :FK_DISTINTE,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  QTA = :QTA,'
      '  COSTO = :COSTO,'
      '  PREZZO = :PREZZO,'
      '  FLAG_SCATOLO = :FLAG_SCATOLO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_DISTINTE_DETT'
    DataSource = dsDistinte_dm
    Left = 320
    Top = 280
    object ibtblDistinte_DettFK_DISTINTE: TIntegerField
      FieldName = 'FK_DISTINTE'
      Origin = '"DISTINTE_DETT"."FK_DISTINTE"'
      Required = True
    end
    object ibtblDistinte_DettCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE_DETT"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibtblDistinte_DettDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE_DETT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibtblDistinte_DettQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"DISTINTE_DETT"."QTA"'
    end
    object ibtblDistinte_DettCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE_DETT"."COSTO"'
      currency = True
    end
    object ibtblDistinte_DettPREZZO: TFloatField
      FieldName = 'PREZZO'
      Origin = '"DISTINTE_DETT"."PREZZO"'
      currency = True
    end
    object ibtblDistinte_DettFLAG_SCATOLO: TIBStringField
      FieldName = 'FLAG_SCATOLO'
      Origin = '"DISTINTE_DETT"."FLAG_SCATOLO"'
      Size = 1
    end
    object ibtblDistinte_DettPK_CODICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE_DETT"."PK_CODICE"'
      Required = True
    end
  end
  object ibqryPretFit: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PRETFIT'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into PRETFIT'
      
        '  (CLIENTE, CODICE, COLORE0, COLORE1, COLORE2, COLORE3, COLORE4,' +
        ' COLORE5, '
      
        '   COLORE6, COLORE7, COLORE8, COLORE9, DATA, DESCR, DIPENDENTE, ' +
        'F0, F1, '
      
        '   F2, F3, F4, F5, F6, F7, F8, FASONISTA, NUMERO, NUMERO_A, PASS' +
        'ATA, PK_CODICE, '
      
        '   PK_DIST, QTA_TOTALE, QTA00, QTA01, QTA02, QTA03, QTA04, QTA05' +
        ', QTA06, '
      
        '   QTA07, QTA08, QTA09, QTA10, QTA11, QTA12, QTA13, QTA14, QTA15' +
        ', QTA16, '
      
        '   QTA17, QTA18, QTA19, QTA20, QTA21, QTA22, QTA23, QTA24, QTA25' +
        ', QTA26, '
      
        '   QTA27, QTA28, QTA29, QTA30, QTA31, QTA32, QTA33, QTA34, QTA35' +
        ', QTA36, '
      
        '   QTA37, QTA38, QTA39, QTA40, QTA41, QTA42, QTA43, QTA44, QTA45' +
        ', QTA46, '
      
        '   QTA47, QTA48, QTA49, QTA50, QTA51, QTA52, QTA53, QTA54, QTA55' +
        ', QTA56, '
      
        '   QTA57, QTA58, QTA59, QTA60, QTA61, QTA62, QTA63, QTA64, QTA65' +
        ', QTA66, '
      
        '   QTA67, QTA68, QTA69, QTA70, QTA71, QTA72, QTA73, QTA74, QTA75' +
        ', QTA76, '
      
        '   QTA77, QTA78, QTA79, QTA80, QTA81, QTA82, QTA83, QTA84, QTA85' +
        ', QTA86, '
      
        '   QTA87, QTA88, QTA89, QTA90, QTA91, QTA92, QTA93, QTA94, QTA95' +
        ', QTA96, '
      
        '   QTA97, QTA98, QTA99, SCAT, TAGLIA0, TAGLIA1, TAGLIA2, TAGLIA3' +
        ', TAGLIA4, '
      
        '   TAGLIA5, TAGLIA6, TAGLIA7, TAGLIA8, TAGLIA9, TOTALE, TOTALE_C' +
        'OLORE0, '
      
        '   TOTALE_COLORE1, TOTALE_COLORE2, TOTALE_COLORE3, TOTALE_COLORE' +
        '4, TOTALE_COLORE5, '
      
        '   TOTALE_COLORE6, TOTALE_COLORE7, TOTALE_COLORE8, TOTALE_COLORE' +
        '9, TOTALE_TAGLIA0, '
      
        '   TOTALE_TAGLIA1, TOTALE_TAGLIA2, TOTALE_TAGLIA3, TOTALE_TAGLIA' +
        '4, TOTALE_TAGLIA5, '
      
        '   TOTALE_TAGLIA6, TOTALE_TAGLIA7, TOTALE_TAGLIA8, TOTALE_TAGLIA' +
        '9)'
      'values'
      
        '  (:CLIENTE, :CODICE, :COLORE0, :COLORE1, :COLORE2, :COLORE3, :C' +
        'OLORE4, '
      
        '   :COLORE5, :COLORE6, :COLORE7, :COLORE8, :COLORE9, :DATA, :DES' +
        'CR, :DIPENDENTE, '
      
        '   :F0, :F1, :F2, :F3, :F4, :F5, :F6, :F7, :F8, :FASONISTA, :NUM' +
        'ERO, :NUMERO_A, '
      
        '   :PASSATA, :PK_CODICE, :PK_DIST, :QTA_TOTALE, :QTA00, :QTA01, ' +
        ':QTA02, '
      
        '   :QTA03, :QTA04, :QTA05, :QTA06, :QTA07, :QTA08, :QTA09, :QTA1' +
        '0, :QTA11, '
      
        '   :QTA12, :QTA13, :QTA14, :QTA15, :QTA16, :QTA17, :QTA18, :QTA1' +
        '9, :QTA20, '
      
        '   :QTA21, :QTA22, :QTA23, :QTA24, :QTA25, :QTA26, :QTA27, :QTA2' +
        '8, :QTA29, '
      
        '   :QTA30, :QTA31, :QTA32, :QTA33, :QTA34, :QTA35, :QTA36, :QTA3' +
        '7, :QTA38, '
      
        '   :QTA39, :QTA40, :QTA41, :QTA42, :QTA43, :QTA44, :QTA45, :QTA4' +
        '6, :QTA47, '
      
        '   :QTA48, :QTA49, :QTA50, :QTA51, :QTA52, :QTA53, :QTA54, :QTA5' +
        '5, :QTA56, '
      
        '   :QTA57, :QTA58, :QTA59, :QTA60, :QTA61, :QTA62, :QTA63, :QTA6' +
        '4, :QTA65, '
      
        '   :QTA66, :QTA67, :QTA68, :QTA69, :QTA70, :QTA71, :QTA72, :QTA7' +
        '3, :QTA74, '
      
        '   :QTA75, :QTA76, :QTA77, :QTA78, :QTA79, :QTA80, :QTA81, :QTA8' +
        '2, :QTA83, '
      
        '   :QTA84, :QTA85, :QTA86, :QTA87, :QTA88, :QTA89, :QTA90, :QTA9' +
        '1, :QTA92, '
      
        '   :QTA93, :QTA94, :QTA95, :QTA96, :QTA97, :QTA98, :QTA99, :SCAT' +
        ', :TAGLIA0, '
      
        '   :TAGLIA1, :TAGLIA2, :TAGLIA3, :TAGLIA4, :TAGLIA5, :TAGLIA6, :' +
        'TAGLIA7, '
      
        '   :TAGLIA8, :TAGLIA9, :TOTALE, :TOTALE_COLORE0, :TOTALE_COLORE1' +
        ', :TOTALE_COLORE2, '
      
        '   :TOTALE_COLORE3, :TOTALE_COLORE4, :TOTALE_COLORE5, :TOTALE_CO' +
        'LORE6, '
      
        '   :TOTALE_COLORE7, :TOTALE_COLORE8, :TOTALE_COLORE9, :TOTALE_TA' +
        'GLIA0, '
      
        '   :TOTALE_TAGLIA1, :TOTALE_TAGLIA2, :TOTALE_TAGLIA3, :TOTALE_TA' +
        'GLIA4, '
      
        '   :TOTALE_TAGLIA5, :TOTALE_TAGLIA6, :TOTALE_TAGLIA7, :TOTALE_TA' +
        'GLIA8, '
      '   :TOTALE_TAGLIA9)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE,'
      '  DESCR,'
      '  DATA,'
      '  NUMERO,'
      '  NUMERO_A,'
      '  TOTALE,'
      '  DIPENDENTE,'
      '  FASONISTA,'
      '  CLIENTE,'
      '  TAGLIA0,'
      '  TAGLIA1,'
      '  TAGLIA2,'
      '  TAGLIA3,'
      '  TAGLIA4,'
      '  TAGLIA5,'
      '  TAGLIA6,'
      '  TAGLIA7,'
      '  TAGLIA8,'
      '  TAGLIA9,'
      '  COLORE0,'
      '  COLORE1,'
      '  COLORE2,'
      '  COLORE3,'
      '  COLORE4,'
      '  COLORE5,'
      '  COLORE6,'
      '  COLORE7,'
      '  COLORE8,'
      '  COLORE9,'
      '  QTA00,'
      '  QTA01,'
      '  QTA02,'
      '  QTA03,'
      '  QTA04,'
      '  QTA05,'
      '  QTA06,'
      '  QTA07,'
      '  QTA08,'
      '  QTA09,'
      '  QTA10,'
      '  QTA11,'
      '  QTA12,'
      '  QTA13,'
      '  QTA14,'
      '  QTA15,'
      '  QTA16,'
      '  QTA17,'
      '  QTA18,'
      '  QTA19,'
      '  QTA20,'
      '  QTA21,'
      '  QTA22,'
      '  QTA23,'
      '  QTA24,'
      '  QTA25,'
      '  QTA26,'
      '  QTA27,'
      '  QTA28,'
      '  QTA29,'
      '  QTA30,'
      '  QTA31,'
      '  QTA32,'
      '  QTA33,'
      '  QTA34,'
      '  QTA35,'
      '  QTA36,'
      '  QTA37,'
      '  QTA38,'
      '  QTA39,'
      '  QTA40,'
      '  QTA41,'
      '  QTA42,'
      '  QTA43,'
      '  QTA44,'
      '  QTA45,'
      '  QTA46,'
      '  QTA47,'
      '  QTA48,'
      '  QTA49,'
      '  QTA50,'
      '  QTA51,'
      '  QTA52,'
      '  QTA53,'
      '  QTA54,'
      '  QTA55,'
      '  QTA56,'
      '  QTA57,'
      '  QTA58,'
      '  QTA59,'
      '  QTA60,'
      '  QTA61,'
      '  QTA62,'
      '  QTA63,'
      '  QTA64,'
      '  QTA65,'
      '  QTA66,'
      '  QTA67,'
      '  QTA68,'
      '  QTA69,'
      '  QTA70,'
      '  QTA71,'
      '  QTA72,'
      '  QTA73,'
      '  QTA74,'
      '  QTA75,'
      '  QTA76,'
      '  QTA77,'
      '  QTA78,'
      '  QTA79,'
      '  QTA80,'
      '  QTA81,'
      '  QTA82,'
      '  QTA83,'
      '  QTA84,'
      '  QTA85,'
      '  QTA86,'
      '  QTA87,'
      '  QTA88,'
      '  QTA89,'
      '  QTA90,'
      '  QTA91,'
      '  QTA92,'
      '  QTA93,'
      '  QTA94,'
      '  QTA95,'
      '  QTA96,'
      '  QTA97,'
      '  QTA98,'
      '  QTA99,'
      '  TOTALE_COLORE0,'
      '  TOTALE_COLORE1,'
      '  TOTALE_COLORE2,'
      '  TOTALE_COLORE3,'
      '  TOTALE_COLORE4,'
      '  TOTALE_COLORE5,'
      '  TOTALE_COLORE6,'
      '  TOTALE_COLORE7,'
      '  TOTALE_COLORE8,'
      '  TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9,'
      '  QTA_TOTALE,'
      '  SCAT,'
      '  PASSATA,'
      '  F1,'
      '  F2,'
      '  F3,'
      '  F4,'
      '  F5,'
      '  F6,'
      '  F7,'
      '  F8,'
      '  F0,'
      '  PK_DIST'
      'from PRETFIT '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from PRETFIT'
      'Order by Numero')
    ModifySQL.Strings = (
      'update PRETFIT'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  CODICE = :CODICE,'
      '  COLORE0 = :COLORE0,'
      '  COLORE1 = :COLORE1,'
      '  COLORE2 = :COLORE2,'
      '  COLORE3 = :COLORE3,'
      '  COLORE4 = :COLORE4,'
      '  COLORE5 = :COLORE5,'
      '  COLORE6 = :COLORE6,'
      '  COLORE7 = :COLORE7,'
      '  COLORE8 = :COLORE8,'
      '  COLORE9 = :COLORE9,'
      '  DATA = :DATA,'
      '  DESCR = :DESCR,'
      '  DIPENDENTE = :DIPENDENTE,'
      '  F0 = :F0,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  F4 = :F4,'
      '  F5 = :F5,'
      '  F6 = :F6,'
      '  F7 = :F7,'
      '  F8 = :F8,'
      '  FASONISTA = :FASONISTA,'
      '  NUMERO = :NUMERO,'
      '  NUMERO_A = :NUMERO_A,'
      '  PASSATA = :PASSATA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PK_DIST = :PK_DIST,'
      '  QTA_TOTALE = :QTA_TOTALE,'
      '  QTA00 = :QTA00,'
      '  QTA01 = :QTA01,'
      '  QTA02 = :QTA02,'
      '  QTA03 = :QTA03,'
      '  QTA04 = :QTA04,'
      '  QTA05 = :QTA05,'
      '  QTA06 = :QTA06,'
      '  QTA07 = :QTA07,'
      '  QTA08 = :QTA08,'
      '  QTA09 = :QTA09,'
      '  QTA10 = :QTA10,'
      '  QTA11 = :QTA11,'
      '  QTA12 = :QTA12,'
      '  QTA13 = :QTA13,'
      '  QTA14 = :QTA14,'
      '  QTA15 = :QTA15,'
      '  QTA16 = :QTA16,'
      '  QTA17 = :QTA17,'
      '  QTA18 = :QTA18,'
      '  QTA19 = :QTA19,'
      '  QTA20 = :QTA20,'
      '  QTA21 = :QTA21,'
      '  QTA22 = :QTA22,'
      '  QTA23 = :QTA23,'
      '  QTA24 = :QTA24,'
      '  QTA25 = :QTA25,'
      '  QTA26 = :QTA26,'
      '  QTA27 = :QTA27,'
      '  QTA28 = :QTA28,'
      '  QTA29 = :QTA29,'
      '  QTA30 = :QTA30,'
      '  QTA31 = :QTA31,'
      '  QTA32 = :QTA32,'
      '  QTA33 = :QTA33,'
      '  QTA34 = :QTA34,'
      '  QTA35 = :QTA35,'
      '  QTA36 = :QTA36,'
      '  QTA37 = :QTA37,'
      '  QTA38 = :QTA38,'
      '  QTA39 = :QTA39,'
      '  QTA40 = :QTA40,'
      '  QTA41 = :QTA41,'
      '  QTA42 = :QTA42,'
      '  QTA43 = :QTA43,'
      '  QTA44 = :QTA44,'
      '  QTA45 = :QTA45,'
      '  QTA46 = :QTA46,'
      '  QTA47 = :QTA47,'
      '  QTA48 = :QTA48,'
      '  QTA49 = :QTA49,'
      '  QTA50 = :QTA50,'
      '  QTA51 = :QTA51,'
      '  QTA52 = :QTA52,'
      '  QTA53 = :QTA53,'
      '  QTA54 = :QTA54,'
      '  QTA55 = :QTA55,'
      '  QTA56 = :QTA56,'
      '  QTA57 = :QTA57,'
      '  QTA58 = :QTA58,'
      '  QTA59 = :QTA59,'
      '  QTA60 = :QTA60,'
      '  QTA61 = :QTA61,'
      '  QTA62 = :QTA62,'
      '  QTA63 = :QTA63,'
      '  QTA64 = :QTA64,'
      '  QTA65 = :QTA65,'
      '  QTA66 = :QTA66,'
      '  QTA67 = :QTA67,'
      '  QTA68 = :QTA68,'
      '  QTA69 = :QTA69,'
      '  QTA70 = :QTA70,'
      '  QTA71 = :QTA71,'
      '  QTA72 = :QTA72,'
      '  QTA73 = :QTA73,'
      '  QTA74 = :QTA74,'
      '  QTA75 = :QTA75,'
      '  QTA76 = :QTA76,'
      '  QTA77 = :QTA77,'
      '  QTA78 = :QTA78,'
      '  QTA79 = :QTA79,'
      '  QTA80 = :QTA80,'
      '  QTA81 = :QTA81,'
      '  QTA82 = :QTA82,'
      '  QTA83 = :QTA83,'
      '  QTA84 = :QTA84,'
      '  QTA85 = :QTA85,'
      '  QTA86 = :QTA86,'
      '  QTA87 = :QTA87,'
      '  QTA88 = :QTA88,'
      '  QTA89 = :QTA89,'
      '  QTA90 = :QTA90,'
      '  QTA91 = :QTA91,'
      '  QTA92 = :QTA92,'
      '  QTA93 = :QTA93,'
      '  QTA94 = :QTA94,'
      '  QTA95 = :QTA95,'
      '  QTA96 = :QTA96,'
      '  QTA97 = :QTA97,'
      '  QTA98 = :QTA98,'
      '  QTA99 = :QTA99,'
      '  SCAT = :SCAT,'
      '  TAGLIA0 = :TAGLIA0,'
      '  TAGLIA1 = :TAGLIA1,'
      '  TAGLIA2 = :TAGLIA2,'
      '  TAGLIA3 = :TAGLIA3,'
      '  TAGLIA4 = :TAGLIA4,'
      '  TAGLIA5 = :TAGLIA5,'
      '  TAGLIA6 = :TAGLIA6,'
      '  TAGLIA7 = :TAGLIA7,'
      '  TAGLIA8 = :TAGLIA8,'
      '  TAGLIA9 = :TAGLIA9,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_COLORE0 = :TOTALE_COLORE0,'
      '  TOTALE_COLORE1 = :TOTALE_COLORE1,'
      '  TOTALE_COLORE2 = :TOTALE_COLORE2,'
      '  TOTALE_COLORE3 = :TOTALE_COLORE3,'
      '  TOTALE_COLORE4 = :TOTALE_COLORE4,'
      '  TOTALE_COLORE5 = :TOTALE_COLORE5,'
      '  TOTALE_COLORE6 = :TOTALE_COLORE6,'
      '  TOTALE_COLORE7 = :TOTALE_COLORE7,'
      '  TOTALE_COLORE8 = :TOTALE_COLORE8,'
      '  TOTALE_COLORE9 = :TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0 = :TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1 = :TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2 = :TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3 = :TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4 = :TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5 = :TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6 = :TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7 = :TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8 = :TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9 = :TOTALE_TAGLIA9'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_PRETFIT'
    Left = 160
    object ibqryPretFitPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"PRETFIT"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqryPretFitCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"PRETFIT"."CODICE"'
    end
    object ibqryPretFitDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"PRETFIT"."DESCR"'
      Size = 100
    end
    object ibqryPretFitDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PRETFIT"."DATA"'
    end
    object ibqryPretFitNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"PRETFIT"."NUMERO"'
    end
    object ibqryPretFitNUMERO_A: TIBStringField
      FieldName = 'NUMERO_A'
      Origin = '"PRETFIT"."NUMERO_A"'
    end
    object ibqryPretFitTOTALE: TIntegerField
      FieldName = 'TOTALE'
      Origin = '"PRETFIT"."TOTALE"'
    end
    object ibqryPretFitDIPENDENTE: TIBStringField
      FieldName = 'DIPENDENTE'
      Origin = '"PRETFIT"."DIPENDENTE"'
      Size = 100
    end
    object ibqryPretFitFASONISTA: TIBStringField
      FieldName = 'FASONISTA'
      Origin = '"PRETFIT"."FASONISTA"'
      Size = 100
    end
    object ibqryPretFitCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PRETFIT"."CLIENTE"'
      Size = 100
    end
    object ibqryPretFitTAGLIA0: TIBStringField
      FieldName = 'TAGLIA0'
      Origin = '"PRETFIT"."TAGLIA0"'
    end
    object ibqryPretFitTAGLIA1: TIBStringField
      FieldName = 'TAGLIA1'
      Origin = '"PRETFIT"."TAGLIA1"'
    end
    object ibqryPretFitTAGLIA2: TIBStringField
      FieldName = 'TAGLIA2'
      Origin = '"PRETFIT"."TAGLIA2"'
    end
    object ibqryPretFitTAGLIA3: TIBStringField
      FieldName = 'TAGLIA3'
      Origin = '"PRETFIT"."TAGLIA3"'
    end
    object ibqryPretFitTAGLIA4: TIBStringField
      FieldName = 'TAGLIA4'
      Origin = '"PRETFIT"."TAGLIA4"'
    end
    object ibqryPretFitTAGLIA5: TIBStringField
      FieldName = 'TAGLIA5'
      Origin = '"PRETFIT"."TAGLIA5"'
    end
    object ibqryPretFitTAGLIA6: TIBStringField
      FieldName = 'TAGLIA6'
      Origin = '"PRETFIT"."TAGLIA6"'
    end
    object ibqryPretFitTAGLIA7: TIBStringField
      FieldName = 'TAGLIA7'
      Origin = '"PRETFIT"."TAGLIA7"'
    end
    object ibqryPretFitTAGLIA8: TIBStringField
      FieldName = 'TAGLIA8'
      Origin = '"PRETFIT"."TAGLIA8"'
    end
    object ibqryPretFitTAGLIA9: TIBStringField
      FieldName = 'TAGLIA9'
      Origin = '"PRETFIT"."TAGLIA9"'
    end
    object ibqryPretFitCOLORE0: TIBStringField
      FieldName = 'COLORE0'
      Origin = '"PRETFIT"."COLORE0"'
      Size = 100
    end
    object ibqryPretFitCOLORE1: TIBStringField
      FieldName = 'COLORE1'
      Origin = '"PRETFIT"."COLORE1"'
      Size = 100
    end
    object ibqryPretFitCOLORE2: TIBStringField
      FieldName = 'COLORE2'
      Origin = '"PRETFIT"."COLORE2"'
      Size = 100
    end
    object ibqryPretFitCOLORE3: TIBStringField
      FieldName = 'COLORE3'
      Origin = '"PRETFIT"."COLORE3"'
      Size = 100
    end
    object ibqryPretFitCOLORE4: TIBStringField
      FieldName = 'COLORE4'
      Origin = '"PRETFIT"."COLORE4"'
      Size = 100
    end
    object ibqryPretFitCOLORE5: TIBStringField
      FieldName = 'COLORE5'
      Origin = '"PRETFIT"."COLORE5"'
      Size = 100
    end
    object ibqryPretFitCOLORE6: TIBStringField
      FieldName = 'COLORE6'
      Origin = '"PRETFIT"."COLORE6"'
      Size = 100
    end
    object ibqryPretFitCOLORE7: TIBStringField
      FieldName = 'COLORE7'
      Origin = '"PRETFIT"."COLORE7"'
      Size = 100
    end
    object ibqryPretFitCOLORE8: TIBStringField
      FieldName = 'COLORE8'
      Origin = '"PRETFIT"."COLORE8"'
      Size = 100
    end
    object ibqryPretFitCOLORE9: TIBStringField
      FieldName = 'COLORE9'
      Origin = '"PRETFIT"."COLORE9"'
      Size = 100
    end
    object ibqryPretFitQTA00: TIntegerField
      FieldName = 'QTA00'
      Origin = '"PRETFIT"."QTA00"'
    end
    object ibqryPretFitQTA01: TIntegerField
      FieldName = 'QTA01'
      Origin = '"PRETFIT"."QTA01"'
    end
    object ibqryPretFitQTA02: TIntegerField
      FieldName = 'QTA02'
      Origin = '"PRETFIT"."QTA02"'
    end
    object ibqryPretFitQTA03: TIntegerField
      FieldName = 'QTA03'
      Origin = '"PRETFIT"."QTA03"'
    end
    object ibqryPretFitQTA04: TIntegerField
      FieldName = 'QTA04'
      Origin = '"PRETFIT"."QTA04"'
    end
    object ibqryPretFitQTA05: TIntegerField
      FieldName = 'QTA05'
      Origin = '"PRETFIT"."QTA05"'
    end
    object ibqryPretFitQTA06: TIntegerField
      FieldName = 'QTA06'
      Origin = '"PRETFIT"."QTA06"'
    end
    object ibqryPretFitQTA07: TIntegerField
      FieldName = 'QTA07'
      Origin = '"PRETFIT"."QTA07"'
    end
    object ibqryPretFitQTA08: TIntegerField
      FieldName = 'QTA08'
      Origin = '"PRETFIT"."QTA08"'
    end
    object ibqryPretFitQTA09: TIntegerField
      FieldName = 'QTA09'
      Origin = '"PRETFIT"."QTA09"'
    end
    object ibqryPretFitQTA10: TIntegerField
      FieldName = 'QTA10'
      Origin = '"PRETFIT"."QTA10"'
    end
    object ibqryPretFitQTA11: TIntegerField
      FieldName = 'QTA11'
      Origin = '"PRETFIT"."QTA11"'
    end
    object ibqryPretFitQTA12: TIntegerField
      FieldName = 'QTA12'
      Origin = '"PRETFIT"."QTA12"'
    end
    object ibqryPretFitQTA13: TIntegerField
      FieldName = 'QTA13'
      Origin = '"PRETFIT"."QTA13"'
    end
    object ibqryPretFitQTA14: TIntegerField
      FieldName = 'QTA14'
      Origin = '"PRETFIT"."QTA14"'
    end
    object ibqryPretFitQTA15: TIntegerField
      FieldName = 'QTA15'
      Origin = '"PRETFIT"."QTA15"'
    end
    object ibqryPretFitQTA16: TIntegerField
      FieldName = 'QTA16'
      Origin = '"PRETFIT"."QTA16"'
    end
    object ibqryPretFitQTA17: TIntegerField
      FieldName = 'QTA17'
      Origin = '"PRETFIT"."QTA17"'
    end
    object ibqryPretFitQTA18: TIntegerField
      FieldName = 'QTA18'
      Origin = '"PRETFIT"."QTA18"'
    end
    object ibqryPretFitQTA19: TIntegerField
      FieldName = 'QTA19'
      Origin = '"PRETFIT"."QTA19"'
    end
    object ibqryPretFitQTA20: TIntegerField
      FieldName = 'QTA20'
      Origin = '"PRETFIT"."QTA20"'
    end
    object ibqryPretFitQTA21: TIntegerField
      FieldName = 'QTA21'
      Origin = '"PRETFIT"."QTA21"'
    end
    object ibqryPretFitQTA22: TIntegerField
      FieldName = 'QTA22'
      Origin = '"PRETFIT"."QTA22"'
    end
    object ibqryPretFitQTA23: TIntegerField
      FieldName = 'QTA23'
      Origin = '"PRETFIT"."QTA23"'
    end
    object ibqryPretFitQTA24: TIntegerField
      FieldName = 'QTA24'
      Origin = '"PRETFIT"."QTA24"'
    end
    object ibqryPretFitQTA25: TIntegerField
      FieldName = 'QTA25'
      Origin = '"PRETFIT"."QTA25"'
    end
    object ibqryPretFitQTA26: TIntegerField
      FieldName = 'QTA26'
      Origin = '"PRETFIT"."QTA26"'
    end
    object ibqryPretFitQTA27: TIntegerField
      FieldName = 'QTA27'
      Origin = '"PRETFIT"."QTA27"'
    end
    object ibqryPretFitQTA28: TIntegerField
      FieldName = 'QTA28'
      Origin = '"PRETFIT"."QTA28"'
    end
    object ibqryPretFitQTA29: TIntegerField
      FieldName = 'QTA29'
      Origin = '"PRETFIT"."QTA29"'
    end
    object ibqryPretFitQTA30: TIntegerField
      FieldName = 'QTA30'
      Origin = '"PRETFIT"."QTA30"'
    end
    object ibqryPretFitQTA31: TIntegerField
      FieldName = 'QTA31'
      Origin = '"PRETFIT"."QTA31"'
    end
    object ibqryPretFitQTA32: TIntegerField
      FieldName = 'QTA32'
      Origin = '"PRETFIT"."QTA32"'
    end
    object ibqryPretFitQTA33: TIntegerField
      FieldName = 'QTA33'
      Origin = '"PRETFIT"."QTA33"'
    end
    object ibqryPretFitQTA34: TIntegerField
      FieldName = 'QTA34'
      Origin = '"PRETFIT"."QTA34"'
    end
    object ibqryPretFitQTA35: TIntegerField
      FieldName = 'QTA35'
      Origin = '"PRETFIT"."QTA35"'
    end
    object ibqryPretFitQTA36: TIntegerField
      FieldName = 'QTA36'
      Origin = '"PRETFIT"."QTA36"'
    end
    object ibqryPretFitQTA37: TIntegerField
      FieldName = 'QTA37'
      Origin = '"PRETFIT"."QTA37"'
    end
    object ibqryPretFitQTA38: TIntegerField
      FieldName = 'QTA38'
      Origin = '"PRETFIT"."QTA38"'
    end
    object ibqryPretFitQTA39: TIntegerField
      FieldName = 'QTA39'
      Origin = '"PRETFIT"."QTA39"'
    end
    object ibqryPretFitQTA40: TIntegerField
      FieldName = 'QTA40'
      Origin = '"PRETFIT"."QTA40"'
    end
    object ibqryPretFitQTA41: TIntegerField
      FieldName = 'QTA41'
      Origin = '"PRETFIT"."QTA41"'
    end
    object ibqryPretFitQTA42: TIntegerField
      FieldName = 'QTA42'
      Origin = '"PRETFIT"."QTA42"'
    end
    object ibqryPretFitQTA43: TIntegerField
      FieldName = 'QTA43'
      Origin = '"PRETFIT"."QTA43"'
    end
    object ibqryPretFitQTA44: TIntegerField
      FieldName = 'QTA44'
      Origin = '"PRETFIT"."QTA44"'
    end
    object ibqryPretFitQTA45: TIntegerField
      FieldName = 'QTA45'
      Origin = '"PRETFIT"."QTA45"'
    end
    object ibqryPretFitQTA46: TIntegerField
      FieldName = 'QTA46'
      Origin = '"PRETFIT"."QTA46"'
    end
    object ibqryPretFitQTA47: TIntegerField
      FieldName = 'QTA47'
      Origin = '"PRETFIT"."QTA47"'
    end
    object ibqryPretFitQTA48: TIntegerField
      FieldName = 'QTA48'
      Origin = '"PRETFIT"."QTA48"'
    end
    object ibqryPretFitQTA49: TIntegerField
      FieldName = 'QTA49'
      Origin = '"PRETFIT"."QTA49"'
    end
    object ibqryPretFitQTA50: TIntegerField
      FieldName = 'QTA50'
      Origin = '"PRETFIT"."QTA50"'
    end
    object ibqryPretFitQTA51: TIntegerField
      FieldName = 'QTA51'
      Origin = '"PRETFIT"."QTA51"'
    end
    object ibqryPretFitQTA52: TIntegerField
      FieldName = 'QTA52'
      Origin = '"PRETFIT"."QTA52"'
    end
    object ibqryPretFitQTA53: TIntegerField
      FieldName = 'QTA53'
      Origin = '"PRETFIT"."QTA53"'
    end
    object ibqryPretFitQTA54: TIntegerField
      FieldName = 'QTA54'
      Origin = '"PRETFIT"."QTA54"'
    end
    object ibqryPretFitQTA55: TIntegerField
      FieldName = 'QTA55'
      Origin = '"PRETFIT"."QTA55"'
    end
    object ibqryPretFitQTA56: TIntegerField
      FieldName = 'QTA56'
      Origin = '"PRETFIT"."QTA56"'
    end
    object ibqryPretFitQTA57: TIntegerField
      FieldName = 'QTA57'
      Origin = '"PRETFIT"."QTA57"'
    end
    object ibqryPretFitQTA58: TIntegerField
      FieldName = 'QTA58'
      Origin = '"PRETFIT"."QTA58"'
    end
    object ibqryPretFitQTA59: TIntegerField
      FieldName = 'QTA59'
      Origin = '"PRETFIT"."QTA59"'
    end
    object ibqryPretFitQTA60: TIntegerField
      FieldName = 'QTA60'
      Origin = '"PRETFIT"."QTA60"'
    end
    object ibqryPretFitQTA61: TIntegerField
      FieldName = 'QTA61'
      Origin = '"PRETFIT"."QTA61"'
    end
    object ibqryPretFitQTA62: TIntegerField
      FieldName = 'QTA62'
      Origin = '"PRETFIT"."QTA62"'
    end
    object ibqryPretFitQTA63: TIntegerField
      FieldName = 'QTA63'
      Origin = '"PRETFIT"."QTA63"'
    end
    object ibqryPretFitQTA64: TIntegerField
      FieldName = 'QTA64'
      Origin = '"PRETFIT"."QTA64"'
    end
    object ibqryPretFitQTA65: TIntegerField
      FieldName = 'QTA65'
      Origin = '"PRETFIT"."QTA65"'
    end
    object ibqryPretFitQTA66: TIntegerField
      FieldName = 'QTA66'
      Origin = '"PRETFIT"."QTA66"'
    end
    object ibqryPretFitQTA67: TIntegerField
      FieldName = 'QTA67'
      Origin = '"PRETFIT"."QTA67"'
    end
    object ibqryPretFitQTA68: TIntegerField
      FieldName = 'QTA68'
      Origin = '"PRETFIT"."QTA68"'
    end
    object ibqryPretFitQTA69: TIntegerField
      FieldName = 'QTA69'
      Origin = '"PRETFIT"."QTA69"'
    end
    object ibqryPretFitQTA70: TIntegerField
      FieldName = 'QTA70'
      Origin = '"PRETFIT"."QTA70"'
    end
    object ibqryPretFitQTA71: TIntegerField
      FieldName = 'QTA71'
      Origin = '"PRETFIT"."QTA71"'
    end
    object ibqryPretFitQTA72: TIntegerField
      FieldName = 'QTA72'
      Origin = '"PRETFIT"."QTA72"'
    end
    object ibqryPretFitQTA73: TIntegerField
      FieldName = 'QTA73'
      Origin = '"PRETFIT"."QTA73"'
    end
    object ibqryPretFitQTA74: TIntegerField
      FieldName = 'QTA74'
      Origin = '"PRETFIT"."QTA74"'
    end
    object ibqryPretFitQTA75: TIntegerField
      FieldName = 'QTA75'
      Origin = '"PRETFIT"."QTA75"'
    end
    object ibqryPretFitQTA76: TIntegerField
      FieldName = 'QTA76'
      Origin = '"PRETFIT"."QTA76"'
    end
    object ibqryPretFitQTA77: TIntegerField
      FieldName = 'QTA77'
      Origin = '"PRETFIT"."QTA77"'
    end
    object ibqryPretFitQTA78: TIntegerField
      FieldName = 'QTA78'
      Origin = '"PRETFIT"."QTA78"'
    end
    object ibqryPretFitQTA79: TIntegerField
      FieldName = 'QTA79'
      Origin = '"PRETFIT"."QTA79"'
    end
    object ibqryPretFitQTA80: TIntegerField
      FieldName = 'QTA80'
      Origin = '"PRETFIT"."QTA80"'
    end
    object ibqryPretFitQTA81: TIntegerField
      FieldName = 'QTA81'
      Origin = '"PRETFIT"."QTA81"'
    end
    object ibqryPretFitQTA82: TIntegerField
      FieldName = 'QTA82'
      Origin = '"PRETFIT"."QTA82"'
    end
    object ibqryPretFitQTA83: TIntegerField
      FieldName = 'QTA83'
      Origin = '"PRETFIT"."QTA83"'
    end
    object ibqryPretFitQTA84: TIntegerField
      FieldName = 'QTA84'
      Origin = '"PRETFIT"."QTA84"'
    end
    object ibqryPretFitQTA85: TIntegerField
      FieldName = 'QTA85'
      Origin = '"PRETFIT"."QTA85"'
    end
    object ibqryPretFitQTA86: TIntegerField
      FieldName = 'QTA86'
      Origin = '"PRETFIT"."QTA86"'
    end
    object ibqryPretFitQTA87: TIntegerField
      FieldName = 'QTA87'
      Origin = '"PRETFIT"."QTA87"'
    end
    object ibqryPretFitQTA88: TIntegerField
      FieldName = 'QTA88'
      Origin = '"PRETFIT"."QTA88"'
    end
    object ibqryPretFitQTA89: TIntegerField
      FieldName = 'QTA89'
      Origin = '"PRETFIT"."QTA89"'
    end
    object ibqryPretFitQTA90: TIntegerField
      FieldName = 'QTA90'
      Origin = '"PRETFIT"."QTA90"'
    end
    object ibqryPretFitQTA91: TIntegerField
      FieldName = 'QTA91'
      Origin = '"PRETFIT"."QTA91"'
    end
    object ibqryPretFitQTA92: TIntegerField
      FieldName = 'QTA92'
      Origin = '"PRETFIT"."QTA92"'
    end
    object ibqryPretFitQTA93: TIntegerField
      FieldName = 'QTA93'
      Origin = '"PRETFIT"."QTA93"'
    end
    object ibqryPretFitQTA94: TIntegerField
      FieldName = 'QTA94'
      Origin = '"PRETFIT"."QTA94"'
    end
    object ibqryPretFitQTA95: TIntegerField
      FieldName = 'QTA95'
      Origin = '"PRETFIT"."QTA95"'
    end
    object ibqryPretFitQTA96: TIntegerField
      FieldName = 'QTA96'
      Origin = '"PRETFIT"."QTA96"'
    end
    object ibqryPretFitQTA97: TIntegerField
      FieldName = 'QTA97'
      Origin = '"PRETFIT"."QTA97"'
    end
    object ibqryPretFitQTA98: TIntegerField
      FieldName = 'QTA98'
      Origin = '"PRETFIT"."QTA98"'
    end
    object ibqryPretFitQTA99: TIntegerField
      FieldName = 'QTA99'
      Origin = '"PRETFIT"."QTA99"'
    end
    object ibqryPretFitTOTALE_COLORE0: TIntegerField
      FieldName = 'TOTALE_COLORE0'
      Origin = '"PRETFIT"."TOTALE_COLORE0"'
    end
    object ibqryPretFitTOTALE_COLORE1: TIntegerField
      FieldName = 'TOTALE_COLORE1'
      Origin = '"PRETFIT"."TOTALE_COLORE1"'
    end
    object ibqryPretFitTOTALE_COLORE2: TIntegerField
      FieldName = 'TOTALE_COLORE2'
      Origin = '"PRETFIT"."TOTALE_COLORE2"'
    end
    object ibqryPretFitTOTALE_COLORE3: TIntegerField
      FieldName = 'TOTALE_COLORE3'
      Origin = '"PRETFIT"."TOTALE_COLORE3"'
    end
    object ibqryPretFitTOTALE_COLORE4: TIntegerField
      FieldName = 'TOTALE_COLORE4'
      Origin = '"PRETFIT"."TOTALE_COLORE4"'
    end
    object ibqryPretFitTOTALE_COLORE5: TIntegerField
      FieldName = 'TOTALE_COLORE5'
      Origin = '"PRETFIT"."TOTALE_COLORE5"'
    end
    object ibqryPretFitTOTALE_COLORE6: TIntegerField
      FieldName = 'TOTALE_COLORE6'
      Origin = '"PRETFIT"."TOTALE_COLORE6"'
    end
    object ibqryPretFitTOTALE_COLORE7: TIntegerField
      FieldName = 'TOTALE_COLORE7'
      Origin = '"PRETFIT"."TOTALE_COLORE7"'
    end
    object ibqryPretFitTOTALE_COLORE8: TIntegerField
      FieldName = 'TOTALE_COLORE8'
      Origin = '"PRETFIT"."TOTALE_COLORE8"'
    end
    object ibqryPretFitTOTALE_COLORE9: TIntegerField
      FieldName = 'TOTALE_COLORE9'
      Origin = '"PRETFIT"."TOTALE_COLORE9"'
    end
    object ibqryPretFitTOTALE_TAGLIA0: TIntegerField
      FieldName = 'TOTALE_TAGLIA0'
      Origin = '"PRETFIT"."TOTALE_TAGLIA0"'
    end
    object ibqryPretFitTOTALE_TAGLIA1: TIntegerField
      FieldName = 'TOTALE_TAGLIA1'
      Origin = '"PRETFIT"."TOTALE_TAGLIA1"'
    end
    object ibqryPretFitTOTALE_TAGLIA2: TIntegerField
      FieldName = 'TOTALE_TAGLIA2'
      Origin = '"PRETFIT"."TOTALE_TAGLIA2"'
    end
    object ibqryPretFitTOTALE_TAGLIA3: TIntegerField
      FieldName = 'TOTALE_TAGLIA3'
      Origin = '"PRETFIT"."TOTALE_TAGLIA3"'
    end
    object ibqryPretFitTOTALE_TAGLIA4: TIntegerField
      FieldName = 'TOTALE_TAGLIA4'
      Origin = '"PRETFIT"."TOTALE_TAGLIA4"'
    end
    object ibqryPretFitTOTALE_TAGLIA5: TIntegerField
      FieldName = 'TOTALE_TAGLIA5'
      Origin = '"PRETFIT"."TOTALE_TAGLIA5"'
    end
    object ibqryPretFitTOTALE_TAGLIA6: TIntegerField
      FieldName = 'TOTALE_TAGLIA6'
      Origin = '"PRETFIT"."TOTALE_TAGLIA6"'
    end
    object ibqryPretFitTOTALE_TAGLIA7: TIntegerField
      FieldName = 'TOTALE_TAGLIA7'
      Origin = '"PRETFIT"."TOTALE_TAGLIA7"'
    end
    object ibqryPretFitTOTALE_TAGLIA8: TIntegerField
      FieldName = 'TOTALE_TAGLIA8'
      Origin = '"PRETFIT"."TOTALE_TAGLIA8"'
    end
    object ibqryPretFitTOTALE_TAGLIA9: TIntegerField
      FieldName = 'TOTALE_TAGLIA9'
      Origin = '"PRETFIT"."TOTALE_TAGLIA9"'
    end
    object ibqryPretFitQTA_TOTALE: TIntegerField
      FieldName = 'QTA_TOTALE'
      Origin = '"PRETFIT"."QTA_TOTALE"'
    end
    object ibqryPretFitSCAT: TFloatField
      FieldName = 'SCAT'
      Origin = '"PRETFIT"."SCAT"'
    end
    object ibqryPretFitPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"PRETFIT"."PASSATA"'
      Size = 1
    end
    object ibqryPretFitF1: TIBStringField
      FieldName = 'F1'
      Origin = '"PRETFIT"."F1"'
      Size = 5
    end
    object ibqryPretFitF2: TIBStringField
      FieldName = 'F2'
      Origin = '"PRETFIT"."F2"'
      Size = 5
    end
    object ibqryPretFitF3: TIBStringField
      FieldName = 'F3'
      Origin = '"PRETFIT"."F3"'
      Size = 5
    end
    object ibqryPretFitF4: TIBStringField
      FieldName = 'F4'
      Origin = '"PRETFIT"."F4"'
      Size = 5
    end
    object ibqryPretFitF5: TIBStringField
      FieldName = 'F5'
      Origin = '"PRETFIT"."F5"'
      Size = 5
    end
    object ibqryPretFitF6: TIBStringField
      FieldName = 'F6'
      Origin = '"PRETFIT"."F6"'
      Size = 5
    end
    object ibqryPretFitF7: TIBStringField
      FieldName = 'F7'
      Origin = '"PRETFIT"."F7"'
      Size = 5
    end
    object ibqryPretFitF8: TIBStringField
      FieldName = 'F8'
      Origin = '"PRETFIT"."F8"'
      Size = 5
    end
    object ibqryPretFitF0: TIBStringField
      FieldName = 'F0'
      Origin = '"PRETFIT"."F0"'
      Size = 5
    end
    object ibqryPretFitPK_DIST: TIntegerField
      FieldName = 'PK_DIST'
      Origin = '"PRETFIT"."PK_DIST"'
    end
  end
  object ibqTab_Cli: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_CLI_FOR'
      'where'
      '  ID_CLI_FOR = :OLD_ID_CLI_FOR')
    InsertSQL.Strings = (
      'insert into TAB_CLI_FOR'
      
        '  (ID_CLI_FOR, TIPO, DENOMINAZIONE, COGNOME, NOME, NOME_ALTRO, I' +
        'NDIRIZZO, '
      
        '   COMUNE_ID, PARTITA_IVA, CODICE_FISCALE, PERSONA_FISICA, PIANO' +
        '_CONTI_ID, '
      
        '   CONTO_CORRENTE, MONETA_ID, PAGAMENTO_ID, CODICE_ZONA_ID, CODI' +
        'CE_SOTTO_ZONA_ID, '
      
        '   CATEGORIA_CLIENTE_ID, AGENTE_ID, PROVVIGIONE, LINGUA_ID, CODI' +
        'CE_LISTINO, '
      
        '   SCONTO_TESTATA1, SCONTO_TESTATA2, TEL1, TEL2, FAX, EMAIL, INT' +
        'ERNET, '
      
        '   DATA_DI_NASCITA, SESSO, TITOLO_ID, PORTO_ID, FIDO, ABILITA_PA' +
        'RTITA, '
      
        '   FATTURA_RIEPILOGATIVA, ACCORPA_ARTICOLI, IVA_SOSPESA, POS_RIF' +
        '_BOLLE, '
      
        '   CODICE_IVA_ESENTE, RIP_RIF_BOLLE, ESCLUDI_MESE1, RIP_RIF_ORDI' +
        'NI, ESCLUDI_MESE2, '
      
        '   TIPO_CONTO_ID, NAZIONE_ID, NAZIONE_DI_NASCITA_ID, RAGGRUPPAME' +
        'NTO_ID, '
      
        '   RISCHIO, GG_SCADENZA1, GG_SCADENZA2, CONTROPARTITA_ID, TIPO_C' +
        'ONTROPARTITA, '
      
        '   CERTIFICATO, DENOMINAZIONE2, INDIRIZZO2, LOCALITA, COMUNE_DI_' +
        'NASCITA_ID, '
      
        '   CAB_ID, ABI_ID, TITOLO_DESCR, COMNASC_DESCR, CAPNASC_DESCR, N' +
        'AZNASC_DESCR, '
      
        '   COM_DESCR, CAP_DESCR, PR_DESCR, CAB_DESCR, ABI_DESCR, NAZ_DES' +
        'CR, FASON, '
      '   NOTE, CG, CA, COD2, CR)'
      'values'
      
        '  (:ID_CLI_FOR, :TIPO, :DENOMINAZIONE, :COGNOME, :NOME, :NOME_AL' +
        'TRO, :INDIRIZZO, '
      
        '   :COMUNE_ID, :PARTITA_IVA, :CODICE_FISCALE, :PERSONA_FISICA, :' +
        'PIANO_CONTI_ID, '
      
        '   :CONTO_CORRENTE, :MONETA_ID, :PAGAMENTO_ID, :CODICE_ZONA_ID, ' +
        ':CODICE_SOTTO_ZONA_ID, '
      
        '   :CATEGORIA_CLIENTE_ID, :AGENTE_ID, :PROVVIGIONE, :LINGUA_ID, ' +
        ':CODICE_LISTINO, '
      
        '   :SCONTO_TESTATA1, :SCONTO_TESTATA2, :TEL1, :TEL2, :FAX, :EMAI' +
        'L, :INTERNET, '
      
        '   :DATA_DI_NASCITA, :SESSO, :TITOLO_ID, :PORTO_ID, :FIDO, :ABIL' +
        'ITA_PARTITA, '
      
        '   :FATTURA_RIEPILOGATIVA, :ACCORPA_ARTICOLI, :IVA_SOSPESA, :POS' +
        '_RIF_BOLLE, '
      
        '   :CODICE_IVA_ESENTE, :RIP_RIF_BOLLE, :ESCLUDI_MESE1, :RIP_RIF_' +
        'ORDINI, '
      
        '   :ESCLUDI_MESE2, :TIPO_CONTO_ID, :NAZIONE_ID, :NAZIONE_DI_NASC' +
        'ITA_ID, '
      
        '   :RAGGRUPPAMENTO_ID, :RISCHIO, :GG_SCADENZA1, :GG_SCADENZA2, :' +
        'CONTROPARTITA_ID, '
      
        '   :TIPO_CONTROPARTITA, :CERTIFICATO, :DENOMINAZIONE2, :INDIRIZZ' +
        'O2, :LOCALITA, '
      
        '   :COMUNE_DI_NASCITA_ID, :CAB_ID, :ABI_ID, :TITOLO_DESCR, :COMN' +
        'ASC_DESCR, '
      
        '   :CAPNASC_DESCR, :NAZNASC_DESCR, :COM_DESCR, :CAP_DESCR, :PR_D' +
        'ESCR, :CAB_DESCR, '
      '   :ABI_DESCR, :NAZ_DESCR, :FASON, :NOTE, :CG, :CA, :COD2, :CR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLI_FOR,'
      '  TIPO,'
      '  DENOMINAZIONE,'
      '  COGNOME,'
      '  NOME,'
      '  NOME_ALTRO,'
      '  FULL_NAME,'
      '  INDIRIZZO,'
      '  COMUNE_ID,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  PERSONA_FISICA,'
      '  PIANO_CONTI_ID,'
      '  CONTO_CORRENTE,'
      '  MONETA_ID,'
      '  PAGAMENTO_ID,'
      '  CODICE_ZONA_ID,'
      '  CODICE_SOTTO_ZONA_ID,'
      '  CATEGORIA_CLIENTE_ID,'
      '  AGENTE_ID,'
      '  PROVVIGIONE,'
      '  LINGUA_ID,'
      '  CODICE_LISTINO,'
      '  SCONTO_TESTATA1,'
      '  SCONTO_TESTATA2,'
      '  TEL1,'
      '  TEL2,'
      '  FAX,'
      '  EMAIL,'
      '  INTERNET,'
      '  DATA_DI_NASCITA,'
      '  SESSO,'
      '  TITOLO_ID,'
      '  PORTO_ID,'
      '  FIDO,'
      '  ABILITA_PARTITA,'
      '  FATTURA_RIEPILOGATIVA,'
      '  ACCORPA_ARTICOLI,'
      '  IVA_SOSPESA,'
      '  POS_RIF_BOLLE,'
      '  CODICE_IVA_ESENTE,'
      '  RIP_RIF_BOLLE,'
      '  ESCLUDI_MESE1,'
      '  RIP_RIF_ORDINI,'
      '  ESCLUDI_MESE2,'
      '  TIPO_CONTO_ID,'
      '  NAZIONE_ID,'
      '  NAZIONE_DI_NASCITA_ID,'
      '  RAGGRUPPAMENTO_ID,'
      '  RISCHIO,'
      '  GG_SCADENZA1,'
      '  GG_SCADENZA2,'
      '  CONTROPARTITA_ID,'
      '  TIPO_CONTROPARTITA,'
      '  CERTIFICATO,'
      '  DENOMINAZIONE2,'
      '  INDIRIZZO2,'
      '  LOCALITA,'
      '  COMUNE_DI_NASCITA_ID,'
      '  CAB_ID,'
      '  ABI_ID,'
      '  TITOLO_DESCR,'
      '  COMNASC_DESCR,'
      '  CAPNASC_DESCR,'
      '  NAZNASC_DESCR,'
      '  COM_DESCR,'
      '  CAP_DESCR,'
      '  PR_DESCR,'
      '  CAB_DESCR,'
      '  ABI_DESCR,'
      '  NAZ_DESCR,'
      '  FASON,'
      '  NOTE,'
      '  CG,'
      '  CA,'
      '  COD2,'
      '  CR'
      'from TAB_CLI_FOR '
      'where'
      '  ID_CLI_FOR = :ID_CLI_FOR')
    SelectSQL.Strings = (
      'select * from TAB_CLI_FOR Where Tipo=1 order by denominazione')
    ModifySQL.Strings = (
      'update TAB_CLI_FOR'
      'set'
      '  ID_CLI_FOR = :ID_CLI_FOR,'
      '  TIPO = :TIPO,'
      '  DENOMINAZIONE = :DENOMINAZIONE,'
      '  COGNOME = :COGNOME,'
      '  NOME = :NOME,'
      '  NOME_ALTRO = :NOME_ALTRO,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  COMUNE_ID = :COMUNE_ID,'
      '  PARTITA_IVA = :PARTITA_IVA,'
      '  CODICE_FISCALE = :CODICE_FISCALE,'
      '  PERSONA_FISICA = :PERSONA_FISICA,'
      '  PIANO_CONTI_ID = :PIANO_CONTI_ID,'
      '  CONTO_CORRENTE = :CONTO_CORRENTE,'
      '  MONETA_ID = :MONETA_ID,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  CODICE_ZONA_ID = :CODICE_ZONA_ID,'
      '  CODICE_SOTTO_ZONA_ID = :CODICE_SOTTO_ZONA_ID,'
      '  CATEGORIA_CLIENTE_ID = :CATEGORIA_CLIENTE_ID,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  LINGUA_ID = :LINGUA_ID,'
      '  CODICE_LISTINO = :CODICE_LISTINO,'
      '  SCONTO_TESTATA1 = :SCONTO_TESTATA1,'
      '  SCONTO_TESTATA2 = :SCONTO_TESTATA2,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  INTERNET = :INTERNET,'
      '  DATA_DI_NASCITA = :DATA_DI_NASCITA,'
      '  SESSO = :SESSO,'
      '  TITOLO_ID = :TITOLO_ID,'
      '  PORTO_ID = :PORTO_ID,'
      '  FIDO = :FIDO,'
      '  ABILITA_PARTITA = :ABILITA_PARTITA,'
      '  FATTURA_RIEPILOGATIVA = :FATTURA_RIEPILOGATIVA,'
      '  ACCORPA_ARTICOLI = :ACCORPA_ARTICOLI,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  POS_RIF_BOLLE = :POS_RIF_BOLLE,'
      '  CODICE_IVA_ESENTE = :CODICE_IVA_ESENTE,'
      '  RIP_RIF_BOLLE = :RIP_RIF_BOLLE,'
      '  ESCLUDI_MESE1 = :ESCLUDI_MESE1,'
      '  RIP_RIF_ORDINI = :RIP_RIF_ORDINI,'
      '  ESCLUDI_MESE2 = :ESCLUDI_MESE2,'
      '  TIPO_CONTO_ID = :TIPO_CONTO_ID,'
      '  NAZIONE_ID = :NAZIONE_ID,'
      '  NAZIONE_DI_NASCITA_ID = :NAZIONE_DI_NASCITA_ID,'
      '  RAGGRUPPAMENTO_ID = :RAGGRUPPAMENTO_ID,'
      '  RISCHIO = :RISCHIO,'
      '  GG_SCADENZA1 = :GG_SCADENZA1,'
      '  GG_SCADENZA2 = :GG_SCADENZA2,'
      '  CONTROPARTITA_ID = :CONTROPARTITA_ID,'
      '  TIPO_CONTROPARTITA = :TIPO_CONTROPARTITA,'
      '  CERTIFICATO = :CERTIFICATO,'
      '  DENOMINAZIONE2 = :DENOMINAZIONE2,'
      '  INDIRIZZO2 = :INDIRIZZO2,'
      '  LOCALITA = :LOCALITA,'
      '  COMUNE_DI_NASCITA_ID = :COMUNE_DI_NASCITA_ID,'
      '  CAB_ID = :CAB_ID,'
      '  ABI_ID = :ABI_ID,'
      '  TITOLO_DESCR = :TITOLO_DESCR,'
      '  COMNASC_DESCR = :COMNASC_DESCR,'
      '  CAPNASC_DESCR = :CAPNASC_DESCR,'
      '  NAZNASC_DESCR = :NAZNASC_DESCR,'
      '  COM_DESCR = :COM_DESCR,'
      '  CAP_DESCR = :CAP_DESCR,'
      '  PR_DESCR = :PR_DESCR,'
      '  CAB_DESCR = :CAB_DESCR,'
      '  ABI_DESCR = :ABI_DESCR,'
      '  NAZ_DESCR = :NAZ_DESCR,'
      '  FASON = :FASON,'
      '  NOTE = :NOTE,'
      '  CG = :CG,'
      '  CA = :CA,'
      '  COD2 = :COD2,'
      '  CR = :CR'
      'where'
      '  ID_CLI_FOR = :OLD_ID_CLI_FOR')
    GeneratorField.Field = 'ID_CLI_FOR'
    GeneratorField.Generator = 'GEN_ID_CLI_FOR'
    Left = 208
    object ibqTab_CliDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object ibqTab_CliID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Origin = '"TAB_CLI_FOR"."ID_CLI_FOR"'
      Required = True
    end
    object ibqTab_CliPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object ibqTab_CliTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_CLI_FOR"."TEL1"'
      Size = 15
    end
    object ibqTab_CliTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_CLI_FOR"."TEL2"'
      Size = 15
    end
    object ibqTab_CliFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_CLI_FOR"."FAX"'
      Size = 15
    end
    object ibqTab_CliTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_CLI_FOR"."TIPO"'
    end
    object ibqTab_CliCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = '"TAB_CLI_FOR"."COGNOME"'
      Size = 30
    end
    object ibqTab_CliNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLI_FOR"."NOME"'
      Size = 30
    end
    object ibqTab_CliNOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Origin = '"TAB_CLI_FOR"."NOME_ALTRO"'
      Size = 30
    end
    object ibqTab_CliFULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      Origin = '"TAB_CLI_FOR"."FULL_NAME"'
      ReadOnly = True
      Size = 92
    end
    object ibqTab_CliINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO"'
      Size = 100
    end
    object ibqTab_CliCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_ID"'
    end
    object ibqTab_CliCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_CLI_FOR"."CODICE_FISCALE"'
      Size = 30
    end
    object ibqTab_CliPERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
      Origin = '"TAB_CLI_FOR"."PERSONA_FISICA"'
    end
    object ibqTab_CliPIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
      Origin = '"TAB_CLI_FOR"."PIANO_CONTI_ID"'
    end
    object ibqTab_CliCONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Origin = '"TAB_CLI_FOR"."CONTO_CORRENTE"'
      Size = 30
    end
    object ibqTab_CliMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_CLI_FOR"."MONETA_ID"'
      Size = 4
    end
    object ibqTab_CliPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."PAGAMENTO_ID"'
      Size = 5
    end
    object ibqTab_CliCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_ZONA_ID"'
      Size = 7
    end
    object ibqTab_CliCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object ibqTab_CliCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Origin = '"TAB_CLI_FOR"."CATEGORIA_CLIENTE_ID"'
      Size = 4
    end
    object ibqTab_CliAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_CLI_FOR"."AGENTE_ID"'
      Size = 4
    end
    object ibqTab_CliPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_CLI_FOR"."PROVVIGIONE"'
    end
    object ibqTab_CliLINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Origin = '"TAB_CLI_FOR"."LINGUA_ID"'
      Size = 4
    end
    object ibqTab_CliCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Origin = '"TAB_CLI_FOR"."CODICE_LISTINO"'
      Size = 30
    end
    object ibqTab_CliSCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA1"'
    end
    object ibqTab_CliSCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA2"'
    end
    object ibqTab_CliEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLI_FOR"."EMAIL"'
      Size = 50
    end
    object ibqTab_CliINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_CLI_FOR"."INTERNET"'
      Size = 100
    end
    object ibqTab_CliDATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
      Origin = '"TAB_CLI_FOR"."DATA_DI_NASCITA"'
    end
    object ibqTab_CliSESSO: TIntegerField
      FieldName = 'SESSO'
      Origin = '"TAB_CLI_FOR"."SESSO"'
    end
    object ibqTab_CliTITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
      Origin = '"TAB_CLI_FOR"."TITOLO_ID"'
    end
    object ibqTab_CliPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"TAB_CLI_FOR"."PORTO_ID"'
      Size = 4
    end
    object ibqTab_CliFIDO: TFloatField
      FieldName = 'FIDO'
      Origin = '"TAB_CLI_FOR"."FIDO"'
    end
    object ibqTab_CliABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
      Origin = '"TAB_CLI_FOR"."ABILITA_PARTITA"'
    end
    object ibqTab_CliFATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
      Origin = '"TAB_CLI_FOR"."FATTURA_RIEPILOGATIVA"'
    end
    object ibqTab_CliACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
      Origin = '"TAB_CLI_FOR"."ACCORPA_ARTICOLI"'
    end
    object ibqTab_CliIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CLI_FOR"."IVA_SOSPESA"'
    end
    object ibqTab_CliPOS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."POS_RIF_BOLLE"'
    end
    object ibqTab_CliCODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Origin = '"TAB_CLI_FOR"."CODICE_IVA_ESENTE"'
      Size = 4
    end
    object ibqTab_CliRIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_BOLLE"'
    end
    object ibqTab_CliESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE1"'
    end
    object ibqTab_CliRIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_ORDINI"'
    end
    object ibqTab_CliESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE2"'
    end
    object ibqTab_CliTIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTO_ID"'
    end
    object ibqTab_CliNAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_ID"'
    end
    object ibqTab_CliNAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_DI_NASCITA_ID"'
    end
    object ibqTab_CliRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object ibqTab_CliRISCHIO: TFloatField
      FieldName = 'RISCHIO'
      Origin = '"TAB_CLI_FOR"."RISCHIO"'
    end
    object ibqTab_CliGG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA1"'
    end
    object ibqTab_CliGG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA2"'
    end
    object ibqTab_CliCONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
      Origin = '"TAB_CLI_FOR"."CONTROPARTITA_ID"'
    end
    object ibqTab_CliTIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTROPARTITA"'
    end
    object ibqTab_CliCERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
      Origin = '"TAB_CLI_FOR"."CERTIFICATO"'
    end
    object ibqTab_CliDENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE2"'
      Size = 50
    end
    object ibqTab_CliINDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO2"'
      Size = 100
    end
    object ibqTab_CliLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CLI_FOR"."LOCALITA"'
      Size = 50
    end
    object ibqTab_CliCOMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_DI_NASCITA_ID"'
    end
    object ibqTab_CliCAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Origin = '"TAB_CLI_FOR"."CAB_ID"'
      Size = 13
    end
    object ibqTab_CliABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CLI_FOR"."ABI_ID"'
      Size = 13
    end
    object ibqTab_CliTITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Origin = '"TAB_CLI_FOR"."TITOLO_DESCR"'
      Size = 10
    end
    object ibqTab_CliCOMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."COMNASC_DESCR"'
      Size = 50
    end
    object ibqTab_CliCAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."CAPNASC_DESCR"'
      Size = 5
    end
    object ibqTab_CliNAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZNASC_DESCR"'
    end
    object ibqTab_CliCOM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Origin = '"TAB_CLI_FOR"."COM_DESCR"'
      Size = 50
    end
    object ibqTab_CliCAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Origin = '"TAB_CLI_FOR"."CAP_DESCR"'
      Size = 5
    end
    object ibqTab_CliPR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Origin = '"TAB_CLI_FOR"."PR_DESCR"'
      Size = 2
    end
    object ibqTab_CliCAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Origin = '"TAB_CLI_FOR"."CAB_DESCR"'
      Size = 50
    end
    object ibqTab_CliABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Origin = '"TAB_CLI_FOR"."ABI_DESCR"'
      Size = 100
    end
    object ibqTab_CliNAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZ_DESCR"'
      Size = 50
    end
    object ibqTab_CliFASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object ibqTab_CliCG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_CLI_FOR"."CG"'
      Size = 4
    end
    object ibqTab_CliCA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_CLI_FOR"."CA"'
      Size = 4
    end
    object ibqTab_CliCOD2: TIBStringField
      FieldName = 'COD2'
      Origin = '"TAB_CLI_FOR"."COD2"'
      Size = 4
    end
    object ibqTab_CliCR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_CLI_FOR"."CR"'
      Size = 4
    end
    object ibqTab_CliNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 2000
    end
  end
  object ibqryPretaglio: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PRETAGLIO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into PRETAGLIO'
      
        '  (CLIENTE, CODICE, COLORE0, COLORE1, COLORE2, COLORE3, COLORE4,' +
        ' COLORE5, '
      
        '   COLORE6, COLORE7, COLORE8, COLORE9, DATA, DESCR, DIPENDENTE, ' +
        'F0, F1, '
      
        '   F2, F3, F4, F5, F6, F7, F8, FASONISTA, G0, G1, G2, G3, G4, G5' +
        ', G6, G7, '
      
        '   G8, H0, H1, H2, H3, H4, H5, H6, H7, H8, NOTE, NUMERO, NUMERO_' +
        'A, PASSATA, '
      
        '   PK_CODICE, PK_DIST, QTA_TOTALE, QTA00, QTA01, QTA02, QTA03, Q' +
        'TA04, QTA05, '
      
        '   QTA06, QTA07, QTA08, QTA09, QTA10, QTA11, QTA12, QTA13, QTA14' +
        ', QTA15, '
      
        '   QTA16, QTA17, QTA18, QTA19, QTA20, QTA21, QTA22, QTA23, QTA24' +
        ', QTA25, '
      
        '   QTA26, QTA27, QTA28, QTA29, QTA30, QTA31, QTA32, QTA33, QTA34' +
        ', QTA35, '
      
        '   QTA36, QTA37, QTA38, QTA39, QTA40, QTA41, QTA42, QTA43, QTA44' +
        ', QTA45, '
      
        '   QTA46, QTA47, QTA48, QTA49, QTA50, QTA51, QTA52, QTA53, QTA54' +
        ', QTA55, '
      
        '   QTA56, QTA57, QTA58, QTA59, QTA60, QTA61, QTA62, QTA63, QTA64' +
        ', QTA65, '
      
        '   QTA66, QTA67, QTA68, QTA69, QTA70, QTA71, QTA72, QTA73, QTA74' +
        ', QTA75, '
      
        '   QTA76, QTA77, QTA78, QTA79, QTA80, QTA81, QTA82, QTA83, QTA84' +
        ', QTA85, '
      
        '   QTA86, QTA87, QTA88, QTA89, QTA90, QTA91, QTA92, QTA93, QTA94' +
        ', QTA95, '
      
        '   QTA96, QTA97, QTA98, QTA99, SCAT, TAGLIA0, TAGLIA1, TAGLIA2, ' +
        'TAGLIA3, '
      
        '   TAGLIA4, TAGLIA5, TAGLIA6, TAGLIA7, TAGLIA8, TAGLIA9, TOTALE,' +
        ' TOTALE_COLORE0, '
      
        '   TOTALE_COLORE1, TOTALE_COLORE2, TOTALE_COLORE3, TOTALE_COLORE' +
        '4, TOTALE_COLORE5, '
      
        '   TOTALE_COLORE6, TOTALE_COLORE7, TOTALE_COLORE8, TOTALE_COLORE' +
        '9, TOTALE_TAGLIA0, '
      
        '   TOTALE_TAGLIA1, TOTALE_TAGLIA2, TOTALE_TAGLIA3, TOTALE_TAGLIA' +
        '4, TOTALE_TAGLIA5, '
      
        '   TOTALE_TAGLIA6, TOTALE_TAGLIA7, TOTALE_TAGLIA8, TOTALE_TAGLIA' +
        '9)'
      'values'
      
        '  (:CLIENTE, :CODICE, :COLORE0, :COLORE1, :COLORE2, :COLORE3, :C' +
        'OLORE4, '
      
        '   :COLORE5, :COLORE6, :COLORE7, :COLORE8, :COLORE9, :DATA, :DES' +
        'CR, :DIPENDENTE, '
      
        '   :F0, :F1, :F2, :F3, :F4, :F5, :F6, :F7, :F8, :FASONISTA, :G0,' +
        ' :G1, :G2, '
      
        '   :G3, :G4, :G5, :G6, :G7, :G8, :H0, :H1, :H2, :H3, :H4, :H5, :' +
        'H6, :H7, '
      
        '   :H8, :NOTE, :NUMERO, :NUMERO_A, :PASSATA, :PK_CODICE, :PK_DIS' +
        'T, :QTA_TOTALE, '
      
        '   :QTA00, :QTA01, :QTA02, :QTA03, :QTA04, :QTA05, :QTA06, :QTA0' +
        '7, :QTA08, '
      
        '   :QTA09, :QTA10, :QTA11, :QTA12, :QTA13, :QTA14, :QTA15, :QTA1' +
        '6, :QTA17, '
      
        '   :QTA18, :QTA19, :QTA20, :QTA21, :QTA22, :QTA23, :QTA24, :QTA2' +
        '5, :QTA26, '
      
        '   :QTA27, :QTA28, :QTA29, :QTA30, :QTA31, :QTA32, :QTA33, :QTA3' +
        '4, :QTA35, '
      
        '   :QTA36, :QTA37, :QTA38, :QTA39, :QTA40, :QTA41, :QTA42, :QTA4' +
        '3, :QTA44, '
      
        '   :QTA45, :QTA46, :QTA47, :QTA48, :QTA49, :QTA50, :QTA51, :QTA5' +
        '2, :QTA53, '
      
        '   :QTA54, :QTA55, :QTA56, :QTA57, :QTA58, :QTA59, :QTA60, :QTA6' +
        '1, :QTA62, '
      
        '   :QTA63, :QTA64, :QTA65, :QTA66, :QTA67, :QTA68, :QTA69, :QTA7' +
        '0, :QTA71, '
      
        '   :QTA72, :QTA73, :QTA74, :QTA75, :QTA76, :QTA77, :QTA78, :QTA7' +
        '9, :QTA80, '
      
        '   :QTA81, :QTA82, :QTA83, :QTA84, :QTA85, :QTA86, :QTA87, :QTA8' +
        '8, :QTA89, '
      
        '   :QTA90, :QTA91, :QTA92, :QTA93, :QTA94, :QTA95, :QTA96, :QTA9' +
        '7, :QTA98, '
      
        '   :QTA99, :SCAT, :TAGLIA0, :TAGLIA1, :TAGLIA2, :TAGLIA3, :TAGLI' +
        'A4, :TAGLIA5, '
      
        '   :TAGLIA6, :TAGLIA7, :TAGLIA8, :TAGLIA9, :TOTALE, :TOTALE_COLO' +
        'RE0, :TOTALE_COLORE1, '
      
        '   :TOTALE_COLORE2, :TOTALE_COLORE3, :TOTALE_COLORE4, :TOTALE_CO' +
        'LORE5, '
      
        '   :TOTALE_COLORE6, :TOTALE_COLORE7, :TOTALE_COLORE8, :TOTALE_CO' +
        'LORE9, '
      
        '   :TOTALE_TAGLIA0, :TOTALE_TAGLIA1, :TOTALE_TAGLIA2, :TOTALE_TA' +
        'GLIA3, '
      
        '   :TOTALE_TAGLIA4, :TOTALE_TAGLIA5, :TOTALE_TAGLIA6, :TOTALE_TA' +
        'GLIA7, '
      '   :TOTALE_TAGLIA8, :TOTALE_TAGLIA9)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE,'
      '  DESCR,'
      '  DATA,'
      '  NUMERO,'
      '  NUMERO_A,'
      '  TOTALE,'
      '  DIPENDENTE,'
      '  FASONISTA,'
      '  CLIENTE,'
      '  TAGLIA0,'
      '  TAGLIA1,'
      '  TAGLIA2,'
      '  TAGLIA3,'
      '  TAGLIA4,'
      '  TAGLIA5,'
      '  TAGLIA6,'
      '  TAGLIA7,'
      '  TAGLIA8,'
      '  TAGLIA9,'
      '  COLORE0,'
      '  COLORE1,'
      '  COLORE2,'
      '  COLORE3,'
      '  COLORE4,'
      '  COLORE5,'
      '  COLORE6,'
      '  COLORE7,'
      '  COLORE8,'
      '  COLORE9,'
      '  QTA00,'
      '  QTA01,'
      '  QTA02,'
      '  QTA03,'
      '  QTA04,'
      '  QTA05,'
      '  QTA06,'
      '  QTA07,'
      '  QTA08,'
      '  QTA09,'
      '  QTA10,'
      '  QTA11,'
      '  QTA12,'
      '  QTA13,'
      '  QTA14,'
      '  QTA15,'
      '  QTA16,'
      '  QTA17,'
      '  QTA18,'
      '  QTA19,'
      '  QTA20,'
      '  QTA21,'
      '  QTA22,'
      '  QTA23,'
      '  QTA24,'
      '  QTA25,'
      '  QTA26,'
      '  QTA27,'
      '  QTA28,'
      '  QTA29,'
      '  QTA30,'
      '  QTA31,'
      '  QTA32,'
      '  QTA33,'
      '  QTA34,'
      '  QTA35,'
      '  QTA36,'
      '  QTA37,'
      '  QTA38,'
      '  QTA39,'
      '  QTA40,'
      '  QTA41,'
      '  QTA42,'
      '  QTA43,'
      '  QTA44,'
      '  QTA45,'
      '  QTA46,'
      '  QTA47,'
      '  QTA48,'
      '  QTA49,'
      '  QTA50,'
      '  QTA51,'
      '  QTA52,'
      '  QTA53,'
      '  QTA54,'
      '  QTA55,'
      '  QTA56,'
      '  QTA57,'
      '  QTA58,'
      '  QTA59,'
      '  QTA60,'
      '  QTA61,'
      '  QTA62,'
      '  QTA63,'
      '  QTA64,'
      '  QTA65,'
      '  QTA66,'
      '  QTA67,'
      '  QTA68,'
      '  QTA69,'
      '  QTA70,'
      '  QTA71,'
      '  QTA72,'
      '  QTA73,'
      '  QTA74,'
      '  QTA75,'
      '  QTA76,'
      '  QTA77,'
      '  QTA78,'
      '  QTA79,'
      '  QTA80,'
      '  QTA81,'
      '  QTA82,'
      '  QTA83,'
      '  QTA84,'
      '  QTA85,'
      '  QTA86,'
      '  QTA87,'
      '  QTA88,'
      '  QTA89,'
      '  QTA90,'
      '  QTA91,'
      '  QTA92,'
      '  QTA93,'
      '  QTA94,'
      '  QTA95,'
      '  QTA96,'
      '  QTA97,'
      '  QTA98,'
      '  QTA99,'
      '  TOTALE_COLORE0,'
      '  TOTALE_COLORE1,'
      '  TOTALE_COLORE2,'
      '  TOTALE_COLORE3,'
      '  TOTALE_COLORE4,'
      '  TOTALE_COLORE5,'
      '  TOTALE_COLORE6,'
      '  TOTALE_COLORE7,'
      '  TOTALE_COLORE8,'
      '  TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9,'
      '  QTA_TOTALE,'
      '  SCAT,'
      '  PASSATA,'
      '  F1,'
      '  F2,'
      '  F3,'
      '  F4,'
      '  F5,'
      '  F6,'
      '  F7,'
      '  F8,'
      '  F0,'
      '  PK_DIST,'
      '  NOTE,'
      '  G1,'
      '  G2,'
      '  G3,'
      '  G4,'
      '  G5,'
      '  G6,'
      '  G7,'
      '  G8,'
      '  G0,'
      '  H1,'
      '  H2,'
      '  H3,'
      '  H4,'
      '  H5,'
      '  H6,'
      '  H7,'
      '  H8,'
      '  H0'
      'from PRETAGLIO '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from PRETAGLIO'
      'Order by Numero')
    ModifySQL.Strings = (
      'update PRETAGLIO'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  CODICE = :CODICE,'
      '  COLORE0 = :COLORE0,'
      '  COLORE1 = :COLORE1,'
      '  COLORE2 = :COLORE2,'
      '  COLORE3 = :COLORE3,'
      '  COLORE4 = :COLORE4,'
      '  COLORE5 = :COLORE5,'
      '  COLORE6 = :COLORE6,'
      '  COLORE7 = :COLORE7,'
      '  COLORE8 = :COLORE8,'
      '  COLORE9 = :COLORE9,'
      '  DATA = :DATA,'
      '  DESCR = :DESCR,'
      '  DIPENDENTE = :DIPENDENTE,'
      '  F0 = :F0,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  F4 = :F4,'
      '  F5 = :F5,'
      '  F6 = :F6,'
      '  F7 = :F7,'
      '  F8 = :F8,'
      '  FASONISTA = :FASONISTA,'
      '  G0 = :G0,'
      '  G1 = :G1,'
      '  G2 = :G2,'
      '  G3 = :G3,'
      '  G4 = :G4,'
      '  G5 = :G5,'
      '  G6 = :G6,'
      '  G7 = :G7,'
      '  G8 = :G8,'
      '  H0 = :H0,'
      '  H1 = :H1,'
      '  H2 = :H2,'
      '  H3 = :H3,'
      '  H4 = :H4,'
      '  H5 = :H5,'
      '  H6 = :H6,'
      '  H7 = :H7,'
      '  H8 = :H8,'
      '  NOTE = :NOTE,'
      '  NUMERO = :NUMERO,'
      '  NUMERO_A = :NUMERO_A,'
      '  PASSATA = :PASSATA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PK_DIST = :PK_DIST,'
      '  QTA_TOTALE = :QTA_TOTALE,'
      '  QTA00 = :QTA00,'
      '  QTA01 = :QTA01,'
      '  QTA02 = :QTA02,'
      '  QTA03 = :QTA03,'
      '  QTA04 = :QTA04,'
      '  QTA05 = :QTA05,'
      '  QTA06 = :QTA06,'
      '  QTA07 = :QTA07,'
      '  QTA08 = :QTA08,'
      '  QTA09 = :QTA09,'
      '  QTA10 = :QTA10,'
      '  QTA11 = :QTA11,'
      '  QTA12 = :QTA12,'
      '  QTA13 = :QTA13,'
      '  QTA14 = :QTA14,'
      '  QTA15 = :QTA15,'
      '  QTA16 = :QTA16,'
      '  QTA17 = :QTA17,'
      '  QTA18 = :QTA18,'
      '  QTA19 = :QTA19,'
      '  QTA20 = :QTA20,'
      '  QTA21 = :QTA21,'
      '  QTA22 = :QTA22,'
      '  QTA23 = :QTA23,'
      '  QTA24 = :QTA24,'
      '  QTA25 = :QTA25,'
      '  QTA26 = :QTA26,'
      '  QTA27 = :QTA27,'
      '  QTA28 = :QTA28,'
      '  QTA29 = :QTA29,'
      '  QTA30 = :QTA30,'
      '  QTA31 = :QTA31,'
      '  QTA32 = :QTA32,'
      '  QTA33 = :QTA33,'
      '  QTA34 = :QTA34,'
      '  QTA35 = :QTA35,'
      '  QTA36 = :QTA36,'
      '  QTA37 = :QTA37,'
      '  QTA38 = :QTA38,'
      '  QTA39 = :QTA39,'
      '  QTA40 = :QTA40,'
      '  QTA41 = :QTA41,'
      '  QTA42 = :QTA42,'
      '  QTA43 = :QTA43,'
      '  QTA44 = :QTA44,'
      '  QTA45 = :QTA45,'
      '  QTA46 = :QTA46,'
      '  QTA47 = :QTA47,'
      '  QTA48 = :QTA48,'
      '  QTA49 = :QTA49,'
      '  QTA50 = :QTA50,'
      '  QTA51 = :QTA51,'
      '  QTA52 = :QTA52,'
      '  QTA53 = :QTA53,'
      '  QTA54 = :QTA54,'
      '  QTA55 = :QTA55,'
      '  QTA56 = :QTA56,'
      '  QTA57 = :QTA57,'
      '  QTA58 = :QTA58,'
      '  QTA59 = :QTA59,'
      '  QTA60 = :QTA60,'
      '  QTA61 = :QTA61,'
      '  QTA62 = :QTA62,'
      '  QTA63 = :QTA63,'
      '  QTA64 = :QTA64,'
      '  QTA65 = :QTA65,'
      '  QTA66 = :QTA66,'
      '  QTA67 = :QTA67,'
      '  QTA68 = :QTA68,'
      '  QTA69 = :QTA69,'
      '  QTA70 = :QTA70,'
      '  QTA71 = :QTA71,'
      '  QTA72 = :QTA72,'
      '  QTA73 = :QTA73,'
      '  QTA74 = :QTA74,'
      '  QTA75 = :QTA75,'
      '  QTA76 = :QTA76,'
      '  QTA77 = :QTA77,'
      '  QTA78 = :QTA78,'
      '  QTA79 = :QTA79,'
      '  QTA80 = :QTA80,'
      '  QTA81 = :QTA81,'
      '  QTA82 = :QTA82,'
      '  QTA83 = :QTA83,'
      '  QTA84 = :QTA84,'
      '  QTA85 = :QTA85,'
      '  QTA86 = :QTA86,'
      '  QTA87 = :QTA87,'
      '  QTA88 = :QTA88,'
      '  QTA89 = :QTA89,'
      '  QTA90 = :QTA90,'
      '  QTA91 = :QTA91,'
      '  QTA92 = :QTA92,'
      '  QTA93 = :QTA93,'
      '  QTA94 = :QTA94,'
      '  QTA95 = :QTA95,'
      '  QTA96 = :QTA96,'
      '  QTA97 = :QTA97,'
      '  QTA98 = :QTA98,'
      '  QTA99 = :QTA99,'
      '  SCAT = :SCAT,'
      '  TAGLIA0 = :TAGLIA0,'
      '  TAGLIA1 = :TAGLIA1,'
      '  TAGLIA2 = :TAGLIA2,'
      '  TAGLIA3 = :TAGLIA3,'
      '  TAGLIA4 = :TAGLIA4,'
      '  TAGLIA5 = :TAGLIA5,'
      '  TAGLIA6 = :TAGLIA6,'
      '  TAGLIA7 = :TAGLIA7,'
      '  TAGLIA8 = :TAGLIA8,'
      '  TAGLIA9 = :TAGLIA9,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_COLORE0 = :TOTALE_COLORE0,'
      '  TOTALE_COLORE1 = :TOTALE_COLORE1,'
      '  TOTALE_COLORE2 = :TOTALE_COLORE2,'
      '  TOTALE_COLORE3 = :TOTALE_COLORE3,'
      '  TOTALE_COLORE4 = :TOTALE_COLORE4,'
      '  TOTALE_COLORE5 = :TOTALE_COLORE5,'
      '  TOTALE_COLORE6 = :TOTALE_COLORE6,'
      '  TOTALE_COLORE7 = :TOTALE_COLORE7,'
      '  TOTALE_COLORE8 = :TOTALE_COLORE8,'
      '  TOTALE_COLORE9 = :TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0 = :TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1 = :TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2 = :TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3 = :TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4 = :TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5 = :TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6 = :TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7 = :TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8 = :TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9 = :TOTALE_TAGLIA9'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_PRETAGLIO'
    Left = 144
    Top = 376
    object ibqryPretaglioNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"PRETAGLIO"."NUMERO"'
    end
    object ibqryPretaglioCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"PRETAGLIO"."CODICE"'
    end
    object ibqryPretaglioDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"PRETAGLIO"."DESCR"'
      Size = 100
    end
    object ibqryPretaglioTOTALE: TIntegerField
      FieldName = 'TOTALE'
      Origin = '"PRETAGLIO"."TOTALE"'
    end
    object ibqryPretaglioNUMERO_A: TIBStringField
      FieldName = 'NUMERO_A'
      Origin = '"PRETAGLIO"."NUMERO_A"'
    end
    object ibqryPretaglioDIPENDENTE: TIBStringField
      FieldName = 'DIPENDENTE'
      Origin = '"PRETAGLIO"."DIPENDENTE"'
      Size = 100
    end
    object ibqryPretaglioFASONISTA: TIBStringField
      FieldName = 'FASONISTA'
      Origin = '"PRETAGLIO"."FASONISTA"'
      Size = 100
    end
    object ibqryPretaglioCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PRETAGLIO"."CLIENTE"'
      Size = 100
    end
    object ibqryPretaglioTAGLIA0: TIBStringField
      FieldName = 'TAGLIA0'
      Origin = '"PRETAGLIO"."TAGLIA0"'
    end
    object ibqryPretaglioPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"PRETAGLIO"."PK_CODICE"'
      Required = True
    end
    object ibqryPretaglioTAGLIA1: TIBStringField
      FieldName = 'TAGLIA1'
      Origin = '"PRETAGLIO"."TAGLIA1"'
    end
    object ibqryPretaglioTAGLIA2: TIBStringField
      FieldName = 'TAGLIA2'
      Origin = '"PRETAGLIO"."TAGLIA2"'
    end
    object ibqryPretaglioTAGLIA3: TIBStringField
      FieldName = 'TAGLIA3'
      Origin = '"PRETAGLIO"."TAGLIA3"'
    end
    object ibqryPretaglioTAGLIA4: TIBStringField
      FieldName = 'TAGLIA4'
      Origin = '"PRETAGLIO"."TAGLIA4"'
    end
    object ibqryPretaglioTAGLIA5: TIBStringField
      FieldName = 'TAGLIA5'
      Origin = '"PRETAGLIO"."TAGLIA5"'
    end
    object ibqryPretaglioTAGLIA6: TIBStringField
      FieldName = 'TAGLIA6'
      Origin = '"PRETAGLIO"."TAGLIA6"'
    end
    object ibqryPretaglioTAGLIA7: TIBStringField
      FieldName = 'TAGLIA7'
      Origin = '"PRETAGLIO"."TAGLIA7"'
    end
    object ibqryPretaglioTAGLIA8: TIBStringField
      FieldName = 'TAGLIA8'
      Origin = '"PRETAGLIO"."TAGLIA8"'
    end
    object ibqryPretaglioTAGLIA9: TIBStringField
      FieldName = 'TAGLIA9'
      Origin = '"PRETAGLIO"."TAGLIA9"'
    end
    object ibqryPretaglioCOLORE0: TIBStringField
      FieldName = 'COLORE0'
      Origin = '"PRETAGLIO"."COLORE0"'
      Size = 100
    end
    object ibqryPretaglioCOLORE1: TIBStringField
      FieldName = 'COLORE1'
      Origin = '"PRETAGLIO"."COLORE1"'
      Size = 100
    end
    object ibqryPretaglioCOLORE2: TIBStringField
      FieldName = 'COLORE2'
      Origin = '"PRETAGLIO"."COLORE2"'
      Size = 100
    end
    object ibqryPretaglioCOLORE3: TIBStringField
      FieldName = 'COLORE3'
      Origin = '"PRETAGLIO"."COLORE3"'
      Size = 100
    end
    object ibqryPretaglioCOLORE4: TIBStringField
      FieldName = 'COLORE4'
      Origin = '"PRETAGLIO"."COLORE4"'
      Size = 100
    end
    object ibqryPretaglioCOLORE5: TIBStringField
      FieldName = 'COLORE5'
      Origin = '"PRETAGLIO"."COLORE5"'
      Size = 100
    end
    object ibqryPretaglioCOLORE6: TIBStringField
      FieldName = 'COLORE6'
      Origin = '"PRETAGLIO"."COLORE6"'
      Size = 100
    end
    object ibqryPretaglioCOLORE7: TIBStringField
      FieldName = 'COLORE7'
      Origin = '"PRETAGLIO"."COLORE7"'
      Size = 100
    end
    object ibqryPretaglioCOLORE8: TIBStringField
      FieldName = 'COLORE8'
      Origin = '"PRETAGLIO"."COLORE8"'
      Size = 100
    end
    object ibqryPretaglioCOLORE9: TIBStringField
      FieldName = 'COLORE9'
      Origin = '"PRETAGLIO"."COLORE9"'
      Size = 100
    end
    object ibqryPretaglioQTA00: TIntegerField
      FieldName = 'QTA00'
      Origin = '"PRETAGLIO"."QTA00"'
    end
    object ibqryPretaglioQTA01: TIntegerField
      FieldName = 'QTA01'
      Origin = '"PRETAGLIO"."QTA01"'
    end
    object ibqryPretaglioQTA02: TIntegerField
      FieldName = 'QTA02'
      Origin = '"PRETAGLIO"."QTA02"'
    end
    object ibqryPretaglioQTA03: TIntegerField
      FieldName = 'QTA03'
      Origin = '"PRETAGLIO"."QTA03"'
    end
    object ibqryPretaglioQTA04: TIntegerField
      FieldName = 'QTA04'
      Origin = '"PRETAGLIO"."QTA04"'
    end
    object ibqryPretaglioQTA05: TIntegerField
      FieldName = 'QTA05'
      Origin = '"PRETAGLIO"."QTA05"'
    end
    object ibqryPretaglioQTA06: TIntegerField
      FieldName = 'QTA06'
      Origin = '"PRETAGLIO"."QTA06"'
    end
    object ibqryPretaglioQTA07: TIntegerField
      FieldName = 'QTA07'
      Origin = '"PRETAGLIO"."QTA07"'
    end
    object ibqryPretaglioQTA08: TIntegerField
      FieldName = 'QTA08'
      Origin = '"PRETAGLIO"."QTA08"'
    end
    object ibqryPretaglioQTA09: TIntegerField
      FieldName = 'QTA09'
      Origin = '"PRETAGLIO"."QTA09"'
    end
    object ibqryPretaglioQTA10: TIntegerField
      FieldName = 'QTA10'
      Origin = '"PRETAGLIO"."QTA10"'
    end
    object ibqryPretaglioQTA11: TIntegerField
      FieldName = 'QTA11'
      Origin = '"PRETAGLIO"."QTA11"'
    end
    object ibqryPretaglioQTA12: TIntegerField
      FieldName = 'QTA12'
      Origin = '"PRETAGLIO"."QTA12"'
    end
    object ibqryPretaglioQTA13: TIntegerField
      FieldName = 'QTA13'
      Origin = '"PRETAGLIO"."QTA13"'
    end
    object ibqryPretaglioQTA14: TIntegerField
      FieldName = 'QTA14'
      Origin = '"PRETAGLIO"."QTA14"'
    end
    object ibqryPretaglioQTA15: TIntegerField
      FieldName = 'QTA15'
      Origin = '"PRETAGLIO"."QTA15"'
    end
    object ibqryPretaglioQTA16: TIntegerField
      FieldName = 'QTA16'
      Origin = '"PRETAGLIO"."QTA16"'
    end
    object ibqryPretaglioQTA17: TIntegerField
      FieldName = 'QTA17'
      Origin = '"PRETAGLIO"."QTA17"'
    end
    object ibqryPretaglioQTA18: TIntegerField
      FieldName = 'QTA18'
      Origin = '"PRETAGLIO"."QTA18"'
    end
    object ibqryPretaglioQTA19: TIntegerField
      FieldName = 'QTA19'
      Origin = '"PRETAGLIO"."QTA19"'
    end
    object ibqryPretaglioQTA20: TIntegerField
      FieldName = 'QTA20'
      Origin = '"PRETAGLIO"."QTA20"'
    end
    object ibqryPretaglioQTA21: TIntegerField
      FieldName = 'QTA21'
      Origin = '"PRETAGLIO"."QTA21"'
    end
    object ibqryPretaglioQTA22: TIntegerField
      FieldName = 'QTA22'
      Origin = '"PRETAGLIO"."QTA22"'
    end
    object ibqryPretaglioQTA23: TIntegerField
      FieldName = 'QTA23'
      Origin = '"PRETAGLIO"."QTA23"'
    end
    object ibqryPretaglioQTA24: TIntegerField
      FieldName = 'QTA24'
      Origin = '"PRETAGLIO"."QTA24"'
    end
    object ibqryPretaglioQTA25: TIntegerField
      FieldName = 'QTA25'
      Origin = '"PRETAGLIO"."QTA25"'
    end
    object ibqryPretaglioQTA26: TIntegerField
      FieldName = 'QTA26'
      Origin = '"PRETAGLIO"."QTA26"'
    end
    object ibqryPretaglioQTA27: TIntegerField
      FieldName = 'QTA27'
      Origin = '"PRETAGLIO"."QTA27"'
    end
    object ibqryPretaglioQTA28: TIntegerField
      FieldName = 'QTA28'
      Origin = '"PRETAGLIO"."QTA28"'
    end
    object ibqryPretaglioQTA29: TIntegerField
      FieldName = 'QTA29'
      Origin = '"PRETAGLIO"."QTA29"'
    end
    object ibqryPretaglioQTA30: TIntegerField
      FieldName = 'QTA30'
      Origin = '"PRETAGLIO"."QTA30"'
    end
    object ibqryPretaglioQTA31: TIntegerField
      FieldName = 'QTA31'
      Origin = '"PRETAGLIO"."QTA31"'
    end
    object ibqryPretaglioQTA32: TIntegerField
      FieldName = 'QTA32'
      Origin = '"PRETAGLIO"."QTA32"'
    end
    object ibqryPretaglioQTA33: TIntegerField
      FieldName = 'QTA33'
      Origin = '"PRETAGLIO"."QTA33"'
    end
    object ibqryPretaglioQTA34: TIntegerField
      FieldName = 'QTA34'
      Origin = '"PRETAGLIO"."QTA34"'
    end
    object ibqryPretaglioQTA35: TIntegerField
      FieldName = 'QTA35'
      Origin = '"PRETAGLIO"."QTA35"'
    end
    object ibqryPretaglioQTA36: TIntegerField
      FieldName = 'QTA36'
      Origin = '"PRETAGLIO"."QTA36"'
    end
    object ibqryPretaglioQTA37: TIntegerField
      FieldName = 'QTA37'
      Origin = '"PRETAGLIO"."QTA37"'
    end
    object ibqryPretaglioQTA38: TIntegerField
      FieldName = 'QTA38'
      Origin = '"PRETAGLIO"."QTA38"'
    end
    object ibqryPretaglioQTA39: TIntegerField
      FieldName = 'QTA39'
      Origin = '"PRETAGLIO"."QTA39"'
    end
    object ibqryPretaglioQTA40: TIntegerField
      FieldName = 'QTA40'
      Origin = '"PRETAGLIO"."QTA40"'
    end
    object ibqryPretaglioQTA41: TIntegerField
      FieldName = 'QTA41'
      Origin = '"PRETAGLIO"."QTA41"'
    end
    object ibqryPretaglioQTA42: TIntegerField
      FieldName = 'QTA42'
      Origin = '"PRETAGLIO"."QTA42"'
    end
    object ibqryPretaglioQTA43: TIntegerField
      FieldName = 'QTA43'
      Origin = '"PRETAGLIO"."QTA43"'
    end
    object ibqryPretaglioQTA44: TIntegerField
      FieldName = 'QTA44'
      Origin = '"PRETAGLIO"."QTA44"'
    end
    object ibqryPretaglioQTA45: TIntegerField
      FieldName = 'QTA45'
      Origin = '"PRETAGLIO"."QTA45"'
    end
    object ibqryPretaglioQTA46: TIntegerField
      FieldName = 'QTA46'
      Origin = '"PRETAGLIO"."QTA46"'
    end
    object ibqryPretaglioQTA47: TIntegerField
      FieldName = 'QTA47'
      Origin = '"PRETAGLIO"."QTA47"'
    end
    object ibqryPretaglioQTA48: TIntegerField
      FieldName = 'QTA48'
      Origin = '"PRETAGLIO"."QTA48"'
    end
    object ibqryPretaglioQTA49: TIntegerField
      FieldName = 'QTA49'
      Origin = '"PRETAGLIO"."QTA49"'
    end
    object ibqryPretaglioQTA50: TIntegerField
      FieldName = 'QTA50'
      Origin = '"PRETAGLIO"."QTA50"'
    end
    object ibqryPretaglioQTA51: TIntegerField
      FieldName = 'QTA51'
      Origin = '"PRETAGLIO"."QTA51"'
    end
    object ibqryPretaglioQTA52: TIntegerField
      FieldName = 'QTA52'
      Origin = '"PRETAGLIO"."QTA52"'
    end
    object ibqryPretaglioQTA53: TIntegerField
      FieldName = 'QTA53'
      Origin = '"PRETAGLIO"."QTA53"'
    end
    object ibqryPretaglioQTA54: TIntegerField
      FieldName = 'QTA54'
      Origin = '"PRETAGLIO"."QTA54"'
    end
    object ibqryPretaglioQTA55: TIntegerField
      FieldName = 'QTA55'
      Origin = '"PRETAGLIO"."QTA55"'
    end
    object ibqryPretaglioQTA56: TIntegerField
      FieldName = 'QTA56'
      Origin = '"PRETAGLIO"."QTA56"'
    end
    object ibqryPretaglioQTA57: TIntegerField
      FieldName = 'QTA57'
      Origin = '"PRETAGLIO"."QTA57"'
    end
    object ibqryPretaglioQTA58: TIntegerField
      FieldName = 'QTA58'
      Origin = '"PRETAGLIO"."QTA58"'
    end
    object ibqryPretaglioQTA59: TIntegerField
      FieldName = 'QTA59'
      Origin = '"PRETAGLIO"."QTA59"'
    end
    object ibqryPretaglioQTA60: TIntegerField
      FieldName = 'QTA60'
      Origin = '"PRETAGLIO"."QTA60"'
    end
    object ibqryPretaglioQTA61: TIntegerField
      FieldName = 'QTA61'
      Origin = '"PRETAGLIO"."QTA61"'
    end
    object ibqryPretaglioQTA62: TIntegerField
      FieldName = 'QTA62'
      Origin = '"PRETAGLIO"."QTA62"'
    end
    object ibqryPretaglioQTA63: TIntegerField
      FieldName = 'QTA63'
      Origin = '"PRETAGLIO"."QTA63"'
    end
    object ibqryPretaglioQTA64: TIntegerField
      FieldName = 'QTA64'
      Origin = '"PRETAGLIO"."QTA64"'
    end
    object ibqryPretaglioQTA65: TIntegerField
      FieldName = 'QTA65'
      Origin = '"PRETAGLIO"."QTA65"'
    end
    object ibqryPretaglioQTA66: TIntegerField
      FieldName = 'QTA66'
      Origin = '"PRETAGLIO"."QTA66"'
    end
    object ibqryPretaglioQTA67: TIntegerField
      FieldName = 'QTA67'
      Origin = '"PRETAGLIO"."QTA67"'
    end
    object ibqryPretaglioQTA68: TIntegerField
      FieldName = 'QTA68'
      Origin = '"PRETAGLIO"."QTA68"'
    end
    object ibqryPretaglioQTA69: TIntegerField
      FieldName = 'QTA69'
      Origin = '"PRETAGLIO"."QTA69"'
    end
    object ibqryPretaglioQTA70: TIntegerField
      FieldName = 'QTA70'
      Origin = '"PRETAGLIO"."QTA70"'
    end
    object ibqryPretaglioQTA71: TIntegerField
      FieldName = 'QTA71'
      Origin = '"PRETAGLIO"."QTA71"'
    end
    object ibqryPretaglioQTA72: TIntegerField
      FieldName = 'QTA72'
      Origin = '"PRETAGLIO"."QTA72"'
    end
    object ibqryPretaglioQTA73: TIntegerField
      FieldName = 'QTA73'
      Origin = '"PRETAGLIO"."QTA73"'
    end
    object ibqryPretaglioQTA74: TIntegerField
      FieldName = 'QTA74'
      Origin = '"PRETAGLIO"."QTA74"'
    end
    object ibqryPretaglioQTA75: TIntegerField
      FieldName = 'QTA75'
      Origin = '"PRETAGLIO"."QTA75"'
    end
    object ibqryPretaglioQTA76: TIntegerField
      FieldName = 'QTA76'
      Origin = '"PRETAGLIO"."QTA76"'
    end
    object ibqryPretaglioQTA77: TIntegerField
      FieldName = 'QTA77'
      Origin = '"PRETAGLIO"."QTA77"'
    end
    object ibqryPretaglioQTA78: TIntegerField
      FieldName = 'QTA78'
      Origin = '"PRETAGLIO"."QTA78"'
    end
    object ibqryPretaglioQTA79: TIntegerField
      FieldName = 'QTA79'
      Origin = '"PRETAGLIO"."QTA79"'
    end
    object ibqryPretaglioQTA80: TIntegerField
      FieldName = 'QTA80'
      Origin = '"PRETAGLIO"."QTA80"'
    end
    object ibqryPretaglioQTA81: TIntegerField
      FieldName = 'QTA81'
      Origin = '"PRETAGLIO"."QTA81"'
    end
    object ibqryPretaglioQTA82: TIntegerField
      FieldName = 'QTA82'
      Origin = '"PRETAGLIO"."QTA82"'
    end
    object ibqryPretaglioQTA83: TIntegerField
      FieldName = 'QTA83'
      Origin = '"PRETAGLIO"."QTA83"'
    end
    object ibqryPretaglioQTA84: TIntegerField
      FieldName = 'QTA84'
      Origin = '"PRETAGLIO"."QTA84"'
    end
    object ibqryPretaglioQTA85: TIntegerField
      FieldName = 'QTA85'
      Origin = '"PRETAGLIO"."QTA85"'
    end
    object ibqryPretaglioQTA86: TIntegerField
      FieldName = 'QTA86'
      Origin = '"PRETAGLIO"."QTA86"'
    end
    object ibqryPretaglioQTA87: TIntegerField
      FieldName = 'QTA87'
      Origin = '"PRETAGLIO"."QTA87"'
    end
    object ibqryPretaglioQTA88: TIntegerField
      FieldName = 'QTA88'
      Origin = '"PRETAGLIO"."QTA88"'
    end
    object ibqryPretaglioQTA89: TIntegerField
      FieldName = 'QTA89'
      Origin = '"PRETAGLIO"."QTA89"'
    end
    object ibqryPretaglioQTA90: TIntegerField
      FieldName = 'QTA90'
      Origin = '"PRETAGLIO"."QTA90"'
    end
    object ibqryPretaglioQTA91: TIntegerField
      FieldName = 'QTA91'
      Origin = '"PRETAGLIO"."QTA91"'
    end
    object ibqryPretaglioQTA92: TIntegerField
      FieldName = 'QTA92'
      Origin = '"PRETAGLIO"."QTA92"'
    end
    object ibqryPretaglioQTA93: TIntegerField
      FieldName = 'QTA93'
      Origin = '"PRETAGLIO"."QTA93"'
    end
    object ibqryPretaglioQTA94: TIntegerField
      FieldName = 'QTA94'
      Origin = '"PRETAGLIO"."QTA94"'
    end
    object ibqryPretaglioQTA95: TIntegerField
      FieldName = 'QTA95'
      Origin = '"PRETAGLIO"."QTA95"'
    end
    object ibqryPretaglioQTA96: TIntegerField
      FieldName = 'QTA96'
      Origin = '"PRETAGLIO"."QTA96"'
    end
    object ibqryPretaglioQTA97: TIntegerField
      FieldName = 'QTA97'
      Origin = '"PRETAGLIO"."QTA97"'
    end
    object ibqryPretaglioQTA98: TIntegerField
      FieldName = 'QTA98'
      Origin = '"PRETAGLIO"."QTA98"'
    end
    object ibqryPretaglioQTA99: TIntegerField
      FieldName = 'QTA99'
      Origin = '"PRETAGLIO"."QTA99"'
    end
    object ibqryPretaglioTOTALE_COLORE0: TIntegerField
      FieldName = 'TOTALE_COLORE0'
      Origin = '"PRETAGLIO"."TOTALE_COLORE0"'
    end
    object ibqryPretaglioTOTALE_COLORE1: TIntegerField
      FieldName = 'TOTALE_COLORE1'
      Origin = '"PRETAGLIO"."TOTALE_COLORE1"'
    end
    object ibqryPretaglioTOTALE_COLORE2: TIntegerField
      FieldName = 'TOTALE_COLORE2'
      Origin = '"PRETAGLIO"."TOTALE_COLORE2"'
    end
    object ibqryPretaglioTOTALE_COLORE3: TIntegerField
      FieldName = 'TOTALE_COLORE3'
      Origin = '"PRETAGLIO"."TOTALE_COLORE3"'
    end
    object ibqryPretaglioTOTALE_COLORE4: TIntegerField
      FieldName = 'TOTALE_COLORE4'
      Origin = '"PRETAGLIO"."TOTALE_COLORE4"'
    end
    object ibqryPretaglioTOTALE_COLORE5: TIntegerField
      FieldName = 'TOTALE_COLORE5'
      Origin = '"PRETAGLIO"."TOTALE_COLORE5"'
    end
    object ibqryPretaglioTOTALE_COLORE6: TIntegerField
      FieldName = 'TOTALE_COLORE6'
      Origin = '"PRETAGLIO"."TOTALE_COLORE6"'
    end
    object ibqryPretaglioTOTALE_COLORE7: TIntegerField
      FieldName = 'TOTALE_COLORE7'
      Origin = '"PRETAGLIO"."TOTALE_COLORE7"'
    end
    object ibqryPretaglioTOTALE_COLORE8: TIntegerField
      FieldName = 'TOTALE_COLORE8'
      Origin = '"PRETAGLIO"."TOTALE_COLORE8"'
    end
    object ibqryPretaglioTOTALE_COLORE9: TIntegerField
      FieldName = 'TOTALE_COLORE9'
      Origin = '"PRETAGLIO"."TOTALE_COLORE9"'
    end
    object ibqryPretaglioTOTALE_TAGLIA0: TIntegerField
      FieldName = 'TOTALE_TAGLIA0'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA0"'
    end
    object ibqryPretaglioTOTALE_TAGLIA1: TIntegerField
      FieldName = 'TOTALE_TAGLIA1'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA1"'
    end
    object ibqryPretaglioTOTALE_TAGLIA2: TIntegerField
      FieldName = 'TOTALE_TAGLIA2'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA2"'
    end
    object ibqryPretaglioTOTALE_TAGLIA3: TIntegerField
      FieldName = 'TOTALE_TAGLIA3'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA3"'
    end
    object ibqryPretaglioTOTALE_TAGLIA4: TIntegerField
      FieldName = 'TOTALE_TAGLIA4'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA4"'
    end
    object ibqryPretaglioTOTALE_TAGLIA5: TIntegerField
      FieldName = 'TOTALE_TAGLIA5'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA5"'
    end
    object ibqryPretaglioTOTALE_TAGLIA6: TIntegerField
      FieldName = 'TOTALE_TAGLIA6'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA6"'
    end
    object ibqryPretaglioTOTALE_TAGLIA7: TIntegerField
      FieldName = 'TOTALE_TAGLIA7'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA7"'
    end
    object ibqryPretaglioTOTALE_TAGLIA8: TIntegerField
      FieldName = 'TOTALE_TAGLIA8'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA8"'
    end
    object ibqryPretaglioTOTALE_TAGLIA9: TIntegerField
      FieldName = 'TOTALE_TAGLIA9'
      Origin = '"PRETAGLIO"."TOTALE_TAGLIA9"'
    end
    object ibqryPretaglioQTA_TOTALE: TIntegerField
      FieldName = 'QTA_TOTALE'
      Origin = '"PRETAGLIO"."QTA_TOTALE"'
    end
    object ibqryPretaglioSCAT: TFloatField
      FieldName = 'SCAT'
      Origin = '"PRETAGLIO"."SCAT"'
    end
    object ibqryPretaglioPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"PRETAGLIO"."PASSATA"'
      Size = 1
    end
    object ibqryPretaglioF1: TIBStringField
      FieldName = 'F1'
      Origin = '"PRETAGLIO"."F1"'
      Size = 5
    end
    object ibqryPretaglioF2: TIBStringField
      FieldName = 'F2'
      Origin = '"PRETAGLIO"."F2"'
      Size = 5
    end
    object ibqryPretaglioF3: TIBStringField
      FieldName = 'F3'
      Origin = '"PRETAGLIO"."F3"'
      Size = 5
    end
    object ibqryPretaglioF4: TIBStringField
      FieldName = 'F4'
      Origin = '"PRETAGLIO"."F4"'
      Size = 5
    end
    object ibqryPretaglioF5: TIBStringField
      FieldName = 'F5'
      Origin = '"PRETAGLIO"."F5"'
      Size = 5
    end
    object ibqryPretaglioF6: TIBStringField
      FieldName = 'F6'
      Origin = '"PRETAGLIO"."F6"'
      Size = 5
    end
    object ibqryPretaglioF7: TIBStringField
      FieldName = 'F7'
      Origin = '"PRETAGLIO"."F7"'
      Size = 5
    end
    object ibqryPretaglioF8: TIBStringField
      FieldName = 'F8'
      Origin = '"PRETAGLIO"."F8"'
      Size = 5
    end
    object ibqryPretaglioF0: TIBStringField
      FieldName = 'F0'
      Origin = '"PRETAGLIO"."F0"'
      Size = 5
    end
    object ibqryPretaglioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PRETAGLIO"."DATA"'
    end
    object ibqryPretaglioPK_DIST: TIntegerField
      FieldName = 'PK_DIST'
      Origin = '"PRETAGLIO"."PK_DIST"'
    end
    object ibqryPretaglioNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"PRETAGLIO"."NOTE"'
      Size = 255
    end
    object ibqryPretaglioG1: TIBStringField
      FieldName = 'G1'
      Origin = '"PRETAGLIO"."G1"'
      Size = 5
    end
    object ibqryPretaglioG2: TIBStringField
      FieldName = 'G2'
      Origin = '"PRETAGLIO"."G2"'
      Size = 5
    end
    object ibqryPretaglioG3: TIBStringField
      FieldName = 'G3'
      Origin = '"PRETAGLIO"."G3"'
      Size = 5
    end
    object ibqryPretaglioG4: TIBStringField
      FieldName = 'G4'
      Origin = '"PRETAGLIO"."G4"'
      Size = 5
    end
    object ibqryPretaglioG5: TIBStringField
      FieldName = 'G5'
      Origin = '"PRETAGLIO"."G5"'
      Size = 5
    end
    object ibqryPretaglioG6: TIBStringField
      FieldName = 'G6'
      Origin = '"PRETAGLIO"."G6"'
      Size = 5
    end
    object ibqryPretaglioG7: TIBStringField
      FieldName = 'G7'
      Origin = '"PRETAGLIO"."G7"'
      Size = 5
    end
    object ibqryPretaglioG8: TIBStringField
      FieldName = 'G8'
      Origin = '"PRETAGLIO"."G8"'
      Size = 5
    end
    object ibqryPretaglioG0: TIBStringField
      FieldName = 'G0'
      Origin = '"PRETAGLIO"."G0"'
      Size = 5
    end
    object ibqryPretaglioH1: TIBStringField
      FieldName = 'H1'
      Origin = '"PRETAGLIO"."H1"'
      Size = 5
    end
    object ibqryPretaglioH2: TIBStringField
      FieldName = 'H2'
      Origin = '"PRETAGLIO"."H2"'
      Size = 5
    end
    object ibqryPretaglioH3: TIBStringField
      FieldName = 'H3'
      Origin = '"PRETAGLIO"."H3"'
      Size = 5
    end
    object ibqryPretaglioH4: TIBStringField
      FieldName = 'H4'
      Origin = '"PRETAGLIO"."H4"'
      Size = 5
    end
    object ibqryPretaglioH5: TIBStringField
      FieldName = 'H5'
      Origin = '"PRETAGLIO"."H5"'
      Size = 5
    end
    object ibqryPretaglioH6: TIBStringField
      FieldName = 'H6'
      Origin = '"PRETAGLIO"."H6"'
      Size = 5
    end
    object ibqryPretaglioH7: TIBStringField
      FieldName = 'H7'
      Origin = '"PRETAGLIO"."H7"'
      Size = 5
    end
    object ibqryPretaglioH8: TIBStringField
      FieldName = 'H8'
      Origin = '"PRETAGLIO"."H8"'
      Size = 5
    end
    object ibqryPretaglioH0: TIBStringField
      FieldName = 'H0'
      Origin = '"PRETAGLIO"."H0"'
      Size = 5
    end
  end
  object ibqryPretFas: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAGLIOFAS'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAGLIOFAS'
      
        '  (CLIENTE, CODICE, COLORE0, COLORE1, COLORE2, COLORE3, COLORE4,' +
        ' COLORE5, '
      
        '   COLORE6, COLORE7, COLORE8, COLORE9, DATA, DATAGLIARE, DESCR, ' +
        'DIPENDENTE, '
      
        '   F0, F1, F2, F3, F4, F5, F6, F7, F8, FASONISTA, NOTE, NUMERO, ' +
        'NUMERO_A, '
      
        '   NUMPRE, PASSATA, PK_CODICE, PK_DIST, QTA_TOTALE, QTA00, QTA01' +
        ', QTA02, '
      
        '   QTA03, QTA04, QTA05, QTA06, QTA07, QTA08, QTA09, QTA10, QTA11' +
        ', QTA12, '
      
        '   QTA13, QTA14, QTA15, QTA16, QTA17, QTA18, QTA19, QTA20, QTA21' +
        ', QTA22, '
      
        '   QTA23, QTA24, QTA25, QTA26, QTA27, QTA28, QTA29, QTA30, QTA31' +
        ', QTA32, '
      
        '   QTA33, QTA34, QTA35, QTA36, QTA37, QTA38, QTA39, QTA40, QTA41' +
        ', QTA42, '
      
        '   QTA43, QTA44, QTA45, QTA46, QTA47, QTA48, QTA49, QTA50, QTA51' +
        ', QTA52, '
      
        '   QTA53, QTA54, QTA55, QTA56, QTA57, QTA58, QTA59, QTA60, QTA61' +
        ', QTA62, '
      
        '   QTA63, QTA64, QTA65, QTA66, QTA67, QTA68, QTA69, QTA70, QTA71' +
        ', QTA72, '
      
        '   QTA73, QTA74, QTA75, QTA76, QTA77, QTA78, QTA79, QTA80, QTA81' +
        ', QTA82, '
      
        '   QTA83, QTA84, QTA85, QTA86, QTA87, QTA88, QTA89, QTA90, QTA91' +
        ', QTA92, '
      
        '   QTA93, QTA94, QTA95, QTA96, QTA97, QTA98, QTA99, SCAT, TAGLIA' +
        '0, TAGLIA1, '
      
        '   TAGLIA2, TAGLIA3, TAGLIA4, TAGLIA5, TAGLIA6, TAGLIA7, TAGLIA8' +
        ', TAGLIA9, '
      
        '   TOTALE, TOTALE_COLORE0, TOTALE_COLORE1, TOTALE_COLORE2, TOTAL' +
        'E_COLORE3, '
      
        '   TOTALE_COLORE4, TOTALE_COLORE5, TOTALE_COLORE6, TOTALE_COLORE' +
        '7, TOTALE_COLORE8, '
      
        '   TOTALE_COLORE9, TOTALE_TAGLIA0, TOTALE_TAGLIA1, TOTALE_TAGLIA' +
        '2, TOTALE_TAGLIA3, '
      
        '   TOTALE_TAGLIA4, TOTALE_TAGLIA5, TOTALE_TAGLIA6, TOTALE_TAGLIA' +
        '7, TOTALE_TAGLIA8, '
      '   TOTALE_TAGLIA9)'
      'values'
      
        '  (:CLIENTE, :CODICE, :COLORE0, :COLORE1, :COLORE2, :COLORE3, :C' +
        'OLORE4, '
      
        '   :COLORE5, :COLORE6, :COLORE7, :COLORE8, :COLORE9, :DATA, :DAT' +
        'AGLIARE, '
      
        '   :DESCR, :DIPENDENTE, :F0, :F1, :F2, :F3, :F4, :F5, :F6, :F7, ' +
        ':F8, :FASONISTA, '
      
        '   :NOTE, :NUMERO, :NUMERO_A, :NUMPRE, :PASSATA, :PK_CODICE, :PK' +
        '_DIST, '
      
        '   :QTA_TOTALE, :QTA00, :QTA01, :QTA02, :QTA03, :QTA04, :QTA05, ' +
        ':QTA06, '
      
        '   :QTA07, :QTA08, :QTA09, :QTA10, :QTA11, :QTA12, :QTA13, :QTA1' +
        '4, :QTA15, '
      
        '   :QTA16, :QTA17, :QTA18, :QTA19, :QTA20, :QTA21, :QTA22, :QTA2' +
        '3, :QTA24, '
      
        '   :QTA25, :QTA26, :QTA27, :QTA28, :QTA29, :QTA30, :QTA31, :QTA3' +
        '2, :QTA33, '
      
        '   :QTA34, :QTA35, :QTA36, :QTA37, :QTA38, :QTA39, :QTA40, :QTA4' +
        '1, :QTA42, '
      
        '   :QTA43, :QTA44, :QTA45, :QTA46, :QTA47, :QTA48, :QTA49, :QTA5' +
        '0, :QTA51, '
      
        '   :QTA52, :QTA53, :QTA54, :QTA55, :QTA56, :QTA57, :QTA58, :QTA5' +
        '9, :QTA60, '
      
        '   :QTA61, :QTA62, :QTA63, :QTA64, :QTA65, :QTA66, :QTA67, :QTA6' +
        '8, :QTA69, '
      
        '   :QTA70, :QTA71, :QTA72, :QTA73, :QTA74, :QTA75, :QTA76, :QTA7' +
        '7, :QTA78, '
      
        '   :QTA79, :QTA80, :QTA81, :QTA82, :QTA83, :QTA84, :QTA85, :QTA8' +
        '6, :QTA87, '
      
        '   :QTA88, :QTA89, :QTA90, :QTA91, :QTA92, :QTA93, :QTA94, :QTA9' +
        '5, :QTA96, '
      
        '   :QTA97, :QTA98, :QTA99, :SCAT, :TAGLIA0, :TAGLIA1, :TAGLIA2, ' +
        ':TAGLIA3, '
      
        '   :TAGLIA4, :TAGLIA5, :TAGLIA6, :TAGLIA7, :TAGLIA8, :TAGLIA9, :' +
        'TOTALE, '
      
        '   :TOTALE_COLORE0, :TOTALE_COLORE1, :TOTALE_COLORE2, :TOTALE_CO' +
        'LORE3, '
      
        '   :TOTALE_COLORE4, :TOTALE_COLORE5, :TOTALE_COLORE6, :TOTALE_CO' +
        'LORE7, '
      
        '   :TOTALE_COLORE8, :TOTALE_COLORE9, :TOTALE_TAGLIA0, :TOTALE_TA' +
        'GLIA1, '
      
        '   :TOTALE_TAGLIA2, :TOTALE_TAGLIA3, :TOTALE_TAGLIA4, :TOTALE_TA' +
        'GLIA5, '
      
        '   :TOTALE_TAGLIA6, :TOTALE_TAGLIA7, :TOTALE_TAGLIA8, :TOTALE_TA' +
        'GLIA9)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE,'
      '  DESCR,'
      '  DATA,'
      '  NUMERO,'
      '  NUMERO_A,'
      '  TOTALE,'
      '  DIPENDENTE,'
      '  FASONISTA,'
      '  CLIENTE,'
      '  TAGLIA0,'
      '  TAGLIA1,'
      '  TAGLIA2,'
      '  TAGLIA3,'
      '  TAGLIA4,'
      '  TAGLIA5,'
      '  TAGLIA6,'
      '  TAGLIA7,'
      '  TAGLIA8,'
      '  TAGLIA9,'
      '  COLORE0,'
      '  COLORE1,'
      '  COLORE2,'
      '  COLORE3,'
      '  COLORE4,'
      '  COLORE5,'
      '  COLORE6,'
      '  COLORE7,'
      '  COLORE8,'
      '  COLORE9,'
      '  QTA00,'
      '  QTA01,'
      '  QTA02,'
      '  QTA03,'
      '  QTA04,'
      '  QTA05,'
      '  QTA06,'
      '  QTA07,'
      '  QTA08,'
      '  QTA09,'
      '  QTA10,'
      '  QTA11,'
      '  QTA12,'
      '  QTA13,'
      '  QTA14,'
      '  QTA15,'
      '  QTA16,'
      '  QTA17,'
      '  QTA18,'
      '  QTA19,'
      '  QTA20,'
      '  QTA21,'
      '  QTA22,'
      '  QTA23,'
      '  QTA24,'
      '  QTA25,'
      '  QTA26,'
      '  QTA27,'
      '  QTA28,'
      '  QTA29,'
      '  QTA30,'
      '  QTA31,'
      '  QTA32,'
      '  QTA33,'
      '  QTA34,'
      '  QTA35,'
      '  QTA36,'
      '  QTA37,'
      '  QTA38,'
      '  QTA39,'
      '  QTA40,'
      '  QTA41,'
      '  QTA42,'
      '  QTA43,'
      '  QTA44,'
      '  QTA45,'
      '  QTA46,'
      '  QTA47,'
      '  QTA48,'
      '  QTA49,'
      '  QTA50,'
      '  QTA51,'
      '  QTA52,'
      '  QTA53,'
      '  QTA54,'
      '  QTA55,'
      '  QTA56,'
      '  QTA57,'
      '  QTA58,'
      '  QTA59,'
      '  QTA60,'
      '  QTA61,'
      '  QTA62,'
      '  QTA63,'
      '  QTA64,'
      '  QTA65,'
      '  QTA66,'
      '  QTA67,'
      '  QTA68,'
      '  QTA69,'
      '  QTA70,'
      '  QTA71,'
      '  QTA72,'
      '  QTA73,'
      '  QTA74,'
      '  QTA75,'
      '  QTA76,'
      '  QTA77,'
      '  QTA78,'
      '  QTA79,'
      '  QTA80,'
      '  QTA81,'
      '  QTA82,'
      '  QTA83,'
      '  QTA84,'
      '  QTA85,'
      '  QTA86,'
      '  QTA87,'
      '  QTA88,'
      '  QTA89,'
      '  QTA90,'
      '  QTA91,'
      '  QTA92,'
      '  QTA93,'
      '  QTA94,'
      '  QTA95,'
      '  QTA96,'
      '  QTA97,'
      '  QTA98,'
      '  QTA99,'
      '  TOTALE_COLORE0,'
      '  TOTALE_COLORE1,'
      '  TOTALE_COLORE2,'
      '  TOTALE_COLORE3,'
      '  TOTALE_COLORE4,'
      '  TOTALE_COLORE5,'
      '  TOTALE_COLORE6,'
      '  TOTALE_COLORE7,'
      '  TOTALE_COLORE8,'
      '  TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9,'
      '  QTA_TOTALE,'
      '  SCAT,'
      '  PASSATA,'
      '  F1,'
      '  F2,'
      '  F3,'
      '  F4,'
      '  F5,'
      '  F6,'
      '  F7,'
      '  F8,'
      '  F0,'
      '  NUMPRE,'
      '  DATAGLIARE,'
      '  PK_DIST,'
      '  NOTE'
      'from TAGLIOFAS '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from TAGLIOFAS'
      'Order by Numero')
    ModifySQL.Strings = (
      'update TAGLIOFAS'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  CODICE = :CODICE,'
      '  COLORE0 = :COLORE0,'
      '  COLORE1 = :COLORE1,'
      '  COLORE2 = :COLORE2,'
      '  COLORE3 = :COLORE3,'
      '  COLORE4 = :COLORE4,'
      '  COLORE5 = :COLORE5,'
      '  COLORE6 = :COLORE6,'
      '  COLORE7 = :COLORE7,'
      '  COLORE8 = :COLORE8,'
      '  COLORE9 = :COLORE9,'
      '  DATA = :DATA,'
      '  DATAGLIARE = :DATAGLIARE,'
      '  DESCR = :DESCR,'
      '  DIPENDENTE = :DIPENDENTE,'
      '  F0 = :F0,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  F4 = :F4,'
      '  F5 = :F5,'
      '  F6 = :F6,'
      '  F7 = :F7,'
      '  F8 = :F8,'
      '  FASONISTA = :FASONISTA,'
      '  NOTE = :NOTE,'
      '  NUMERO = :NUMERO,'
      '  NUMERO_A = :NUMERO_A,'
      '  NUMPRE = :NUMPRE,'
      '  PASSATA = :PASSATA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PK_DIST = :PK_DIST,'
      '  QTA_TOTALE = :QTA_TOTALE,'
      '  QTA00 = :QTA00,'
      '  QTA01 = :QTA01,'
      '  QTA02 = :QTA02,'
      '  QTA03 = :QTA03,'
      '  QTA04 = :QTA04,'
      '  QTA05 = :QTA05,'
      '  QTA06 = :QTA06,'
      '  QTA07 = :QTA07,'
      '  QTA08 = :QTA08,'
      '  QTA09 = :QTA09,'
      '  QTA10 = :QTA10,'
      '  QTA11 = :QTA11,'
      '  QTA12 = :QTA12,'
      '  QTA13 = :QTA13,'
      '  QTA14 = :QTA14,'
      '  QTA15 = :QTA15,'
      '  QTA16 = :QTA16,'
      '  QTA17 = :QTA17,'
      '  QTA18 = :QTA18,'
      '  QTA19 = :QTA19,'
      '  QTA20 = :QTA20,'
      '  QTA21 = :QTA21,'
      '  QTA22 = :QTA22,'
      '  QTA23 = :QTA23,'
      '  QTA24 = :QTA24,'
      '  QTA25 = :QTA25,'
      '  QTA26 = :QTA26,'
      '  QTA27 = :QTA27,'
      '  QTA28 = :QTA28,'
      '  QTA29 = :QTA29,'
      '  QTA30 = :QTA30,'
      '  QTA31 = :QTA31,'
      '  QTA32 = :QTA32,'
      '  QTA33 = :QTA33,'
      '  QTA34 = :QTA34,'
      '  QTA35 = :QTA35,'
      '  QTA36 = :QTA36,'
      '  QTA37 = :QTA37,'
      '  QTA38 = :QTA38,'
      '  QTA39 = :QTA39,'
      '  QTA40 = :QTA40,'
      '  QTA41 = :QTA41,'
      '  QTA42 = :QTA42,'
      '  QTA43 = :QTA43,'
      '  QTA44 = :QTA44,'
      '  QTA45 = :QTA45,'
      '  QTA46 = :QTA46,'
      '  QTA47 = :QTA47,'
      '  QTA48 = :QTA48,'
      '  QTA49 = :QTA49,'
      '  QTA50 = :QTA50,'
      '  QTA51 = :QTA51,'
      '  QTA52 = :QTA52,'
      '  QTA53 = :QTA53,'
      '  QTA54 = :QTA54,'
      '  QTA55 = :QTA55,'
      '  QTA56 = :QTA56,'
      '  QTA57 = :QTA57,'
      '  QTA58 = :QTA58,'
      '  QTA59 = :QTA59,'
      '  QTA60 = :QTA60,'
      '  QTA61 = :QTA61,'
      '  QTA62 = :QTA62,'
      '  QTA63 = :QTA63,'
      '  QTA64 = :QTA64,'
      '  QTA65 = :QTA65,'
      '  QTA66 = :QTA66,'
      '  QTA67 = :QTA67,'
      '  QTA68 = :QTA68,'
      '  QTA69 = :QTA69,'
      '  QTA70 = :QTA70,'
      '  QTA71 = :QTA71,'
      '  QTA72 = :QTA72,'
      '  QTA73 = :QTA73,'
      '  QTA74 = :QTA74,'
      '  QTA75 = :QTA75,'
      '  QTA76 = :QTA76,'
      '  QTA77 = :QTA77,'
      '  QTA78 = :QTA78,'
      '  QTA79 = :QTA79,'
      '  QTA80 = :QTA80,'
      '  QTA81 = :QTA81,'
      '  QTA82 = :QTA82,'
      '  QTA83 = :QTA83,'
      '  QTA84 = :QTA84,'
      '  QTA85 = :QTA85,'
      '  QTA86 = :QTA86,'
      '  QTA87 = :QTA87,'
      '  QTA88 = :QTA88,'
      '  QTA89 = :QTA89,'
      '  QTA90 = :QTA90,'
      '  QTA91 = :QTA91,'
      '  QTA92 = :QTA92,'
      '  QTA93 = :QTA93,'
      '  QTA94 = :QTA94,'
      '  QTA95 = :QTA95,'
      '  QTA96 = :QTA96,'
      '  QTA97 = :QTA97,'
      '  QTA98 = :QTA98,'
      '  QTA99 = :QTA99,'
      '  SCAT = :SCAT,'
      '  TAGLIA0 = :TAGLIA0,'
      '  TAGLIA1 = :TAGLIA1,'
      '  TAGLIA2 = :TAGLIA2,'
      '  TAGLIA3 = :TAGLIA3,'
      '  TAGLIA4 = :TAGLIA4,'
      '  TAGLIA5 = :TAGLIA5,'
      '  TAGLIA6 = :TAGLIA6,'
      '  TAGLIA7 = :TAGLIA7,'
      '  TAGLIA8 = :TAGLIA8,'
      '  TAGLIA9 = :TAGLIA9,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_COLORE0 = :TOTALE_COLORE0,'
      '  TOTALE_COLORE1 = :TOTALE_COLORE1,'
      '  TOTALE_COLORE2 = :TOTALE_COLORE2,'
      '  TOTALE_COLORE3 = :TOTALE_COLORE3,'
      '  TOTALE_COLORE4 = :TOTALE_COLORE4,'
      '  TOTALE_COLORE5 = :TOTALE_COLORE5,'
      '  TOTALE_COLORE6 = :TOTALE_COLORE6,'
      '  TOTALE_COLORE7 = :TOTALE_COLORE7,'
      '  TOTALE_COLORE8 = :TOTALE_COLORE8,'
      '  TOTALE_COLORE9 = :TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0 = :TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1 = :TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2 = :TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3 = :TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4 = :TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5 = :TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6 = :TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7 = :TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8 = :TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9 = :TOTALE_TAGLIA9'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TAGLIOFAS'
    Left = 360
    object ibqryPretFasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"TAGLIOFAS"."NUMERO"'
    end
    object ibqryPretFasCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAGLIOFAS"."CODICE"'
    end
    object ibqryPretFasDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAGLIOFAS"."DESCR"'
      Size = 100
    end
    object ibqryPretFasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TAGLIOFAS"."DATA"'
    end
    object ibqryPretFasNUMERO_A: TIBStringField
      FieldName = 'NUMERO_A'
      Origin = '"TAGLIOFAS"."NUMERO_A"'
    end
    object ibqryPretFasTOTALE: TIntegerField
      FieldName = 'TOTALE'
      Origin = '"TAGLIOFAS"."TOTALE"'
    end
    object ibqryPretFasDIPENDENTE: TIBStringField
      FieldName = 'DIPENDENTE'
      Origin = '"TAGLIOFAS"."DIPENDENTE"'
      Size = 100
    end
    object ibqryPretFasFASONISTA: TIBStringField
      FieldName = 'FASONISTA'
      Origin = '"TAGLIOFAS"."FASONISTA"'
      Size = 100
    end
    object ibqryPretFasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"TAGLIOFAS"."CLIENTE"'
      Size = 100
    end
    object ibqryPretFasTAGLIA0: TIBStringField
      FieldName = 'TAGLIA0'
      Origin = '"TAGLIOFAS"."TAGLIA0"'
    end
    object ibqryPretFasTAGLIA1: TIBStringField
      FieldName = 'TAGLIA1'
      Origin = '"TAGLIOFAS"."TAGLIA1"'
    end
    object ibqryPretFasTAGLIA2: TIBStringField
      FieldName = 'TAGLIA2'
      Origin = '"TAGLIOFAS"."TAGLIA2"'
    end
    object ibqryPretFasTAGLIA3: TIBStringField
      FieldName = 'TAGLIA3'
      Origin = '"TAGLIOFAS"."TAGLIA3"'
    end
    object ibqryPretFasPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAGLIOFAS"."PK_CODICE"'
      Required = True
    end
    object ibqryPretFasTAGLIA4: TIBStringField
      FieldName = 'TAGLIA4'
      Origin = '"TAGLIOFAS"."TAGLIA4"'
    end
    object ibqryPretFasTAGLIA5: TIBStringField
      FieldName = 'TAGLIA5'
      Origin = '"TAGLIOFAS"."TAGLIA5"'
    end
    object ibqryPretFasTAGLIA6: TIBStringField
      FieldName = 'TAGLIA6'
      Origin = '"TAGLIOFAS"."TAGLIA6"'
    end
    object ibqryPretFasTAGLIA7: TIBStringField
      FieldName = 'TAGLIA7'
      Origin = '"TAGLIOFAS"."TAGLIA7"'
    end
    object ibqryPretFasTAGLIA8: TIBStringField
      FieldName = 'TAGLIA8'
      Origin = '"TAGLIOFAS"."TAGLIA8"'
    end
    object ibqryPretFasTAGLIA9: TIBStringField
      FieldName = 'TAGLIA9'
      Origin = '"TAGLIOFAS"."TAGLIA9"'
    end
    object ibqryPretFasCOLORE0: TIBStringField
      FieldName = 'COLORE0'
      Origin = '"TAGLIOFAS"."COLORE0"'
      Size = 100
    end
    object ibqryPretFasCOLORE1: TIBStringField
      FieldName = 'COLORE1'
      Origin = '"TAGLIOFAS"."COLORE1"'
      Size = 100
    end
    object ibqryPretFasCOLORE2: TIBStringField
      FieldName = 'COLORE2'
      Origin = '"TAGLIOFAS"."COLORE2"'
      Size = 100
    end
    object ibqryPretFasCOLORE3: TIBStringField
      FieldName = 'COLORE3'
      Origin = '"TAGLIOFAS"."COLORE3"'
      Size = 100
    end
    object ibqryPretFasCOLORE4: TIBStringField
      FieldName = 'COLORE4'
      Origin = '"TAGLIOFAS"."COLORE4"'
      Size = 100
    end
    object ibqryPretFasCOLORE5: TIBStringField
      FieldName = 'COLORE5'
      Origin = '"TAGLIOFAS"."COLORE5"'
      Size = 100
    end
    object ibqryPretFasCOLORE6: TIBStringField
      FieldName = 'COLORE6'
      Origin = '"TAGLIOFAS"."COLORE6"'
      Size = 100
    end
    object ibqryPretFasCOLORE7: TIBStringField
      FieldName = 'COLORE7'
      Origin = '"TAGLIOFAS"."COLORE7"'
      Size = 100
    end
    object ibqryPretFasCOLORE8: TIBStringField
      FieldName = 'COLORE8'
      Origin = '"TAGLIOFAS"."COLORE8"'
      Size = 100
    end
    object ibqryPretFasCOLORE9: TIBStringField
      FieldName = 'COLORE9'
      Origin = '"TAGLIOFAS"."COLORE9"'
      Size = 100
    end
    object ibqryPretFasQTA00: TIntegerField
      FieldName = 'QTA00'
      Origin = '"TAGLIOFAS"."QTA00"'
    end
    object ibqryPretFasQTA01: TIntegerField
      FieldName = 'QTA01'
      Origin = '"TAGLIOFAS"."QTA01"'
    end
    object ibqryPretFasQTA02: TIntegerField
      FieldName = 'QTA02'
      Origin = '"TAGLIOFAS"."QTA02"'
    end
    object ibqryPretFasQTA03: TIntegerField
      FieldName = 'QTA03'
      Origin = '"TAGLIOFAS"."QTA03"'
    end
    object ibqryPretFasQTA04: TIntegerField
      FieldName = 'QTA04'
      Origin = '"TAGLIOFAS"."QTA04"'
    end
    object ibqryPretFasQTA05: TIntegerField
      FieldName = 'QTA05'
      Origin = '"TAGLIOFAS"."QTA05"'
    end
    object ibqryPretFasQTA06: TIntegerField
      FieldName = 'QTA06'
      Origin = '"TAGLIOFAS"."QTA06"'
    end
    object ibqryPretFasQTA07: TIntegerField
      FieldName = 'QTA07'
      Origin = '"TAGLIOFAS"."QTA07"'
    end
    object ibqryPretFasQTA08: TIntegerField
      FieldName = 'QTA08'
      Origin = '"TAGLIOFAS"."QTA08"'
    end
    object ibqryPretFasQTA09: TIntegerField
      FieldName = 'QTA09'
      Origin = '"TAGLIOFAS"."QTA09"'
    end
    object ibqryPretFasQTA10: TIntegerField
      FieldName = 'QTA10'
      Origin = '"TAGLIOFAS"."QTA10"'
    end
    object ibqryPretFasQTA11: TIntegerField
      FieldName = 'QTA11'
      Origin = '"TAGLIOFAS"."QTA11"'
    end
    object ibqryPretFasQTA12: TIntegerField
      FieldName = 'QTA12'
      Origin = '"TAGLIOFAS"."QTA12"'
    end
    object ibqryPretFasQTA13: TIntegerField
      FieldName = 'QTA13'
      Origin = '"TAGLIOFAS"."QTA13"'
    end
    object ibqryPretFasQTA14: TIntegerField
      FieldName = 'QTA14'
      Origin = '"TAGLIOFAS"."QTA14"'
    end
    object ibqryPretFasQTA15: TIntegerField
      FieldName = 'QTA15'
      Origin = '"TAGLIOFAS"."QTA15"'
    end
    object ibqryPretFasQTA16: TIntegerField
      FieldName = 'QTA16'
      Origin = '"TAGLIOFAS"."QTA16"'
    end
    object ibqryPretFasQTA17: TIntegerField
      FieldName = 'QTA17'
      Origin = '"TAGLIOFAS"."QTA17"'
    end
    object ibqryPretFasQTA18: TIntegerField
      FieldName = 'QTA18'
      Origin = '"TAGLIOFAS"."QTA18"'
    end
    object ibqryPretFasQTA19: TIntegerField
      FieldName = 'QTA19'
      Origin = '"TAGLIOFAS"."QTA19"'
    end
    object ibqryPretFasQTA20: TIntegerField
      FieldName = 'QTA20'
      Origin = '"TAGLIOFAS"."QTA20"'
    end
    object ibqryPretFasQTA21: TIntegerField
      FieldName = 'QTA21'
      Origin = '"TAGLIOFAS"."QTA21"'
    end
    object ibqryPretFasQTA22: TIntegerField
      FieldName = 'QTA22'
      Origin = '"TAGLIOFAS"."QTA22"'
    end
    object ibqryPretFasQTA23: TIntegerField
      FieldName = 'QTA23'
      Origin = '"TAGLIOFAS"."QTA23"'
    end
    object ibqryPretFasQTA24: TIntegerField
      FieldName = 'QTA24'
      Origin = '"TAGLIOFAS"."QTA24"'
    end
    object ibqryPretFasQTA25: TIntegerField
      FieldName = 'QTA25'
      Origin = '"TAGLIOFAS"."QTA25"'
    end
    object ibqryPretFasQTA26: TIntegerField
      FieldName = 'QTA26'
      Origin = '"TAGLIOFAS"."QTA26"'
    end
    object ibqryPretFasQTA27: TIntegerField
      FieldName = 'QTA27'
      Origin = '"TAGLIOFAS"."QTA27"'
    end
    object ibqryPretFasQTA28: TIntegerField
      FieldName = 'QTA28'
      Origin = '"TAGLIOFAS"."QTA28"'
    end
    object ibqryPretFasQTA29: TIntegerField
      FieldName = 'QTA29'
      Origin = '"TAGLIOFAS"."QTA29"'
    end
    object ibqryPretFasQTA30: TIntegerField
      FieldName = 'QTA30'
      Origin = '"TAGLIOFAS"."QTA30"'
    end
    object ibqryPretFasQTA31: TIntegerField
      FieldName = 'QTA31'
      Origin = '"TAGLIOFAS"."QTA31"'
    end
    object ibqryPretFasQTA32: TIntegerField
      FieldName = 'QTA32'
      Origin = '"TAGLIOFAS"."QTA32"'
    end
    object ibqryPretFasQTA33: TIntegerField
      FieldName = 'QTA33'
      Origin = '"TAGLIOFAS"."QTA33"'
    end
    object ibqryPretFasQTA34: TIntegerField
      FieldName = 'QTA34'
      Origin = '"TAGLIOFAS"."QTA34"'
    end
    object ibqryPretFasQTA35: TIntegerField
      FieldName = 'QTA35'
      Origin = '"TAGLIOFAS"."QTA35"'
    end
    object ibqryPretFasQTA36: TIntegerField
      FieldName = 'QTA36'
      Origin = '"TAGLIOFAS"."QTA36"'
    end
    object ibqryPretFasQTA37: TIntegerField
      FieldName = 'QTA37'
      Origin = '"TAGLIOFAS"."QTA37"'
    end
    object ibqryPretFasQTA38: TIntegerField
      FieldName = 'QTA38'
      Origin = '"TAGLIOFAS"."QTA38"'
    end
    object ibqryPretFasQTA39: TIntegerField
      FieldName = 'QTA39'
      Origin = '"TAGLIOFAS"."QTA39"'
    end
    object ibqryPretFasQTA40: TIntegerField
      FieldName = 'QTA40'
      Origin = '"TAGLIOFAS"."QTA40"'
    end
    object ibqryPretFasQTA41: TIntegerField
      FieldName = 'QTA41'
      Origin = '"TAGLIOFAS"."QTA41"'
    end
    object ibqryPretFasQTA42: TIntegerField
      FieldName = 'QTA42'
      Origin = '"TAGLIOFAS"."QTA42"'
    end
    object ibqryPretFasQTA43: TIntegerField
      FieldName = 'QTA43'
      Origin = '"TAGLIOFAS"."QTA43"'
    end
    object ibqryPretFasQTA44: TIntegerField
      FieldName = 'QTA44'
      Origin = '"TAGLIOFAS"."QTA44"'
    end
    object ibqryPretFasQTA45: TIntegerField
      FieldName = 'QTA45'
      Origin = '"TAGLIOFAS"."QTA45"'
    end
    object ibqryPretFasQTA46: TIntegerField
      FieldName = 'QTA46'
      Origin = '"TAGLIOFAS"."QTA46"'
    end
    object ibqryPretFasQTA47: TIntegerField
      FieldName = 'QTA47'
      Origin = '"TAGLIOFAS"."QTA47"'
    end
    object ibqryPretFasQTA48: TIntegerField
      FieldName = 'QTA48'
      Origin = '"TAGLIOFAS"."QTA48"'
    end
    object ibqryPretFasQTA49: TIntegerField
      FieldName = 'QTA49'
      Origin = '"TAGLIOFAS"."QTA49"'
    end
    object ibqryPretFasQTA50: TIntegerField
      FieldName = 'QTA50'
      Origin = '"TAGLIOFAS"."QTA50"'
    end
    object ibqryPretFasQTA51: TIntegerField
      FieldName = 'QTA51'
      Origin = '"TAGLIOFAS"."QTA51"'
    end
    object ibqryPretFasQTA52: TIntegerField
      FieldName = 'QTA52'
      Origin = '"TAGLIOFAS"."QTA52"'
    end
    object ibqryPretFasQTA53: TIntegerField
      FieldName = 'QTA53'
      Origin = '"TAGLIOFAS"."QTA53"'
    end
    object ibqryPretFasQTA54: TIntegerField
      FieldName = 'QTA54'
      Origin = '"TAGLIOFAS"."QTA54"'
    end
    object ibqryPretFasQTA55: TIntegerField
      FieldName = 'QTA55'
      Origin = '"TAGLIOFAS"."QTA55"'
    end
    object ibqryPretFasQTA56: TIntegerField
      FieldName = 'QTA56'
      Origin = '"TAGLIOFAS"."QTA56"'
    end
    object ibqryPretFasQTA57: TIntegerField
      FieldName = 'QTA57'
      Origin = '"TAGLIOFAS"."QTA57"'
    end
    object ibqryPretFasQTA58: TIntegerField
      FieldName = 'QTA58'
      Origin = '"TAGLIOFAS"."QTA58"'
    end
    object ibqryPretFasQTA59: TIntegerField
      FieldName = 'QTA59'
      Origin = '"TAGLIOFAS"."QTA59"'
    end
    object ibqryPretFasQTA60: TIntegerField
      FieldName = 'QTA60'
      Origin = '"TAGLIOFAS"."QTA60"'
    end
    object ibqryPretFasQTA61: TIntegerField
      FieldName = 'QTA61'
      Origin = '"TAGLIOFAS"."QTA61"'
    end
    object ibqryPretFasQTA62: TIntegerField
      FieldName = 'QTA62'
      Origin = '"TAGLIOFAS"."QTA62"'
    end
    object ibqryPretFasQTA63: TIntegerField
      FieldName = 'QTA63'
      Origin = '"TAGLIOFAS"."QTA63"'
    end
    object ibqryPretFasQTA64: TIntegerField
      FieldName = 'QTA64'
      Origin = '"TAGLIOFAS"."QTA64"'
    end
    object ibqryPretFasQTA65: TIntegerField
      FieldName = 'QTA65'
      Origin = '"TAGLIOFAS"."QTA65"'
    end
    object ibqryPretFasQTA66: TIntegerField
      FieldName = 'QTA66'
      Origin = '"TAGLIOFAS"."QTA66"'
    end
    object ibqryPretFasQTA67: TIntegerField
      FieldName = 'QTA67'
      Origin = '"TAGLIOFAS"."QTA67"'
    end
    object ibqryPretFasQTA68: TIntegerField
      FieldName = 'QTA68'
      Origin = '"TAGLIOFAS"."QTA68"'
    end
    object ibqryPretFasQTA69: TIntegerField
      FieldName = 'QTA69'
      Origin = '"TAGLIOFAS"."QTA69"'
    end
    object ibqryPretFasQTA70: TIntegerField
      FieldName = 'QTA70'
      Origin = '"TAGLIOFAS"."QTA70"'
    end
    object ibqryPretFasQTA71: TIntegerField
      FieldName = 'QTA71'
      Origin = '"TAGLIOFAS"."QTA71"'
    end
    object ibqryPretFasQTA72: TIntegerField
      FieldName = 'QTA72'
      Origin = '"TAGLIOFAS"."QTA72"'
    end
    object ibqryPretFasQTA73: TIntegerField
      FieldName = 'QTA73'
      Origin = '"TAGLIOFAS"."QTA73"'
    end
    object ibqryPretFasQTA74: TIntegerField
      FieldName = 'QTA74'
      Origin = '"TAGLIOFAS"."QTA74"'
    end
    object ibqryPretFasQTA75: TIntegerField
      FieldName = 'QTA75'
      Origin = '"TAGLIOFAS"."QTA75"'
    end
    object ibqryPretFasQTA76: TIntegerField
      FieldName = 'QTA76'
      Origin = '"TAGLIOFAS"."QTA76"'
    end
    object ibqryPretFasQTA77: TIntegerField
      FieldName = 'QTA77'
      Origin = '"TAGLIOFAS"."QTA77"'
    end
    object ibqryPretFasQTA78: TIntegerField
      FieldName = 'QTA78'
      Origin = '"TAGLIOFAS"."QTA78"'
    end
    object ibqryPretFasQTA79: TIntegerField
      FieldName = 'QTA79'
      Origin = '"TAGLIOFAS"."QTA79"'
    end
    object ibqryPretFasQTA80: TIntegerField
      FieldName = 'QTA80'
      Origin = '"TAGLIOFAS"."QTA80"'
    end
    object ibqryPretFasQTA81: TIntegerField
      FieldName = 'QTA81'
      Origin = '"TAGLIOFAS"."QTA81"'
    end
    object ibqryPretFasQTA82: TIntegerField
      FieldName = 'QTA82'
      Origin = '"TAGLIOFAS"."QTA82"'
    end
    object ibqryPretFasQTA83: TIntegerField
      FieldName = 'QTA83'
      Origin = '"TAGLIOFAS"."QTA83"'
    end
    object ibqryPretFasQTA84: TIntegerField
      FieldName = 'QTA84'
      Origin = '"TAGLIOFAS"."QTA84"'
    end
    object ibqryPretFasQTA85: TIntegerField
      FieldName = 'QTA85'
      Origin = '"TAGLIOFAS"."QTA85"'
    end
    object ibqryPretFasQTA86: TIntegerField
      FieldName = 'QTA86'
      Origin = '"TAGLIOFAS"."QTA86"'
    end
    object ibqryPretFasQTA87: TIntegerField
      FieldName = 'QTA87'
      Origin = '"TAGLIOFAS"."QTA87"'
    end
    object ibqryPretFasQTA88: TIntegerField
      FieldName = 'QTA88'
      Origin = '"TAGLIOFAS"."QTA88"'
    end
    object ibqryPretFasQTA89: TIntegerField
      FieldName = 'QTA89'
      Origin = '"TAGLIOFAS"."QTA89"'
    end
    object ibqryPretFasQTA90: TIntegerField
      FieldName = 'QTA90'
      Origin = '"TAGLIOFAS"."QTA90"'
    end
    object ibqryPretFasQTA91: TIntegerField
      FieldName = 'QTA91'
      Origin = '"TAGLIOFAS"."QTA91"'
    end
    object ibqryPretFasQTA92: TIntegerField
      FieldName = 'QTA92'
      Origin = '"TAGLIOFAS"."QTA92"'
    end
    object ibqryPretFasQTA93: TIntegerField
      FieldName = 'QTA93'
      Origin = '"TAGLIOFAS"."QTA93"'
    end
    object ibqryPretFasQTA94: TIntegerField
      FieldName = 'QTA94'
      Origin = '"TAGLIOFAS"."QTA94"'
    end
    object ibqryPretFasQTA95: TIntegerField
      FieldName = 'QTA95'
      Origin = '"TAGLIOFAS"."QTA95"'
    end
    object ibqryPretFasQTA96: TIntegerField
      FieldName = 'QTA96'
      Origin = '"TAGLIOFAS"."QTA96"'
    end
    object ibqryPretFasQTA97: TIntegerField
      FieldName = 'QTA97'
      Origin = '"TAGLIOFAS"."QTA97"'
    end
    object ibqryPretFasQTA98: TIntegerField
      FieldName = 'QTA98'
      Origin = '"TAGLIOFAS"."QTA98"'
    end
    object ibqryPretFasQTA99: TIntegerField
      FieldName = 'QTA99'
      Origin = '"TAGLIOFAS"."QTA99"'
    end
    object ibqryPretFasTOTALE_COLORE0: TIntegerField
      FieldName = 'TOTALE_COLORE0'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE0"'
    end
    object ibqryPretFasTOTALE_COLORE1: TIntegerField
      FieldName = 'TOTALE_COLORE1'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE1"'
    end
    object ibqryPretFasTOTALE_COLORE2: TIntegerField
      FieldName = 'TOTALE_COLORE2'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE2"'
    end
    object ibqryPretFasTOTALE_COLORE3: TIntegerField
      FieldName = 'TOTALE_COLORE3'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE3"'
    end
    object ibqryPretFasTOTALE_COLORE4: TIntegerField
      FieldName = 'TOTALE_COLORE4'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE4"'
    end
    object ibqryPretFasTOTALE_COLORE5: TIntegerField
      FieldName = 'TOTALE_COLORE5'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE5"'
    end
    object ibqryPretFasTOTALE_COLORE6: TIntegerField
      FieldName = 'TOTALE_COLORE6'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE6"'
    end
    object ibqryPretFasTOTALE_COLORE7: TIntegerField
      FieldName = 'TOTALE_COLORE7'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE7"'
    end
    object ibqryPretFasTOTALE_COLORE8: TIntegerField
      FieldName = 'TOTALE_COLORE8'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE8"'
    end
    object ibqryPretFasTOTALE_COLORE9: TIntegerField
      FieldName = 'TOTALE_COLORE9'
      Origin = '"TAGLIOFAS"."TOTALE_COLORE9"'
    end
    object ibqryPretFasTOTALE_TAGLIA0: TIntegerField
      FieldName = 'TOTALE_TAGLIA0'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA0"'
    end
    object ibqryPretFasTOTALE_TAGLIA1: TIntegerField
      FieldName = 'TOTALE_TAGLIA1'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA1"'
    end
    object ibqryPretFasTOTALE_TAGLIA2: TIntegerField
      FieldName = 'TOTALE_TAGLIA2'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA2"'
    end
    object ibqryPretFasTOTALE_TAGLIA3: TIntegerField
      FieldName = 'TOTALE_TAGLIA3'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA3"'
    end
    object ibqryPretFasTOTALE_TAGLIA4: TIntegerField
      FieldName = 'TOTALE_TAGLIA4'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA4"'
    end
    object ibqryPretFasTOTALE_TAGLIA5: TIntegerField
      FieldName = 'TOTALE_TAGLIA5'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA5"'
    end
    object ibqryPretFasTOTALE_TAGLIA6: TIntegerField
      FieldName = 'TOTALE_TAGLIA6'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA6"'
    end
    object ibqryPretFasTOTALE_TAGLIA7: TIntegerField
      FieldName = 'TOTALE_TAGLIA7'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA7"'
    end
    object ibqryPretFasTOTALE_TAGLIA8: TIntegerField
      FieldName = 'TOTALE_TAGLIA8'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA8"'
    end
    object ibqryPretFasTOTALE_TAGLIA9: TIntegerField
      FieldName = 'TOTALE_TAGLIA9'
      Origin = '"TAGLIOFAS"."TOTALE_TAGLIA9"'
    end
    object ibqryPretFasQTA_TOTALE: TIntegerField
      FieldName = 'QTA_TOTALE'
      Origin = '"TAGLIOFAS"."QTA_TOTALE"'
    end
    object ibqryPretFasSCAT: TFloatField
      FieldName = 'SCAT'
      Origin = '"TAGLIOFAS"."SCAT"'
    end
    object ibqryPretFasPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAGLIOFAS"."PASSATA"'
      Size = 1
    end
    object ibqryPretFasF1: TIBStringField
      FieldName = 'F1'
      Origin = '"TAGLIOFAS"."F1"'
      Size = 5
    end
    object ibqryPretFasF2: TIBStringField
      FieldName = 'F2'
      Origin = '"TAGLIOFAS"."F2"'
      Size = 5
    end
    object ibqryPretFasF3: TIBStringField
      FieldName = 'F3'
      Origin = '"TAGLIOFAS"."F3"'
      Size = 5
    end
    object ibqryPretFasF4: TIBStringField
      FieldName = 'F4'
      Origin = '"TAGLIOFAS"."F4"'
      Size = 5
    end
    object ibqryPretFasF5: TIBStringField
      FieldName = 'F5'
      Origin = '"TAGLIOFAS"."F5"'
      Size = 5
    end
    object ibqryPretFasF6: TIBStringField
      FieldName = 'F6'
      Origin = '"TAGLIOFAS"."F6"'
      Size = 5
    end
    object ibqryPretFasF7: TIBStringField
      FieldName = 'F7'
      Origin = '"TAGLIOFAS"."F7"'
      Size = 5
    end
    object ibqryPretFasF8: TIBStringField
      FieldName = 'F8'
      Origin = '"TAGLIOFAS"."F8"'
      Size = 5
    end
    object ibqryPretFasF0: TIBStringField
      FieldName = 'F0'
      Origin = '"TAGLIOFAS"."F0"'
      Size = 5
    end
    object ibqryPretFasNUMPRE: TIntegerField
      FieldName = 'NUMPRE'
      Origin = '"TAGLIOFAS"."NUMPRE"'
    end
    object ibqryPretFasDATAGLIARE: TFloatField
      FieldName = 'DATAGLIARE'
      Origin = '"TAGLIOFAS"."DATAGLIARE"'
    end
    object ibqryPretFasPK_DIST: TIntegerField
      FieldName = 'PK_DIST'
      Origin = '"TAGLIOFAS"."PK_DIST"'
    end
    object ibqryPretFasNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAGLIOFAS"."NOTE"'
      Size = 255
    end
  end
  object ibqCNTR: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    BufferChunks = 50
    SQL.Strings = (
      'select count(*) from tab_zone')
    Left = 432
    object ibqCNTRCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
  end
  object ibqTab_Doc: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibqTab_Doc2AfterInsert
    OnCalcFields = ibqTab_Doc2CalcFields
    DeleteSQL.Strings = (
      'delete from TAB_DOCUMENTI'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    InsertSQL.Strings = (
      'insert into TAB_DOCUMENTI'
      
        '  (ID_DOCUMENTO, TESTATA_PN_ID, CAUSALE_DOC, TIPO_DOC, DA_FATTUR' +
        'ARE, CLIFOR_ID, '
      
        '   TIPO_CLIFOR, DEPOSITO, CONTRO_CLIFOR_ID, CONTRO_TIPO_CLIFOR, ' +
        'CONTRO_DEPOSITO, '
      
        '   CAUSALE_MAGAZZINO, CONTRO_CAUS_MAG, ATTIVITA, SUBATTIVITA, DA' +
        'TA_REGISTRAZIONE, '
      
        '   DATA_DOC, DATA_CONFERMA, DATA_EVASIONE, STATO_DOCUMENTO, STAT' +
        'O_CONTABILITA, '
      
        '   MONETA_ID, CAMBIO, KINGUA_ID, LISTINO, NS_RIFERIMENTO, VS_RIF' +
        'ERIMENTO, '
      
        '   CAUSALE_CONTABILE, CODICE_BOLL, PAGAMENTO_ID, BANCA_CLIFOR, B' +
        'ANCA_AZIENDA, '
      
        '   VETTORE1, VETTORE2, VETTORE3, PORTO, ASPETTO, SPEDIZIONE, PES' +
        'O_NETTO, '
      
        '   PESO_LORDO, CUBAGGIO, DESTINARIO, IMBALLO, SCONTO1, AGENTE_ID' +
        ', DATA_CONSEGNA, '
      
        '   NUM_DOC, NRCOLLI, SCONTO2, IMPORTO_SCONTO, NOTA, SOSPESO, IVA' +
        '_SOSPESA, '
      
        '   COD_IVA_ESENTE, COD_IVA_SPESE_BOLLI, COD_IVA_SPESE_INCASSO, C' +
        'OD_IVA_SPESE_IMVALLO, '
      
        '   COD_IVA_SPESE_CONTRASSEGNO, COD_IVA_SPESE_ACCESSIONE, COD_IVA' +
        '_SPESE_SPEDIZIONE, '
      
        '   ACCORPA_RIGHE, ATTIVITA2, SUBATTIVITA2, SOGGETTO_CEE, REPORT,' +
        ' RILEVA_ACCONTO, '
      
        '   ORA, FATT_ACCOMP, TIPO_FATT, ST_NOTE_CLIFOR, IVATO, STAMPATO,' +
        ' DATA_COMPETENZA_IVA, '
      
        '   MEZZO_TRASPORTO, TOT_PROVVIGIONE, TIPO_PROVVIGIONE, TOT_IMP_P' +
        'ROVVIGIONE, '
      
        '   CAST_MANUALE, NUM_DOC2, SERIE_DOC2, MESE_CONT, ALTRE_DERT_SI_' +
        'NO, SPESE_IMBALLO, '
      
        '   SPESE_BOLLI, SPESE_ACCESSORIE, SPESE_INCASSO, SPESE_SPEDIZION' +
        'E, SPESE_CONTRASS, '
      
        '   CAU_TRASP_ID, PER_ALTRA_DEST, IMPORTO_CON_IVA, TOTALE_MERCE, ' +
        'TOTALE_SERVIZI, '
      
        '   TOTALE, TOTALE_IVA, TOTALE_IVATO, TOTALE_SCONTI, TOTALE_EURO,' +
        ' TOTALE_EURO_IVATO, '
      
        '   CODIVA1, ALIVA1, IMPON1, IMPOSTA1, CODIVA2, ALIVA2, IMPON2, I' +
        'MPOSTA2, '
      
        '   CODIVA3, ALIVA3, IMPON3, IMPOSTA3, CODIVA4, ALIVA4, IMPON4, I' +
        'MPOSTA4, '
      
        '   CODIVA5, ALIVA5, IMPON5, IMPOSTA5, TOT_SPESE, ALTRA_DEST, SER' +
        'IE_DOC, '
      
        '   CLI_FOR_IND, ACCONTO, RATA1_IMPORTO, RATA2_IMPORTO, RATA3_IMP' +
        'ORTO, RATA4_IMPORTO, '
      
        '   RATA5_IMPORTO, RATA6_IMPORTO, TEL1, TEL2, TEL3, IVA_ESENTE, I' +
        'VA_ESENTE_ID, '
      
        '   VETTORE_IND, VETTORE_IND2, CLI_FOR_IND2, RATA1_DATA, RATA2_DA' +
        'TA, RATA3_DATA, '
      
        '   RATA4_DATA, RATA5_DATA, RATA6_DATA, PIANOCONTO_ID, ALTRA_DEST' +
        '2, CA_ID)'
      'values'
      
        '  (:ID_DOCUMENTO, :TESTATA_PN_ID, :CAUSALE_DOC, :TIPO_DOC, :DA_F' +
        'ATTURARE, '
      
        '   :CLIFOR_ID, :TIPO_CLIFOR, :DEPOSITO, :CONTRO_CLIFOR_ID, :CONT' +
        'RO_TIPO_CLIFOR, '
      
        '   :CONTRO_DEPOSITO, :CAUSALE_MAGAZZINO, :CONTRO_CAUS_MAG, :ATTI' +
        'VITA, :SUBATTIVITA, '
      
        '   :DATA_REGISTRAZIONE, :DATA_DOC, :DATA_CONFERMA, :DATA_EVASION' +
        'E, :STATO_DOCUMENTO, '
      
        '   :STATO_CONTABILITA, :MONETA_ID, :CAMBIO, :KINGUA_ID, :LISTINO' +
        ', :NS_RIFERIMENTO, '
      
        '   :VS_RIFERIMENTO, :CAUSALE_CONTABILE, :CODICE_BOLL, :PAGAMENTO' +
        '_ID, :BANCA_CLIFOR, '
      
        '   :BANCA_AZIENDA, :VETTORE1, :VETTORE2, :VETTORE3, :PORTO, :ASP' +
        'ETTO, :SPEDIZIONE, '
      
        '   :PESO_NETTO, :PESO_LORDO, :CUBAGGIO, :DESTINARIO, :IMBALLO, :' +
        'SCONTO1, '
      
        '   :AGENTE_ID, :DATA_CONSEGNA, :NUM_DOC, :NRCOLLI, :SCONTO2, :IM' +
        'PORTO_SCONTO, '
      
        '   :NOTA, :SOSPESO, :IVA_SOSPESA, :COD_IVA_ESENTE, :COD_IVA_SPES' +
        'E_BOLLI, '
      
        '   :COD_IVA_SPESE_INCASSO, :COD_IVA_SPESE_IMVALLO, :COD_IVA_SPES' +
        'E_CONTRASSEGNO, '
      
        '   :COD_IVA_SPESE_ACCESSIONE, :COD_IVA_SPESE_SPEDIZIONE, :ACCORP' +
        'A_RIGHE, '
      
        '   :ATTIVITA2, :SUBATTIVITA2, :SOGGETTO_CEE, :REPORT, :RILEVA_AC' +
        'CONTO, '
      
        '   :ORA, :FATT_ACCOMP, :TIPO_FATT, :ST_NOTE_CLIFOR, :IVATO, :STA' +
        'MPATO, '
      
        '   :DATA_COMPETENZA_IVA, :MEZZO_TRASPORTO, :TOT_PROVVIGIONE, :TI' +
        'PO_PROVVIGIONE, '
      
        '   :TOT_IMP_PROVVIGIONE, :CAST_MANUALE, :NUM_DOC2, :SERIE_DOC2, ' +
        ':MESE_CONT, '
      
        '   :ALTRE_DERT_SI_NO, :SPESE_IMBALLO, :SPESE_BOLLI, :SPESE_ACCES' +
        'SORIE, '
      
        '   :SPESE_INCASSO, :SPESE_SPEDIZIONE, :SPESE_CONTRASS, :CAU_TRAS' +
        'P_ID, :PER_ALTRA_DEST, '
      
        '   :IMPORTO_CON_IVA, :TOTALE_MERCE, :TOTALE_SERVIZI, :TOTALE, :T' +
        'OTALE_IVA, '
      
        '   :TOTALE_IVATO, :TOTALE_SCONTI, :TOTALE_EURO, :TOTALE_EURO_IVA' +
        'TO, :CODIVA1, '
      
        '   :ALIVA1, :IMPON1, :IMPOSTA1, :CODIVA2, :ALIVA2, :IMPON2, :IMP' +
        'OSTA2, '
      
        '   :CODIVA3, :ALIVA3, :IMPON3, :IMPOSTA3, :CODIVA4, :ALIVA4, :IM' +
        'PON4, :IMPOSTA4, '
      
        '   :CODIVA5, :ALIVA5, :IMPON5, :IMPOSTA5, :TOT_SPESE, :ALTRA_DES' +
        'T, :SERIE_DOC, '
      
        '   :CLI_FOR_IND, :ACCONTO, :RATA1_IMPORTO, :RATA2_IMPORTO, :RATA' +
        '3_IMPORTO, '
      
        '   :RATA4_IMPORTO, :RATA5_IMPORTO, :RATA6_IMPORTO, :TEL1, :TEL2,' +
        ' :TEL3, '
      
        '   :IVA_ESENTE, :IVA_ESENTE_ID, :VETTORE_IND, :VETTORE_IND2, :CL' +
        'I_FOR_IND2, '
      
        '   :RATA1_DATA, :RATA2_DATA, :RATA3_DATA, :RATA4_DATA, :RATA5_DA' +
        'TA, :RATA6_DATA, '
      '   :PIANOCONTO_ID, :ALTRA_DEST2, :CA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOCUMENTO,'
      '  TESTATA_PN_ID,'
      '  CAUSALE_DOC,'
      '  TIPO_DOC,'
      '  DA_FATTURARE,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  DEPOSITO,'
      '  CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG,'
      '  ATTIVITA,'
      '  SUBATTIVITA,'
      '  DATA_REGISTRAZIONE,'
      '  DATA_DOC,'
      '  DATA_CONFERMA,'
      '  DATA_EVASIONE,'
      '  STATO_DOCUMENTO,'
      '  STATO_CONTABILITA,'
      '  MONETA_ID,'
      '  CAMBIO,'
      '  KINGUA_ID,'
      '  LISTINO,'
      '  NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE,'
      '  CODICE_BOLL,'
      '  PAGAMENTO_ID,'
      '  BANCA_CLIFOR,'
      '  BANCA_AZIENDA,'
      '  VETTORE1,'
      '  VETTORE2,'
      '  VETTORE3,'
      '  PORTO,'
      '  ASPETTO,'
      '  SPEDIZIONE,'
      '  PESO_NETTO,'
      '  PESO_LORDO,'
      '  CUBAGGIO,'
      '  DESTINARIO,'
      '  IMBALLO,'
      '  SCONTO1,'
      '  AGENTE_ID,'
      '  DATA_CONSEGNA,'
      '  NUM_DOC,'
      '  NRCOLLI,'
      '  SCONTO2,'
      '  IMPORTO_SCONTO,'
      '  NOTA,'
      '  SOSPESO,'
      '  IVA_SOSPESA,'
      '  COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE,'
      '  ATTIVITA2,'
      '  SUBATTIVITA2,'
      '  SOGGETTO_CEE,'
      '  REPORT,'
      '  RILEVA_ACCONTO,'
      '  ORA,'
      '  FATT_ACCOMP,'
      '  TIPO_FATT,'
      '  ST_NOTE_CLIFOR,'
      '  IVATO,'
      '  STAMPATO,'
      '  DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE,'
      '  NUM_DOC2,'
      '  SERIE_DOC2,'
      '  MESE_CONT,'
      '  ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO,'
      '  SPESE_BOLLI,'
      '  SPESE_ACCESSORIE,'
      '  SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS,'
      '  CAU_TRASP_ID,'
      '  PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA,'
      '  TOTALE_MERCE,'
      '  TOTALE_SERVIZI,'
      '  TOTALE,'
      '  TOTALE_IVA,'
      '  TOTALE_IVATO,'
      '  TOTALE_SCONTI,'
      '  TOTALE_EURO,'
      '  TOTALE_EURO_IVATO,'
      '  CODIVA1,'
      '  ALIVA1,'
      '  IMPON1,'
      '  IMPOSTA1,'
      '  CODIVA2,'
      '  ALIVA2,'
      '  IMPON2,'
      '  IMPOSTA2,'
      '  CODIVA3,'
      '  ALIVA3,'
      '  IMPON3,'
      '  IMPOSTA3,'
      '  CODIVA4,'
      '  ALIVA4,'
      '  IMPON4,'
      '  IMPOSTA4,'
      '  CODIVA5,'
      '  ALIVA5,'
      '  IMPON5,'
      '  IMPOSTA5,'
      '  TOT_SPESE,'
      '  ALTRA_DEST,'
      '  SERIE_DOC,'
      '  CLI_FOR_IND,'
      '  ACCONTO,'
      '  RATA1_IMPORTO,'
      '  RATA2_IMPORTO,'
      '  RATA3_IMPORTO,'
      '  RATA4_IMPORTO,'
      '  RATA5_IMPORTO,'
      '  RATA6_IMPORTO,'
      '  TEL1,'
      '  TEL2,'
      '  TEL3,'
      '  IVA_ESENTE,'
      '  IVA_ESENTE_ID,'
      '  VETTORE_IND,'
      '  VETTORE_IND2,'
      '  CLI_FOR_IND2,'
      '  RATA1_DATA,'
      '  RATA2_DATA,'
      '  RATA3_DATA,'
      '  RATA4_DATA,'
      '  RATA5_DATA,'
      '  RATA6_DATA,'
      '  PIANOCONTO_ID,'
      '  ALTRA_DEST2,'
      '  CA_ID'
      'from TAB_DOCUMENTI '
      'where'
      '  ID_DOCUMENTO = :ID_DOCUMENTO')
    SelectSQL.Strings = (
      
        'select TAB_DOCUMENTI.*,TAB_CLI_FOR.DENOMINAZIONE AS CLIFORDESCR,' +
        'TAB_CLI_FOR. PARTITA_IVA AS CliForPARTITAiva FROM TAB_DOCUMENTI'
      
        'INNER JOIN TAB_CLI_FOR ON TAB_DOCUMENTI.CLIFOR_ID =TAB_CLI_FOR.I' +
        'D_CLI_FOR'
      'WHERE TIPO_DOC = :parTipoDoc'
      'Order By DATA_DOC, Num_DOC')
    ModifySQL.Strings = (
      'update TAB_DOCUMENTI'
      'set'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  TESTATA_PN_ID = :TESTATA_PN_ID,'
      '  CAUSALE_DOC = :CAUSALE_DOC,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  DA_FATTURARE = :DA_FATTURARE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  DEPOSITO = :DEPOSITO,'
      '  CONTRO_CLIFOR_ID = :CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR = :CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO = :CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO = :CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG = :CONTRO_CAUS_MAG,'
      '  ATTIVITA = :ATTIVITA,'
      '  SUBATTIVITA = :SUBATTIVITA,'
      '  DATA_REGISTRAZIONE = :DATA_REGISTRAZIONE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_CONFERMA = :DATA_CONFERMA,'
      '  DATA_EVASIONE = :DATA_EVASIONE,'
      '  STATO_DOCUMENTO = :STATO_DOCUMENTO,'
      '  STATO_CONTABILITA = :STATO_CONTABILITA,'
      '  MONETA_ID = :MONETA_ID,'
      '  CAMBIO = :CAMBIO,'
      '  KINGUA_ID = :KINGUA_ID,'
      '  LISTINO = :LISTINO,'
      '  NS_RIFERIMENTO = :NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO = :VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE = :CAUSALE_CONTABILE,'
      '  CODICE_BOLL = :CODICE_BOLL,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  BANCA_CLIFOR = :BANCA_CLIFOR,'
      '  BANCA_AZIENDA = :BANCA_AZIENDA,'
      '  VETTORE1 = :VETTORE1,'
      '  VETTORE2 = :VETTORE2,'
      '  VETTORE3 = :VETTORE3,'
      '  PORTO = :PORTO,'
      '  ASPETTO = :ASPETTO,'
      '  SPEDIZIONE = :SPEDIZIONE,'
      '  PESO_NETTO = :PESO_NETTO,'
      '  PESO_LORDO = :PESO_LORDO,'
      '  CUBAGGIO = :CUBAGGIO,'
      '  DESTINARIO = :DESTINARIO,'
      '  IMBALLO = :IMBALLO,'
      '  SCONTO1 = :SCONTO1,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  DATA_CONSEGNA = :DATA_CONSEGNA,'
      '  NUM_DOC = :NUM_DOC,'
      '  NRCOLLI = :NRCOLLI,'
      '  SCONTO2 = :SCONTO2,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  NOTA = :NOTA,'
      '  SOSPESO = :SOSPESO,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  COD_IVA_ESENTE = :COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI = :COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO = :COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO = :COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO = :COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE = :COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE = :COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE = :ACCORPA_RIGHE,'
      '  ATTIVITA2 = :ATTIVITA2,'
      '  SUBATTIVITA2 = :SUBATTIVITA2,'
      '  SOGGETTO_CEE = :SOGGETTO_CEE,'
      '  REPORT = :REPORT,'
      '  RILEVA_ACCONTO = :RILEVA_ACCONTO,'
      '  ORA = :ORA,'
      '  FATT_ACCOMP = :FATT_ACCOMP,'
      '  TIPO_FATT = :TIPO_FATT,'
      '  ST_NOTE_CLIFOR = :ST_NOTE_CLIFOR,'
      '  IVATO = :IVATO,'
      '  STAMPATO = :STAMPATO,'
      '  DATA_COMPETENZA_IVA = :DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO = :MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE = :TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE = :TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE = :TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE = :CAST_MANUALE,'
      '  NUM_DOC2 = :NUM_DOC2,'
      '  SERIE_DOC2 = :SERIE_DOC2,'
      '  MESE_CONT = :MESE_CONT,'
      '  ALTRE_DERT_SI_NO = :ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO = :SPESE_IMBALLO,'
      '  SPESE_BOLLI = :SPESE_BOLLI,'
      '  SPESE_ACCESSORIE = :SPESE_ACCESSORIE,'
      '  SPESE_INCASSO = :SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE = :SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS = :SPESE_CONTRASS,'
      '  CAU_TRASP_ID = :CAU_TRASP_ID,'
      '  PER_ALTRA_DEST = :PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  TOTALE_MERCE = :TOTALE_MERCE,'
      '  TOTALE_SERVIZI = :TOTALE_SERVIZI,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_IVA = :TOTALE_IVA,'
      '  TOTALE_IVATO = :TOTALE_IVATO,'
      '  TOTALE_SCONTI = :TOTALE_SCONTI,'
      '  TOTALE_EURO = :TOTALE_EURO,'
      '  TOTALE_EURO_IVATO = :TOTALE_EURO_IVATO,'
      '  CODIVA1 = :CODIVA1,'
      '  ALIVA1 = :ALIVA1,'
      '  IMPON1 = :IMPON1,'
      '  IMPOSTA1 = :IMPOSTA1,'
      '  CODIVA2 = :CODIVA2,'
      '  ALIVA2 = :ALIVA2,'
      '  IMPON2 = :IMPON2,'
      '  IMPOSTA2 = :IMPOSTA2,'
      '  CODIVA3 = :CODIVA3,'
      '  ALIVA3 = :ALIVA3,'
      '  IMPON3 = :IMPON3,'
      '  IMPOSTA3 = :IMPOSTA3,'
      '  CODIVA4 = :CODIVA4,'
      '  ALIVA4 = :ALIVA4,'
      '  IMPON4 = :IMPON4,'
      '  IMPOSTA4 = :IMPOSTA4,'
      '  CODIVA5 = :CODIVA5,'
      '  ALIVA5 = :ALIVA5,'
      '  IMPON5 = :IMPON5,'
      '  IMPOSTA5 = :IMPOSTA5,'
      '  TOT_SPESE = :TOT_SPESE,'
      '  ALTRA_DEST = :ALTRA_DEST,'
      '  SERIE_DOC = :SERIE_DOC,'
      '  CLI_FOR_IND = :CLI_FOR_IND,'
      '  ACCONTO = :ACCONTO,'
      '  RATA1_IMPORTO = :RATA1_IMPORTO,'
      '  RATA2_IMPORTO = :RATA2_IMPORTO,'
      '  RATA3_IMPORTO = :RATA3_IMPORTO,'
      '  RATA4_IMPORTO = :RATA4_IMPORTO,'
      '  RATA5_IMPORTO = :RATA5_IMPORTO,'
      '  RATA6_IMPORTO = :RATA6_IMPORTO,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  IVA_ESENTE = :IVA_ESENTE,'
      '  IVA_ESENTE_ID = :IVA_ESENTE_ID,'
      '  VETTORE_IND = :VETTORE_IND,'
      '  VETTORE_IND2 = :VETTORE_IND2,'
      '  CLI_FOR_IND2 = :CLI_FOR_IND2,'
      '  RATA1_DATA = :RATA1_DATA,'
      '  RATA2_DATA = :RATA2_DATA,'
      '  RATA3_DATA = :RATA3_DATA,'
      '  RATA4_DATA = :RATA4_DATA,'
      '  RATA5_DATA = :RATA5_DATA,'
      '  RATA6_DATA = :RATA6_DATA,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  ALTRA_DEST2 = :ALTRA_DEST2,'
      '  CA_ID = :CA_ID'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    GeneratorField.Field = 'ID_DOCUMENTO'
    GeneratorField.Generator = 'GEN_ID_DOC'
    Left = 400
    Top = 384
    object ibqTab_DocNUM_DOC: TIntegerField
      DisplayLabel = 'Num.Doc.'
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC"'
    end
    object ibqTab_DocCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'C/F'
      Size = 2
      Calculated = True
    end
    object ibqTab_DocCAUSALE_MAGAZZINO: TIBStringField
      DisplayLabel = 'Causale'
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object ibqTab_DocCLIFORDESCR: TIBStringField
      DisplayLabel = 'Rag.Soc'
      FieldName = 'CLIFORDESCR'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object ibqTab_DocDATA_DOC: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object ibqTab_DocTOTALE: TFloatField
      DisplayLabel = 'Imponibile'
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
      currency = True
    end
    object ibqTab_DocTOTALE_IVATO: TFloatField
      DisplayLabel = 'Totale'
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVATO"'
      currency = True
    end
    object ibqTab_DocTOTALE_IVA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVA"'
      currency = True
    end
    object ibqTab_DocDEPOSITO: TIBStringField
      DisplayLabel = 'Dep.'
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object ibqTab_DocID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."ID_DOCUMENTO"'
      Required = True
    end
    object ibqTab_DocTESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI"."TESTATA_PN_ID"'
    end
    object ibqTab_DocCAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_DOC"'
      Size = 10
    end
    object ibqTab_DocDA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI"."DA_FATTURARE"'
    end
    object ibqTab_DocCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CLIFOR_ID"'
    end
    object ibqTab_DocTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object ibqTab_DocCONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CLIFOR_ID"'
    end
    object ibqTab_DocTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object ibqTab_DocCONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."CONTRO_TIPO_CLIFOR"'
    end
    object ibqTab_DocCONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object ibqTab_DocCONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object ibqTab_DocATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 5
    end
    object ibqTab_DocSUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA"'
      Size = 2
    end
    object ibqTab_DocDATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_REGISTRAZIONE"'
    end
    object ibqTab_DocDATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONFERMA"'
    end
    object ibqTab_DocDATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_EVASIONE"'
    end
    object ibqTab_DocSTATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."STATO_DOCUMENTO"'
    end
    object ibqTab_DocSTATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI"."STATO_CONTABILITA"'
    end
    object ibqTab_DocMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI"."MONETA_ID"'
      Size = 4
    end
    object ibqTab_DocCAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI"."CAMBIO"'
    end
    object ibqTab_DocKINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI"."KINGUA_ID"'
      Size = 4
    end
    object ibqTab_DocLISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI"."LISTINO"'
      Size = 10
    end
    object ibqTab_DocNS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."NS_RIFERIMENTO"'
      Size = 50
    end
    object ibqTab_DocVS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."VS_RIFERIMENTO"'
      Size = 50
    end
    object ibqTab_DocCAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object ibqTab_DocCODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object ibqTab_DocPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibqTab_DocBANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."BANCA_CLIFOR"'
      Size = 5
    end
    object ibqTab_DocBANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI"."BANCA_AZIENDA"'
      Size = 5
    end
    object ibqTab_DocVETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI"."VETTORE1"'
      Size = 7
    end
    object ibqTab_DocVETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI"."VETTORE2"'
      Size = 7
    end
    object ibqTab_DocVETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI"."VETTORE3"'
      Size = 7
    end
    object ibqTab_DocPORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI"."PORTO"'
      Size = 32
    end
    object ibqTab_DocASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI"."ASPETTO"'
      Size = 4
    end
    object ibqTab_DocSPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPEDIZIONE"'
      Size = 4
    end
    object ibqTab_DocPESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI"."PESO_NETTO"'
      DisplayFormat = '#,##.000'
    end
    object ibqTab_DocPESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI"."PESO_LORDO"'
      DisplayFormat = '#,##.000'
    end
    object ibqTab_DocCUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI"."CUBAGGIO"'
    end
    object ibqTab_DocDESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI"."DESTINARIO"'
      Size = 4
    end
    object ibqTab_DocIMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI"."IMBALLO"'
      Size = 4
    end
    object ibqTab_DocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DOCUMENTI"."SCONTO1"'
    end
    object ibqTab_DocAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI"."AGENTE_ID"'
      Size = 4
    end
    object ibqTab_DocDATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONSEGNA"'
    end
    object ibqTab_DocNRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI"."NRCOLLI"'
    end
    object ibqTab_DocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DOCUMENTI"."SCONTO2"'
    end
    object ibqTab_DocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_SCONTO"'
      currency = True
    end
    object ibqTab_DocNOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI"."NOTA"'
      Size = 100
    end
    object ibqTab_DocSOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI"."SOSPESO"'
    end
    object ibqTab_DocIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI"."IVA_SOSPESA"'
    end
    object ibqTab_DocCOD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_ESENTE"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object ibqTab_DocCOD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object ibqTab_DocACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI"."ACCORPA_RIGHE"'
    end
    object ibqTab_DocATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 2
    end
    object ibqTab_DocSUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA2"'
      Size = 2
    end
    object ibqTab_DocSOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI"."SOGGETTO_CEE"'
    end
    object ibqTab_DocREPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI"."REPORT"'
      Size = 50
    end
    object ibqTab_DocRILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI"."RILEVA_ACCONTO"'
    end
    object ibqTab_DocORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI"."ORA"'
      Size = 5
    end
    object ibqTab_DocFATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI"."FATT_ACCOMP"'
    end
    object ibqTab_DocTIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI"."TIPO_FATT"'
    end
    object ibqTab_DocST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."ST_NOTE_CLIFOR"'
    end
    object ibqTab_DocIVATO: TSmallintField
      FieldName = 'IVATO'
      Origin = '"TAB_DOCUMENTI"."IVATO"'
    end
    object ibqTab_DocSTAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI"."STAMPATO"'
    end
    object ibqTab_DocDATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI"."DATA_COMPETENZA_IVA"'
    end
    object ibqTab_DocMEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI"."MEZZO_TRASPORTO"'
    end
    object ibqTab_DocTOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_PROVVIGIONE"'
      currency = True
    end
    object ibqTab_DocTIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TIPO_PROVVIGIONE"'
    end
    object ibqTab_DocTOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_IMP_PROVVIGIONE"'
      currency = True
    end
    object ibqTab_DocCAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI"."CAST_MANUALE"'
    end
    object ibqTab_DocNUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC2"'
    end
    object ibqTab_DocSERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC2"'
      Size = 2
    end
    object ibqTab_DocMESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI"."MESE_CONT"'
    end
    object ibqTab_DocALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI"."ALTRE_DERT_SI_NO"'
    end
    object ibqTab_DocSPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI"."SPESE_IMBALLO"'
      currency = True
    end
    object ibqTab_DocSPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."SPESE_BOLLI"'
      currency = True
    end
    object ibqTab_DocSPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI"."SPESE_ACCESSORIE"'
      currency = True
    end
    object ibqTab_DocSPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."SPESE_INCASSO"'
      currency = True
    end
    object ibqTab_DocSPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPESE_SPEDIZIONE"'
      currency = True
    end
    object ibqTab_DocSPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI"."SPESE_CONTRASS"'
      currency = True
    end
    object ibqTab_DocCAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI"."CAU_TRASP_ID"'
      Size = 32
    end
    object ibqTab_DocPER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."PER_ALTRA_DEST"'
    end
    object ibqTab_DocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_CON_IVA"'
      currency = True
    end
    object ibqTab_DocTOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI"."TOTALE_MERCE"'
      currency = True
    end
    object ibqTab_DocTOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SERVIZI"'
      currency = True
    end
    object ibqTab_DocTOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SCONTI"'
      currency = True
    end
    object ibqTab_DocTOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
      currency = True
    end
    object ibqTab_DocTOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO_IVATO"'
      currency = True
    end
    object ibqTab_DocCODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI"."CODIVA1"'
      Size = 4
    end
    object ibqTab_DocALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI"."ALIVA1"'
    end
    object ibqTab_DocIMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI"."IMPON1"'
      currency = True
    end
    object ibqTab_DocIMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA1"'
      currency = True
    end
    object ibqTab_DocCODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI"."CODIVA2"'
      Size = 4
    end
    object ibqTab_DocALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI"."ALIVA2"'
    end
    object ibqTab_DocIMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI"."IMPON2"'
      currency = True
    end
    object ibqTab_DocIMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA2"'
      currency = True
    end
    object ibqTab_DocCODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI"."CODIVA3"'
      Size = 4
    end
    object ibqTab_DocALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI"."ALIVA3"'
    end
    object ibqTab_DocIMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI"."IMPON3"'
      currency = True
    end
    object ibqTab_DocIMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA3"'
      currency = True
    end
    object ibqTab_DocCODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI"."CODIVA4"'
      Size = 4
    end
    object ibqTab_DocALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI"."ALIVA4"'
    end
    object ibqTab_DocIMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI"."IMPON4"'
      currency = True
    end
    object ibqTab_DocIMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA4"'
      currency = True
    end
    object ibqTab_DocCODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI"."CODIVA5"'
      Size = 4
    end
    object ibqTab_DocALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI"."ALIVA5"'
    end
    object ibqTab_DocIMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI"."IMPON5"'
      currency = True
    end
    object ibqTab_DocIMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA5"'
      currency = True
    end
    object ibqTab_DocTOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI"."TOT_SPESE"'
    end
    object ibqTab_DocALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST"'
      Size = 100
    end
    object ibqTab_DocSERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC"'
      Size = 10
    end
    object ibqTab_DocCLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND"'
      Size = 255
    end
    object ibqTab_DocACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI"."ACCONTO"'
      currency = True
    end
    object ibqTab_DocRATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
      currency = True
    end
    object ibqTab_DocRATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
      currency = True
    end
    object ibqTab_DocRATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
      currency = True
    end
    object ibqTab_DocRATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
      currency = True
    end
    object ibqTab_DocRATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
      currency = True
    end
    object ibqTab_DocRATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
      currency = True
    end
    object ibqTab_DocTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI"."TEL1"'
      Size = 15
    end
    object ibqTab_DocTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI"."TEL2"'
      Size = 15
    end
    object ibqTab_DocTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI"."TEL3"'
      Size = 15
    end
    object ibqTab_DocIVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE"'
    end
    object ibqTab_DocIVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE_ID"'
    end
    object ibqTab_DocVETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND"'
      Size = 100
    end
    object ibqTab_DocVETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND2"'
      Size = 100
    end
    object ibqTab_DocCLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND2"'
      Size = 255
    end
    object ibqTab_DocRATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object ibqTab_DocRATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object ibqTab_DocRATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object ibqTab_DocRATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object ibqTab_DocRATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object ibqTab_DocRATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object ibqTab_DocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DOCUMENTI"."PIANOCONTO_ID"'
    end
    object ibqTab_DocALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST2"'
      Size = 100
    end
    object ibqTab_DocCLIFORPARTITAIVA: TIBStringField
      FieldName = 'CLIFORPARTITAIVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object ibqTab_DocCA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
  end
  object ibqryDetDoc: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_DET_DOC'
      'where'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into TAB_DET_DOC'
      
        '  (ID_DOC_DET, TIPO_RIGA, CODICE_ARTICOLO, DESCR, COSTO, COSTOIN' +
        'VALUTA, '
      
        '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, D' +
        'EP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, DATA_REG, '
      
        '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, RIF_D' +
        'DT_ID_DOC, '
      
        '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, RIF_PRE_I' +
        'D_DOC, '
      
        '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, RIF_ORD_NUM' +
        '_DOC, RIF_DDT_NUM_DOC, '
      
        '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, OP_V' +
        'AL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C, '
      '   NUM_RIGA_ID)'
      'values'
      
        '  (:ID_DOC_DET, :TIPO_RIGA, :CODICE_ARTICOLO, :DESCR, :COSTO, :C' +
        'OSTOINVALUTA, '
      
        '   :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA, :SCONTO1, :SCON' +
        'TO2, :SCONTO3, '
      
        '   :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, :IMPORTOINVALUTA, :OMAGG' +
        'IO, :DEP, '
      
        '   :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVATO, :IMPORTO_CON' +
        '_IVA, :CODICE_IVA_ID, '
      
        '   :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :RIF_A_DDT, :RIF_I' +
        'D_DOC_DET, '
      
        '   :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, :RIF_ORD_ID_DOC, :RIF_ORD' +
        '_DATA_DOC, '
      
        '   :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, :PIANOCONTO_ID, :RIF_PRE_' +
        'NUM_DOC, '
      
        '   :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, :OP_QTA_DISPONIBILE, :OP_' +
        'VAL_DISPONIBILE, '
      
        '   :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC_ID, :TOTCOLLI, :TOTS' +
        'CAT, :PREZZOLIST, '
      '   :SCHEDA, :PASSATA, :COL, :A, :B, :C, :NUM_RIGA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOC_DET,'
      '  TIPO_RIGA,'
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  COSTO,'
      '  COSTOINVALUTA,'
      '  UNITA_MISURA,'
      '  FATTCONV,'
      '  QTA_UM,'
      '  QUANTITA,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  SCONTO4,'
      '  IMPORTO_SCONTO,'
      '  IMPORTO,'
      '  IMPORTOINVALUTA,'
      '  OMAGGIO,'
      '  DEP,'
      '  SCONTO_EQ,'
      '  PERC_PROVV,'
      '  TIPO_SERVIZIO,'
      '  IVATO,'
      '  IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID,'
      '  DATA_REG,'
      '  RIF_A,'
      '  RIF_A_PRE,'
      '  RIF_A_ORD,'
      '  RIF_A_DDT,'
      '  RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA,'
      '  DOC_ID,'
      '  TOTCOLLI,'
      '  TOTSCAT,'
      '  PREZZOLIST,'
      '  SCHEDA,'
      '  PASSATA,'
      '  COL,'
      '  A,'
      '  B,'
      '  C,'
      '  NUM_RIGA_ID'
      'from TAB_DET_DOC '
      'where'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'SELECT * FROM  TAB_DET_DOC'
      'where doc_id=:id_doc'
      'ORDER BY DOC_ID')
    ModifySQL.Strings = (
      'update TAB_DET_DOC'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    Left = 400
    Top = 296
  end
  object tabSeriali: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from seriali'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  CODICE = :OLD_CODICE and'
      '  SERIALE = :OLD_SERIALE and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    InsertSQL.Strings = (
      'insert into seriali'
      '  (ID_DOC, CODICE, DESCRIZIONE, SERIALE, ID_DET_DOC)'
      'values'
      '  (:ID_DOC, :CODICE, :DESCRIZIONE, :SERIALE, :ID_DET_DOC)')
    RefreshSQL.Strings = (
      'Select *'
      'from seriali '
      'where'
      '  ID_DOC = :ID_DOC and'
      '  CODICE = :CODICE and'
      '  SERIALE = :SERIALE and'
      '  ID_DET_DOC = :ID_DET_DOC')
    SelectSQL.Strings = (
      'select * from seriali'
      
        'where codice=:codice_Articolo and id_doc=:doc_id and id_det_doc=' +
        ':num_riga_id'
      'order by seriale')
    ModifySQL.Strings = (
      'update seriali'
      'set'
      '  ID_DOC = :ID_DOC,'
      '  CODICE = :CODICE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  SERIALE = :SERIALE,'
      '  ID_DET_DOC = :ID_DET_DOC'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  CODICE = :OLD_CODICE and'
      '  SERIALE = :OLD_SERIALE and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    DataSource = DataSource1
    Left = 536
    Top = 120
    object tabSerialiID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Origin = '"SERIALI"."ID_DOC"'
      Required = True
    end
    object tabSerialiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"SERIALI"."CODICE"'
    end
    object tabSerialiDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"SERIALI"."DESCRIZIONE"'
      Size = 100
    end
    object tabSerialiID_DET_DOC: TFloatField
      FieldName = 'ID_DET_DOC'
      Origin = '"SERIALI"."ID_DET_DOC"'
    end
    object tabSerialiSERIALE: TIBStringField
      FieldName = 'SERIALE'
      Origin = '"SERIALI"."SERIALE"'
      Size = 30
    end
  end
  object ibtTabDet_Doc: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_DET_DOC'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into TAB_DET_DOC'
      
        '  (ID_DOC_DET, TIPO_RIGA, CODICE_ARTICOLO, DESCR, COSTO, COSTOIN' +
        'VALUTA, '
      
        '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, D' +
        'EP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, DATA_REG, '
      
        '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, RIF_D' +
        'DT_ID_DOC, '
      
        '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, RIF_PRE_I' +
        'D_DOC, '
      
        '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, RIF_ORD_NUM' +
        '_DOC, RIF_DDT_NUM_DOC, '
      
        '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, OP_V' +
        'AL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C, '
      '   NUM_RIGA_ID)'
      'values'
      
        '  (:ID_DOC_DET, :TIPO_RIGA, :CODICE_ARTICOLO, :DESCR, :COSTO, :C' +
        'OSTOINVALUTA, '
      
        '   :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA, :SCONTO1, :SCON' +
        'TO2, :SCONTO3, '
      
        '   :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, :IMPORTOINVALUTA, :OMAGG' +
        'IO, :DEP, '
      
        '   :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVATO, :IMPORTO_CON' +
        '_IVA, :CODICE_IVA_ID, '
      
        '   :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :RIF_A_DDT, :RIF_I' +
        'D_DOC_DET, '
      
        '   :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, :RIF_ORD_ID_DOC, :RIF_ORD' +
        '_DATA_DOC, '
      
        '   :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, :PIANOCONTO_ID, :RIF_PRE_' +
        'NUM_DOC, '
      
        '   :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, :OP_QTA_DISPONIBILE, :OP_' +
        'VAL_DISPONIBILE, '
      
        '   :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC_ID, :TOTCOLLI, :TOTS' +
        'CAT, :PREZZOLIST, '
      '   :SCHEDA, :PASSATA, :COL, :A, :B, :C, :NUM_RIGA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOC_DET,'
      '  TIPO_RIGA,'
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  COSTO,'
      '  COSTOINVALUTA,'
      '  UNITA_MISURA,'
      '  FATTCONV,'
      '  QTA_UM,'
      '  QUANTITA,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  SCONTO4,'
      '  IMPORTO_SCONTO,'
      '  IMPORTO,'
      '  IMPORTOINVALUTA,'
      '  OMAGGIO,'
      '  DEP,'
      '  SCONTO_EQ,'
      '  PERC_PROVV,'
      '  TIPO_SERVIZIO,'
      '  IVATO,'
      '  IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID,'
      '  DATA_REG,'
      '  RIF_A,'
      '  RIF_A_PRE,'
      '  RIF_A_ORD,'
      '  RIF_A_DDT,'
      '  RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA,'
      '  DOC_ID,'
      '  TOTCOLLI,'
      '  TOTSCAT,'
      '  PREZZOLIST,'
      '  SCHEDA,'
      '  PASSATA,'
      '  COL,'
      '  A,'
      '  B,'
      '  C,'
      '  NUM_RIGA_ID'
      'from TAB_DET_DOC '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'select * from TAB_DET_DOC'
      'Where DOC_ID =:ID_Documento'
      'Order by DOC_ID,NUM_RIGA_ID,codice_Articolo')
    ModifySQL.Strings = (
      'update TAB_DET_DOC'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    DataSource = dsoDoc
    Left = 24
    Top = 288
    object ibtTabDet_DocID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object ibtTabDet_DocTIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object ibtTabDet_DocCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object ibtTabDet_DocDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object ibtTabDet_DocCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
      currency = True
      Precision = 4
    end
    object ibtTabDet_DocCOSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
      currency = True
    end
    object ibtTabDet_DocUNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object ibtTabDet_DocFATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object ibtTabDet_DocQTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object ibtTabDet_DocQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
      DisplayFormat = '#,##.000'
    end
    object ibtTabDet_DocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object ibtTabDet_DocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object ibtTabDet_DocSCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object ibtTabDet_DocSCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object ibtTabDet_DocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
      currency = True
    end
    object ibtTabDet_DocIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
      currency = True
    end
    object ibtTabDet_DocIMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
      currency = True
    end
    object ibtTabDet_DocOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object ibtTabDet_DocDEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object ibtTabDet_DocSCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object ibtTabDet_DocPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object ibtTabDet_DocTIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object ibtTabDet_DocIVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
      currency = True
    end
    object ibtTabDet_DocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
      currency = True
    end
    object ibtTabDet_DocCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibtTabDet_DocDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object ibtTabDet_DocRIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object ibtTabDet_DocRIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object ibtTabDet_DocRIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object ibtTabDet_DocRIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object ibtTabDet_DocRIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object ibtTabDet_DocRIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object ibtTabDet_DocRIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object ibtTabDet_DocRIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object ibtTabDet_DocRIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object ibtTabDet_DocRIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object ibtTabDet_DocRIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object ibtTabDet_DocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object ibtTabDet_DocRIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object ibtTabDet_DocRIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object ibtTabDet_DocRIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object ibtTabDet_DocOP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object ibtTabDet_DocOP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object ibtTabDet_DocOP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object ibtTabDet_DocOP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object ibtTabDet_DocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object ibtTabDet_DocTOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object ibtTabDet_DocTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object ibtTabDet_DocPREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
      currency = True
    end
    object ibtTabDet_DocSCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object ibtTabDet_DocPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object ibtTabDet_DocCOL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object ibtTabDet_DocA: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object ibtTabDet_DocB: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object ibtTabDet_DocC: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object ibtTabDet_DocNUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      Required = True
    end
  end
  object ibtNUM_DOC: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AutoCalcFields = False
    DeleteSQL.Strings = (
      'delete from NUM_DOC_ACQ_DDT'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_DOC_ACQ_DDT'
      '  (NUMERO, DATA)'
      'values'
      '  (:NUMERO, :DATA)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_DOC_ACQ_DDT '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_DOC_ACQ_DDT')
    ModifySQL.Strings = (
      'update NUM_DOC_ACQ_DDT'
      'set'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 24
    Top = 152
    object ibtNUM_DOCNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_DOC_ACQ_DDT"."NUMERO"'
      Required = True
    end
    object ibtNUM_DOCDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"NUM_DOC_ACQ_DDT"."DATA"'
    end
  end
  object ibTab_Tipo_Provvigione: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_TIPO_PROVVIGIONE'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_TIPO_PROVVIGIONE'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_TIPO_PROVVIGIONE '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_TIPO_PROVVIGIONE'
      'order by CODICE')
    ModifySQL.Strings = (
      'update TAB_TIPO_PROVVIGIONE'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 24
    Top = 336
    object ibTab_Tipo_ProvvigioneCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_TIPO_PROVVIGIONE"."CODICE"'
      Required = True
      Size = 3
    end
    object ibTab_Tipo_ProvvigioneDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_TIPO_PROVVIGIONE"."DESCR"'
      Size = 30
    end
  end
  object ibTab_Porto: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_PORTO'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_PORTO'
      '  (CODICE, DESCR, MODO_CONSEGNA_ID)'
      'values'
      '  (:CODICE, :DESCR, :MODO_CONSEGNA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  MODO_CONSEGNA_ID'
      'from TAB_PORTO '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_PORTO'
      'order by CODICE')
    ModifySQL.Strings = (
      'update TAB_PORTO'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  MODO_CONSEGNA_ID = :MODO_CONSEGNA_ID'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 16
    Top = 232
    object ibTab_PortoCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_PORTO"."CODICE"'
      Required = True
      Size = 4
    end
    object ibTab_PortoDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PORTO"."DESCR"'
      Size = 50
    end
    object ibTab_PortoMODO_CONSEGNA_ID: TIBStringField
      FieldName = 'MODO_CONSEGNA_ID'
      Origin = '"TAB_PORTO"."MODO_CONSEGNA_ID"'
      Size = 1
    end
  end
  object ibTab_Vettori: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_VETTORI'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_VETTORI'
      
        '  (CODICE, RAGIONE_SOCIALE, PARTITA_IVA, CODICE_FISCALE, INDIRIZ' +
        'ZO, CAP, '
      
        '   CITTA, PROVINCIA_ID, STATO, TEL1, TEL2, FAX, STATO_ISO, MONET' +
        'A_ID, ABBONATO, '
      '   NOTA, PROV)'
      'values'
      
        '  (:CODICE, :RAGIONE_SOCIALE, :PARTITA_IVA, :CODICE_FISCALE, :IN' +
        'DIRIZZO, '
      
        '   :CAP, :CITTA, :PROVINCIA_ID, :STATO, :TEL1, :TEL2, :FAX, :STA' +
        'TO_ISO, '
      '   :MONETA_ID, :ABBONATO, :NOTA, :PROV)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  RAGIONE_SOCIALE,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  INDIRIZZO,'
      '  CAP,'
      '  CITTA,'
      '  PROVINCIA_ID,'
      '  STATO,'
      '  TEL1,'
      '  TEL2,'
      '  FAX,'
      '  STATO_ISO,'
      '  MONETA_ID,'
      '  ABBONATO,'
      '  NOTA,'
      '  PROV'
      'from TAB_VETTORI '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_VETTORI'
      'order by ragione_sociale')
    ModifySQL.Strings = (
      'update TAB_VETTORI'
      'set'
      '  CODICE = :CODICE,'
      '  RAGIONE_SOCIALE = :RAGIONE_SOCIALE,'
      '  PARTITA_IVA = :PARTITA_IVA,'
      '  CODICE_FISCALE = :CODICE_FISCALE,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  CAP = :CAP,'
      '  CITTA = :CITTA,'
      '  PROVINCIA_ID = :PROVINCIA_ID,'
      '  STATO = :STATO,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  FAX = :FAX,'
      '  STATO_ISO = :STATO_ISO,'
      '  MONETA_ID = :MONETA_ID,'
      '  ABBONATO = :ABBONATO,'
      '  NOTA = :NOTA,'
      '  PROV = :PROV'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 160
    Top = 256
    object ibTab_VettoriCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_VETTORI"."CODICE"'
      Required = True
      Size = 7
    end
    object ibTab_VettoriRAGIONE_SOCIALE: TIBStringField
      FieldName = 'RAGIONE_SOCIALE'
      Origin = '"TAB_VETTORI"."RAGIONE_SOCIALE"'
      Size = 30
    end
    object ibTab_VettoriPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_VETTORI"."PARTITA_IVA"'
    end
    object ibTab_VettoriCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_VETTORI"."CODICE_FISCALE"'
      Size = 16
    end
    object ibTab_VettoriINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_VETTORI"."INDIRIZZO"'
      Size = 100
    end
    object ibTab_VettoriCAP: TIBStringField
      FieldName = 'CAP'
      Origin = '"TAB_VETTORI"."CAP"'
      Size = 5
    end
    object ibTab_VettoriCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_VETTORI"."CITTA"'
      Size = 30
    end
    object ibTab_VettoriPROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
      Origin = '"TAB_VETTORI"."PROVINCIA_ID"'
    end
    object ibTab_VettoriSTATO: TIBStringField
      FieldName = 'STATO'
      Origin = '"TAB_VETTORI"."STATO"'
      Size = 2
    end
    object ibTab_VettoriTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_VETTORI"."TEL1"'
      Size = 15
    end
    object ibTab_VettoriTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_VETTORI"."TEL2"'
      Size = 15
    end
    object ibTab_VettoriFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_VETTORI"."FAX"'
      Size = 15
    end
    object ibTab_VettoriSTATO_ISO: TIBStringField
      FieldName = 'STATO_ISO'
      Origin = '"TAB_VETTORI"."STATO_ISO"'
    end
    object ibTab_VettoriMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_VETTORI"."MONETA_ID"'
      Size = 4
    end
    object ibTab_VettoriABBONATO: TSmallintField
      FieldName = 'ABBONATO'
      Origin = '"TAB_VETTORI"."ABBONATO"'
    end
    object ibTab_VettoriNOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_VETTORI"."NOTA"'
      Size = 255
    end
    object ibTab_VettoriPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_VETTORI"."PROV"'
      Size = 2
    end
  end
  object ibTab_Aspetto_Esteriore: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_ASPETTO'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_ASPETTO'
      '  (CODICE, DESCR)'
      'values'
      '  (:CODICE, :DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR'
      'from TAB_ASPETTO '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from TAB_ASPETTO'
      'order by CODICE')
    ModifySQL.Strings = (
      'update TAB_ASPETTO'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 176
    Top = 152
    object ibTab_Aspetto_EsterioreCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_ASPETTO"."CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object ibTab_Aspetto_EsterioreDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ASPETTO"."DESCR"'
      Size = 50
    end
  end
  object ibqryContab: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    AfterInsert = ibqryContabAfterInsert
    DeleteSQL.Strings = (
      'delete from CONTABILITA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into CONTABILITA'
      
        '  (ABBUONO, ASS_DATA_SCAD, AVERE, BANCA_DESCR, BANCA_ID, CLIFOR_' +
        'ID, COD_ESENZ, '
      
        '   CON_DETT, DARE, DATA_DOC, DATA_FATTURA, DATA_MOV, DATA_SCADEN' +
        'ZA, DEPOSITO_CODICE, '
      
        '   DEPOSITO_DESCR, DESCR_ESENZ, DESCR_MOV, DOC_ID, FK_SCADENZA, ' +
        'IMPONIBILE, '
      
        '   IMPORTO, IMPOSTA, IVA_PERC, MESE_COMP, NOME_CONTO, NOTE, NUM_' +
        'ASS, NUM_DOC, '
      
        '   NUM_DOC_LETT, NUM_FATTURA, NUM_PROT, NUM_PROT2, NUM_REG, PAGA' +
        'MENTO_ID, '
      
        '   PIANOCONTO_ID, PK_CODICE, REG_IVA, SBILANCIO, SOTTOCONTO_DESC' +
        'R, TIPO_CLIFOR, '
      '   TIPO_MOV, TOTALE_PAGATO)'
      'values'
      
        '  (:ABBUONO, :ASS_DATA_SCAD, :AVERE, :BANCA_DESCR, :BANCA_ID, :C' +
        'LIFOR_ID, '
      
        '   :COD_ESENZ, :CON_DETT, :DARE, :DATA_DOC, :DATA_FATTURA, :DATA' +
        '_MOV, :DATA_SCADENZA, '
      
        '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :DESCR_ESENZ, :DESCR_MOV, ' +
        ':DOC_ID, '
      
        '   :FK_SCADENZA, :IMPONIBILE, :IMPORTO, :IMPOSTA, :IVA_PERC, :ME' +
        'SE_COMP, '
      
        '   :NOME_CONTO, :NOTE, :NUM_ASS, :NUM_DOC, :NUM_DOC_LETT, :NUM_F' +
        'ATTURA, '
      
        '   :NUM_PROT, :NUM_PROT2, :NUM_REG, :PAGAMENTO_ID, :PIANOCONTO_I' +
        'D, :PK_CODICE, '
      
        '   :REG_IVA, :SBILANCIO, :SOTTOCONTO_DESCR, :TIPO_CLIFOR, :TIPO_' +
        'MOV, :TOTALE_PAGATO)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  NUM_PROT,'
      '  DATA_MOV,'
      '  DATA_DOC,'
      '  NUM_DOC,'
      '  DOC_ID,'
      '  DESCR_MOV,'
      '  SOTTOCONTO_DESCR,'
      '  DARE,'
      '  AVERE,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  BANCA_ID,'
      '  BANCA_DESCR,'
      '  NOTE,'
      '  DATA_SCADENZA,'
      '  TOTALE_PAGATO,'
      '  SBILANCIO,'
      '  PIANOCONTO_ID,'
      '  NOME_CONTO,'
      '  CON_DETT,'
      '  NUM_FATTURA,'
      '  DATA_FATTURA,'
      '  IMPORTO,'
      '  ABBUONO,'
      '  TIPO_MOV,'
      '  IMPONIBILE,'
      '  IMPOSTA,'
      '  IVA_PERC,'
      '  FK_SCADENZA,'
      '  ASS_DATA_SCAD,'
      '  DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR,'
      '  NUM_ASS,'
      '  NUM_PROT2,'
      '  NUM_REG,'
      '  NUM_DOC_LETT,'
      '  PAGAMENTO_ID,'
      '  COD_ESENZ,'
      '  DESCR_ESENZ,'
      '  REG_IVA,'
      '  MESE_COMP'
      'from CONTABILITA '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from CONTABILITA'
      'Order By DATA_DOC,NUM_PROT')
    ModifySQL.Strings = (
      'update CONTABILITA'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  ASS_DATA_SCAD = :ASS_DATA_SCAD,'
      '  AVERE = :AVERE,'
      '  BANCA_DESCR = :BANCA_DESCR,'
      '  BANCA_ID = :BANCA_ID,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  COD_ESENZ = :COD_ESENZ,'
      '  CON_DETT = :CON_DETT,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_FATTURA = :DATA_FATTURA,'
      '  DATA_MOV = :DATA_MOV,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_ESENZ = :DESCR_ESENZ,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  DOC_ID = :DOC_ID,'
      '  FK_SCADENZA = :FK_SCADENZA,'
      '  IMPONIBILE = :IMPONIBILE,'
      '  IMPORTO = :IMPORTO,'
      '  IMPOSTA = :IMPOSTA,'
      '  IVA_PERC = :IVA_PERC,'
      '  MESE_COMP = :MESE_COMP,'
      '  NOME_CONTO = :NOME_CONTO,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_DOC_LETT = :NUM_DOC_LETT,'
      '  NUM_FATTURA = :NUM_FATTURA,'
      '  NUM_PROT = :NUM_PROT,'
      '  NUM_PROT2 = :NUM_PROT2,'
      '  NUM_REG = :NUM_REG,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  PK_CODICE = :PK_CODICE,'
      '  REG_IVA = :REG_IVA,'
      '  SBILANCIO = :SBILANCIO,'
      '  SOTTOCONTO_DESCR = :SOTTOCONTO_DESCR,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  TIPO_MOV = :TIPO_MOV,'
      '  TOTALE_PAGATO = :TOTALE_PAGATO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_CONTABILITA'
    Left = 120
    Top = 8
    object ibqryContabPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTABILITA"."PK_CODICE"'
      Required = True
    end
    object ibqryContabNUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
      Origin = '"CONTABILITA"."NUM_PROT"'
    end
    object ibqryContabDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CONTABILITA"."DATA_MOV"'
    end
    object ibqryContabDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"CONTABILITA"."DATA_DOC"'
    end
    object ibqryContabNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"CONTABILITA"."NUM_DOC"'
    end
    object ibqryContabDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"CONTABILITA"."DOC_ID"'
    end
    object ibqryContabDESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"CONTABILITA"."DESCR_MOV"'
      Size = 100
    end
    object ibqryContabSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Origin = '"CONTABILITA"."SOTTOCONTO_DESCR"'
      Size = 100
    end
    object ibqryContabDARE: TFloatField
      FieldName = 'DARE'
      Origin = '"CONTABILITA"."DARE"'
      currency = True
    end
    object ibqryContabAVERE: TFloatField
      FieldName = 'AVERE'
      Origin = '"CONTABILITA"."AVERE"'
      currency = True
    end
    object ibqryContabCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTABILITA"."CLIFOR_ID"'
    end
    object ibqryContabTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"CONTABILITA"."TIPO_CLIFOR"'
    end
    object ibqryContabBANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
      Origin = '"CONTABILITA"."BANCA_ID"'
    end
    object ibqryContabBANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Origin = '"CONTABILITA"."BANCA_DESCR"'
      Size = 100
    end
    object ibqryContabNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"CONTABILITA"."NOTE"'
      Size = 255
    end
    object ibqryContabDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"CONTABILITA"."DATA_SCADENZA"'
    end
    object ibqryContabTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      Origin = '"CONTABILITA"."TOTALE_PAGATO"'
      currency = True
    end
    object ibqryContabSBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
      Origin = '"CONTABILITA"."SBILANCIO"'
    end
    object ibqryContabPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"CONTABILITA"."PIANOCONTO_ID"'
    end
    object ibqryContabNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Origin = '"CONTABILITA"."NOME_CONTO"'
      Size = 12
    end
    object ibqryContabCON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Origin = '"CONTABILITA"."CON_DETT"'
      Required = True
    end
    object ibqryContabNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
      Origin = '"CONTABILITA"."NUM_FATTURA"'
    end
    object ibqryContabDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
      Origin = '"CONTABILITA"."DATA_FATTURA"'
    end
    object ibqryContabIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"CONTABILITA"."IMPORTO"'
      currency = True
    end
    object ibqryContabABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITA"."ABBUONO"'
      currency = True
    end
    object ibqryContabTIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Origin = '"CONTABILITA"."TIPO_MOV"'
    end
    object ibqryContabIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      Origin = '"CONTABILITA"."IMPONIBILE"'
      currency = True
    end
    object ibqryContabIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = '"CONTABILITA"."IMPOSTA"'
      currency = True
    end
    object ibqryContabIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
      Origin = '"CONTABILITA"."IVA_PERC"'
    end
    object ibqryContabFK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
      Origin = '"CONTABILITA"."FK_SCADENZA"'
    end
    object ibqryContabASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
      Origin = '"CONTABILITA"."ASS_DATA_SCAD"'
    end
    object ibqryContabDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"CONTABILITA"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibqryContabDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"CONTABILITA"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibqryContabNUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object ibqryContabNUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object ibqryContabNUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object ibqryContabNUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object ibqryContabPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibqryContabCOD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object ibqryContabDESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
    object ibqryContabREG_IVA: TIntegerField
      FieldName = 'REG_IVA'
      Origin = '"CONTABILITA"."REG_IVA"'
    end
    object ibqryContabMESE_COMP: TIBStringField
      FieldName = 'MESE_COMP'
      Origin = '"CONTABILITA"."MESE_COMP"'
      Size = 2
    end
  end
  object ibqryPassDoc: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_DOCUMENTI'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    InsertSQL.Strings = (
      'insert into TAB_DOCUMENTI'
      '  (ID_DOCUMENTO, TESTATA_PN_ID, CAUSALE_DOC, TIPO_DOC, '
      'DA_FATTURARE, CLIFOR_ID, '
      '   TIPO_CLIFOR, DEPOSITO, CONTRO_CLIFOR_ID, CONTRO_TIPO_CLIFOR, '
      'CONTRO_DEPOSITO, '
      '   CAUSALE_MAGAZZINO, CONTRO_CAUS_MAG, ATTIVITA, SUBATTIVITA, '
      'DATA_REGISTRAZIONE, '
      '   DATA_DOC, DATA_CONFERMA, DATA_EVASIONE, STATO_DOCUMENTO, '
      'STATO_CONTABILITA, '
      '   MONETA_ID, CAMBIO, KINGUA_ID, LISTINO, NS_RIFERIMENTO, '
      'VS_RIFERIMENTO, '
      '   CAUSALE_CONTABILE, CODICE_BOLL, PAGAMENTO_ID, BANCA_CLIFOR, '
      'BANCA_AZIENDA, '
      '   VETTORE1, VETTORE2, VETTORE3, PORTO, ASPETTO, SPEDIZIONE, '
      'PESO_NETTO, '
      
        '   PESO_LORDO, CUBAGGIO, DESTINARIO, IMBALLO, SCONTO1, AGENTE_ID' +
        ', '
      'DATA_CONSEGNA, '
      '   NUM_DOC, NRCOLLI, SCONTO2, IMPORTO_SCONTO, NOTA, SOSPESO, '
      'IVA_SOSPESA, '
      '   COD_IVA_ESENTE, COD_IVA_SPESE_BOLLI, COD_IVA_SPESE_INCASSO, '
      'COD_IVA_SPESE_IMVALLO, '
      '   COD_IVA_SPESE_CONTRASSEGNO, COD_IVA_SPESE_ACCESSIONE, '
      'COD_IVA_SPESE_SPEDIZIONE, '
      
        '   ACCORPA_RIGHE, ATTIVITA2, SUBATTIVITA2, SOGGETTO_CEE, REPORT,' +
        ' '
      'RILEVA_ACCONTO, '
      
        '   ORA, FATT_ACCOMP, TIPO_FATT, ST_NOTE_CLIFOR, IVATO, STAMPATO,' +
        ' '
      'DATA_COMPETENZA_IVA, '
      '   MEZZO_TRASPORTO, TOT_PROVVIGIONE, TIPO_PROVVIGIONE, '
      'TOT_IMP_PROVVIGIONE, '
      '   CAST_MANUALE, NUM_DOC2, SERIE_DOC2, MESE_CONT, '
      'ALTRE_DERT_SI_NO, SPESE_IMBALLO, '
      
        '   SPESE_BOLLI, SPESE_ACCESSORIE, SPESE_INCASSO, SPESE_SPEDIZION' +
        'E, '
      'SPESE_CONTRASS, '
      '   CAU_TRASP_ID, PER_ALTRA_DEST, IMPORTO_CON_IVA, TOTALE_MERCE, '
      'TOTALE_SERVIZI, '
      
        '   TOTALE, TOTALE_IVA, TOTALE_IVATO, TOTALE_SCONTI, TOTALE_EURO,' +
        ' '
      'TOTALE_EURO_IVATO, '
      
        '   CODIVA1, ALIVA1, IMPON1, IMPOSTA1, CODIVA2, ALIVA2, IMPON2, I' +
        'MPOSTA2, '
      
        '   CODIVA3, ALIVA3, IMPON3, IMPOSTA3, CODIVA4, ALIVA4, IMPON4, I' +
        'MPOSTA4, '
      '   CODIVA5, ALIVA5, IMPON5, IMPOSTA5, TOT_SPESE, ALTRA_DEST, '
      'SERIE_DOC, '
      '   CLI_FOR_IND, ACCONTO, RATA1_IMPORTO, RATA2_IMPORTO, '
      'RATA3_IMPORTO, RATA4_IMPORTO, '
      '   RATA5_IMPORTO, RATA6_IMPORTO, TEL1, TEL2, TEL3, IVA_ESENTE, '
      'IVA_ESENTE_ID, '
      
        '   VETTORE_IND, VETTORE_IND2, CLI_FOR_IND2, RATA1_DATA, RATA2_DA' +
        'TA, '
      'RATA3_DATA, '
      
        '   RATA4_DATA, RATA5_DATA, RATA6_DATA, PIANOCONTO_ID, ALTRA_DEST' +
        '2)'
      'values'
      '  (:ID_DOCUMENTO, :TESTATA_PN_ID, :CAUSALE_DOC, :TIPO_DOC, '
      ':DA_FATTURARE, '
      '   :CLIFOR_ID, :TIPO_CLIFOR, :DEPOSITO, :CONTRO_CLIFOR_ID, '
      ':CONTRO_TIPO_CLIFOR, '
      '   :CONTRO_DEPOSITO, :CAUSALE_MAGAZZINO, :CONTRO_CAUS_MAG, '
      ':ATTIVITA, :SUBATTIVITA, '
      
        '   :DATA_REGISTRAZIONE, :DATA_DOC, :DATA_CONFERMA, :DATA_EVASION' +
        'E, '
      ':STATO_DOCUMENTO, '
      
        '   :STATO_CONTABILITA, :MONETA_ID, :CAMBIO, :KINGUA_ID, :LISTINO' +
        ', '
      ':NS_RIFERIMENTO, '
      
        '   :VS_RIFERIMENTO, :CAUSALE_CONTABILE, :CODICE_BOLL, :PAGAMENTO' +
        '_ID, '
      ':BANCA_CLIFOR, '
      
        '   :BANCA_AZIENDA, :VETTORE1, :VETTORE2, :VETTORE3, :PORTO, :ASP' +
        'ETTO, '
      ':SPEDIZIONE, '
      '   :PESO_NETTO, :PESO_LORDO, :CUBAGGIO, :DESTINARIO, :IMBALLO, '
      ':SCONTO1, '
      '   :AGENTE_ID, :DATA_CONSEGNA, :NUM_DOC, :NRCOLLI, :SCONTO2, '
      ':IMPORTO_SCONTO, '
      '   :NOTA, :SOSPESO, :IVA_SOSPESA, :COD_IVA_ESENTE, '
      ':COD_IVA_SPESE_BOLLI, '
      '   :COD_IVA_SPESE_INCASSO, :COD_IVA_SPESE_IMVALLO, '
      ':COD_IVA_SPESE_CONTRASSEGNO, '
      '   :COD_IVA_SPESE_ACCESSIONE, :COD_IVA_SPESE_SPEDIZIONE, '
      ':ACCORPA_RIGHE, '
      
        '   :ATTIVITA2, :SUBATTIVITA2, :SOGGETTO_CEE, :REPORT, :RILEVA_AC' +
        'CONTO, '
      
        '   :ORA, :FATT_ACCOMP, :TIPO_FATT, :ST_NOTE_CLIFOR, :IVATO, :STA' +
        'MPATO, '
      '   :DATA_COMPETENZA_IVA, :MEZZO_TRASPORTO, :TOT_PROVVIGIONE, '
      ':TIPO_PROVVIGIONE, '
      '   :TOT_IMP_PROVVIGIONE, :CAST_MANUALE, :NUM_DOC2, :SERIE_DOC2, '
      ':MESE_CONT, '
      '   :ALTRE_DERT_SI_NO, :SPESE_IMBALLO, :SPESE_BOLLI, '
      ':SPESE_ACCESSORIE, '
      '   :SPESE_INCASSO, :SPESE_SPEDIZIONE, :SPESE_CONTRASS, '
      ':CAU_TRASP_ID, :PER_ALTRA_DEST, '
      '   :IMPORTO_CON_IVA, :TOTALE_MERCE, :TOTALE_SERVIZI, :TOTALE, '
      ':TOTALE_IVA, '
      
        '   :TOTALE_IVATO, :TOTALE_SCONTI, :TOTALE_EURO, :TOTALE_EURO_IVA' +
        'TO, '
      ':CODIVA1, '
      
        '   :ALIVA1, :IMPON1, :IMPOSTA1, :CODIVA2, :ALIVA2, :IMPON2, :IMP' +
        'OSTA2, '
      
        '   :CODIVA3, :ALIVA3, :IMPON3, :IMPOSTA3, :CODIVA4, :ALIVA4, :IM' +
        'PON4, '
      ':IMPOSTA4, '
      
        '   :CODIVA5, :ALIVA5, :IMPON5, :IMPOSTA5, :TOT_SPESE, :ALTRA_DES' +
        'T, '
      ':SERIE_DOC, '
      '   :CLI_FOR_IND, :ACCONTO, :RATA1_IMPORTO, :RATA2_IMPORTO, '
      ':RATA3_IMPORTO, '
      
        '   :RATA4_IMPORTO, :RATA5_IMPORTO, :RATA6_IMPORTO, :TEL1, :TEL2,' +
        ' '
      ':TEL3, '
      '   :IVA_ESENTE, :IVA_ESENTE_ID, :VETTORE_IND, :VETTORE_IND2, '
      ':CLI_FOR_IND2, '
      
        '   :RATA1_DATA, :RATA2_DATA, :RATA3_DATA, :RATA4_DATA, :RATA5_DA' +
        'TA, '
      ':RATA6_DATA, '
      '   :PIANOCONTO_ID, :ALTRA_DEST2)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOCUMENTO,'
      '  TESTATA_PN_ID,'
      '  CAUSALE_DOC,'
      '  TIPO_DOC,'
      '  DA_FATTURARE,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  DEPOSITO,'
      '  CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG,'
      '  ATTIVITA,'
      '  SUBATTIVITA,'
      '  DATA_REGISTRAZIONE,'
      '  DATA_DOC,'
      '  DATA_CONFERMA,'
      '  DATA_EVASIONE,'
      '  STATO_DOCUMENTO,'
      '  STATO_CONTABILITA,'
      '  MONETA_ID,'
      '  CAMBIO,'
      '  KINGUA_ID,'
      '  LISTINO,'
      '  NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE,'
      '  CODICE_BOLL,'
      '  PAGAMENTO_ID,'
      '  BANCA_CLIFOR,'
      '  BANCA_AZIENDA,'
      '  VETTORE1,'
      '  VETTORE2,'
      '  VETTORE3,'
      '  PORTO,'
      '  ASPETTO,'
      '  SPEDIZIONE,'
      '  PESO_NETTO,'
      '  PESO_LORDO,'
      '  CUBAGGIO,'
      '  DESTINARIO,'
      '  IMBALLO,'
      '  SCONTO1,'
      '  AGENTE_ID,'
      '  DATA_CONSEGNA,'
      '  NUM_DOC,'
      '  NRCOLLI,'
      '  SCONTO2,'
      '  IMPORTO_SCONTO,'
      '  NOTA,'
      '  SOSPESO,'
      '  IVA_SOSPESA,'
      '  COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE,'
      '  ATTIVITA2,'
      '  SUBATTIVITA2,'
      '  SOGGETTO_CEE,'
      '  REPORT,'
      '  RILEVA_ACCONTO,'
      '  ORA,'
      '  FATT_ACCOMP,'
      '  TIPO_FATT,'
      '  ST_NOTE_CLIFOR,'
      '  IVATO,'
      '  STAMPATO,'
      '  DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE,'
      '  NUM_DOC2,'
      '  SERIE_DOC2,'
      '  MESE_CONT,'
      '  ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO,'
      '  SPESE_BOLLI,'
      '  SPESE_ACCESSORIE,'
      '  SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS,'
      '  CAU_TRASP_ID,'
      '  PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA,'
      '  TOTALE_MERCE,'
      '  TOTALE_SERVIZI,'
      '  TOTALE,'
      '  TOTALE_IVA,'
      '  TOTALE_IVATO,'
      '  TOTALE_SCONTI,'
      '  TOTALE_EURO,'
      '  TOTALE_EURO_IVATO,'
      '  CODIVA1,'
      '  ALIVA1,'
      '  IMPON1,'
      '  IMPOSTA1,'
      '  CODIVA2,'
      '  ALIVA2,'
      '  IMPON2,'
      '  IMPOSTA2,'
      '  CODIVA3,'
      '  ALIVA3,'
      '  IMPON3,'
      '  IMPOSTA3,'
      '  CODIVA4,'
      '  ALIVA4,'
      '  IMPON4,'
      '  IMPOSTA4,'
      '  CODIVA5,'
      '  ALIVA5,'
      '  IMPON5,'
      '  IMPOSTA5,'
      '  TOT_SPESE,'
      '  ALTRA_DEST,'
      '  SERIE_DOC,'
      '  CLI_FOR_IND,'
      '  ACCONTO,'
      '  RATA1_IMPORTO,'
      '  RATA2_IMPORTO,'
      '  RATA3_IMPORTO,'
      '  RATA4_IMPORTO,'
      '  RATA5_IMPORTO,'
      '  RATA6_IMPORTO,'
      '  TEL1,'
      '  TEL2,'
      '  TEL3,'
      '  IVA_ESENTE,'
      '  IVA_ESENTE_ID,'
      '  VETTORE_IND,'
      '  VETTORE_IND2,'
      '  CLI_FOR_IND2,'
      '  RATA1_DATA,'
      '  RATA2_DATA,'
      '  RATA3_DATA,'
      '  RATA4_DATA,'
      '  RATA5_DATA,'
      '  RATA6_DATA,'
      '  PIANOCONTO_ID,'
      '  ALTRA_DEST2'
      'from TAB_DOCUMENTI '
      'where'
      '  ID_DOCUMENTO = :ID_DOCUMENTO')
    SelectSQL.Strings = (
      'select * from TAB_DOCUMENTI '
      'WHERE TIPO_DOC = :parTipoDoc and'
      'CLIFOR_ID = :parCliForID'
      'And  ID_DOCUMENTO In'
      ' (Select DOC_ID from TAB_DET_DOC)'
      'AND DATA_DOC BETWEEN :parDataDa AND :parDataA'
      'Order By DATA_DOC, Num_DOC')
    ModifySQL.Strings = (
      'update TAB_DOCUMENTI'
      'set'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  TESTATA_PN_ID = :TESTATA_PN_ID,'
      '  CAUSALE_DOC = :CAUSALE_DOC,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  DA_FATTURARE = :DA_FATTURARE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  DEPOSITO = :DEPOSITO,'
      '  CONTRO_CLIFOR_ID = :CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR = :CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO = :CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO = :CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG = :CONTRO_CAUS_MAG,'
      '  ATTIVITA = :ATTIVITA,'
      '  SUBATTIVITA = :SUBATTIVITA,'
      '  DATA_REGISTRAZIONE = :DATA_REGISTRAZIONE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_CONFERMA = :DATA_CONFERMA,'
      '  DATA_EVASIONE = :DATA_EVASIONE,'
      '  STATO_DOCUMENTO = :STATO_DOCUMENTO,'
      '  STATO_CONTABILITA = :STATO_CONTABILITA,'
      '  MONETA_ID = :MONETA_ID,'
      '  CAMBIO = :CAMBIO,'
      '  KINGUA_ID = :KINGUA_ID,'
      '  LISTINO = :LISTINO,'
      '  NS_RIFERIMENTO = :NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO = :VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE = :CAUSALE_CONTABILE,'
      '  CODICE_BOLL = :CODICE_BOLL,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  BANCA_CLIFOR = :BANCA_CLIFOR,'
      '  BANCA_AZIENDA = :BANCA_AZIENDA,'
      '  VETTORE1 = :VETTORE1,'
      '  VETTORE2 = :VETTORE2,'
      '  VETTORE3 = :VETTORE3,'
      '  PORTO = :PORTO,'
      '  ASPETTO = :ASPETTO,'
      '  SPEDIZIONE = :SPEDIZIONE,'
      '  PESO_NETTO = :PESO_NETTO,'
      '  PESO_LORDO = :PESO_LORDO,'
      '  CUBAGGIO = :CUBAGGIO,'
      '  DESTINARIO = :DESTINARIO,'
      '  IMBALLO = :IMBALLO,'
      '  SCONTO1 = :SCONTO1,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  DATA_CONSEGNA = :DATA_CONSEGNA,'
      '  NUM_DOC = :NUM_DOC,'
      '  NRCOLLI = :NRCOLLI,'
      '  SCONTO2 = :SCONTO2,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  NOTA = :NOTA,'
      '  SOSPESO = :SOSPESO,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  COD_IVA_ESENTE = :COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI = :COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO = :COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO = :COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO = :COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE = :COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE = :COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE = :ACCORPA_RIGHE,'
      '  ATTIVITA2 = :ATTIVITA2,'
      '  SUBATTIVITA2 = :SUBATTIVITA2,'
      '  SOGGETTO_CEE = :SOGGETTO_CEE,'
      '  REPORT = :REPORT,'
      '  RILEVA_ACCONTO = :RILEVA_ACCONTO,'
      '  ORA = :ORA,'
      '  FATT_ACCOMP = :FATT_ACCOMP,'
      '  TIPO_FATT = :TIPO_FATT,'
      '  ST_NOTE_CLIFOR = :ST_NOTE_CLIFOR,'
      '  IVATO = :IVATO,'
      '  STAMPATO = :STAMPATO,'
      '  DATA_COMPETENZA_IVA = :DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO = :MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE = :TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE = :TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE = :TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE = :CAST_MANUALE,'
      '  NUM_DOC2 = :NUM_DOC2,'
      '  SERIE_DOC2 = :SERIE_DOC2,'
      '  MESE_CONT = :MESE_CONT,'
      '  ALTRE_DERT_SI_NO = :ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO = :SPESE_IMBALLO,'
      '  SPESE_BOLLI = :SPESE_BOLLI,'
      '  SPESE_ACCESSORIE = :SPESE_ACCESSORIE,'
      '  SPESE_INCASSO = :SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE = :SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS = :SPESE_CONTRASS,'
      '  CAU_TRASP_ID = :CAU_TRASP_ID,'
      '  PER_ALTRA_DEST = :PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  TOTALE_MERCE = :TOTALE_MERCE,'
      '  TOTALE_SERVIZI = :TOTALE_SERVIZI,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_IVA = :TOTALE_IVA,'
      '  TOTALE_IVATO = :TOTALE_IVATO,'
      '  TOTALE_SCONTI = :TOTALE_SCONTI,'
      '  TOTALE_EURO = :TOTALE_EURO,'
      '  TOTALE_EURO_IVATO = :TOTALE_EURO_IVATO,'
      '  CODIVA1 = :CODIVA1,'
      '  ALIVA1 = :ALIVA1,'
      '  IMPON1 = :IMPON1,'
      '  IMPOSTA1 = :IMPOSTA1,'
      '  CODIVA2 = :CODIVA2,'
      '  ALIVA2 = :ALIVA2,'
      '  IMPON2 = :IMPON2,'
      '  IMPOSTA2 = :IMPOSTA2,'
      '  CODIVA3 = :CODIVA3,'
      '  ALIVA3 = :ALIVA3,'
      '  IMPON3 = :IMPON3,'
      '  IMPOSTA3 = :IMPOSTA3,'
      '  CODIVA4 = :CODIVA4,'
      '  ALIVA4 = :ALIVA4,'
      '  IMPON4 = :IMPON4,'
      '  IMPOSTA4 = :IMPOSTA4,'
      '  CODIVA5 = :CODIVA5,'
      '  ALIVA5 = :ALIVA5,'
      '  IMPON5 = :IMPON5,'
      '  IMPOSTA5 = :IMPOSTA5,'
      '  TOT_SPESE = :TOT_SPESE,'
      '  ALTRA_DEST = :ALTRA_DEST,'
      '  SERIE_DOC = :SERIE_DOC,'
      '  CLI_FOR_IND = :CLI_FOR_IND,'
      '  ACCONTO = :ACCONTO,'
      '  RATA1_IMPORTO = :RATA1_IMPORTO,'
      '  RATA2_IMPORTO = :RATA2_IMPORTO,'
      '  RATA3_IMPORTO = :RATA3_IMPORTO,'
      '  RATA4_IMPORTO = :RATA4_IMPORTO,'
      '  RATA5_IMPORTO = :RATA5_IMPORTO,'
      '  RATA6_IMPORTO = :RATA6_IMPORTO,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  IVA_ESENTE = :IVA_ESENTE,'
      '  IVA_ESENTE_ID = :IVA_ESENTE_ID,'
      '  VETTORE_IND = :VETTORE_IND,'
      '  VETTORE_IND2 = :VETTORE_IND2,'
      '  CLI_FOR_IND2 = :CLI_FOR_IND2,'
      '  RATA1_DATA = :RATA1_DATA,'
      '  RATA2_DATA = :RATA2_DATA,'
      '  RATA3_DATA = :RATA3_DATA,'
      '  RATA4_DATA = :RATA4_DATA,'
      '  RATA5_DATA = :RATA5_DATA,'
      '  RATA6_DATA = :RATA6_DATA,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  ALTRA_DEST2 = :ALTRA_DEST2'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    Left = 168
    Top = 48
    object ibqryPassDocCliFor: TStringField
      DisplayWidth = 255
      FieldKind = fkLookup
      FieldName = 'CliFor'
      LookupDataSet = r_qCliForn
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Size = 255
      Lookup = True
    end
    object ibqryPassDocID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."ID_DOCUMENTO"'
      Required = True
    end
    object ibqryPassDocTESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI"."TESTATA_PN_ID"'
    end
    object ibqryPassDocCAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_DOC"'
      Size = 10
    end
    object ibqryPassDocTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object ibqryPassDocDA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI"."DA_FATTURARE"'
    end
    object ibqryPassDocCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CLIFOR_ID"'
    end
    object ibqryPassDocTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object ibqryPassDocDEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object ibqryPassDocCONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CLIFOR_ID"'
    end
    object ibqryPassDocCONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."CONTRO_TIPO_CLIFOR"'
    end
    object ibqryPassDocCONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object ibqryPassDocCAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object ibqryPassDocCONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object ibqryPassDocATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 5
    end
    object ibqryPassDocSUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA"'
      Size = 2
    end
    object ibqryPassDocDATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_REGISTRAZIONE"'
    end
    object ibqryPassDocDATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
    end
    object ibqryPassDocDATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONFERMA"'
    end
    object ibqryPassDocDATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_EVASIONE"'
    end
    object ibqryPassDocSTATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."STATO_DOCUMENTO"'
    end
    object ibqryPassDocSTATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI"."STATO_CONTABILITA"'
    end
    object ibqryPassDocMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI"."MONETA_ID"'
      Size = 4
    end
    object ibqryPassDocCAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI"."CAMBIO"'
    end
    object ibqryPassDocKINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI"."KINGUA_ID"'
      Size = 4
    end
    object ibqryPassDocLISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI"."LISTINO"'
      Size = 10
    end
    object ibqryPassDocNS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."NS_RIFERIMENTO"'
      Size = 50
    end
    object ibqryPassDocVS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."VS_RIFERIMENTO"'
      Size = 50
    end
    object ibqryPassDocCAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object ibqryPassDocCODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object ibqryPassDocPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibqryPassDocBANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."BANCA_CLIFOR"'
      Size = 5
    end
    object ibqryPassDocBANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI"."BANCA_AZIENDA"'
      Size = 5
    end
    object ibqryPassDocVETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI"."VETTORE1"'
      Size = 7
    end
    object ibqryPassDocVETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI"."VETTORE2"'
      Size = 7
    end
    object ibqryPassDocVETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI"."VETTORE3"'
      Size = 7
    end
    object ibqryPassDocPORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI"."PORTO"'
      Size = 32
    end
    object ibqryPassDocASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI"."ASPETTO"'
      Size = 4
    end
    object ibqryPassDocSPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPEDIZIONE"'
      Size = 4
    end
    object ibqryPassDocPESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI"."PESO_NETTO"'
    end
    object ibqryPassDocPESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI"."PESO_LORDO"'
    end
    object ibqryPassDocCUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI"."CUBAGGIO"'
    end
    object ibqryPassDocDESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI"."DESTINARIO"'
      Size = 4
    end
    object ibqryPassDocIMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI"."IMBALLO"'
      Size = 4
    end
    object ibqryPassDocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DOCUMENTI"."SCONTO1"'
    end
    object ibqryPassDocAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI"."AGENTE_ID"'
      Size = 4
    end
    object ibqryPassDocDATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONSEGNA"'
    end
    object ibqryPassDocNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC"'
    end
    object ibqryPassDocNRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI"."NRCOLLI"'
    end
    object ibqryPassDocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DOCUMENTI"."SCONTO2"'
    end
    object ibqryPassDocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_SCONTO"'
    end
    object ibqryPassDocNOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI"."NOTA"'
      Size = 100
    end
    object ibqryPassDocSOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI"."SOSPESO"'
    end
    object ibqryPassDocIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI"."IVA_SOSPESA"'
    end
    object ibqryPassDocCOD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_ESENTE"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object ibqryPassDocCOD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object ibqryPassDocACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI"."ACCORPA_RIGHE"'
    end
    object ibqryPassDocATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 2
    end
    object ibqryPassDocSUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA2"'
      Size = 2
    end
    object ibqryPassDocSOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI"."SOGGETTO_CEE"'
    end
    object ibqryPassDocREPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI"."REPORT"'
      Size = 50
    end
    object ibqryPassDocRILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI"."RILEVA_ACCONTO"'
    end
    object ibqryPassDocORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI"."ORA"'
      Size = 5
    end
    object ibqryPassDocFATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI"."FATT_ACCOMP"'
    end
    object ibqryPassDocTIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI"."TIPO_FATT"'
    end
    object ibqryPassDocST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."ST_NOTE_CLIFOR"'
    end
    object ibqryPassDocIVATO: TSmallintField
      FieldName = 'IVATO'
      Origin = '"TAB_DOCUMENTI"."IVATO"'
    end
    object ibqryPassDocSTAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI"."STAMPATO"'
    end
    object ibqryPassDocDATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI"."DATA_COMPETENZA_IVA"'
    end
    object ibqryPassDocMEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI"."MEZZO_TRASPORTO"'
    end
    object ibqryPassDocTOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_PROVVIGIONE"'
    end
    object ibqryPassDocTIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TIPO_PROVVIGIONE"'
    end
    object ibqryPassDocTOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_IMP_PROVVIGIONE"'
    end
    object ibqryPassDocCAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI"."CAST_MANUALE"'
    end
    object ibqryPassDocNUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC2"'
    end
    object ibqryPassDocSERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC2"'
      Size = 2
    end
    object ibqryPassDocMESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI"."MESE_CONT"'
    end
    object ibqryPassDocALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI"."ALTRE_DERT_SI_NO"'
    end
    object ibqryPassDocSPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI"."SPESE_IMBALLO"'
    end
    object ibqryPassDocSPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."SPESE_BOLLI"'
    end
    object ibqryPassDocSPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI"."SPESE_ACCESSORIE"'
    end
    object ibqryPassDocSPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."SPESE_INCASSO"'
    end
    object ibqryPassDocSPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPESE_SPEDIZIONE"'
    end
    object ibqryPassDocSPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI"."SPESE_CONTRASS"'
    end
    object ibqryPassDocCAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI"."CAU_TRASP_ID"'
      Size = 32
    end
    object ibqryPassDocPER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."PER_ALTRA_DEST"'
    end
    object ibqryPassDocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_CON_IVA"'
    end
    object ibqryPassDocTOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI"."TOTALE_MERCE"'
    end
    object ibqryPassDocTOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SERVIZI"'
    end
    object ibqryPassDocTOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
    end
    object ibqryPassDocTOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVA"'
    end
    object ibqryPassDocTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVATO"'
    end
    object ibqryPassDocTOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SCONTI"'
    end
    object ibqryPassDocTOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
    end
    object ibqryPassDocTOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO_IVATO"'
    end
    object ibqryPassDocCODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI"."CODIVA1"'
      Size = 4
    end
    object ibqryPassDocALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI"."ALIVA1"'
    end
    object ibqryPassDocIMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI"."IMPON1"'
    end
    object ibqryPassDocIMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA1"'
    end
    object ibqryPassDocCODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI"."CODIVA2"'
      Size = 4
    end
    object ibqryPassDocALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI"."ALIVA2"'
    end
    object ibqryPassDocIMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI"."IMPON2"'
    end
    object ibqryPassDocIMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA2"'
    end
    object ibqryPassDocCODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI"."CODIVA3"'
      Size = 4
    end
    object ibqryPassDocALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI"."ALIVA3"'
    end
    object ibqryPassDocIMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI"."IMPON3"'
    end
    object ibqryPassDocIMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA3"'
    end
    object ibqryPassDocCODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI"."CODIVA4"'
      Size = 4
    end
    object ibqryPassDocALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI"."ALIVA4"'
    end
    object ibqryPassDocIMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI"."IMPON4"'
    end
    object ibqryPassDocIMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA4"'
    end
    object ibqryPassDocCODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI"."CODIVA5"'
      Size = 4
    end
    object ibqryPassDocALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI"."ALIVA5"'
    end
    object ibqryPassDocIMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI"."IMPON5"'
    end
    object ibqryPassDocIMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA5"'
    end
    object ibqryPassDocTOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI"."TOT_SPESE"'
    end
    object ibqryPassDocALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST"'
      Size = 100
    end
    object ibqryPassDocSERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC"'
      Size = 10
    end
    object ibqryPassDocCLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND"'
      Size = 255
    end
    object ibqryPassDocACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI"."ACCONTO"'
    end
    object ibqryPassDocRATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object ibqryPassDocRATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object ibqryPassDocRATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object ibqryPassDocRATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object ibqryPassDocRATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object ibqryPassDocRATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object ibqryPassDocTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI"."TEL1"'
      Size = 15
    end
    object ibqryPassDocTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI"."TEL2"'
      Size = 15
    end
    object ibqryPassDocTEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI"."TEL3"'
      Size = 15
    end
    object ibqryPassDocIVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE"'
    end
    object ibqryPassDocIVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE_ID"'
    end
    object ibqryPassDocVETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND"'
      Size = 100
    end
    object ibqryPassDocVETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND2"'
      Size = 100
    end
    object ibqryPassDocCLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND2"'
      Size = 255
    end
    object ibqryPassDocRATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object ibqryPassDocRATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object ibqryPassDocRATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object ibqryPassDocRATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object ibqryPassDocRATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object ibqryPassDocRATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object ibqryPassDocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DOCUMENTI"."PIANOCONTO_ID"'
    end
    object ibqryPassDocALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST2"'
      Size = 100
    end
  end
  object ibtblPassDocDet: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_det_doc'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into tab_det_doc'
      
        '  (ID_DOC_DET, TIPO_RIGA, CODICE_ARTICOLO, DESCR, COSTO, COSTOIN' +
        'VALUTA, '
      
        '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, D' +
        'EP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, DATA_REG, '
      
        '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, RIF_D' +
        'DT_ID_DOC, '
      
        '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, RIF_PRE_I' +
        'D_DOC, '
      
        '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, RIF_ORD_NUM' +
        '_DOC, RIF_DDT_NUM_DOC, '
      
        '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, OP_V' +
        'AL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C, '
      '   NUM_RIGA_ID)'
      'values'
      
        '  (:ID_DOC_DET, :TIPO_RIGA, :CODICE_ARTICOLO, :DESCR, :COSTO, :C' +
        'OSTOINVALUTA, '
      
        '   :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA, :SCONTO1, :SCON' +
        'TO2, :SCONTO3, '
      
        '   :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, :IMPORTOINVALUTA, :OMAGG' +
        'IO, :DEP, '
      
        '   :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVATO, :IMPORTO_CON' +
        '_IVA, :CODICE_IVA_ID, '
      
        '   :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :RIF_A_DDT, :RIF_I' +
        'D_DOC_DET, '
      
        '   :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, :RIF_ORD_ID_DOC, :RIF_ORD' +
        '_DATA_DOC, '
      
        '   :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, :PIANOCONTO_ID, :RIF_PRE_' +
        'NUM_DOC, '
      
        '   :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, :OP_QTA_DISPONIBILE, :OP_' +
        'VAL_DISPONIBILE, '
      
        '   :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC_ID, :TOTCOLLI, :TOTS' +
        'CAT, :PREZZOLIST, '
      '   :SCHEDA, :PASSATA, :COL, :A, :B, :C, :NUM_RIGA_ID)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_det_doc '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'select * from tab_det_doc'
      'where doc_id=:id_documento')
    ModifySQL.Strings = (
      'update tab_det_doc'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    DataSource = dsPassDoc_Master
    Left = 112
    Top = 56
  end
  object ibtSeriali: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from SERIALI'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    InsertSQL.Strings = (
      'insert into SERIALI'
      '  (ID_DOC, CODICE, DESCRIZIONE, SERIALE, ID_DET_DOC)'
      'values'
      '  (:ID_DOC, :CODICE, :DESCRIZIONE, :SERIALE, :ID_DET_DOC)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOC,'
      '  CODICE,'
      '  DESCRIZIONE,'
      '  SERIALE,'
      '  ID_DET_DOC'
      'from SERIALI '
      'where'
      '  ID_DOC = :ID_DOC and'
      '  ID_DET_DOC = :ID_DET_DOC')
    SelectSQL.Strings = (
      'select * from seriali'
      
        'where codice=:codice_Articolo and id_doc=:doc_id and id_det_doc=' +
        ':num_riga_id'
      'order by seriale'
      '')
    ModifySQL.Strings = (
      'update SERIALI'
      'set'
      '  ID_DOC = :ID_DOC,'
      '  CODICE = :CODICE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  SERIALE = :SERIALE,'
      '  ID_DET_DOC = :ID_DET_DOC'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    DataSource = DataSource2
    Left = 296
    Top = 432
    object ibtSerialiID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Origin = '"SERIALI"."ID_DOC"'
      Required = True
    end
    object ibtSerialiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"SERIALI"."CODICE"'
    end
    object ibtSerialiDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"SERIALI"."DESCRIZIONE"'
      Size = 100
    end
    object ibtSerialiSERIALE: TIBStringField
      FieldName = 'SERIALE'
      Origin = '"SERIALI"."SERIALE"'
      Size = 30
    end
    object ibtSerialiID_DET_DOC: TFloatField
      FieldName = 'ID_DET_DOC'
      Origin = '"SERIALI"."ID_DET_DOC"'
      Required = True
    end
  end
  object Tab_Causali: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_causali'
      'where'
      '  ID_CAUSALE = :OLD_ID_CAUSALE')
    InsertSQL.Strings = (
      'insert into tab_causali'
      
        '  (ID_CAUSALE, DESCR, OPERAZIONE_ID, OPERATIVITA_IVA, COLLEGAMEN' +
        'TO_IVA_ID, '
      
        '   COLLEGAMENTO_GESTIONI_ID, TIPO_CORRISPETTIVO_ID, REGISTRA_ACQ' +
        'UISTI_VENDITE, '
      
        '   ABILITA_VALUTA, ABILITA_DESCR, STAMPA_LIBRO_GIORNALE, STAMPA_' +
        'REGISTRO_IVA, '
      
        '   IVA_SOSPESA, SOLO_IVA_SOSPESA, AGGIORNARE_IVA, AGGIORNARE_CON' +
        'TO_PERIODO_PREC, '
      
        '   VARIA_COMPETENZA_IVA, ATTIVITA_ID, SUBATTIVITA_ID, TIPO_FIXIN' +
        'G, MOVIMENTO_SOLO_DESCRITTIVO, '
      
        '   ABILITA_SCADENZE, OPERAZIONE_COMPETENZA, OPERAZIONE_REGISTRI_' +
        'IVA, CODICE_QUADRATURA, '
      '   RAGG_REGISTRO)'
      'values'
      
        '  (:ID_CAUSALE, :DESCR, :OPERAZIONE_ID, :OPERATIVITA_IVA, :COLLE' +
        'GAMENTO_IVA_ID, '
      
        '   :COLLEGAMENTO_GESTIONI_ID, :TIPO_CORRISPETTIVO_ID, :REGISTRA_' +
        'ACQUISTI_VENDITE, '
      
        '   :ABILITA_VALUTA, :ABILITA_DESCR, :STAMPA_LIBRO_GIORNALE, :STA' +
        'MPA_REGISTRO_IVA, '
      
        '   :IVA_SOSPESA, :SOLO_IVA_SOSPESA, :AGGIORNARE_IVA, :AGGIORNARE' +
        '_CONTO_PERIODO_PREC, '
      
        '   :VARIA_COMPETENZA_IVA, :ATTIVITA_ID, :SUBATTIVITA_ID, :TIPO_F' +
        'IXING, '
      
        '   :MOVIMENTO_SOLO_DESCRITTIVO, :ABILITA_SCADENZE, :OPERAZIONE_C' +
        'OMPETENZA, '
      '   :OPERAZIONE_REGISTRI_IVA, :CODICE_QUADRATURA, :RAGG_REGISTRO)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_causali '
      'where'
      '  ID_CAUSALE = :ID_CAUSALE')
    SelectSQL.Strings = (
      'select * from tab_causali')
    ModifySQL.Strings = (
      'update tab_causali'
      'set'
      '  ID_CAUSALE = :ID_CAUSALE,'
      '  DESCR = :DESCR,'
      '  OPERAZIONE_ID = :OPERAZIONE_ID,'
      '  OPERATIVITA_IVA = :OPERATIVITA_IVA,'
      '  COLLEGAMENTO_IVA_ID = :COLLEGAMENTO_IVA_ID,'
      '  COLLEGAMENTO_GESTIONI_ID = :COLLEGAMENTO_GESTIONI_ID,'
      '  TIPO_CORRISPETTIVO_ID = :TIPO_CORRISPETTIVO_ID,'
      '  REGISTRA_ACQUISTI_VENDITE = :REGISTRA_ACQUISTI_VENDITE,'
      '  ABILITA_VALUTA = :ABILITA_VALUTA,'
      '  ABILITA_DESCR = :ABILITA_DESCR,'
      '  STAMPA_LIBRO_GIORNALE = :STAMPA_LIBRO_GIORNALE,'
      '  STAMPA_REGISTRO_IVA = :STAMPA_REGISTRO_IVA,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  SOLO_IVA_SOSPESA = :SOLO_IVA_SOSPESA,'
      '  AGGIORNARE_IVA = :AGGIORNARE_IVA,'
      '  AGGIORNARE_CONTO_PERIODO_PREC = '
      ':AGGIORNARE_CONTO_PERIODO_PREC,'
      '  VARIA_COMPETENZA_IVA = :VARIA_COMPETENZA_IVA,'
      '  ATTIVITA_ID = :ATTIVITA_ID,'
      '  SUBATTIVITA_ID = :SUBATTIVITA_ID,'
      '  TIPO_FIXING = :TIPO_FIXING,'
      '  MOVIMENTO_SOLO_DESCRITTIVO = :MOVIMENTO_SOLO_DESCRITTIVO,'
      '  ABILITA_SCADENZE = :ABILITA_SCADENZE,'
      '  OPERAZIONE_COMPETENZA = :OPERAZIONE_COMPETENZA,'
      '  OPERAZIONE_REGISTRI_IVA = :OPERAZIONE_REGISTRI_IVA,'
      '  CODICE_QUADRATURA = :CODICE_QUADRATURA,'
      '  RAGG_REGISTRO = :RAGG_REGISTRO'
      'where'
      '  ID_CAUSALE = :OLD_ID_CAUSALE')
    Left = 424
    Top = 88
    object Tab_CausaliID_CAUSALE: TIBStringField
      FieldName = 'ID_CAUSALE'
      Origin = '"TAB_CAUSALI"."ID_CAUSALE"'
      Required = True
      Size = 4
    end
    object Tab_CausaliDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CAUSALI"."DESCR"'
      Size = 50
    end
    object Tab_CausaliOPERAZIONE_ID: TSmallintField
      FieldName = 'OPERAZIONE_ID'
      Origin = '"TAB_CAUSALI"."OPERAZIONE_ID"'
    end
    object Tab_CausaliOPERATIVITA_IVA: TIntegerField
      FieldName = 'OPERATIVITA_IVA'
      Origin = '"TAB_CAUSALI"."OPERATIVITA_IVA"'
    end
    object Tab_CausaliCOLLEGAMENTO_IVA_ID: TIntegerField
      FieldName = 'COLLEGAMENTO_IVA_ID'
      Origin = '"TAB_CAUSALI"."COLLEGAMENTO_IVA_ID"'
    end
    object Tab_CausaliCOLLEGAMENTO_GESTIONI_ID: TIntegerField
      FieldName = 'COLLEGAMENTO_GESTIONI_ID'
      Origin = '"TAB_CAUSALI"."COLLEGAMENTO_GESTIONI_ID"'
    end
    object Tab_CausaliTIPO_CORRISPETTIVO_ID: TSmallintField
      FieldName = 'TIPO_CORRISPETTIVO_ID'
      Origin = '"TAB_CAUSALI"."TIPO_CORRISPETTIVO_ID"'
    end
    object Tab_CausaliREGISTRA_ACQUISTI_VENDITE: TSmallintField
      FieldName = 'REGISTRA_ACQUISTI_VENDITE'
      Origin = '"TAB_CAUSALI"."REGISTRA_ACQUISTI_VENDITE"'
    end
    object Tab_CausaliABILITA_VALUTA: TSmallintField
      FieldName = 'ABILITA_VALUTA'
      Origin = '"TAB_CAUSALI"."ABILITA_VALUTA"'
    end
    object Tab_CausaliABILITA_DESCR: TSmallintField
      FieldName = 'ABILITA_DESCR'
      Origin = '"TAB_CAUSALI"."ABILITA_DESCR"'
    end
    object Tab_CausaliSTAMPA_LIBRO_GIORNALE: TSmallintField
      FieldName = 'STAMPA_LIBRO_GIORNALE'
      Origin = '"TAB_CAUSALI"."STAMPA_LIBRO_GIORNALE"'
    end
    object Tab_CausaliSTAMPA_REGISTRO_IVA: TIntegerField
      FieldName = 'STAMPA_REGISTRO_IVA'
      Origin = '"TAB_CAUSALI"."STAMPA_REGISTRO_IVA"'
    end
    object Tab_CausaliIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CAUSALI"."IVA_SOSPESA"'
    end
    object Tab_CausaliSOLO_IVA_SOSPESA: TSmallintField
      FieldName = 'SOLO_IVA_SOSPESA'
      Origin = '"TAB_CAUSALI"."SOLO_IVA_SOSPESA"'
    end
    object Tab_CausaliAGGIORNARE_IVA: TSmallintField
      FieldName = 'AGGIORNARE_IVA'
      Origin = '"TAB_CAUSALI"."AGGIORNARE_IVA"'
    end
    object Tab_CausaliAGGIORNARE_CONTO_PERIODO_PREC: TSmallintField
      FieldName = 'AGGIORNARE_CONTO_PERIODO_PREC'
      Origin = '"TAB_CAUSALI"."AGGIORNARE_CONTO_PERIODO_PREC"'
    end
    object Tab_CausaliVARIA_COMPETENZA_IVA: TSmallintField
      FieldName = 'VARIA_COMPETENZA_IVA'
      Origin = '"TAB_CAUSALI"."VARIA_COMPETENZA_IVA"'
    end
    object Tab_CausaliATTIVITA_ID: TIBStringField
      FieldName = 'ATTIVITA_ID'
      Origin = '"TAB_CAUSALI"."ATTIVITA_ID"'
      Size = 5
    end
    object Tab_CausaliSUBATTIVITA_ID: TIBStringField
      FieldName = 'SUBATTIVITA_ID'
      Origin = '"TAB_CAUSALI"."SUBATTIVITA_ID"'
      Size = 5
    end
    object Tab_CausaliTIPO_FIXING: TSmallintField
      FieldName = 'TIPO_FIXING'
      Origin = '"TAB_CAUSALI"."TIPO_FIXING"'
    end
    object Tab_CausaliMOVIMENTO_SOLO_DESCRITTIVO: TSmallintField
      FieldName = 'MOVIMENTO_SOLO_DESCRITTIVO'
      Origin = '"TAB_CAUSALI"."MOVIMENTO_SOLO_DESCRITTIVO"'
    end
    object Tab_CausaliABILITA_SCADENZE: TSmallintField
      FieldName = 'ABILITA_SCADENZE'
      Origin = '"TAB_CAUSALI"."ABILITA_SCADENZE"'
    end
    object Tab_CausaliOPERAZIONE_COMPETENZA: TIntegerField
      FieldName = 'OPERAZIONE_COMPETENZA'
      Origin = '"TAB_CAUSALI"."OPERAZIONE_COMPETENZA"'
    end
    object Tab_CausaliOPERAZIONE_REGISTRI_IVA: TIntegerField
      FieldName = 'OPERAZIONE_REGISTRI_IVA'
      Origin = '"TAB_CAUSALI"."OPERAZIONE_REGISTRI_IVA"'
    end
    object Tab_CausaliCODICE_QUADRATURA: TSmallintField
      FieldName = 'CODICE_QUADRATURA'
      Origin = '"TAB_CAUSALI"."CODICE_QUADRATURA"'
    end
    object Tab_CausaliRAGG_REGISTRO: TSmallintField
      FieldName = 'RAGG_REGISTRO'
      Origin = '"TAB_CAUSALI"."RAGG_REGISTRO"'
    end
  end
  object frCodeBarreObject1: TfrCodeBarreObject
    Left = 643
    Top = 8
  end
  object frRichExportObject1: TfrRichExportObject
    Left = 675
    Top = 8
  end
  object frTextExportObject1: TfrTextExportObject
    Left = 707
    Top = 8
  end
  object ibqryTaglio: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAGLIO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAGLIO'
      
        '  (CLIENTE, CODICE, COLORE0, COLORE1, COLORE2, COLORE3, COLORE4,' +
        ' COLORE5, '
      
        '   COLORE6, COLORE7, COLORE8, COLORE9, DATA, DATAGLIARE, DESCR, ' +
        'DIPENDENTE, '
      
        '   F0, F1, F2, F3, F4, F5, F6, F7, F8, FASONISTA, G0, G1, G2, G3' +
        ', G4, G5, '
      
        '   G6, G7, G8, H0, H1, H2, H3, H4, H5, H6, H7, H8, NOTE, NUMERO,' +
        ' NUMERO_A, '
      
        '   NUMPRE, PASSATA, PK_CODICE, PK_DIST, QTA_TOTALE, QTA00, QTA01' +
        ', QTA02, '
      
        '   QTA03, QTA04, QTA05, QTA06, QTA07, QTA08, QTA09, QTA10, QTA11' +
        ', QTA12, '
      
        '   QTA13, QTA14, QTA15, QTA16, QTA17, QTA18, QTA19, QTA20, QTA21' +
        ', QTA22, '
      
        '   QTA23, QTA24, QTA25, QTA26, QTA27, QTA28, QTA29, QTA30, QTA31' +
        ', QTA32, '
      
        '   QTA33, QTA34, QTA35, QTA36, QTA37, QTA38, QTA39, QTA40, QTA41' +
        ', QTA42, '
      
        '   QTA43, QTA44, QTA45, QTA46, QTA47, QTA48, QTA49, QTA50, QTA51' +
        ', QTA52, '
      
        '   QTA53, QTA54, QTA55, QTA56, QTA57, QTA58, QTA59, QTA60, QTA61' +
        ', QTA62, '
      
        '   QTA63, QTA64, QTA65, QTA66, QTA67, QTA68, QTA69, QTA70, QTA71' +
        ', QTA72, '
      
        '   QTA73, QTA74, QTA75, QTA76, QTA77, QTA78, QTA79, QTA80, QTA81' +
        ', QTA82, '
      
        '   QTA83, QTA84, QTA85, QTA86, QTA87, QTA88, QTA89, QTA90, QTA91' +
        ', QTA92, '
      
        '   QTA93, QTA94, QTA95, QTA96, QTA97, QTA98, QTA99, SCAT, TAGLIA' +
        '0, TAGLIA1, '
      
        '   TAGLIA2, TAGLIA3, TAGLIA4, TAGLIA5, TAGLIA6, TAGLIA7, TAGLIA8' +
        ', TAGLIA9, '
      
        '   TOTALE, TOTALE_COLORE0, TOTALE_COLORE1, TOTALE_COLORE2, TOTAL' +
        'E_COLORE3, '
      
        '   TOTALE_COLORE4, TOTALE_COLORE5, TOTALE_COLORE6, TOTALE_COLORE' +
        '7, TOTALE_COLORE8, '
      
        '   TOTALE_COLORE9, TOTALE_TAGLIA0, TOTALE_TAGLIA1, TOTALE_TAGLIA' +
        '2, TOTALE_TAGLIA3, '
      
        '   TOTALE_TAGLIA4, TOTALE_TAGLIA5, TOTALE_TAGLIA6, TOTALE_TAGLIA' +
        '7, TOTALE_TAGLIA8, '
      '   TOTALE_TAGLIA9)'
      'values'
      
        '  (:CLIENTE, :CODICE, :COLORE0, :COLORE1, :COLORE2, :COLORE3, :C' +
        'OLORE4, '
      
        '   :COLORE5, :COLORE6, :COLORE7, :COLORE8, :COLORE9, :DATA, :DAT' +
        'AGLIARE, '
      
        '   :DESCR, :DIPENDENTE, :F0, :F1, :F2, :F3, :F4, :F5, :F6, :F7, ' +
        ':F8, :FASONISTA, '
      
        '   :G0, :G1, :G2, :G3, :G4, :G5, :G6, :G7, :G8, :H0, :H1, :H2, :' +
        'H3, :H4, '
      
        '   :H5, :H6, :H7, :H8, :NOTE, :NUMERO, :NUMERO_A, :NUMPRE, :PASS' +
        'ATA, :PK_CODICE, '
      
        '   :PK_DIST, :QTA_TOTALE, :QTA00, :QTA01, :QTA02, :QTA03, :QTA04' +
        ', :QTA05, '
      
        '   :QTA06, :QTA07, :QTA08, :QTA09, :QTA10, :QTA11, :QTA12, :QTA1' +
        '3, :QTA14, '
      
        '   :QTA15, :QTA16, :QTA17, :QTA18, :QTA19, :QTA20, :QTA21, :QTA2' +
        '2, :QTA23, '
      
        '   :QTA24, :QTA25, :QTA26, :QTA27, :QTA28, :QTA29, :QTA30, :QTA3' +
        '1, :QTA32, '
      
        '   :QTA33, :QTA34, :QTA35, :QTA36, :QTA37, :QTA38, :QTA39, :QTA4' +
        '0, :QTA41, '
      
        '   :QTA42, :QTA43, :QTA44, :QTA45, :QTA46, :QTA47, :QTA48, :QTA4' +
        '9, :QTA50, '
      
        '   :QTA51, :QTA52, :QTA53, :QTA54, :QTA55, :QTA56, :QTA57, :QTA5' +
        '8, :QTA59, '
      
        '   :QTA60, :QTA61, :QTA62, :QTA63, :QTA64, :QTA65, :QTA66, :QTA6' +
        '7, :QTA68, '
      
        '   :QTA69, :QTA70, :QTA71, :QTA72, :QTA73, :QTA74, :QTA75, :QTA7' +
        '6, :QTA77, '
      
        '   :QTA78, :QTA79, :QTA80, :QTA81, :QTA82, :QTA83, :QTA84, :QTA8' +
        '5, :QTA86, '
      
        '   :QTA87, :QTA88, :QTA89, :QTA90, :QTA91, :QTA92, :QTA93, :QTA9' +
        '4, :QTA95, '
      
        '   :QTA96, :QTA97, :QTA98, :QTA99, :SCAT, :TAGLIA0, :TAGLIA1, :T' +
        'AGLIA2, '
      
        '   :TAGLIA3, :TAGLIA4, :TAGLIA5, :TAGLIA6, :TAGLIA7, :TAGLIA8, :' +
        'TAGLIA9, '
      
        '   :TOTALE, :TOTALE_COLORE0, :TOTALE_COLORE1, :TOTALE_COLORE2, :' +
        'TOTALE_COLORE3, '
      
        '   :TOTALE_COLORE4, :TOTALE_COLORE5, :TOTALE_COLORE6, :TOTALE_CO' +
        'LORE7, '
      
        '   :TOTALE_COLORE8, :TOTALE_COLORE9, :TOTALE_TAGLIA0, :TOTALE_TA' +
        'GLIA1, '
      
        '   :TOTALE_TAGLIA2, :TOTALE_TAGLIA3, :TOTALE_TAGLIA4, :TOTALE_TA' +
        'GLIA5, '
      
        '   :TOTALE_TAGLIA6, :TOTALE_TAGLIA7, :TOTALE_TAGLIA8, :TOTALE_TA' +
        'GLIA9)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE,'
      '  DESCR,'
      '  DATA,'
      '  NUMERO,'
      '  NUMERO_A,'
      '  TOTALE,'
      '  DIPENDENTE,'
      '  FASONISTA,'
      '  CLIENTE,'
      '  TAGLIA0,'
      '  TAGLIA1,'
      '  TAGLIA2,'
      '  TAGLIA3,'
      '  TAGLIA4,'
      '  TAGLIA5,'
      '  TAGLIA6,'
      '  TAGLIA7,'
      '  TAGLIA8,'
      '  TAGLIA9,'
      '  COLORE0,'
      '  COLORE1,'
      '  COLORE2,'
      '  COLORE3,'
      '  COLORE4,'
      '  COLORE5,'
      '  COLORE6,'
      '  COLORE7,'
      '  COLORE8,'
      '  COLORE9,'
      '  QTA00,'
      '  QTA01,'
      '  QTA02,'
      '  QTA03,'
      '  QTA04,'
      '  QTA05,'
      '  QTA06,'
      '  QTA07,'
      '  QTA08,'
      '  QTA09,'
      '  QTA10,'
      '  QTA11,'
      '  QTA12,'
      '  QTA13,'
      '  QTA14,'
      '  QTA15,'
      '  QTA16,'
      '  QTA17,'
      '  QTA18,'
      '  QTA19,'
      '  QTA20,'
      '  QTA21,'
      '  QTA22,'
      '  QTA23,'
      '  QTA24,'
      '  QTA25,'
      '  QTA26,'
      '  QTA27,'
      '  QTA28,'
      '  QTA29,'
      '  QTA30,'
      '  QTA31,'
      '  QTA32,'
      '  QTA33,'
      '  QTA34,'
      '  QTA35,'
      '  QTA36,'
      '  QTA37,'
      '  QTA38,'
      '  QTA39,'
      '  QTA40,'
      '  QTA41,'
      '  QTA42,'
      '  QTA43,'
      '  QTA44,'
      '  QTA45,'
      '  QTA46,'
      '  QTA47,'
      '  QTA48,'
      '  QTA49,'
      '  QTA50,'
      '  QTA51,'
      '  QTA52,'
      '  QTA53,'
      '  QTA54,'
      '  QTA55,'
      '  QTA56,'
      '  QTA57,'
      '  QTA58,'
      '  QTA59,'
      '  QTA60,'
      '  QTA61,'
      '  QTA62,'
      '  QTA63,'
      '  QTA64,'
      '  QTA65,'
      '  QTA66,'
      '  QTA67,'
      '  QTA68,'
      '  QTA69,'
      '  QTA70,'
      '  QTA71,'
      '  QTA72,'
      '  QTA73,'
      '  QTA74,'
      '  QTA75,'
      '  QTA76,'
      '  QTA77,'
      '  QTA78,'
      '  QTA79,'
      '  QTA80,'
      '  QTA81,'
      '  QTA82,'
      '  QTA83,'
      '  QTA84,'
      '  QTA85,'
      '  QTA86,'
      '  QTA87,'
      '  QTA88,'
      '  QTA89,'
      '  QTA90,'
      '  QTA91,'
      '  QTA92,'
      '  QTA93,'
      '  QTA94,'
      '  QTA95,'
      '  QTA96,'
      '  QTA97,'
      '  QTA98,'
      '  QTA99,'
      '  TOTALE_COLORE0,'
      '  TOTALE_COLORE1,'
      '  TOTALE_COLORE2,'
      '  TOTALE_COLORE3,'
      '  TOTALE_COLORE4,'
      '  TOTALE_COLORE5,'
      '  TOTALE_COLORE6,'
      '  TOTALE_COLORE7,'
      '  TOTALE_COLORE8,'
      '  TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9,'
      '  QTA_TOTALE,'
      '  SCAT,'
      '  PASSATA,'
      '  F1,'
      '  F2,'
      '  F3,'
      '  F4,'
      '  F5,'
      '  F6,'
      '  F7,'
      '  F8,'
      '  F0,'
      '  NUMPRE,'
      '  DATAGLIARE,'
      '  PK_DIST,'
      '  NOTE,'
      '  G1,'
      '  G2,'
      '  G3,'
      '  G4,'
      '  G5,'
      '  G6,'
      '  G7,'
      '  G8,'
      '  G0,'
      '  H1,'
      '  H2,'
      '  H3,'
      '  H4,'
      '  H5,'
      '  H6,'
      '  H7,'
      '  H8,'
      '  H0'
      'from TAGLIO '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from TAGLIO'
      'Order by Numero')
    ModifySQL.Strings = (
      'update TAGLIO'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  CODICE = :CODICE,'
      '  COLORE0 = :COLORE0,'
      '  COLORE1 = :COLORE1,'
      '  COLORE2 = :COLORE2,'
      '  COLORE3 = :COLORE3,'
      '  COLORE4 = :COLORE4,'
      '  COLORE5 = :COLORE5,'
      '  COLORE6 = :COLORE6,'
      '  COLORE7 = :COLORE7,'
      '  COLORE8 = :COLORE8,'
      '  COLORE9 = :COLORE9,'
      '  DATA = :DATA,'
      '  DATAGLIARE = :DATAGLIARE,'
      '  DESCR = :DESCR,'
      '  DIPENDENTE = :DIPENDENTE,'
      '  F0 = :F0,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  F4 = :F4,'
      '  F5 = :F5,'
      '  F6 = :F6,'
      '  F7 = :F7,'
      '  F8 = :F8,'
      '  FASONISTA = :FASONISTA,'
      '  G0 = :G0,'
      '  G1 = :G1,'
      '  G2 = :G2,'
      '  G3 = :G3,'
      '  G4 = :G4,'
      '  G5 = :G5,'
      '  G6 = :G6,'
      '  G7 = :G7,'
      '  G8 = :G8,'
      '  H0 = :H0,'
      '  H1 = :H1,'
      '  H2 = :H2,'
      '  H3 = :H3,'
      '  H4 = :H4,'
      '  H5 = :H5,'
      '  H6 = :H6,'
      '  H7 = :H7,'
      '  H8 = :H8,'
      '  NOTE = :NOTE,'
      '  NUMERO = :NUMERO,'
      '  NUMERO_A = :NUMERO_A,'
      '  NUMPRE = :NUMPRE,'
      '  PASSATA = :PASSATA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PK_DIST = :PK_DIST,'
      '  QTA_TOTALE = :QTA_TOTALE,'
      '  QTA00 = :QTA00,'
      '  QTA01 = :QTA01,'
      '  QTA02 = :QTA02,'
      '  QTA03 = :QTA03,'
      '  QTA04 = :QTA04,'
      '  QTA05 = :QTA05,'
      '  QTA06 = :QTA06,'
      '  QTA07 = :QTA07,'
      '  QTA08 = :QTA08,'
      '  QTA09 = :QTA09,'
      '  QTA10 = :QTA10,'
      '  QTA11 = :QTA11,'
      '  QTA12 = :QTA12,'
      '  QTA13 = :QTA13,'
      '  QTA14 = :QTA14,'
      '  QTA15 = :QTA15,'
      '  QTA16 = :QTA16,'
      '  QTA17 = :QTA17,'
      '  QTA18 = :QTA18,'
      '  QTA19 = :QTA19,'
      '  QTA20 = :QTA20,'
      '  QTA21 = :QTA21,'
      '  QTA22 = :QTA22,'
      '  QTA23 = :QTA23,'
      '  QTA24 = :QTA24,'
      '  QTA25 = :QTA25,'
      '  QTA26 = :QTA26,'
      '  QTA27 = :QTA27,'
      '  QTA28 = :QTA28,'
      '  QTA29 = :QTA29,'
      '  QTA30 = :QTA30,'
      '  QTA31 = :QTA31,'
      '  QTA32 = :QTA32,'
      '  QTA33 = :QTA33,'
      '  QTA34 = :QTA34,'
      '  QTA35 = :QTA35,'
      '  QTA36 = :QTA36,'
      '  QTA37 = :QTA37,'
      '  QTA38 = :QTA38,'
      '  QTA39 = :QTA39,'
      '  QTA40 = :QTA40,'
      '  QTA41 = :QTA41,'
      '  QTA42 = :QTA42,'
      '  QTA43 = :QTA43,'
      '  QTA44 = :QTA44,'
      '  QTA45 = :QTA45,'
      '  QTA46 = :QTA46,'
      '  QTA47 = :QTA47,'
      '  QTA48 = :QTA48,'
      '  QTA49 = :QTA49,'
      '  QTA50 = :QTA50,'
      '  QTA51 = :QTA51,'
      '  QTA52 = :QTA52,'
      '  QTA53 = :QTA53,'
      '  QTA54 = :QTA54,'
      '  QTA55 = :QTA55,'
      '  QTA56 = :QTA56,'
      '  QTA57 = :QTA57,'
      '  QTA58 = :QTA58,'
      '  QTA59 = :QTA59,'
      '  QTA60 = :QTA60,'
      '  QTA61 = :QTA61,'
      '  QTA62 = :QTA62,'
      '  QTA63 = :QTA63,'
      '  QTA64 = :QTA64,'
      '  QTA65 = :QTA65,'
      '  QTA66 = :QTA66,'
      '  QTA67 = :QTA67,'
      '  QTA68 = :QTA68,'
      '  QTA69 = :QTA69,'
      '  QTA70 = :QTA70,'
      '  QTA71 = :QTA71,'
      '  QTA72 = :QTA72,'
      '  QTA73 = :QTA73,'
      '  QTA74 = :QTA74,'
      '  QTA75 = :QTA75,'
      '  QTA76 = :QTA76,'
      '  QTA77 = :QTA77,'
      '  QTA78 = :QTA78,'
      '  QTA79 = :QTA79,'
      '  QTA80 = :QTA80,'
      '  QTA81 = :QTA81,'
      '  QTA82 = :QTA82,'
      '  QTA83 = :QTA83,'
      '  QTA84 = :QTA84,'
      '  QTA85 = :QTA85,'
      '  QTA86 = :QTA86,'
      '  QTA87 = :QTA87,'
      '  QTA88 = :QTA88,'
      '  QTA89 = :QTA89,'
      '  QTA90 = :QTA90,'
      '  QTA91 = :QTA91,'
      '  QTA92 = :QTA92,'
      '  QTA93 = :QTA93,'
      '  QTA94 = :QTA94,'
      '  QTA95 = :QTA95,'
      '  QTA96 = :QTA96,'
      '  QTA97 = :QTA97,'
      '  QTA98 = :QTA98,'
      '  QTA99 = :QTA99,'
      '  SCAT = :SCAT,'
      '  TAGLIA0 = :TAGLIA0,'
      '  TAGLIA1 = :TAGLIA1,'
      '  TAGLIA2 = :TAGLIA2,'
      '  TAGLIA3 = :TAGLIA3,'
      '  TAGLIA4 = :TAGLIA4,'
      '  TAGLIA5 = :TAGLIA5,'
      '  TAGLIA6 = :TAGLIA6,'
      '  TAGLIA7 = :TAGLIA7,'
      '  TAGLIA8 = :TAGLIA8,'
      '  TAGLIA9 = :TAGLIA9,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_COLORE0 = :TOTALE_COLORE0,'
      '  TOTALE_COLORE1 = :TOTALE_COLORE1,'
      '  TOTALE_COLORE2 = :TOTALE_COLORE2,'
      '  TOTALE_COLORE3 = :TOTALE_COLORE3,'
      '  TOTALE_COLORE4 = :TOTALE_COLORE4,'
      '  TOTALE_COLORE5 = :TOTALE_COLORE5,'
      '  TOTALE_COLORE6 = :TOTALE_COLORE6,'
      '  TOTALE_COLORE7 = :TOTALE_COLORE7,'
      '  TOTALE_COLORE8 = :TOTALE_COLORE8,'
      '  TOTALE_COLORE9 = :TOTALE_COLORE9,'
      '  TOTALE_TAGLIA0 = :TOTALE_TAGLIA0,'
      '  TOTALE_TAGLIA1 = :TOTALE_TAGLIA1,'
      '  TOTALE_TAGLIA2 = :TOTALE_TAGLIA2,'
      '  TOTALE_TAGLIA3 = :TOTALE_TAGLIA3,'
      '  TOTALE_TAGLIA4 = :TOTALE_TAGLIA4,'
      '  TOTALE_TAGLIA5 = :TOTALE_TAGLIA5,'
      '  TOTALE_TAGLIA6 = :TOTALE_TAGLIA6,'
      '  TOTALE_TAGLIA7 = :TOTALE_TAGLIA7,'
      '  TOTALE_TAGLIA8 = :TOTALE_TAGLIA8,'
      '  TOTALE_TAGLIA9 = :TOTALE_TAGLIA9'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TAGLIO'
    Left = 296
    object ibqryTaglioNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"TAGLIO"."NUMERO"'
    end
    object ibqryTaglioDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"TAGLIO"."DATA"'
    end
    object ibqryTaglioCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAGLIO"."CODICE"'
    end
    object ibqryTaglioDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAGLIO"."DESCR"'
      Size = 100
    end
    object ibqryTaglioNUMERO_A: TIBStringField
      FieldName = 'NUMERO_A'
      Origin = '"TAGLIO"."NUMERO_A"'
    end
    object ibqryTaglioTOTALE: TIntegerField
      FieldName = 'TOTALE'
      Origin = '"TAGLIO"."TOTALE"'
    end
    object ibqryTaglioDIPENDENTE: TIBStringField
      FieldName = 'DIPENDENTE'
      Origin = '"TAGLIO"."DIPENDENTE"'
      Size = 100
    end
    object ibqryTaglioFASONISTA: TIBStringField
      FieldName = 'FASONISTA'
      Origin = '"TAGLIO"."FASONISTA"'
      Size = 100
    end
    object ibqryTaglioCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"TAGLIO"."CLIENTE"'
      Size = 100
    end
    object ibqryTaglioTAGLIA0: TIBStringField
      FieldName = 'TAGLIA0'
      Origin = '"TAGLIO"."TAGLIA0"'
    end
    object ibqryTaglioTAGLIA1: TIBStringField
      FieldName = 'TAGLIA1'
      Origin = '"TAGLIO"."TAGLIA1"'
    end
    object ibqryTaglioTAGLIA2: TIBStringField
      FieldName = 'TAGLIA2'
      Origin = '"TAGLIO"."TAGLIA2"'
    end
    object ibqryTaglioTAGLIA3: TIBStringField
      FieldName = 'TAGLIA3'
      Origin = '"TAGLIO"."TAGLIA3"'
    end
    object ibqryTaglioTAGLIA4: TIBStringField
      FieldName = 'TAGLIA4'
      Origin = '"TAGLIO"."TAGLIA4"'
    end
    object ibqryTaglioPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAGLIO"."PK_CODICE"'
      Required = True
    end
    object ibqryTaglioTAGLIA5: TIBStringField
      FieldName = 'TAGLIA5'
      Origin = '"TAGLIO"."TAGLIA5"'
    end
    object ibqryTaglioTAGLIA6: TIBStringField
      FieldName = 'TAGLIA6'
      Origin = '"TAGLIO"."TAGLIA6"'
    end
    object ibqryTaglioTAGLIA7: TIBStringField
      FieldName = 'TAGLIA7'
      Origin = '"TAGLIO"."TAGLIA7"'
    end
    object ibqryTaglioTAGLIA8: TIBStringField
      FieldName = 'TAGLIA8'
      Origin = '"TAGLIO"."TAGLIA8"'
    end
    object ibqryTaglioTAGLIA9: TIBStringField
      FieldName = 'TAGLIA9'
      Origin = '"TAGLIO"."TAGLIA9"'
    end
    object ibqryTaglioCOLORE0: TIBStringField
      FieldName = 'COLORE0'
      Origin = '"TAGLIO"."COLORE0"'
      Size = 100
    end
    object ibqryTaglioCOLORE1: TIBStringField
      FieldName = 'COLORE1'
      Origin = '"TAGLIO"."COLORE1"'
      Size = 100
    end
    object ibqryTaglioCOLORE2: TIBStringField
      FieldName = 'COLORE2'
      Origin = '"TAGLIO"."COLORE2"'
      Size = 100
    end
    object ibqryTaglioCOLORE3: TIBStringField
      FieldName = 'COLORE3'
      Origin = '"TAGLIO"."COLORE3"'
      Size = 100
    end
    object ibqryTaglioCOLORE4: TIBStringField
      FieldName = 'COLORE4'
      Origin = '"TAGLIO"."COLORE4"'
      Size = 100
    end
    object ibqryTaglioCOLORE5: TIBStringField
      FieldName = 'COLORE5'
      Origin = '"TAGLIO"."COLORE5"'
      Size = 100
    end
    object ibqryTaglioCOLORE6: TIBStringField
      FieldName = 'COLORE6'
      Origin = '"TAGLIO"."COLORE6"'
      Size = 100
    end
    object ibqryTaglioCOLORE7: TIBStringField
      FieldName = 'COLORE7'
      Origin = '"TAGLIO"."COLORE7"'
      Size = 100
    end
    object ibqryTaglioCOLORE8: TIBStringField
      FieldName = 'COLORE8'
      Origin = '"TAGLIO"."COLORE8"'
      Size = 100
    end
    object ibqryTaglioCOLORE9: TIBStringField
      FieldName = 'COLORE9'
      Origin = '"TAGLIO"."COLORE9"'
      Size = 100
    end
    object ibqryTaglioQTA00: TIntegerField
      FieldName = 'QTA00'
      Origin = '"TAGLIO"."QTA00"'
    end
    object ibqryTaglioQTA01: TIntegerField
      FieldName = 'QTA01'
      Origin = '"TAGLIO"."QTA01"'
    end
    object ibqryTaglioQTA02: TIntegerField
      FieldName = 'QTA02'
      Origin = '"TAGLIO"."QTA02"'
    end
    object ibqryTaglioQTA03: TIntegerField
      FieldName = 'QTA03'
      Origin = '"TAGLIO"."QTA03"'
    end
    object ibqryTaglioQTA04: TIntegerField
      FieldName = 'QTA04'
      Origin = '"TAGLIO"."QTA04"'
    end
    object ibqryTaglioQTA05: TIntegerField
      FieldName = 'QTA05'
      Origin = '"TAGLIO"."QTA05"'
    end
    object ibqryTaglioQTA06: TIntegerField
      FieldName = 'QTA06'
      Origin = '"TAGLIO"."QTA06"'
    end
    object ibqryTaglioQTA07: TIntegerField
      FieldName = 'QTA07'
      Origin = '"TAGLIO"."QTA07"'
    end
    object ibqryTaglioQTA08: TIntegerField
      FieldName = 'QTA08'
      Origin = '"TAGLIO"."QTA08"'
    end
    object ibqryTaglioQTA09: TIntegerField
      FieldName = 'QTA09'
      Origin = '"TAGLIO"."QTA09"'
    end
    object ibqryTaglioQTA10: TIntegerField
      FieldName = 'QTA10'
      Origin = '"TAGLIO"."QTA10"'
    end
    object ibqryTaglioQTA11: TIntegerField
      FieldName = 'QTA11'
      Origin = '"TAGLIO"."QTA11"'
    end
    object ibqryTaglioQTA12: TIntegerField
      FieldName = 'QTA12'
      Origin = '"TAGLIO"."QTA12"'
    end
    object ibqryTaglioQTA13: TIntegerField
      FieldName = 'QTA13'
      Origin = '"TAGLIO"."QTA13"'
    end
    object ibqryTaglioQTA14: TIntegerField
      FieldName = 'QTA14'
      Origin = '"TAGLIO"."QTA14"'
    end
    object ibqryTaglioQTA15: TIntegerField
      FieldName = 'QTA15'
      Origin = '"TAGLIO"."QTA15"'
    end
    object ibqryTaglioQTA16: TIntegerField
      FieldName = 'QTA16'
      Origin = '"TAGLIO"."QTA16"'
    end
    object ibqryTaglioQTA17: TIntegerField
      FieldName = 'QTA17'
      Origin = '"TAGLIO"."QTA17"'
    end
    object ibqryTaglioQTA18: TIntegerField
      FieldName = 'QTA18'
      Origin = '"TAGLIO"."QTA18"'
    end
    object ibqryTaglioQTA19: TIntegerField
      FieldName = 'QTA19'
      Origin = '"TAGLIO"."QTA19"'
    end
    object ibqryTaglioQTA20: TIntegerField
      FieldName = 'QTA20'
      Origin = '"TAGLIO"."QTA20"'
    end
    object ibqryTaglioQTA21: TIntegerField
      FieldName = 'QTA21'
      Origin = '"TAGLIO"."QTA21"'
    end
    object ibqryTaglioQTA22: TIntegerField
      FieldName = 'QTA22'
      Origin = '"TAGLIO"."QTA22"'
    end
    object ibqryTaglioQTA23: TIntegerField
      FieldName = 'QTA23'
      Origin = '"TAGLIO"."QTA23"'
    end
    object ibqryTaglioQTA24: TIntegerField
      FieldName = 'QTA24'
      Origin = '"TAGLIO"."QTA24"'
    end
    object ibqryTaglioQTA25: TIntegerField
      FieldName = 'QTA25'
      Origin = '"TAGLIO"."QTA25"'
    end
    object ibqryTaglioQTA26: TIntegerField
      FieldName = 'QTA26'
      Origin = '"TAGLIO"."QTA26"'
    end
    object ibqryTaglioQTA27: TIntegerField
      FieldName = 'QTA27'
      Origin = '"TAGLIO"."QTA27"'
    end
    object ibqryTaglioQTA28: TIntegerField
      FieldName = 'QTA28'
      Origin = '"TAGLIO"."QTA28"'
    end
    object ibqryTaglioQTA29: TIntegerField
      FieldName = 'QTA29'
      Origin = '"TAGLIO"."QTA29"'
    end
    object ibqryTaglioQTA30: TIntegerField
      FieldName = 'QTA30'
      Origin = '"TAGLIO"."QTA30"'
    end
    object ibqryTaglioQTA31: TIntegerField
      FieldName = 'QTA31'
      Origin = '"TAGLIO"."QTA31"'
    end
    object ibqryTaglioQTA32: TIntegerField
      FieldName = 'QTA32'
      Origin = '"TAGLIO"."QTA32"'
    end
    object ibqryTaglioQTA33: TIntegerField
      FieldName = 'QTA33'
      Origin = '"TAGLIO"."QTA33"'
    end
    object ibqryTaglioQTA34: TIntegerField
      FieldName = 'QTA34'
      Origin = '"TAGLIO"."QTA34"'
    end
    object ibqryTaglioQTA35: TIntegerField
      FieldName = 'QTA35'
      Origin = '"TAGLIO"."QTA35"'
    end
    object ibqryTaglioQTA36: TIntegerField
      FieldName = 'QTA36'
      Origin = '"TAGLIO"."QTA36"'
    end
    object ibqryTaglioQTA37: TIntegerField
      FieldName = 'QTA37'
      Origin = '"TAGLIO"."QTA37"'
    end
    object ibqryTaglioQTA38: TIntegerField
      FieldName = 'QTA38'
      Origin = '"TAGLIO"."QTA38"'
    end
    object ibqryTaglioQTA39: TIntegerField
      FieldName = 'QTA39'
      Origin = '"TAGLIO"."QTA39"'
    end
    object ibqryTaglioQTA40: TIntegerField
      FieldName = 'QTA40'
      Origin = '"TAGLIO"."QTA40"'
    end
    object ibqryTaglioQTA41: TIntegerField
      FieldName = 'QTA41'
      Origin = '"TAGLIO"."QTA41"'
    end
    object ibqryTaglioQTA42: TIntegerField
      FieldName = 'QTA42'
      Origin = '"TAGLIO"."QTA42"'
    end
    object ibqryTaglioQTA43: TIntegerField
      FieldName = 'QTA43'
      Origin = '"TAGLIO"."QTA43"'
    end
    object ibqryTaglioQTA44: TIntegerField
      FieldName = 'QTA44'
      Origin = '"TAGLIO"."QTA44"'
    end
    object ibqryTaglioQTA45: TIntegerField
      FieldName = 'QTA45'
      Origin = '"TAGLIO"."QTA45"'
    end
    object ibqryTaglioQTA46: TIntegerField
      FieldName = 'QTA46'
      Origin = '"TAGLIO"."QTA46"'
    end
    object ibqryTaglioQTA47: TIntegerField
      FieldName = 'QTA47'
      Origin = '"TAGLIO"."QTA47"'
    end
    object ibqryTaglioQTA48: TIntegerField
      FieldName = 'QTA48'
      Origin = '"TAGLIO"."QTA48"'
    end
    object ibqryTaglioQTA49: TIntegerField
      FieldName = 'QTA49'
      Origin = '"TAGLIO"."QTA49"'
    end
    object ibqryTaglioQTA50: TIntegerField
      FieldName = 'QTA50'
      Origin = '"TAGLIO"."QTA50"'
    end
    object ibqryTaglioQTA51: TIntegerField
      FieldName = 'QTA51'
      Origin = '"TAGLIO"."QTA51"'
    end
    object ibqryTaglioQTA52: TIntegerField
      FieldName = 'QTA52'
      Origin = '"TAGLIO"."QTA52"'
    end
    object ibqryTaglioQTA53: TIntegerField
      FieldName = 'QTA53'
      Origin = '"TAGLIO"."QTA53"'
    end
    object ibqryTaglioQTA54: TIntegerField
      FieldName = 'QTA54'
      Origin = '"TAGLIO"."QTA54"'
    end
    object ibqryTaglioQTA55: TIntegerField
      FieldName = 'QTA55'
      Origin = '"TAGLIO"."QTA55"'
    end
    object ibqryTaglioQTA56: TIntegerField
      FieldName = 'QTA56'
      Origin = '"TAGLIO"."QTA56"'
    end
    object ibqryTaglioQTA57: TIntegerField
      FieldName = 'QTA57'
      Origin = '"TAGLIO"."QTA57"'
    end
    object ibqryTaglioQTA58: TIntegerField
      FieldName = 'QTA58'
      Origin = '"TAGLIO"."QTA58"'
    end
    object ibqryTaglioQTA59: TIntegerField
      FieldName = 'QTA59'
      Origin = '"TAGLIO"."QTA59"'
    end
    object ibqryTaglioQTA60: TIntegerField
      FieldName = 'QTA60'
      Origin = '"TAGLIO"."QTA60"'
    end
    object ibqryTaglioQTA61: TIntegerField
      FieldName = 'QTA61'
      Origin = '"TAGLIO"."QTA61"'
    end
    object ibqryTaglioQTA62: TIntegerField
      FieldName = 'QTA62'
      Origin = '"TAGLIO"."QTA62"'
    end
    object ibqryTaglioQTA63: TIntegerField
      FieldName = 'QTA63'
      Origin = '"TAGLIO"."QTA63"'
    end
    object ibqryTaglioQTA64: TIntegerField
      FieldName = 'QTA64'
      Origin = '"TAGLIO"."QTA64"'
    end
    object ibqryTaglioQTA65: TIntegerField
      FieldName = 'QTA65'
      Origin = '"TAGLIO"."QTA65"'
    end
    object ibqryTaglioQTA66: TIntegerField
      FieldName = 'QTA66'
      Origin = '"TAGLIO"."QTA66"'
    end
    object ibqryTaglioQTA67: TIntegerField
      FieldName = 'QTA67'
      Origin = '"TAGLIO"."QTA67"'
    end
    object ibqryTaglioQTA68: TIntegerField
      FieldName = 'QTA68'
      Origin = '"TAGLIO"."QTA68"'
    end
    object ibqryTaglioQTA69: TIntegerField
      FieldName = 'QTA69'
      Origin = '"TAGLIO"."QTA69"'
    end
    object ibqryTaglioQTA70: TIntegerField
      FieldName = 'QTA70'
      Origin = '"TAGLIO"."QTA70"'
    end
    object ibqryTaglioQTA71: TIntegerField
      FieldName = 'QTA71'
      Origin = '"TAGLIO"."QTA71"'
    end
    object ibqryTaglioQTA72: TIntegerField
      FieldName = 'QTA72'
      Origin = '"TAGLIO"."QTA72"'
    end
    object ibqryTaglioQTA73: TIntegerField
      FieldName = 'QTA73'
      Origin = '"TAGLIO"."QTA73"'
    end
    object ibqryTaglioQTA74: TIntegerField
      FieldName = 'QTA74'
      Origin = '"TAGLIO"."QTA74"'
    end
    object ibqryTaglioQTA75: TIntegerField
      FieldName = 'QTA75'
      Origin = '"TAGLIO"."QTA75"'
    end
    object ibqryTaglioQTA76: TIntegerField
      FieldName = 'QTA76'
      Origin = '"TAGLIO"."QTA76"'
    end
    object ibqryTaglioQTA77: TIntegerField
      FieldName = 'QTA77'
      Origin = '"TAGLIO"."QTA77"'
    end
    object ibqryTaglioQTA78: TIntegerField
      FieldName = 'QTA78'
      Origin = '"TAGLIO"."QTA78"'
    end
    object ibqryTaglioQTA79: TIntegerField
      FieldName = 'QTA79'
      Origin = '"TAGLIO"."QTA79"'
    end
    object ibqryTaglioQTA80: TIntegerField
      FieldName = 'QTA80'
      Origin = '"TAGLIO"."QTA80"'
    end
    object ibqryTaglioQTA81: TIntegerField
      FieldName = 'QTA81'
      Origin = '"TAGLIO"."QTA81"'
    end
    object ibqryTaglioQTA82: TIntegerField
      FieldName = 'QTA82'
      Origin = '"TAGLIO"."QTA82"'
    end
    object ibqryTaglioQTA83: TIntegerField
      FieldName = 'QTA83'
      Origin = '"TAGLIO"."QTA83"'
    end
    object ibqryTaglioQTA84: TIntegerField
      FieldName = 'QTA84'
      Origin = '"TAGLIO"."QTA84"'
    end
    object ibqryTaglioQTA85: TIntegerField
      FieldName = 'QTA85'
      Origin = '"TAGLIO"."QTA85"'
    end
    object ibqryTaglioQTA86: TIntegerField
      FieldName = 'QTA86'
      Origin = '"TAGLIO"."QTA86"'
    end
    object ibqryTaglioQTA87: TIntegerField
      FieldName = 'QTA87'
      Origin = '"TAGLIO"."QTA87"'
    end
    object ibqryTaglioQTA88: TIntegerField
      FieldName = 'QTA88'
      Origin = '"TAGLIO"."QTA88"'
    end
    object ibqryTaglioQTA89: TIntegerField
      FieldName = 'QTA89'
      Origin = '"TAGLIO"."QTA89"'
    end
    object ibqryTaglioQTA90: TIntegerField
      FieldName = 'QTA90'
      Origin = '"TAGLIO"."QTA90"'
    end
    object ibqryTaglioQTA91: TIntegerField
      FieldName = 'QTA91'
      Origin = '"TAGLIO"."QTA91"'
    end
    object ibqryTaglioQTA92: TIntegerField
      FieldName = 'QTA92'
      Origin = '"TAGLIO"."QTA92"'
    end
    object ibqryTaglioQTA93: TIntegerField
      FieldName = 'QTA93'
      Origin = '"TAGLIO"."QTA93"'
    end
    object ibqryTaglioQTA94: TIntegerField
      FieldName = 'QTA94'
      Origin = '"TAGLIO"."QTA94"'
    end
    object ibqryTaglioQTA95: TIntegerField
      FieldName = 'QTA95'
      Origin = '"TAGLIO"."QTA95"'
    end
    object ibqryTaglioQTA96: TIntegerField
      FieldName = 'QTA96'
      Origin = '"TAGLIO"."QTA96"'
    end
    object ibqryTaglioQTA97: TIntegerField
      FieldName = 'QTA97'
      Origin = '"TAGLIO"."QTA97"'
    end
    object ibqryTaglioQTA98: TIntegerField
      FieldName = 'QTA98'
      Origin = '"TAGLIO"."QTA98"'
    end
    object ibqryTaglioQTA99: TIntegerField
      FieldName = 'QTA99'
      Origin = '"TAGLIO"."QTA99"'
    end
    object ibqryTaglioTOTALE_COLORE0: TIntegerField
      FieldName = 'TOTALE_COLORE0'
      Origin = '"TAGLIO"."TOTALE_COLORE0"'
    end
    object ibqryTaglioTOTALE_COLORE1: TIntegerField
      FieldName = 'TOTALE_COLORE1'
      Origin = '"TAGLIO"."TOTALE_COLORE1"'
    end
    object ibqryTaglioTOTALE_COLORE2: TIntegerField
      FieldName = 'TOTALE_COLORE2'
      Origin = '"TAGLIO"."TOTALE_COLORE2"'
    end
    object ibqryTaglioTOTALE_COLORE3: TIntegerField
      FieldName = 'TOTALE_COLORE3'
      Origin = '"TAGLIO"."TOTALE_COLORE3"'
    end
    object ibqryTaglioTOTALE_COLORE4: TIntegerField
      FieldName = 'TOTALE_COLORE4'
      Origin = '"TAGLIO"."TOTALE_COLORE4"'
    end
    object ibqryTaglioTOTALE_COLORE5: TIntegerField
      FieldName = 'TOTALE_COLORE5'
      Origin = '"TAGLIO"."TOTALE_COLORE5"'
    end
    object ibqryTaglioTOTALE_COLORE6: TIntegerField
      FieldName = 'TOTALE_COLORE6'
      Origin = '"TAGLIO"."TOTALE_COLORE6"'
    end
    object ibqryTaglioTOTALE_COLORE7: TIntegerField
      FieldName = 'TOTALE_COLORE7'
      Origin = '"TAGLIO"."TOTALE_COLORE7"'
    end
    object ibqryTaglioTOTALE_COLORE8: TIntegerField
      FieldName = 'TOTALE_COLORE8'
      Origin = '"TAGLIO"."TOTALE_COLORE8"'
    end
    object ibqryTaglioTOTALE_COLORE9: TIntegerField
      FieldName = 'TOTALE_COLORE9'
      Origin = '"TAGLIO"."TOTALE_COLORE9"'
    end
    object ibqryTaglioTOTALE_TAGLIA0: TIntegerField
      FieldName = 'TOTALE_TAGLIA0'
      Origin = '"TAGLIO"."TOTALE_TAGLIA0"'
    end
    object ibqryTaglioTOTALE_TAGLIA1: TIntegerField
      FieldName = 'TOTALE_TAGLIA1'
      Origin = '"TAGLIO"."TOTALE_TAGLIA1"'
    end
    object ibqryTaglioTOTALE_TAGLIA2: TIntegerField
      FieldName = 'TOTALE_TAGLIA2'
      Origin = '"TAGLIO"."TOTALE_TAGLIA2"'
    end
    object ibqryTaglioTOTALE_TAGLIA3: TIntegerField
      FieldName = 'TOTALE_TAGLIA3'
      Origin = '"TAGLIO"."TOTALE_TAGLIA3"'
    end
    object ibqryTaglioTOTALE_TAGLIA4: TIntegerField
      FieldName = 'TOTALE_TAGLIA4'
      Origin = '"TAGLIO"."TOTALE_TAGLIA4"'
    end
    object ibqryTaglioTOTALE_TAGLIA5: TIntegerField
      FieldName = 'TOTALE_TAGLIA5'
      Origin = '"TAGLIO"."TOTALE_TAGLIA5"'
    end
    object ibqryTaglioTOTALE_TAGLIA6: TIntegerField
      FieldName = 'TOTALE_TAGLIA6'
      Origin = '"TAGLIO"."TOTALE_TAGLIA6"'
    end
    object ibqryTaglioTOTALE_TAGLIA7: TIntegerField
      FieldName = 'TOTALE_TAGLIA7'
      Origin = '"TAGLIO"."TOTALE_TAGLIA7"'
    end
    object ibqryTaglioTOTALE_TAGLIA8: TIntegerField
      FieldName = 'TOTALE_TAGLIA8'
      Origin = '"TAGLIO"."TOTALE_TAGLIA8"'
    end
    object ibqryTaglioTOTALE_TAGLIA9: TIntegerField
      FieldName = 'TOTALE_TAGLIA9'
      Origin = '"TAGLIO"."TOTALE_TAGLIA9"'
    end
    object ibqryTaglioQTA_TOTALE: TIntegerField
      FieldName = 'QTA_TOTALE'
      Origin = '"TAGLIO"."QTA_TOTALE"'
    end
    object ibqryTaglioSCAT: TFloatField
      FieldName = 'SCAT'
      Origin = '"TAGLIO"."SCAT"'
    end
    object ibqryTaglioPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAGLIO"."PASSATA"'
      Size = 1
    end
    object ibqryTaglioF1: TIBStringField
      FieldName = 'F1'
      Origin = '"TAGLIO"."F1"'
      Size = 5
    end
    object ibqryTaglioF2: TIBStringField
      FieldName = 'F2'
      Origin = '"TAGLIO"."F2"'
      Size = 5
    end
    object ibqryTaglioF3: TIBStringField
      FieldName = 'F3'
      Origin = '"TAGLIO"."F3"'
      Size = 5
    end
    object ibqryTaglioF4: TIBStringField
      FieldName = 'F4'
      Origin = '"TAGLIO"."F4"'
      Size = 5
    end
    object ibqryTaglioF5: TIBStringField
      FieldName = 'F5'
      Origin = '"TAGLIO"."F5"'
      Size = 5
    end
    object ibqryTaglioF6: TIBStringField
      FieldName = 'F6'
      Origin = '"TAGLIO"."F6"'
      Size = 5
    end
    object ibqryTaglioF7: TIBStringField
      FieldName = 'F7'
      Origin = '"TAGLIO"."F7"'
      Size = 5
    end
    object ibqryTaglioF8: TIBStringField
      FieldName = 'F8'
      Origin = '"TAGLIO"."F8"'
      Size = 5
    end
    object ibqryTaglioF0: TIBStringField
      FieldName = 'F0'
      Origin = '"TAGLIO"."F0"'
      Size = 5
    end
    object ibqryTaglioNUMPRE: TIntegerField
      FieldName = 'NUMPRE'
      Origin = '"TAGLIO"."NUMPRE"'
    end
    object ibqryTaglioDATAGLIARE: TFloatField
      FieldName = 'DATAGLIARE'
      Origin = '"TAGLIO"."DATAGLIARE"'
    end
    object ibqryTaglioPK_DIST: TIntegerField
      FieldName = 'PK_DIST'
      Origin = '"TAGLIO"."PK_DIST"'
    end
    object ibqryTaglioNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAGLIO"."NOTE"'
      Size = 255
    end
    object ibqryTaglioG1: TIBStringField
      FieldName = 'G1'
      Origin = '"TAGLIO"."G1"'
      Size = 5
    end
    object ibqryTaglioG2: TIBStringField
      FieldName = 'G2'
      Origin = '"TAGLIO"."G2"'
      Size = 5
    end
    object ibqryTaglioG3: TIBStringField
      FieldName = 'G3'
      Origin = '"TAGLIO"."G3"'
      Size = 5
    end
    object ibqryTaglioG4: TIBStringField
      FieldName = 'G4'
      Origin = '"TAGLIO"."G4"'
      Size = 5
    end
    object ibqryTaglioG5: TIBStringField
      FieldName = 'G5'
      Origin = '"TAGLIO"."G5"'
      Size = 5
    end
    object ibqryTaglioG6: TIBStringField
      FieldName = 'G6'
      Origin = '"TAGLIO"."G6"'
      Size = 5
    end
    object ibqryTaglioG7: TIBStringField
      FieldName = 'G7'
      Origin = '"TAGLIO"."G7"'
      Size = 5
    end
    object ibqryTaglioG8: TIBStringField
      FieldName = 'G8'
      Origin = '"TAGLIO"."G8"'
      Size = 5
    end
    object ibqryTaglioG0: TIBStringField
      FieldName = 'G0'
      Origin = '"TAGLIO"."G0"'
      Size = 5
    end
    object ibqryTaglioH1: TIBStringField
      FieldName = 'H1'
      Origin = '"TAGLIO"."H1"'
      Size = 5
    end
    object ibqryTaglioH2: TIBStringField
      FieldName = 'H2'
      Origin = '"TAGLIO"."H2"'
      Size = 5
    end
    object ibqryTaglioH3: TIBStringField
      FieldName = 'H3'
      Origin = '"TAGLIO"."H3"'
      Size = 5
    end
    object ibqryTaglioH4: TIBStringField
      FieldName = 'H4'
      Origin = '"TAGLIO"."H4"'
      Size = 5
    end
    object ibqryTaglioH5: TIBStringField
      FieldName = 'H5'
      Origin = '"TAGLIO"."H5"'
      Size = 5
    end
    object ibqryTaglioH6: TIBStringField
      FieldName = 'H6'
      Origin = '"TAGLIO"."H6"'
      Size = 5
    end
    object ibqryTaglioH7: TIBStringField
      FieldName = 'H7'
      Origin = '"TAGLIO"."H7"'
      Size = 5
    end
    object ibqryTaglioH8: TIBStringField
      FieldName = 'H8'
      Origin = '"TAGLIO"."H8"'
      Size = 5
    end
    object ibqryTaglioH0: TIBStringField
      FieldName = 'H0'
      Origin = '"TAGLIO"."H0"'
      Size = 5
    end
  end
  object DataSource2: TDataSource
    DataSet = ibtStampaDetDoc
    Left = 424
    Top = 336
  end
  object rePRN: TfrReport
    Left = 584
    PixelsPerInch = 96
  end
  object frRichObject1: TfrRichObject
    Left = 640
    Top = 104
  end
  object frGraphObject1: TfrGraphObject
    Left = 680
    Top = 104
  end
  object frOLEObject1: TfrOLEObject
    Left = 736
    Top = 104
  end
  object frDesigner1: TfrDesigner
    Left = 635
    Top = 48
  end
  object ibTab_SUBCAT: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_SUBCATEGORIA'
      'where'
      '  CODICE = :OLD_CODICE and'
      '  LIST = :OLD_LIST')
    InsertSQL.Strings = (
      'insert into TAB_SUBCATEGORIA'
      '  (CODICE, DESCR, LIST, RIC, SC)'
      'values'
      '  (:CODICE, :DESCR, :LIST, :RIC, :SC)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  LIST,'
      '  RIC,'
      '  SC'
      'from TAB_SUBCATEGORIA '
      'where'
      '  CODICE = :CODICE and'
      '  LIST = :LIST')
    SelectSQL.Strings = (
      'select * from TAB_SUBCATEGORIA'
      'order by CODICE,LIST')
    ModifySQL.Strings = (
      'update TAB_SUBCATEGORIA'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  LIST = :LIST,'
      '  RIC = :RIC,'
      '  SC = :SC'
      'where'
      '  CODICE = :OLD_CODICE and'
      '  LIST = :OLD_LIST')
    Left = 120
    Top = 248
    object ibTab_SUBCATCODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object ibTab_SUBCATDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_SUBCATEGORIA"."DESCR"'
      Size = 50
    end
    object ibTab_SUBCATLIST: TIntegerField
      FieldName = 'LIST'
      Origin = '"TAB_SUBCATEGORIA"."LIST"'
    end
    object ibTab_SUBCATRIC: TFloatField
      FieldName = 'RIC'
      Origin = '"TAB_SUBCATEGORIA"."RIC"'
      DisplayFormat = '#.##'
    end
    object ibTab_SUBCATSC: TFloatField
      FieldName = 'SC'
      Origin = '"TAB_SUBCATEGORIA"."SC"'
      DisplayFormat = '#,##'
    end
  end
  object ibTabPersAz: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_pers_az'
      '')
    InsertSQL.Strings = (
      'insert into tab_pers_az'
      '  (CASSA, RICAVI, CORRISPETTIVI, CORRISPETTIVI_VENTILAZIONE, '
      'IVA_ERARIO, '
      '   IVA_ACQ, IVA_VEN, IVA_SOSPESA_ACQ, IVA_SOSPESA_VEN, '
      'IVA_PRORATA_ACQ, '
      '   IVA_PRORATA_VEN, IVA_INDETRAIBILE, CP_IVA_INDETRAIBILE, '
      'IVA_RITARDO, '
      '   INTERESSI_PASSIVI, SP_INIZIALE, SP_FINALE, PROFITTI_PERDITE, '
      'RISULTATO_ESERCIZIO, '
      
        '   RATEI_ATTIVI, RATEI_PASSIVI, RISCONTI_ACTIVI, RISCONTI_PASSIV' +
        'I, '
      'IVA_ACQ_SU_VEN, '
      '   CONTO_CLIENTE, CONTO_FORNITORE, GR_SPECIE1, GR_SPECIE2, '
      'DATA_RIF_VALUTA, '
      '   ATTIVA_TRIANGOLAZIONE, DATA_TRIANGOLAZIONE, MONETA_EURO_ID, '
      'ATTIVA_TRIANG_EXTRACEE, '
      '   DESCR_ZOOM_ART, TIPO_CASSA, DESCR_CAUS_LIBRO_GIORN, '
      'TIPO_RICAVI, CAU_EVASIONI_ORD, '
      '   COD_IVA_SPESE_BOLLO, COD_IVA_SPESE_INCASSO, '
      'COD_IVA_SPESE_IMBALLO, COD_IVA_SPESE_CONTRASEGNO, '
      '   COD_IVA_SPESE_ACC, COD_IVA_SPESE_SPED, SPEDIZIONE_C, '
      'SPEDIZIONE_R, IMBALLO_C, '
      '   IMBALLO_R, ACCESSORIE_C, ACCESSORIE_R, CONTRASEGNO_C, '
      'CONTRASEGNO_R, '
      '   RESO_C, RESO_R, ABBUONI_C, ABBUONI_R, OMAGGIO_C, OMAGGIO_R, '
      'ALTRE_SPESE_C, '
      
        '   ALTRE_SPESE_R, IVA_C_OMAGGIO, ACQUISTI, VENDITE, BOLLI_C, BOL' +
        'LI_R, '
      'INCASSO_C, '
      '   INCASSO_R, TIPO_INCASSO_C, TIPO_INCASSO_R, VALUTA_RIFER, '
      'COD_QUADRAT, '
      
        '   ARR_CONV_DARE, ARR_CONV_AVERE, CAUS_EVASIONI_IMP, RIF_VALUTA,' +
        ' '
      'SMTP, '
      '   POP3, USERNAME, PASSWORDS, TOTORE, TOTGIORNI, COSTONORM, '
      'COSTOSTRA, '
      '   COSTOTRAS, COSTOFEST, COMPORT, BAUDRATE, DATABITS, STOPBITS, '
      'PARITY, '
      '   FTPHOST, USERFTP, PASSFTP, DIRFTP, PORTFTP)'
      'values'
      
        '  (:CASSA, :RICAVI, :CORRISPETTIVI, :CORRISPETTIVI_VENTILAZIONE,' +
        ' '
      ':IVA_ERARIO, '
      '   :IVA_ACQ, :IVA_VEN, :IVA_SOSPESA_ACQ, :IVA_SOSPESA_VEN, '
      ':IVA_PRORATA_ACQ, '
      '   :IVA_PRORATA_VEN, :IVA_INDETRAIBILE, :CP_IVA_INDETRAIBILE, '
      ':IVA_RITARDO, '
      
        '   :INTERESSI_PASSIVI, :SP_INIZIALE, :SP_FINALE, :PROFITTI_PERDI' +
        'TE, '
      ':RISULTATO_ESERCIZIO, '
      
        '   :RATEI_ATTIVI, :RATEI_PASSIVI, :RISCONTI_ACTIVI, :RISCONTI_PA' +
        'SSIVI, '
      
        '   :IVA_ACQ_SU_VEN, :CONTO_CLIENTE, :CONTO_FORNITORE, :GR_SPECIE' +
        '1, '
      ':GR_SPECIE2, '
      
        '   :DATA_RIF_VALUTA, :ATTIVA_TRIANGOLAZIONE, :DATA_TRIANGOLAZION' +
        'E, '
      ':MONETA_EURO_ID, '
      '   :ATTIVA_TRIANG_EXTRACEE, :DESCR_ZOOM_ART, :TIPO_CASSA, '
      ':DESCR_CAUS_LIBRO_GIORN, '
      '   :TIPO_RICAVI, :CAU_EVASIONI_ORD, :COD_IVA_SPESE_BOLLO, '
      ':COD_IVA_SPESE_INCASSO, '
      '   :COD_IVA_SPESE_IMBALLO, :COD_IVA_SPESE_CONTRASEGNO, '
      ':COD_IVA_SPESE_ACC, '
      
        '   :COD_IVA_SPESE_SPED, :SPEDIZIONE_C, :SPEDIZIONE_R, :IMBALLO_C' +
        ', '
      ':IMBALLO_R, '
      
        '   :ACCESSORIE_C, :ACCESSORIE_R, :CONTRASEGNO_C, :CONTRASEGNO_R,' +
        ' '
      ':RESO_C, '
      '   :RESO_R, :ABBUONI_C, :ABBUONI_R, :OMAGGIO_C, :OMAGGIO_R, '
      ':ALTRE_SPESE_C, '
      
        '   :ALTRE_SPESE_R, :IVA_C_OMAGGIO, :ACQUISTI, :VENDITE, :BOLLI_C' +
        ', '
      ':BOLLI_R, '
      '   :INCASSO_C, :INCASSO_R, :TIPO_INCASSO_C, :TIPO_INCASSO_R, '
      ':VALUTA_RIFER, '
      '   :COD_QUADRAT, :ARR_CONV_DARE, :ARR_CONV_AVERE, '
      ':CAUS_EVASIONI_IMP, :RIF_VALUTA, '
      '   :SMTP, :POP3, :USERNAME, :PASSWORDS, :TOTORE, :TOTGIORNI, '
      ':COSTONORM, '
      '   :COSTOSTRA, :COSTOTRAS, :COSTOFEST, :COMPORT, :BAUDRATE, '
      ':DATABITS, '
      
        '   :STOPBITS, :PARITY, :FTPHOST, :USERFTP, :PASSFTP, :DIRFTP, :P' +
        'ORTFTP)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_pers_az '
      '')
    SelectSQL.Strings = (
      'select * from tab_pers_az')
    ModifySQL.Strings = (
      'update tab_pers_az'
      'set'
      '  CASSA = :CASSA,'
      '  RICAVI = :RICAVI,'
      '  CORRISPETTIVI = :CORRISPETTIVI,'
      '  CORRISPETTIVI_VENTILAZIONE = :CORRISPETTIVI_VENTILAZIONE,'
      '  IVA_ERARIO = :IVA_ERARIO,'
      '  IVA_ACQ = :IVA_ACQ,'
      '  IVA_VEN = :IVA_VEN,'
      '  IVA_SOSPESA_ACQ = :IVA_SOSPESA_ACQ,'
      '  IVA_SOSPESA_VEN = :IVA_SOSPESA_VEN,'
      '  IVA_PRORATA_ACQ = :IVA_PRORATA_ACQ,'
      '  IVA_PRORATA_VEN = :IVA_PRORATA_VEN,'
      '  IVA_INDETRAIBILE = :IVA_INDETRAIBILE,'
      '  CP_IVA_INDETRAIBILE = :CP_IVA_INDETRAIBILE,'
      '  IVA_RITARDO = :IVA_RITARDO,'
      '  INTERESSI_PASSIVI = :INTERESSI_PASSIVI,'
      '  SP_INIZIALE = :SP_INIZIALE,'
      '  SP_FINALE = :SP_FINALE,'
      '  PROFITTI_PERDITE = :PROFITTI_PERDITE,'
      '  RISULTATO_ESERCIZIO = :RISULTATO_ESERCIZIO,'
      '  RATEI_ATTIVI = :RATEI_ATTIVI,'
      '  RATEI_PASSIVI = :RATEI_PASSIVI,'
      '  RISCONTI_ACTIVI = :RISCONTI_ACTIVI,'
      '  RISCONTI_PASSIVI = :RISCONTI_PASSIVI,'
      '  IVA_ACQ_SU_VEN = :IVA_ACQ_SU_VEN,'
      '  CONTO_CLIENTE = :CONTO_CLIENTE,'
      '  CONTO_FORNITORE = :CONTO_FORNITORE,'
      '  GR_SPECIE1 = :GR_SPECIE1,'
      '  GR_SPECIE2 = :GR_SPECIE2,'
      '  DATA_RIF_VALUTA = :DATA_RIF_VALUTA,'
      '  ATTIVA_TRIANGOLAZIONE = :ATTIVA_TRIANGOLAZIONE,'
      '  DATA_TRIANGOLAZIONE = :DATA_TRIANGOLAZIONE,'
      '  MONETA_EURO_ID = :MONETA_EURO_ID,'
      '  ATTIVA_TRIANG_EXTRACEE = :ATTIVA_TRIANG_EXTRACEE,'
      '  DESCR_ZOOM_ART = :DESCR_ZOOM_ART,'
      '  TIPO_CASSA = :TIPO_CASSA,'
      '  DESCR_CAUS_LIBRO_GIORN = :DESCR_CAUS_LIBRO_GIORN,'
      '  TIPO_RICAVI = :TIPO_RICAVI,'
      '  CAU_EVASIONI_ORD = :CAU_EVASIONI_ORD,'
      '  COD_IVA_SPESE_BOLLO = :COD_IVA_SPESE_BOLLO,'
      '  COD_IVA_SPESE_INCASSO = :COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMBALLO = :COD_IVA_SPESE_IMBALLO,'
      '  COD_IVA_SPESE_CONTRASEGNO = :COD_IVA_SPESE_CONTRASEGNO,'
      '  COD_IVA_SPESE_ACC = :COD_IVA_SPESE_ACC,'
      '  COD_IVA_SPESE_SPED = :COD_IVA_SPESE_SPED,'
      '  SPEDIZIONE_C = :SPEDIZIONE_C,'
      '  SPEDIZIONE_R = :SPEDIZIONE_R,'
      '  IMBALLO_C = :IMBALLO_C,'
      '  IMBALLO_R = :IMBALLO_R,'
      '  ACCESSORIE_C = :ACCESSORIE_C,'
      '  ACCESSORIE_R = :ACCESSORIE_R,'
      '  CONTRASEGNO_C = :CONTRASEGNO_C,'
      '  CONTRASEGNO_R = :CONTRASEGNO_R,'
      '  RESO_C = :RESO_C,'
      '  RESO_R = :RESO_R,'
      '  ABBUONI_C = :ABBUONI_C,'
      '  ABBUONI_R = :ABBUONI_R,'
      '  OMAGGIO_C = :OMAGGIO_C,'
      '  OMAGGIO_R = :OMAGGIO_R,'
      '  ALTRE_SPESE_C = :ALTRE_SPESE_C,'
      '  ALTRE_SPESE_R = :ALTRE_SPESE_R,'
      '  IVA_C_OMAGGIO = :IVA_C_OMAGGIO,'
      '  ACQUISTI = :ACQUISTI,'
      '  VENDITE = :VENDITE,'
      '  BOLLI_C = :BOLLI_C,'
      '  BOLLI_R = :BOLLI_R,'
      '  INCASSO_C = :INCASSO_C,'
      '  INCASSO_R = :INCASSO_R,'
      '  TIPO_INCASSO_C = :TIPO_INCASSO_C,'
      '  TIPO_INCASSO_R = :TIPO_INCASSO_R,'
      '  VALUTA_RIFER = :VALUTA_RIFER,'
      '  COD_QUADRAT = :COD_QUADRAT,'
      '  ARR_CONV_DARE = :ARR_CONV_DARE,'
      '  ARR_CONV_AVERE = :ARR_CONV_AVERE,'
      '  CAUS_EVASIONI_IMP = :CAUS_EVASIONI_IMP,'
      '  RIF_VALUTA = :RIF_VALUTA,'
      '  SMTP = :SMTP,'
      '  POP3 = :POP3,'
      '  USERNAME = :USERNAME,'
      '  PASSWORDS = :PASSWORDS,'
      '  TOTORE = :TOTORE,'
      '  TOTGIORNI = :TOTGIORNI,'
      '  COSTONORM = :COSTONORM,'
      '  COSTOSTRA = :COSTOSTRA,'
      '  COSTOTRAS = :COSTOTRAS,'
      '  COSTOFEST = :COSTOFEST,'
      '  COMPORT = :COMPORT,'
      '  BAUDRATE = :BAUDRATE,'
      '  DATABITS = :DATABITS,'
      '  STOPBITS = :STOPBITS,'
      '  PARITY = :PARITY,'
      '  FTPHOST = :FTPHOST,'
      '  USERFTP = :USERFTP,'
      '  PASSFTP = :PASSFTP,'
      '  DIRFTP = :DIRFTP,'
      '  PORTFTP = :PORTFTP')
    Left = 632
    Top = 504
    object ibTabPersAzCASSA: TIntegerField
      FieldName = 'CASSA'
      Origin = '"TAB_PERS_AZ"."CASSA"'
    end
    object ibTabPersAzRICAVI: TIntegerField
      FieldName = 'RICAVI'
      Origin = '"TAB_PERS_AZ"."RICAVI"'
    end
    object ibTabPersAzCORRISPETTIVI: TIntegerField
      FieldName = 'CORRISPETTIVI'
      Origin = '"TAB_PERS_AZ"."CORRISPETTIVI"'
    end
    object ibTabPersAzCORRISPETTIVI_VENTILAZIONE: TIntegerField
      FieldName = 'CORRISPETTIVI_VENTILAZIONE'
      Origin = '"TAB_PERS_AZ"."CORRISPETTIVI_VENTILAZIONE"'
    end
    object ibTabPersAzIVA_ERARIO: TIntegerField
      FieldName = 'IVA_ERARIO'
      Origin = '"TAB_PERS_AZ"."IVA_ERARIO"'
    end
    object ibTabPersAzIVA_ACQ: TIntegerField
      FieldName = 'IVA_ACQ'
      Origin = '"TAB_PERS_AZ"."IVA_ACQ"'
    end
    object ibTabPersAzIVA_VEN: TIntegerField
      FieldName = 'IVA_VEN'
      Origin = '"TAB_PERS_AZ"."IVA_VEN"'
    end
    object ibTabPersAzIVA_SOSPESA_ACQ: TIntegerField
      FieldName = 'IVA_SOSPESA_ACQ'
      Origin = '"TAB_PERS_AZ"."IVA_SOSPESA_ACQ"'
    end
    object ibTabPersAzIVA_SOSPESA_VEN: TIntegerField
      FieldName = 'IVA_SOSPESA_VEN'
      Origin = '"TAB_PERS_AZ"."IVA_SOSPESA_VEN"'
    end
    object ibTabPersAzIVA_PRORATA_ACQ: TIntegerField
      FieldName = 'IVA_PRORATA_ACQ'
      Origin = '"TAB_PERS_AZ"."IVA_PRORATA_ACQ"'
    end
    object ibTabPersAzIVA_PRORATA_VEN: TIntegerField
      FieldName = 'IVA_PRORATA_VEN'
      Origin = '"TAB_PERS_AZ"."IVA_PRORATA_VEN"'
    end
    object ibTabPersAzIVA_INDETRAIBILE: TIntegerField
      FieldName = 'IVA_INDETRAIBILE'
      Origin = '"TAB_PERS_AZ"."IVA_INDETRAIBILE"'
    end
    object ibTabPersAzCP_IVA_INDETRAIBILE: TIntegerField
      FieldName = 'CP_IVA_INDETRAIBILE'
      Origin = '"TAB_PERS_AZ"."CP_IVA_INDETRAIBILE"'
    end
    object ibTabPersAzIVA_RITARDO: TIntegerField
      FieldName = 'IVA_RITARDO'
      Origin = '"TAB_PERS_AZ"."IVA_RITARDO"'
    end
    object ibTabPersAzINTERESSI_PASSIVI: TIntegerField
      FieldName = 'INTERESSI_PASSIVI'
      Origin = '"TAB_PERS_AZ"."INTERESSI_PASSIVI"'
    end
    object ibTabPersAzSP_INIZIALE: TIntegerField
      FieldName = 'SP_INIZIALE'
      Origin = '"TAB_PERS_AZ"."SP_INIZIALE"'
    end
    object ibTabPersAzSP_FINALE: TIntegerField
      FieldName = 'SP_FINALE'
      Origin = '"TAB_PERS_AZ"."SP_FINALE"'
    end
    object ibTabPersAzPROFITTI_PERDITE: TIntegerField
      FieldName = 'PROFITTI_PERDITE'
      Origin = '"TAB_PERS_AZ"."PROFITTI_PERDITE"'
    end
    object ibTabPersAzRISULTATO_ESERCIZIO: TIntegerField
      FieldName = 'RISULTATO_ESERCIZIO'
      Origin = '"TAB_PERS_AZ"."RISULTATO_ESERCIZIO"'
    end
    object ibTabPersAzRATEI_ATTIVI: TIntegerField
      FieldName = 'RATEI_ATTIVI'
      Origin = '"TAB_PERS_AZ"."RATEI_ATTIVI"'
    end
    object ibTabPersAzRATEI_PASSIVI: TIntegerField
      FieldName = 'RATEI_PASSIVI'
      Origin = '"TAB_PERS_AZ"."RATEI_PASSIVI"'
    end
    object ibTabPersAzRISCONTI_ACTIVI: TIntegerField
      FieldName = 'RISCONTI_ACTIVI'
      Origin = '"TAB_PERS_AZ"."RISCONTI_ACTIVI"'
    end
    object ibTabPersAzRISCONTI_PASSIVI: TIntegerField
      FieldName = 'RISCONTI_PASSIVI'
      Origin = '"TAB_PERS_AZ"."RISCONTI_PASSIVI"'
    end
    object ibTabPersAzIVA_ACQ_SU_VEN: TIntegerField
      FieldName = 'IVA_ACQ_SU_VEN'
      Origin = '"TAB_PERS_AZ"."IVA_ACQ_SU_VEN"'
    end
    object ibTabPersAzCONTO_CLIENTE: TIntegerField
      FieldName = 'CONTO_CLIENTE'
      Origin = '"TAB_PERS_AZ"."CONTO_CLIENTE"'
    end
    object ibTabPersAzCONTO_FORNITORE: TIntegerField
      FieldName = 'CONTO_FORNITORE'
      Origin = '"TAB_PERS_AZ"."CONTO_FORNITORE"'
    end
    object ibTabPersAzGR_SPECIE1: TIntegerField
      FieldName = 'GR_SPECIE1'
      Origin = '"TAB_PERS_AZ"."GR_SPECIE1"'
    end
    object ibTabPersAzGR_SPECIE2: TIntegerField
      FieldName = 'GR_SPECIE2'
      Origin = '"TAB_PERS_AZ"."GR_SPECIE2"'
    end
    object ibTabPersAzDATA_RIF_VALUTA: TIntegerField
      FieldName = 'DATA_RIF_VALUTA'
      Origin = '"TAB_PERS_AZ"."DATA_RIF_VALUTA"'
    end
    object ibTabPersAzATTIVA_TRIANGOLAZIONE: TSmallintField
      FieldName = 'ATTIVA_TRIANGOLAZIONE'
      Origin = '"TAB_PERS_AZ"."ATTIVA_TRIANGOLAZIONE"'
    end
    object ibTabPersAzDATA_TRIANGOLAZIONE: TDateTimeField
      FieldName = 'DATA_TRIANGOLAZIONE'
      Origin = '"TAB_PERS_AZ"."DATA_TRIANGOLAZIONE"'
    end
    object ibTabPersAzMONETA_EURO_ID: TIBStringField
      FieldName = 'MONETA_EURO_ID'
      Origin = '"TAB_PERS_AZ"."MONETA_EURO_ID"'
      Size = 4
    end
    object ibTabPersAzATTIVA_TRIANG_EXTRACEE: TIntegerField
      FieldName = 'ATTIVA_TRIANG_EXTRACEE'
      Origin = '"TAB_PERS_AZ"."ATTIVA_TRIANG_EXTRACEE"'
    end
    object ibTabPersAzDESCR_ZOOM_ART: TIntegerField
      FieldName = 'DESCR_ZOOM_ART'
      Origin = '"TAB_PERS_AZ"."DESCR_ZOOM_ART"'
    end
    object ibTabPersAzTIPO_CASSA: TSmallintField
      FieldName = 'TIPO_CASSA'
      Origin = '"TAB_PERS_AZ"."TIPO_CASSA"'
    end
    object ibTabPersAzDESCR_CAUS_LIBRO_GIORN: TIntegerField
      FieldName = 'DESCR_CAUS_LIBRO_GIORN'
      Origin = '"TAB_PERS_AZ"."DESCR_CAUS_LIBRO_GIORN"'
    end
    object ibTabPersAzTIPO_RICAVI: TSmallintField
      FieldName = 'TIPO_RICAVI'
      Origin = '"TAB_PERS_AZ"."TIPO_RICAVI"'
    end
    object ibTabPersAzCAU_EVASIONI_ORD: TIBStringField
      FieldName = 'CAU_EVASIONI_ORD'
      Origin = '"TAB_PERS_AZ"."CAU_EVASIONI_ORD"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_BOLLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLO'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_BOLLO"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_IMBALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMBALLO'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_IMBALLO"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_CONTRASEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASEGNO'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_CONTRASEGNO"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_ACC: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACC'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_ACC"'
      Size = 4
    end
    object ibTabPersAzCOD_IVA_SPESE_SPED: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPED'
      Origin = '"TAB_PERS_AZ"."COD_IVA_SPESE_SPED"'
      Size = 4
    end
    object ibTabPersAzSPEDIZIONE_C: TIntegerField
      FieldName = 'SPEDIZIONE_C'
      Origin = '"TAB_PERS_AZ"."SPEDIZIONE_C"'
    end
    object ibTabPersAzSPEDIZIONE_R: TIntegerField
      FieldName = 'SPEDIZIONE_R'
      Origin = '"TAB_PERS_AZ"."SPEDIZIONE_R"'
    end
    object ibTabPersAzIMBALLO_C: TIntegerField
      FieldName = 'IMBALLO_C'
      Origin = '"TAB_PERS_AZ"."IMBALLO_C"'
    end
    object ibTabPersAzIMBALLO_R: TIntegerField
      FieldName = 'IMBALLO_R'
      Origin = '"TAB_PERS_AZ"."IMBALLO_R"'
    end
    object ibTabPersAzACCESSORIE_C: TIntegerField
      FieldName = 'ACCESSORIE_C'
      Origin = '"TAB_PERS_AZ"."ACCESSORIE_C"'
    end
    object ibTabPersAzACCESSORIE_R: TIntegerField
      FieldName = 'ACCESSORIE_R'
      Origin = '"TAB_PERS_AZ"."ACCESSORIE_R"'
    end
    object ibTabPersAzCONTRASEGNO_C: TIntegerField
      FieldName = 'CONTRASEGNO_C'
      Origin = '"TAB_PERS_AZ"."CONTRASEGNO_C"'
    end
    object ibTabPersAzCONTRASEGNO_R: TIntegerField
      FieldName = 'CONTRASEGNO_R'
      Origin = '"TAB_PERS_AZ"."CONTRASEGNO_R"'
    end
    object ibTabPersAzRESO_C: TIntegerField
      FieldName = 'RESO_C'
      Origin = '"TAB_PERS_AZ"."RESO_C"'
    end
    object ibTabPersAzRESO_R: TIntegerField
      FieldName = 'RESO_R'
      Origin = '"TAB_PERS_AZ"."RESO_R"'
    end
    object ibTabPersAzABBUONI_C: TIntegerField
      FieldName = 'ABBUONI_C'
      Origin = '"TAB_PERS_AZ"."ABBUONI_C"'
    end
    object ibTabPersAzABBUONI_R: TIntegerField
      FieldName = 'ABBUONI_R'
      Origin = '"TAB_PERS_AZ"."ABBUONI_R"'
    end
    object ibTabPersAzOMAGGIO_C: TIntegerField
      FieldName = 'OMAGGIO_C'
      Origin = '"TAB_PERS_AZ"."OMAGGIO_C"'
    end
    object ibTabPersAzOMAGGIO_R: TIntegerField
      FieldName = 'OMAGGIO_R'
      Origin = '"TAB_PERS_AZ"."OMAGGIO_R"'
    end
    object ibTabPersAzALTRE_SPESE_C: TIntegerField
      FieldName = 'ALTRE_SPESE_C'
      Origin = '"TAB_PERS_AZ"."ALTRE_SPESE_C"'
    end
    object ibTabPersAzALTRE_SPESE_R: TIntegerField
      FieldName = 'ALTRE_SPESE_R'
      Origin = '"TAB_PERS_AZ"."ALTRE_SPESE_R"'
    end
    object ibTabPersAzIVA_C_OMAGGIO: TIntegerField
      FieldName = 'IVA_C_OMAGGIO'
      Origin = '"TAB_PERS_AZ"."IVA_C_OMAGGIO"'
    end
    object ibTabPersAzACQUISTI: TIntegerField
      FieldName = 'ACQUISTI'
      Origin = '"TAB_PERS_AZ"."ACQUISTI"'
    end
    object ibTabPersAzVENDITE: TIntegerField
      FieldName = 'VENDITE'
      Origin = '"TAB_PERS_AZ"."VENDITE"'
    end
    object ibTabPersAzBOLLI_C: TIntegerField
      FieldName = 'BOLLI_C'
      Origin = '"TAB_PERS_AZ"."BOLLI_C"'
    end
    object ibTabPersAzBOLLI_R: TIntegerField
      FieldName = 'BOLLI_R'
      Origin = '"TAB_PERS_AZ"."BOLLI_R"'
    end
    object ibTabPersAzINCASSO_C: TIntegerField
      FieldName = 'INCASSO_C'
      Origin = '"TAB_PERS_AZ"."INCASSO_C"'
    end
    object ibTabPersAzINCASSO_R: TIntegerField
      FieldName = 'INCASSO_R'
      Origin = '"TAB_PERS_AZ"."INCASSO_R"'
    end
    object ibTabPersAzTIPO_INCASSO_C: TSmallintField
      FieldName = 'TIPO_INCASSO_C'
      Origin = '"TAB_PERS_AZ"."TIPO_INCASSO_C"'
    end
    object ibTabPersAzTIPO_INCASSO_R: TSmallintField
      FieldName = 'TIPO_INCASSO_R'
      Origin = '"TAB_PERS_AZ"."TIPO_INCASSO_R"'
    end
    object ibTabPersAzVALUTA_RIFER: TIBStringField
      FieldName = 'VALUTA_RIFER'
      Origin = '"TAB_PERS_AZ"."VALUTA_RIFER"'
      Size = 4
    end
    object ibTabPersAzCOD_QUADRAT: TSmallintField
      FieldName = 'COD_QUADRAT'
      Origin = '"TAB_PERS_AZ"."COD_QUADRAT"'
    end
    object ibTabPersAzARR_CONV_DARE: TIntegerField
      FieldName = 'ARR_CONV_DARE'
      Origin = '"TAB_PERS_AZ"."ARR_CONV_DARE"'
    end
    object ibTabPersAzARR_CONV_AVERE: TIntegerField
      FieldName = 'ARR_CONV_AVERE'
      Origin = '"TAB_PERS_AZ"."ARR_CONV_AVERE"'
    end
    object ibTabPersAzCAUS_EVASIONI_IMP: TIntegerField
      FieldName = 'CAUS_EVASIONI_IMP'
      Origin = '"TAB_PERS_AZ"."CAUS_EVASIONI_IMP"'
    end
    object ibTabPersAzRIF_VALUTA: TIBStringField
      FieldName = 'RIF_VALUTA'
      Origin = '"TAB_PERS_AZ"."RIF_VALUTA"'
      Size = 100
    end
    object ibTabPersAzSMTP: TIBStringField
      FieldName = 'SMTP'
      Origin = '"TAB_PERS_AZ"."SMTP"'
      Size = 30
    end
    object ibTabPersAzPOP3: TIBStringField
      FieldName = 'POP3'
      Origin = '"TAB_PERS_AZ"."POP3"'
      Size = 30
    end
    object ibTabPersAzUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Origin = '"TAB_PERS_AZ"."USERNAME"'
      Size = 30
    end
    object ibTabPersAzPASSWORDS: TIBStringField
      FieldName = 'PASSWORDS'
      Origin = '"TAB_PERS_AZ"."PASSWORDS"'
      Size = 30
    end
    object ibTabPersAzTOTORE: TFloatField
      FieldName = 'TOTORE'
      Origin = '"TAB_PERS_AZ"."TOTORE"'
    end
    object ibTabPersAzTOTGIORNI: TFloatField
      FieldName = 'TOTGIORNI'
      Origin = '"TAB_PERS_AZ"."TOTGIORNI"'
    end
    object ibTabPersAzCOSTONORM: TFloatField
      FieldName = 'COSTONORM'
      Origin = '"TAB_PERS_AZ"."COSTONORM"'
    end
    object ibTabPersAzCOSTOSTRA: TFloatField
      FieldName = 'COSTOSTRA'
      Origin = '"TAB_PERS_AZ"."COSTOSTRA"'
    end
    object ibTabPersAzCOSTOTRAS: TFloatField
      FieldName = 'COSTOTRAS'
      Origin = '"TAB_PERS_AZ"."COSTOTRAS"'
    end
    object ibTabPersAzCOSTOFEST: TFloatField
      FieldName = 'COSTOFEST'
      Origin = '"TAB_PERS_AZ"."COSTOFEST"'
    end
    object ibTabPersAzCOMPORT: TIBStringField
      FieldName = 'COMPORT'
      Origin = '"TAB_PERS_AZ"."COMPORT"'
      Size = 1
    end
    object ibTabPersAzBAUDRATE: TIBStringField
      FieldName = 'BAUDRATE'
      Origin = '"TAB_PERS_AZ"."BAUDRATE"'
      Size = 7
    end
    object ibTabPersAzDATABITS: TIBStringField
      FieldName = 'DATABITS'
      Origin = '"TAB_PERS_AZ"."DATABITS"'
      Size = 2
    end
    object ibTabPersAzSTOPBITS: TIBStringField
      FieldName = 'STOPBITS'
      Origin = '"TAB_PERS_AZ"."STOPBITS"'
      Size = 3
    end
    object ibTabPersAzPARITY: TIBStringField
      FieldName = 'PARITY'
      Origin = '"TAB_PERS_AZ"."PARITY"'
      Size = 10
    end
    object ibTabPersAzFTPHOST: TIBStringField
      FieldName = 'FTPHOST'
      Origin = '"TAB_PERS_AZ"."FTPHOST"'
      Size = 50
    end
    object ibTabPersAzUSERFTP: TIBStringField
      FieldName = 'USERFTP'
      Origin = '"TAB_PERS_AZ"."USERFTP"'
      Size = 50
    end
    object ibTabPersAzPASSFTP: TIBStringField
      FieldName = 'PASSFTP'
      Origin = '"TAB_PERS_AZ"."PASSFTP"'
      Size = 50
    end
    object ibTabPersAzDIRFTP: TIBStringField
      FieldName = 'DIRFTP'
      Origin = '"TAB_PERS_AZ"."DIRFTP"'
      Size = 50
    end
    object ibTabPersAzPORTFTP: TIBStringField
      FieldName = 'PORTFTP'
      Origin = '"TAB_PERS_AZ"."PORTFTP"'
      Size = 5
    end
  end
  object ibqryContab2: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from CONTABILITA'
      'Order By DATA_DOC,NUM_PROT')
    UpdateObject = IBUpContab2
    Left = 8
    Top = 80
    object ibqryContab2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTABILITA"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqryContab2NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
      Origin = '"CONTABILITA"."NUM_PROT"'
    end
    object ibqryContab2DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CONTABILITA"."DATA_MOV"'
    end
    object ibqryContab2DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"CONTABILITA"."DATA_DOC"'
    end
    object ibqryContab2NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"CONTABILITA"."NUM_DOC"'
    end
    object ibqryContab2DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"CONTABILITA"."DOC_ID"'
    end
    object ibqryContab2DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"CONTABILITA"."DESCR_MOV"'
      Size = 100
    end
    object ibqryContab2SOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Origin = '"CONTABILITA"."SOTTOCONTO_DESCR"'
      Size = 100
    end
    object ibqryContab2DARE: TFloatField
      FieldName = 'DARE'
      Origin = '"CONTABILITA"."DARE"'
      currency = True
    end
    object ibqryContab2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTABILITA"."CLIFOR_ID"'
    end
    object ibqryContab2TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"CONTABILITA"."TIPO_CLIFOR"'
    end
    object ibqryContab2BANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
      Origin = '"CONTABILITA"."BANCA_ID"'
    end
    object ibqryContab2BANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Origin = '"CONTABILITA"."BANCA_DESCR"'
      Size = 100
    end
    object ibqryContab2NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"CONTABILITA"."NOTE"'
      Size = 255
    end
    object ibqryContab2DATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"CONTABILITA"."DATA_SCADENZA"'
    end
    object ibqryContab2TOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      Origin = '"CONTABILITA"."TOTALE_PAGATO"'
      currency = True
    end
    object ibqryContab2SBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
      Origin = '"CONTABILITA"."SBILANCIO"'
    end
    object ibqryContab2PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"CONTABILITA"."PIANOCONTO_ID"'
    end
    object ibqryContab2NOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Origin = '"CONTABILITA"."NOME_CONTO"'
      Size = 12
    end
    object ibqryContab2CON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Origin = '"CONTABILITA"."CON_DETT"'
      Required = True
    end
    object ibqryContab2NUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
      Origin = '"CONTABILITA"."NUM_FATTURA"'
    end
    object ibqryContab2DATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
      Origin = '"CONTABILITA"."DATA_FATTURA"'
    end
    object ibqryContab2IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"CONTABILITA"."IMPORTO"'
      currency = True
    end
    object ibqryContab2ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITA"."ABBUONO"'
      currency = True
    end
    object ibqryContab2TIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Origin = '"CONTABILITA"."TIPO_MOV"'
    end
    object ibqryContab2IMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      Origin = '"CONTABILITA"."IMPONIBILE"'
      currency = True
    end
    object ibqryContab2IMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = '"CONTABILITA"."IMPOSTA"'
      currency = True
    end
    object ibqryContab2IVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
      Origin = '"CONTABILITA"."IVA_PERC"'
    end
    object ibqryContab2FK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
      Origin = '"CONTABILITA"."FK_SCADENZA"'
    end
    object ibqryContab2ASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
      Origin = '"CONTABILITA"."ASS_DATA_SCAD"'
    end
    object ibqryContab2DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"CONTABILITA"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibqryContab2DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"CONTABILITA"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibqryContab2NUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object ibqryContab2NUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object ibqryContab2NUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object ibqryContab2NUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object ibqryContab2PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibqryContab2AVERE: TFloatField
      FieldName = 'AVERE'
      Origin = '"CONTABILITA"."AVERE"'
      currency = True
    end
    object ibqryContab2COD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object ibqryContab2DESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
    object ibqryContab2REG_IVA: TIntegerField
      FieldName = 'REG_IVA'
      Origin = '"CONTABILITA"."REG_IVA"'
    end
    object ibqryContab2MESE_COMP: TIBStringField
      FieldName = 'MESE_COMP'
      Origin = '"CONTABILITA"."MESE_COMP"'
      Size = 2
    end
  end
  object IBUpContab2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  NUM_PROT,'
      '  DATA_MOV,'
      '  DATA_DOC,'
      '  NUM_DOC,'
      '  DOC_ID,'
      '  DESCR_MOV,'
      '  SOTTOCONTO_DESCR,'
      '  DARE,'
      '  AVERE,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  BANCA_ID,'
      '  BANCA_DESCR,'
      '  NOTE,'
      '  DATA_SCADENZA,'
      '  TOTALE_PAGATO,'
      '  SBILANCIO,'
      '  PIANOCONTO_ID,'
      '  NOME_CONTO,'
      '  CON_DETT,'
      '  NUM_FATTURA,'
      '  DATA_FATTURA,'
      '  IMPORTO,'
      '  ABBUONO,'
      '  TIPO_MOV,'
      '  IMPONIBILE,'
      '  IMPOSTA,'
      '  IVA_PERC,'
      '  FK_SCADENZA,'
      '  ASS_DATA_SCAD,'
      '  DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR,'
      '  NUM_ASS,'
      '  NUM_PROT2,'
      '  NUM_REG,'
      '  NUM_DOC_LETT,'
      '  PAGAMENTO_ID,'
      '  COD_ESENZ,'
      '  DESCR_ESENZ,'
      '  REG_IVA,'
      '  MESE_COMP'
      'from CONTABILITA '
      'where'
      '  PK_CODICE = :PK_CODICE')
    ModifySQL.Strings = (
      'update CONTABILITA'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  ASS_DATA_SCAD = :ASS_DATA_SCAD,'
      '  AVERE = :AVERE,'
      '  BANCA_DESCR = :BANCA_DESCR,'
      '  BANCA_ID = :BANCA_ID,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  COD_ESENZ = :COD_ESENZ,'
      '  CON_DETT = :CON_DETT,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_FATTURA = :DATA_FATTURA,'
      '  DATA_MOV = :DATA_MOV,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_ESENZ = :DESCR_ESENZ,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  DOC_ID = :DOC_ID,'
      '  FK_SCADENZA = :FK_SCADENZA,'
      '  IMPONIBILE = :IMPONIBILE,'
      '  IMPORTO = :IMPORTO,'
      '  IMPOSTA = :IMPOSTA,'
      '  IVA_PERC = :IVA_PERC,'
      '  MESE_COMP = :MESE_COMP,'
      '  NOME_CONTO = :NOME_CONTO,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_DOC_LETT = :NUM_DOC_LETT,'
      '  NUM_FATTURA = :NUM_FATTURA,'
      '  NUM_PROT = :NUM_PROT,'
      '  NUM_PROT2 = :NUM_PROT2,'
      '  NUM_REG = :NUM_REG,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  PK_CODICE = :PK_CODICE,'
      '  REG_IVA = :REG_IVA,'
      '  SBILANCIO = :SBILANCIO,'
      '  SOTTOCONTO_DESCR = :SOTTOCONTO_DESCR,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  TIPO_MOV = :TIPO_MOV,'
      '  TOTALE_PAGATO = :TOTALE_PAGATO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into CONTABILITA'
      
        '  (ABBUONO, ASS_DATA_SCAD, AVERE, BANCA_DESCR, BANCA_ID, CLIFOR_' +
        'ID, COD_ESENZ, '
      
        '   CON_DETT, DARE, DATA_DOC, DATA_FATTURA, DATA_MOV, DATA_SCADEN' +
        'ZA, DEPOSITO_CODICE, '
      
        '   DEPOSITO_DESCR, DESCR_ESENZ, DESCR_MOV, DOC_ID, FK_SCADENZA, ' +
        'IMPONIBILE, '
      
        '   IMPORTO, IMPOSTA, IVA_PERC, MESE_COMP, NOME_CONTO, NOTE, NUM_' +
        'ASS, NUM_DOC, '
      
        '   NUM_DOC_LETT, NUM_FATTURA, NUM_PROT, NUM_PROT2, NUM_REG, PAGA' +
        'MENTO_ID, '
      
        '   PIANOCONTO_ID, PK_CODICE, REG_IVA, SBILANCIO, SOTTOCONTO_DESC' +
        'R, TIPO_CLIFOR, '
      '   TIPO_MOV, TOTALE_PAGATO)'
      'values'
      
        '  (:ABBUONO, :ASS_DATA_SCAD, :AVERE, :BANCA_DESCR, :BANCA_ID, :C' +
        'LIFOR_ID, '
      
        '   :COD_ESENZ, :CON_DETT, :DARE, :DATA_DOC, :DATA_FATTURA, :DATA' +
        '_MOV, :DATA_SCADENZA, '
      
        '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :DESCR_ESENZ, :DESCR_MOV, ' +
        ':DOC_ID, '
      
        '   :FK_SCADENZA, :IMPONIBILE, :IMPORTO, :IMPOSTA, :IVA_PERC, :ME' +
        'SE_COMP, '
      
        '   :NOME_CONTO, :NOTE, :NUM_ASS, :NUM_DOC, :NUM_DOC_LETT, :NUM_F' +
        'ATTURA, '
      
        '   :NUM_PROT, :NUM_PROT2, :NUM_REG, :PAGAMENTO_ID, :PIANOCONTO_I' +
        'D, :PK_CODICE, '
      
        '   :REG_IVA, :SBILANCIO, :SOTTOCONTO_DESCR, :TIPO_CLIFOR, :TIPO_' +
        'MOV, :TOTALE_PAGATO)')
    DeleteSQL.Strings = (
      'delete from CONTABILITA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 48
    Top = 88
  end
  object ibNum_prot_ACQ: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_LAST_NUM_PROTACQ'
    Left = 688
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LAST_NUM_PROT'
        ParamType = ptOutput
      end>
  end
  object ibNum_prot_VEN: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_LAST_NUM_PROTVEN'
    Left = 736
    Top = 336
  end
  object ibNumProtAcq: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_ACQ'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_ACQ'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_ACQ '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_PROT_ACQ')
    ModifySQL.Strings = (
      'update NUM_PROT_ACQ'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 725
    Top = 272
    object ibNumProtAcqNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_ACQ"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibNumProtAcqDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_ACQ"."DATA"'
    end
  end
  object ibNumProtVen: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_VEN'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_VEN'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_VEN '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_PROT_VEN')
    ModifySQL.Strings = (
      'update NUM_PROT_VEN'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 771
    Top = 296
    object ibNumProtVenNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_ACQ"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibNumProtVenDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_ACQ"."DATA"'
    end
  end
  object ibNum_Reg: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_LAST_NUM_REG'
    Left = 13
    Top = 504
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LAST_NUM_REG'
        ParamType = ptOutput
      end>
  end
  object ibNum_RegD: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_REG_DATA'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_REG_DATA'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_REG_DATA '
      'where'
      '  DATA = :DATA and'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_REG_DATA'
      'order by data,numero')
    ModifySQL.Strings = (
      'update NUM_REG_DATA'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    Left = 672
    Top = 384
    object ibNum_RegDNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_REG_DATA"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibNum_RegDDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"NUM_REG_DATA"."DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ibNumProtACQ_INTRA: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_ACQ_INTRA'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_ACQ_INTRA'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_ACQ_INTRA '
      'where'
      '  DATA = :DATA and'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_PROT_ACQ_INTRA')
    ModifySQL.Strings = (
      'update NUM_PROT_ACQ_INTRA'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    Left = 744
    Top = 352
    object IntegerField1: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_ACQ"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_ACQ"."DATA"'
    end
  end
  object ibNum_Prot_Acq_INTRA: TIBStoredProc
    Database = ibdbAzUni
    Transaction = ibtrDef
    StoredProcName = 'PRO_LAST_NUM_PROTACQ_INTRA'
    Left = 755
    Top = 456
  end
  object ibqNumReg_Contr: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from NUM_REG_DATA'
      'where data=:pardata and numero=:parnum'
      'order by numero,data')
    Left = 747
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pardata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parnum'
        ParamType = ptUnknown
      end>
  end
  object ibqNumProtA_Contr: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from NUM_PROT_ACQ'
      'where numero=:parnum'
      'order by numero')
    Left = 787
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parnum'
        ParamType = ptUnknown
      end>
  end
  object ibqNumProtV_Contr: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from NUM_PROT_VEN'
      'where numero=:parnum'
      'order by numero')
    Left = 785
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parnum'
        ParamType = ptUnknown
      end>
  end
  object ibqNum_ProtV: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_VEN'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_VEN'
      '  (NUMERO)'
      'values'
      '  (:NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_VEN '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_PROT_VEN'
      'order by numero')
    ModifySQL.Strings = (
      'update NUM_PROT_VEN'
      'set'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 737
    Top = 176
    object ibqNum_ProtVNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_VEN"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqNum_ProtVDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_VEN"."DATA"'
    end
  end
  object ibNum_ProtA: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_ACQ'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_ACQ'
      '  (NUMERO)'
      'values'
      '  (:NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_ACQ '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from NUM_PROT_ACQ'
      'order by numero')
    ModifySQL.Strings = (
      'update NUM_PROT_ACQ'
      'set'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 791
    Top = 240
    object ibNum_ProtANUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_ACQ"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibNum_ProtADATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_ACQ"."DATA"'
    end
  end
  object ibqCaucont: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from TAB_CAU_CONT'
      'where'
      '  ID_CAUSALE = :OLD_ID_CAUSALE')
    InsertSQL.Strings = (
      'insert into TAB_CAU_CONT'
      '  (DESCR, ID_CAUSALE, ID_CONTRO_PART, IVA_COD)'
      'values'
      '  (:DESCR, :ID_CAUSALE, :ID_CONTRO_PART, :IVA_COD)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_CAUSALE,'
      '  DESCR,'
      '  IVA_COD,'
      '  ID_CONTRO_PART'
      'from TAB_CAU_CONT '
      'where'
      '  ID_CAUSALE = :ID_CAUSALE')
    SelectSQL.Strings = (
      'select * from TAB_CAU_CONT'
      'order by id_causale')
    ModifySQL.Strings = (
      'update TAB_CAU_CONT'
      'set'
      '  DESCR = :DESCR,'
      '  ID_CAUSALE = :ID_CAUSALE,'
      '  ID_CONTRO_PART = :ID_CONTRO_PART,'
      '  IVA_COD = :IVA_COD'
      'where'
      '  ID_CAUSALE = :OLD_ID_CAUSALE')
    Left = 400
  end
  object ibTab_Zone: TIBDataSet
    Database = ibdbAzUni
    Transaction = ibtrDef
    DeleteSQL.Strings = (
      'delete from tab_zone'
      'where'
      '  ID_CODICE_ZONA = :OLD_ID_CODICE_ZONA')
    InsertSQL.Strings = (
      'insert into tab_zone'
      '  (DESCR, ID_CODICE_ZONA)'
      'values'
      '  (:DESCR, :ID_CODICE_ZONA)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_zone '
      'where'
      '  ID_CODICE_ZONA = :ID_CODICE_ZONA')
    SelectSQL.Strings = (
      'select * from tab_zone'
      'order by descr')
    ModifySQL.Strings = (
      'update tab_zone'
      'set'
      '  DESCR = :DESCR,'
      '  ID_CODICE_ZONA = :ID_CODICE_ZONA'
      'where'
      '  ID_CODICE_ZONA = :OLD_ID_CODICE_ZONA')
    Left = 224
    Top = 232
  end
  object ibqMarca: TIBQuery
    Database = ibdbAzUni
    Transaction = ibtrDef
    SQL.Strings = (
      'select * from tab_marca'
      'order by descr')
    Left = 272
    Top = 65531
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_MARCA"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_MARCA"."CODICE"'
      Required = True
    end
  end
end
