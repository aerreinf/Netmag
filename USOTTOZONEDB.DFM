object fSottoZoneDB: TfSottoZoneDB
  Left = 183
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Sottozone'
  ClientHeight = 130
  ClientWidth = 526
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
    Width = 526
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Sotto_Zone: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Sotto_Zone
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 526
    Height = 89
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laID_Sotto_Zone: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 104
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laZona: TLabel
      Left = 120
      Top = 52
      Width = 25
      Height = 13
      Caption = 'Zona'
    end
    object dbeID_Codice_Sotto_Zona: TDBEdit
      Left = 20
      Top = 32
      Width = 57
      Height = 21
      DataField = 'ID_CODICE_SOTTO_ZONE'
      DataSource = dmodAz.dsoTab_Sotto_Zone
      TabOrder = 0
      OnKeyPress = dbeID_Codice_Sotto_ZonaKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 168
      Top = 16
      Width = 337
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Sotto_Zone
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookZona_ID: TDBLookupComboBox
      Left = 168
      Top = 48
      Width = 337
      Height = 21
      DataField = 'CODICE_ZONA_ID'
      DataSource = dmodAz.dsoTab_Sotto_Zone
      KeyField = 'ID_CODICE_ZONA'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Zone
      TabOrder = 2
      OnKeyPress = LookZona_IDKeyPress
    end
  end
end
