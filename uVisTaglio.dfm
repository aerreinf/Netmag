object fVisTaglio: TfVisTaglio
  Left = 164
  Top = 89
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Visualizza TAGLIO'
  ClientHeight = 558
  ClientWidth = 774
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
    Width = 84
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
    Width = 83
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
    Text = '24/09/2015'
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 122
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
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 0
    Top = 162
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
    TabOrder = 3
    OnClick = RadioGroup2Click
  end
  object RadioGroup3: TRadioGroup
    Left = 0
    Top = 202
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
    TabOrder = 4
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
    TabOrder = 5
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
    TabOrder = 6
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
    TabOrder = 7
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
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 240
    Width = 773
    Height = 233
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Color = 12058623
        Expanded = False
        FieldName = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
        Expanded = False
        FieldName = 'NUMPRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
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
        Color = 12058623
        Expanded = False
        FieldName = 'TOTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
        Expanded = False
        FieldName = 'TAGLIA7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tg8'
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
        Color = 12058623
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
        Color = 12058623
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
        Color = 12058623
        Expanded = False
        FieldName = 'PASSATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
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
        FieldName = 'NOTE'
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
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object RadioGroup7: TRadioGroup
    Left = 477
    Top = 179
    Width = 164
    Height = 54
    Caption = 'Visual.'
    Columns = 2
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
    TabOrder = 10
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
    TabOrder = 11
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
    TabOrder = 12
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 689
    Top = 208
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
    TabOrder = 13
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
    TabOrder = 14
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 475
    Width = 494
    Height = 85
    DataSource = DataSource2
    TabOrder = 15
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
    Left = 164
    Top = 135
    Width = 69
    Height = 20
    Ctl3D = False
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'ID_CLI_FOR'
    ListField = 'ID_CLI_FOR'
    ListSource = dsoCli
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object LookCliDescr: TDBLookupComboBox
    Left = 236
    Top = 135
    Width = 236
    Height = 20
    Ctl3D = False
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'ID_CLI_FOR'
    ListField = 'DENOMINAZIONE'
    ListSource = dsoCli
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
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
    TabOrder = 18
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
    TabOrder = 19
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
    TabOrder = 20
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
    TabOrder = 21
    OnChange = rxdblcAdArtChange
    OnExit = rxdblcAdArtExit
  end
  object Button1: TButton
    Left = 689
    Top = 104
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
    TabOrder = 22
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 494
    Top = 474
    Width = 277
    Height = 86
    DataSource = DataSource3
    TabOrder = 23
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
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 164
    Top = 174
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
    TabOrder = 24
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 236
    Top = 174
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
    TabOrder = 25
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 236
    Top = 214
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
    TabOrder = 26
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 164
    Top = 214
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
    TabOrder = 27
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
    TabOrder = 28
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
    TabOrder = 29
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
    TabOrder = 30
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
    TabOrder = 31
  end
  object cbMarca: TCheckBox
    Left = 251
    Top = 71
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 32
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
    TabOrder = 33
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
    TabOrder = 34
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
    TabOrder = 35
    OnClick = cbGruppoClick
  end
  object DataSource1: TDataSource
    DataSet = dmodAz.ibqryTaglio
    Left = 632
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT DISTINCT CODICE,DESCR,sum(TOTALE),SUM(QTA_TOTALE)'
      'FROM TAGLIO'
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
    Left = 736
    Top = 32
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.IBQryCommessi
    Left = 268
    Top = 212
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
    Top = 164
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
end
