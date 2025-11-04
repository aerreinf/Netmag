object FStListR: TFStListR
  Left = 146
  Top = 176
  Width = 740
  Height = 530
  Caption = 'Stampe Listini'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 396
    Top = 13
    Width = 33
    Height = 13
    Caption = 'Da Art.'
    Enabled = False
  end
  object Label9: TLabel
    Left = 396
    Top = 37
    Width = 32
    Height = 13
    Caption = 'Ad Art.'
    Enabled = False
  end
  object Label2: TLabel
    Left = 286
    Top = 69
    Width = 14
    Height = 13
    Caption = 'Da'
    Enabled = False
  end
  object Label3: TLabel
    Left = 406
    Top = 69
    Width = 7
    Height = 13
    Caption = 'A'
    Enabled = False
  end
  object Label4: TLabel
    Left = 654
    Top = 104
    Width = 47
    Height = 14
    Alignment = taRightJustify
    Caption = 'Articoli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgStampa: TRadioGroup
    Left = 0
    Top = 3
    Width = 135
    Height = 89
    Caption = 'Stampa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Articoli'
      'Articoli Tg. e Col.'
      'Listini Taglie'
      'Listini Tg. e Col.'
      'Listini Assort.')
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 144
    Top = 8
    Width = 121
    Height = 53
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label7: TLabel
      Left = 3
      Top = 8
      Width = 19
      Height = 13
      Caption = 'List.'
    end
    object Label1: TLabel
      Left = 3
      Top = 32
      Width = 28
      Height = 13
      Caption = 'Ricar.'
    end
    object Label5: TLabel
      Left = 88
      Top = 32
      Width = 14
      Height = 13
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object List: TRxSpinEdit
      Left = 39
      Top = 4
      Width = 46
      Height = 21
      MaxValue = 13.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Ricar: TRxSpinEdit
      Left = 39
      Top = 28
      Width = 46
      Height = 21
      MaxValue = 100.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 0
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Stampa'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 439
    Top = 9
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 3
    Text = '000'
    OnClick = Edit1Click
    OnEnter = Edit1Enter
  end
  object Edit2: TEdit
    Left = 439
    Top = 33
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 4
    Text = 'ZZZ'
    OnClick = Edit2Click
    OnEnter = Edit2Enter
  end
  object RadioGroup1: TRadioGroup
    Left = 273
    Top = 12
    Width = 114
    Height = 33
    Caption = 'Articoli'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Scegli')
    ParentFont = False
    TabOrder = 5
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 142
    Top = 61
    Width = 114
    Height = 33
    Caption = 'Prezzo'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Range')
    ParentFont = False
    TabOrder = 6
    OnClick = RadioGroup2Click
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 304
    Top = 65
    Width = 97
    Height = 21
    AutoSize = False
    Enabled = False
    NumGlyphs = 2
    TabOrder = 7
    Value = 1.000000000000000000
  end
  object RxCalcEdit2: TRxCalcEdit
    Left = 416
    Top = 65
    Width = 97
    Height = 21
    AutoSize = False
    Enabled = False
    NumGlyphs = 2
    TabOrder = 8
    Value = 1000.000000000000000000
  end
  object Button2: TButton
    Left = 80
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Articoli'
    TabOrder = 9
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 147
    Width = 705
    Height = 331
    DataSource = DsMemory
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Codice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Descrizione'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Prezzo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Euro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Conf'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Tg1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Tg10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 14286847
        Expanded = False
        FieldName = 'Gruppo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        Color = 14286847
        Expanded = False
        FieldName = 'Col10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
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
        FieldName = 'ASS1'
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
        FieldName = 'ASS2'
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
        FieldName = 'ASS3'
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
        FieldName = 'ASS4'
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
        FieldName = 'ASS5'
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
        FieldName = 'ASS6'
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
        FieldName = 'ASS7'
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
        FieldName = 'ASS8'
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
        FieldName = 'ASS9'
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
        FieldName = 'ASS10'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 5
    Top = 128
    Width = 705
    Height = 16
    TabOrder = 11
  end
  object Edit3: TEdit
    Left = 576
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'Edit3'
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 248
    Top = 96
    Width = 240
    Height = 25
    DataSource = DsMemory
    Flat = True
    TabOrder = 13
  end
  object Button3: TButton
    Left = 632
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Esci'
    TabOrder = 14
    OnClick = Button3Click
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery1CalcFields
    CachedUpdates = True
    SQL.Strings = (
      
        'select A.CODICE_ARTICOLO,A.PREZZO_BASE,A.DESCR,A.UN_MIS2_VAL,B.R' +
        'IC,'
      
        'A.CAT_ART_GRUPPO_ID,A.CAT_ART_FAMIGLIA_ID,A.CAT_ART_TIPO_ID,A.CA' +
        'T_ART_MARCA_ID'
      
        'from TAB_ARTICOLI A left JOIN TAB_GRUPPO B ON B.CODICE = A.CAT_A' +
        'RT_GRUPPO_ID'
      'Where A.FLAG_ACCESSORIE='#39'N'#39
      'order by CODICE_ARTICOLO'
      ''
      ''
      '')
    Left = 160
    Top = 96
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IBQuery1Gruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'Gruppo'
      LookupDataSet = fVisTgCol.IBTable5
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_GRUPPO_ID'
      Lookup = True
    end
    object IBQuery1Marca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = fVisTgCol.IBTable1
      LookupKeyFields = 'DESCR'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_MARCA_ID'
      Lookup = True
    end
    object IBQuery1Famiglia: TStringField
      FieldKind = fkLookup
      FieldName = 'Famiglia'
      LookupDataSet = fVisTgCol.IBTable4
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_FAMIGLIA_ID'
      Lookup = True
    end
    object IBQuery1Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = fVisTgCol.IBTable7
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_TIPO_ID'
      Lookup = True
    end
    object IBQuery1PREZZO_LISTINO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PREZZO_LISTINO'
      DisplayFormat = '#,##.00'
      Calculated = True
    end
    object IBQuery1RIC: TFloatField
      FieldName = 'RIC'
    end
    object IBQuery1CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IBQuery1CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBQuery1CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
  end
  object frReport1: TfrReport
    OnGetValue = frReport1GetValue
    Left = 224
    PixelsPerInch = 96
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT Tab_articoli.Codice_articolo, Tab_articoli.Descr, colori.' +
        'Descr, Taglia.Descr'
      
        'FROM (Tab_Articoli LEFT JOIN colori ON Tab_Articoli.Codice_artic' +
        'olo = colori.Codice_articolo) LEFT JOIN Taglia ON Tab_Articoli.C' +
        'odice_articolo = Taglia.Codice_articolo'
      
        'GROUP BY Tab_Articoli.Codice_articolo, Tab_Articoli.Descr, color' +
        'i.Descr, Taglia.Descr'
      'HAVING (((Tab_Articoli.Flag_Accessorie)='#39'N'#39'));')
    Left = 232
    Top = 32
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
      DisplayFormat = '#,##.00'
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
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
  end
  object RxMemoryData1: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Codice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descrizione'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Prezzo'
        DataType = ftFloat
      end
      item
        Name = 'Euro'
        DataType = ftFloat
      end
      item
        Name = 'Tg1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Tg2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tg10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gruppo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col3'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col4'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col5'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col6'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col7'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col8'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col9'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Col10'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Conf'
        DataType = ftInteger
      end
      item
        Name = 'ASS1'
        DataType = ftInteger
      end
      item
        Name = 'ASS2'
        DataType = ftInteger
      end
      item
        Name = 'ASS3'
        DataType = ftInteger
      end
      item
        Name = 'ASS4'
        DataType = ftInteger
      end
      item
        Name = 'ASS5'
        DataType = ftInteger
      end
      item
        Name = 'ASS6'
        DataType = ftInteger
      end
      item
        Name = 'ASS7'
        DataType = ftInteger
      end
      item
        Name = 'ASS8'
        DataType = ftInteger
      end
      item
        Name = 'ASS9'
        DataType = ftInteger
      end
      item
        Name = 'ASS10'
        DataType = ftInteger
      end>
    Left = 368
    object RxMemoryData1Codice: TStringField
      DisplayWidth = 14
      FieldName = 'Codice'
    end
    object RxMemoryData1Descrizione: TStringField
      DisplayWidth = 43
      FieldName = 'Descrizione'
      Size = 100
    end
    object RxMemoryData1Prezzo: TFloatField
      FieldName = 'Prezzo'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object RxMemoryData1Euro: TFloatField
      FieldName = 'Euro'
      DisplayFormat = '#,##'
    end
    object RxMemoryData1Tg1: TStringField
      DisplayWidth = 6
      FieldName = 'Tg1'
      Size = 5
    end
    object RxMemoryData1Tg2: TStringField
      DisplayWidth = 24
      FieldName = 'Tg2'
    end
    object RxMemoryData1Tg3: TStringField
      DisplayWidth = 24
      FieldName = 'Tg3'
    end
    object RxMemoryData1Tg4: TStringField
      DisplayWidth = 24
      FieldName = 'Tg4'
    end
    object RxMemoryData1Tg5: TStringField
      DisplayWidth = 24
      FieldName = 'Tg5'
    end
    object RxMemoryData1Tg6: TStringField
      DisplayWidth = 24
      FieldName = 'Tg6'
    end
    object RxMemoryData1Tg7: TStringField
      DisplayWidth = 24
      FieldName = 'Tg7'
    end
    object RxMemoryData1Tg8: TStringField
      DisplayWidth = 24
      FieldName = 'Tg8'
    end
    object RxMemoryData1Tg9: TStringField
      DisplayWidth = 24
      FieldName = 'Tg9'
    end
    object RxMemoryData1Tg10: TStringField
      DisplayWidth = 24
      FieldName = 'Tg10'
    end
    object RxMemoryData1Gruppo: TStringField
      DisplayWidth = 24
      FieldName = 'Gruppo'
    end
    object RxMemoryData1Col1: TStringField
      DisplayWidth = 36
      FieldName = 'Col1'
      Size = 30
    end
    object RxMemoryData1Col2: TStringField
      DisplayWidth = 36
      FieldName = 'Col2'
      Size = 30
    end
    object RxMemoryData1Col3: TStringField
      DisplayWidth = 36
      FieldName = 'Col3'
      Size = 30
    end
    object RxMemoryData1Col4: TStringField
      DisplayWidth = 36
      FieldName = 'Col4'
      Size = 30
    end
    object RxMemoryData1Col5: TStringField
      DisplayWidth = 36
      FieldName = 'Col5'
      Size = 30
    end
    object RxMemoryData1Col6: TStringField
      DisplayWidth = 36
      FieldName = 'Col6'
      Size = 30
    end
    object RxMemoryData1Col7: TStringField
      DisplayWidth = 36
      FieldName = 'Col7'
      Size = 30
    end
    object RxMemoryData1Col8: TStringField
      DisplayWidth = 36
      FieldName = 'Col8'
      Size = 30
    end
    object RxMemoryData1Col9: TStringField
      DisplayWidth = 36
      FieldName = 'Col9'
      Size = 30
    end
    object RxMemoryData1Col10: TStringField
      DisplayWidth = 36
      FieldName = 'Col10'
      Size = 30
    end
    object RxMemoryData1Conf: TIntegerField
      FieldName = 'Conf'
    end
    object RxMemoryData1ASS1: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS1'
    end
    object RxMemoryData1ASS2: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS2'
    end
    object RxMemoryData1ASS3: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS3'
    end
    object RxMemoryData1ASS4: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS4'
    end
    object RxMemoryData1ASS5: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS5'
    end
    object RxMemoryData1ASS6: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS6'
    end
    object RxMemoryData1ASS7: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS7'
    end
    object RxMemoryData1ASS8: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS8'
    end
    object RxMemoryData1ASS9: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS9'
    end
    object RxMemoryData1ASS10: TIntegerField
      Alignment = taCenter
      FieldName = 'ASS10'
    end
  end
  object IBColori: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    FieldDefs = <
      item
        Name = 'COLORE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODICE_ARTICOLO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexFieldNames = 'CODICE_ARTICOLO'
    MasterFields = 'CODICE_ARTICOLO'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'COLORI'
    Left = 288
    Top = 40
    object IBColoriCOLORE: TIBStringField
      FieldName = 'COLORE'
      Size = 100
    end
    object IBColoriDESCR: TIBStringField
      FieldName = 'DESCR'
    end
    object IBColoriCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 192
    Top = 96
  end
  object IBTaglie2: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    FieldDefs = <
      item
        Name = 'TAGLIA'
        DataType = ftFloat
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODICE_ARTICOLO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexFieldNames = 'CODICE_ARTICOLO'
    MasterFields = 'CODICE_ARTICOLO'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'TAGLIA'
    Left = 464
    Top = 88
    object IBTaglie2TAGLIA: TFloatField
      FieldName = 'TAGLIA'
    end
    object IBTaglie2DESCR: TIBStringField
      FieldName = 'DESCR'
    end
    object IBTaglie2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
  end
  object DsMemory: TDataSource
    DataSet = RxMemoryData1
    Left = 424
    Top = 88
  end
  object IBGruppo: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
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
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'TAB_GRUPPO'
    Left = 520
    Top = 16
  end
  object frDesigner1: TfrDesigner
    Left = 648
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 648
    Top = 64
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
  object IBAss: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TAGLIA01'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA02'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA03'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA04'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA05'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA06'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA07'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA08'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA09'
        DataType = ftInteger
      end
      item
        Name = 'TAGLIA10'
        DataType = ftInteger
      end
      item
        Name = 'COLORE'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN90'
        Fields = 'CODICE_ARTICOLO'
      end>
    IndexFieldNames = 'CODICE_ARTICOLO'
    MasterFields = 'CODICE_ARTICOLO'
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'ASSORTIMENTO'
    Left = 568
    Top = 32
  end
  object IBTaglie: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from taglia'
      'where CODICE_ARTICOLO=:CA'
      'order by descr')
    Left = 536
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'CA'
        ParamType = ptUnknown
      end>
  end
  object IBAss4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from  from ASSORTIMENTO')
    Left = 600
    Top = 32
  end
end
