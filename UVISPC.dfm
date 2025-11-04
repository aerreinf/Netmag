object fVisPC: TfVisPC
  Left = 165
  Top = 147
  BorderStyle = bsSingle
  Caption = 'fVisPC'
  ClientHeight = 495
  ClientWidth = 727
  Color = 15653740
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 721
    Height = 425
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Color = 13041663
        Expanded = False
        FieldName = 'ID_PIANO_CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 49
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'GRUPPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'SOTTOCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'NOME_CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'NATURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'LIVELLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'RIVENDITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'STRUMENTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'INDEDUCIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'STAMPA_IN_BILANCIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'VARIAZIONE_FISCALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'DICH_REDDITI_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'RAGGRUPPAMENTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'CONTO_PERSONALIZZATO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'CAPO_CONTO_CLI_FOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'SPECIALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 649
    Top = 3
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Filtra'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 97
    Height = 57
    Caption = 'Ordina per'
    ItemIndex = 0
    Items.Strings = (
      'Codice'
      'Descrizione')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 120
    Top = 35
    Width = 289
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object RadioGroup2: TRadioGroup
    Left = 416
    Top = 0
    Width = 185
    Height = 61
    Caption = 'Filtra per'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Cli/For'
      'Clienti'
      'Fornitori')
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 102
    Top = 8
    Width = 17
    Height = 17
    TabOrder = 6
  end
  object CheckBox2: TCheckBox
    Left = 102
    Top = 37
    Width = 17
    Height = 17
    TabOrder = 7
  end
  object Button2: TButton
    Left = 648
    Top = 35
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    TabOrder = 8
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 640
    Top = 136
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_piano_conti'
      'order by Nome_Conto')
    Left = 664
    Top = 136
    object IBQuery1ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Required = True
    end
    object IBQuery1GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Size = 2
    end
    object IBQuery1CONTO: TIBStringField
      FieldName = 'CONTO'
      Size = 3
    end
    object IBQuery1SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Size = 5
    end
    object IBQuery1NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      ReadOnly = True
      Size = 12
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1NATURA: TSmallintField
      FieldName = 'NATURA'
    end
    object IBQuery1LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
    end
    object IBQuery1RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
    end
    object IBQuery1STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
    end
    object IBQuery1INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
    end
    object IBQuery1STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
    end
    object IBQuery1VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
    end
    object IBQuery1DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Size = 4
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
    end
    object IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
    end
    object IBQuery1SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
    end
  end
end
