object fCABDB: TfCABDB
  Left = 219
  Top = 106
  BorderStyle = bsDialog
  Caption = 'CAB'
  ClientHeight = 251
  ClientWidth = 494
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
    Width = 494
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_CAB: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_CAB
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 494
    Height = 210
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laID_CAB: TLabel
      Left = 20
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 100
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laABI_ID: TLabel
      Left = 20
      Top = 60
      Width = 59
      Height = 13
      Caption = 'ABI - Codice'
    end
    object laInd: TLabel
      Left = 20
      Top = 108
      Width = 38
      Height = 13
      Caption = 'Indirizzo'
    end
    object laLocalita: TLabel
      Left = 348
      Top = 108
      Width = 37
      Height = 13
      Caption = 'Località'
    end
    object laComune: TLabel
      Left = 20
      Top = 152
      Width = 39
      Height = 13
      Caption = 'Comune'
    end
    object laProv: TLabel
      Left = 192
      Top = 152
      Width = 25
      Height = 13
      Caption = 'Prov.'
    end
    object laCAP: TLabel
      Left = 304
      Top = 152
      Width = 21
      Height = 13
      Caption = 'CAP'
    end
    object Label1: TLabel
      Left = 136
      Top = 60
      Width = 81
      Height = 13
      Caption = 'ABI - Descrizione'
    end
    object dbeID_CAB: TDBEdit
      Left = 16
      Top = 28
      Width = 69
      Height = 21
      DataField = 'ID_CAB'
      DataSource = dmodAz.dsoTab_CAB
      TabOrder = 0
      OnKeyPress = dbeID_CABKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 96
      Top = 28
      Width = 381
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_CAB
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookABI_ID: TDBLookupComboBox
      Left = 16
      Top = 76
      Width = 109
      Height = 21
      DataField = 'ABI_ID'
      DataSource = dmodAz.dsoTab_CAB
      KeyField = 'ID_ABI'
      ListField = 'ID_ABI'
      ListSource = dmodAz.dsoTab_ABI
      TabOrder = 2
      OnKeyPress = LookABI_IDKeyPress
    end
    object dbeIndirizzo: TDBEdit
      Left = 16
      Top = 124
      Width = 317
      Height = 21
      DataField = 'INDIRIZZO'
      DataSource = dmodAz.dsoTab_CAB
      TabOrder = 4
      OnKeyPress = dbeIndirizzoKeyPress
    end
    object dbeLocalita: TDBEdit
      Left = 344
      Top = 124
      Width = 133
      Height = 21
      DataField = 'LOCALITA'
      DataSource = dmodAz.dsoTab_CAB
      TabOrder = 5
      OnKeyPress = dbeLocalitaKeyPress
    end
    object LookComune_ID: TDBLookupComboBox
      Left = 16
      Top = 168
      Width = 145
      Height = 21
      DataField = 'COMUNE_ID'
      DataSource = dmodAz.dsoTab_CAB
      KeyField = 'ID_COMUNE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Comuni
      TabOrder = 6
      OnKeyPress = LookComune_IDKeyPress
    end
    object LookProv_ID: TDBLookupComboBox
      Left = 188
      Top = 168
      Width = 85
      Height = 21
      DataField = 'COMUNE_ID'
      DataSource = dmodAz.dsoTab_CAB
      KeyField = 'ID_COMUNE'
      ListField = 'Provincia'
      ListSource = dmodPub.dsoTab_Comuni
      TabOrder = 7
      OnKeyPress = LookProv_IDKeyPress
    end
    object LookCAP_ID: TDBLookupComboBox
      Left = 300
      Top = 168
      Width = 97
      Height = 21
      DataField = 'COMUNE_ID'
      DataSource = dmodAz.dsoTab_CAB
      KeyField = 'ID_COMUNE'
      ListField = 'CAP'
      ListSource = dmodPub.dsoTab_Comuni
      TabOrder = 8
      OnKeyPress = LookCAP_IDKeyPress
    end
    object LookABIDecsr: TDBLookupComboBox
      Left = 132
      Top = 76
      Width = 345
      Height = 21
      DataField = 'ABI_ID'
      DataSource = dmodAz.dsoTab_CAB
      KeyField = 'ID_ABI'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_ABI
      TabOrder = 3
      OnKeyPress = LookABIDecsrKeyPress
    end
  end
end
