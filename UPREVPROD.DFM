object fPRevProd: TfPRevProd
  Left = 189
  Top = 128
  Width = 751
  Height = 428
  Caption = 'Previsione di Produzione'
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
    Left = 0
    Top = 32
    Width = 737
    Height = 361
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13434879
        Expanded = False
        FieldName = 'Codice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'Descrizione'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 277
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DepCod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 33
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DepDescr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 193
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'Qta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end>
  end
  object LookNostrDepCod: TRxDBLookupCombo
    Left = 5
    Top = 0
    Width = 73
    Height = 21
    DropDownCount = 10
    Color = 8421440
    DataField = 'DEPOSITO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    LookupField = 'CODICE'
    LookupDisplay = 'CODICE'
    LookupSource = dsoDepositi
    ParentFont = False
    TabOrder = 1
  end
  object LookNostrDepDescr: TRxDBLookupCombo
    Left = 80
    Top = 0
    Width = 249
    Height = 21
    DropDownCount = 10
    Color = 8421440
    DataField = 'DEPOSITO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoDepositi
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 368
    Top = 1
    Width = 75
    Height = 25
    Caption = 'Calcola'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 448
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Azzera'
    TabOrder = 4
    OnClick = Button2Click
  end
  object RxMemoryData1: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Codice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descrizione'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DepCod'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DepDescr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qta'
        DataType = ftFloat
      end>
    Left = 608
    object RxMemoryData1Codice: TStringField
      FieldName = 'Codice'
    end
    object RxMemoryData1Descrizione: TStringField
      FieldName = 'Descrizione'
    end
    object RxMemoryData1DepCod: TStringField
      FieldName = 'DepCod'
    end
    object RxMemoryData1DepDescr: TStringField
      FieldName = 'DepDescr'
    end
    object RxMemoryData1Qta: TFloatField
      FieldName = 'Qta'
      DisplayFormat = '#,##.00'
    end
  end
  object dsoDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 332
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 568
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 688
  end
end
