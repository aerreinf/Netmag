inherited fComuni: TfComuni
  Left = 270
  Top = 195
  Caption = 'Comuni'
  ClientHeight = 136
  ClientWidth = 384
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 384
    Height = 109
    object laID_Comune: TLabel
      Left = 16
      Top = 8
      Width = 16
      Height = 16
      Caption = 'ID'
    end
    object laDescr: TLabel
      Left = 80
      Top = 8
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object laProvincia: TLabel
      Left = 20
      Top = 48
      Width = 66
      Height = 16
      Caption = 'Provincia'
    end
    object laCodCom: TLabel
      Left = 128
      Top = 48
      Width = 110
      Height = 16
      Caption = 'Codice Comune'
    end
    object laCAP: TLabel
      Left = 264
      Top = 48
      Width = 31
      Height = 16
      Caption = 'CAP'
    end
    object dbeID_Comune: TDBEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_COMUNE'
      DataSource = dsoComuni
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 76
      Top = 24
      Width = 285
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoComuni
      TabOrder = 1
    end
    object LookProv: TDBLookupComboBox
      Left = 16
      Top = 64
      Width = 105
      Height = 22
      DataField = 'PROVINCIA_ID'
      DataSource = dsoComuni
      KeyField = 'ID_PROVINCIA'
      ListField = 'DESCR'
      ListSource = dsoProvince
      TabOrder = 2
    end
    object dbeCodCom: TDBEdit
      Left = 128
      Top = 64
      Width = 85
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE_COMUNE'
      DataSource = dsoComuni
      TabOrder = 3
    end
    object dbeCAP: TDBEdit
      Left = 260
      Top = 64
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CAP'
      DataSource = dsoComuni
      TabOrder = 4
    end
  end
  inherited tbarControl: TToolBar
    Width = 384
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoComuni: TDataSource
    DataSet = dmodPub.ibTab_Comuni
    Left = 288
    Top = 6
  end
  object dsoProvince: TDataSource
    DataSet = dmodPub.ibTab_Province
    Left = 340
    Top = 6
  end
end
