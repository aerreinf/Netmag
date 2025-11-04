object fAspettoEstDB: TfAspettoEstDB
  Left = 204
  Top = 371
  BorderStyle = bsDialog
  Caption = 'Aspetto esteriore'
  ClientHeight = 130
  ClientWidth = 431
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
    Width = 431
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_AspEst: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Aspetto_Est
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 431
    Height = 89
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 12
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 12
      Top = 56
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 76
      Top = 16
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Aspetto_Est
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 76
      Top = 52
      Width = 337
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Aspetto_Est
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
end
