inherited fVettori: TfVettori
  Left = 173
  Top = 141
  Caption = 'Vettori'
  ClientHeight = 386
  ClientWidth = 591
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 591
    Height = 359
    object bevIndir: TBevel
      Left = 24
      Top = 104
      Width = 541
      Height = 129
    end
    object laCodice: TLabel
      Left = 80
      Top = 16
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laRagSoc: TLabel
      Left = 16
      Top = 44
      Width = 115
      Height = 16
      Caption = 'Ragione sociale'
    end
    object laPartIVA: TLabel
      Left = 108
      Top = 72
      Width = 74
      Height = 16
      Caption = 'Partita IVA'
    end
    object laCodFisc: TLabel
      Left = 320
      Top = 72
      Width = 100
      Height = 16
      Caption = 'Codice fiscale'
    end
    object laIndirizzo: TLabel
      Left = 48
      Top = 112
      Width = 58
      Height = 16
      Caption = 'Indirizzo'
    end
    object laStato: TLabel
      Left = 48
      Top = 160
      Width = 37
      Height = 16
      Caption = 'Stato'
    end
    object laCAP: TLabel
      Left = 128
      Top = 160
      Width = 31
      Height = 16
      Caption = 'CAP'
    end
    object laStatoISO: TLabel
      Left = 356
      Top = 160
      Width = 66
      Height = 16
      Caption = 'Stato ISO'
    end
    object laTel1: TLabel
      Left = 48
      Top = 184
      Width = 75
      Height = 16
      Caption = 'Telefono 1'
    end
    object laTel2: TLabel
      Left = 200
      Top = 184
      Width = 75
      Height = 16
      Caption = 'Telefono 2'
    end
    object laMaoneta: TLabel
      Left = 192
      Top = 248
      Width = 52
      Height = 16
      Caption = 'Moneta'
    end
    object laNota: TLabel
      Left = 48
      Top = 252
      Width = 34
      Height = 16
      Caption = 'Nota'
    end
    object laFAX: TLabel
      Left = 372
      Top = 184
      Width = 26
      Height = 16
      Caption = 'Fax'
    end
    object laCitta: TLabel
      Left = 416
      Top = 112
      Width = 32
      Height = 16
      Caption = 'Citt'#224
    end
    object laProv: TLabel
      Left = 240
      Top = 160
      Width = 37
      Height = 16
      Caption = 'Prov.'
      Visible = False
    end
    object dbeCodice: TDBEdit
      Left = 140
      Top = 12
      Width = 97
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoVettori
      TabOrder = 0
    end
    object dbcboxAbbonato: TDBCheckBox
      Left = 280
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Abbonato'
      DataField = 'ABBONATO'
      DataSource = dsoVettori
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbeRagSoc: TDBEdit
      Left = 140
      Top = 40
      Width = 429
      Height = 22
      CharCase = ecUpperCase
      DataField = 'RAGIONE_SOCIALE'
      DataSource = dsoVettori
      TabOrder = 2
    end
    object dbePartIVA: TDBEdit
      Left = 184
      Top = 68
      Width = 133
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PARTITA_IVA'
      DataSource = dsoVettori
      TabOrder = 3
    end
    object dbeCodFisc: TDBEdit
      Left = 424
      Top = 68
      Width = 145
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE_FISCALE'
      DataSource = dsoVettori
      TabOrder = 4
    end
    object dbeIndirizzo: TDBEdit
      Left = 44
      Top = 128
      Width = 361
      Height = 22
      CharCase = ecUpperCase
      DataField = 'INDIRIZZO'
      DataSource = dsoVettori
      TabOrder = 5
    end
    object dbeStato: TDBEdit
      Left = 88
      Top = 156
      Width = 33
      Height = 22
      CharCase = ecUpperCase
      DataField = 'STATO'
      DataSource = dsoVettori
      TabOrder = 6
    end
    object LookCAP: TDBLookupComboBox
      Left = 164
      Top = 156
      Width = 69
      Height = 22
      DataField = 'CAP'
      DataSource = dsoVettori
      KeyField = 'CAP'
      ListField = 'CAP'
      ListSource = dsoComuni
      TabOrder = 7
    end
    object LookProv: TDBLookupComboBox
      Left = 276
      Top = 156
      Width = 77
      Height = 22
      DataField = 'PROVINCIA_ID'
      DataSource = dsoVettori
      KeyField = 'ID_PROVINCIA'
      ListField = 'DESCR'
      ListSource = dsProv
      TabOrder = 8
      Visible = False
      OnExit = LookProvExit
    end
    object dbeCitta: TDBEdit
      Left = 412
      Top = 128
      Width = 133
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CITTA'
      DataSource = dsoVettori
      TabOrder = 9
    end
    object LookStatoISO: TDBLookupComboBox
      Left = 428
      Top = 156
      Width = 117
      Height = 22
      DataField = 'STATO_ISO'
      DataSource = dsoVettori
      KeyField = 'ID_ISO'
      ListField = 'DESCR'
      ListSource = dsoCodISO
      TabOrder = 10
    end
    object dbeTel1: TDBEdit
      Left = 44
      Top = 200
      Width = 145
      Height = 22
      CharCase = ecUpperCase
      DataField = 'TEL1'
      DataSource = dsoVettori
      TabOrder = 11
    end
    object dbeTel2: TDBEdit
      Left = 196
      Top = 200
      Width = 165
      Height = 22
      CharCase = ecUpperCase
      DataField = 'TEL2'
      DataSource = dsoVettori
      TabOrder = 12
    end
    object dbeFax: TDBEdit
      Left = 368
      Top = 200
      Width = 177
      Height = 22
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = dsoVettori
      TabOrder = 13
    end
    object LookMoneta: TDBLookupComboBox
      Left = 248
      Top = 244
      Width = 293
      Height = 22
      DataField = 'MONETA_ID'
      DataSource = dsoVettori
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dsoMonete
      TabOrder = 14
    end
    object dbmNote: TDBMemo
      Left = 44
      Top = 272
      Width = 497
      Height = 69
      DataField = 'NOTA'
      DataSource = dsoVettori
      ScrollBars = ssVertical
      TabOrder = 15
    end
    object dbeProv: TDBEdit
      Left = 320
      Top = 178
      Width = 33
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PROV'
      DataSource = dsoVettori
      TabOrder = 16
      Visible = False
    end
  end
  inherited tbarControl: TToolBar
    Width = 591
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoVettori: TDataSource
    DataSet = dmodAz.ibTab_Vettori
    Left = 360
    Top = 10
  end
  object dsoCodISO: TDataSource
    DataSet = dmodPub.ibTab_Codici_ISO
    Left = 408
    Top = 10
  end
  object dsoComuni: TDataSource
    DataSet = dmodPub.ibTab_Comuni
    Left = 554
    Top = 22
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 476
    Top = 10
  end
  object dsProv: TDataSource
    DataSet = dmodPub.ibTab_Province
    Left = 440
    Top = 10
  end
end
