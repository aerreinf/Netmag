inherited fTaglie: TfTaglie
  Left = 305
  Top = 228
  Caption = 'Variante 1 / Taglie'
  ClientHeight = 111
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Height = 84
    object laID_Zone: TLabel
      Left = 4
      Top = 4
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 76
      Top = 4
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 76
      Top = 60
      Width = 33
      Height = 16
      Caption = 'Ferr.'
    end
    object dbeCodice: TDBEdit
      Left = 4
      Top = 24
      Width = 65
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'PK_CODICE'
      DataSource = dsoMarca
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 76
      Top = 24
      Width = 281
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoMarca
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 132
      Top = 56
      Width = 65
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoMarca
      TabOrder = 2
    end
  end
  inherited tbarControl: TToolBar
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
  object frReport2: TfrReport
    Left = 256
    Top = 27
    PixelsPerInch = 96
  end
  object dsoMarca: TDataSource
    DataSet = dmodAz.ibTab_Taglie
    Left = 300
    Top = 30
  end
end
