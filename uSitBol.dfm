object fSitBol: TfSitBol
  Left = 177
  Top = 131
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Situazione Bolle Vendita'
  ClientHeight = 554
  ClientWidth = 757
  Color = 16763283
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 12
    Width = 38
    Height = 14
    Caption = 'Da Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 40
    Width = 31
    Height = 14
    Caption = 'a Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 269
    Top = 87
    Width = 38
    Height = 14
    Caption = 'Famiglia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 439
    Top = 87
    Width = 20
    Height = 14
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 269
    Top = 48
    Width = 30
    Height = 14
    Caption = 'Marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 439
    Top = 48
    Width = 36
    Height = 14
    Caption = 'Gruppo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 8
    Width = 85
    Height = 21
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
    Left = 48
    Top = 36
    Width = 85
    Height = 21
    DefaultToday = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
  end
  object RadioGroup2: TRadioGroup
    Left = 2
    Top = 164
    Width = 161
    Height = 33
    Caption = 'Scegli Agente'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Agente')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object RadioGroup4: TRadioGroup
    Left = 140
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
  object RadioGroup6: TRadioGroup
    Left = 488
    Top = 134
    Width = 89
    Height = 63
    Caption = 'Ordina per :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Numero'
      'Articolo'
      'Data')
    ParentFont = False
    TabOrder = 4
  end
  object RadioGroup7: TRadioGroup
    Left = 584
    Top = 135
    Width = 71
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
    TabOrder = 5
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 673
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
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 649
    Top = 34
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Caption = 'S. 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 679
    Top = 173
    Width = 69
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 679
    Top = 115
    Width = 69
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa Tot.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
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
    TabOrder = 10
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
    TabOrder = 11
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
    TabOrder = 12
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
    TabOrder = 13
    OnChange = rxdblcAdArtChange
    OnExit = rxdblcAdArtExit
  end
  object Button1: TButton
    Left = 679
    Top = 141
    Width = 69
    Height = 25
    Caption = 'Sit. Access.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Visible = False
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 168
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
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = dsDipendente
    ParentFont = False
    TabOrder = 15
    OnChange = RxDBLookupCombo4Change
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 224
    Top = 176
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dmodAz.dsoTab_Agenti
    ParentFont = False
    TabOrder = 16
    OnChange = RxDBLookupCombo3Change
  end
  object RadioGroup3: TRadioGroup
    Left = 3
    Top = 66
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
    TabOrder = 17
    OnClick = RadioGroup3Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 80
    Top = 104
    Width = 73
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'NUM_DOC'
    LookupDisplay = 'NUM_DOC'
    LookupSource = DataSource1
    TabOrder = 18
  end
  object DBGrid2: TDBGrid
    Left = 1
    Top = 208
    Width = 752
    Height = 346
    DataSource = DataSource1
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
        FieldName = 'NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DENOMINAZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AGENTE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'COD.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTA_UM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'PREZZO'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FATTCONV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Col0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO_SCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_RIGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OMAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO_EQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_PROVV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_SERVIZIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODICE_IVA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_A_PRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_A_ORD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_A_DDT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_DDT_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_DDT_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_ORD_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_ORD_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_PRE_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_PRE_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIANOCONTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_PRE_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_ORD_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RIF_DDT_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_QTA_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_VAL_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_QTA_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_VAL_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTSCAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZOLIST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCHEDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASSATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TESTATA_PN_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DA_FATTURARE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRO_CLIFOR_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRO_TIPO_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRO_DEPOSITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_MAGAZZINO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRO_CAUS_MAG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATTIVITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBATTIVITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_REGISTRAZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CONFERMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EVASIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATO_DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATO_CONTABILITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONETA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAMBIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KINGUA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LISTINO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NS_RIFERIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VS_RIFERIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSALE_CONTABILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODICE_BOLL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCA_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCA_AZIENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VETTORE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VETTORE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VETTORE3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASPETTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO_NETTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO_LORDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUBAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESTINARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMBALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENTE_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CONSEGNA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO_SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOSPESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA_SOSPESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_ESENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_BOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_INCASSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_IMVALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_ACCESSIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACCORPA_RIGHE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATTIVITA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBATTIVITA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOGGETTO_CEE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPORT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RILEVA_ACCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FATT_ACCOMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FATT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST_NOTE_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVATO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STAMPATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_COMPETENZA_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEZZO_TRASPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_IMP_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAST_MANUALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE_DOC2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MESE_CONT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTRE_DERT_SI_NO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_IMBALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_BOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_ACCESSORIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_INCASSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPESE_CONTRASS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAU_TRASP_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PER_ALTRA_DEST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_MERCE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_SERVIZI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_SCONTI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_EURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALE_EURO_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPON1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIVA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIVA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPON2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIVA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIVA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPON3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIVA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIVA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPON4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIVA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIVA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPON5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_SPESE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTRA_DEST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FOR_IND'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA1_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA2_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA3_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA4_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA5_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA6_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA_ESENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA_ESENTE_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VETTORE_IND'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VETTORE_IND2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FOR_IND2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA1_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA2_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA3_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA4_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA5_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATA6_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIANOCONTO_ID1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Col1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Col2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
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
    TabOrder = 20
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
    TabOrder = 21
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
    TabOrder = 22
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
    TabOrder = 23
  end
  object cbMarca: TCheckBox
    Left = 251
    Top = 64
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
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
    TabOrder = 25
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
    TabOrder = 26
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
    TabOrder = 27
    OnClick = cbGruppoClick
  end
  object RadioGroup1: TRadioGroup
    Left = 2
    Top = 132
    Width = 161
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
    TabOrder = 28
    OnClick = RadioGroup1Click
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 168
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
    TabOrder = 29
    OnChange = RxDBLookupCombo2Change
    OnCloseUp = RxDBLookupCombo2CloseUp
    OnExit = RxDBLookupCombo2Exit
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 224
    Top = 144
    Width = 249
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
    TabOrder = 30
    OnChange = RxDBLookupCombo5Change
    OnCloseUp = RxDBLookupCombo5CloseUp
    OnExit = RxDBLookupCombo5Exit
  end
  object BitBtn5: TBitBtn
    Left = 682
    Top = 34
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Caption = 'S. 2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 716
    Top = 34
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Caption = 'S. 3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
    OnClick = BitBtn6Click
  end
  object Edit3: TEdit
    Left = 144
    Top = 78
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 33
  end
  object CheckBox1: TCheckBox
    Left = 88
    Top = 80
    Width = 57
    Height = 17
    Caption = 'Gruppo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
  end
  object BitBtn7: TBitBtn
    Left = 716
    Top = 60
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Hint = 'Bolle + Resi'
    Caption = 'S. 4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 35
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 682
    Top = 60
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Hint = 'Dettaglio Provvigioni'
    Caption = 'S. 5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 36
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 649
    Top = 60
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Hint = 'Sintetico Proviggioni'
    Caption = 'S. 6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 37
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 679
    Top = 89
    Width = 69
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa P/M'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 38
    OnClick = BitBtn10Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery3
    Left = 440
    Top = 136
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 318
    Top = 134
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 426
    Top = 14
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    SQL.Strings = (
      'select  * from tab_articoli')
    Left = 544
    Top = 352
  end
  object DataSource3: TDataSource
    DataSet = dmodAz.RxMemoryData1
    Left = 408
    Top = 320
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 380
    Top = 132
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = IBQuery3CalcFields
    BufferChunks = 500
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'inner JOIN TAB_cli_for ON'
      'TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for'
      'left JOIN TAB_agenti ON'
      'TAB_cli_for.agente_id=TAB_agenti.codice'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      '')
    Left = 464
    Top = 288
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
    object IBQuery3ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object IBQuery3ID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object IBQuery3TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object IBQuery3DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery3COGNOME: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object IBQuery3NOME: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object IBQuery3NOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object IBQuery3FULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object IBQuery3INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IBQuery3COMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object IBQuery3PARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object IBQuery3CODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object IBQuery3PERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object IBQuery3PIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object IBQuery3CONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object IBQuery3MONETA_ID1: TIBStringField
      FieldName = 'MONETA_ID1'
      Size = 4
    end
    object IBQuery3PAGAMENTO_ID1: TIBStringField
      FieldName = 'PAGAMENTO_ID1'
      Size = 5
    end
    object IBQuery3CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery3CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery3CATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object IBQuery3AGENTE_ID1: TIBStringField
      FieldName = 'AGENTE_ID1'
      Size = 4
    end
    object IBQuery3PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery3LINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object IBQuery3CODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object IBQuery3SCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object IBQuery3SCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object IBQuery3TEL11: TIBStringField
      FieldName = 'TEL11'
      Size = 15
    end
    object IBQuery3TEL21: TIBStringField
      FieldName = 'TEL21'
      Size = 15
    end
    object IBQuery3FAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBQuery3EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object IBQuery3INTERNET: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object IBQuery3DATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object IBQuery3SESSO: TIntegerField
      FieldName = 'SESSO'
    end
    object IBQuery3TITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object IBQuery3PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object IBQuery3FIDO: TFloatField
      FieldName = 'FIDO'
    end
    object IBQuery3ABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object IBQuery3FATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object IBQuery3ACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object IBQuery3IVA_SOSPESA1: TSmallintField
      FieldName = 'IVA_SOSPESA1'
    end
    object IBQuery3POS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object IBQuery3CODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object IBQuery3RIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object IBQuery3ESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object IBQuery3RIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object IBQuery3ESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object IBQuery3TIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object IBQuery3NAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object IBQuery3NAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object IBQuery3RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object IBQuery3RISCHIO: TFloatField
      FieldName = 'RISCHIO'
    end
    object IBQuery3GG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object IBQuery3GG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object IBQuery3CONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object IBQuery3TIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object IBQuery3CERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object IBQuery3DENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object IBQuery3INDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object IBQuery3LOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object IBQuery3COMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object IBQuery3CAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object IBQuery3ABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object IBQuery3TITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object IBQuery3COMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object IBQuery3CAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object IBQuery3NAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object IBQuery3COM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object IBQuery3CAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object IBQuery3PR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object IBQuery3CAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object IBQuery3ABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object IBQuery3NAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object IBQuery3FASON: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object IBQuery3NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object IBQuery3CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery3CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery3COD2: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object IBQuery3CR: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IBQuery3CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery3DESCR1: TIBStringField
      FieldName = 'DESCR1'
      Size = 50
    end
    object IBQuery3CODICE_ZONA_ID1: TIBStringField
      FieldName = 'CODICE_ZONA_ID1'
      Size = 7
    end
    object IBQuery3CODICE_SOTTO_ZONA_ID1: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID1'
      Size = 7
    end
    object IBQuery3PROVVIGIONE1: TFloatField
      FieldName = 'PROVVIGIONE1'
    end
    object IBQuery3IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery3TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery3CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery3TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery3TIPO_PROVVIGIONE1: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE1'
    end
    object IBQuery3TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery3TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery3CG1: TIBStringField
      FieldName = 'CG1'
      Size = 4
    end
    object IBQuery3CA1: TIBStringField
      FieldName = 'CA1'
      Size = 4
    end
    object IBQuery3TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
    object IBQuery3CR1: TIBStringField
      FieldName = 'CR1'
      Size = 4
    end
    object IBQuery3COSTOR: TFloatField
      FieldKind = fkLookup
      FieldName = 'COSTOR'
      LookupDataSet = dmodAz.ibTab_Articoli
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'COSTO_STANDART'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 354
    Top = 50
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 354
    Top = 80
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 464
    Top = 56
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 466
    Top = 92
  end
  object DataSource2: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 278
    Top = 142
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
    Left = 456
    Top = 320
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
    SQL.Strings = (
      'SELECT '
      'TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,'
      
        'SUM(TAB_DET_DOC.quantita) as QTA,SUM(TAB_DET_DOC.importo_sconto)' +
        ' as IMP,SUM(TAB_DET_DOC.qta_um) as SCAT'
      'FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      'GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr')
    OnFilterRecord = IBQuery1FilterRecord
    Left = 200
    Top = 336
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery1QTA: TFloatField
      FieldName = 'QTA'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery1IMP: TFloatField
      FieldName = 'IMP'
    end
    object IBQuery1SCAT: TFloatField
      FieldName = 'SCAT'
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery1
    Left = 168
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 96
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    Left = 168
    Top = 376
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 208
    Top = 88
    object RxMemoryData1CodiceArticolo: TStringField
      FieldName = 'CodiceArticolo'
    end
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    Left = 544
    Top = 384
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'inner JOIN TAB_cli_for ON'
      'TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for'
      'left JOIN TAB_agenti ON'
      'TAB_cli_for.agente_id=TAB_agenti.codice'
      'left JOIN TAB_articoli ON'
      '(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)'
      'left JOIN TAB_SUBCATEGORIA ON'
      
        '((TAB_Documenti.listino=TAB_SUBCATEGORIA.LIST) and (TAB_DOCUMENT' +
        'I.KINGUA_ID=TAB_SUBCATEGORIA.CODICE))'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      '')
    Left = 168
    Top = 408
    object IntegerField1: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object FloatField1: TFloatField
      FieldName = 'COSTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField2: TFloatField
      FieldName = 'COSTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField3: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object FloatField3: TFloatField
      FieldName = 'FATTCONV'
    end
    object FloatField4: TFloatField
      FieldName = 'QTA_UM'
    end
    object FloatField5: TFloatField
      FieldName = 'QUANTITA'
    end
    object FloatField6: TFloatField
      FieldName = 'SCONTO1'
    end
    object FloatField7: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField8: TFloatField
      FieldName = 'SCONTO3'
    end
    object FloatField9: TFloatField
      FieldName = 'SCONTO4'
    end
    object FloatField10: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField11: TFloatField
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField12: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField1: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBStringField4: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object FloatField13: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object FloatField14: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object IBStringField5: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object FloatField15: TFloatField
      FieldName = 'IVATO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField16: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField6: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object SmallintField2: TSmallintField
      FieldName = 'RIF_A'
    end
    object SmallintField3: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object SmallintField4: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object SmallintField5: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IntegerField4: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IntegerField6: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IntegerField7: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IntegerField8: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IntegerField10: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IntegerField11: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object FloatField17: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object FloatField18: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object FloatField19: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object FloatField20: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBStringField7: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object FloatField21: TFloatField
      FieldName = 'TOTSCAT'
    end
    object FloatField22: TFloatField
      FieldName = 'PREZZOLIST'
      DisplayFormat = '#,##.00 '
    end
    object FloatField23: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBStringField8: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBStringField9: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBStringField10: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IntegerField15: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object SmallintField6: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IntegerField16: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object SmallintField7: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBStringField11: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IntegerField17: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object SmallintField8: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBStringField12: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBStringField13: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBStringField14: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBStringField15: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object IBStringField16: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IntegerField18: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IntegerField19: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBStringField17: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object FloatField24: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBStringField18: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBStringField19: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBStringField20: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField21: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField22: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBStringField23: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBStringField24: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBStringField25: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBStringField26: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBStringField27: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBStringField28: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBStringField29: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBStringField30: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBStringField31: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBStringField32: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object FloatField25: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object FloatField26: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object FloatField27: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBStringField33: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBStringField34: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object FloatField28: TFloatField
      FieldName = 'SCONTO11'
    end
    object IBStringField35: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IntegerField20: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object FloatField29: TFloatField
      FieldName = 'NRCOLLI'
    end
    object FloatField30: TFloatField
      FieldName = 'SCONTO21'
    end
    object FloatField31: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField36: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object SmallintField9: TSmallintField
      FieldName = 'SOSPESO'
    end
    object SmallintField10: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBStringField37: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBStringField38: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBStringField39: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBStringField40: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBStringField41: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBStringField42: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBStringField43: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object SmallintField11: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBStringField44: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object IBStringField45: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object SmallintField12: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBStringField46: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object SmallintField13: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBStringField47: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object SmallintField14: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object SmallintField15: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object SmallintField16: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object SmallintField17: TSmallintField
      FieldName = 'IVATO1'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField18: TSmallintField
      FieldName = 'STAMPATO'
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object SmallintField19: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object FloatField32: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField20: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField33: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField21: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IntegerField21: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBStringField48: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IntegerField22: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object SmallintField22: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object FloatField34: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object FloatField35: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object FloatField36: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object FloatField37: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object FloatField38: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object FloatField39: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object IBStringField49: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object SmallintField23: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object FloatField40: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      DisplayFormat = '#,##.00 '
    end
    object FloatField41: TFloatField
      FieldName = 'TOTALE_MERCE'
      DisplayFormat = '#,##.00 '
    end
    object FloatField42: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      DisplayFormat = '#,##.00 '
    end
    object FloatField43: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00 '
    end
    object FloatField44: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00 '
    end
    object FloatField45: TFloatField
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField46: TFloatField
      FieldName = 'TOTALE_SCONTI'
      DisplayFormat = '#,##.00 '
    end
    object FloatField47: TFloatField
      FieldName = 'TOTALE_EURO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField48: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField50: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object FloatField49: TFloatField
      FieldName = 'ALIVA1'
    end
    object FloatField50: TFloatField
      FieldName = 'IMPON1'
      DisplayFormat = '#,##.00 '
    end
    object FloatField51: TFloatField
      FieldName = 'IMPOSTA1'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField51: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object FloatField52: TFloatField
      FieldName = 'ALIVA2'
    end
    object FloatField53: TFloatField
      FieldName = 'IMPON2'
      DisplayFormat = '#,##.00 '
    end
    object FloatField54: TFloatField
      FieldName = 'IMPOSTA2'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField52: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object FloatField55: TFloatField
      FieldName = 'ALIVA3'
    end
    object FloatField56: TFloatField
      FieldName = 'IMPON3'
      DisplayFormat = '#,##.00 '
    end
    object FloatField57: TFloatField
      FieldName = 'IMPOSTA3'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField53: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object FloatField58: TFloatField
      FieldName = 'ALIVA4'
    end
    object FloatField59: TFloatField
      FieldName = 'IMPON4'
      DisplayFormat = '#,##.00 '
    end
    object FloatField60: TFloatField
      FieldName = 'IMPOSTA4'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField54: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object FloatField61: TFloatField
      FieldName = 'ALIVA5'
    end
    object FloatField62: TFloatField
      FieldName = 'IMPON5'
      DisplayFormat = '#,##.00 '
    end
    object FloatField63: TFloatField
      FieldName = 'IMPOSTA5'
      DisplayFormat = '#,##.00 '
    end
    object FloatField64: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBStringField55: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBStringField56: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBStringField57: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object FloatField65: TFloatField
      FieldName = 'ACCONTO'
    end
    object FloatField66: TFloatField
      FieldName = 'RATA1_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField67: TFloatField
      FieldName = 'RATA2_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField68: TFloatField
      FieldName = 'RATA3_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField69: TFloatField
      FieldName = 'RATA4_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField70: TFloatField
      FieldName = 'RATA5_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField71: TFloatField
      FieldName = 'RATA6_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField58: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBStringField59: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBStringField60: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object SmallintField24: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IntegerField23: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBStringField61: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBStringField62: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBStringField63: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'RATA1_DATA'
    end
    object DateField2: TDateField
      FieldName = 'RATA2_DATA'
    end
    object DateField3: TDateField
      FieldName = 'RATA3_DATA'
    end
    object DateField4: TDateField
      FieldName = 'RATA4_DATA'
    end
    object DateField5: TDateField
      FieldName = 'RATA5_DATA'
    end
    object DateField6: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IntegerField24: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object IBStringField64: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object IntegerField25: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object SmallintField25: TSmallintField
      FieldName = 'TIPO'
    end
    object IBStringField65: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBStringField66: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object IBStringField67: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object IBStringField68: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object IBStringField69: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object IBStringField70: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IntegerField26: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object IBStringField71: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object IBStringField72: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object SmallintField26: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object IntegerField27: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object IBStringField73: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object IBStringField74: TIBStringField
      FieldName = 'MONETA_ID1'
      Size = 4
    end
    object IBStringField75: TIBStringField
      FieldName = 'PAGAMENTO_ID1'
      Size = 5
    end
    object IBStringField76: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField77: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBStringField78: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object IBStringField79: TIBStringField
      FieldName = 'AGENTE_ID1'
      Size = 4
    end
    object FloatField72: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBStringField80: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object IBStringField81: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object FloatField73: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object FloatField74: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object IBStringField82: TIBStringField
      FieldName = 'TEL11'
      Size = 15
    end
    object IBStringField83: TIBStringField
      FieldName = 'TEL21'
      Size = 15
    end
    object IBStringField84: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBStringField85: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object IBStringField86: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object IntegerField28: TIntegerField
      FieldName = 'SESSO'
    end
    object IntegerField29: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object IBStringField87: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object FloatField75: TFloatField
      FieldName = 'FIDO'
    end
    object SmallintField27: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object IntegerField30: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object SmallintField28: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object SmallintField29: TSmallintField
      FieldName = 'IVA_SOSPESA1'
    end
    object SmallintField30: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object IBStringField88: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object IntegerField31: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object IntegerField32: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object IntegerField33: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object IntegerField34: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object SmallintField31: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object IntegerField35: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object IntegerField36: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object IBStringField89: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object FloatField76: TFloatField
      FieldName = 'RISCHIO'
    end
    object IntegerField37: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object IntegerField38: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object IntegerField39: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object SmallintField32: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object SmallintField33: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object IBStringField90: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object IBStringField91: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object IBStringField92: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object IntegerField40: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object IBStringField93: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object IBStringField94: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object IBStringField95: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object IBStringField96: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object IBStringField97: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object IBStringField98: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object IBStringField99: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object IBStringField100: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object IBStringField101: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object IBStringField102: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object IBStringField103: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object IBStringField104: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object IBStringField105: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object IBStringField106: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object IBStringField107: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField108: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBStringField109: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object IBStringField110: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IBStringField111: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField112: TIBStringField
      FieldName = 'DESCR1'
      Size = 50
    end
    object IBStringField113: TIBStringField
      FieldName = 'CODICE_ZONA_ID1'
      Size = 7
    end
    object IBStringField114: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID1'
      Size = 7
    end
    object FloatField77: TFloatField
      FieldName = 'PROVVIGIONE1'
    end
    object FloatField78: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField34: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField41: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField35: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField36: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE1'
    end
    object FloatField79: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField80: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField115: TIBStringField
      FieldName = 'CG1'
      Size = 4
    end
    object IBStringField116: TIBStringField
      FieldName = 'CA1'
      Size = 4
    end
    object IntegerField42: TIntegerField
      FieldName = 'TIPO_AG'
    end
    object IBStringField117: TIBStringField
      FieldName = 'CR1'
      Size = 4
    end
    object FloatField81: TFloatField
      FieldKind = fkLookup
      FieldName = 'COSTOR'
      LookupDataSet = dmodAz.ibTab_Articoli
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'COSTO_STANDART'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
    object IBQuery7A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBQuery7B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBQuery7C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBQuery7CA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object IBQuery7CODICE_ARTICOLO1: TIBStringField
      FieldName = 'CODICE_ARTICOLO1'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
    end
    object IBQuery7DESCR2: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBQuery7DESCR21: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR21'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery7CODICE_IVA_ID1: TIBStringField
      FieldName = 'CODICE_IVA_ID1'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery7UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery7UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery7UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery7SCONTO12: TFloatField
      FieldName = 'SCONTO12'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery7SCONTO22: TFloatField
      FieldName = 'SCONTO22'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery7SCONTO31: TFloatField
      FieldName = 'SCONTO31'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery7PROVVIGIONE2: TFloatField
      FieldName = 'PROVVIGIONE2'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery7PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery7PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery7SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery7SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery7LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery7GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery7QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery7ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery7DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery7PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBQuery7COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery7TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery7FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery7FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery7COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery7RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery7GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery7ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery7RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery7RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery7RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery7RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery7STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery7GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery7PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery7CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery7CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery7CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery7DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery7VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery7VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery7VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery7NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery7TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery7TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery7OMAGGIO1: TSmallintField
      FieldName = 'OMAGGIO1'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery7TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery7CLI_FOR_ID1: TIntegerField
      FieldName = 'CLI_FOR_ID1'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery7CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery7DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery7NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery7NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery7NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery7FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery7FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery7PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery7COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery7DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery7NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery7TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery7CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery7CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery7UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery7UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery7CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery7CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery7CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery7FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery7CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBQuery7FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery7DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery7SCONTO41: TFloatField
      FieldName = 'SCONTO41'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery7PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery7P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery7P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery7P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery7P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery7SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery7SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery7SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery7SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery7SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery7SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery7SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery7SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery7SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery7SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery7SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery7SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery7R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery7R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery7R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery7R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery7IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery7IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery7IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery7IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery7RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery7P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery7IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery7STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery7CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery7CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery7AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery7CA21: TFloatField
      FieldName = 'CA21'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery7CG21: TFloatField
      FieldName = 'CG21'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery7AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery7CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery7CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery7AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery7CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery7CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery7AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery7CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery7CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery7AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery7CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery7CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery7AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery7ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery7CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery7CR21: TFloatField
      FieldName = 'CR21'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery7CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery7CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery7CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery7CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
    object IBQuery7CODICE1: TIBStringField
      FieldName = 'CODICE1'
      Origin = '"TAB_SUBCATEGORIA"."CODICE"'
      Size = 4
    end
    object IBQuery7DESCR3: TIBStringField
      FieldName = 'DESCR3'
      Origin = '"TAB_SUBCATEGORIA"."DESCR"'
      Size = 50
    end
    object IBQuery7LIST: TIntegerField
      FieldName = 'LIST'
      Origin = '"TAB_SUBCATEGORIA"."LIST"'
    end
    object IBQuery7RIC: TFloatField
      FieldName = 'RIC'
      Origin = '"TAB_SUBCATEGORIA"."RIC"'
    end
    object IBQuery7SC: TFloatField
      FieldName = 'SC'
      Origin = '"TAB_SUBCATEGORIA"."SC"'
    end
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 500
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'inner JOIN TAB_cli_for ON'
      'TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for'
      'left JOIN TAB_agenti ON'
      'TAB_cli_for.agente_id=TAB_agenti.codice'
      'left JOIN TAB_articoli ON'
      '(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)'
      'left JOIN TAB_SUBCATEGORIA ON'
      
        '((TAB_Documenti.listino=TAB_SUBCATEGORIA.LIST) and (TAB_DOCUMENT' +
        'I.KINGUA_ID=TAB_SUBCATEGORIA.CODICE))'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210'
      '')
    Left = 136
    Top = 408
    object IntegerField43: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IntegerField44: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IntegerField45: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBStringField118: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBStringField119: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object FloatField82: TFloatField
      FieldName = 'COSTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField83: TFloatField
      FieldName = 'COSTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField120: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object FloatField84: TFloatField
      FieldName = 'FATTCONV'
    end
    object FloatField85: TFloatField
      FieldName = 'QTA_UM'
    end
    object FloatField86: TFloatField
      FieldName = 'QUANTITA'
    end
    object FloatField87: TFloatField
      FieldName = 'SCONTO1'
    end
    object FloatField88: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField89: TFloatField
      FieldName = 'SCONTO3'
    end
    object FloatField90: TFloatField
      FieldName = 'SCONTO4'
    end
    object FloatField91: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField92: TFloatField
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField93: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField37: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBStringField121: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object FloatField94: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object FloatField95: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object IBStringField122: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object FloatField96: TFloatField
      FieldName = 'IVATO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField97: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField123: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object SmallintField38: TSmallintField
      FieldName = 'RIF_A'
    end
    object SmallintField39: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object SmallintField40: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object SmallintField41: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IntegerField46: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IntegerField47: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IntegerField48: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IntegerField49: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object DateTimeField15: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IntegerField50: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IntegerField51: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IntegerField52: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IntegerField53: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object FloatField98: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object FloatField99: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object FloatField100: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object FloatField101: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IntegerField54: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBStringField124: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object FloatField102: TFloatField
      FieldName = 'TOTSCAT'
    end
    object FloatField103: TFloatField
      FieldName = 'PREZZOLIST'
      DisplayFormat = '#,##.00 '
    end
    object FloatField104: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBStringField125: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBStringField126: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object IntegerField55: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IntegerField56: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBStringField127: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IntegerField57: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object SmallintField42: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IntegerField58: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object SmallintField43: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBStringField128: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IntegerField59: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object SmallintField44: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBStringField129: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBStringField130: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBStringField131: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBStringField132: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object IBStringField133: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object DateTimeField16: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object DateTimeField17: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object DateTimeField18: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object DateTimeField19: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IntegerField60: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IntegerField61: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBStringField134: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object FloatField105: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBStringField135: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBStringField136: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBStringField137: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField138: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField139: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBStringField140: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBStringField141: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBStringField142: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBStringField143: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBStringField144: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBStringField145: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBStringField146: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBStringField147: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBStringField148: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBStringField149: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object FloatField106: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object FloatField107: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object FloatField108: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBStringField150: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBStringField151: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object FloatField109: TFloatField
      FieldName = 'SCONTO11'
    end
    object IBStringField152: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object DateTimeField20: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IntegerField62: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object FloatField110: TFloatField
      FieldName = 'NRCOLLI'
    end
    object FloatField111: TFloatField
      FieldName = 'SCONTO21'
    end
    object FloatField112: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField153: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object SmallintField45: TSmallintField
      FieldName = 'SOSPESO'
    end
    object SmallintField46: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBStringField154: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBStringField155: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBStringField156: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBStringField157: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBStringField158: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBStringField159: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBStringField160: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object SmallintField47: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBStringField161: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object IBStringField162: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object SmallintField48: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBStringField163: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object SmallintField49: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBStringField164: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object SmallintField50: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object SmallintField51: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object SmallintField52: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object SmallintField53: TSmallintField
      FieldName = 'IVATO1'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField54: TSmallintField
      FieldName = 'STAMPATO'
    end
    object DateTimeField21: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object SmallintField55: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object FloatField113: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField56: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField114: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      DisplayFormat = '#,##.00 '
    end
    object SmallintField57: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IntegerField63: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBStringField165: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IntegerField64: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object SmallintField58: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object FloatField115: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object FloatField116: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object FloatField117: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object FloatField118: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object FloatField119: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object FloatField120: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object IBStringField166: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object SmallintField59: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object FloatField121: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      DisplayFormat = '#,##.00 '
    end
    object FloatField122: TFloatField
      FieldName = 'TOTALE_MERCE'
      DisplayFormat = '#,##.00 '
    end
    object FloatField123: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      DisplayFormat = '#,##.00 '
    end
    object FloatField124: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00 '
    end
    object FloatField125: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00 '
    end
    object FloatField126: TFloatField
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField127: TFloatField
      FieldName = 'TOTALE_SCONTI'
      DisplayFormat = '#,##.00 '
    end
    object FloatField128: TFloatField
      FieldName = 'TOTALE_EURO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField129: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField167: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object FloatField130: TFloatField
      FieldName = 'ALIVA1'
    end
    object FloatField131: TFloatField
      FieldName = 'IMPON1'
      DisplayFormat = '#,##.00 '
    end
    object FloatField132: TFloatField
      FieldName = 'IMPOSTA1'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField168: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object FloatField133: TFloatField
      FieldName = 'ALIVA2'
    end
    object FloatField134: TFloatField
      FieldName = 'IMPON2'
      DisplayFormat = '#,##.00 '
    end
    object FloatField135: TFloatField
      FieldName = 'IMPOSTA2'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField169: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object FloatField136: TFloatField
      FieldName = 'ALIVA3'
    end
    object FloatField137: TFloatField
      FieldName = 'IMPON3'
      DisplayFormat = '#,##.00 '
    end
    object FloatField138: TFloatField
      FieldName = 'IMPOSTA3'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField170: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object FloatField139: TFloatField
      FieldName = 'ALIVA4'
    end
    object FloatField140: TFloatField
      FieldName = 'IMPON4'
      DisplayFormat = '#,##.00 '
    end
    object FloatField141: TFloatField
      FieldName = 'IMPOSTA4'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField171: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object FloatField142: TFloatField
      FieldName = 'ALIVA5'
    end
    object FloatField143: TFloatField
      FieldName = 'IMPON5'
      DisplayFormat = '#,##.00 '
    end
    object FloatField144: TFloatField
      FieldName = 'IMPOSTA5'
      DisplayFormat = '#,##.00 '
    end
    object FloatField145: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBStringField172: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBStringField173: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBStringField174: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object FloatField146: TFloatField
      FieldName = 'ACCONTO'
    end
    object FloatField147: TFloatField
      FieldName = 'RATA1_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField148: TFloatField
      FieldName = 'RATA2_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField149: TFloatField
      FieldName = 'RATA3_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField150: TFloatField
      FieldName = 'RATA4_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField151: TFloatField
      FieldName = 'RATA5_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object FloatField152: TFloatField
      FieldName = 'RATA6_IMPORTO'
      DisplayFormat = '#,##.00 '
    end
    object IBStringField175: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBStringField176: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBStringField177: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object SmallintField60: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IntegerField65: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBStringField178: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBStringField179: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBStringField180: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object DateField7: TDateField
      FieldName = 'RATA1_DATA'
    end
    object DateField8: TDateField
      FieldName = 'RATA2_DATA'
    end
    object DateField9: TDateField
      FieldName = 'RATA3_DATA'
    end
    object DateField10: TDateField
      FieldName = 'RATA4_DATA'
    end
    object DateField11: TDateField
      FieldName = 'RATA5_DATA'
    end
    object DateField12: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IntegerField66: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object IBStringField181: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object IntegerField67: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object SmallintField61: TSmallintField
      FieldName = 'TIPO'
    end
    object IBStringField182: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBStringField183: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object IBStringField184: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object IBStringField185: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object IBStringField186: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object IBStringField187: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IntegerField68: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object IBStringField188: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object IBStringField189: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object SmallintField62: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object IntegerField69: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object IBStringField190: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object IBStringField191: TIBStringField
      FieldName = 'MONETA_ID1'
      Size = 4
    end
    object IBStringField192: TIBStringField
      FieldName = 'PAGAMENTO_ID1'
      Size = 5
    end
    object IBStringField193: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField194: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBStringField195: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object IBStringField196: TIBStringField
      FieldName = 'AGENTE_ID1'
      Size = 4
    end
    object FloatField153: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBStringField197: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object IBStringField198: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object FloatField154: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object FloatField155: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object IBStringField199: TIBStringField
      FieldName = 'TEL11'
      Size = 15
    end
    object IBStringField200: TIBStringField
      FieldName = 'TEL21'
      Size = 15
    end
    object IBStringField201: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBStringField202: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object IBStringField203: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object DateTimeField22: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object IntegerField70: TIntegerField
      FieldName = 'SESSO'
    end
    object IntegerField71: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object IBStringField204: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object FloatField156: TFloatField
      FieldName = 'FIDO'
    end
    object SmallintField63: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object IntegerField72: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object SmallintField64: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object SmallintField65: TSmallintField
      FieldName = 'IVA_SOSPESA1'
    end
    object SmallintField66: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object IBStringField205: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object IntegerField73: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object IntegerField74: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object IntegerField75: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object IntegerField76: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object SmallintField67: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object IntegerField77: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object IntegerField78: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object IBStringField206: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object FloatField157: TFloatField
      FieldName = 'RISCHIO'
    end
    object IntegerField79: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object IntegerField80: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object IntegerField81: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object SmallintField68: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object SmallintField69: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object IBStringField207: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object IBStringField208: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object IBStringField209: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object IntegerField82: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object IBStringField210: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object IBStringField211: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object IBStringField212: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object IBStringField213: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object IBStringField214: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object IBStringField215: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object IBStringField216: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object IBStringField217: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object IBStringField218: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object IBStringField219: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object IBStringField220: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object IBStringField221: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object IBStringField222: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object IBStringField223: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object IBStringField224: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField225: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBStringField226: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object IBStringField227: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IBStringField228: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField229: TIBStringField
      FieldName = 'DESCR1'
      Size = 50
    end
    object IBStringField230: TIBStringField
      FieldName = 'CODICE_ZONA_ID1'
      Size = 7
    end
    object IBStringField231: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID1'
      Size = 7
    end
    object FloatField158: TFloatField
      FieldName = 'PROVVIGIONE1'
    end
    object FloatField159: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField70: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField83: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField71: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField72: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE1'
    end
    object FloatField160: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField161: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField232: TIBStringField
      FieldName = 'CG1'
      Size = 4
    end
    object IBStringField233: TIBStringField
      FieldName = 'CA1'
      Size = 4
    end
    object IntegerField84: TIntegerField
      FieldName = 'TIPO_AG'
    end
    object IBStringField234: TIBStringField
      FieldName = 'CR1'
      Size = 4
    end
    object FloatField162: TFloatField
      FieldKind = fkLookup
      FieldName = 'COSTOR'
      LookupDataSet = dmodAz.ibTab_Articoli
      LookupKeyFields = 'CODICE_ARTICOLO'
      LookupResultField = 'COSTO_STANDART'
      KeyFields = 'CODICE_ARTICOLO'
      Lookup = True
    end
    object IBStringField235: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBStringField236: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBStringField237: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBStringField238: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object IBStringField239: TIBStringField
      FieldName = 'CODICE_ARTICOLO1'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
    end
    object IBStringField240: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField241: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR21'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBStringField242: TIBStringField
      FieldName = 'CODICE_IVA_ID1'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField243: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField244: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField245: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField163: TFloatField
      FieldName = 'SCONTO12'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField164: TFloatField
      FieldName = 'SCONTO22'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField165: TFloatField
      FieldName = 'SCONTO31'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField166: TFloatField
      FieldName = 'PROVVIGIONE2'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField167: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField168: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField169: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField170: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField171: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField85: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField86: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField87: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField246: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField172: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField173: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField73: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField174: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField175: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField88: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField89: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField90: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField247: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField74: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField75: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField76: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField77: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField248: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField249: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField250: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField251: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField91: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField252: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField78: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField253: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField254: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField255: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField92: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField79: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField80: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField81: TSmallintField
      FieldName = 'OMAGGIO1'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField82: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField93: TIntegerField
      FieldName = 'CLI_FOR_ID1'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField256: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField257: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField83: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField84: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField94: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField176: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField177: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField95: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField178: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField23: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField96: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField85: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField97: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField98: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField99: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField100: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField101: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField102: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField103: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField258: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField104: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField259: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField24: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField179: TFloatField
      FieldName = 'SCONTO41'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField180: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField181: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField182: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField183: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField184: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField185: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField186: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField187: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField188: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField189: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField190: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField191: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField192: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField193: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField194: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField195: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField196: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField197: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField198: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField199: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField200: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField201: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField202: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField203: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField204: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField205: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField206: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField207: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField208: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField209: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField210: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField211: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField212: TFloatField
      FieldName = 'CA21'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField213: TFloatField
      FieldName = 'CG21'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField214: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField215: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField216: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField217: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField218: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField219: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField220: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField221: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField222: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField223: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField224: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField225: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField226: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField105: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField227: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField228: TFloatField
      FieldName = 'CR21'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField229: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField230: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField231: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField232: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
    object IBStringField260: TIBStringField
      FieldName = 'CODICE1'
      Origin = '"TAB_SUBCATEGORIA"."CODICE"'
      Size = 4
    end
    object IBStringField261: TIBStringField
      FieldName = 'DESCR3'
      Origin = '"TAB_SUBCATEGORIA"."DESCR"'
      Size = 50
    end
    object IntegerField106: TIntegerField
      FieldName = 'LIST'
      Origin = '"TAB_SUBCATEGORIA"."LIST"'
    end
    object FloatField233: TFloatField
      FieldName = 'RIC'
      Origin = '"TAB_SUBCATEGORIA"."RIC"'
    end
    object FloatField234: TFloatField
      FieldName = 'SC'
      Origin = '"TAB_SUBCATEGORIA"."SC"'
    end
  end
  object ibTotPM: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibTotPMCalcFields
    SQL.Strings = (
      
        'SELECT distinct TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr FR' +
        'OM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'left JOIN TAB_articoli ON'
      '(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)'
      'left JOIN TAB_AGENTI ON'
      'TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210 and TAB_DOCUMENTI.listino<6'
      'group by TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr')
    Left = 664
    Top = 240
    object ibTotPMCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibTotPMDESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibTotPMQTA2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTA2'
      Calculated = True
    end
    object ibTotPMQTA1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTA1'
      Calculated = True
    end
  end
  object ibTotMag5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'SELECT distinct TAB_DET_DOC.codice_articolo,SUM(TAB_DET_DOC.quan' +
        'tita) as QTA1  FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'left JOIN TAB_articoli ON'
      '(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)'
      'left JOIN TAB_AGENTI ON'
      'TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210 and TAB_DOCUMENTI.listino>5'
      'group by TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr')
    Left = 688
    Top = 272
    object ibTotMag5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibTotMag5QTA1: TFloatField
      FieldName = 'QTA1'
      ProviderFlags = []
    end
  end
  object ibTotMin6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibTotPMCalcFields
    SQL.Strings = (
      
        'SELECT distinct TAB_DET_DOC.codice_articolo, SUM(TAB_DET_DOC.qua' +
        'ntita) as QTA1   FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'left JOIN TAB_articoli ON'
      '(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)'
      'left JOIN TAB_AGENTI ON'
      'TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =210 and TAB_DOCUMENTI.listino<6'
      'group by TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr')
    Left = 656
    Top = 272
    object ibTotMin6CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibTotMin6QTA1: TFloatField
      FieldName = 'QTA1'
      ProviderFlags = []
    end
  end
end
