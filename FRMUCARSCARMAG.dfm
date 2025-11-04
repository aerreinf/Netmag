object frmCarScarMag: TfrmCarScarMag
  Left = 189
  Top = 128
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = 'Carico / Scarico Magazzino'
  ClientHeight = 389
  ClientWidth = 708
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlIntestazione: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 45
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16744448
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 97
      Height = 16
      Caption = 'Codice Articolo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodice: TEdit
      Left = 112
      Top = 8
      Width = 201
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = edtCodiceEnter
      OnKeyPress = edtCodiceKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 708
    Height = 43
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 8404992
    TabOrder = 1
    DesignSize = (
      708
      43)
    object BitBtn1: TBitBtn
      Left = 646
      Top = 10
      Width = 58
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 163
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Caricare'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 263
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Scaricare'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 363
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Stampa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object bbCancella: TBitBtn
      Left = 8
      Top = 10
      Width = 100
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Cancella'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbCancellaClick
    end
  end
  object dbgCarScar: TDBGrid
    Left = 0
    Top = 45
    Width = 708
    Height = 301
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsCarScar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13041663
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Codice'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descrizione'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 317
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'PREZZO_BASE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Imponib.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'Euro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Ivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'COSTO_STANDART'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Costo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end>
  end
  object dsCarScar: TDataSource
    DataSet = rxmdCarScar
    Left = 10
    Top = 92
  end
  object dsoArticoli: TDataSource
    DataSet = IBQuery2
    Left = 210
    Top = 116
  end
  object rxmdCarScar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESCR2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE_IVA_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'UNITA_DI_MISURA1_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UNITA_DI_MISURA2_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UNITA_DI_MISURA3_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCONTO1'
        DataType = ftFloat
      end
      item
        Name = 'SCONTO2'
        DataType = ftFloat
      end
      item
        Name = 'SCONTO3'
        DataType = ftFloat
      end
      item
        Name = 'PROVVIGIONE'
        DataType = ftFloat
      end
      item
        Name = 'PESO_NETTO_KG'
        DataType = ftFloat
      end
      item
        Name = 'PESO_LORDO_KG'
        DataType = ftFloat
      end
      item
        Name = 'SCORTA_MIN'
        DataType = ftFloat
      end
      item
        Name = 'SCORTA_MAX'
        DataType = ftFloat
      end
      item
        Name = 'LOTTO_RIORDINO'
        DataType = ftFloat
      end
      item
        Name = 'GG_APPROVVIGIONAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'QTA_X_CONFEZIONE'
        DataType = ftInteger
      end
      item
        Name = 'ANNO'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_AGGIUNTIVA_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PREZZO_BASE'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_STANDART'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_ARTICOLO_ID'
        DataType = ftSmallint
      end
      item
        Name = 'FATT_CONV1'
        DataType = ftFloat
      end
      item
        Name = 'FATT_CONV2'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'RICAVO_ID'
        DataType = ftInteger
      end
      item
        Name = 'GIORNI_MAX_INVENDUTO'
        DataType = ftInteger
      end
      item
        Name = 'ASPETTO_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'RIORDINO_MESE_DA'
        DataType = ftSmallint
      end
      item
        Name = 'RIORDINO_MESE_A'
        DataType = ftSmallint
      end
      item
        Name = 'RIORDINO_GIORNO_DA'
        DataType = ftSmallint
      end
      item
        Name = 'RIORDINO_GIORNO_A'
        DataType = ftSmallint
      end
      item
        Name = 'STAGIONE_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'GRUPPO_ALTERNATIVO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PRODUTTORE_ID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CATEGORIA_ARTICOLO_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CATEGORIA_MERCEOLOGICA_ID'
        DataType = ftInteger
      end
      item
        Name = 'CODICE_BASE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DERIVATO'
        DataType = ftSmallint
      end
      item
        Name = 'VARIANTE1_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VARIANTE2_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VARIANTE3_ID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NUM_VARIANTI'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_COSTO_ID'
        DataType = ftSmallint
      end
      item
        Name = 'TIPO_RICAVO_ID'
        DataType = ftSmallint
      end
      item
        Name = 'OMAGGIO'
        DataType = ftSmallint
      end
      item
        Name = 'TIPO_CLI_FOR_ID'
        DataType = ftSmallint
      end
      item
        Name = 'CLI_FOR_ID'
        DataType = ftInteger
      end
      item
        Name = 'CODE_BAR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESCR_CODE_BAR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NON_STAMPA_INVENTARIO'
        DataType = ftSmallint
      end
      item
        Name = 'NON_STAMPA_REGISTRO'
        DataType = ftSmallint
      end
      item
        Name = 'NOMENCLATURA'
        DataType = ftInteger
      end
      item
        Name = 'FATT_CONV1_NOMENCLATURA'
        DataType = ftFloat
      end
      item
        Name = 'FATT_CONV2_NOMENCLATURA'
        DataType = ftFloat
      end
      item
        Name = 'PROV_ORDINE'
        DataType = ftInteger
      end
      item
        Name = 'COSTO_ULTIMO'
        DataType = ftFloat
      end
      item
        Name = 'DATA_COSTO_ULTIMO'
        DataType = ftDateTime
      end
      item
        Name = 'NUM_REPARTO'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CODE_BAR_ID'
        DataType = ftSmallint
      end
      item
        Name = 'CONTO_ACQUISTO'
        DataType = ftInteger
      end
      item
        Name = 'CONTO_VENDITA'
        DataType = ftInteger
      end
      item
        Name = 'UN_MIS2_VAL'
        DataType = ftInteger
      end
      item
        Name = 'UN_MIS3_VAL'
        DataType = ftInteger
      end
      item
        Name = 'CAT_ART_FAMIGLIA_ID'
        DataType = ftInteger
      end
      item
        Name = 'CAT_ART_GRUPPO_ID'
        DataType = ftInteger
      end
      item
        Name = 'CAT_ART_MARCA_ID'
        DataType = ftInteger
      end
      item
        Name = 'FOTO_PERCORSO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CAT_ART_TIPO_ID'
        DataType = ftInteger
      end
      item
        Name = 'FLAG_ACCESSORIE'
        DataType = ftString
        Size = 1
      end>
    Left = 70
    Top = 134
    object rxmdCarScarCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object rxmdCarScarDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object rxmdCarScarCOSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      currency = True
    end
    object rxmdCarScarPREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      currency = True
    end
    object rxmdCarScarFLAG_ACCESSORIE: TStringField
      FieldName = 'FLAG_ACCESSORIE'
      Size = 1
    end
    object rxmdCarScarEuro: TFloatField
      FieldName = 'Euro'
      currency = True
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 304
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
  end
end
