inherited fForn: TfForn
  Left = 206
  Top = 204
  Caption = 'Fornitori'
  ClientHeight = 411
  ClientWidth = 697
  Menu = mmForn
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Top = 24
    Width = 697
    Height = 92
    Align = alTop
    Color = clBlue
    Enabled = False
    object laCodice: TLabel
      Left = 12
      Top = 10
      Width = 44
      Height = 16
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDenom: TLabel
      Left = 12
      Top = 37
      Width = 100
      Height = 16
      Caption = 'Denominazione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDenom2: TLabel
      Left = 12
      Top = 63
      Width = 100
      Height = 16
      Caption = 'Denominazione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeDenom2: TDBEdit
      Left = 128
      Top = 60
      Width = 420
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE2'
      DataSource = dsoFornitori
      TabOrder = 0
      OnExit = dbeDenom2Exit
    end
    object dbeDenom: TDBEdit
      Left = 128
      Top = 33
      Width = 420
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE'
      DataSource = dsoFornitori
      TabOrder = 1
      OnExit = dbeDenomExit
    end
    object dbeCodice: TDBEdit
      Left = 128
      Top = 7
      Width = 98
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CLI_FOR'
      DataSource = dsoFornitori
      TabOrder = 2
      OnChange = dbeCodiceChange
    end
    object DBCheckBox1: TDBCheckBox
      Left = 560
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Fasonista'
      DataField = 'FASON'
      DataSource = dsoFornitori
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited tbarControl: TToolBar
    Width = 697
    Height = 24
    ButtonHeight = 22
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
    object tbtnPrn: TToolButton
      Left = 245
      Top = 0
      Cursor = crHandPoint
      Caption = 'Stampa'
      ImageIndex = 25
      OnClick = tbtnPrnClick
    end
    object ToolButton2: TToolButton
      Left = 270
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Edit1: TEdit
      Left = 278
      Top = 0
      Width = 159
      Height = 22
      Hint = 'Ricerca x Ragione Sociale'
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 437
      Top = 0
      Width = 159
      Height = 22
      Hint = 'Ricerca x P.Iva'
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object ToolButton1: TToolButton
      Left = 596
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 604
      Top = 0
      Cursor = crHandPoint
      Hint = 'Elimina Documenti del Fornitore selezionato'
      Caption = 'ToolButton3'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
  end
  object paDati: TPanel
    Left = 0
    Top = 116
    Width = 697
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object pctrlDatiForn: TPageControl
      Left = 0
      Top = 0
      Width = 697
      Height = 295
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '&Anagrafica'
        object paAnagrafica: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laCodFisc: TLabel
            Left = 8
            Top = 0
            Width = 105
            Height = 16
            Caption = 'Codice Fiscale'
          end
          object laSesso: TLabel
            Left = 244
            Top = 0
            Width = 45
            Height = 16
            Caption = 'Sesso'
          end
          object laTitolo: TLabel
            Left = 11
            Top = 37
            Width = 41
            Height = 16
            Caption = 'Titolo'
          end
          object laCognome: TLabel
            Left = 107
            Top = 37
            Width = 67
            Height = 16
            Caption = 'Cognome'
          end
          object laNome: TLabel
            Left = 347
            Top = 37
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object laDataDiNasc: TLabel
            Left = 3
            Top = 75
            Width = 92
            Height = 16
            Caption = 'Data di nasc.'
          end
          object laComuneDiNasc: TLabel
            Left = 103
            Top = 75
            Width = 133
            Height = 16
            Caption = 'Comune Di Nascita'
          end
          object laCAPdiNasc: TLabel
            Left = 343
            Top = 75
            Width = 31
            Height = 16
            Caption = 'CAP'
          end
          object laNazione: TLabel
            Left = 430
            Top = 73
            Width = 58
            Height = 16
            Caption = 'Nazione'
          end
          object dbeCodFisc: TDBEdit
            Left = 4
            Top = 16
            Width = 188
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CODICE_FISCALE'
            DataSource = dsoFornitori
            TabOrder = 0
          end
          object LookSesso: TDBLookupComboBox
            Left = 237
            Top = 16
            Width = 145
            Height = 22
            DataField = 'SESSO'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoSesso
            TabOrder = 1
          end
          object dbeCognome: TDBEdit
            Left = 103
            Top = 53
            Width = 233
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COGNOME'
            DataSource = dsoFornitori
            TabOrder = 5
          end
          object dbeNome: TDBEdit
            Left = 342
            Top = 53
            Width = 186
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = dsoFornitori
            TabOrder = 6
          end
          object dbeDataDiNascita: TDBEdit
            Left = 3
            Top = 90
            Width = 87
            Height = 22
            CharCase = ecUpperCase
            DataField = 'DATA_DI_NASCITA'
            DataSource = dsoFornitori
            MaxLength = 10
            TabOrder = 7
          end
          object dbeComuneDiNascita: TDBEdit
            Left = 93
            Top = 92
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dsoFornitori
            TabOrder = 8
            Visible = False
            OnChange = dbeComuneDiNascitaChange
          end
          object bbLookComuneDiNascita: TBitBtn
            Left = 305
            Top = 91
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 10
            OnClick = bbLookComuneDiNascitaClick
          end
          object edComuneDiNascita: TEdit
            Left = 36
            Top = 118
            Width = 201
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 9
            Visible = False
          end
          object edCAPdiNascita: TEdit
            Left = 634
            Top = 14
            Width = 49
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 11
            Visible = False
          end
          object bbLookCAPdiNascita: TBitBtn
            Left = 393
            Top = 91
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 12
            OnClick = bbLookCAPdiNascitaClick
          end
          object edNazione: TEdit
            Left = 252
            Top = 118
            Width = 201
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 14
            Visible = False
          end
          object dbeNazione: TDBEdit
            Left = 420
            Top = 88
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZIONE_DI_NASCITA_ID'
            DataSource = dsoFornitori
            TabOrder = 13
            Visible = False
          end
          object bbLookNazione: TBitBtn
            Left = 632
            Top = 88
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 15
            OnClick = bbLookNazioneClick
          end
          object dbeTitolo: TDBEdit
            Left = 1
            Top = 53
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TITOLO_ID'
            DataSource = dsoFornitori
            TabOrder = 2
            Visible = False
            OnChange = dbeTitoloChange
          end
          object edTitolo: TEdit
            Left = 422
            Top = 12
            Width = 64
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 3
            Visible = False
            OnExit = edTitoloExit
          end
          object bbLookTitolo: TBitBtn
            Left = 73
            Top = 53
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 4
            OnClick = bbLookTitoloClick
          end
          object dbeTitolo_descr: TDBEdit
            Left = 7
            Top = 53
            Width = 61
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TITOLO_DESCR'
            DataSource = dsoFornitori
            TabOrder = 16
          end
          object dbeComnasc_descr: TDBEdit
            Left = 100
            Top = 90
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COMNASC_DESCR'
            DataSource = dsoFornitori
            TabOrder = 17
          end
          object dbecapnasc_descr: TDBEdit
            Left = 334
            Top = 90
            Width = 56
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CAPNASC_DESCR'
            DataSource = dsoFornitori
            TabOrder = 18
          end
          object dbeNaznasc_descr: TDBEdit
            Left = 427
            Top = 88
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZNASC_DESCR'
            DataSource = dsoFornitori
            TabOrder = 19
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 167
            Width = 673
            Height = 89
            DataField = 'NOTE'
            DataSource = dsoFornitori
            TabOrder = 20
          end
        end
      end
      object tabs2: TTabSheet
        Caption = '&Indirizzo'
        ImageIndex = 1
        object paIndirizzo: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laIndA1: TLabel
            Left = 25
            Top = 17
            Width = 58
            Height = 16
            Caption = 'Indirizzo'
          end
          object laComuneA1: TLabel
            Left = 25
            Top = 58
            Width = 57
            Height = 16
            Caption = 'Comune'
          end
          object laTel1A1: TLabel
            Left = 25
            Top = 157
            Width = 75
            Height = 16
            Caption = 'Telefono 1'
          end
          object laTel2A1: TLabel
            Left = 177
            Top = 157
            Width = 75
            Height = 16
            Caption = 'Telefono 2'
          end
          object laCAPA1: TLabel
            Left = 229
            Top = 58
            Width = 31
            Height = 16
            Caption = 'CAP'
          end
          object laNazioneA1: TLabel
            Left = 373
            Top = 58
            Width = 58
            Height = 16
            Caption = 'Nazione'
          end
          object laFaxA1: TLabel
            Left = 349
            Top = 157
            Width = 26
            Height = 16
            Caption = 'Fax'
          end
          object laEMailA1: TLabel
            Left = 25
            Top = 197
            Width = 53
            Height = 16
            Caption = 'E - Mail'
          end
          object laInternetA1: TLabel
            Left = 221
            Top = 197
            Width = 52
            Height = 16
            Caption = 'Internet'
          end
          object laPartIVA: TLabel
            Left = 25
            Top = 134
            Width = 74
            Height = 16
            Caption = 'Partita IVA'
          end
          object laLocal: TLabel
            Left = 298
            Top = 134
            Width = 56
            Height = 16
            Caption = 'Localita'
          end
          object Label3: TLabel
            Left = 309
            Top = 58
            Width = 20
            Height = 16
            Caption = 'Pr.'
          end
          object dbeIndirizzo_A1: TDBEdit
            Left = 21
            Top = 33
            Width = 501
            Height = 22
            CharCase = ecUpperCase
            DataField = 'INDIRIZZO'
            DataSource = dsoFornitori
            TabOrder = 0
          end
          object dbeTel1_A1: TDBEdit
            Left = 21
            Top = 173
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TEL1'
            DataSource = dsoFornitori
            TabOrder = 6
          end
          object dbeTel2_A1: TDBEdit
            Left = 173
            Top = 173
            Width = 165
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TEL2'
            DataSource = dsoFornitori
            TabOrder = 7
          end
          object dbeFax_A1: TDBEdit
            Left = 345
            Top = 173
            Width = 177
            Height = 22
            CharCase = ecUpperCase
            DataField = 'FAX'
            DataSource = dsoFornitori
            TabOrder = 8
          end
          object dbeEMail_A1: TDBEdit
            Left = 21
            Top = 214
            Width = 189
            Height = 22
            CharCase = ecUpperCase
            DataField = 'EMAIL'
            DataSource = dsoFornitori
            TabOrder = 9
          end
          object dbeInternet_A1: TDBEdit
            Left = 217
            Top = 214
            Width = 305
            Height = 22
            CharCase = ecUpperCase
            DataField = 'INTERNET'
            DataSource = dsoFornitori
            TabOrder = 10
          end
          object dbePartIVA: TDBEdit
            Left = 105
            Top = 130
            Width = 159
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PARTITA_IVA'
            DataSource = dsoFornitori
            TabOrder = 4
            OnExit = dbePartIVAExit
          end
          object dbeLocalita: TDBEdit
            Left = 362
            Top = 130
            Width = 159
            Height = 22
            CharCase = ecUpperCase
            DataField = 'LOCALITA'
            DataSource = dsoFornitori
            TabOrder = 5
          end
          object dbeNazioneInd: TDBEdit
            Left = 525
            Top = 76
            Width = 19
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZIONE_ID'
            DataSource = dsoFornitori
            TabOrder = 1
            Visible = False
            OnChange = dbeNazioneIndChange
          end
          object edNazioneInd: TEdit
            Left = 368
            Top = 102
            Width = 125
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 2
            Visible = False
            OnExit = edNazioneIndExit
          end
          object bbLookNazioneInd: TBitBtn
            Left = 496
            Top = 76
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = bbLookNazioneIndClick
          end
          object dbeComune: TDBEdit
            Left = 18
            Top = 76
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COMUNE_ID'
            DataSource = dsoFornitori
            TabOrder = 11
            Visible = False
          end
          object edComune: TEdit
            Left = 24
            Top = 100
            Width = 173
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 12
            Visible = False
            OnExit = edComuneExit
          end
          object bbLookComune: TBitBtn
            Left = 194
            Top = 75
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 13
            OnClick = bbLookComuneClick
          end
          object edCAP: TEdit
            Left = 228
            Top = 100
            Width = 49
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 14
            Visible = False
            OnExit = edCAPExit
          end
          object bbLookCAP: TBitBtn
            Left = 280
            Top = 75
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 15
            OnClick = bbLookCAPClick
          end
          object edPr: TEdit
            Left = 308
            Top = 100
            Width = 25
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 16
            Visible = False
            OnExit = edPrExit
          end
          object bbLookPr: TBitBtn
            Left = 336
            Top = 75
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 17
            OnClick = bbLookPrClick
          end
          object dbecom_descr: TDBEdit
            Left = 24
            Top = 74
            Width = 163
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COM_DESCR'
            DataSource = dsoFornitori
            TabOrder = 18
          end
          object dbecap_descr: TDBEdit
            Left = 222
            Top = 74
            Width = 53
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CAP_DESCR'
            DataSource = dsoFornitori
            TabOrder = 19
          end
          object dbepr_descr: TDBEdit
            Left = 306
            Top = 74
            Width = 29
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PR_DESCR'
            DataSource = dsoFornitori
            TabOrder = 20
          end
          object dbenaz_descr: TDBEdit
            Left = 362
            Top = 74
            Width = 131
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZ_DESCR'
            DataSource = dsoFornitori
            TabOrder = 21
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '&Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object Label2: TLabel
            Left = 55
            Top = 102
            Width = 73
            Height = 14
            Caption = 'Contropartita'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laCAB: TLabel
            Left = 105
            Top = 163
            Width = 23
            Height = 14
            Caption = 'CAB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laContoCorr: TLabel
            Left = 44
            Top = 217
            Width = 84
            Height = 14
            Caption = 'Conto corrente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laABI: TLabel
            Left = 110
            Top = 190
            Width = 18
            Height = 14
            Caption = 'ABI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 46
            Top = 135
            Width = 82
            Height = 14
            Caption = 'Piano dei Conti'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LookPCNome: TDBLookupComboBox
            Left = 134
            Top = 98
            Width = 131
            Height = 21
            DataField = 'CONTROPARTITA_ID'
            DataSource = dsoFornitori
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dsoPianoConti
            ParentFont = False
            TabOrder = 1
          end
          object LookPCDescr: TDBLookupComboBox
            Left = 274
            Top = 98
            Width = 270
            Height = 21
            DataField = 'CONTROPARTITA_ID'
            DataSource = dsoFornitori
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dsoPianoConti
            ParentFont = False
            TabOrder = 2
          end
          object dbeContoCorr: TDBEdit
            Left = 134
            Top = 214
            Width = 228
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTO_CORRENTE'
            DataSource = dsoFornitori
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBCtrlGrid2: TDBCtrlGrid
            Left = 11
            Top = 16
            Width = 554
            Height = 49
            Enabled = False
            PanelHeight = 16
            PanelWidth = 537
            TabOrder = 0
            Visible = False
          end
          object RxDBLookupCombo4: TRxDBLookupCombo
            Left = 240
            Top = 186
            Width = 305
            Height = 21
            DropDownCount = 8
            DataField = 'ABI_DESCR'
            DataSource = dsoFornitori
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'ID_ABI'
            LookupDisplay = 'DESCR'
            LookupSource = dsoABI
            ParentFont = False
            TabOrder = 4
            OnChange = RxDBLookupCombo4Change
          end
          object RxDBLookupCombo3: TRxDBLookupCombo
            Left = 134
            Top = 186
            Width = 103
            Height = 21
            DropDownCount = 8
            DataField = 'ABI_ID'
            DataSource = dsoFornitori
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'ID_ABI'
            LookupDisplay = 'ID_ABI'
            LookupSource = dsoABI
            ParentFont = False
            TabOrder = 5
            OnChange = RxDBLookupCombo3Change
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 134
            Top = 160
            Width = 103
            Height = 21
            DropDownCount = 8
            DataField = 'CAB_ID'
            DataSource = dsoFornitori
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'ID_CAB'
            LookupDisplay = 'ID_CAB'
            LookupSource = dsoCAB
            ParentFont = False
            TabOrder = 6
            OnChange = RxDBLookupCombo1Change
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 240
            Top = 160
            Width = 305
            Height = 21
            DropDownCount = 8
            DataField = 'CAB_DESCR'
            DataSource = dsoFornitori
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'ID_CAB'
            LookupDisplay = 'DESCR'
            LookupSource = dsoCAB
            ParentFont = False
            TabOrder = 7
            OnChange = RxDBLookupCombo2Change
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 134
            Top = 131
            Width = 131
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'TIPO'
            ListField = 'NOME_CONTO'
            ListSource = dsoPianoConti
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 274
            Top = 131
            Width = 271
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'TIPO'
            ListField = 'DESCR'
            ListSource = dsoPianoConti
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri &Dati'
        ImageIndex = 4
        object paAltriDati: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laMoneta: TLabel
            Left = 73
            Top = 20
            Width = 52
            Height = 16
            Caption = 'Moneta'
          end
          object LaPagamento: TLabel
            Left = 45
            Top = 46
            Width = 80
            Height = 16
            Caption = 'Pagamento'
          end
          object laConrag: TLabel
            Left = 35
            Top = 73
            Width = 90
            Height = 16
            Caption = 'Codice ragg.'
          end
          object Label6: TLabel
            Left = 301
            Top = 204
            Width = 32
            Height = 16
            Caption = 'Fido'
          end
          object Label9: TLabel
            Left = 484
            Top = 168
            Width = 162
            Height = 16
            Caption = 'Escludi dalle scadenze'
          end
          object laGiorniEscl: TLabel
            Left = 641
            Top = 188
            Width = 47
            Height = 16
            Caption = 'Giorno'
          end
          object Label1: TLabel
            Left = 485
            Top = 188
            Width = 39
            Height = 16
            Caption = 'Mese'
          end
          object laProvvigione: TLabel
            Left = 305
            Top = 232
            Width = 84
            Height = 16
            Caption = 'Provvigione'
          end
          object laAgente: TLabel
            Left = 62
            Top = 99
            Width = 39
            Height = 15
            Caption = 'Agente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LookMoneta: TDBLookupComboBox
            Left = 137
            Top = 16
            Width = 79
            Height = 22
            DataField = 'MONETA_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_MONETE'
            ListField = 'ID_MONETE'
            ListSource = dsoMonete
            TabOrder = 0
          end
          object LookMonetaDescr: TDBLookupComboBox
            Left = 225
            Top = 16
            Width = 273
            Height = 22
            DataField = 'MONETA_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_MONETE'
            ListField = 'DESCR'
            ListSource = dsoMonete
            TabOrder = 1
          end
          object LookPagamDescr: TDBLookupComboBox
            Left = 225
            Top = 43
            Width = 273
            Height = 22
            DataField = 'PAGAMENTO_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_PAGAMENTO'
            ListField = 'DESCR'
            ListSource = dsoPagamenti
            TabOrder = 3
          end
          object LookPaganebto: TDBLookupComboBox
            Left = 137
            Top = 43
            Width = 79
            Height = 22
            DataField = 'PAGAMENTO_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_PAGAMENTO'
            ListField = 'ID_PAGAMENTO'
            ListSource = dsoPagamenti
            TabOrder = 2
          end
          object dbeFido: TDBEdit
            Left = 345
            Top = 201
            Width = 116
            Height = 22
            CharCase = ecUpperCase
            DataField = 'FIDO'
            DataSource = dsoFornitori
            TabOrder = 6
          end
          object LookEsclMese1: TDBLookupComboBox
            Left = 484
            Top = 203
            Width = 137
            Height = 22
            DataField = 'ESCLUDI_MESE1'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoMesi
            TabOrder = 8
          end
          object LookEsclMese2: TDBLookupComboBox
            Left = 484
            Top = 230
            Width = 137
            Height = 22
            DataField = 'ESCLUDI_MESE2'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoMesi
            TabOrder = 10
          end
          object dbeGGscad1: TDBEdit
            Left = 641
            Top = 203
            Width = 37
            Height = 22
            CharCase = ecUpperCase
            DataField = 'GG_SCADENZA1'
            DataSource = dsoFornitori
            TabOrder = 9
          end
          object dbeGGScad2: TDBEdit
            Left = 641
            Top = 230
            Width = 37
            Height = 22
            CharCase = ecUpperCase
            DataField = 'GG_SCADENZA2'
            DataSource = dsoFornitori
            TabOrder = 11
          end
          object LookCodRagg: TDBLookupComboBox
            Left = 137
            Top = 70
            Width = 79
            Height = 22
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dsoRaggrupCliFor
            TabOrder = 4
          end
          object LookCodRagDescr: TDBLookupComboBox
            Left = 225
            Top = 70
            Width = 273
            Height = 22
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoRaggrupCliFor
            TabOrder = 5
          end
          object dbeProvvigione: TDBEdit
            Left = 392
            Top = 229
            Width = 69
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PROVVIGIONE'
            DataSource = dsoFornitori
            TabOrder = 7
          end
          object RxDBLookupCombo5: TRxDBLookupCombo
            Left = 136
            Top = 97
            Width = 80
            Height = 19
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoFornitori
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = DataSource3
            ParentFont = False
            TabOrder = 12
          end
          object RxDBLookupCombo6: TRxDBLookupCombo
            Left = 226
            Top = 97
            Width = 273
            Height = 19
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoFornitori
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = DataSource3
            ParentFont = False
            TabOrder = 13
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Acquisto'
        ImageIndex = 4
        object paAcquisto: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laPorto: TLabel
            Left = 80
            Top = 25
            Width = 38
            Height = 16
            Caption = 'Porto'
          end
          object laZona: TLabel
            Left = 82
            Top = 98
            Width = 36
            Height = 16
            Caption = 'Zona'
          end
          object laPiu: TLabel
            Left = 217
            Top = 131
            Width = 17
            Height = 16
            Caption = ' + '
          end
          object laSconto: TLabel
            Left = 17
            Top = 131
            Width = 101
            Height = 16
            Caption = 'Sconto restata'
          end
          object laSottozona: TLabel
            Left = 48
            Top = 60
            Width = 70
            Height = 16
            Caption = 'Sottozona'
          end
          object LookPorto: TDBLookupComboBox
            Left = 130
            Top = 22
            Width = 91
            Height = 22
            DataField = 'PORTO_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dsoPorto
            TabOrder = 0
          end
          object LookPortoDescr: TDBLookupComboBox
            Left = 230
            Top = 22
            Width = 303
            Height = 22
            DataField = 'PORTO_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoPorto
            TabOrder = 1
          end
          object LookZone: TDBLookupComboBox
            Left = 130
            Top = 94
            Width = 91
            Height = 22
            DataField = 'CODICE_ZONA_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'ID_CODICE_ZONA'
            ListSource = dsoZone
            TabOrder = 4
          end
          object LookZoneDescr: TDBLookupComboBox
            Left = 230
            Top = 94
            Width = 303
            Height = 22
            DataField = 'CODICE_ZONA_ID'
            DataSource = dsoFornitori
            KeyField = 'ID_CODICE_ZONA'
            ListField = 'DESCR'
            ListSource = dsoZone
            TabOrder = 5
          end
          object LookSottoZoneDescr: TDBLookupComboBox
            Left = 230
            Top = 57
            Width = 303
            Height = 22
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'DESCR'
            ListSource = dsoSottoZone
            TabOrder = 3
            OnCloseUp = LookSottoZoneCloseUp
          end
          object LookSottoZone: TDBLookupComboBox
            Left = 130
            Top = 57
            Width = 91
            Height = 22
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dsoFornitori
            KeyField = 'CODICE_ZONA_ID'
            ListField = 'CODICE_ZONA_ID'
            ListSource = dsoSottoZone
            TabOrder = 2
            OnCloseUp = LookSottoZoneCloseUp
          end
          object dbeSconto2: TDBEdit
            Left = 243
            Top = 128
            Width = 76
            Height = 22
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA2'
            DataSource = dsoFornitori
            TabOrder = 7
          end
          object dbeSconto1: TDBEdit
            Left = 130
            Top = 128
            Width = 78
            Height = 22
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA1'
            DataSource = dsoFornitori
            TabOrder = 6
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Sedi'
        ImageIndex = 5
        object paAltriSedi: TPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 261
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object dbcgAltreSedi: TDBCtrlGrid
            Left = 13
            Top = 27
            Width = 668
            Height = 234
            DataSource = dsoAltreSedi
            PanelHeight = 117
            PanelWidth = 651
            TabOrder = 0
            RowCount = 2
            object Label4: TLabel
              Left = 24
              Top = 37
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object Label5: TLabel
              Left = 183
              Top = 61
              Width = 32
              Height = 16
              Caption = 'Citt'#224
            end
            object Label7: TLabel
              Left = 24
              Top = 63
              Width = 31
              Height = 16
              Caption = 'CAP'
            end
            object Label10: TLabel
              Left = 24
              Top = 86
              Width = 63
              Height = 16
              Caption = 'Telefono'
            end
            object Label11: TLabel
              Left = 400
              Top = 86
              Width = 29
              Height = 16
              Caption = 'FAX'
            end
            object Label13: TLabel
              Left = 24
              Top = 13
              Width = 69
              Height = 16
              Caption = 'Rag. Soc.'
            end
            object Label14: TLabel
              Left = 487
              Top = 61
              Width = 37
              Height = 16
              Caption = 'Prov.'
            end
            object DBEdit1: TDBEdit
              Left = 96
              Top = 34
              Width = 476
              Height = 22
              CharCase = ecUpperCase
              DataField = 'INDIRIZZO'
              DataSource = dsoAltreSedi
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 219
              Top = 58
              Width = 261
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CITTA'
              DataSource = dsoAltreSedi
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 96
              Top = 83
              Width = 147
              Height = 22
              CharCase = ecUpperCase
              DataField = 'TEL'
              DataSource = dsoAltreSedi
              TabOrder = 5
            end
            object DBEdit4: TDBEdit
              Left = 436
              Top = 83
              Width = 137
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FAX'
              DataSource = dsoAltreSedi
              TabOrder = 6
            end
            object DBEdit5: TDBEdit
              Left = 96
              Top = 58
              Width = 78
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CAP'
              DataSource = dsoAltreSedi
              TabOrder = 2
            end
            object DBEdit11: TDBEdit
              Left = 96
              Top = 10
              Width = 476
              Height = 22
              CharCase = ecUpperCase
              DataField = 'RAGSOC'
              DataSource = dsoAltreSedi
              TabOrder = 0
            end
            object DBEdit12: TDBEdit
              Left = 527
              Top = 58
              Width = 46
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PROV2'
              DataSource = dsoAltreSedi
              TabOrder = 4
            end
          end
          object dbnSediAltri: TDBNavigator
            Left = 12
            Top = 5
            Width = 660
            Height = 18
            DataSource = dsoAltreSedi
            Flat = True
            Hints.Strings = (
              'Primo'
              'Precedente'
              'Successivo'
              'UItimo'
              'Inserisci'
              'Cancella'
              'Modifica'
              'Salva'
              'Annulla'
              'Refresh')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
      end
    end
  end
  object dsoFornitori: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 400
    Top = 30
  end
  object dsoSesso: TDataSource
    DataSet = dmodPub.ibTab_Sesso
    Left = 194
    Top = 80
  end
  object dsoComuni: TDataSource
    DataSet = dmodPub.ibTab_Comuni
    Left = 214
    Top = 82
  end
  object dsoNazioni: TDataSource
    DataSet = dmodPub.ibTab_Nazioni
    Left = 242
    Top = 82
  end
  object dsoPianoConti: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 260
    Top = 82
  end
  object dsoCAB: TDataSource
    DataSet = dmodAz.ibTab_CAB
    Left = 288
    Top = 82
  end
  object dsoABI: TDataSource
    DataSet = dmodAz.ibTab_ABI
    Left = 316
    Top = 82
  end
  object dsoListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 352
    Top = 82
  end
  object dsoCatCli: TDataSource
    DataSet = dmodAz.ibTab_Cat_Cli
    Left = 380
    Top = 82
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 408
    Top = 82
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 436
    Top = 82
  end
  object dsoProvvigione: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 464
    Top = 82
  end
  object dsoSottoZone: TDataSource
    DataSet = dmodAz.ibTab_SottoZone
    Left = 492
    Top = 82
  end
  object dsoZone: TDataSource
    DataSet = dmodAz.ibTab_Zone
    Left = 520
    Top = 82
  end
  object dsoTipo_titolo: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Titolo
    Left = 632
    Top = 33
  end
  object dsoEsenzione: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
    Left = 596
    Top = 33
  end
  object dsoAltreSedi: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqAltreSedi
    OnUpdateData = dsoAltreSediUpdateData
    Left = 560
    Top = 33
  end
  object dsoMesi: TDataSource
    DataSet = dmodPub.ibTab_Mesi
    Left = 516
    Top = 33
  end
  object dsoRaggrupCliFor: TDataSource
    DataSet = dmodAz.ibTab_Raggrup_Cli_For
    Left = 488
    Top = 33
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 460
    Top = 33
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 432
    Top = 33
  end
  object dsoPersAz: TDataSource
    DataSet = dmodAz.ibTabPersAz
    Left = 664
    Top = 33
  end
  object mmForn: TMainMenu
    Left = 76
    Top = 37
    object File1: TMenuItem
      Caption = 'File'
      Visible = False
      object miForn_In_PianoConti: TMenuItem
        Caption = 'Inserire tutti i Fornitori In Piano Dei Conti'
        ShortCut = 16464
        OnClick = miForn_In_PianoContiClick
      end
    end
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 0'
      'order by descr')
    Left = 560
    Top = 153
    object IBStringField1: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField4: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object FloatField1: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField2: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField2: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField3: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField3: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField4: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField5: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField6: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IntegerField2: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 584
    Top = 177
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 648
    Top = 72
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'delete from tab_det_doc where doc_id in '
      
        '(select id_documento from tab_documenti where (clifor_id =:clifo' +
        'r'
      'and (data_doc >=:DaData and data_doc<=:AData)))')
    Left = 572
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clifor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DaData'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AData'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'delete from  tab_documenti where clifor_id =:clifor and (data_do' +
        'c >=:DaData and data_doc<=:AData)')
    Left = 572
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clifor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DaData'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AData'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'delete from  contabilitar where clifor_id =:clifor and (data_mov' +
        ' >=:DaData and data_mov<=:AData)')
    Left = 572
    Top = 274
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clifor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DaData'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AData'
        ParamType = ptUnknown
      end>
  end
end
