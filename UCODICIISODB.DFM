object fCodiciISODB: TfCodiciISODB
  Left = 242
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Codici ISO'
  ClientHeight = 162
  ClientWidth = 264
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
    Width = 264
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Marca: TDBNavigator
      Left = 12
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Codici_ISO
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 264
    Height = 121
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 16
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 136
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 159
      Height = 13
      Caption = 'Numero dei caratteri in Partita IVA'
    end
    object Label2: TLabel
      Left = 16
      Top = 84
      Width = 39
      Height = 13
      Caption = 'Nazione'
    end
    object dbeCodice: TDBEdit
      Left = 64
      Top = 16
      Width = 61
      Height = 21
      DataField = 'ID_ISO'
      DataSource = dmodPub.dsoTab_Codici_ISO
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 49
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Codici_ISO
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeNumPartIVA: TDBEdit
      Left = 200
      Top = 48
      Width = 49
      Height = 21
      DataField = 'NUM_CHAR_PARTITA_IVA'
      DataSource = dmodPub.dsoTab_Codici_ISO
      TabOrder = 2
      OnKeyPress = dbeNumPartIVAKeyPress
    end
    object LookNazione: TDBLookupComboBox
      Left = 76
      Top = 80
      Width = 173
      Height = 21
      DataField = 'NAZIONE_ID'
      DataSource = dmodPub.dsoTab_Codici_ISO
      KeyField = 'ID_NAZIONE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Nazioni
      TabOrder = 3
      OnKeyPress = LookNazioneKeyPress
    end
  end
end
