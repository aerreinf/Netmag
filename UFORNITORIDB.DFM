object fFornitoriDB: TfFornitoriDB
  Left = 3
  Top = -1
  BorderStyle = bsDialog
  Caption = 'Fornitori'
  ClientHeight = 397
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Fornitori: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoqTabFor
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_FornitoriClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 556
    Height = 80
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object laCodice: TLabel
      Left = 16
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDenom: TLabel
      Left = 16
      Top = 33
      Width = 73
      Height = 13
      Caption = 'Denominazione'
    end
    object laDenom2: TLabel
      Left = 16
      Top = 55
      Width = 73
      Height = 13
      Caption = 'Denominazione'
    end
    object dbeCodice: TDBEdit
      Left = 104
      Top = 7
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID_CLI_FOR'
      DataSource = dmodAz.dsoqTabFor
      TabOrder = 0
    end
    object dbeDenom: TDBEdit
      Left = 104
      Top = 29
      Width = 420
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE'
      DataSource = dmodAz.dsoqTabFor
      TabOrder = 1
    end
    object dbeDenom2: TDBEdit
      Left = 104
      Top = 52
      Width = 420
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE2'
      DataSource = dmodAz.dsoqTabFor
      TabOrder = 2
    end
  end
  object paDati: TPanel
    Left = 0
    Top = 121
    Width = 556
    Height = 276
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pctrlDatiForn: TPageControl
      Left = 0
      Top = 0
      Width = 556
      Height = 276
      ActivePage = tabs4
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '&Anagrafica'
        object paAnagrafica: TPanel
          Left = 0
          Top = 0
          Width = 548
          Height = 245
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laCodFisc: TLabel
            Left = 12
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Codice Fiscale'
          end
          object laSesso: TLabel
            Left = 392
            Top = 14
            Width = 29
            Height = 13
            Caption = 'Sesso'
          end
          object laNome: TLabel
            Left = 348
            Top = 58
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object laCognome: TLabel
            Left = 108
            Top = 58
            Width = 45
            Height = 13
            Caption = 'Cognome'
          end
          object laTitolo: TLabel
            Left = 12
            Top = 58
            Width = 26
            Height = 13
            Caption = 'Titolo'
          end
          object laDataDiNasc: TLabel
            Left = 12
            Top = 106
            Width = 71
            Height = 13
            Caption = 'Data di nascita'
          end
          object laComuneDiNasc: TLabel
            Left = 108
            Top = 106
            Width = 91
            Height = 13
            Caption = 'Comune Di Nascita'
          end
          object laCAPdiNasc: TLabel
            Left = 348
            Top = 106
            Width = 21
            Height = 13
            Caption = 'CAP'
          end
          object laNazione: TLabel
            Left = 108
            Top = 151
            Width = 39
            Height = 13
            Caption = 'Nazione'
          end
          object dbeCodFisc: TDBEdit
            Left = 8
            Top = 30
            Width = 189
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODICE_FISCALE'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 0
          end
          object LookSesso: TDBLookupComboBox
            Left = 384
            Top = 30
            Width = 145
            Height = 21
            DataField = 'SESSO'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Sesso
            TabOrder = 1
          end
          object dbeNome: TDBEdit
            Left = 344
            Top = 74
            Width = 185
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 4
          end
          object dbeCognome: TDBEdit
            Left = 104
            Top = 74
            Width = 233
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COGNOME'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 3
          end
          object LookTitolo: TDBLookupComboBox
            Left = 8
            Top = 74
            Width = 89
            Height = 21
            DataField = 'TITOLO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Tipo_Titolo
            TabOrder = 2
          end
          object tpDataDiNasc: TDateTimePicker
            Left = 8
            Top = 122
            Width = 89
            Height = 21
            CalAlignment = dtaLeft
            Date = 36526.5416666667
            Time = 36526.5416666667
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 5
            OnChange = tpDataDiNascChange
          end
          object dbeDataDiNascita: TDBEdit
            Left = 8
            Top = 145
            Width = 13
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DATA_DI_NASCITA'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 6
            Visible = False
          end
          object LookNazione: TDBLookupComboBox
            Left = 104
            Top = 167
            Width = 233
            Height = 21
            DataField = 'NAZIONE_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_NAZIONE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Nazioni
            TabOrder = 9
          end
          object LookComune: TDBLookupComboBox
            Left = 104
            Top = 122
            Width = 233
            Height = 21
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_COMUNE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 7
          end
          object LookCAPdiNasc: TDBLookupComboBox
            Left = 344
            Top = 122
            Width = 65
            Height = 21
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_COMUNE'
            ListField = 'CAP'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 8
          end
        end
      end
      object tabs2: TTabSheet
        Caption = '&Indirizzo'
        ImageIndex = 1
        object paIndirizzo: TPanel
          Left = 0
          Top = 0
          Width = 548
          Height = 245
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laIndA1: TLabel
            Left = 25
            Top = 17
            Width = 38
            Height = 13
            Caption = 'Indirizzo'
          end
          object laComuneA1: TLabel
            Left = 25
            Top = 58
            Width = 39
            Height = 13
            Caption = 'Comune'
          end
          object laCAPA1: TLabel
            Left = 213
            Top = 58
            Width = 21
            Height = 13
            Caption = 'CAP'
          end
          object laProvA1: TLabel
            Left = 285
            Top = 58
            Width = 25
            Height = 13
            Caption = 'Prov.'
          end
          object laNazioneA1: TLabel
            Left = 357
            Top = 58
            Width = 39
            Height = 13
            Caption = 'Nazione'
          end
          object laLocal: TLabel
            Left = 314
            Top = 134
            Width = 37
            Height = 13
            Caption = 'Localita'
          end
          object laFaxA1: TLabel
            Left = 349
            Top = 157
            Width = 17
            Height = 13
            Caption = 'Fax'
          end
          object laInternetA1: TLabel
            Left = 221
            Top = 197
            Width = 36
            Height = 13
            Caption = 'Internet'
          end
          object laTel2A1: TLabel
            Left = 177
            Top = 157
            Width = 51
            Height = 13
            Caption = 'Telefono 2'
          end
          object laEMailA1: TLabel
            Left = 25
            Top = 197
            Width = 35
            Height = 13
            Caption = 'E - Mail'
          end
          object laTel1A1: TLabel
            Left = 25
            Top = 157
            Width = 51
            Height = 13
            Caption = 'Telefono 1'
          end
          object laPartIVA: TLabel
            Left = 25
            Top = 134
            Width = 50
            Height = 13
            Caption = 'Partita IVA'
          end
          object dbeIndirizzo_A1: TDBEdit
            Left = 21
            Top = 33
            Width = 501
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INDIRIZZO'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 0
          end
          object LookComune_A1: TDBLookupComboBox
            Left = 21
            Top = 73
            Width = 181
            Height = 21
            DataField = 'COMUNE_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_COMUNE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 1
          end
          object LookCAPA1: TDBLookupComboBox
            Left = 209
            Top = 73
            Width = 65
            Height = 21
            DataField = 'COMUNE_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_COMUNE'
            ListField = 'CAP'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 2
          end
          object LookProvA1: TDBLookupComboBox
            Left = 281
            Top = 73
            Width = 65
            Height = 21
            DataField = 'COMUNE_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_COMUNE'
            ListField = 'Provincia'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 3
          end
          object LookNazione_A1: TDBLookupComboBox
            Left = 353
            Top = 73
            Width = 169
            Height = 21
            DataField = 'NAZIONE_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_NAZIONE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Nazioni
            TabOrder = 4
          end
          object dbeLocalita: TDBEdit
            Left = 362
            Top = 130
            Width = 159
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOCALITA'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 6
          end
          object dbeFax_A1: TDBEdit
            Left = 345
            Top = 173
            Width = 177
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FAX'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 9
          end
          object dbeTel2_A1: TDBEdit
            Left = 173
            Top = 173
            Width = 165
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TEL2'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 8
          end
          object dbeInternet_A1: TDBEdit
            Left = 217
            Top = 214
            Width = 305
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INTERNET'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 11
          end
          object dbeEMail_A1: TDBEdit
            Left = 21
            Top = 214
            Width = 189
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMAIL'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 10
          end
          object dbeTel1_A1: TDBEdit
            Left = 21
            Top = 173
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TEL1'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 7
          end
          object dbePartIVA: TDBEdit
            Left = 89
            Top = 130
            Width = 159
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PARTITA_IVA'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 5
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '&Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 548
          Height = 245
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label2: TLabel
            Left = 26
            Top = 137
            Width = 60
            Height = 13
            Caption = 'Contropartita'
          end
          object laContoCorr: TLabel
            Left = 26
            Top = 205
            Width = 70
            Height = 13
            Caption = 'Conto corrente'
          end
          object laCAB: TLabel
            Left = 26
            Top = 159
            Width = 21
            Height = 13
            Caption = 'CAB'
          end
          object laABI: TLabel
            Left = 26
            Top = 182
            Width = 17
            Height = 13
            Caption = 'ABI'
          end
          object dbeContoCorr: TDBEdit
            Left = 114
            Top = 202
            Width = 228
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTO_CORRENTE'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 7
          end
          object LookPCNome: TDBLookupComboBox
            Left = 114
            Top = 133
            Width = 131
            Height = 21
            DataField = 'CONTROPARTITA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 1
          end
          object LookPCDescr: TDBLookupComboBox
            Left = 254
            Top = 133
            Width = 270
            Height = 21
            DataField = 'CONTROPARTITA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object LookABI: TDBLookupComboBox
            Left = 114
            Top = 179
            Width = 75
            Height = 21
            DataField = 'ABI_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_ABI'
            ListField = 'ID_ABI'
            ListSource = dmodAz.dsoTab_ABI
            TabOrder = 5
          end
          object LookCAB: TDBLookupComboBox
            Left = 114
            Top = 156
            Width = 75
            Height = 21
            DataField = 'CAB_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_CAB'
            ListField = 'ID_CAB'
            ListSource = dmodAz.dsoTab_CAB
            TabOrder = 3
            OnCloseUp = LookCABCloseUp
          end
          object LookCABDescr: TDBLookupComboBox
            Left = 198
            Top = 156
            Width = 326
            Height = 21
            DataField = 'CAB_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_CAB'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_CAB
            TabOrder = 4
            OnCloseUp = LookCABCloseUp
          end
          object LookABIDescr: TDBLookupComboBox
            Left = 198
            Top = 179
            Width = 326
            Height = 21
            DataField = 'ABI_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_ABI'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_ABI
            TabOrder = 6
          end
          object DBCtrlGrid2: TDBCtrlGrid
            Left = 13
            Top = 16
            Width = 521
            Height = 95
            ColCount = 1
            PanelHeight = 31
            PanelWidth = 505
            TabOrder = 0
            RowCount = 3
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Acquisto'
        ImageIndex = 3
        object paAcquisto: TPanel
          Left = 0
          Top = 0
          Width = 548
          Height = 245
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laPorto: TLabel
            Left = 20
            Top = 25
            Width = 25
            Height = 13
            Caption = 'Porto'
          end
          object laZona: TLabel
            Left = 20
            Top = 98
            Width = 25
            Height = 13
            Caption = 'Zona'
          end
          object laPiu: TLabel
            Left = 189
            Top = 131
            Width = 12
            Height = 13
            Caption = ' + '
          end
          object laSconto: TLabel
            Left = 20
            Top = 131
            Width = 69
            Height = 13
            Caption = 'Sconto restata'
          end
          object laSottozona: TLabel
            Left = 20
            Top = 60
            Width = 48
            Height = 13
            Caption = 'Sottozona'
          end
          object LookPorto: TDBLookupComboBox
            Left = 98
            Top = 22
            Width = 91
            Height = 21
            DataField = 'PORTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Porto
            TabOrder = 0
          end
          object LookPortoDescr: TDBLookupComboBox
            Left = 198
            Top = 22
            Width = 303
            Height = 21
            DataField = 'PORTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Porto
            TabOrder = 1
          end
          object LookZone: TDBLookupComboBox
            Left = 98
            Top = 94
            Width = 91
            Height = 21
            DataField = 'CODICE_ZONA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'ID_CODICE_ZONA'
            ListSource = dmodAz.dsoTab_Zone
            TabOrder = 4
          end
          object LookZoneDescr: TDBLookupComboBox
            Left = 198
            Top = 94
            Width = 303
            Height = 21
            DataField = 'CODICE_ZONA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Zone
            TabOrder = 5
          end
          object LookSottoZoneDescr: TDBLookupComboBox
            Left = 198
            Top = 57
            Width = 303
            Height = 21
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Sotto_Zone
            TabOrder = 3
            OnCloseUp = LookSottoZoneCloseUp
          end
          object LookSottoZone: TDBLookupComboBox
            Left = 98
            Top = 57
            Width = 91
            Height = 21
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'CODICE_ZONA_ID'
            ListSource = dmodAz.dsoTab_Sotto_Zone
            TabOrder = 2
            OnCloseUp = LookSottoZoneCloseUp
          end
          object dbeSconto2: TDBEdit
            Left = 211
            Top = 128
            Width = 76
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA2'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 7
          end
          object dbeSconto1: TDBEdit
            Left = 98
            Top = 128
            Width = 78
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA1'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 6
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri &Dati'
        ImageIndex = 5
        object paAltriDati: TPanel
          Left = 0
          Top = 0
          Width = 548
          Height = 245
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label3: TLabel
            Left = 29
            Top = 20
            Width = 30
            Height = 13
            Caption = 'Valuta'
          end
          object Label4: TLabel
            Left = 29
            Top = 46
            Width = 54
            Height = 13
            Caption = 'Pagamento'
          end
          object Label7: TLabel
            Left = 254
            Top = 100
            Width = 69
            Height = 13
            Caption = 'Rischio cliente'
          end
          object Label6: TLabel
            Left = 29
            Top = 100
            Width = 20
            Height = 13
            Caption = 'Fido'
          end
          object Label9: TLabel
            Left = 100
            Top = 144
            Width = 108
            Height = 13
            Caption = 'Escludi dalle scadenze'
          end
          object Label10: TLabel
            Left = 249
            Top = 144
            Width = 80
            Height = 13
            Caption = 'Giorno scadenza'
          end
          object laConrag: TLabel
            Left = 29
            Top = 73
            Width = 60
            Height = 13
            Caption = 'Codice ragg.'
          end
          object LookMoneteCod: TDBLookupComboBox
            Left = 101
            Top = 16
            Width = 79
            Height = 21
            DataField = 'MONETA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_MONETE'
            ListField = 'ID_MONETE'
            ListSource = dmodPub.dsoTab_Monete
            TabOrder = 0
          end
          object LookMoneteDescr: TDBLookupComboBox
            Left = 189
            Top = 16
            Width = 273
            Height = 21
            DataField = 'MONETA_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_MONETE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Monete
            TabOrder = 1
          end
          object LookPagamDescr: TDBLookupComboBox
            Left = 189
            Top = 43
            Width = 273
            Height = 21
            DataField = 'PAGAMENTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_PAGAMENTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Pagamenti
            TabOrder = 3
          end
          object LookPagamCod: TDBLookupComboBox
            Left = 101
            Top = 43
            Width = 79
            Height = 21
            DataField = 'PAGAMENTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'ID_PAGAMENTO'
            ListField = 'ID_PAGAMENTO'
            ListSource = dmodAz.dsoTab_Pagamenti
            TabOrder = 2
          end
          object dbeRischioCli: TDBEdit
            Left = 332
            Top = 97
            Width = 129
            Height = 21
            DataField = 'RISCHIO'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 7
          end
          object dbeFIDO: TDBEdit
            Left = 101
            Top = 97
            Width = 140
            Height = 21
            DataField = 'FIDO'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 6
          end
          object LookMese1: TDBLookupComboBox
            Left = 100
            Top = 163
            Width = 137
            Height = 21
            DataField = 'ESCLUDI_MESE1'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Mesi
            TabOrder = 8
          end
          object LookMese2: TDBLookupComboBox
            Left = 100
            Top = 190
            Width = 137
            Height = 21
            DataField = 'ESCLUDI_MESE2'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Mesi
            TabOrder = 10
          end
          object dbeGG2: TDBEdit
            Left = 249
            Top = 190
            Width = 37
            Height = 21
            DataField = 'GG_SCADENZA2'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 11
          end
          object dbeGG1: TDBEdit
            Left = 249
            Top = 163
            Width = 37
            Height = 21
            DataField = 'GG_SCADENZA1'
            DataSource = dmodAz.dsoqTabFor
            TabOrder = 9
          end
          object LookCodRagg: TDBLookupComboBox
            Left = 101
            Top = 70
            Width = 79
            Height = 21
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Ragg_Cli_For
            TabOrder = 4
          end
          object LookCodRaggDescr: TDBLookupComboBox
            Left = 189
            Top = 70
            Width = 273
            Height = 21
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dmodAz.dsoqTabFor
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Ragg_Cli_For
            TabOrder = 5
          end
        end
      end
    end
  end
end
