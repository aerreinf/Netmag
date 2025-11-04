inherited fINPS: TfINPS
  Left = 235
  Top = 134
  Caption = 'INPS'
  ClientHeight = 95
  ClientWidth = 427
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 427
    Height = 66
    object laCodice: TLabel
      Left = 16
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 96
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
      DataSource = dsoINPS
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 28
      Width = 305
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoINPS
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 427
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoINPS: TDataSource
    DataSet = dmodPub.ibTab_INPS
    Left = 248
    Top = 10
  end
end
