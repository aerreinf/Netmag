object fSituazRicami: TfSituazRicami
  Left = 187
  Top = 129
  Width = 794
  Height = 599
  Caption = 'Situazione Ricami'
  Color = 16763283
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
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
    Left = 10
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
    Top = 94
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
    Top = 94
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
    Top = 55
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
    Top = 55
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
    Left = 46
    Top = 8
    Width = 86
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 0
    Text = '01/01/2000'
  end
  object DateEdit2: TDateEdit
    Left = 46
    Top = 36
    Width = 84
    Height = 21
    DefaultToday = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 1
    Text = '04/03/2015'
  end
  object RadioGroup2: TRadioGroup
    Left = 0
    Top = 124
    Width = 161
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
  object RadioGroup3: TRadioGroup
    Left = 0
    Top = 164
    Width = 161
    Height = 33
    Caption = 'Scegli dipend.'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Dipendente')
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = RadioGroup3Click
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
    TabOrder = 4
    OnClick = RadioGroup4Click
  end
  object RadioGroup5: TRadioGroup
    Left = 8
    Top = 58
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
    TabOrder = 5
  end
  object RxDBLookupCombo11: TRxDBLookupCombo
    Left = 88
    Top = 80
    Width = 73
    Height = 21
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'NUMERO'
    LookupDisplay = 'NUMERO'
    LookupSource = DataSource1
    ParentFont = False
    TabOrder = 6
  end
  object RadioGroup6: TRadioGroup
    Left = 477
    Top = 130
    Width = 164
    Height = 47
    Caption = 'Ordina per :'
    Columns = 2
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
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 689
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
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 689
    Top = 40
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
    PopupMenu = PopupMenu1
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 689
    Top = 136
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 689
    Top = 66
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa Tot.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object rxdblcDaArtCodice: TRxDBLookupCombo
    Left = 248
    Top = 10
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
    Top = 10
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
    Top = 34
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
    Top = 34
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
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 164
    Top = 136
    Width = 69
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
    LookupSource = dsFor
    ParentFont = False
    TabOrder = 16
    OnChange = RxDBLookupCombo4Change
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 236
    Top = 136
    Width = 236
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
    LookupSource = dsFor
    ParentFont = False
    TabOrder = 17
    OnChange = RxDBLookupCombo3Change
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 236
    Top = 176
    Width = 236
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
    LookupSource = dsDipendente
    ParentFont = False
    TabOrder = 18
    Visible = False
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 164
    Top = 176
    Width = 69
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
    TabOrder = 19
    Visible = False
  end
  object rxdblcGruppo: TRxDBLookupCombo
    Left = 439
    Top = 69
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
    Top = 69
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
    Top = 107
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
    Top = 107
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
    Top = 71
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
  end
  object cbFamiglia: TCheckBox
    Left = 251
    Top = 109
    Width = 15
    Height = 17
    Hint = 'Famiglia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
  end
  object cbTipo: TCheckBox
    Left = 421
    Top = 109
    Width = 15
    Height = 17
    Hint = 'Tipo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
  end
  object cbGruppo: TCheckBox
    Left = 421
    Top = 71
    Width = 15
    Height = 17
    Hint = 'Gruppo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
  end
  object DBGrid2: TDBGrid
    Left = -4
    Top = 198
    Width = 775
    Height = 361
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 28
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAUSALE_MAGAZZINO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'CAUSALE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCHEDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'CODICE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Width = 106
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'DESCRIZIONE'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Width = 270
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'FASONISTA'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Width = 161
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_RIGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COSTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'FATTCONV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'QTA_UM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTO_SCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'OMAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO_EQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PERC_PROVV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_SERVIZIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODICE_IVA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAUSALE_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_A_PRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_A_ORD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_A_DDT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_DDT_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_DDT_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_ORD_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_ORD_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_PRE_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_PRE_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PIANOCONTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_PRE_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_ORD_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RIF_DDT_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'OP_QTA_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'OP_VAL_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'OP_QTA_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'OP_VAL_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DOC_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTSCAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PREZZOLIST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PASSATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'B'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ID_DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TESTATA_PN_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DA_FATTURARE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CLIFOR_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DEPOSITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CONTRO_CLIFOR_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CONTRO_TIPO_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CONTRO_DEPOSITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CONTRO_CAUS_MAG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ATTIVITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SUBATTIVITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_REGISTRAZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_CONFERMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_EVASIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'STATO_DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'STATO_CONTABILITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'MONETA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAMBIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'KINGUA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'LISTINO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NS_RIFERIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VS_RIFERIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAUSALE_CONTABILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODICE_BOLL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PAGAMENTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'BANCA_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'BANCA_AZIENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VETTORE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VETTORE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VETTORE3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ASPETTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PESO_NETTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PESO_LORDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CUBAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DESTINARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMBALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'AGENTE_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_CONSEGNA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NRCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SCONTO21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTO_SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SOSPESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IVA_SOSPESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_ESENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_BOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_INCASSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_IMVALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_ACCESSIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ACCORPA_RIGHE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ATTIVITA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SUBATTIVITA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SOGGETTO_CEE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'REPORT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RILEVA_ACCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ORA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'FATT_ACCOMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_FATT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ST_NOTE_CLIFOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IVATO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'STAMPATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'DATA_COMPETENZA_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'MEZZO_TRASPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOT_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TIPO_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOT_IMP_PROVVIGIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAST_MANUALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'NUM_DOC2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SERIE_DOC2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'MESE_CONT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALTRE_DERT_SI_NO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_IMBALLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_BOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_ACCESSORIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_INCASSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_SPEDIZIONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SPESE_CONTRASS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CAU_TRASP_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PER_ALTRA_DEST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_MERCE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_SERVIZI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_SCONTI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_EURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOTALE_EURO_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODIVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALIVA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPON1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPOSTA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODIVA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALIVA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPON2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPOSTA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODIVA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALIVA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPON3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPOSTA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODIVA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALIVA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPON4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPOSTA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CODIVA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALIVA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPON5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IMPOSTA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TOT_SPESE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALTRA_DEST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SERIE_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CLI_FOR_IND'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ACCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA1_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA2_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA3_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA4_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA5_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA6_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TEL1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TEL2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TEL3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IVA_ESENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'IVA_ESENTE_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VETTORE_IND'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VETTORE_IND2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CLI_FOR_IND2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA1_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA2_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA3_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA4_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA5_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'RATA6_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'PIANOCONTO_ID1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ALTRA_DEST2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'CA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Black'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery3
    Left = 648
    Top = 144
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT DISTINCT CODICE,DESCR,sum(TOTALE),SUM(QTA_TOTALE)'
      'FROM TAGLIO'
      'GROUP BY CODICE,DESCR'
      'ORDER BY CODICE')
    Left = 592
    Top = 72
    object IBQuery1CODICE: TIBStringField
      FieldName = 'CODICE'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery1F_1: TLargeintField
      FieldName = 'F_1'
    end
    object IBQuery1F_2: TLargeintField
      FieldName = 'F_2'
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 584
    Top = 104
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 310
    Top = 45
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 610
    Top = 6
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select  * from tab_articoli')
    Left = 736
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = dmodAz.RxMemoryData1
    Left = 648
    Top = 8
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.IBQryCommessi
    Left = 268
    Top = 174
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
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 266
    Top = 316
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 264
    Top = 280
  end
  object dsFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 316
    Top = 126
  end
  object ibCalcAcc: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.totale) from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      'distinte.codice_articolo = pretaglio.codice'
      
        'where (distinte.codice_articolo=:CODICE_ARTICOLO) and (distinte_' +
        'dett.FLAG_SCATOLO='#39'N'#39')'
      'group by distinte_dett.codice_articolo'
      'UNION'
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.scat) from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      'distinte.codice_articolo = pretaglio.codice'
      
        'where (distinte.codice_articolo=:CODICE_ARTICOLO) and (distinte_' +
        'dett.FLAG_SCATOLO='#39'S'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 608
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 208
    Top = 88
    object RxMemoryData1CodiceArticolo: TStringField
      FieldName = 'CodiceArticolo'
    end
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      
        'WHERE (TAB_DOCUMENTI.TIPO_DOC =590) OR (TAB_DOCUMENTI.TIPO_DOC =' +
        '591)'
      'order by codice_articolo')
    Left = 648
    Top = 112
    object IBQuery3ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object IBQuery3TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object IBQuery3DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 100
    end
    object IBQuery3COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
    end
    object IBQuery3COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
    end
    object IBQuery3UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object IBQuery3FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object IBQuery3QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object IBQuery3QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object IBQuery3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object IBQuery3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object IBQuery3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object IBQuery3SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery3IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
    end
    object IBQuery3IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
    end
    object IBQuery3IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
    end
    object IBQuery3OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object IBQuery3DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object IBQuery3SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object IBQuery3PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object IBQuery3TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object IBQuery3IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
    end
    object IBQuery3IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
    end
    object IBQuery3CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery3DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object IBQuery3RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object IBQuery3RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object IBQuery3RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object IBQuery3RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object IBQuery3RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object IBQuery3RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object IBQuery3RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object IBQuery3RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object IBQuery3RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object IBQuery3RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object IBQuery3RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object IBQuery3PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object IBQuery3RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object IBQuery3RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object IBQuery3RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object IBQuery3OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object IBQuery3OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object IBQuery3OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object IBQuery3OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object IBQuery3DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery3TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object IBQuery3TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object IBQuery3PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object IBQuery3SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object IBQuery3PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object IBQuery3COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object IBQuery3A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBQuery3B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBQuery3C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBQuery3NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery3ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."ID_DOCUMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery3TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI"."TESTATA_PN_ID"'
    end
    object IBQuery3CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_DOC"'
      Size = 10
    end
    object IBQuery3TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object IBQuery3DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI"."DA_FATTURARE"'
    end
    object IBQuery3CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CLIFOR_ID"'
    end
    object IBQuery3TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object IBQuery3DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object IBQuery3CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CLIFOR_ID"'
    end
    object IBQuery3CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."CONTRO_TIPO_CLIFOR"'
    end
    object IBQuery3CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IBQuery3CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object IBQuery3CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object IBQuery3ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 3
    end
    object IBQuery3SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA"'
      Size = 2
    end
    object IBQuery3DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_REGISTRAZIONE"'
    end
    object IBQuery3DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
    end
    object IBQuery3DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONFERMA"'
    end
    object IBQuery3DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_EVASIONE"'
    end
    object IBQuery3STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."STATO_DOCUMENTO"'
    end
    object IBQuery3STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI"."STATO_CONTABILITA"'
    end
    object IBQuery3MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI"."MONETA_ID"'
      Size = 4
    end
    object IBQuery3CAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI"."CAMBIO"'
    end
    object IBQuery3KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI"."KINGUA_ID"'
      Size = 4
    end
    object IBQuery3LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI"."LISTINO"'
      Size = 10
    end
    object IBQuery3NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."NS_RIFERIMENTO"'
      Size = 50
    end
    object IBQuery3VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."VS_RIFERIMENTO"'
      Size = 50
    end
    object IBQuery3CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object IBQuery3CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object IBQuery3PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBQuery3BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."BANCA_CLIFOR"'
      Size = 5
    end
    object IBQuery3BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI"."BANCA_AZIENDA"'
      Size = 5
    end
    object IBQuery3VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI"."VETTORE1"'
      Size = 7
    end
    object IBQuery3VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI"."VETTORE2"'
      Size = 7
    end
    object IBQuery3VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI"."VETTORE3"'
      Size = 7
    end
    object IBQuery3PORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI"."PORTO"'
      Size = 30
    end
    object IBQuery3ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI"."ASPETTO"'
      Size = 4
    end
    object IBQuery3SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPEDIZIONE"'
      Size = 4
    end
    object IBQuery3PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI"."PESO_NETTO"'
    end
    object IBQuery3PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI"."PESO_LORDO"'
    end
    object IBQuery3CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI"."CUBAGGIO"'
    end
    object IBQuery3DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI"."DESTINARIO"'
      Size = 4
    end
    object IBQuery3IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI"."IMBALLO"'
      Size = 4
    end
    object IBQuery3SCONTO11: TFloatField
      FieldName = 'SCONTO11'
      Origin = '"TAB_DOCUMENTI"."SCONTO1"'
    end
    object IBQuery3AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI"."AGENTE_ID"'
      Size = 4
    end
    object IBQuery3DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONSEGNA"'
    end
    object IBQuery3NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC"'
    end
    object IBQuery3NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI"."NRCOLLI"'
    end
    object IBQuery3SCONTO21: TFloatField
      FieldName = 'SCONTO21'
      Origin = '"TAB_DOCUMENTI"."SCONTO2"'
    end
    object IBQuery3IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_SCONTO"'
    end
    object IBQuery3NOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI"."NOTA"'
      Size = 100
    end
    object IBQuery3SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI"."SOSPESO"'
    end
    object IBQuery3IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI"."IVA_SOSPESA"'
    end
    object IBQuery3COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_ESENTE"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object IBQuery3ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI"."ACCORPA_RIGHE"'
    end
    object IBQuery3ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 3
    end
    object IBQuery3SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA2"'
      Size = 2
    end
    object IBQuery3SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI"."SOGGETTO_CEE"'
    end
    object IBQuery3REPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI"."REPORT"'
      Size = 50
    end
    object IBQuery3RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI"."RILEVA_ACCONTO"'
    end
    object IBQuery3ORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI"."ORA"'
      Size = 5
    end
    object IBQuery3FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI"."FATT_ACCOMP"'
    end
    object IBQuery3TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI"."TIPO_FATT"'
    end
    object IBQuery3ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."ST_NOTE_CLIFOR"'
    end
    object IBQuery3IVATO1: TSmallintField
      FieldName = 'IVATO1'
      Origin = '"TAB_DOCUMENTI"."IVATO"'
    end
    object IBQuery3STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI"."STAMPATO"'
    end
    object IBQuery3DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI"."DATA_COMPETENZA_IVA"'
    end
    object IBQuery3MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI"."MEZZO_TRASPORTO"'
    end
    object IBQuery3TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_PROVVIGIONE"'
    end
    object IBQuery3TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TIPO_PROVVIGIONE"'
    end
    object IBQuery3TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_IMP_PROVVIGIONE"'
    end
    object IBQuery3CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI"."CAST_MANUALE"'
    end
    object IBQuery3NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC2"'
    end
    object IBQuery3SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC2"'
      Size = 2
    end
    object IBQuery3MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI"."MESE_CONT"'
    end
    object IBQuery3ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI"."ALTRE_DERT_SI_NO"'
    end
    object IBQuery3SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI"."SPESE_IMBALLO"'
    end
    object IBQuery3SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."SPESE_BOLLI"'
    end
    object IBQuery3SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI"."SPESE_ACCESSORIE"'
    end
    object IBQuery3SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."SPESE_INCASSO"'
    end
    object IBQuery3SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPESE_SPEDIZIONE"'
    end
    object IBQuery3SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI"."SPESE_CONTRASS"'
    end
    object IBQuery3CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI"."CAU_TRASP_ID"'
      Size = 30
    end
    object IBQuery3PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."PER_ALTRA_DEST"'
    end
    object IBQuery3IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_CON_IVA"'
    end
    object IBQuery3TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI"."TOTALE_MERCE"'
    end
    object IBQuery3TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SERVIZI"'
    end
    object IBQuery3TOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
    end
    object IBQuery3TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVA"'
    end
    object IBQuery3TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVATO"'
    end
    object IBQuery3TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SCONTI"'
    end
    object IBQuery3TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
    end
    object IBQuery3TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO_IVATO"'
    end
    object IBQuery3CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI"."CODIVA1"'
      Size = 4
    end
    object IBQuery3ALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI"."ALIVA1"'
    end
    object IBQuery3IMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI"."IMPON1"'
    end
    object IBQuery3IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA1"'
    end
    object IBQuery3CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI"."CODIVA2"'
      Size = 4
    end
    object IBQuery3ALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI"."ALIVA2"'
    end
    object IBQuery3IMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI"."IMPON2"'
    end
    object IBQuery3IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA2"'
    end
    object IBQuery3CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI"."CODIVA3"'
      Size = 4
    end
    object IBQuery3ALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI"."ALIVA3"'
    end
    object IBQuery3IMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI"."IMPON3"'
    end
    object IBQuery3IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA3"'
    end
    object IBQuery3CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI"."CODIVA4"'
      Size = 4
    end
    object IBQuery3ALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI"."ALIVA4"'
    end
    object IBQuery3IMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI"."IMPON4"'
    end
    object IBQuery3IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA4"'
    end
    object IBQuery3CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI"."CODIVA5"'
      Size = 4
    end
    object IBQuery3ALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI"."ALIVA5"'
    end
    object IBQuery3IMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI"."IMPON5"'
    end
    object IBQuery3IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA5"'
    end
    object IBQuery3TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI"."TOT_SPESE"'
    end
    object IBQuery3ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST"'
      Size = 100
    end
    object IBQuery3SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC"'
      Size = 10
    end
    object IBQuery3CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND"'
      Size = 255
    end
    object IBQuery3ACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI"."ACCONTO"'
    end
    object IBQuery3RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object IBQuery3RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object IBQuery3RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object IBQuery3RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object IBQuery3RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object IBQuery3RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object IBQuery3TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI"."TEL1"'
      Size = 15
    end
    object IBQuery3TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI"."TEL2"'
      Size = 15
    end
    object IBQuery3TEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI"."TEL3"'
      Size = 15
    end
    object IBQuery3IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE"'
    end
    object IBQuery3IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE_ID"'
    end
    object IBQuery3VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND"'
      Size = 100
    end
    object IBQuery3VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND2"'
      Size = 100
    end
    object IBQuery3CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND2"'
      Size = 255
    end
    object IBQuery3RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object IBQuery3RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object IBQuery3RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object IBQuery3RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object IBQuery3RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object IBQuery3RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object IBQuery3PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
      Origin = '"TAB_DOCUMENTI"."PIANOCONTO_ID"'
    end
    object IBQuery3ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST2"'
      Size = 100
    end
    object IBQuery3CA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object IBQuery3Cliente: TIBStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = dmodAz.ibqTab_For
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'DENOMINAZIONE'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
    object IBQuery3numero: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'numero'
      Calculated = True
    end
    object IBQuery3NUMPRET: TIntegerField
      FieldKind = fkLookup
      FieldName = 'NUMPRET'
      LookupDataSet = dmodAz.ibqryTaglio
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'NUMPRE'
      KeyFields = 'SCHEDA'
      Lookup = True
    end
  end
  object frReport1: TfrReport
    Values.Data = {0100000000000000000000064167656E7465}
    Left = 624
    Top = 376
    Data = {020000000A43617465676F7269613107204167656E7465}
    PixelsPerInch = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 400
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
end
