object fCostiGest: TfCostiGest
  Left = 187
  Top = 204
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Costi Fissi di Gestione'
  ClientHeight = 455
  ClientWidth = 726
  Color = 16760962
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label39: TLabel
    Left = 215
    Top = 4
    Width = 297
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 'Costi Fissi di Gestione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 616
    Top = 64
    Width = 20
    Height = 19
    Hint = 'Inserisci'
    Caption = 'I'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 637
    Top = 64
    Width = 20
    Height = 19
    Hint = 'Modifica'
    Caption = 'M'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 658
    Top = 64
    Width = 20
    Height = 19
    Hint = 'Annulla'
    Caption = 'A'
    Enabled = False
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object SpeedButton6: TSpeedButton
    Left = 679
    Top = 64
    Width = 20
    Height = 19
    Hint = 'Salva'
    Caption = 'S'
    Enabled = False
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 698
    Top = 64
    Width = 20
    Height = 19
    Hint = 'Elimina'
    Caption = 'E'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton7Click
  end
  object lblContropartita: TLabel
    Left = 8
    Top = 50
    Width = 65
    Height = 14
    Caption = 'Descrizione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblImponibile: TLabel
    Left = 262
    Top = 50
    Width = 33
    Height = 14
    Caption = 'Costo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIVAperc: TLabel
    Left = 353
    Top = 34
    Width = 58
    Height = 28
    Caption = 'Frequenza'#13#10'  Annuale'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 416
    Top = 50
    Width = 25
    Height = 14
    Caption = 'Note'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 409
    Width = 726
    Height = 46
    Align = alBottom
    TabOrder = 0
    object Label53: TLabel
      Left = 134
      Top = 0
      Width = 128
      Height = 16
      Caption = 'Totale Costi Mensile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label55: TLabel
      Left = 273
      Top = 0
      Width = 138
      Height = 16
      Caption = 'Totale Costi al Giorno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label69: TLabel
      Left = 426
      Top = 0
      Width = 120
      Height = 16
      Caption = 'Totale Costi ad ora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 654
      Top = 8
      Width = 68
      Height = 32
      Cursor = crHandPoint
      Caption = '&Esci'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label73: TLabel
      Left = 6
      Top = 0
      Width = 112
      Height = 16
      Caption = 'Totale Costi Anno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 558
      Top = 2
      Width = 83
      Height = 20
      Cursor = crHandPoint
      Caption = '&Calcola'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton8: TSpeedButton
      Left = 558
      Top = 23
      Width = 83
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      PopupMenu = PopupMenu1
      OnClick = SpeedButton8Click
    end
    object RxCalcEdit1: TRxCalcEdit
      Left = 6
      Top = 19
      Width = 113
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object RxCalcEdit2: TRxCalcEdit
      Left = 142
      Top = 19
      Width = 113
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object RxCalcEdit3: TRxCalcEdit
      Left = 286
      Top = 19
      Width = 113
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object RxCalcEdit4: TRxCalcEdit
      Left = 430
      Top = 19
      Width = 113
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 88
    Width = 726
    Height = 321
    Align = alBottom
    Color = clSilver
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 721
      Height = 316
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Color = 11075583
          Expanded = False
          FieldName = 'DESCRIZIONE'
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Color = 11075583
          Expanded = False
          FieldName = 'COSTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
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
          Width = 111
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 11075583
          Expanded = False
          FieldName = 'FREQUENZA'
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
          Color = 11075583
          Expanded = False
          FieldName = 'TOTALE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          Width = 134
          Visible = True
        end
        item
          Color = 11075583
          Expanded = False
          FieldName = 'NOTE'
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
          Color = 11075583
          Expanded = False
          FieldName = 'PK_CODICE'
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
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 249
    Height = 19
    AutoSize = False
    CharCase = ecUpperCase
    Color = 16773862
    DataField = 'DESCRIZIONE'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 262
    Top = 64
    Width = 90
    Height = 19
    AutoSize = False
    Color = 16773862
    DataField = 'COSTO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 369
    Top = 64
    Width = 27
    Height = 19
    AutoSize = False
    Color = 16773862
    DataField = 'FREQUENZA'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 416
    Top = 64
    Width = 193
    Height = 19
    AutoSize = False
    CharCase = ecUpperCase
    Color = 16773862
    DataField = 'NOTE'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from COSTIGEST'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into COSTIGEST'
      '  (PK_CODICE, DESCRIZIONE, NOTE, COSTO, FREQUENZA, TOTALE)'
      'values'
      '  (:PK_CODICE, :DESCRIZIONE, :NOTE, :COSTO, :FREQUENZA, :TOTALE)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  DESCRIZIONE,'
      '  NOTE,'
      '  COSTO,'
      '  FREQUENZA,'
      '  TOTALE'
      'from COSTIGEST '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'Select * From COSTIGEST'
      'ORDER BY DESCRIZIONE')
    ModifySQL.Strings = (
      'update COSTIGEST'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  NOTE = :NOTE,'
      '  COSTO = :COSTO,'
      '  FREQUENZA = :FREQUENZA,'
      '  TOTALE = :TOTALE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_COSTIGEST'
    Left = 680
    Top = 8
    object IBDataSet1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"COSTIGEST"."PK_CODICE"'
      Required = True
    end
    object IBDataSet1DESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"COSTIGEST"."DESCRIZIONE"'
      Size = 100
    end
    object IBDataSet1NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"COSTIGEST"."NOTE"'
      Size = 255
    end
    object IBDataSet1COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"COSTIGEST"."COSTO"'
      currency = True
    end
    object IBDataSet1FREQUENZA: TFloatField
      FieldName = 'FREQUENZA'
      Origin = '"COSTIGEST"."FREQUENZA"'
    end
    object IBDataSet1TOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"COSTIGEST"."TOTALE"'
      currency = True
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBDataSet1
    Left = 648
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select sum(totale) as RISULTATO from  COSTIGEST')
    Left = 544
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 96
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
end
