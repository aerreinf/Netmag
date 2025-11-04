object fCasseDB: TfCasseDB
  Left = 210
  Top = 139
  BorderStyle = bsDialog
  Caption = 'Casse'
  ClientHeight = 285
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnCasse: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Casse
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Aggiungere moneta'
        'Delete record'
        'Modificare moneta'
        'Salvare'
        'Cancel edit'
        'Refresh data')
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 573
    Height = 244
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 132
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Descriozione'
    end
    object laNumSer: TLabel
      Left = 212
      Top = 44
      Width = 73
      Height = 13
      Caption = 'Numero di serie'
    end
    object dbeID_Moneta: TDBEdit
      Left = 60
      Top = 12
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Casse
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 208
      Top = 12
      Width = 341
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Casse
      TabOrder = 1
    end
    object dbeSerialNumber: TDBEdit
      Left = 300
      Top = 40
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO_SERIE'
      DataSource = dmodAz.dsoTab_Casse
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
        Left = 12
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Baud'
      end
      object laParity: TLabel
        Left = 12
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Parità'
      end
      object laStopBit: TLabel
        Left = 12
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Bit di Stop'
      end
      object laDataBit: TLabel
        Left = 12
        Top = 72
        Width = 45
        Height = 13
        Caption = 'Bit di Dati'
      end
      object laPort: TLabel
        Left = 12
        Top = 120
        Width = 25
        Height = 13
        Caption = 'Porta'
      end
      object LookBaud: TDBLookupComboBox
        Left = 88
        Top = 20
        Width = 145
        Height = 21
        DataField = 'VELOCITA_BAUD_ID'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Baud
        TabOrder = 0
      end
      object LookParita: TDBLookupComboBox
        Left = 88
        Top = 44
        Width = 145
        Height = 21
        DataField = 'PARITA_ID'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Parita
        TabOrder = 1
      end
      object LookStopBit: TDBLookupComboBox
        Left = 88
        Top = 92
        Width = 145
        Height = 21
        DataField = 'BIT_STOP_ID'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Bit_Stop
        TabOrder = 3
      end
      object LookDataBit: TDBLookupComboBox
        Left = 88
        Top = 68
        Width = 145
        Height = 21
        DataField = 'BIT_DATI_ID'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Bit_Dati
        TabOrder = 2
      end
      object LookPort: TDBLookupComboBox
        Left = 88
        Top = 116
        Width = 145
        Height = 21
        DataField = 'PORTA_ID'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Porte
        TabOrder = 4
      end
    end
    object gbConfig: TGroupBox
      Left = 292
      Top = 72
      Width = 265
      Height = 157
      Caption = 'Paramentri di configurazione'
      TabOrder = 4
      object laModECR: TLabel
        Left = 20
        Top = 120
        Width = 62
        Height = 13
        Caption = 'Modello ECR'
      end
      object laTimeOut: TLabel
        Left = 20
        Top = 24
        Width = 43
        Height = 13
        Caption = 'Time Out'
      end
      object laNumCa: TLabel
        Left = 20
        Top = 52
        Width = 78
        Height = 13
        Caption = 'Numero caratteri'
      end
      object laNumRep: TLabel
        Left = 20
        Top = 76
        Width = 69
        Height = 13
        Caption = 'Numero reparti'
      end
      object dbeTimeOut: TDBEdit
        Left = 144
        Top = 20
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TIME_OUT'
        DataSource = dmodAz.dsoTab_Casse
        TabOrder = 0
      end
      object dbeNumCar: TDBEdit
        Left = 144
        Top = 44
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUM_CARATTERI'
        DataSource = dmodAz.dsoTab_Casse
        TabOrder = 1
      end
      object dbeNumRep: TDBEdit
        Left = 144
        Top = 68
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUM_REPARTI'
        DataSource = dmodAz.dsoTab_Casse
        TabOrder = 2
      end
      object LookModelloECR: TDBLookupComboBox
        Left = 96
        Top = 116
        Width = 153
        Height = 21
        DataField = 'TIPO_REG'
        DataSource = dmodAz.dsoTab_Casse
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Tipo_Registratore
        TabOrder = 3
      end
    end
  end
end
