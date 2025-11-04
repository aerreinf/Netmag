inherited fModCons: TfModCons
  Left = 256
  Top = 153
  Caption = 'Modo di Consegna'
  ClientHeight = 95
  ClientWidth = 372
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 372
    Height = 68
    object laCodice: TLabel
      Left = 16
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 92
      Top = 12
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 12
      Top = 28
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoModoCons
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 88
      Top = 28
      Width = 269
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoModoCons
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 372
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoModoCons: TDataSource
    DataSet = dmodPub.ibTab_Modo_Consegna
    Left = 288
    Top = 2
  end
end
