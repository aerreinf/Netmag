object fClientiDB: TfClientiDB
  Left = 204
  Top = 2
  BorderStyle = bsDialog
  Caption = 'Clienti'
  ClientHeight = 425
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Clienti: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoqTabCli
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_ClientiClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 590
    Height = 88
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
      DataField = 'ID_CLI_FOR'
      DataSource = dmodAz.dsoqTabCli
      TabOrder = 0
    end
    object dbeDenom: TDBEdit
      Left = 104
      Top = 29
      Width = 420
      Height = 21
      DataField = 'DENOMINAZIONE'
      DataSource = dmodAz.dsoqTabCli
      TabOrder = 1
    end
    object dbeDenom2: TDBEdit
      Left = 104
      Top = 52
      Width = 420
      Height = 21
      DataField = 'DENOMINAZIONE2'
      DataSource = dmodAz.dsoqTabCli
      TabOrder = 2
    end
  end
  object paDati: TPanel
    Left = 0
    Top = 129
    Width = 590
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pctrlDatiCliente: TPageControl
      Left = 0
      Top = 0
      Width = 590
      Height = 296
      ActivePage = tabs1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '&Anagrafica'
        object paAnagrafica: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laCodFisc: TLabel
            Left = 22
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Codice Fiscale'
          end
          object laSesso: TLabel
            Left = 258
            Top = 14
            Width = 29
            Height = 13
            Caption = 'Sesso'
          end
          object laTitolo: TLabel
            Left = 22
            Top = 74
            Width = 26
            Height = 13
            Caption = 'Titolo'
          end
          object laCognome: TLabel
            Left = 118
            Top = 74
            Width = 45
            Height = 13
            Caption = 'Cognome'
          end
          object laNome: TLabel
            Left = 358
            Top = 74
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object laDataDiNasc: TLabel
            Left = 22
            Top = 119
            Width = 71
            Height = 13
            Caption = 'Data di nascita'
          end
          object laComuneDiNasc: TLabel
            Left = 118
            Top = 119
            Width = 91
            Height = 13
            Caption = 'Comune Di Nascita'
          end
          object laCAPdiNasc: TLabel
            Left = 358
            Top = 119
            Width = 21
            Height = 13
            Caption = 'CAP'
          end
          object laNazione: TLabel
            Left = 118
            Top = 161
            Width = 39
            Height = 13
            Caption = 'Nazione'
          end
          object dbeCodFisc: TDBEdit
            Left = 18
            Top = 30
            Width = 188
            Height = 21
            DataField = 'CODICE_FISCALE'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 0
          end
          object LookSesso: TDBLookupComboBox
            Left = 251
            Top = 30
            Width = 145
            Height = 21
            DataField = 'SESSO'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Sesso
            TabOrder = 1
          end
          object LookTitolo: TDBLookupComboBox
            Left = 18
            Top = 90
            Width = 88
            Height = 21
            DataField = 'TITOLO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Tipo_Titolo
            TabOrder = 2
          end
          object dbeCognome: TDBEdit
            Left = 114
            Top = 90
            Width = 233
            Height = 21
            DataField = 'COGNOME'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 3
          end
          object dbeNome: TDBEdit
            Left = 353
            Top = 90
            Width = 186
            Height = 21
            DataField = 'NOME'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 4
          end
          object tpDataDiNasc: TDateTimePicker
            Left = 18
            Top = 135
            Width = 88
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
          object LookComune: TDBLookupComboBox
            Left = 114
            Top = 135
            Width = 233
            Height = 21
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_COMUNE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 6
          end
          object LookCAPdiNasc: TDBLookupComboBox
            Left = 353
            Top = 135
            Width = 65
            Height = 21
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_COMUNE'
            ListField = 'CAP'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 7
          end
          object LookNazione: TDBLookupComboBox
            Left = 114
            Top = 177
            Width = 233
            Height = 21
            DataField = 'NAZIONE_DI_NASCITA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_NAZIONE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Nazioni
            TabOrder = 8
          end
          object dbeDataDiNascita: TDBEdit
            Left = 18
            Top = 158
            Width = 13
            Height = 21
            DataField = 'DATA_DI_NASCITA'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 9
            Visible = False
          end
        end
      end
      object tabs2: TTabSheet
        Caption = '&Indirizzo'
        ImageIndex = 1
        object paIndirizzo: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
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
          object laTel1A1: TLabel
            Left = 25
            Top = 157
            Width = 51
            Height = 13
            Caption = 'Telefono 1'
          end
          object laTel2A1: TLabel
            Left = 177
            Top = 157
            Width = 51
            Height = 13
            Caption = 'Telefono 2'
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
          object laFaxA1: TLabel
            Left = 349
            Top = 157
            Width = 17
            Height = 13
            Caption = 'Fax'
          end
          object laEMailA1: TLabel
            Left = 25
            Top = 197
            Width = 35
            Height = 13
            Caption = 'E - Mail'
          end
          object laInternetA1: TLabel
            Left = 221
            Top = 197
            Width = 36
            Height = 13
            Caption = 'Internet'
          end
          object laPartIVA: TLabel
            Left = 25
            Top = 134
            Width = 50
            Height = 13
            Caption = 'Partita IVA'
          end
          object laLocal: TLabel
            Left = 314
            Top = 134
            Width = 37
            Height = 13
            Caption = 'Localita'
          end
          object dbeIndirizzo_A1: TDBEdit
            Left = 21
            Top = 33
            Width = 501
            Height = 21
            DataField = 'INDIRIZZO'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 0
          end
          object LookComune_A1: TDBLookupComboBox
            Left = 21
            Top = 73
            Width = 181
            Height = 21
            DataField = 'COMUNE_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_COMUNE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Comuni
            TabOrder = 1
          end
          object dbeTel1_A1: TDBEdit
            Left = 21
            Top = 173
            Width = 145
            Height = 21
            DataField = 'TEL1'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 7
          end
          object dbeTel2_A1: TDBEdit
            Left = 173
            Top = 173
            Width = 165
            Height = 21
            DataField = 'TEL2'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 8
          end
          object LookCAPA1: TDBLookupComboBox
            Left = 209
            Top = 73
            Width = 65
            Height = 21
            DataField = 'COMUNE_ID'
            DataSource = dmodAz.dsoqTabCli
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
            DataSource = dmodAz.dsoqTabCli
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
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_NAZIONE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Nazioni
            TabOrder = 4
          end
          object dbeFax_A1: TDBEdit
            Left = 345
            Top = 173
            Width = 177
            Height = 21
            DataField = 'FAX'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 9
          end
          object dbeEMail_A1: TDBEdit
            Left = 21
            Top = 214
            Width = 189
            Height = 21
            DataField = 'EMAIL'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 10
          end
          object dbeInternet_A1: TDBEdit
            Left = 217
            Top = 214
            Width = 305
            Height = 21
            DataField = 'INTERNET'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 11
          end
          object dbePartIVA: TDBEdit
            Left = 89
            Top = 130
            Width = 159
            Height = 21
            DataField = 'PARTITA_IVA'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 5
          end
          object dbeLocalita: TDBEdit
            Left = 362
            Top = 130
            Width = 159
            Height = 21
            DataField = 'LOCALITA'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 6
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '&Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
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
          object laCAB: TLabel
            Left = 26
            Top = 159
            Width = 21
            Height = 13
            Caption = 'CAB'
          end
          object laContoCorr: TLabel
            Left = 26
            Top = 205
            Width = 70
            Height = 13
            Caption = 'Conto corrente'
          end
          object laABI: TLabel
            Left = 26
            Top = 182
            Width = 17
            Height = 13
            Caption = 'ABI'
          end
          object LookPCNome: TDBLookupComboBox
            Left = 114
            Top = 133
            Width = 131
            Height = 21
            DataField = 'CONTROPARTITA_ID'
            DataSource = dmodAz.dsoqTabCli
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
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object LookCAB: TDBLookupComboBox
            Left = 114
            Top = 156
            Width = 75
            Height = 21
            DataField = 'CAB_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_CAB'
            ListField = 'ID_CAB'
            ListSource = dmodAz.dsoTab_CAB
            TabOrder = 3
            OnCloseUp = LookCABCloseUp
          end
          object LookCABDescr: TDBLookupComboBox
            Left = 196
            Top = 156
            Width = 326
            Height = 21
            DataField = 'CAB_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_CAB'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_CAB
            TabOrder = 4
            OnCloseUp = LookCABCloseUp
          end
          object dbeContoCorr: TDBEdit
            Left = 114
            Top = 202
            Width = 228
            Height = 21
            DataField = 'CONTO_CORRENTE'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 7
          end
          object LookABI: TDBLookupComboBox
            Left = 114
            Top = 179
            Width = 75
            Height = 21
            DataField = 'ABI_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_ABI'
            ListField = 'ID_ABI'
            ListSource = dmodAz.dsoTab_ABI
            TabOrder = 5
          end
          object LookABIDescr: TDBLookupComboBox
            Left = 198
            Top = 179
            Width = 326
            Height = 21
            DataField = 'ABI_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_ABI'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_ABI
            TabOrder = 6
          end
          object DBCtrlGrid2: TDBCtrlGrid
            Left = 13
            Top = 16
            Width = 553
            Height = 95
            ColCount = 1
            PanelHeight = 31
            PanelWidth = 537
            TabOrder = 0
            RowCount = 3
          end
        end
      end
      object tabs4: TTabSheet
        Caption = '&Vendita'
        ImageIndex = 3
        object paVendita: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laListino: TLabel
            Left = 13
            Top = 16
            Width = 30
            Height = 13
            Caption = 'Listino'
          end
          object laCat: TLabel
            Left = 20
            Top = 59
            Width = 45
            Height = 13
            Caption = 'Categoria'
          end
          object laAgente: TLabel
            Left = 20
            Top = 104
            Width = 34
            Height = 13
            Caption = 'Agente'
          end
          object laProvvigione: TLabel
            Left = 20
            Top = 127
            Width = 56
            Height = 13
            Caption = 'Provvigione'
          end
          object laSconto: TLabel
            Left = 20
            Top = 195
            Width = 69
            Height = 13
            Caption = 'Sconto restata'
          end
          object laZona: TLabel
            Left = 20
            Top = 174
            Width = 25
            Height = 13
            Caption = 'Zona'
          end
          object laSottozona: TLabel
            Left = 20
            Top = 151
            Width = 48
            Height = 13
            Caption = 'Sottozona'
          end
          object laPorto: TLabel
            Left = 20
            Top = 81
            Width = 25
            Height = 13
            Caption = 'Porto'
          end
          object laPiu: TLabel
            Left = 189
            Top = 195
            Width = 12
            Height = 13
            Caption = ' + '
          end
          object LookListino: TDBLookupComboBox
            Left = 62
            Top = 13
            Width = 95
            Height = 21
            DataField = 'CODICE_LISTINO'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            TabOrder = 0
          end
          object LookListinoDescr: TDBLookupComboBox
            Left = 166
            Top = 13
            Width = 332
            Height = 21
            DataField = 'CODICE_LISTINO'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            TabOrder = 1
          end
          object LookCat: TDBLookupComboBox
            Left = 98
            Top = 55
            Width = 91
            Height = 21
            DataField = 'CATEGORIA_CLIENTE_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Cat_Cli
            TabOrder = 2
          end
          object LookCatDescr: TDBLookupComboBox
            Left = 198
            Top = 55
            Width = 303
            Height = 21
            DataField = 'CATEGORIA_CLIENTE_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Cat_Cli
            TabOrder = 3
          end
          object LookPortoDescr: TDBLookupComboBox
            Left = 198
            Top = 78
            Width = 303
            Height = 21
            DataField = 'PORTO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Porto
            TabOrder = 5
          end
          object LookPorto: TDBLookupComboBox
            Left = 98
            Top = 78
            Width = 91
            Height = 21
            DataField = 'PORTO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Porto
            TabOrder = 4
          end
          object LookAgenteDescr: TDBLookupComboBox
            Left = 198
            Top = 101
            Width = 303
            Height = 21
            DataField = 'AGENTE_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Agenti
            TabOrder = 7
          end
          object LookAgente: TDBLookupComboBox
            Left = 98
            Top = 101
            Width = 91
            Height = 21
            DataField = 'AGENTE_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Agenti
            TabOrder = 6
          end
          object LookSottoZoneDescr: TDBLookupComboBox
            Left = 198
            Top = 147
            Width = 303
            Height = 21
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Sotto_Zone
            TabOrder = 11
            OnCloseUp = LookSottoZoneCloseUp
          end
          object LookSottoZone: TDBLookupComboBox
            Left = 98
            Top = 147
            Width = 91
            Height = 21
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'CODICE_ZONA_ID'
            ListSource = dmodAz.dsoTab_Sotto_Zone
            TabOrder = 10
            OnCloseUp = LookSottoZoneCloseUp
          end
          object LookZone: TDBLookupComboBox
            Left = 98
            Top = 170
            Width = 91
            Height = 21
            DataField = 'CODICE_ZONA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'ID_CODICE_ZONA'
            ListSource = dmodAz.dsoTab_Zone
            TabOrder = 12
          end
          object LookZoneDescr: TDBLookupComboBox
            Left = 198
            Top = 170
            Width = 303
            Height = 21
            DataField = 'CODICE_ZONA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Zone
            TabOrder = 13
          end
          object LookProvvigioneDescr: TDBLookupComboBox
            Left = 198
            Top = 124
            Width = 303
            Height = 21
            DataField = 'PROVVIGIONE'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Tipo_Provvigione
            TabOrder = 9
          end
          object LookProvvigione: TDBLookupComboBox
            Left = 98
            Top = 124
            Width = 91
            Height = 21
            DataField = 'PROVVIGIONE'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Tipo_Provvigione
            TabOrder = 8
          end
          object dbeSconto1: TDBEdit
            Left = 98
            Top = 192
            Width = 78
            Height = 21
            DataField = 'SCONTO_TESTATA1'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 14
          end
          object dbeSconto2: TDBEdit
            Left = 211
            Top = 192
            Width = 76
            Height = 21
            DataField = 'SCONTO_TESTATA2'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 15
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri &Dati'
        ImageIndex = 4
        object paAltriDati: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laMoneta: TLabel
            Left = 29
            Top = 20
            Width = 36
            Height = 13
            Caption = 'Moneta'
          end
          object LaPagamento: TLabel
            Left = 29
            Top = 46
            Width = 54
            Height = 13
            Caption = 'Pagamento'
          end
          object laConrag: TLabel
            Left = 29
            Top = 73
            Width = 60
            Height = 13
            Caption = 'Codice ragg.'
          end
          object Label6: TLabel
            Left = 29
            Top = 100
            Width = 20
            Height = 13
            Caption = 'Fido'
          end
          object laRischio: TLabel
            Left = 254
            Top = 100
            Width = 69
            Height = 13
            Caption = 'Rischio cliente'
          end
          object Label9: TLabel
            Left = 100
            Top = 172
            Width = 108
            Height = 13
            Caption = 'Escludi dalle scadenze'
          end
          object laGiorniEscl: TLabel
            Left = 249
            Top = 172
            Width = 80
            Height = 13
            Caption = 'Giorno scadenza'
          end
          object LookMoneta: TDBLookupComboBox
            Left = 101
            Top = 16
            Width = 79
            Height = 21
            DataField = 'MONETA_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_MONETE'
            ListField = 'ID_MONETE'
            ListSource = dmodPub.dsoTab_Monete
            TabOrder = 0
          end
          object LookMonetaDescr: TDBLookupComboBox
            Left = 189
            Top = 16
            Width = 273
            Height = 21
            DataField = 'MONETA_ID'
            DataSource = dmodAz.dsoqTabCli
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
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_PAGAMENTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Pagamenti
            TabOrder = 2
          end
          object LookPaganebto: TDBLookupComboBox
            Left = 101
            Top = 43
            Width = 79
            Height = 21
            DataField = 'PAGAMENTO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'ID_PAGAMENTO'
            ListField = 'ID_PAGAMENTO'
            ListSource = dmodAz.dsoTab_Pagamenti
            TabOrder = 3
          end
          object dbeFido: TDBEdit
            Left = 101
            Top = 97
            Width = 140
            Height = 21
            DataField = 'FIDO'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 4
          end
          object dbeRischio: TDBEdit
            Left = 332
            Top = 97
            Width = 127
            Height = 21
            DataField = 'RISCHIO'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 5
          end
          object LookEsclMese1: TDBLookupComboBox
            Left = 100
            Top = 191
            Width = 137
            Height = 21
            DataField = 'ESCLUDI_MESE1'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Mesi
            TabOrder = 6
          end
          object LookEsclMese2: TDBLookupComboBox
            Left = 100
            Top = 218
            Width = 137
            Height = 21
            DataField = 'ESCLUDI_MESE2'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Mesi
            TabOrder = 7
          end
          object dbeGGscad1: TDBEdit
            Left = 249
            Top = 191
            Width = 37
            Height = 21
            DataField = 'GG_SCADENZA1'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 8
          end
          object dbeGGScad2: TDBEdit
            Left = 249
            Top = 218
            Width = 37
            Height = 21
            DataField = 'GG_SCADENZA2'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 9
          end
          object LookCodRagg: TDBLookupComboBox
            Left = 101
            Top = 70
            Width = 79
            Height = 21
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Ragg_Cli_For
            TabOrder = 10
          end
          object LookCodRagDescr: TDBLookupComboBox
            Left = 189
            Top = 70
            Width = 273
            Height = 21
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Ragg_Cli_For
            TabOrder = 11
          end
        end
      end
      object tabs6: TTabSheet
        Caption = 'Altre &Sedi'
        ImageIndex = 5
        object paAltriSedi: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object dbcgAltreSedi: TDBCtrlGrid
            Left = 13
            Top = 40
            Width = 553
            Height = 205
            ColCount = 1
            DataSource = dmodAz.dsoTab_Altre_Sedi
            PanelHeight = 68
            PanelWidth = 537
            TabOrder = 0
            RowCount = 3
            OnEnter = dbcgAltreSediEnter
            object Label3: TLabel
              Left = 7
              Top = 17
              Width = 38
              Height = 13
              Caption = 'Indirizzo'
            end
            object Label4: TLabel
              Left = 280
              Top = 17
              Width = 21
              Height = 13
              Caption = 'Città'
            end
            object Label5: TLabel
              Left = 419
              Top = 17
              Width = 21
              Height = 13
              Caption = 'CAP'
            end
            object Label7: TLabel
              Left = 23
              Top = 43
              Width = 25
              Height = 13
              Caption = 'Prov.'
            end
            object Label10: TLabel
              Left = 137
              Top = 43
              Width = 42
              Height = 13
              Caption = 'Telefono'
            end
            object Label11: TLabel
              Left = 354
              Top = 43
              Width = 20
              Height = 13
              Caption = 'FAX'
            end
            object DBEdit1: TDBEdit
              Left = 55
              Top = 14
              Width = 219
              Height = 21
              DataField = 'INDIRIZZO'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 312
              Top = 14
              Width = 98
              Height = 21
              DataField = 'CITTA'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 189
              Top = 40
              Width = 147
              Height = 21
              DataField = 'TEL'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 390
              Top = 40
              Width = 137
              Height = 21
              DataField = 'FAX'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 449
              Top = 14
              Width = 78
              Height = 21
              DataField = 'CAP'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 4
            end
            object DBEdit10: TDBEdit
              Left = 55
              Top = 40
              Width = 76
              Height = 21
              DataField = 'PROVINCIA_ID'
              DataSource = dmodAz.dsoTab_Altre_Sedi
              TabOrder = 5
            end
          end
          object dbnSediAltri: TDBNavigator
            Left = 12
            Top = 8
            Width = 540
            Height = 25
            DataSource = dmodAz.dsoTab_Altre_Sedi
            Flat = True
            TabOrder = 1
          end
        end
      end
      object tabs7: TTabSheet
        Caption = '&Fatturazione'
        ImageIndex = 6
        object paFatturazione: TPanel
          Left = 0
          Top = 0
          Width = 582
          Height = 265
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object laIvaEsen: TLabel
            Left = 39
            Top = 42
            Width = 84
            Height = 13
            Caption = 'Codice esenzione'
          end
          object Label18: TLabel
            Left = 240
            Top = 176
            Width = 52
            Height = 24
            Caption = '<----?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object LookCodIvaEsen: TDBLookupComboBox
            Left = 143
            Top = 39
            Width = 72
            Height = 21
            DataField = 'CODICE_IVA_ESENTE'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodPub.dsoTab_Esente_IVA
            TabOrder = 1
          end
          object LookIvaEsenDescr: TDBLookupComboBox
            Left = 221
            Top = 39
            Width = 277
            Height = 21
            DataField = 'CODICE_IVA_ESENTE'
            DataSource = dmodAz.dsoqTabCli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Esente_IVA
            TabOrder = 2
          end
          object gbPosRif: TGroupBox
            Left = 254
            Top = 72
            Width = 296
            Height = 91
            Caption = 'Posizioni && Riferimenti'
            TabOrder = 3
            object dbragPosRif: TDBRadioGroup
              Left = 169
              Top = 16
              Width = 118
              Height = 63
              Caption = 'Posizione riferimento'
              DataField = 'POS_RIF_BOLLE'
              DataSource = dmodAz.dsoqTabCli
              Items.Strings = (
                'In fondo'
                'Tra le righe')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2')
            end
            object DBCheckBox2: TDBCheckBox
              Left = 12
              Top = 28
              Width = 141
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Riporta riferimento Bolle'
              DataField = 'RIP_RIF_BOLLE'
              DataSource = dmodAz.dsoqTabCli
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 10
              Top = 58
              Width = 141
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Riporta riferimento Ordini'
              DataField = 'RIP_RIF_ORDINI'
              DataSource = dmodAz.dsoqTabCli
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
          object gbDescrSu: TGroupBox
            Left = 39
            Top = 72
            Width = 196
            Height = 121
            Caption = 'Descr. su'
            TabOrder = 4
            object laFattDiff: TLabel
              Left = 16
              Top = 91
              Width = 43
              Height = 13
              Caption = 'Fatt. Diff.'
            end
            object laFattImm: TLabel
              Left = 16
              Top = 68
              Width = 46
              Height = 13
              Caption = 'Fatt. Imm.'
            end
            object laDDT: TLabel
              Left = 16
              Top = 46
              Width = 23
              Height = 13
              Caption = 'DDT'
            end
            object laOrdini: TLabel
              Left = 16
              Top = 23
              Width = 27
              Height = 13
              Caption = 'Ordini'
            end
            object DBEdit6: TDBEdit
              Left = 81
              Top = 20
              Width = 99
              Height = 21
              DataSource = dmodAz.dsoTab_Cli_For
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 81
              Top = 42
              Width = 99
              Height = 21
              DataSource = dmodAz.dsoTab_Cli_For
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 81
              Top = 65
              Width = 99
              Height = 21
              DataSource = dmodAz.dsoTab_Cli_For
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 81
              Top = 88
              Width = 99
              Height = 21
              DataSource = dmodAz.dsoTab_Cli_For
              TabOrder = 3
            end
          end
          object dbcbAccotpArt: TDBCheckBox
            Left = 205
            Top = 16
            Width = 95
            Height = 14
            Caption = 'Accorpa articoli'
            DataField = 'ACCORPA_ARTICOLI'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 40
            Top = 16
            Width = 117
            Height = 17
            Caption = 'Fatture riepilogative'
            DataField = 'FATTURA_RIEPILOGATIVA'
            DataSource = dmodAz.dsoqTabCli
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
  end
end
