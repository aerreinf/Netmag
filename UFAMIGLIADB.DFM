object fFamigliaDB: TfFamigliaDB
  Left = 206
  Top = 96
  BorderStyle = bsDialog
  Caption = 'Famiglia'
  ClientHeight = 108
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 372
    Height = 67
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object laCodice: TLabel
      Left = 16
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 96
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 8
      Top = 28
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Famiglia
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 88
      Top = 28
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Famiglia
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 372
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object dbnTab_Famiglia: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Famiglia
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
end
