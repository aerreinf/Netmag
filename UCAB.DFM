inherited fCAB: TfCAB
  Left = 216
  Top = 108
  Caption = 'CAB'
  ClientHeight = 244
  ClientWidth = 482
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 482
    Height = 217
    Enabled = False
    object laID_CAB: TLabel
      Left = 20
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laABI_ID: TLabel
      Left = 20
      Top = 60
      Width = 87
      Height = 16
      Caption = 'ABI - Codice'
    end
    object laInd: TLabel
      Left = 20
      Top = 108
      Width = 58
      Height = 16
      Caption = 'Indirizzo'
    end
    object laComune: TLabel
      Left = 20
      Top = 152
      Width = 57
      Height = 16
      Caption = 'Comune'
    end
    object laProv: TLabel
      Left = 332
      Top = 152
      Width = 37
      Height = 16
      Caption = 'Prov.'
    end
    object laLocalita: TLabel
      Left = 332
      Top = 108
      Width = 56
      Height = 16
      Caption = 'Localit'#224
    end
    object Label1: TLabel
      Left = 136
      Top = 60
      Width = 120
      Height = 16
      Caption = 'ABI - Descrizione'
    end
    object laDescr: TLabel
      Left = 100
      Top = 12
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID_CAB: TDBEdit
      Left = 16
      Top = 28
      Width = 69
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CAB'
      DataSource = dsoCAB
      TabOrder = 0
    end
    object LookABI_ID: TDBLookupComboBox
      Left = 16
      Top = 76
      Width = 109
      Height = 22
      DataField = 'ABI_ID'
      DataSource = dsoCAB
      KeyField = 'ID_ABI'
      ListField = 'ID_ABI'
      ListSource = dsoABI
      TabOrder = 1
    end
    object dbeIndirizzo: TDBEdit
      Left = 16
      Top = 124
      Width = 305
      Height = 22
      CharCase = ecUpperCase
      DataField = 'INDIRIZZO'
      DataSource = dsoCAB
      TabOrder = 2
    end
    object dbeLocalita: TDBEdit
      Left = 330
      Top = 124
      Width = 133
      Height = 22
      CharCase = ecUpperCase
      DataField = 'LOCALITA'
      DataSource = dsoCAB
      TabOrder = 3
    end
    object LookABIDecsr: TDBLookupComboBox
      Left = 132
      Top = 76
      Width = 331
      Height = 22
      DataField = 'ABI_ID'
      DataSource = dsoCAB
      KeyField = 'ID_ABI'
      ListField = 'DESCR'
      ListSource = dsoABI
      TabOrder = 4
    end
    object dbeDescr: TDBEdit
      Left = 96
      Top = 28
      Width = 367
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoCAB
      TabOrder = 5
    end
    object LookComune_ID: TRxDBLookupCombo
      Left = 16
      Top = 168
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'COMUNE'
      DataSource = dsoCAB
      LookupField = 'ID_COMUNE'
      LookupDisplay = 'DESCR'
      LookupSource = dsoComuni
      TabOrder = 6
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 328
      Top = 168
      Width = 141
      Height = 21
      DropDownCount = 8
      DataField = 'PROV'
      DataSource = dsoCAB
      LookupField = 'ID_COMUNE'
      LookupDisplay = 'Provincia'
      LookupSource = dsoComuni
      TabOrder = 7
    end
  end
  inherited tbarControl: TToolBar
    Width = 482
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoCAB: TDataSource
    DataSet = dmodAz.ibTab_CAB
    Left = 344
    Top = 6
  end
  object dsoABI: TDataSource
    DataSet = dmodAz.ibTab_ABI
    Left = 376
    Top = 6
  end
  object dsoComuni: TDataSource
    DataSet = dmodPub.ibTab_Comuni
    Left = 408
    Top = 6
  end
end
