object fZoneDB: TfZoneDB
  Left = 190
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Zone'
  ClientHeight = 118
  ClientWidth = 450
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
    Width = 450
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Zone: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Zone
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 450
    Height = 77
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laID_Zone: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 100
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeID_Codice_Zona: TDBEdit
      Left = 12
      Top = 32
      Width = 65
      Height = 21
      DataField = 'ID_CODICE_ZONA'
      DataSource = dmodAz.dsoTab_Zone
      TabOrder = 0
      OnKeyPress = dbeID_Codice_ZonaKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 32
      Width = 337
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Zone
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
  end
end
