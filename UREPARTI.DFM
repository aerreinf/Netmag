inherited fReparti: TfReparti
  Caption = 'Reparti'
  ClientHeight = 141
  ClientWidth = 474
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 474
    Height = 114
    object laCodice: TLabel
      Left = 36
      Top = 20
      Width = 55
      Height = 16
      Caption = 'Numero'
    end
    object laDescr: TLabel
      Left = 12
      Top = 48
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 76
      Width = 78
      Height = 16
      Caption = 'Codice IVA'
    end
    object dbeCodice: TDBEdit
      Left = 104
      Top = 16
      Width = 101
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_NUMERO_REPARTO'
      DataSource = dsoReparti
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 104
      Top = 44
      Width = 353
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoReparti
      TabOrder = 1
    end
    object LookCodIVACod: TDBLookupComboBox
      Left = 104
      Top = 72
      Width = 77
      Height = 22
      DataField = 'CODICE_IVA_ID'
      DataSource = dsoReparti
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoCodIVA
      TabOrder = 2
    end
    object LookCodIVADescr: TDBLookupComboBox
      Left = 192
      Top = 72
      Width = 265
      Height = 22
      DataField = 'CODICE_IVA_ID'
      DataSource = dsoReparti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoCodIVA
      TabOrder = 3
    end
    object dbcbDefault: TDBCheckBox
      Left = 228
      Top = 17
      Width = 81
      Height = 17
      Caption = 'Default'
      DataField = 'DEFAULT_REPARTO'
      DataSource = dsoReparti
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
  inherited tbarControl: TToolBar
    Width = 474
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
  object dsoReparti: TDataSource
    DataSet = dmodAz.ibTab_Reparti
    Left = 300
    Top = 10
  end
  object dsoCodIVA: TDataSource
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 360
    Top = 10
  end
end
