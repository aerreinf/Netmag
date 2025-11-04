object fAssort: TfAssort
  Left = 99
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Assortimento'
  ClientHeight = 349
  ClientWidth = 666
  Color = 16762508
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    666
    349)
  PixelsPerInch = 96
  TextHeight = 13
  object dbgAssort: TDBGrid
    Left = 0
    Top = 0
    Width = 545
    Height = 313
    DataSource = DsAssort
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 14024703
        Expanded = False
        FieldName = 'COLORE'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 216
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA01'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA02'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA03'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA04'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA05'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA06'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA07'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA08'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA09'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Color = 14024703
        Expanded = False
        FieldName = 'TAGLIA10'
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 565
    Top = 292
    Width = 85
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 568
    Top = 194
    Width = 80
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 568
    Top = 168
    Width = 80
    Height = 25
    Caption = 'Completa Col.'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 568
    Top = 220
    Width = 80
    Height = 25
    Caption = 'Calcola'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 568
    Top = 246
    Width = 80
    Height = 25
    Caption = 'Salva'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 572
    Top = 8
    Width = 87
    Height = 22
    Color = 12910532
    DataField = 'CODICE_ARTICOLO'
    DataSource = fVisTgCol.DataSource10
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 560
    Top = 80
    Width = 96
    Height = 25
    Hint = 'Assortimenti'
    DataSource = DsAssort
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbRefresh]
    Anchors = [akBottom]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    BeforeAction = DBNavigator1BeforeAction
  end
  object Edit2: TEdit
    Left = 237
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 265
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 293
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 321
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 349
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object Edit7: TEdit
    Left = 377
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 406
    Top = 314
    Width = 28
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object Button5: TButton
    Left = 568
    Top = 318
    Width = 80
    Height = 25
    Caption = '&Esci'
    TabOrder = 15
    OnClick = Button5Click
  end
  object DBNavigator2: TDBNavigator
    Left = 552
    Top = 32
    Width = 112
    Height = 25
    Hint = 'Articoli'
    DataSource = fVisTgCol.DataSource10
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = DBNavigator2Click
  end
  object DsAssort: TDataSource
    DataSet = IBQuery2
    Left = 600
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = fVisTgCol.DataSource10
    SQL.Strings = (
      'select * from taglia'
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO'
      'order by descr')
    Left = 568
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery1TAGLIA: TFloatField
      FieldName = 'TAGLIA'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
    end
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 632
    Top = 136
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = fVisTgCol.DataSource10
    SQL.Strings = (
      'select * from COLORI'
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO'
      'order by COLORE')
    Left = 536
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery3COLORE: TIBStringField
      FieldName = 'COLORE'
      Size = 100
    end
    object IBQuery3DESCR: TIBStringField
      FieldName = 'DESCR'
    end
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery3
    Left = 600
    Top = 136
  end
  object IBQuery2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BeforeDelete = IBQuery2BeforeDelete
    BeforeEdit = IBQuery2BeforeEdit
    BeforeInsert = IBQuery2BeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ASSORTIMENTO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into ASSORTIMENTO'
      
        '  (CODICE_ARTICOLO, TAGLIA01, TAGLIA02, TAGLIA03, TAGLIA04, TAGL' +
        'IA05, '
      'TAGLIA06, '
      '   TAGLIA07, TAGLIA08, TAGLIA09, TAGLIA10, COLORE, PK_CODICE)'
      'values'
      
        '  (:CODICE_ARTICOLO, :TAGLIA01, :TAGLIA02, :TAGLIA03, :TAGLIA04,' +
        ' :TAGLIA05, '
      
        '   :TAGLIA06, :TAGLIA07, :TAGLIA08, :TAGLIA09, :TAGLIA10, :COLOR' +
        'E, '
      ':PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  TAGLIA01,'
      '  TAGLIA02,'
      '  TAGLIA03,'
      '  TAGLIA04,'
      '  TAGLIA05,'
      '  TAGLIA06,'
      '  TAGLIA07,'
      '  TAGLIA08,'
      '  TAGLIA09,'
      '  TAGLIA10,'
      '  COLORE,'
      '  PK_CODICE'
      'from ASSORTIMENTO '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from ASSORTIMENTO'
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO'
      'order by CODICE_ARTICOLO,TAGLIA01')
    ModifySQL.Strings = (
      'update ASSORTIMENTO'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  TAGLIA01 = :TAGLIA01,'
      '  TAGLIA02 = :TAGLIA02,'
      '  TAGLIA03 = :TAGLIA03,'
      '  TAGLIA04 = :TAGLIA04,'
      '  TAGLIA05 = :TAGLIA05,'
      '  TAGLIA06 = :TAGLIA06,'
      '  TAGLIA07 = :TAGLIA07,'
      '  TAGLIA08 = :TAGLIA08,'
      '  TAGLIA09 = :TAGLIA09,'
      '  TAGLIA10 = :TAGLIA10,'
      '  COLORE = :COLORE,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_ASSORTIMENTO'
    DataSource = fVisTgCol.DataSource10
    Left = 568
    Top = 104
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"ASSORTIMENTO"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery2TAGLIA01: TIntegerField
      FieldName = 'TAGLIA01'
      Origin = '"ASSORTIMENTO"."TAGLIA01"'
    end
    object IBQuery2TAGLIA02: TIntegerField
      FieldName = 'TAGLIA02'
      Origin = '"ASSORTIMENTO"."TAGLIA02"'
    end
    object IBQuery2TAGLIA03: TIntegerField
      FieldName = 'TAGLIA03'
      Origin = '"ASSORTIMENTO"."TAGLIA03"'
    end
    object IBQuery2TAGLIA04: TIntegerField
      FieldName = 'TAGLIA04'
      Origin = '"ASSORTIMENTO"."TAGLIA04"'
    end
    object IBQuery2TAGLIA05: TIntegerField
      FieldName = 'TAGLIA05'
      Origin = '"ASSORTIMENTO"."TAGLIA05"'
    end
    object IBQuery2TAGLIA06: TIntegerField
      FieldName = 'TAGLIA06'
      Origin = '"ASSORTIMENTO"."TAGLIA06"'
    end
    object IBQuery2TAGLIA07: TIntegerField
      FieldName = 'TAGLIA07'
      Origin = '"ASSORTIMENTO"."TAGLIA07"'
    end
    object IBQuery2TAGLIA08: TIntegerField
      FieldName = 'TAGLIA08'
      Origin = '"ASSORTIMENTO"."TAGLIA08"'
    end
    object IBQuery2TAGLIA09: TIntegerField
      FieldName = 'TAGLIA09'
      Origin = '"ASSORTIMENTO"."TAGLIA09"'
    end
    object IBQuery2TAGLIA10: TIntegerField
      FieldName = 'TAGLIA10'
      Origin = '"ASSORTIMENTO"."TAGLIA10"'
    end
    object IBQuery2COLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = '"ASSORTIMENTO"."COLORE"'
      Size = 100
    end
    object IBQuery2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"ASSORTIMENTO"."PK_CODICE"'
      Required = True
    end
  end
end
