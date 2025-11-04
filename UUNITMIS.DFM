inherited fUnitMis: TfUnitMis
  Left = 260
  Top = 252
  Caption = 'Unit'#224' di misura'
  ClientHeight = 115
  ClientWidth = 362
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 362
    Height = 88
    object laCodice: TLabel
      Left = 12
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 10
      Top = 56
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 106
      Top = 16
      Width = 101
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoUnMis
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 104
      Top = 52
      Width = 246
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoUnMis
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 362
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
  object dsoUnMis: TDataSource
    DataSet = dmodAz.ibTab_Unita_di_Misura
    Left = 266
    Top = 65534
  end
end
