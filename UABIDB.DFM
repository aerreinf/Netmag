object fABIDB: TfABIDB
  Left = 276
  Top = 127
  BorderStyle = bsDialog
  Caption = 'ABI'
  ClientHeight = 113
  ClientWidth = 447
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
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_ABI: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_ABI
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 447
    Height = 72
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laID_ABI: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 96
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeID_ABI: TDBEdit
      Left = 12
      Top = 32
      Width = 57
      Height = 21
      DataField = 'ID_ABI'
      DataSource = dmodAz.dsoTab_ABI
      TabOrder = 0
      OnKeyPress = dbeID_ABIKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 32
      Width = 337
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_ABI
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
end
