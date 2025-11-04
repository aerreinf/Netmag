inherited fBaud: TfBaud
  Left = 213
  Top = 175
  Caption = 'Baud'
  ClientHeight = 110
  ClientWidth = 341
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 341
    Height = 81
    object laCodice: TLabel
      Left = 44
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 12
      Top = 48
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 100
      Top = 16
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoBaud
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 100
      Top = 44
      Width = 229
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoBaud
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 341
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoBaud: TDataSource
    DataSet = dmodPub.ibTab_Baud
    Left = 258
    Top = 2
  end
end
