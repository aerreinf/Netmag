inherited fCodISO: TfCodISO
  Left = 255
  Top = 121
  Caption = 'Codici ISO'
  ClientHeight = 154
  ClientWidth = 333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 333
    Height = 127
    object laCodice: TLabel
      Left = 16
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 164
      Top = 20
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 235
      Height = 16
      Caption = 'Numero dei caratteri in Partita IVA'
    end
    object Label2: TLabel
      Left = 16
      Top = 84
      Width = 58
      Height = 16
      Caption = 'Nazione'
    end
    object dbeCodice: TDBEdit
      Left = 80
      Top = 16
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_ISO'
      DataSource = dsoCodISO
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 256
      Top = 16
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoCodISO
      TabOrder = 1
    end
    object dbeNumPartIVA: TDBEdit
      Left = 256
      Top = 48
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NUM_CHAR_PARTITA_IVA'
      DataSource = dsoCodISO
      TabOrder = 2
    end
    object LookNazione: TDBLookupComboBox
      Left = 80
      Top = 80
      Width = 225
      Height = 22
      DataField = 'NAZIONE_ID'
      DataSource = dsoCodISO
      KeyField = 'ID_NAZIONE'
      ListField = 'DESCR'
      ListSource = dsoNazioni
      TabOrder = 3
    end
  end
  inherited tbarControl: TToolBar
    Width = 333
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoCodISO: TDataSource
    DataSet = dmodPub.ibTab_Codici_ISO
    Left = 254
    Top = 6
  end
  object dsoNazioni: TDataSource
    DataSet = dmodPub.ibTab_Nazioni
    Left = 288
    Top = 8
  end
end
