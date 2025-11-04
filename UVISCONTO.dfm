object fVisConto: TfVisConto
  Left = 183
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Visualizzazioni'
  ClientHeight = 524
  ClientWidth = 779
  Color = 16760962
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 12
    Width = 39
    Height = 14
    Caption = 'Da Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 40
    Width = 32
    Height = 14
    Caption = 'a Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 269
    Top = 87
    Width = 45
    Height = 14
    Caption = 'Famiglia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 439
    Top = 87
    Width = 24
    Height = 14
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 269
    Top = 48
    Width = 33
    Height = 14
    Caption = 'Marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 439
    Top = 48
    Width = 41
    Height = 14
    Caption = 'Gruppo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateEdit1: TDateEdit
    Left = 45
    Top = 8
    Width = 87
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    Text = '01/01/2000'
  end
  object DateEdit2: TDateEdit
    Left = 45
    Top = 36
    Width = 85
    Height = 19
    DefaultToday = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    Text = '01/01/2015'
  end
  object RadioGroup2: TRadioGroup
    Left = 2
    Top = 164
    Width = 112
    Height = 33
    Caption = 'Scegli Fason.'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Fason.')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object RadioGroup4: TRadioGroup
    Left = 136
    Top = 2
    Width = 105
    Height = 71
    Caption = 'Scegli Articolo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Da Art. Ad Art.'
      'x Categorie')
    ParentFont = False
    TabOrder = 3
    OnClick = RadioGroup4Click
  end
  object RadioGroup5: TRadioGroup
    Left = 2
    Top = 66
    Width = 73
    Height = 63
    Caption = 'Schede'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutte'
      'Scheda')
    ParentFont = False
    TabOrder = 4
    OnClick = RadioGroup5Click
  end
  object RxDBLookupCombo11: TRxDBLookupCombo
    Left = 88
    Top = 104
    Width = 73
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'SCHEDA'
    LookupDisplay = 'SCHEDA'
    LookupSource = DataSource1
    ParentFont = False
    TabOrder = 5
  end
  object RadioGroup6: TRadioGroup
    Left = 408
    Top = 134
    Width = 74
    Height = 63
    Caption = 'Ordina per :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Scheda'
      'Articolo'
      'Data')
    ParentFont = False
    TabOrder = 6
  end
  object RadioGroup7: TRadioGroup
    Left = 490
    Top = 134
    Width = 89
    Height = 63
    Caption = 'Visual.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Storico'
      'Da Passare'
      'Passati')
    ParentFont = False
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 701
    Top = 2
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
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 701
    Top = 29
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 701
    Top = 179
    Width = 75
    Height = 21
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 701
    Top = 82
    Width = 75
    Height = 24
    Cursor = crHandPoint
    Caption = 'Stampa Sit.2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object rxdblcDaArtCodice: TRxDBLookupCombo
    Left = 248
    Top = 2
    Width = 99
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = dsArticoli
    ParentFont = False
    TabOrder = 12
    OnChange = rxdblcDaArtCodiceChange
    OnExit = rxdblcDaArtCodiceExit
  end
  object rxdblcDaArt: TRxDBLookupCombo
    Left = 350
    Top = 2
    Width = 233
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = dsArticoli
    ParentFont = False
    TabOrder = 13
    OnChange = rxdblcDaArtChange
    OnExit = rxdblcDaArtExit
  end
  object rxdblcAdArtCodice: TRxDBLookupCombo
    Left = 248
    Top = 26
    Width = 99
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = dsArticoli
    ParentFont = False
    TabOrder = 14
    OnChange = rxdblcAdArtCodiceChange
    OnExit = rxdblcAdArtCodiceExit
  end
  object rxdblcAdArt: TRxDBLookupCombo
    Left = 350
    Top = 26
    Width = 233
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = dsArticoli
    ParentFont = False
    TabOrder = 15
    OnChange = rxdblcAdArtChange
    OnExit = rxdblcAdArtExit
  end
  object Button1: TButton
    Left = 701
    Top = 154
    Width = 75
    Height = 24
    Cursor = crHandPoint
    Caption = 'Sit. Access.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button1Click
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 115
    Top = 176
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'ID_CLI_FOR'
    LookupSource = dsDipendente
    ParentFont = False
    TabOrder = 17
    OnCloseUp = RxDBLookupCombo4CloseUp
    OnExit = RxDBLookupCombo4Exit
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 171
    Top = 176
    Width = 233
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'DENOMINAZIONE'
    LookupSource = dsDipendente
    ParentFont = False
    TabOrder = 18
    OnCloseUp = RxDBLookupCombo3CloseUp
    OnExit = RxDBLookupCombo3Exit
  end
  object RadioGroup3: TRadioGroup
    Left = 168
    Top = 74
    Width = 73
    Height = 63
    Caption = 'Bolle'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutte'
      'Numero')
    ParentFont = False
    TabOrder = 19
    OnClick = RadioGroup3Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 88
    Top = 80
    Width = 73
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'NUM_DOC'
    LookupDisplay = 'NUM_DOC'
    LookupSource = DataSource1
    ParentFont = False
    TabOrder = 20
  end
  object DBGrid2: TDBGrid
    Left = 2
    Top = 200
    Width = 775
    Height = 321
    Color = 14548735
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
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
        FieldName = 'DATA_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'SCHEDA'
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
        FieldName = 'CODICE_ARTICOLO'
        Title.Alignment = taCenter
        Title.Caption = 'CODICE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITA'
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
        FieldName = 'CLIENTE'
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
        FieldName = 'COLORE0'
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
        FieldName = 'COLORE1'
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
        FieldName = 'COLORE2'
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
        FieldName = 'COLORE3'
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
        FieldName = 'PASSATA'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
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
        FieldName = 'COSTOINVALUTA'
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
        FieldName = 'UNITA_MISURA'
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
        FieldName = 'FATTCONV'
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
        FieldName = 'QTA_UM'
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
        FieldName = 'SCONTO1'
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
        FieldName = 'SCONTO2'
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
        FieldName = 'SCONTO3'
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
        FieldName = 'SCONTO4'
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
        FieldName = 'IMPORTO_SCONTO'
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
        FieldName = 'IMPORTO'
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
        FieldName = 'IMPORTOINVALUTA'
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
        FieldName = 'OMAGGIO'
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
        FieldName = 'DEP'
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
        FieldName = 'SCONTO_EQ'
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
        FieldName = 'PERC_PROVV'
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
        FieldName = 'TIPO_SERVIZIO'
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
        FieldName = 'IVATO'
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
        FieldName = 'IMPORTO_CON_IVA'
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
        FieldName = 'CODICE_IVA_ID'
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
        FieldName = 'DATA_REG'
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
        FieldName = 'DOC_ID'
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
        FieldName = 'TOTCOLLI'
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
        FieldName = 'TOTSCAT'
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
        FieldName = 'PREZZOLIST'
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
        FieldName = 'COL'
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
        FieldName = 'TESTATA_PN_ID'
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
        FieldName = 'TIPO_DOC'
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
        FieldName = 'DA_FATTURARE'
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
        FieldName = 'DEPOSITO'
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
        FieldName = 'CONTRO_CLIFOR_ID'
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
        FieldName = 'CONTRO_TIPO_CLIFOR'
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
        FieldName = 'CONTRO_DEPOSITO'
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
        Expanded = False
        FieldName = 'CONTRO_CAUS_MAG'
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
        FieldName = 'ATTIVITA'
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
        FieldName = 'SUBATTIVITA'
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
        FieldName = 'DATA_REGISTRAZIONE'
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
        FieldName = 'DATA_CONFERMA'
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
        FieldName = 'DATA_EVASIONE'
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
        FieldName = 'STATO_DOCUMENTO'
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
        FieldName = 'STATO_CONTABILITA'
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
        FieldName = 'MONETA_ID'
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
        FieldName = 'CAMBIO'
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
        FieldName = 'KINGUA_ID'
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
        FieldName = 'NS_RIFERIMENTO'
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
        FieldName = 'VS_RIFERIMENTO'
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
        FieldName = 'CAUSALE_CONTABILE'
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
        FieldName = 'CODICE_BOLL'
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
        FieldName = 'PAGAMENTO_ID'
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
        FieldName = 'BANCA_CLIFOR'
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
        FieldName = 'BANCA_AZIENDA'
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
        FieldName = 'VETTORE1'
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
        FieldName = 'VETTORE2'
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
        FieldName = 'VETTORE3'
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
        FieldName = 'PORTO'
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
        FieldName = 'ASPETTO'
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
        FieldName = 'SPEDIZIONE'
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
        FieldName = 'PESO_NETTO'
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
        FieldName = 'PESO_LORDO'
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
        FieldName = 'CUBAGGIO'
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
        FieldName = 'DESTINARIO'
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
        FieldName = 'IMBALLO'
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
        FieldName = 'SCONTO11'
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
        FieldName = 'DATA_CONSEGNA'
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
        FieldName = 'NRCOLLI'
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
        FieldName = 'SCONTO21'
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
        FieldName = 'IMPORTO_SCONTO1'
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
        FieldName = 'SOSPESO'
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
        FieldName = 'IVA_SOSPESA'
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
        FieldName = 'ACCORPA_RIGHE'
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
        FieldName = 'ATTIVITA2'
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
        FieldName = 'CAU_TRASP_ID'
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
        FieldName = 'PER_ALTRA_DEST'
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
        FieldName = 'IMPORTO_CON_IVA1'
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
        FieldName = 'TOTALE_MERCE'
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
        FieldName = 'TOTALE_SERVIZI'
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
        FieldName = 'TOTALE'
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
        FieldName = 'TOTALE_IVA'
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
        FieldName = 'TOTALE_SCONTI'
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
        FieldName = 'TOTALE_EURO_IVATO'
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
        FieldName = 'ALTRA_DEST'
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
        FieldName = 'SERIE_DOC'
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
        FieldName = 'CLI_FOR_IND'
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
        FieldName = 'ACCONTO'
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
        FieldName = 'RATA1_IMPORTO'
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
        FieldName = 'RATA2_IMPORTO'
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
        FieldName = 'RATA3_IMPORTO'
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
        FieldName = 'RATA4_IMPORTO'
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
        FieldName = 'RATA5_IMPORTO'
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
        FieldName = 'RATA6_IMPORTO'
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
        FieldName = 'TEL1'
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
        FieldName = 'TEL2'
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
        FieldName = 'TEL3'
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
        FieldName = 'ID_DOC_DET'
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
        FieldName = 'NUM_RIGA_ID'
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
        FieldName = 'TIPO_RIGA'
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
        FieldName = 'CODICE_ARTICOLO'
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
        FieldName = 'DESCR'
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
        FieldName = 'COSTO'
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
        FieldName = 'COSTOINVALUTA'
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
        FieldName = 'UNITA_MISURA'
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
        FieldName = 'FATTCONV'
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
        FieldName = 'QTA_UM'
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
        FieldName = 'QUANTITA'
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
        FieldName = 'Col0'
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
        FieldName = 'SCONTO1'
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
        FieldName = 'SCONTO2'
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
        FieldName = 'SCONTO3'
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
        FieldName = 'SCONTO4'
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
        FieldName = 'IMPORTO_SCONTO'
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
        FieldName = 'IMPORTO'
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
        FieldName = 'IMPORTOINVALUTA'
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
        FieldName = 'OMAGGIO'
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
        FieldName = 'DEP'
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
        FieldName = 'SCONTO_EQ'
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
        FieldName = 'PERC_PROVV'
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
        FieldName = 'TIPO_SERVIZIO'
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
        FieldName = 'IVATO'
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
        FieldName = 'IMPORTO_CON_IVA'
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
        FieldName = 'CODICE_IVA_ID'
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
        FieldName = 'DATA_REG'
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
        FieldName = 'DOC_ID'
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
        FieldName = 'TOTCOLLI'
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
        FieldName = 'TOTSCAT'
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
        FieldName = 'PREZZOLIST'
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
        FieldName = 'SCHEDA'
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
        FieldName = 'PASSATA'
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
        FieldName = 'COL'
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
        FieldName = 'ID_DOCUMENTO'
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
        FieldName = 'TESTATA_PN_ID'
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
        FieldName = 'TIPO_DOC'
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
        FieldName = 'DA_FATTURARE'
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
        FieldName = 'CLIFOR_ID'
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
        FieldName = 'DEPOSITO'
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
        FieldName = 'CONTRO_CLIFOR_ID'
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
        FieldName = 'CONTRO_TIPO_CLIFOR'
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
        FieldName = 'CONTRO_DEPOSITO'
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
        FieldName = 'DATA_CONSEGNA'
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
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object rxdblcGruppo: TRxDBLookupCombo
    Left = 439
    Top = 62
    Width = 143
    Height = 21
    Hint = 'Gruppo'
    DropDownCount = 8
    Color = 15138790
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoGRUPPO
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
  end
  object rxdblcMarca: TRxDBLookupCombo
    Left = 269
    Top = 62
    Width = 143
    Height = 21
    Hint = 'Marca'
    DropDownCount = 8
    Color = 14811135
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoMARCA
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
  end
  object rxdblcTipo: TRxDBLookupCombo
    Left = 439
    Top = 100
    Width = 143
    Height = 21
    Hint = 'Tipo'
    DropDownCount = 8
    Color = 16050943
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoTIPO
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
  end
  object rxdblcFamiglia: TRxDBLookupCombo
    Left = 269
    Top = 100
    Width = 143
    Height = 21
    Hint = 'Famiglia'
    DropDownCount = 8
    Color = 16777177
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoFAMIGLIA
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
  end
  object cbMarca: TCheckBox
    Left = 251
    Top = 64
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
    OnClick = cbMarcaClick
  end
  object cbFamiglia: TCheckBox
    Left = 251
    Top = 102
    Width = 15
    Height = 17
    Hint = 'Famiglia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
    OnClick = cbFamigliaClick
  end
  object cbTipo: TCheckBox
    Left = 421
    Top = 102
    Width = 15
    Height = 17
    Hint = 'Tipo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
    OnClick = cbTipoClick
  end
  object cbGruppo: TCheckBox
    Left = 421
    Top = 64
    Width = 15
    Height = 17
    Hint = 'Gruppo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
    OnClick = cbGruppoClick
  end
  object RadioGroup1: TRadioGroup
    Left = 2
    Top = 132
    Width = 112
    Height = 33
    Caption = 'Scegli Cliente'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cliente')
    ParentFont = False
    TabOrder = 30
    OnClick = RadioGroup1Click
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 115
    Top = 144
    Width = 54
    Height = 21
    DropDownCount = 8
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
    TabOrder = 31
    OnCloseUp = RxDBLookupCombo2CloseUp
    OnExit = RxDBLookupCombo2Exit
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 171
    Top = 144
    Width = 233
    Height = 21
    DropDownCount = 8
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
    TabOrder = 32
    OnCloseUp = RxDBLookupCombo5CloseUp
    OnExit = RxDBLookupCombo5Exit
  end
  object BitBtn5: TBitBtn
    Left = 701
    Top = 58
    Width = 75
    Height = 24
    Cursor = crHandPoint
    Caption = 'Stampa Sit.1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 33
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 701
    Top = 106
    Width = 75
    Height = 24
    Cursor = crHandPoint
    Caption = 'Stampa Sit.3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 34
    OnClick = BitBtn6Click
  end
  object GroupBox1: TGroupBox
    Left = 592
    Top = 0
    Width = 94
    Height = 98
    Caption = 'Deposito'
    TabOrder = 35
    object BitBtn7: TBitBtn
      Left = 11
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa Sit.2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 11
      Top = 42
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa Sit.3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object Button2: TButton
      Left = 11
      Top = 68
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Sit. Access.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 592
    Top = 100
    Width = 94
    Height = 97
    Caption = 'Magazzino'
    TabOrder = 36
    object BitBtn9: TBitBtn
      Left = 11
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa Sit.2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 11
      Top = 42
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa Sit.3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 11
      Top = 68
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Sit. Access.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object BitBtn11: TBitBtn
    Left = 701
    Top = 130
    Width = 75
    Height = 24
    Cursor = crHandPoint
    Caption = 'Sit.Fason.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 37
    OnClick = BitBtn11Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery3
    Left = 456
    Top = 112
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 318
    Top = 134
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 522
    Top = 270
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select  * from tab_articoli')
    Left = 536
    Top = 376
  end
  object DataSource3: TDataSource
    DataSet = dmodAz.RxMemoryData1
    Left = 288
    Top = 224
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 380
    Top = 132
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery3CalcFields
    SQL.Strings = (
      
        'select tab_det_doc.*,tab_documenti.*,tagliofas.cliente,tagliofas' +
        '.colore0,tagliofas.colore1,tagliofas.colore2,tagliofas.colore3 f' +
        'rom tab_det_doc'
      'jOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'join TAGLIOFAS on'
      'tab_det_doc.scheda=TAGLIOFAS.numero'
      'where tab_det_doc.sconto4=1 and TIPO_DOC=:tipdoc'
      'union all'
      
        'select tab_det_doc.*,tab_documenti.*,taglio.cliente,taglio.color' +
        'e0,taglio.colore1,taglio.colore2,taglio.colore3 from tab_det_doc'
      'jOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'join taglio on'
      'tab_det_doc.scheda=taglio.numero'
      'where tab_det_doc.sconto4<>1 and TIPO_DOC=:tipdoc'
      '')
    OnFilterRecord = IBQuery3FilterRecord
    Left = 408
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipdoc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipdoc'
        ParamType = ptUnknown
      end>
    object IBQuery3ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      ProviderFlags = []
    end
    object IBQuery3TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      ProviderFlags = []
    end
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery3DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3COSTO: TFloatField
      FieldName = 'COSTO'
      ProviderFlags = []
      currency = True
    end
    object IBQuery3COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      ProviderFlags = []
    end
    object IBQuery3UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      ProviderFlags = []
    end
    object IBQuery3QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      ProviderFlags = []
    end
    object IBQuery3QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      ProviderFlags = []
    end
    object IBQuery3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      ProviderFlags = []
    end
    object IBQuery3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      ProviderFlags = []
    end
    object IBQuery3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      ProviderFlags = []
    end
    object IBQuery3SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      ProviderFlags = []
    end
    object IBQuery3IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      ProviderFlags = []
    end
    object IBQuery3IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      ProviderFlags = []
    end
    object IBQuery3OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      ProviderFlags = []
    end
    object IBQuery3DEP: TIBStringField
      FieldName = 'DEP'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      ProviderFlags = []
    end
    object IBQuery3PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      ProviderFlags = []
    end
    object IBQuery3TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      ProviderFlags = []
      Size = 25
    end
    object IBQuery3IVATO: TFloatField
      FieldName = 'IVATO'
      ProviderFlags = []
    end
    object IBQuery3IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      ProviderFlags = []
    end
    object IBQuery3CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      ProviderFlags = []
    end
    object IBQuery3RIF_A: TSmallintField
      FieldName = 'RIF_A'
      ProviderFlags = []
    end
    object IBQuery3RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      ProviderFlags = []
    end
    object IBQuery3RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      ProviderFlags = []
    end
    object IBQuery3RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      ProviderFlags = []
    end
    object IBQuery3RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      ProviderFlags = []
    end
    object IBQuery3RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      ProviderFlags = []
    end
    object IBQuery3PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      ProviderFlags = []
    end
    object IBQuery3RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      ProviderFlags = []
    end
    object IBQuery3RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      ProviderFlags = []
    end
    object IBQuery3OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      ProviderFlags = []
    end
    object IBQuery3OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      ProviderFlags = []
    end
    object IBQuery3OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      ProviderFlags = []
    end
    object IBQuery3OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      ProviderFlags = []
    end
    object IBQuery3DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      ProviderFlags = []
    end
    object IBQuery3TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      ProviderFlags = []
    end
    object IBQuery3PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      ProviderFlags = []
    end
    object IBQuery3SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      ProviderFlags = []
    end
    object IBQuery3PASSATA: TIBStringField
      FieldName = 'PASSATA'
      ProviderFlags = []
      Size = 1
    end
    object IBQuery3COL: TIBStringField
      FieldName = 'COL'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery3A: TIBStringField
      FieldName = 'A'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery3B: TIBStringField
      FieldName = 'B'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery3C: TIBStringField
      FieldName = 'C'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery3NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      ProviderFlags = []
    end
    object IBQuery3ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      ProviderFlags = []
    end
    object IBQuery3TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      ProviderFlags = []
    end
    object IBQuery3CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      ProviderFlags = []
    end
    object IBQuery3DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      ProviderFlags = []
    end
    object IBQuery3CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object IBQuery3TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      ProviderFlags = []
    end
    object IBQuery3DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      ProviderFlags = []
    end
    object IBQuery3CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      ProviderFlags = []
    end
    object IBQuery3CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery3DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      ProviderFlags = []
    end
    object IBQuery3DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      ProviderFlags = []
    end
    object IBQuery3DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      ProviderFlags = []
    end
    object IBQuery3DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      ProviderFlags = []
    end
    object IBQuery3STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      ProviderFlags = []
    end
    object IBQuery3STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      ProviderFlags = []
    end
    object IBQuery3MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3CAMBIO: TFloatField
      FieldName = 'CAMBIO'
      ProviderFlags = []
    end
    object IBQuery3KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3LISTINO: TIBStringField
      FieldName = 'LISTINO'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery3VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery3CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery3BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery3VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      ProviderFlags = []
      Size = 7
    end
    object IBQuery3VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      ProviderFlags = []
      Size = 7
    end
    object IBQuery3VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      ProviderFlags = []
      Size = 7
    end
    object IBQuery3PORTO: TIBStringField
      FieldName = 'PORTO'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery3ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      ProviderFlags = []
    end
    object IBQuery3PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      ProviderFlags = []
    end
    object IBQuery3CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      ProviderFlags = []
    end
    object IBQuery3DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3SCONTO11: TFloatField
      FieldName = 'SCONTO11'
      ProviderFlags = []
    end
    object IBQuery3AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      ProviderFlags = []
    end
    object IBQuery3NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      ProviderFlags = []
    end
    object IBQuery3NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      ProviderFlags = []
    end
    object IBQuery3SCONTO21: TFloatField
      FieldName = 'SCONTO21'
      ProviderFlags = []
    end
    object IBQuery3IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      ProviderFlags = []
    end
    object IBQuery3NOTA: TIBStringField
      FieldName = 'NOTA'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      ProviderFlags = []
    end
    object IBQuery3IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      ProviderFlags = []
    end
    object IBQuery3COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      ProviderFlags = []
    end
    object IBQuery3ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      ProviderFlags = []
      Size = 3
    end
    object IBQuery3SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery3SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      ProviderFlags = []
    end
    object IBQuery3REPORT: TIBStringField
      FieldName = 'REPORT'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery3RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      ProviderFlags = []
    end
    object IBQuery3ORA: TIBStringField
      FieldName = 'ORA'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery3FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      ProviderFlags = []
    end
    object IBQuery3TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      ProviderFlags = []
    end
    object IBQuery3ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      ProviderFlags = []
    end
    object IBQuery3IVATO1: TSmallintField
      FieldName = 'IVATO1'
      ProviderFlags = []
    end
    object IBQuery3STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      ProviderFlags = []
    end
    object IBQuery3DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      ProviderFlags = []
    end
    object IBQuery3MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      ProviderFlags = []
    end
    object IBQuery3TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      ProviderFlags = []
    end
    object IBQuery3TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      ProviderFlags = []
    end
    object IBQuery3TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      ProviderFlags = []
    end
    object IBQuery3CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      ProviderFlags = []
    end
    object IBQuery3NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      ProviderFlags = []
    end
    object IBQuery3SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery3MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      ProviderFlags = []
    end
    object IBQuery3ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      ProviderFlags = []
    end
    object IBQuery3SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      ProviderFlags = []
    end
    object IBQuery3SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      ProviderFlags = []
    end
    object IBQuery3SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      ProviderFlags = []
    end
    object IBQuery3SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      ProviderFlags = []
    end
    object IBQuery3SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      ProviderFlags = []
    end
    object IBQuery3SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      ProviderFlags = []
    end
    object IBQuery3CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery3PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      ProviderFlags = []
    end
    object IBQuery3IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      ProviderFlags = []
    end
    object IBQuery3TOTALE: TFloatField
      FieldName = 'TOTALE'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      ProviderFlags = []
    end
    object IBQuery3TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      ProviderFlags = []
    end
    object IBQuery3CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ALIVA1: TFloatField
      FieldName = 'ALIVA1'
      ProviderFlags = []
    end
    object IBQuery3IMPON1: TFloatField
      FieldName = 'IMPON1'
      ProviderFlags = []
    end
    object IBQuery3IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      ProviderFlags = []
    end
    object IBQuery3CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ALIVA2: TFloatField
      FieldName = 'ALIVA2'
      ProviderFlags = []
    end
    object IBQuery3IMPON2: TFloatField
      FieldName = 'IMPON2'
      ProviderFlags = []
    end
    object IBQuery3IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      ProviderFlags = []
    end
    object IBQuery3CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ALIVA3: TFloatField
      FieldName = 'ALIVA3'
      ProviderFlags = []
    end
    object IBQuery3IMPON3: TFloatField
      FieldName = 'IMPON3'
      ProviderFlags = []
    end
    object IBQuery3IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      ProviderFlags = []
    end
    object IBQuery3CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ALIVA4: TFloatField
      FieldName = 'ALIVA4'
      ProviderFlags = []
    end
    object IBQuery3IMPON4: TFloatField
      FieldName = 'IMPON4'
      ProviderFlags = []
    end
    object IBQuery3IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      ProviderFlags = []
    end
    object IBQuery3CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3ALIVA5: TFloatField
      FieldName = 'ALIVA5'
      ProviderFlags = []
    end
    object IBQuery3IMPON5: TFloatField
      FieldName = 'IMPON5'
      ProviderFlags = []
    end
    object IBQuery3IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      ProviderFlags = []
    end
    object IBQuery3TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      ProviderFlags = []
    end
    object IBQuery3ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      ProviderFlags = []
      Size = 255
    end
    object IBQuery3ACCONTO: TFloatField
      FieldName = 'ACCONTO'
      ProviderFlags = []
    end
    object IBQuery3RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      ProviderFlags = []
    end
    object IBQuery3TEL1: TIBStringField
      FieldName = 'TEL1'
      ProviderFlags = []
      Size = 15
    end
    object IBQuery3TEL2: TIBStringField
      FieldName = 'TEL2'
      ProviderFlags = []
      Size = 15
    end
    object IBQuery3TEL3: TIBStringField
      FieldName = 'TEL3'
      ProviderFlags = []
      Size = 15
    end
    object IBQuery3IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      ProviderFlags = []
    end
    object IBQuery3IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      ProviderFlags = []
    end
    object IBQuery3VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      ProviderFlags = []
      Size = 255
    end
    object IBQuery3RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      ProviderFlags = []
    end
    object IBQuery3RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      ProviderFlags = []
    end
    object IBQuery3RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      ProviderFlags = []
    end
    object IBQuery3RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      ProviderFlags = []
    end
    object IBQuery3RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      ProviderFlags = []
    end
    object IBQuery3RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      ProviderFlags = []
    end
    object IBQuery3PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
      ProviderFlags = []
    end
    object IBQuery3ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3CA_ID: TIBStringField
      FieldName = 'CA_ID'
      ProviderFlags = []
      Size = 4
    end
    object IBQuery3CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3COLORE0: TIBStringField
      FieldName = 'COLORE0'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3COLORE1: TIBStringField
      FieldName = 'COLORE1'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3COLORE2: TIBStringField
      FieldName = 'COLORE2'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery3COLORE3: TIBStringField
      FieldName = 'COLORE3'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 154
    Top = 274
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 154
    Top = 304
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 264
    Top = 280
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 266
    Top = 316
  end
  object DataSource2: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 286
    Top = 110
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select * from tab_det_doc,CLIENTE in(select cliente from taglio ' +
        'where NUMERO=tab_documenti.SCHEDA)'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =:tipdoc')
    Left = 504
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipdoc'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 304
    object St1: TMenuItem
      Caption = 'St'
      OnClick = St1Click
    end
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery4CalcFields
    SQL.Strings = (
      
        'select tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_det_do' +
        'c.descr,'
      
        'tab_det_doc.quantita,tab_det_doc.SCONTO4,tab_documenti.causale_m' +
        'agazzino,tab_documenti.NUM_DOC,'
      
        'tab_documenti.data_doc,tab_cli_for.denominazione from tab_det_do' +
        'c'
      
        'join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc' +
        '_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.cli' +
        'for_id'
      'where causale_magazzino = '#39'CLAV'#39' or causale_magazzino='#39'DEPO'#39' '
      'order by scheda,causale_magazzino')
    Left = 544
    Top = 128
    object IBQuery4Cli: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cli'
      Size = 50
      Calculated = True
    end
    object IBQuery4SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBQuery4CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery4DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery4QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBQuery4SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBQuery4CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery4NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery4DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery4DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery5CalcFields
    SQL.Strings = (
      
        'select tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_artico' +
        'li.DESCR,'
      'tab_det_doc.DEP,tab_det_doc.quantita AS CL,'
      'tab_cli_for.denominazione from tab_det_doc'
      
        'join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc' +
        '_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.cli' +
        'for_id'
      'left join tab_articoli'
      'on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo'
      'where causale_magazzino = '#39'CLAV'#39
      'order by scheda')
    Left = 584
    Top = 256
    object IBQuery5SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBQuery5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery5CL: TFloatField
      FieldName = 'CL'
    end
    object IBQuery5DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery5DEPO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEPO'
      Calculated = True
    end
    object IBQuery5DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 632
    Top = 256
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 440
    Top = 240
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery8CalcFields
    SQL.Strings = (
      
        'select tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice' +
        '_articolo,tab_articoli.DESCR,'
      'tab_det_doc.DEP,tab_det_doc.quantita AS DEPOS,'
      'tab_cli_for.denominazione from tab_det_doc'
      
        'join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc' +
        '_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.cli' +
        'for_id'
      'left join tab_articoli'
      'on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo'
      'where causale_magazzino = '#39'DEPO'#39
      'order by scheda')
    Left = 632
    Top = 408
    object IBQuery8MAGA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MAGA'
      Calculated = True
    end
    object IBQuery8SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBQuery8CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery8DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery8DEPOS: TFloatField
      FieldName = 'DEPOS'
    end
    object IBQuery8DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery8SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery8RISCONTRATI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RISCONTRATI'
      Calculated = True
    end
  end
  object IBQuery9: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice' +
        '_articolo,tab_articoli.DESCR,'
      'tab_det_doc.DEP,tab_det_doc.quantita AS MAGAZ,'
      'tab_cli_for.denominazione from tab_det_doc'
      
        'join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc' +
        '_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.cli' +
        'for_id'
      'left join tab_articoli'
      'on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo'
      'where causale_magazzino = '#39'CMAG'#39
      'order by scheda')
    Left = 648
    Top = 320
    object FloatField2: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBStringField3: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object FloatField4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery9MAGAZ: TFloatField
      FieldName = 'MAGAZ'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
  end
  object IBQuery10: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery10CalcFields
    SQL.Strings = (
      'select tab_cli_for.denominazione,tab_documenti.CLIFOR_ID,'
      'SUM(tab_det_doc.quantita) AS CL '
      'from tab_det_doc'
      
        'join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc' +
        '_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.cli' +
        'for_id'
      'left join tab_articoli'
      'on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo'
      'where tab_documenti.causale_magazzino = '#39'CLAV'#39
      'group by tab_cli_for.denominazione,tab_documenti.CLIFOR_ID'
      'order by tab_cli_for.denominazione')
    Left = 720
    Top = 240
    object IBQuery10DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery10CL: TFloatField
      FieldName = 'CL'
    end
    object IBQuery10DEPO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEPO'
      Calculated = True
    end
    object IBQuery10CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
  end
  object IBQuery11: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 712
    Top = 304
  end
  object IBQuery12: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 680
    Top = 408
  end
  object IBQuery13: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from conto_lav')
    Left = 32
    Top = 440
    object IBQuery13CODICE_ARTICOLO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"CONTO_LAV"."CODICE_ARTICOLO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13DESCR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DESCR'
      Origin = '"CONTO_LAV"."DESCR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13COSTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COSTO'
      Origin = '"CONTO_LAV"."COSTO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13QUANTITA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QUANTITA'
      Origin = '"CONTO_LAV"."QUANTITA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13SCHEDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SCHEDA'
      Origin = '"CONTO_LAV"."SCHEDA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13COL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COL'
      Origin = '"CONTO_LAV"."COL"'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object IBQuery13A: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'A'
      Origin = '"CONTO_LAV"."A"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object IBQuery13B: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'B'
      Origin = '"CONTO_LAV"."B"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object IBQuery13C: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C'
      Origin = '"CONTO_LAV"."C"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object IBQuery13TIPO_DOC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'TIPO_DOC'
      Origin = '"CONTO_LAV"."TIPO_DOC"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13CAUSALE_DOC: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CAUSALE_DOC'
      Origin = '"CONTO_LAV"."CAUSALE_DOC"'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object IBQuery13CLIFOR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTO_LAV"."CLIFOR_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13DEPOSITO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPOSITO'
      Origin = '"CONTO_LAV"."DEPOSITO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object IBQuery13CAUSALE_MAGAZZINO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"CONTO_LAV"."CAUSALE_MAGAZZINO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object IBQuery13DATA_DOC: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DATA_DOC'
      Origin = '"CONTO_LAV"."DATA_DOC"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13NUM_DOC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_DOC'
      Origin = '"CONTO_LAV"."NUM_DOC"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery13CLIENTE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLIENTE'
      Origin = '"CONTO_LAV"."CLIENTE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13COLORE0: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COLORE0'
      Origin = '"CONTO_LAV"."COLORE0"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13COLORE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COLORE1'
      Origin = '"CONTO_LAV"."COLORE1"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13COLORE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COLORE2'
      Origin = '"CONTO_LAV"."COLORE2"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13COLORE3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COLORE3'
      Origin = '"CONTO_LAV"."COLORE3"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery13DENOMINAZIONE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DENOMINAZIONE'
      Origin = '"CONTO_LAV"."DENOMINAZIONE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object IBQuery14: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery14CalcFields
    SQL.Strings = (
      'select scheda,codice_articolo,DESCR,'
      'quantita AS CL,'
      'denominazione from conto_lav'
      'where causale_magazzino = '#39'CLAV'#39
      'order by scheda')
    Left = 72
    Top = 440
    object IBQuery14SCHEDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SCHEDA'
      Origin = '"CONTO_LAV"."SCHEDA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery14CODICE_ARTICOLO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"CONTO_LAV"."CODICE_ARTICOLO"'
      ProviderFlags = []
      ReadOnly = True
    end
    object IBQuery14DESCR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DESCR'
      Origin = '"CONTO_LAV"."DESCR"'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object IBQuery14CL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CL'
      Origin = '"CONTO_LAV"."QUANTITA"'
      ReadOnly = True
    end
    object IBQuery14DENOMINAZIONE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DENOMINAZIONE'
      Origin = '"CONTO_LAV"."DENOMINAZIONE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object IBQuery14DEPO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEPO'
      Calculated = True
    end
  end
  object IBQuery15: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 104
    Top = 440
  end
end
