inherited fCasse: TfCasse
  Left = 159
  Top = 139
  Caption = 'Casse'
  ClientHeight = 274
  ClientWidth = 563
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 563
    Height = 247
    object laCodice: TLabel
      Left = 8
      Top = 16
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 128
      Top = 16
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object laNumSer: TLabel
      Left = 192
      Top = 44
      Width = 111
      Height = 16
      Caption = 'Numero di serie'
    end
    object dbeCodice: TDBEdit
      Left = 68
      Top = 13
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoCasse
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 216
      Top = 13
      Width = 329
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoCasse
      TabOrder = 1
    end
    object dbeSerialNumber: TDBEdit
      Left = 308
      Top = 40
      Width = 237
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NUMERO_SERIE'
      DataSource = dsoCasse
      TabOrder = 2
    end
    object gbComunic: TGroupBox
      Left = 16
      Top = 72
      Width = 257
      Height = 157
      Caption = 'Parametri di Comunicazione'
      TabOrder = 3
      object laBaud: TLabel
        Left = 52
        Top = 24
        Width = 37
        Height = 16
        Caption = 'Baud'
      end
      object laParity: TLabel
        Left = 47
        Top = 48
        Width = 42
        Height = 16
        Caption = 'Parit'#224
      end
      object laStopBit: TLabel
        Left = 17
        Top = 96
        Width = 72
        Height = 16
        Caption = 'Bit di Stop'
      end
      object laDataBit: TLabel
        Left = 21
        Top = 72
        Width = 68
        Height = 16
        Caption = 'Bit di Dati'
      end
      object laPort: TLabel
        Left = 51
        Top = 120
        Width = 38
        Height = 16
        Caption = 'Porta'
      end
      object LookBaud: TDBLookupComboBox
        Left = 96
        Top = 20
        Width = 145
        Height = 22
        DataField = 'VELOCITA_BAUD_ID'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoBaud
        TabOrder = 0
      end
      object LookParita: TDBLookupComboBox
        Left = 96
        Top = 44
        Width = 145
        Height = 22
        DataField = 'PARITA_ID'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoParita
        TabOrder = 1
      end
      object LookStopBit: TDBLookupComboBox
        Left = 96
        Top = 92
        Width = 145
        Height = 22
        DataField = 'BIT_STOP_ID'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoBitStop
        TabOrder = 3
      end
      object LookDataBit: TDBLookupComboBox
        Left = 96
        Top = 68
        Width = 145
        Height = 22
        DataField = 'BIT_DATI_ID'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoBitDati
        TabOrder = 2
      end
      object LookPort: TDBLookupComboBox
        Left = 96
        Top = 116
        Width = 145
        Height = 22
        DataField = 'PORTA_ID'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoPorte
        TabOrder = 4
      end
    end
    object gbConfig: TGroupBox
      Left = 292
      Top = 72
      Width = 253
      Height = 157
      Caption = 'Paramentri di configurazione'
      TabOrder = 4
      object laModECR: TLabel
        Left = 20
        Top = 104
        Width = 92
        Height = 16
        Caption = 'Modello ECR'
      end
      object laTimeOut: TLabel
        Left = 93
        Top = 24
        Width = 63
        Height = 16
        Caption = 'Time Out'
      end
      object laNumCa: TLabel
        Left = 40
        Top = 48
        Width = 116
        Height = 16
        Caption = 'Numero caratteri'
      end
      object laNumRep: TLabel
        Left = 52
        Top = 72
        Width = 104
        Height = 16
        Caption = 'Numero reparti'
      end
      object dbeTimeOut: TDBEdit
        Left = 164
        Top = 20
        Width = 49
        Height = 22
        CharCase = ecUpperCase
        DataField = 'TIME_OUT'
        DataSource = dsoCasse
        TabOrder = 0
      end
      object dbeNumCar: TDBEdit
        Left = 164
        Top = 44
        Width = 49
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NUM_CARATTERI'
        DataSource = dsoCasse
        TabOrder = 1
      end
      object dbeNumRep: TDBEdit
        Left = 164
        Top = 68
        Width = 49
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NUM_REPARTI'
        DataSource = dsoCasse
        TabOrder = 2
      end
      object LookModelloECR: TDBLookupComboBox
        Left = 88
        Top = 124
        Width = 153
        Height = 22
        DataField = 'TIPO_REG'
        DataSource = dsoCasse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoModECR
        TabOrder = 3
      end
    end
  end
  inherited tbarControl: TToolBar
    Width = 563
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoCasse: TDataSource
    DataSet = dmodAz.ibTab_Casse
    Left = 302
    Top = 4
  end
  object dsoBaud: TDataSource
    DataSet = dmodPub.ibTab_Baud
    Left = 336
    Top = 2
  end
  object dsoParita: TDataSource
    DataSet = dmodPub.ibTab_Parita
    Left = 368
    Top = 2
  end
  object dsoBitDati: TDataSource
    DataSet = dmodPub.ibTab_Bit_Dati
    Left = 400
    Top = 2
  end
  object dsoBitStop: TDataSource
    DataSet = dmodPub.ibTab_Bit_Stop
    Left = 432
    Top = 2
  end
  object dsoPorte: TDataSource
    DataSet = dmodPub.ibTab_Porte
    Left = 464
    Top = 2
  end
  object dsoModECR: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Registratore
    Left = 496
    Top = 2
  end
end
