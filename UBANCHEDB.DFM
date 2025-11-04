object fBancheDB: TfBancheDB
  Left = 183
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Banche'
  ClientHeight = 302
  ClientWidth = 519
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
    Width = 519
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Banche: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Banche
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 519
    Height = 261
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object laCodBanca: TLabel
      Left = 12
      Top = 12
      Width = 67
      Height = 13
      Caption = 'Codice Banca'
    end
    object laDescr: TLabel
      Left = 12
      Top = 40
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laCodABI: TLabel
      Left = 336
      Top = 96
      Width = 53
      Height = 13
      Caption = 'Codice ABI'
    end
    object laCodCAB: TLabel
      Left = 336
      Top = 68
      Width = 57
      Height = 13
      Caption = 'Codice CAB'
    end
    object laSportello: TLabel
      Left = 12
      Top = 68
      Width = 41
      Height = 13
      Caption = 'Sportello'
    end
    object laAzienda: TLabel
      Left = 12
      Top = 96
      Width = 38
      Height = 13
      Caption = 'Azienda'
    end
    object laCitta: TLabel
      Left = 380
      Top = 124
      Width = 21
      Height = 13
      Caption = 'Città'
    end
    object laIndA1: TLabel
      Left = 12
      Top = 124
      Width = 38
      Height = 13
      Caption = 'Indirizzo'
    end
    object laTel1A1: TLabel
      Left = 12
      Top = 168
      Width = 51
      Height = 13
      Caption = 'Telefono 1'
    end
    object laEMailA1: TLabel
      Left = 12
      Top = 212
      Width = 35
      Height = 13
      Caption = 'E - Mail'
    end
    object laInternetA1: TLabel
      Left = 208
      Top = 212
      Width = 36
      Height = 13
      Caption = 'Internet'
    end
    object laFaxA1: TLabel
      Left = 336
      Top = 168
      Width = 17
      Height = 13
      Caption = 'Fax'
    end
    object laTel2A1: TLabel
      Left = 164
      Top = 168
      Width = 51
      Height = 13
      Caption = 'Telefono 2'
    end
    object dbeCodBanca: TDBEdit
      Left = 92
      Top = 8
      Width = 85
      Height = 21
      DataField = 'ID_BANCA'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 0
      OnKeyPress = dbeCodBancaKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 36
      Width = 417
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeSportello: TDBEdit
      Left = 92
      Top = 64
      Width = 225
      Height = 21
      DataField = 'SPORTELLO'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 2
      OnKeyPress = dbeSportelloKeyPress
    end
    object dbeAzienda: TDBEdit
      Left = 92
      Top = 92
      Width = 225
      Height = 21
      DataField = 'AZIENDA'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 3
      OnKeyPress = dbeAziendaKeyPress
    end
    object dbeCitta: TDBEdit
      Left = 376
      Top = 140
      Width = 133
      Height = 21
      DataField = 'CITTA'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 7
      OnKeyPress = dbeCittaKeyPress
    end
    object LookCodABI: TDBLookupComboBox
      Left = 404
      Top = 92
      Width = 105
      Height = 21
      DataField = 'ABI_ID'
      DataSource = dmodAz.dsoTab_Banche
      KeyField = 'ID_ABI'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_ABI
      TabOrder = 5
      OnKeyPress = LookCodABIKeyPress
    end
    object LookCodCAB: TDBLookupComboBox
      Left = 404
      Top = 64
      Width = 105
      Height = 21
      DataField = 'CAB_ID'
      DataSource = dmodAz.dsoTab_Banche
      KeyField = 'ID_CAB'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_CAB
      TabOrder = 4
      OnCloseUp = LookCodCABCloseUp
      OnKeyPress = LookCodCABKeyPress
    end
    object dbeIndirizzo: TDBEdit
      Left = 8
      Top = 140
      Width = 361
      Height = 21
      DataField = 'INDIRIZZO'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 6
      OnKeyPress = dbeIndirizzoKeyPress
    end
    object dbeTel1: TDBEdit
      Left = 8
      Top = 184
      Width = 145
      Height = 21
      DataField = 'TEL1'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 8
      OnKeyPress = dbeTel1KeyPress
    end
    object dbeEMail: TDBEdit
      Left = 8
      Top = 228
      Width = 189
      Height = 21
      DataField = 'EMAIL'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 11
      OnKeyPress = dbeEMailKeyPress
    end
    object dbeInternet: TDBEdit
      Left = 204
      Top = 228
      Width = 305
      Height = 21
      DataField = 'INTERNET'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 12
      OnKeyPress = dbeInternetKeyPress
    end
    object dbeFax: TDBEdit
      Left = 332
      Top = 184
      Width = 177
      Height = 21
      DataField = 'FAX'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 10
      OnKeyPress = dbeFaxKeyPress
    end
    object dbeTel2: TDBEdit
      Left = 160
      Top = 184
      Width = 165
      Height = 21
      DataField = 'TEL2'
      DataSource = dmodAz.dsoTab_Banche
      TabOrder = 9
      OnKeyPress = dbeTel2KeyPress
    end
  end
end
