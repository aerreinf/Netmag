object fListinoDB: TfListinoDB
  Left = 201
  Top = 182
  BorderStyle = bsDialog
  Caption = 'Listini'
  ClientHeight = 172
  ClientWidth = 505
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
    Width = 505
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Listino: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Listino
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 505
    Height = 131
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
      Width = 36
      Height = 13
      Caption = 'Moneta'
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Listino
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 261
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Listino
      TabOrder = 1
    end
    object LookMoneta: TDBLookupComboBox
      Left = 60
      Top = 48
      Width = 145
      Height = 21
      DataField = 'MONETE_ID'
      DataSource = dmodAz.dsoTab_Listino
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Monete
      TabOrder = 2
    end
  end
end
