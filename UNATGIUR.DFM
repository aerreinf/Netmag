inherited fNatGiur: TfNatGiur
  Left = 250
  Top = 148
  Caption = 'Natura Giuridica'
  ClientHeight = 144
  ClientWidth = 382
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 382
    Height = 115
    object laCodice: TLabel
      Left = 20
      Top = 16
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object Label1: TLabel
      Left = 96
      Top = 16
      Width = 123
      Height = 16
      Caption = 'Soggetti residenti'
    end
    object laDescr: TLabel
      Left = 20
      Top = 60
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 20
      Top = 32
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoNatGiur
      TabOrder = 0
    end
    object dbeSoggRes: TDBEdit
      Left = 96
      Top = 32
      Width = 93
      Height = 22
      CharCase = ecUpperCase
      DataField = 'SOGGETTI_RESIDENTI'
      DataSource = dsoNatGiur
      TabOrder = 1
    end
    object dbeDescr: TDBEdit
      Left = 20
      Top = 76
      Width = 341
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoNatGiur
      TabOrder = 2
    end
  end
  inherited tbarControl: TToolBar
    Width = 382
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoNatGiur: TDataSource
    DataSet = dmodPub.ibTab_Natura_Giuridica
    Left = 272
    Top = 6
  end
end
