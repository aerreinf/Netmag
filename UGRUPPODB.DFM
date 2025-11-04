object fGruppoDB: TfGruppoDB
  Left = 182
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Gruppo'
  ClientHeight = 94
  ClientWidth = 538
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
    Width = 538
    Height = 53
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
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
      DataSource = dmodAz.dsoTab_Gruppo
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Gruppo
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object dbnTab_Gruppo: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Gruppo
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
end
