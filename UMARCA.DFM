inherited fMarca: TfMarca
  Left = 206
  Caption = 'Marca'
  ClientHeight = 124
  ClientWidth = 365
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Top = 24
    Width = 365
    Height = 100
    object laID_Zone: TLabel
      Left = 4
      Top = 4
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 4
      Top = 52
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 4
      Top = 19
      Width = 65
      Height = 19
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbeDescr: TDBEdit
      Left = 4
      Top = 68
      Width = 337
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited tbarControl: TToolBar
    Width = 365
    Height = 24
    ButtonHeight = 22
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
    object Button1: TButton
      Left = 245
      Top = 0
      Width = 52
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Stampa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object dsoMarca: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 276
    Top = 30
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tab_marca'
      'order by descr')
    Left = 240
    Top = 35
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_MARCA"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_MARCA"."CODICE"'
      Required = True
    end
  end
end
