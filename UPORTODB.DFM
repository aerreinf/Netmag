object fPortoDB: TfPortoDB
  Left = 200
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Porto'
  ClientHeight = 123
  ClientWidth = 507
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
    Width = 507
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Porto: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Porto
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 507
    Height = 82
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
      Left = 152
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 88
      Height = 13
      Caption = 'Modo di consegna'
    end
    object dbeCodice: TDBEdit
      Left = 64
      Top = 16
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Porto
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 228
      Top = 16
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Porto
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookModoCons: TDBLookupComboBox
      Left = 184
      Top = 48
      Width = 309
      Height = 21
      DataField = 'MODO_CONSEGNA_ID'
      DataSource = dmodAz.dsoTab_Porto
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Modo_Consegna
      TabOrder = 2
      OnKeyPress = LookModoConsKeyPress
    end
    object LookModConsCod: TDBLookupComboBox
      Left = 116
      Top = 48
      Width = 57
      Height = 21
      DataField = 'MODO_CONSEGNA_ID'
      DataSource = dmodAz.dsoTab_Porto
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodPub.dsoTab_Modo_Consegna
      TabOrder = 3
      OnKeyPress = LookModConsCodKeyPress
    end
  end
end
