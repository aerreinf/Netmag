object fSelectTaglio: TfSelectTaglio
  Left = 161
  Top = 103
  Width = 813
  Height = 462
  Caption = 'Schede Taglio'
  Color = 16762508
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
  object SpeedButton1: TSpeedButton
    Left = 710
    Top = 384
    Width = 65
    Height = 22
    Caption = '&Chiudi'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 0
    Width = 760
    Height = 377
    Hint = 'Doppio click per passare la scheda nel documento corrente'
    Color = 10342143
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
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
        Title.Caption = 'Tagliati'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 78
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
        Color = 12910591
        Expanded = False
        FieldName = 'PK_CODICE'
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
        Color = 12910591
        Expanded = False
        FieldName = 'CODICE'
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
        Color = 12910591
        Expanded = False
        FieldName = 'DESCR'
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
        Color = 12910591
        Expanded = False
        FieldName = 'DATA'
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
        Color = 12910591
        Expanded = False
        FieldName = 'NUMERO'
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
        Color = 12910591
        Expanded = False
        FieldName = 'NUMERO_A'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TOTALE'
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
        Color = 12910591
        Expanded = False
        FieldName = 'DIPENDENTE'
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
        Color = 12910591
        Expanded = False
        FieldName = 'FASONISTA'
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
        Color = 12910591
        Expanded = False
        FieldName = 'CLIENTE'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA0'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA1'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA2'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA3'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA4'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA5'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA6'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA7'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA8'
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
        Color = 12910591
        Expanded = False
        FieldName = 'TAGLIA9'
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
      end>
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'Select * from taglio'
      'where PASSATA <> '#39'S'#39
      'Order by codice')
    Left = 560
    Top = 32
    object IBQuery1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery1CODICE: TIBStringField
      FieldName = 'CODICE'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery1DATA: TDateField
      FieldName = 'DATA'
    end
    object IBQuery1NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object IBQuery1NUMERO_A: TIBStringField
      FieldName = 'NUMERO_A'
    end
    object IBQuery1TOTALE: TIntegerField
      FieldName = 'TOTALE'
    end
    object IBQuery1DIPENDENTE: TIBStringField
      FieldName = 'DIPENDENTE'
      Size = 100
    end
    object IBQuery1FASONISTA: TIBStringField
      FieldName = 'FASONISTA'
      Size = 100
    end
    object IBQuery1CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object IBQuery1TAGLIA0: TIBStringField
      FieldName = 'TAGLIA0'
    end
    object IBQuery1TAGLIA1: TIBStringField
      FieldName = 'TAGLIA1'
    end
    object IBQuery1TAGLIA2: TIBStringField
      FieldName = 'TAGLIA2'
    end
    object IBQuery1TAGLIA3: TIBStringField
      FieldName = 'TAGLIA3'
    end
    object IBQuery1TAGLIA4: TIBStringField
      FieldName = 'TAGLIA4'
    end
    object IBQuery1TAGLIA5: TIBStringField
      FieldName = 'TAGLIA5'
    end
    object IBQuery1TAGLIA6: TIBStringField
      FieldName = 'TAGLIA6'
    end
    object IBQuery1TAGLIA7: TIBStringField
      FieldName = 'TAGLIA7'
    end
    object IBQuery1TAGLIA8: TIBStringField
      FieldName = 'TAGLIA8'
    end
    object IBQuery1TAGLIA9: TIBStringField
      FieldName = 'TAGLIA9'
    end
    object IBQuery1COLORE0: TIBStringField
      FieldName = 'COLORE0'
      Size = 100
    end
    object IBQuery1COLORE1: TIBStringField
      FieldName = 'COLORE1'
      Size = 100
    end
    object IBQuery1COLORE2: TIBStringField
      FieldName = 'COLORE2'
      Size = 100
    end
    object IBQuery1COLORE3: TIBStringField
      FieldName = 'COLORE3'
      Size = 100
    end
    object IBQuery1COLORE4: TIBStringField
      FieldName = 'COLORE4'
      Size = 100
    end
    object IBQuery1COLORE5: TIBStringField
      FieldName = 'COLORE5'
      Size = 100
    end
    object IBQuery1COLORE6: TIBStringField
      FieldName = 'COLORE6'
      Size = 100
    end
    object IBQuery1COLORE7: TIBStringField
      FieldName = 'COLORE7'
      Size = 100
    end
    object IBQuery1COLORE8: TIBStringField
      FieldName = 'COLORE8'
      Size = 100
    end
    object IBQuery1COLORE9: TIBStringField
      FieldName = 'COLORE9'
      Size = 100
    end
    object IBQuery1QTA00: TIntegerField
      FieldName = 'QTA00'
    end
    object IBQuery1QTA01: TIntegerField
      FieldName = 'QTA01'
    end
    object IBQuery1QTA02: TIntegerField
      FieldName = 'QTA02'
    end
    object IBQuery1QTA03: TIntegerField
      FieldName = 'QTA03'
    end
    object IBQuery1QTA04: TIntegerField
      FieldName = 'QTA04'
    end
    object IBQuery1QTA05: TIntegerField
      FieldName = 'QTA05'
    end
    object IBQuery1QTA06: TIntegerField
      FieldName = 'QTA06'
    end
    object IBQuery1QTA07: TIntegerField
      FieldName = 'QTA07'
    end
    object IBQuery1QTA08: TIntegerField
      FieldName = 'QTA08'
    end
    object IBQuery1QTA09: TIntegerField
      FieldName = 'QTA09'
    end
    object IBQuery1QTA10: TIntegerField
      FieldName = 'QTA10'
    end
    object IBQuery1QTA11: TIntegerField
      FieldName = 'QTA11'
    end
    object IBQuery1QTA12: TIntegerField
      FieldName = 'QTA12'
    end
    object IBQuery1QTA13: TIntegerField
      FieldName = 'QTA13'
    end
    object IBQuery1QTA14: TIntegerField
      FieldName = 'QTA14'
    end
    object IBQuery1QTA15: TIntegerField
      FieldName = 'QTA15'
    end
    object IBQuery1QTA16: TIntegerField
      FieldName = 'QTA16'
    end
    object IBQuery1QTA17: TIntegerField
      FieldName = 'QTA17'
    end
    object IBQuery1QTA18: TIntegerField
      FieldName = 'QTA18'
    end
    object IBQuery1QTA19: TIntegerField
      FieldName = 'QTA19'
    end
    object IBQuery1QTA20: TIntegerField
      FieldName = 'QTA20'
    end
    object IBQuery1QTA21: TIntegerField
      FieldName = 'QTA21'
    end
    object IBQuery1QTA22: TIntegerField
      FieldName = 'QTA22'
    end
    object IBQuery1QTA23: TIntegerField
      FieldName = 'QTA23'
    end
    object IBQuery1QTA24: TIntegerField
      FieldName = 'QTA24'
    end
    object IBQuery1QTA25: TIntegerField
      FieldName = 'QTA25'
    end
    object IBQuery1QTA26: TIntegerField
      FieldName = 'QTA26'
    end
    object IBQuery1QTA27: TIntegerField
      FieldName = 'QTA27'
    end
    object IBQuery1QTA28: TIntegerField
      FieldName = 'QTA28'
    end
    object IBQuery1QTA29: TIntegerField
      FieldName = 'QTA29'
    end
    object IBQuery1QTA30: TIntegerField
      FieldName = 'QTA30'
    end
    object IBQuery1QTA31: TIntegerField
      FieldName = 'QTA31'
    end
    object IBQuery1QTA32: TIntegerField
      FieldName = 'QTA32'
    end
    object IBQuery1QTA33: TIntegerField
      FieldName = 'QTA33'
    end
    object IBQuery1QTA34: TIntegerField
      FieldName = 'QTA34'
    end
    object IBQuery1QTA35: TIntegerField
      FieldName = 'QTA35'
    end
    object IBQuery1QTA36: TIntegerField
      FieldName = 'QTA36'
    end
    object IBQuery1QTA37: TIntegerField
      FieldName = 'QTA37'
    end
    object IBQuery1QTA38: TIntegerField
      FieldName = 'QTA38'
    end
    object IBQuery1QTA39: TIntegerField
      FieldName = 'QTA39'
    end
    object IBQuery1QTA40: TIntegerField
      FieldName = 'QTA40'
    end
    object IBQuery1QTA41: TIntegerField
      FieldName = 'QTA41'
    end
    object IBQuery1QTA42: TIntegerField
      FieldName = 'QTA42'
    end
    object IBQuery1QTA43: TIntegerField
      FieldName = 'QTA43'
    end
    object IBQuery1QTA44: TIntegerField
      FieldName = 'QTA44'
    end
    object IBQuery1QTA45: TIntegerField
      FieldName = 'QTA45'
    end
    object IBQuery1QTA46: TIntegerField
      FieldName = 'QTA46'
    end
    object IBQuery1QTA47: TIntegerField
      FieldName = 'QTA47'
    end
    object IBQuery1QTA48: TIntegerField
      FieldName = 'QTA48'
    end
    object IBQuery1QTA49: TIntegerField
      FieldName = 'QTA49'
    end
    object IBQuery1QTA50: TIntegerField
      FieldName = 'QTA50'
    end
    object IBQuery1QTA51: TIntegerField
      FieldName = 'QTA51'
    end
    object IBQuery1QTA52: TIntegerField
      FieldName = 'QTA52'
    end
    object IBQuery1QTA53: TIntegerField
      FieldName = 'QTA53'
    end
    object IBQuery1QTA54: TIntegerField
      FieldName = 'QTA54'
    end
    object IBQuery1QTA55: TIntegerField
      FieldName = 'QTA55'
    end
    object IBQuery1QTA56: TIntegerField
      FieldName = 'QTA56'
    end
    object IBQuery1QTA57: TIntegerField
      FieldName = 'QTA57'
    end
    object IBQuery1QTA58: TIntegerField
      FieldName = 'QTA58'
    end
    object IBQuery1QTA59: TIntegerField
      FieldName = 'QTA59'
    end
    object IBQuery1QTA60: TIntegerField
      FieldName = 'QTA60'
    end
    object IBQuery1QTA61: TIntegerField
      FieldName = 'QTA61'
    end
    object IBQuery1QTA62: TIntegerField
      FieldName = 'QTA62'
    end
    object IBQuery1QTA63: TIntegerField
      FieldName = 'QTA63'
    end
    object IBQuery1QTA64: TIntegerField
      FieldName = 'QTA64'
    end
    object IBQuery1QTA65: TIntegerField
      FieldName = 'QTA65'
    end
    object IBQuery1QTA66: TIntegerField
      FieldName = 'QTA66'
    end
    object IBQuery1QTA67: TIntegerField
      FieldName = 'QTA67'
    end
    object IBQuery1QTA68: TIntegerField
      FieldName = 'QTA68'
    end
    object IBQuery1QTA69: TIntegerField
      FieldName = 'QTA69'
    end
    object IBQuery1QTA70: TIntegerField
      FieldName = 'QTA70'
    end
    object IBQuery1QTA71: TIntegerField
      FieldName = 'QTA71'
    end
    object IBQuery1QTA72: TIntegerField
      FieldName = 'QTA72'
    end
    object IBQuery1QTA73: TIntegerField
      FieldName = 'QTA73'
    end
    object IBQuery1QTA74: TIntegerField
      FieldName = 'QTA74'
    end
    object IBQuery1QTA75: TIntegerField
      FieldName = 'QTA75'
    end
    object IBQuery1QTA76: TIntegerField
      FieldName = 'QTA76'
    end
    object IBQuery1QTA77: TIntegerField
      FieldName = 'QTA77'
    end
    object IBQuery1QTA78: TIntegerField
      FieldName = 'QTA78'
    end
    object IBQuery1QTA79: TIntegerField
      FieldName = 'QTA79'
    end
    object IBQuery1QTA80: TIntegerField
      FieldName = 'QTA80'
    end
    object IBQuery1QTA81: TIntegerField
      FieldName = 'QTA81'
    end
    object IBQuery1QTA82: TIntegerField
      FieldName = 'QTA82'
    end
    object IBQuery1QTA83: TIntegerField
      FieldName = 'QTA83'
    end
    object IBQuery1QTA84: TIntegerField
      FieldName = 'QTA84'
    end
    object IBQuery1QTA85: TIntegerField
      FieldName = 'QTA85'
    end
    object IBQuery1QTA86: TIntegerField
      FieldName = 'QTA86'
    end
    object IBQuery1QTA87: TIntegerField
      FieldName = 'QTA87'
    end
    object IBQuery1QTA88: TIntegerField
      FieldName = 'QTA88'
    end
    object IBQuery1QTA89: TIntegerField
      FieldName = 'QTA89'
    end
    object IBQuery1QTA90: TIntegerField
      FieldName = 'QTA90'
    end
    object IBQuery1QTA91: TIntegerField
      FieldName = 'QTA91'
    end
    object IBQuery1QTA92: TIntegerField
      FieldName = 'QTA92'
    end
    object IBQuery1QTA93: TIntegerField
      FieldName = 'QTA93'
    end
    object IBQuery1QTA94: TIntegerField
      FieldName = 'QTA94'
    end
    object IBQuery1QTA95: TIntegerField
      FieldName = 'QTA95'
    end
    object IBQuery1QTA96: TIntegerField
      FieldName = 'QTA96'
    end
    object IBQuery1QTA97: TIntegerField
      FieldName = 'QTA97'
    end
    object IBQuery1QTA98: TIntegerField
      FieldName = 'QTA98'
    end
    object IBQuery1QTA99: TIntegerField
      FieldName = 'QTA99'
    end
    object IBQuery1TOTALE_COLORE0: TIntegerField
      FieldName = 'TOTALE_COLORE0'
    end
    object IBQuery1TOTALE_COLORE1: TIntegerField
      FieldName = 'TOTALE_COLORE1'
    end
    object IBQuery1TOTALE_COLORE2: TIntegerField
      FieldName = 'TOTALE_COLORE2'
    end
    object IBQuery1TOTALE_COLORE3: TIntegerField
      FieldName = 'TOTALE_COLORE3'
    end
    object IBQuery1TOTALE_COLORE4: TIntegerField
      FieldName = 'TOTALE_COLORE4'
    end
    object IBQuery1TOTALE_COLORE5: TIntegerField
      FieldName = 'TOTALE_COLORE5'
    end
    object IBQuery1TOTALE_COLORE6: TIntegerField
      FieldName = 'TOTALE_COLORE6'
    end
    object IBQuery1TOTALE_COLORE7: TIntegerField
      FieldName = 'TOTALE_COLORE7'
    end
    object IBQuery1TOTALE_COLORE8: TIntegerField
      FieldName = 'TOTALE_COLORE8'
    end
    object IBQuery1TOTALE_COLORE9: TIntegerField
      FieldName = 'TOTALE_COLORE9'
    end
    object IBQuery1TOTALE_TAGLIA0: TIntegerField
      FieldName = 'TOTALE_TAGLIA0'
    end
    object IBQuery1TOTALE_TAGLIA1: TIntegerField
      FieldName = 'TOTALE_TAGLIA1'
    end
    object IBQuery1TOTALE_TAGLIA2: TIntegerField
      FieldName = 'TOTALE_TAGLIA2'
    end
    object IBQuery1TOTALE_TAGLIA3: TIntegerField
      FieldName = 'TOTALE_TAGLIA3'
    end
    object IBQuery1TOTALE_TAGLIA4: TIntegerField
      FieldName = 'TOTALE_TAGLIA4'
    end
    object IBQuery1TOTALE_TAGLIA5: TIntegerField
      FieldName = 'TOTALE_TAGLIA5'
    end
    object IBQuery1TOTALE_TAGLIA6: TIntegerField
      FieldName = 'TOTALE_TAGLIA6'
    end
    object IBQuery1TOTALE_TAGLIA7: TIntegerField
      FieldName = 'TOTALE_TAGLIA7'
    end
    object IBQuery1TOTALE_TAGLIA8: TIntegerField
      FieldName = 'TOTALE_TAGLIA8'
    end
    object IBQuery1TOTALE_TAGLIA9: TIntegerField
      FieldName = 'TOTALE_TAGLIA9'
    end
    object IBQuery1QTA_TOTALE: TIntegerField
      FieldName = 'QTA_TOTALE'
    end
    object IBQuery1SCAT: TFloatField
      FieldName = 'SCAT'
    end
    object IBQuery1PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBQuery1F1: TIBStringField
      FieldName = 'F1'
      Size = 5
    end
    object IBQuery1F2: TIBStringField
      FieldName = 'F2'
      Size = 5
    end
    object IBQuery1F3: TIBStringField
      FieldName = 'F3'
      Size = 5
    end
    object IBQuery1F4: TIBStringField
      FieldName = 'F4'
      Size = 5
    end
    object IBQuery1F5: TIBStringField
      FieldName = 'F5'
      Size = 5
    end
    object IBQuery1F6: TIBStringField
      FieldName = 'F6'
      Size = 5
    end
    object IBQuery1F7: TIBStringField
      FieldName = 'F7'
      Size = 5
    end
    object IBQuery1F8: TIBStringField
      FieldName = 'F8'
      Size = 5
    end
    object IBQuery1F0: TIBStringField
      FieldName = 'F0'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 680
    Top = 8
  end
end
