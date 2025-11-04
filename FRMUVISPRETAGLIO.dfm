object fVisPretaglio: TfVisPretaglio
  Left = 237
  Top = 123
  Width = 793
  Height = 598
  Caption = 'Visualizzazioni PRETAGLIO  -  Consu.Matica'
  Color = 16758639
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
    Left = 0
    Top = 12
    Width = 40
    Height = 13
    Caption = 'Da Data'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = 'a Data'
  end
  object Label3: TLabel
    Left = 269
    Top = 94
    Width = 38
    Height = 13
    Caption = 'Famiglia'
  end
  object Label4: TLabel
    Left = 439
    Top = 94
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label5: TLabel
    Left = 269
    Top = 55
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object Label6: TLabel
    Left = 439
    Top = 55
    Width = 35
    Height = 13
    Caption = 'Gruppo'
  end
  object DateEdit1: TDateEdit
    Left = 42
    Top = 8
    Width = 93
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 0
    Text = '01/01/2000'
  end
  object DateEdit2: TDateEdit
    Left = 42
    Top = 36
    Width = 89
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 1
    Text = '24/09/2020'
  end
  object RadioGroup1: TRadioGroup
    Left = 3
    Top = 117
    Width = 161
    Height = 33
    Caption = 'Scegli Cliente'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cliente')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 3
    Top = 157
    Width = 161
    Height = 33
    Caption = 'Scegli Fason.'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Fason.')
    TabOrder = 3
    OnClick = RadioGroup2Click
  end
  object RadioGroup3: TRadioGroup
    Left = 3
    Top = 197
    Width = 161
    Height = 33
    Caption = 'Scegli dipend.'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Dipendente')
    TabOrder = 4
    OnClick = RadioGroup3Click
  end
  object RadioGroup4: TRadioGroup
    Left = 136
    Top = 2
    Width = 105
    Height = 71
    Caption = 'Scegli Articolo'
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Da Art. ad Art.'
      'x Categoria')
    TabOrder = 5
    OnClick = RadioGroup4Click
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 227
    Top = 163
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'DENOMINAZIONE'
    LookupSource = dsFasonista
    TabOrder = 6
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 171
    Top = 163
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'ID_CLI_FOR'
    LookupDisplay = 'ID_CLI_FOR'
    LookupSource = dsFasonista
    TabOrder = 7
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 227
    Top = 203
    Width = 249
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsDipendente
    TabOrder = 8
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 171
    Top = 203
    Width = 54
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = dsDipendente
    TabOrder = 9
  end
  object RadioGroup5: TRadioGroup
    Left = 4
    Top = 61
    Width = 73
    Height = 51
    Caption = 'Schede'
    ItemIndex = 0
    Items.Strings = (
      'Tutte'
      'Scheda')
    TabOrder = 10
    OnClick = RadioGroup5Click
  end
  object RxDBLookupCombo11: TRxDBLookupCombo
    Left = 83
    Top = 91
    Width = 73
    Height = 21
    DropDownCount = 8
    LookupField = 'NUMERO'
    LookupDisplay = 'NUMERO'
    LookupSource = DataSource1
    TabOrder = 11
  end
  object RadioGroup6: TRadioGroup
    Left = 491
    Top = 165
    Width = 89
    Height = 63
    Caption = 'Ordina per :'
    ItemIndex = 0
    Items.Strings = (
      'Scheda'
      'Articolo'
      'Data')
    TabOrder = 12
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 232
    Width = 773
    Height = 241
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Scheda'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'CODICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TOTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Capi da Tagliare'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col0'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col1'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col2'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col3'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col4'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col5'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col6'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'COLORE7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Col7'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
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
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg1'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg2'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg3'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg4'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg5'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg6'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg7'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'FASONISTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fason'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'DIPENDENTE'
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
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
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
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 12910591
        Expanded = False
        FieldName = 'NOTE'
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
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object RadioGroup7: TRadioGroup
    Left = 595
    Top = 166
    Width = 89
    Height = 63
    Caption = 'Visual.'
    ItemIndex = 0
    Items.Strings = (
      'Storico'
      'Da Passare'
      'Passati')
    TabOrder = 14
  end
  object BitBtn1: TBitBtn
    Left = 697
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
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 697
    Top = 32
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
    TabOrder = 16
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 697
    Top = 200
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
    TabOrder = 17
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 697
    Top = 58
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
    TabOrder = 18
    OnClick = BitBtn4Click
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 475
    Width = 494
    Height = 85
    DataSource = DataSource2
    TabOrder = 19
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end>
  end
  object LookCliCod: TDBLookupComboBox
    Left = 167
    Top = 131
    Width = 69
    Height = 19
    Ctl3D = False
    Enabled = False
    KeyField = 'ID_CLI_FOR'
    ListField = 'ID_CLI_FOR'
    ListSource = dsoCli
    ParentCtl3D = False
    TabOrder = 20
  end
  object LookCliDescr: TDBLookupComboBox
    Left = 239
    Top = 131
    Width = 236
    Height = 19
    Ctl3D = False
    Enabled = False
    KeyField = 'ID_CLI_FOR'
    ListField = 'DENOMINAZIONE'
    ListSource = dsoCli
    ParentCtl3D = False
    TabOrder = 21
  end
  object rxdblcDaArtCodice: TRxDBLookupCombo
    Left = 248
    Top = 10
    Width = 99
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = dsArticoli
    TabOrder = 22
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
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = dsArticoli
    TabOrder = 23
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
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = dsArticoli
    TabOrder = 24
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
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = dsArticoli
    TabOrder = 25
    OnChange = rxdblcAdArtChange
    OnExit = rxdblcAdArtExit
  end
  object Button1: TButton
    Left = 696
    Top = 128
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
    TabOrder = 26
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 504
    Top = 474
    Width = 270
    Height = 86
    DataSource = DataSource3
    TabOrder = 27
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 85
        Visible = True
      end>
  end
  object cbMarca: TCheckBox
    Left = 251
    Top = 71
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
    OnClick = cbMarcaClick
  end
  object cbFamiglia: TCheckBox
    Left = 251
    Top = 109
    Width = 15
    Height = 17
    Hint = 'Famiglia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
    OnClick = cbFamigliaClick
  end
  object cbTipo: TCheckBox
    Left = 421
    Top = 109
    Width = 15
    Height = 17
    Hint = 'Tipo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 30
    OnClick = cbTipoClick
  end
  object cbGruppo: TCheckBox
    Left = 421
    Top = 71
    Width = 15
    Height = 17
    Hint = 'Gruppo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
    OnClick = cbGruppoClick
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
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoFAMIGLIA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 32
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
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoMARCA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 33
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
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoGRUPPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 34
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
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoTIPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 35
  end
  object BitBtn5: TBitBtn
    Left = 697
    Top = 88
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa Sk.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 36
    OnClick = BitBtn5Click
  end
  object DataSource1: TDataSource
    DataSet = dmodAz.ibqryPretaglio
    Left = 635
    Top = 147
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT DISTINCT CODICE,DESCR,sum(TOTALE),SUM(QTA_TOTALE)'
      'FROM PRETAGLIO'
      'GROUP BY CODICE,DESCR'
      'ORDER BY CODICE')
    Left = 696
    Top = 136
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
    Left = 688
    Top = 168
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 310
    Top = 38
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 610
    Top = 65534
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
    Left = 744
    Top = 32
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
  object dsFasonista: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 304
    Top = 148
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.IBQryCommessi
    Left = 260
    Top = 196
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 433
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
end
