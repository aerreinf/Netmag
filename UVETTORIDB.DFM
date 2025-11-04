object fVettoriDB: TfVettoriDB
  Left = 149
  Top = 20
  BorderStyle = bsDialog
  Caption = 'Vettori'
  ClientHeight = 402
  ClientWidth = 589
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
    Width = 589
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Vettori: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Vettori
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      BeforeAction = dbnTab_VettoriBeforeAction
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 589
    Height = 361
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object bevIndir: TBevel
      Left = 24
      Top = 104
      Width = 541
      Height = 129
    end
    object laCodice: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laRagSoc: TLabel
      Left = 16
      Top = 44
      Width = 76
      Height = 13
      Caption = 'Ragione sociale'
    end
    object laPartIVA: TLabel
      Left = 108
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Partita IVA'
    end
    object laIndirizzo: TLabel
      Left = 48
      Top = 112
      Width = 38
      Height = 13
      Caption = 'Indirizzo'
    end
    object laTel1: TLabel
      Left = 48
      Top = 184
      Width = 51
      Height = 13
      Caption = 'Telefono 1'
    end
    object laTel2: TLabel
      Left = 200
      Top = 184
      Width = 51
      Height = 13
      Caption = 'Telefono 2'
    end
    object laCitta: TLabel
      Left = 416
      Top = 112
      Width = 21
      Height = 13
      Caption = 'Città'
    end
    object laFAX: TLabel
      Left = 372
      Top = 184
      Width = 17
      Height = 13
      Caption = 'Fax'
    end
    object laStato: TLabel
      Left = 48
      Top = 160
      Width = 25
      Height = 13
      Caption = 'Stato'
    end
    object laProv: TLabel
      Left = 244
      Top = 160
      Width = 25
      Height = 13
      Caption = 'Prov.'
    end
    object laCAP: TLabel
      Left = 128
      Top = 160
      Width = 21
      Height = 13
      Caption = 'CAP'
    end
    object laCodFisc: TLabel
      Left = 332
      Top = 72
      Width = 66
      Height = 13
      Caption = 'Codice fiscale'
    end
    object laMaoneta: TLabel
      Left = 204
      Top = 248
      Width = 36
      Height = 13
      Caption = 'Moneta'
    end
    object laNota: TLabel
      Left = 48
      Top = 252
      Width = 23
      Height = 13
      Caption = 'Nota'
    end
    object laStatoISO: TLabel
      Left = 364
      Top = 160
      Width = 46
      Height = 13
      Caption = 'Stato ISO'
    end
    object dbeIndirizzo: TDBEdit
      Left = 44
      Top = 128
      Width = 361
      Height = 21
      DataField = 'INDIRIZZO'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 5
      OnKeyPress = dbeIndirizzoKeyPress
    end
    object dbeTel1: TDBEdit
      Left = 44
      Top = 200
      Width = 145
      Height = 21
      DataField = 'TEL1'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 11
      OnKeyPress = dbeTel1KeyPress
    end
    object dbeTel2: TDBEdit
      Left = 196
      Top = 200
      Width = 165
      Height = 21
      DataField = 'TEL2'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 12
      OnKeyPress = dbeTel2KeyPress
    end
    object dbeCitta: TDBEdit
      Left = 412
      Top = 128
      Width = 133
      Height = 21
      DataField = 'CITTA'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 6
      OnKeyPress = dbeCittaKeyPress
    end
    object dbeFax: TDBEdit
      Left = 368
      Top = 200
      Width = 177
      Height = 21
      DataField = 'FAX'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 13
      OnKeyPress = dbeFaxKeyPress
    end
    object cboxAbbonato: TCheckBox
      Left = 188
      Top = 14
      Width = 73
      Height = 17
      Caption = 'Abbonato'
      TabOrder = 1
      OnClick = cboxAbbonatoClick
      OnExit = cboxAbbonatoExit
      OnKeyPress = cboxAbbonatoKeyPress
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 12
      Width = 109
      Height = 21
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeRagSoc: TDBEdit
      Left = 108
      Top = 40
      Width = 461
      Height = 21
      DataField = 'RAGIONE_SOCIALE'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 2
      OnKeyPress = dbeRagSocKeyPress
    end
    object dbcboxAbbonato: TDBCheckBox
      Left = 280
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Abbonato !invisible!'
      DataField = 'ABBONATO'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 16
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbePartIVA: TDBEdit
      Left = 176
      Top = 68
      Width = 133
      Height = 21
      DataField = 'PARTITA_IVA'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 3
      OnKeyPress = dbePartIVAKeyPress
    end
    object dbeCodFisc: TDBEdit
      Left = 412
      Top = 68
      Width = 157
      Height = 21
      DataField = 'CODICE_FISCALE'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 4
      OnKeyPress = dbeCodFiscKeyPress
    end
    object dbeStato: TDBEdit
      Left = 84
      Top = 156
      Width = 33
      Height = 21
      DataField = 'STATO'
      DataSource = dmodAz.dsoTab_Vettori
      TabOrder = 7
      OnKeyPress = dbeStatoKeyPress
    end
    object LookCAP: TDBLookupComboBox
      Left = 160
      Top = 156
      Width = 69
      Height = 21
      DataField = 'CAP'
      DataSource = dmodAz.dsoTab_Vettori
      KeyField = 'CAP'
      ListField = 'CAP'
      ListSource = dmodPub.dsoTab_Comuni
      TabOrder = 8
      OnKeyPress = LookCAPKeyPress
    end
    object LookProv: TDBLookupComboBox
      Left = 276
      Top = 156
      Width = 77
      Height = 21
      DataField = 'PROVINCIA_ID'
      DataSource = dmodAz.dsoTab_Vettori
      KeyField = 'ID_PROVINCIA'
      ListField = 'SIGLA'
      ListSource = dmodPub.dsoTab_Province
      TabOrder = 9
      OnKeyPress = LookProvKeyPress
    end
    object LookStatoISO: TDBLookupComboBox
      Left = 416
      Top = 156
      Width = 129
      Height = 21
      DataField = 'STATO_ISO'
      DataSource = dmodAz.dsoTab_Vettori
      KeyField = 'ID_ISO'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Codici_ISO
      TabOrder = 10
      OnKeyPress = LookStatoISOKeyPress
    end
    object LookMoneta: TDBLookupComboBox
      Left = 248
      Top = 244
      Width = 293
      Height = 21
      DataField = 'MONETA_ID'
      DataSource = dmodAz.dsoTab_Vettori
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Monete
      TabOrder = 14
      OnKeyPress = LookMonetaKeyPress
    end
    object dbmNote: TDBMemo
      Left = 44
      Top = 272
      Width = 497
      Height = 69
      DataField = 'NOTA'
      DataSource = dmodAz.dsoTab_Vettori
      ScrollBars = ssVertical
      TabOrder = 15
      OnKeyPress = dbmNoteKeyPress
    end
  end
end
