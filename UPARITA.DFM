inherited fParita: TfParita
  Left = 273
  Top = 114
  Caption = 'Parità'
  ClientHeight = 113
  ClientWidth = 286
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 286
    Height = 84
    object laCodice: TLabel
      Left = 48
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 16
      Top = 48
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 104
      Top = 16
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoParita
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 104
      Top = 44
      Width = 161
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoParita
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 286
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoParita: TDataSource
    DataSet = dmodPub.ibTab_Parita
    Left = 250
    Top = 4
  end
end
