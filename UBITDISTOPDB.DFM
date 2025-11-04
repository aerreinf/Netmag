object fBitDiStopDB: TfBitDiStopDB
  Left = 239
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Bit di Stop'
  ClientHeight = 96
  ClientWidth = 383
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
    Width = 383
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnBitDiStop: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodPub.dsoTab_Bit_Stop
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 383
    Height = 55
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
      DataSource = dmodPub.dsoTab_Bit_Stop
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Bit_Stop
      TabOrder = 1
    end
  end
end
