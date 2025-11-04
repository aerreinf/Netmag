object fCopiaDist: TfCopiaDist
  Left = 190
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Duplica DISTINTA'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
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
    Left = 8
    Top = 32
    Width = 673
    Height = 225
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
        Color = 8454143
        Expanded = False
        FieldName = 'PK_CODICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Id.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Color = 8454143
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
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
        Color = 8454143
        Expanded = False
        FieldName = 'DESCR_ARTICOLO'
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
        Width = 266
        Visible = True
      end
      item
        Color = 8454143
        Expanded = False
        FieldName = 'DENOMINAZIONE'
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
        Width = 184
        Visible = True
      end
      item
        Color = 8454143
        Expanded = False
        FieldName = 'DATA_CREAZIONE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'COSTO'
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
        Color = 8454143
        Expanded = False
        FieldName = 'PREZZO_VENDITA'
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
        Color = 8454143
        Expanded = False
        FieldName = 'COSTO_TOTALE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'MANODOPERA'
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
        Color = 8454143
        Expanded = False
        FieldName = 'RICAMO'
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
        Color = 8454143
        Expanded = False
        FieldName = 'FASONISTA'
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
        Color = 8454143
        Expanded = False
        FieldName = 'SITUAZIONE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'COPPE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'ACCESSORI'
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
        Color = 8454143
        Expanded = False
        FieldName = 'ALTRO1'
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
        Color = 8454143
        Expanded = False
        FieldName = 'ALTRO2'
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
        Color = 8454143
        Expanded = False
        FieldName = 'ALTRO3'
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
        Color = 8454143
        Expanded = False
        FieldName = 'ALTRO4'
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
        Color = 8454143
        Expanded = False
        FieldName = 'RICAR1PERC'
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
        Color = 8454143
        Expanded = False
        FieldName = 'RICAR2PERC'
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
        Color = 8454143
        Expanded = False
        FieldName = 'RICAR_LIRE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'COSTO_ACCESS_TOTALE'
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
        Color = 8454143
        Expanded = False
        FieldName = 'RICAR_LIRE2'
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
        Color = 8454143
        Expanded = False
        FieldName = 'CODCLI'
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
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 8
    Top = 8
    Width = 217
    Height = 21
    DropDownCount = 8
    LookupField = 'PK_CODICE'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 603
    Top = 2
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 7
    Top = 264
    Width = 673
    Height = 177
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
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
        Expanded = False
        FieldName = 'DESCR_ARTICOLO'
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
        Expanded = False
        FieldName = 'QTA'
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
        Expanded = False
        FieldName = 'COSTO'
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
        Expanded = False
        FieldName = 'PREZZO'
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
        Expanded = False
        FieldName = 'FLAG_SCATOLO'
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
        Expanded = False
        FieldName = 'PK_CODICE'
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
        Expanded = False
        FieldName = 'FK_DISTINTE'
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
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from distinte'
      'left join tab_cli_for on'
      'distinte.codcli=tab_cli_for.id_cli_for'
      'order by Codice_articolo')
    Left = 608
    Top = 56
    object IBQuery1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery1DESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE"."DESCR_ARTICOLO"'
      Size = 50
    end
    object IBQuery1MANODOPERA: TFloatField
      FieldName = 'MANODOPERA'
      Origin = '"DISTINTE"."MANODOPERA"'
      currency = True
    end
    object IBQuery1RICAMO: TFloatField
      FieldName = 'RICAMO'
      Origin = '"DISTINTE"."RICAMO"'
      currency = True
    end
    object IBQuery1FASONISTA: TFloatField
      FieldName = 'FASONISTA'
      Origin = '"DISTINTE"."FASONISTA"'
      currency = True
    end
    object IBQuery1SITUAZIONE: TFloatField
      FieldName = 'SITUAZIONE'
      Origin = '"DISTINTE"."SITUAZIONE"'
      currency = True
    end
    object IBQuery1COPPE: TFloatField
      FieldName = 'COPPE'
      Origin = '"DISTINTE"."COPPE"'
      currency = True
    end
    object IBQuery1ACCESSORI: TFloatField
      FieldName = 'ACCESSORI'
      Origin = '"DISTINTE"."ACCESSORI"'
      currency = True
    end
    object IBQuery1ALTRO1: TFloatField
      FieldName = 'ALTRO1'
      Origin = '"DISTINTE"."ALTRO1"'
      currency = True
    end
    object IBQuery1ALTRO2: TFloatField
      FieldName = 'ALTRO2'
      Origin = '"DISTINTE"."ALTRO2"'
      currency = True
    end
    object IBQuery1ALTRO3: TFloatField
      FieldName = 'ALTRO3'
      Origin = '"DISTINTE"."ALTRO3"'
      currency = True
    end
    object IBQuery1ALTRO4: TFloatField
      FieldName = 'ALTRO4'
      Origin = '"DISTINTE"."ALTRO4"'
      currency = True
    end
    object IBQuery1COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
    object IBQuery1RICAR1PERC: TFloatField
      FieldName = 'RICAR1PERC'
      Origin = '"DISTINTE"."RICAR1PERC"'
    end
    object IBQuery1RICAR2PERC: TFloatField
      FieldName = 'RICAR2PERC'
      Origin = '"DISTINTE"."RICAR2PERC"'
    end
    object IBQuery1RICAR_LIRE: TFloatField
      FieldName = 'RICAR_LIRE'
      Origin = '"DISTINTE"."RICAR_LIRE"'
      currency = True
    end
    object IBQuery1PREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = '"DISTINTE"."PREZZO_VENDITA"'
      currency = True
    end
    object IBQuery1COSTO_ACCESS_TOTALE: TFloatField
      FieldName = 'COSTO_ACCESS_TOTALE'
      Origin = '"DISTINTE"."COSTO_ACCESS_TOTALE"'
      currency = True
    end
    object IBQuery1COSTO_TOTALE: TFloatField
      FieldName = 'COSTO_TOTALE'
      Origin = '"DISTINTE"."COSTO_TOTALE"'
      currency = True
    end
    object IBQuery1DATA_CREAZIONE: TDateTimeField
      FieldName = 'DATA_CREAZIONE'
      Origin = '"DISTINTE"."DATA_CREAZIONE"'
    end
    object IBQuery1CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"DISTINTE"."CODCLI"'
    end
    object IBQuery1RICAR_LIRE2: TFloatField
      FieldName = 'RICAR_LIRE2'
      Origin = '"DISTINTE"."RICAR_LIRE2"'
      currency = True
    end
    object IBQuery1ID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Origin = '"TAB_CLI_FOR"."ID_CLI_FOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_CLI_FOR"."TIPO"'
    end
    object IBQuery1DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object IBQuery1COGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = '"TAB_CLI_FOR"."COGNOME"'
      Size = 30
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLI_FOR"."NOME"'
      Size = 30
    end
    object IBQuery1NOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Origin = '"TAB_CLI_FOR"."NOME_ALTRO"'
      Size = 30
    end
    object IBQuery1FULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      Origin = '"TAB_CLI_FOR"."FULL_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 92
    end
    object IBQuery1INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO"'
      Size = 100
    end
    object IBQuery1COMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_ID"'
    end
    object IBQuery1PARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object IBQuery1CODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_CLI_FOR"."CODICE_FISCALE"'
      Size = 30
    end
    object IBQuery1PERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
      Origin = '"TAB_CLI_FOR"."PERSONA_FISICA"'
    end
    object IBQuery1PIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
      Origin = '"TAB_CLI_FOR"."PIANO_CONTI_ID"'
    end
    object IBQuery1CONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Origin = '"TAB_CLI_FOR"."CONTO_CORRENTE"'
      Size = 30
    end
    object IBQuery1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_CLI_FOR"."MONETA_ID"'
      Size = 4
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."PAGAMENTO_ID"'
      Size = 5
    end
    object IBQuery1CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_ZONA_ID"'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Origin = '"TAB_CLI_FOR"."CATEGORIA_CLIENTE_ID"'
      Size = 4
    end
    object IBQuery1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_CLI_FOR"."AGENTE_ID"'
      Size = 4
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_CLI_FOR"."PROVVIGIONE"'
    end
    object IBQuery1LINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Origin = '"TAB_CLI_FOR"."LINGUA_ID"'
      Size = 4
    end
    object IBQuery1CODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Origin = '"TAB_CLI_FOR"."CODICE_LISTINO"'
      Size = 30
    end
    object IBQuery1SCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA1"'
    end
    object IBQuery1SCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA2"'
    end
    object IBQuery1TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_CLI_FOR"."TEL1"'
      Size = 15
    end
    object IBQuery1TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_CLI_FOR"."TEL2"'
      Size = 15
    end
    object IBQuery1FAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_CLI_FOR"."FAX"'
      Size = 15
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLI_FOR"."EMAIL"'
      Size = 50
    end
    object IBQuery1INTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_CLI_FOR"."INTERNET"'
      Size = 100
    end
    object IBQuery1DATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
      Origin = '"TAB_CLI_FOR"."DATA_DI_NASCITA"'
    end
    object IBQuery1SESSO: TIntegerField
      FieldName = 'SESSO'
      Origin = '"TAB_CLI_FOR"."SESSO"'
    end
    object IBQuery1TITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
      Origin = '"TAB_CLI_FOR"."TITOLO_ID"'
    end
    object IBQuery1PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"TAB_CLI_FOR"."PORTO_ID"'
      Size = 4
    end
    object IBQuery1FIDO: TFloatField
      FieldName = 'FIDO'
      Origin = '"TAB_CLI_FOR"."FIDO"'
    end
    object IBQuery1ABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
      Origin = '"TAB_CLI_FOR"."ABILITA_PARTITA"'
    end
    object IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
      Origin = '"TAB_CLI_FOR"."FATTURA_RIEPILOGATIVA"'
    end
    object IBQuery1ACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
      Origin = '"TAB_CLI_FOR"."ACCORPA_ARTICOLI"'
    end
    object IBQuery1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CLI_FOR"."IVA_SOSPESA"'
    end
    object IBQuery1POS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."POS_RIF_BOLLE"'
    end
    object IBQuery1CODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Origin = '"TAB_CLI_FOR"."CODICE_IVA_ESENTE"'
      Size = 4
    end
    object IBQuery1RIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_BOLLE"'
    end
    object IBQuery1ESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE1"'
    end
    object IBQuery1RIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_ORDINI"'
    end
    object IBQuery1ESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE2"'
    end
    object IBQuery1TIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTO_ID"'
    end
    object IBQuery1NAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_ID"'
    end
    object IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_DI_NASCITA_ID"'
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object IBQuery1RISCHIO: TFloatField
      FieldName = 'RISCHIO'
      Origin = '"TAB_CLI_FOR"."RISCHIO"'
    end
    object IBQuery1GG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA1"'
    end
    object IBQuery1GG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA2"'
    end
    object IBQuery1CONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
      Origin = '"TAB_CLI_FOR"."CONTROPARTITA_ID"'
    end
    object IBQuery1TIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTROPARTITA"'
    end
    object IBQuery1CERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
      Origin = '"TAB_CLI_FOR"."CERTIFICATO"'
    end
    object IBQuery1DENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE2"'
      Size = 50
    end
    object IBQuery1INDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO2"'
      Size = 100
    end
    object IBQuery1LOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CLI_FOR"."LOCALITA"'
      Size = 50
    end
    object IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_DI_NASCITA_ID"'
    end
    object IBQuery1CAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Origin = '"TAB_CLI_FOR"."CAB_ID"'
      Size = 11
    end
    object IBQuery1ABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CLI_FOR"."ABI_ID"'
      Size = 11
    end
    object IBQuery1TITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Origin = '"TAB_CLI_FOR"."TITOLO_DESCR"'
      Size = 10
    end
    object IBQuery1COMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."COMNASC_DESCR"'
      Size = 50
    end
    object IBQuery1CAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."CAPNASC_DESCR"'
      Size = 5
    end
    object IBQuery1NAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZNASC_DESCR"'
    end
    object IBQuery1COM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Origin = '"TAB_CLI_FOR"."COM_DESCR"'
      Size = 50
    end
    object IBQuery1CAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Origin = '"TAB_CLI_FOR"."CAP_DESCR"'
      Size = 5
    end
    object IBQuery1PR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Origin = '"TAB_CLI_FOR"."PR_DESCR"'
      Size = 2
    end
    object IBQuery1CAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Origin = '"TAB_CLI_FOR"."CAB_DESCR"'
      Size = 50
    end
    object IBQuery1ABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Origin = '"TAB_CLI_FOR"."ABI_DESCR"'
      Size = 100
    end
    object IBQuery1NAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZ_DESCR"'
      Size = 50
    end
    object IBQuery1FASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object IBQuery1NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 1000
    end
    object IBQuery1CG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_CLI_FOR"."CG"'
      Size = 4
    end
    object IBQuery1CA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_CLI_FOR"."CA"'
      Size = 4
    end
    object IBQuery1COD2: TIBStringField
      FieldName = 'COD2'
      Origin = '"TAB_CLI_FOR"."COD2"'
      Size = 4
    end
    object IBQuery1CR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_CLI_FOR"."CR"'
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 568
    Top = 56
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = DataSource1
    SQL.Strings = (
      'select * from distinte_dett'
      'where fk_distinte=:pk_codice')
    Left = 608
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PK_CODICE'
        ParamType = ptUnknown
        Size = 4
      end>
    object IBQuery2FK_DISTINTE: TIntegerField
      FieldName = 'FK_DISTINTE'
      Origin = '"DISTINTE_DETT"."FK_DISTINTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE_DETT"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery2DESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE_DETT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object IBQuery2QTA: TFloatField
      FieldName = 'QTA'
      Origin = '"DISTINTE_DETT"."QTA"'
    end
    object IBQuery2COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE_DETT"."COSTO"'
      currency = True
    end
    object IBQuery2PREZZO: TFloatField
      FieldName = 'PREZZO'
      Origin = '"DISTINTE_DETT"."PREZZO"'
      currency = True
    end
    object IBQuery2FLAG_SCATOLO: TIBStringField
      FieldName = 'FLAG_SCATOLO'
      Origin = '"DISTINTE_DETT"."FLAG_SCATOLO"'
      Size = 1
    end
    object IBQuery2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE_DETT"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 536
    Top = 136
  end
end
