object fCodAgg: TfCodAgg
  Left = 180
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Associazione codici Aggiuntivi'
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
  object fCodAgg: TDBGrid
    Left = 2
    Top = 2
    Width = 681
    Height = 393
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 12320767
        Expanded = False
        FieldName = 'CODICE_AGGIUNTIVO'
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
        Width = 161
        Visible = True
      end
      item
        Color = 12320767
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
        Color = 12320767
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
        Width = 243
        Visible = True
      end
      item
        Color = 12320767
        Expanded = False
        FieldName = 'VAR1_TG'
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
        Color = 12320767
        Expanded = False
        FieldName = 'VAR2_COL'
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
        Color = 12320767
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
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 12320767
        Expanded = False
        FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
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
        Color = 12320767
        Expanded = False
        FieldName = 'CLI_FOR_ID'
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
  object Button1: TButton
    Left = 608
    Top = 408
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 400
    Width = 200
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 211
    Top = 395
    Width = 182
    Height = 50
    Caption = 'RadioGroup1'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Non Associati'
      'Codice')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 400
    Top = 408
    Width = 201
    Height = 21
    DropDownCount = 8
    LookupField = 'CODICE_AGGIUNTIVO'
    LookupSource = DataSource1
    TabOrder = 4
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 584
    Top = 72
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from TAB_CODICI_AGGIUNTIVI'
      'where'
      '  CODICE_AGGIUNTIVO = :OLD_CODICE_AGGIUNTIVO')
    InsertSQL.Strings = (
      'insert into TAB_CODICI_AGGIUNTIVI'
      
        '  (CLI_FOR_ID, CODICE_AGGIUNTIVO, CODICE_ARTICOLO, DESCR, QUANTI' +
        'TA, TIPO_CODICE_AGGIUNTIVO_ID, '
      '   VAR1_TG, VAR2_COL)'
      'values'
      
        '  (:CLI_FOR_ID, :CODICE_AGGIUNTIVO, :CODICE_ARTICOLO, :DESCR, :Q' +
        'UANTITA, '
      '   :TIPO_CODICE_AGGIUNTIVO_ID, :VAR1_TG, :VAR2_COL)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  CLI_FOR_ID,'
      '  CODICE_AGGIUNTIVO,'
      '  TIPO_CODICE_AGGIUNTIVO_ID,'
      '  QUANTITA,'
      '  DESCR,'
      '  VAR1_TG,'
      '  VAR2_COL'
      'from TAB_CODICI_AGGIUNTIVI '
      'where'
      '  CODICE_AGGIUNTIVO = :CODICE_AGGIUNTIVO')
    SelectSQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'order by CODICE_AGGIUNTIVO')
    ModifySQL.Strings = (
      'update TAB_CODICI_AGGIUNTIVI'
      'set'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODICE_AGGIUNTIVO = :CODICE_AGGIUNTIVO,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  QUANTITA = :QUANTITA,'
      '  TIPO_CODICE_AGGIUNTIVO_ID = :TIPO_CODICE_AGGIUNTIVO_ID,'
      '  VAR1_TG = :VAR1_TG,'
      '  VAR2_COL = :VAR2_COL'
      'where'
      '  CODICE_AGGIUNTIVO = :OLD_CODICE_AGGIUNTIVO')
    Left = 504
    Top = 88
    object IBDataSet1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object IBDataSet1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object IBDataSet1CODICE_AGGIUNTIVO: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object IBDataSet1TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object IBDataSet1QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBDataSet1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
    object IBDataSet1VAR1_TG: TIBStringField
      FieldName = 'VAR1_TG'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."VAR1_TG"'
      Size = 50
    end
    object IBDataSet1VAR2_COL: TIBStringField
      FieldName = 'VAR2_COL'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."VAR2_COL"'
      Size = 50
    end
  end
end
