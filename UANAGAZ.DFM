inherited fAnagAz: TfAnagAz
  Left = 222
  Top = 87
  Caption = 'Anagrafica Azienda'
  ClientHeight = 450
  ClientWidth = 555
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Left = 456
    Top = 264
    Width = 25
    Height = 24
    Align = alNone
    Visible = False
  end
  inherited tbarControl: TToolBar
    Width = 555
  end
  object paBack: TPanel
    Left = 0
    Top = 27
    Width = 555
    Height = 423
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object pctrlAnag: TPageControl
      Left = 1
      Top = 1
      Width = 553
      Height = 421
      ActivePage = tabs1
      Align = alClient
      Style = tsFlatButtons
      TabIndex = 0
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Dati Anagrafici'
        object paDatiAnag: TPanel
          Left = 0
          Top = 0
          Width = 545
          Height = 387
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laCodAz: TLabel
            Left = 12
            Top = 12
            Width = 110
            Height = 16
            Caption = 'Codice Azienda'
          end
          object laCodFisc: TLabel
            Left = 12
            Top = 56
            Width = 105
            Height = 16
            Caption = 'Codice Fiscale'
          end
          object laPartitaIVA: TLabel
            Left = 212
            Top = 56
            Width = 74
            Height = 16
            Caption = 'Partita IVA'
          end
          object laRagSoc: TLabel
            Left = 12
            Top = 104
            Width = 237
            Height = 16
            Caption = 'Denominazione / Ragione Sociale'
          end
          object laTitolo: TLabel
            Left = 12
            Top = 152
            Width = 41
            Height = 16
            Caption = 'Titolo'
          end
          object laDataDiNasc: TLabel
            Left = 12
            Top = 200
            Width = 105
            Height = 16
            Caption = 'Data di nascita'
          end
          object laCodISO: TLabel
            Left = 12
            Top = 248
            Width = 79
            Height = 16
            Caption = 'Codice ISO'
          end
          object laNazione: TLabel
            Left = 108
            Top = 248
            Width = 58
            Height = 16
            Caption = 'Nazione'
          end
          object laComuneDiNasc: TLabel
            Left = 108
            Top = 200
            Width = 133
            Height = 16
            Caption = 'Comune Di Nascita'
          end
          object laCognome: TLabel
            Left = 108
            Top = 152
            Width = 67
            Height = 16
            Caption = 'Cognome'
          end
          object laNome: TLabel
            Left = 348
            Top = 152
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object laSesso: TLabel
            Left = 392
            Top = 56
            Width = 45
            Height = 16
            Caption = 'Sesso'
          end
          object laCAPdiNasc: TLabel
            Left = 348
            Top = 200
            Width = 31
            Height = 16
            Caption = 'CAP'
          end
          object dbeCodAz: TDBEdit
            Left = 8
            Top = 28
            Width = 113
            Height = 24
            CharCase = ecUpperCase
            DataField = 'ID_AZIENDA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 0
          end
          object dbeCodFisc: TDBEdit
            Left = 8
            Top = 72
            Width = 189
            Height = 24
            CharCase = ecUpperCase
            DataField = 'CODICE_FISCALE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 1
          end
          object dbePartIVA: TDBEdit
            Left = 208
            Top = 72
            Width = 165
            Height = 24
            CharCase = ecUpperCase
            DataField = 'PARTITA_IVA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 2
          end
          object dbeRagSoc: TDBEdit
            Left = 8
            Top = 120
            Width = 521
            Height = 24
            CharCase = ecUpperCase
            DataField = 'DENOMINAZIONE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 4
          end
          object LookTitolo: TDBLookupComboBox
            Left = 8
            Top = 168
            Width = 89
            Height = 24
            DataField = 'TITOLO_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Tipo_Titolo
            TabOrder = 5
          end
          object dbeCognome: TDBEdit
            Left = 104
            Top = 168
            Width = 233
            Height = 24
            CharCase = ecUpperCase
            DataField = 'COGNOME'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 6
          end
          object LookCodISO: TDBLookupComboBox
            Left = 8
            Top = 264
            Width = 89
            Height = 24
            DataField = 'CODICE_ISO_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'ID_ISO'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Codici_ISO
            TabOrder = 10
          end
          object LookNazione: TDBLookupComboBox
            Left = 104
            Top = 264
            Width = 233
            Height = 24
            DataField = 'NAZIONE_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'ID_NAZIONE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Nazioni
            TabOrder = 11
          end
          object dbeNome: TDBEdit
            Left = 344
            Top = 168
            Width = 185
            Height = 24
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 7
          end
          object LookComune: TDBLookupComboBox
            Left = 104
            Top = 216
            Width = 233
            Height = 24
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'ID_COMUNE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 8
          end
          object dbeDataDiNascita: TDBEdit
            Left = 8
            Top = 216
            Width = 85
            Height = 24
            CharCase = ecUpperCase
            DataField = 'DATA_DI_NASCITA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 12
          end
          object LookSesso: TDBLookupComboBox
            Left = 384
            Top = 72
            Width = 145
            Height = 24
            DataField = 'SESSO_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Sesso
            TabOrder = 3
          end
          object LookCAPdiNasc: TDBLookupComboBox
            Left = 344
            Top = 216
            Width = 65
            Height = 24
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'ID_COMUNE'
            ListField = 'CAP'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 9
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Indirizzi A'
        ImageIndex = 1
        object paIndA: TPanel
          Left = 0
          Top = 0
          Width = 545
          Height = 387
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object gboxSedeA1: TGroupBox
            Left = 12
            Top = 4
            Width = 521
            Height = 182
            Caption = 'Sede della Ditta o Sede Legale'
            TabOrder = 0
            object laIndA1: TLabel
              Left = 12
              Top = 17
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object laComuneA1: TLabel
              Left = 12
              Top = 58
              Width = 57
              Height = 16
              Caption = 'Comune'
            end
            object laNazioneA1: TLabel
              Left = 344
              Top = 58
              Width = 58
              Height = 16
              Caption = 'Nazione'
            end
            object laFaxA1: TLabel
              Left = 336
              Top = 98
              Width = 26
              Height = 16
              Caption = 'Fax'
            end
            object laInternetA1: TLabel
              Left = 208
              Top = 139
              Width = 52
              Height = 16
              Caption = 'Internet'
            end
            object laEMailA1: TLabel
              Left = 12
              Top = 139
              Width = 53
              Height = 16
              Caption = 'E - Mail'
            end
            object laTel1A1: TLabel
              Left = 12
              Top = 98
              Width = 75
              Height = 16
              Caption = 'Telefono 1'
            end
            object laTel2A1: TLabel
              Left = 164
              Top = 98
              Width = 75
              Height = 16
              Caption = 'Telefono 2'
            end
            object laCAPA1: TLabel
              Left = 200
              Top = 58
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object laProvA1: TLabel
              Left = 272
              Top = 58
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object dbeIndirizzo_A1: TDBEdit
              Left = 8
              Top = 33
              Width = 501
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INDIRIZZO_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 0
            end
            object LookNazione_A1: TDBLookupComboBox
              Left = 340
              Top = 73
              Width = 169
              Height = 24
              DataField = 'NAZIONE_A1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_NAZIONE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Nazioni
              TabOrder = 4
            end
            object dbeFax_A1: TDBEdit
              Left = 332
              Top = 115
              Width = 177
              Height = 24
              CharCase = ecUpperCase
              DataField = 'FAX_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 7
            end
            object dbeInternet_A1: TDBEdit
              Left = 204
              Top = 155
              Width = 305
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INTERNET_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 9
            end
            object dbeEMail_A1: TDBEdit
              Left = 8
              Top = 155
              Width = 189
              Height = 24
              CharCase = ecUpperCase
              DataField = 'EMAIL_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 8
            end
            object dbeTel1_A1: TDBEdit
              Left = 8
              Top = 115
              Width = 145
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL1_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 5
            end
            object LookComune_A1: TDBLookupComboBox
              Left = 8
              Top = 73
              Width = 181
              Height = 24
              DataField = 'COMUNE_A1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 1
            end
            object dbeTel2_A1: TDBEdit
              Left = 160
              Top = 115
              Width = 165
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL2_A1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 6
            end
            object LookCAPA1: TDBLookupComboBox
              Left = 196
              Top = 73
              Width = 65
              Height = 24
              DataField = 'COMUNE_A1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'CAP'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 2
            end
            object LookProvA1: TDBLookupComboBox
              Left = 268
              Top = 73
              Width = 65
              Height = 24
              DataField = 'COMUNE_A1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'Provincia'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 3
            end
          end
          object gboxDomFiscA2: TGroupBox
            Left = 12
            Top = 189
            Width = 521
            Height = 188
            Caption = 'Domiciclio Fiscale'
            TabOrder = 1
            object Label2: TLabel
              Left = 12
              Top = 17
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object Label3: TLabel
              Left = 12
              Top = 58
              Width = 57
              Height = 16
              Caption = 'Comune'
            end
            object Label4: TLabel
              Left = 12
              Top = 98
              Width = 75
              Height = 16
              Caption = 'Telefono 1'
            end
            object Label5: TLabel
              Left = 12
              Top = 139
              Width = 53
              Height = 16
              Caption = 'E - Mail'
            end
            object Label6: TLabel
              Left = 208
              Top = 139
              Width = 52
              Height = 16
              Caption = 'Internet'
            end
            object Label7: TLabel
              Left = 164
              Top = 98
              Width = 75
              Height = 16
              Caption = 'Telefono 2'
            end
            object Label10: TLabel
              Left = 344
              Top = 58
              Width = 58
              Height = 16
              Caption = 'Nazione'
            end
            object Label11: TLabel
              Left = 336
              Top = 98
              Width = 26
              Height = 16
              Caption = 'Fax'
            end
            object laCAPA2: TLabel
              Left = 200
              Top = 58
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object laProvA2: TLabel
              Left = 272
              Top = 58
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object dbeIndirizzo_A2: TDBEdit
              Left = 8
              Top = 33
              Width = 501
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INDIRIZZO_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 0
            end
            object LookComune_A2: TDBLookupComboBox
              Left = 8
              Top = 73
              Width = 181
              Height = 24
              DataField = 'COMUNE_A2_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 1
            end
            object dbeTel1_A2: TDBEdit
              Left = 8
              Top = 115
              Width = 145
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL1_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 5
            end
            object dbeEMail_A2: TDBEdit
              Left = 8
              Top = 155
              Width = 189
              Height = 24
              CharCase = ecUpperCase
              DataField = 'EMAIL_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 8
            end
            object dbeInternet_A2: TDBEdit
              Left = 204
              Top = 155
              Width = 305
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INTERNET_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 9
            end
            object dbeTel2_A2: TDBEdit
              Left = 160
              Top = 115
              Width = 165
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL2_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 6
            end
            object LookNazione_A2: TDBLookupComboBox
              Left = 340
              Top = 73
              Width = 169
              Height = 24
              DataField = 'NAZIONE_A2_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_NAZIONE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Nazioni
              TabOrder = 4
            end
            object dbeFax_A2: TDBEdit
              Left = 332
              Top = 115
              Width = 177
              Height = 24
              CharCase = ecUpperCase
              DataField = 'FAX_A2'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 7
            end
            object LookCAPA2: TDBLookupComboBox
              Left = 196
              Top = 73
              Width = 65
              Height = 24
              DataField = 'COMUNE_A2_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'CAP'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 2
            end
            object LookProvA2: TDBLookupComboBox
              Left = 268
              Top = 73
              Width = 65
              Height = 24
              DataField = 'COMUNE_A2_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'Provincia'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 3
            end
          end
        end
      end
      object tabs3: TTabSheet
        Caption = 'Indirizzi B'
        ImageIndex = 2
        object paIndB: TPanel
          Left = 0
          Top = 0
          Width = 545
          Height = 387
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object gboxUbicDiAttivA3: TGroupBox
            Left = 12
            Top = 4
            Width = 521
            Height = 182
            Caption = 'Ubicazione dell'#39'Attivita'
            TabOrder = 0
            object Label12: TLabel
              Left = 12
              Top = 17
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object laCAPB1: TLabel
              Left = 12
              Top = 58
              Width = 57
              Height = 16
              Caption = 'Comune'
            end
            object Label14: TLabel
              Left = 12
              Top = 98
              Width = 63
              Height = 16
              Caption = 'Telefono'
            end
            object Label15: TLabel
              Left = 12
              Top = 139
              Width = 53
              Height = 16
              Caption = 'E - Mail'
            end
            object Label16: TLabel
              Left = 212
              Top = 139
              Width = 52
              Height = 16
              Caption = 'Internet'
            end
            object Label20: TLabel
              Left = 368
              Top = 58
              Width = 58
              Height = 16
              Caption = 'Nazione'
            end
            object Label21: TLabel
              Left = 212
              Top = 98
              Width = 26
              Height = 16
              Caption = 'Fax'
            end
            object Label8: TLabel
              Left = 216
              Top = 58
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object laProvB1: TLabel
              Left = 296
              Top = 58
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object dbeIndirizzo_B1: TDBEdit
              Left = 8
              Top = 33
              Width = 501
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INDIRIZZO_B1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 0
            end
            object LookComune_B1: TDBLookupComboBox
              Left = 8
              Top = 73
              Width = 197
              Height = 24
              DataField = 'COMUNE_B1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 1
            end
            object dbeTel1_B1: TDBEdit
              Left = 8
              Top = 115
              Width = 193
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL1_B1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 5
            end
            object dbeEMail_B1: TDBEdit
              Left = 8
              Top = 155
              Width = 193
              Height = 24
              CharCase = ecUpperCase
              DataField = 'EMAIL_B1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 7
            end
            object dbeInternet_B1: TDBEdit
              Left = 208
              Top = 155
              Width = 301
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INTERNET_B1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 8
            end
            object LookNazione_B1: TDBLookupComboBox
              Left = 364
              Top = 73
              Width = 145
              Height = 24
              DataField = 'NAZIONE_B1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_NAZIONE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Nazioni
              TabOrder = 4
            end
            object dbeFax_B1: TDBEdit
              Left = 208
              Top = 115
              Width = 177
              Height = 24
              CharCase = ecUpperCase
              DataField = 'FAX_B1'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 6
            end
            object LookCAPB1: TDBLookupComboBox
              Left = 212
              Top = 73
              Width = 73
              Height = 24
              DataField = 'COMUNE_B1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'CAP'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 2
            end
            object LookProvB1: TDBLookupComboBox
              Left = 292
              Top = 73
              Width = 65
              Height = 24
              DataField = 'COMUNE_B1_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'Provincia'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 3
            end
          end
          object gboxDeposDep: TGroupBox
            Left = 12
            Top = 189
            Width = 521
            Height = 186
            Caption = 'Depositario scritture contabili'
            TabOrder = 1
            object laIndB2: TLabel
              Left = 12
              Top = 98
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object laIndB2Comune: TLabel
              Left = 228
              Top = 98
              Width = 57
              Height = 16
              Caption = 'Comune'
            end
            object laIndB2Nazione: TLabel
              Left = 12
              Top = 142
              Width = 58
              Height = 16
              Caption = 'Nazione'
            end
            object laIndB2Tel: TLabel
              Left = 208
              Top = 142
              Width = 63
              Height = 16
              Caption = 'Telefono'
            end
            object laIndB2Fax: TLabel
              Left = 356
              Top = 142
              Width = 26
              Height = 16
              Caption = 'Fax'
            end
            object laIndB2RagSoc: TLabel
              Left = 12
              Top = 58
              Width = 196
              Height = 16
              Caption = 'Cognome / Ragione Sociale'
            end
            object laIndB2CodFisc: TLabel
              Left = 12
              Top = 17
              Width = 105
              Height = 16
              Caption = 'Codice Fiscale'
            end
            object laIndB2PartitaIVA: TLabel
              Left = 188
              Top = 17
              Width = 86
              Height = 16
              Caption = 'Partita I.V.A.'
            end
            object laIndB2Nome: TLabel
              Left = 348
              Top = 58
              Width = 42
              Height = 16
              Caption = 'Nome'
            end
            object laCAPDep: TLabel
              Left = 384
              Top = 98
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object laProvDep: TLabel
              Left = 460
              Top = 98
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object dbeCodFiscDep: TDBEdit
              Left = 8
              Top = 33
              Width = 169
              Height = 24
              CharCase = ecUpperCase
              DataField = 'CODICE_FISCALE_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 0
            end
            object dbePartIVADep: TDBEdit
              Left = 184
              Top = 33
              Width = 157
              Height = 24
              CharCase = ecUpperCase
              DataField = 'PARTITA_IVA_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 1
            end
            object dbeCognomeDep: TDBEdit
              Left = 8
              Top = 73
              Width = 329
              Height = 24
              CharCase = ecUpperCase
              DataField = 'COGNOME_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 2
            end
            object dbeNomeDep: TDBEdit
              Left = 344
              Top = 73
              Width = 165
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NOME_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 3
            end
            object dbeIndDep: TDBEdit
              Left = 8
              Top = 115
              Width = 209
              Height = 24
              CharCase = ecUpperCase
              DataField = 'INDIRIZZO_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 4
            end
            object LookComuneDep: TDBLookupComboBox
              Left = 224
              Top = 115
              Width = 149
              Height = 24
              DataField = 'COMUNE_DEP_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 5
            end
            object LookNazioneDep: TDBLookupComboBox
              Left = 8
              Top = 158
              Width = 193
              Height = 24
              DataField = 'NAZIONE_DEP_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_NAZIONE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Nazioni
              TabOrder = 8
            end
            object dbeTelDep: TDBEdit
              Left = 204
              Top = 158
              Width = 145
              Height = 24
              CharCase = ecUpperCase
              DataField = 'TEL1_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 9
            end
            object dbeFaxDep: TDBEdit
              Left = 352
              Top = 158
              Width = 157
              Height = 24
              CharCase = ecUpperCase
              DataField = 'FAX_DEP'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 10
            end
            object dbcboxTenutaParzialeDep: TDBCheckBox
              Left = 352
              Top = 33
              Width = 137
              Height = 17
              Caption = 'Tenuta Parziale'
              DataField = 'TENUTA_PARZIALE'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 11
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object LookCAPDep: TDBLookupComboBox
              Left = 380
              Top = 115
              Width = 65
              Height = 24
              DataField = 'COMUNE_DEP_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'CAP'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 6
            end
            object LookProvDep: TDBLookupComboBox
              Left = 452
              Top = 115
              Width = 57
              Height = 24
              DataField = 'COMUNE_DEP_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'Provincia'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 7
            end
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Attivit'#224
        ImageIndex = 3
        object paAttivita: TPanel
          Left = 0
          Top = 0
          Width = 545
          Height = 387
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laAttCodice: TLabel
            Left = 16
            Top = 76
            Width = 50
            Height = 16
            Caption = 'Codice'
          end
          object laAttDescr: TLabel
            Left = 108
            Top = 76
            Width = 83
            Height = 16
            Caption = 'Descrizione'
          end
          object gboxCCIAA: TGroupBox
            Left = 11
            Top = 117
            Width = 521
            Height = 251
            Caption = 'Informazioni CCIAA'
            TabOrder = 4
            object laCCIAAComune: TLabel
              Left = 20
              Top = 17
              Width = 57
              Height = 16
              Caption = 'Comune'
            end
            object laCCIAARegImp: TLabel
              Left = 16
              Top = 58
              Width = 83
              Height = 16
              Caption = 'N'#176' Reg.Imp.'
            end
            object laCCIAAREA: TLabel
              Left = 148
              Top = 58
              Width = 52
              Height = 16
              Caption = 'N'#176' REA'
            end
            object laCCIAADataIscr: TLabel
              Left = 244
              Top = 58
              Width = 104
              Height = 16
              Caption = 'Data iscrizione'
            end
            object laCAPCCIAA: TLabel
              Left = 176
              Top = 17
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object laProvCCIAA: TLabel
              Left = 264
              Top = 17
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object gbozAltriDati: TGroupBox
              Left = 12
              Top = 99
              Width = 497
              Height = 146
              Caption = 'Altri Dati'
              TabOrder = 6
              object laADDataCost: TLabel
                Left = 116
                Top = 21
                Width = 120
                Height = 16
                Caption = 'Data costituzione'
              end
              object laADTermLeg: TLabel
                Left = 116
                Top = 71
                Width = 285
                Height = 16
                Caption = 'Termine leg. o statutario approv. bilancio'
              end
              object laADDataAppBil: TLabel
                Left = 116
                Top = 46
                Width = 150
                Height = 16
                Caption = 'Data approv. bilancio'
              end
              object laADDataTerm: TLabel
                Left = 396
                Top = 21
                Width = 89
                Height = 16
                Caption = 'Data termine'
              end
              object laADCapSoc: TLabel
                Left = 20
                Top = 94
                Width = 114
                Height = 16
                Caption = 'Capitale sociale'
              end
              object dbeCapitaleSociale: TDBEdit
                Left = 16
                Top = 110
                Width = 293
                Height = 24
                CharCase = ecUpperCase
                DataField = 'CAP_SOC'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 0
              end
              object dbeDataCost: TDBEdit
                Left = 20
                Top = 18
                Width = 81
                Height = 24
                CharCase = ecUpperCase
                DataField = 'DATA_COST_CCIAA'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 1
              end
              object dbeDataAppBil: TDBEdit
                Left = 20
                Top = 42
                Width = 81
                Height = 24
                CharCase = ecUpperCase
                DataField = 'DATA_APP_BILANCIO'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 2
              end
              object dbeDataTermLegCCIAA: TDBEdit
                Left = 20
                Top = 67
                Width = 81
                Height = 24
                CharCase = ecUpperCase
                DataField = 'DATA_TERM_LEG_APP_BILANCIO'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 3
              end
              object dbeDataTermCCIAA: TDBEdit
                Left = 304
                Top = 18
                Width = 85
                Height = 24
                CharCase = ecUpperCase
                DataField = 'DATA_TERM_CCIAA'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 4
              end
              object dbcboxInterversCCIAA: TDBCheckBox
                Left = 372
                Top = 110
                Width = 109
                Height = 17
                Caption = 'Inter. versato'
                DataField = 'VERSATO'
                DataSource = dmodPub.dsoTab_Anagrafica_Aziende
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
            object dbeNumRegImpesa: TDBEdit
              Left = 16
              Top = 73
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NR_ISC_REG_IMP_CCIAA'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 3
            end
            object dbeNREA: TDBEdit
              Left = 140
              Top = 73
              Width = 85
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NUM_REA'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 4
            end
            object LookComuneCCIAA: TDBLookupComboBox
              Left = 16
              Top = 33
              Width = 145
              Height = 24
              DataField = 'COMUNE_CCIAA_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 0
            end
            object dbeDataIscrREA: TDBEdit
              Left = 244
              Top = 73
              Width = 73
              Height = 24
              CharCase = ecUpperCase
              DataField = 'DATA_ISCR_REA'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              TabOrder = 5
            end
            object LookCAPCCIAA: TDBLookupComboBox
              Left = 168
              Top = 33
              Width = 81
              Height = 24
              DataField = 'COMUNE_CCIAA_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'CAP'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 1
            end
            object LookProvCCIAA: TDBLookupComboBox
              Left = 260
              Top = 33
              Width = 65
              Height = 24
              DataField = 'COMUNE_CCIAA_ID'
              DataSource = dmodPub.dsoTab_Anagrafica_Aziende
              KeyField = 'ID_COMUNE'
              ListField = 'Provincia'
              ListSource = dmodPub.dsoTab_Comuni
              TabOrder = 2
            end
          end
          object LookAttivitaID: TDBLookupComboBox
            Left = 12
            Top = 92
            Width = 85
            Height = 24
            DataField = 'ATTIVITA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodPub.dsoTab_Attivita
            TabOrder = 2
          end
          object LookAttivitaDescr: TDBLookupComboBox
            Left = 104
            Top = 92
            Width = 425
            Height = 24
            DataField = 'ATTIVITA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Attivita
            TabOrder = 3
          end
          object dbragTipoImpresa: TDBRadioGroup
            Left = 12
            Top = 8
            Width = 185
            Height = 41
            Caption = 'Tipo impresa'
            Columns = 2
            DataField = 'TIPO_IMPRESA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            Items.Strings = (
              'Impresa'
              'Professionista')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
          end
          object dbragRegCont: TDBRadioGroup
            Left = 204
            Top = 8
            Width = 189
            Height = 41
            Caption = 'Regime contabile'
            Columns = 2
            DataField = 'REGIME_CONTABILE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            Items.Strings = (
              'Ordinario'
              'Semplificato')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1')
          end
          object dbcboxAttArtigian: TDBCheckBox
            Left = 404
            Top = 12
            Width = 125
            Height = 17
            Caption = 'Att. artigianale'
            DataField = 'ARTIGIANO'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcboxAttStagion: TDBCheckBox
            Left = 404
            Top = 32
            Width = 129
            Height = 17
            Caption = 'Att. stagionale'
            DataField = 'STAGIONALE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcboxBaseUnica: TDBCheckBox
            Left = 16
            Top = 56
            Width = 225
            Height = 17
            Caption = 'Base unica acquisti ventilaz.'
            DataField = 'BASE_UNICA_ACQ_VENT'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcboxPiuAttivita: TDBCheckBox
            Left = 244
            Top = 56
            Width = 233
            Height = 17
            Caption = 'Attivit'#224' esercitata in piu luoghi'
            DataField = 'PIU_ATTIVITA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Dati Fiscali'
        ImageIndex = 4
        object paDatiFisc: TPanel
          Left = 0
          Top = 0
          Width = 545
          Height = 387
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laUffIVA: TLabel
            Left = 12
            Top = 12
            Width = 73
            Height = 16
            Caption = 'Ufficio IVA'
          end
          object laEsattoria: TLabel
            Left = 12
            Top = 56
            Width = 63
            Height = 16
            Caption = 'Esattoria'
          end
          object laNatGiur: TLabel
            Left = 12
            Top = 104
            Width = 113
            Height = 16
            Caption = 'Natura Giuridica'
          end
          object laStatSoc: TLabel
            Left = 364
            Top = 216
            Width = 131
            Height = 16
            Caption = 'Stato della societ'#224
          end
          object laSituazSoc: TLabel
            Left = 364
            Top = 188
            Width = 167
            Height = 16
            Caption = 'Situazione della societ'#224
          end
          object laCodConces: TLabel
            Left = 12
            Top = 152
            Width = 142
            Height = 16
            Caption = 'Codice concessione'
          end
          object laNContoFisc: TLabel
            Left = 200
            Top = 152
            Width = 112
            Height = 16
            Caption = 'N" Conto fiscale'
          end
          object Label1: TLabel
            Left = 12
            Top = 172
            Width = 77
            Height = 16
            Caption = 'Sede INPS'
          end
          object laCodSIA: TLabel
            Left = 12
            Top = 216
            Width = 78
            Height = 16
            Caption = 'Codice SIA'
          end
          object laDataAutor: TLabel
            Left = 164
            Top = 264
            Width = 130
            Height = 16
            Caption = 'Data autorizazione'
          end
          object laProvIndDiFinan: TLabel
            Left = 104
            Top = 216
            Width = 186
            Height = 16
            Caption = 'Prov. intendenza di finanza'
          end
          object laNAutor: TLabel
            Left = 12
            Top = 264
            Width = 115
            Height = 16
            Caption = 'N" Autorizazione'
          end
          object dbeEsattoria: TDBEdit
            Left = 8
            Top = 72
            Width = 277
            Height = 24
            CharCase = ecUpperCase
            DataField = 'ESATTORIA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 1
          end
          object dbeUfficioIVA: TDBEdit
            Left = 8
            Top = 28
            Width = 277
            Height = 24
            CharCase = ecUpperCase
            DataField = 'UFFICIO_IVA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 0
          end
          object dbeCodiceSIA: TDBEdit
            Left = 8
            Top = 232
            Width = 85
            Height = 24
            CharCase = ecUpperCase
            DataField = 'CODICE_SIA'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 11
          end
          object dbeCodiceConcessione: TDBEdit
            Left = 120
            Top = 148
            Width = 65
            Height = 24
            CharCase = ecUpperCase
            DataField = 'CODICE_CONCESSIONE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 5
          end
          object dbeNContoFiscale: TDBEdit
            Left = 292
            Top = 148
            Width = 233
            Height = 24
            CharCase = ecUpperCase
            DataField = 'CCFISCALE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 6
          end
          object LookSedeINPSCod: TDBLookupComboBox
            Left = 8
            Top = 188
            Width = 85
            Height = 24
            DataField = 'SEDE_INPS_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodPub.dsoTab_INPS
            TabOrder = 7
          end
          object LookSeseINPSDescr: TDBLookupComboBox
            Left = 100
            Top = 188
            Width = 253
            Height = 24
            DataField = 'SEDE_INPS_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_INPS
            TabOrder = 8
          end
          object LookNatGiurCod: TDBLookupComboBox
            Left = 8
            Top = 120
            Width = 85
            Height = 24
            DataField = 'NATURA_GIURIDICA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodPub.dsoTab_Natura_Giuridica
            TabOrder = 3
          end
          object LookNatGiurDescr: TDBLookupComboBox
            Left = 100
            Top = 120
            Width = 425
            Height = 24
            DataField = 'NATURA_GIURIDICA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Natura_Giuridica
            TabOrder = 4
          end
          object dbeProvIntFin: TDBEdit
            Left = 100
            Top = 232
            Width = 253
            Height = 24
            CharCase = ecUpperCase
            DataField = 'PR_INT_FIN'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 12
          end
          object dbeNumAutor: TDBEdit
            Left = 100
            Top = 260
            Width = 53
            Height = 24
            CharCase = ecUpperCase
            DataField = 'NUM_INT_FIN'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 13
          end
          object dbcboxBolliVirtuali: TDBCheckBox
            Left = 388
            Top = 260
            Width = 133
            Height = 17
            Caption = 'Gestione bolle virtuali'
            DataField = 'GEST_BOLLI_VIRT'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 14
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
          end
          object dbeSituazioneSocieta: TDBEdit
            Left = 492
            Top = 184
            Width = 33
            Height = 24
            CharCase = ecUpperCase
            DataField = 'SITUAZIONE_SOCIETA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 9
          end
          object dbeStatoSocieta: TDBEdit
            Left = 492
            Top = 212
            Width = 33
            Height = 24
            CharCase = ecUpperCase
            DataField = 'STATO_SOCIETA_ID'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 10
          end
          object dbragTipoRegione: TDBRadioGroup
            Left = 300
            Top = 28
            Width = 225
            Height = 61
            Caption = 'Tipo Regione'
            Columns = 2
            DataField = 'TIPO_REGIONE'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            Items.Strings = (
              'statuto Ordinario'
              'statuto Speciale')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1')
          end
          object dbeDataAutor: TDBEdit
            Left = 260
            Top = 260
            Width = 93
            Height = 24
            CharCase = ecUpperCase
            DataField = 'DATA_INT_FIN'
            DataSource = dmodPub.dsoTab_Anagrafica_Aziende
            TabOrder = 15
          end
        end
      end
    end
  end
  object dsoAngAz: TDataSource
    Left = 382
    Top = 10
  end
end
