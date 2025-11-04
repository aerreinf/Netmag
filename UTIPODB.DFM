object fTipoDB: TfTipoDB
  Left = 182
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Tipo'
  ClientHeight = 115
  ClientWidth = 425
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
    Width = 425
    Height = 74
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object laCodice: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 92
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 12
      Top = 32
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Tipo
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 32
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Tipo
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object dbnTab_Tipo: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Tipo
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
end
