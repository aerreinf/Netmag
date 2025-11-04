object fSessoDB: TfSessoDB
  Left = 311
  Top = 176
  BorderStyle = bsDialog
  Caption = 'Sesso'
  ClientHeight = 93
  ClientWidth = 377
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
    Width = 377
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnSesso: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodPub.dsoTab_Sesso
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 377
    Height = 52
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
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodPub.dsoTab_Sesso
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Sesso
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
end
