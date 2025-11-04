object fNatGiurDB: TfNatGiurDB
  Left = 261
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Natura Giuridica'
  ClientHeight = 127
  ClientWidth = 327
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
    Width = 327
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnNatGiur: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Natura_Giuridica
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 327
    Height = 86
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 28
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 16
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 168
      Top = 20
      Width = 81
      Height = 13
      Caption = 'Soggetti residenti'
    end
    object dbeCodice: TDBEdit
      Left = 80
      Top = 16
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodPub.dsoTab_Natura_Giuridica
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 80
      Top = 48
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Natura_Giuridica
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeSoggRes: TDBEdit
      Left = 260
      Top = 16
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SOGGETTI_RESIDENTI'
      DataSource = dmodPub.dsoTab_Natura_Giuridica
      TabOrder = 2
      OnKeyPress = dbeSoggResKeyPress
    end
  end
end
