object fVisTgCol: TfVisTgCol
  Left = 212
  Top = 169
  Width = 770
  Height = 410
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Viasualizza Articoli - Taglie e Colori'
  Color = 13986304
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 328
    Top = 3
    Width = 41
    Height = 14
    Caption = 'Gruppo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 440
    Top = 3
    Width = 33
    Height = 14
    Caption = 'Marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 552
    Top = 3
    Width = 45
    Height = 14
    Caption = 'Famiglia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 680
    Top = 3
    Width = 24
    Height = 14
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 304
    Top = 122
    Width = 33
    Height = 14
    Caption = 'Colori'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 534
    Top = 122
    Width = 33
    Height = 14
    Caption = 'Taglie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 0
    Top = 336
    Width = 73
    Height = 22
    Cursor = crHandPoint
    Caption = '&Stampa'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 73
    Top = 336
    Width = 86
    Height = 22
    Cursor = crHandPoint
    Caption = '&Assortimento'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 159
    Top = 336
    Width = 65
    Height = 22
    Cursor = crHandPoint
    Caption = '&Listini'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0FFFFF
      FFF07F333F7F3FFFF3370FFF700F0000FFF07F3F777F777733370F707F0FFFFF
      FFF07F77337F3FFFFFF7007EEE0F000000F077FFFF7F777777370777770FFFFF
      FFF07777777F3FFFFFF7307EEE0F000000F03773FF7F7777773733707F0FFFFF
      FFF03337737F3FFF33373333700F000FFFF03333377F77733FF73333330FFFFF
      00003333337F3FF377773333330F00FF0F033333337F77337F733333330FFFFF
      00333333337FFFFF773333333300000003333333337777777333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 224
    Top = 336
    Width = 64
    Height = 22
    Cursor = crHandPoint
    Caption = '&Chiudi'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
      BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
      BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
      BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
      BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
      EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
      EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
      EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
      EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 352
    Top = 99
    Width = 97
    Height = 22
    Cursor = crHandPoint
    Caption = '&Crea Codici'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
      00007777777777777777933393303933337073F37F37F73F3377393393303393
      379037FF7F37F37FF777379793303379793037777337F3777737339933303339
      93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
      999037777337F377777793993330333393307377FF37F3337FF7333993303333
      993033377F37F33377F7333993303333993033377337F3337737333333303333
      33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
      03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton5Click
  end
  object SpeedButton7: TSpeedButton
    Left = 576
    Top = 99
    Width = 129
    Height = 22
    Cursor = crHandPoint
    Caption = '&Crea tutti i Codici'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
      00007777777777777777933393303933337073F37F37F73F3377393393303393
      379037FF7F37F37FF777379793303379793037777337F3777737339933303339
      93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
      999037777337F377777793993330333393307377FF37F3337FF7333993303333
      993033377F37F33377F7333993303333993033377337F3337737333333303333
      33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
      03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 0
    Top = 0
    Width = 97
    Height = 21
    Cursor = crHandPoint
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = DataSource10
    ParentFont = False
    TabOrder = 0
    OnChange = RxDBLookupCombo1Change
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 104
    Top = 0
    Width = 177
    Height = 21
    Cursor = crHandPoint
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = DataSource10
    ParentFont = False
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 21
    Width = 293
    Height = 287
    DataSource = DataSource10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13893371
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cod.Art.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Color = 13893371
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = 13893371
        Expanded = False
        FieldName = 'UN_MIS2_VAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Conf.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 29
        Visible = True
      end>
  end
  object RxDBGrid2: TRxDBGrid
    Left = 296
    Top = 21
    Width = 113
    Height = 68
    DataSource = dsoGruppo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object RxDBGrid3: TRxDBGrid
    Left = 408
    Top = 21
    Width = 113
    Height = 68
    DataSource = dsoMarca
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object RxDBGrid4: TRxDBGrid
    Left = 520
    Top = 21
    Width = 113
    Height = 68
    DataSource = dsoFamiglia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object RxDBGrid5: TRxDBGrid
    Left = 632
    Top = 21
    Width = 113
    Height = 68
    DataSource = dsoTipo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 310
    Width = 224
    Height = 19
    Cursor = crHandPoint
    DataSource = DataSource10
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 7
  end
  object DBNavigator2: TDBNavigator
    Left = 307
    Top = 336
    Width = 220
    Height = 23
    DataSource = dscol
    Flat = True
    TabOrder = 8
  end
  object DBNavigator3: TDBNavigator
    Left = 538
    Top = 336
    Width = 200
    Height = 23
    DataSource = dstg
    Flat = True
    TabOrder = 9
  end
  object RxDBGrid6: TRxDBGrid
    Left = 304
    Top = 138
    Width = 227
    Height = 195
    DataSource = dscol
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COLORE'
        Title.Alignment = taCenter
        Title.Caption = 'Colore'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Color = clBlack
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Title.Color = clBlack
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PK_CODICE'
        Title.Color = clBlack
        Visible = True
      end>
  end
  object RxDBGrid7: TRxDBGrid
    Left = 532
    Top = 138
    Width = 213
    Height = 195
    DataSource = dstg
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'Taglia'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAGLIA'
        Title.Alignment = taCenter
        Title.Caption = 'Ferretto'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COPPA'
        Title.Alignment = taCenter
        Title.Caption = 'Coppa'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end>
  end
  object dsoGruppo: TDataSource
    AutoEdit = False
    DataSet = IBTable5
    Left = 296
  end
  object dstg: TDataSource
    DataSet = IBTable6
    Left = 600
    Top = 176
  end
  object dsoFamiglia: TDataSource
    AutoEdit = False
    DataSet = IBTable4
    Left = 520
  end
  object IBTable4: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_FAMIGLIA_ID'
    MasterSource = DataSource10
    StoreDefs = True
    TableName = 'TAB_FAMIGLIA'
    Left = 600
  end
  object IBTable5: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RIC'
        DataType = ftFloat
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_GRUPPO_ID'
    MasterSource = DataSource10
    StoreDefs = True
    TableName = 'TAB_GRUPPO'
    Left = 376
    object IBTable5DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable5CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
    object IBTable5RIC: TFloatField
      FieldName = 'RIC'
    end
  end
  object IBTable7: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_TIPO_ID'
    MasterSource = DataSource10
    StoreDefs = True
    TableName = 'TAB_TIPO'
    Left = 712
  end
  object dsoTipo: TDataSource
    AutoEdit = False
    DataSet = IBTable7
    Left = 640
  end
  object dscol: TDataSource
    DataSet = IBTable2
    Left = 328
    Top = 192
  end
  object IBTable1: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_MARCA_ID'
    MasterSource = DataSource10
    StoreDefs = True
    TableName = 'TAB_MARCA'
    Left = 488
    object IBTable1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable1CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
  end
  object dsoMarca: TDataSource
    AutoEdit = False
    DataSet = IBTable1
    Left = 416
  end
  object DataSource10: TDataSource
    AutoEdit = False
    DataSet = IBTable3
    Left = 224
    Top = 112
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Where FLAG_ACCESSORIE like '#39'N'#39
      'Order By CODICE_ARTICOLO')
    Left = 376
    Top = 256
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery1QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
    end
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
    end
    object IBQuery1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
    end
    object IBQuery1STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Size = 4
    end
    object IBQuery1PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Size = 10
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
    object IBQuery1CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Size = 50
    end
    object IBQuery1DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object IBQuery1NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
    end
    object IBQuery1COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
    end
    object IBQuery1DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
    end
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
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
    object IBQuery1Gruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'Gruppo'
      LookupDataSet = IBTable5
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_GRUPPO_ID'
      Lookup = True
    end
    object IBQuery1Marca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = IBTable1
      LookupKeyFields = 'DESCR'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_MARCA_ID'
      Lookup = True
    end
    object IBQuery1Famiglia: TStringField
      FieldKind = fkLookup
      FieldName = 'Famiglia'
      LookupDataSet = IBTable4
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_FAMIGLIA_ID'
      Lookup = True
    end
    object IBQuery1Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = IBTable7
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_TIPO_ID'
      Lookup = True
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'SELECT Tab_articoli.Codice_articolo, Tab_articoli.Descr, colori.' +
        'Descr, Taglia.Descr'
      
        'FROM (Tab_Articoli LEFT JOIN colori ON Tab_Articoli.Codice_artic' +
        'olo = colori.Codice_articolo) LEFT JOIN Taglia ON Tab_Articoli.C' +
        'odice_articolo = Taglia.Codice_articolo'
      
        'GROUP BY Tab_Articoli.Codice_articolo, Tab_Articoli.Descr, color' +
        'i.Descr, Taglia.Descr'
      'HAVING (((Tab_Articoli.Flag_Accessorie)='#39'N'#39'));')
    Left = 320
    Top = 256
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery2DESCR1: TIBStringField
      FieldName = 'DESCR1'
    end
    object IBQuery2DESCR2: TIBStringField
      FieldName = 'DESCR2'
    end
    object IBQuery2Prezzo_Base: TFloatField
      FieldKind = fkLookup
      FieldName = 'Prezzo_Base'
      LookupDataSet = dmodAz.ibTab_Articoli
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'PREZZO_BASE'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
    object IBQuery2Conf: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Conf'
      LookupDataSet = dmodAz.ibTab_Articoli_
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'UN_MIS2_VAL'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
    object IBQuery2Gruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'Gruppo'
      LookupDataSet = IBTable5
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
  end
  object IBTable3: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    AfterScroll = IBTable3AfterScroll
    DeleteSQL.Strings = (
      'delete from tab_Articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_Articoli'
      
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
      'from tab_Articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from tab_Articoli'
      'where flag_accessorie = '#39'N'#39
      'Order by codice_Articolo')
    ModifySQL.Strings = (
      'update tab_Articoli'
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
    Left = 232
    Top = 168
    object IBTable3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBTable3DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBTable3DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBTable3CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBTable3UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBTable3UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBTable3UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBTable3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBTable3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBTable3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBTable3PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBTable3PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBTable3PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBTable3SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBTable3SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBTable3LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBTable3GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBTable3QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBTable3ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBTable3DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBTable3PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBTable3COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBTable3TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBTable3FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBTable3FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBTable3COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBTable3RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBTable3GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBTable3ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBTable3RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBTable3RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBTable3RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBTable3RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBTable3STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBTable3GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBTable3PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBTable3CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBTable3CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBTable3CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBTable3DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBTable3VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBTable3VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBTable3VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBTable3NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBTable3TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBTable3TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBTable3OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBTable3TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBTable3CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBTable3CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBTable3DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBTable3NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBTable3NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBTable3NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBTable3FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBTable3FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBTable3PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBTable3COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBTable3DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBTable3NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBTable3TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBTable3CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBTable3CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBTable3UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBTable3UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBTable3CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBTable3CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBTable3CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBTable3FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBTable3CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBTable3FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBTable3DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBTable3SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBTable3PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBTable3P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBTable3P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBTable3P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBTable3P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBTable3SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBTable3SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBTable3SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBTable3SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBTable3SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBTable3SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBTable3SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBTable3SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBTable3SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBTable3SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBTable3SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBTable3SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBTable3R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBTable3R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBTable3R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBTable3R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBTable3IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBTable3IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBTable3IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBTable3IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBTable3RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBTable3P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBTable3IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBTable3STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBTable3CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBTable3CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBTable3AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBTable3CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBTable3CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBTable3AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBTable3CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBTable3CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBTable3AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBTable3CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBTable3CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBTable3AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBTable3CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBTable3CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBTable3AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBTable3CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBTable3CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBTable3AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBTable3ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBTable3CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBTable3CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBTable3CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBTable3CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBTable3CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBTable3CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object IBTable2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    AutoCalcFields = False
    AfterInsert = IBTable2AfterInsert
    BeforeDelete = IBTable2BeforeDelete
    BeforeEdit = IBTable2BeforeEdit
    BeforeInsert = IBTable2BeforeInsert
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
      'where codice_articolo=:codice_articolo')
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
    DataSource = DataSource10
    Left = 432
    Top = 160
    object IBTable2COLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = '"COLORI"."COLORE"'
      Size = 100
    end
    object IBTable2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"COLORI"."DESCR"'
    end
    object IBTable2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"COLORI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBTable2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"COLORI"."PK_CODICE"'
      Required = True
    end
  end
  object IBTable6: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    AfterInsert = IBTable6AfterInsert
    BeforeDelete = IBTable6BeforeDelete
    BeforeEdit = IBTable6BeforeEdit
    BeforeInsert = IBTable6BeforeInsert
    DeleteSQL.Strings = (
      'delete from taglia'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into taglia'
      '  (TAGLIA, DESCR, CODICE_ARTICOLO, PK_CODICE, COPPA)'
      'values'
      '  (:TAGLIA, :DESCR, :CODICE_ARTICOLO, :PK_CODICE,:COPPA)')
    RefreshSQL.Strings = (
      'Select *'
      'from taglia '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from taglia'
      'where codice_articolo=:codice_articolo')
    ModifySQL.Strings = (
      'update taglia'
      'set'
      '  TAGLIA = :TAGLIA,'
      '  DESCR = :DESCR,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  COPPA =:COPPA, '
      ' PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TAGLIA'
    DataSource = DataSource10
    Left = 664
    Top = 192
    object IBTable6TAGLIA: TFloatField
      FieldName = 'TAGLIA'
      Origin = '"TAGLIA"."TAGLIA"'
    end
    object IBTable6DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAGLIA"."DESCR"'
    end
    object IBTable6CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAGLIA"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBTable6PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAGLIA"."PK_CODICE"'
      Required = True
    end
    object IBTable6COPPA: TIBStringField
      FieldName = 'COPPA'
      Origin = '"TAGLIA"."COPPA"'
    end
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_COLORI'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_COLORI'
      '  (CODICE, DESCR, PK_CODICE)'
      'values'
      '  (:CODICE, :DESCR, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  PK_CODICE'
      'from TAB_COLORI '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_COLORI'
      'ORDER BY DESCR')
    ModifySQL.Strings = (
      'update TAB_COLORI'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 304
    Top = 168
    object IBDataSet1CODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"TAB_COLORI"."CODICE"'
      Size = 2
    end
    object IBDataSet1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_COLORI"."DESCR"'
      Size = 50
    end
    object IBDataSet1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_COLORI"."PK_CODICE"'
    end
  end
  object IBDataSet2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from TAB_TAGLIE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into TAB_TAGLIE'
      '  (CODICE, DESCR, PK_CODICE)'
      'values'
      '  (:CODICE, :DESCR, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE,'
      '  DESCR,'
      '  PK_CODICE'
      'from TAB_TAGLIE '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'SELECT * FROM TAB_TAGLIE'
      'ORDER BY DESCR')
    ModifySQL.Strings = (
      'update TAB_TAGLIE'
      'set'
      '  CODICE = :CODICE,'
      '  DESCR = :DESCR,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 560
    Top = 176
  end
  object IBDataSet3: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from codart'
      'where'
      '  CODICE = :OLD_CODICE')
    InsertSQL.Strings = (
      'insert into codart'
      '  (CODICE)'
      'values'
      '  (:CODICE)')
    RefreshSQL.Strings = (
      'Select *'
      'from codart '
      'where'
      '  CODICE = :CODICE')
    SelectSQL.Strings = (
      'select * from codart'
      'order by CODICE descending')
    ModifySQL.Strings = (
      'update codart'
      'set'
      '  CODICE = :CODICE'
      'where'
      '  CODICE = :OLD_CODICE')
    Left = 712
    Top = 96
  end
end
