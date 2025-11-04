inherited fProvince: TfProvince
  Left = 251
  Top = 187
  Caption = 'Province'
  ClientHeight = 133
  ClientWidth = 383
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 383
    Height = 106
    object laProvID: TLabel
      Left = 20
      Top = 8
      Width = 16
      Height = 16
      Caption = 'ID'
    end
    object Label1: TLabel
      Left = 92
      Top = 8
      Width = 60
      Height = 16
      Caption = 'Regione'
    end
    object Label2: TLabel
      Left = 244
      Top = 8
      Width = 37
      Height = 16
      Caption = 'Sigla'
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID_Prov: TDBEdit
      Left = 16
      Top = 24
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_PROVINCIA'
      DataSource = dsoProvince
      TabOrder = 0
    end
    object LookRegione: TDBLookupComboBox
      Left = 88
      Top = 24
      Width = 145
      Height = 22
      DataField = 'REGIONE_ID'
      DataSource = dsoProvince
      KeyField = 'ID_REGIONE'
      ListField = 'DESCR'
      ListSource = dsoRegioni
      TabOrder = 1
    end
    object dbeSigla: TDBEdit
      Left = 242
      Top = 24
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      DataField = 'SIGLA'
      DataSource = dsoProvince
      TabOrder = 2
    end
    object dbeDescr: TDBEdit
      Left = 14
      Top = 64
      Width = 351
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoProvince
      TabOrder = 3
    end
  end
  inherited tbarControl: TToolBar
    Width = 383
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoProvince: TDataSource
    DataSet = dmodPub.ibTab_Province
    Left = 292
    Top = 10
  end
  object dsoRegioni: TDataSource
    DataSet = dmodPub.ibTab_Regioni
    Left = 256
    Top = 10
  end
end
