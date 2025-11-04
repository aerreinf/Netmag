object fTipoArrotDB: TfTipoArrotDB
  Left = 275
  Top = 199
  BorderStyle = bsDialog
  Caption = 'Tipo Arrotondamento'
  ClientHeight = 108
  ClientWidth = 430
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
    Width = 430
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Tipo_Arrotondamento: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodPub.dsoTab_Tipo_Arrotondamento
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 430
    Height = 67
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
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
      Left = 12
      Top = 28
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodPub.dsoTab_Tipo_Arrotondamento
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 28
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Tipo_Arrotondamento
      TabOrder = 1
    end
  end
end
