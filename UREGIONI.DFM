inherited fRegioni: TfRegioni
  Left = 246
  Top = 227
  Caption = 'Regioni'
  ClientHeight = 90
  ClientWidth = 446
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 446
    Height = 63
    object laID_reg: TLabel
      Left = 20
      Top = 8
      Width = 16
      Height = 16
      Caption = 'ID'
    end
    object laDescr: TLabel
      Left = 92
      Top = 8
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID_Regione: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_REGIONE'
      DataSource = dsoRegioni
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 90
      Top = 24
      Width = 341
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoRegioni
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 446
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoRegioni: TDataSource
    DataSet = dmodPub.ibTab_Regioni
    Left = 274
    Top = 8
  end
end
