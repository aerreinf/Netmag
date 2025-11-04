inherited fCatCli: TfCatCli
  Left = 241
  Top = 243
  Caption = 'Categorie Clienti'
  ClientHeight = 143
  ClientWidth = 399
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 399
    Height = 116
    object laID: TLabel
      Left = 20
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laListino: TLabel
      Left = 20
      Top = 60
      Width = 46
      Height = 16
      Caption = 'Listino'
    end
    object laDescr: TLabel
      Left = 100
      Top = 12
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID: TDBEdit
      Left = 16
      Top = 28
      Width = 69
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoCatCli
      TabOrder = 0
    end
    object LookListinoCod: TDBLookupComboBox
      Left = 16
      Top = 76
      Width = 69
      Height = 22
      DataField = 'CODICE_LISTINO_ID'
      DataSource = dsoCatCli
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoListini
      TabOrder = 1
    end
    object LookListinoDescr: TDBLookupComboBox
      Left = 96
      Top = 76
      Width = 281
      Height = 22
      DataField = 'CODICE_LISTINO_ID'
      DataSource = dsoCatCli
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoListini
      TabOrder = 2
    end
    object dbeDescr: TDBEdit
      Left = 96
      Top = 28
      Width = 281
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoCatCli
      TabOrder = 3
    end
  end
  inherited tbarControl: TToolBar
    Width = 399
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoCatCli: TDataSource
    DataSet = dmodAz.ibTab_Cat_Cli
    Left = 300
    Top = 4
  end
  object dsoListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 334
    Top = 6
  end
end
