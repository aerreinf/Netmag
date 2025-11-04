inherited fClienti: TfClienti
  Left = 217
  Top = 139
  Caption = 'Clienti'
  ClientHeight = 418
  ClientWidth = 698
  Menu = mmCli
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Top = 24
    Width = 698
    Height = 92
    Align = alTop
    Color = clBlue
    Enabled = False
    object laCodice: TLabel
      Left = 16
      Top = 10
      Width = 44
      Height = 16
      Caption = 'Codice'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object laDenom: TLabel
      Left = 16
      Top = 37
      Width = 100
      Height = 16
      Caption = 'Denominazione'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object laDenom2: TLabel
      Left = 16
      Top = 63
      Width = 100
      Height = 16
      Caption = 'Denominazione'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 132
      Top = 7
      Width = 98
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CLI_FOR'
      DataSource = dsoClienti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = dbeCodiceChange
    end
    object dbeDenom2: TDBEdit
      Left = 132
      Top = 60
      Width = 420
      Height = 22
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE2'
      DataSource = dsoClienti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = dbeDenom2Exit
    end
    object dbeDenom: TDBEdit
      Left = 132
      Top = 33
      Width = 420
      Height = 22
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DENOMINAZIONE'
      DataSource = dsoClienti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = dbeDenomExit
    end
    object DBEdit10: TDBEdit
      Left = 260
      Top = 7
      Width = 98
      Height = 22
      CharCase = ecUpperCase
      DataField = 'COD2'
      DataSource = dsoClienti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited tbarControl: TToolBar
    Width = 698
    Height = 24
    ButtonHeight = 22
    ButtonWidth = 23
    Indent = 4
    inherited tbtnEsci: TToolButton
      Left = 4
    end
    inherited sep1: TToolButton
      Left = 27
    end
    inherited tbtnNuovo: TToolButton
      Left = 35
    end
    inherited tbtnModifica: TToolButton
      Left = 58
    end
    inherited sep2: TToolButton
      Left = 81
    end
    inherited tbtnSalva: TToolButton
      Left = 89
    end
    inherited tbtnAnulla: TToolButton
      Left = 112
    end
    inherited sep3: TToolButton
      Left = 135
    end
    inherited tbtnElimina: TToolButton
      Left = 143
    end
    inherited sep4: TToolButton
      Left = 166
    end
    inherited tbtnPrev: TToolButton
      Left = 174
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      Left = 197
      OnClick = tbtnNextClick
    end
    inherited sep5: TToolButton
      Left = 220
    end
    object tbtnPrn: TToolButton
      Left = 228
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Scheda'
      Caption = 'Stampa'
      ImageIndex = 25
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      OnClick = tbtnPrnClick
    end
    object ToolButton1: TToolButton
      Left = 251
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 259
      Top = 0
      Cursor = crHandPoint
      Caption = 'ToolButton2'
      ImageIndex = 47
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 282
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 48
      Style = tbsSeparator
    end
    object Edit2: TEdit
      Left = 290
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
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 449
      Top = 0
      Width = 112
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
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object ToolButton4: TToolButton
      Left = 561
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 49
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 569
      Top = 0
      Cursor = crHandPoint
      Hint = 'Verifica Clienti in Piano Conti'
      Caption = 'ToolButton5'
      ImageIndex = 44
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
  end
  object paDati: TPanel
    Left = 0
    Top = 116
    Width = 698
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object pctrlDatiClienti: TPageControl
      Left = 0
      Top = 0
      Width = 698
      Height = 302
      ActivePage = tabs1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '&Anagrafica'
        object paAnagrafica: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laCodFisc: TLabel
            Left = 6
            Top = 6
            Width = 105
            Height = 16
            Caption = 'Codice Fiscale'
          end
          object laSesso: TLabel
            Left = 196
            Top = 6
            Width = 45
            Height = 16
            Caption = 'Sesso'
          end
          object laTitolo: TLabel
            Left = 14
            Top = 50
            Width = 41
            Height = 16
            Caption = 'Titolo'
          end
          object laCognome: TLabel
            Left = 114
            Top = 50
            Width = 67
            Height = 16
            Caption = 'Cognome'
          end
          object laNome: TLabel
            Left = 353
            Top = 50
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object laDataDiNasc: TLabel
            Left = 346
            Top = 7
            Width = 92
            Height = 16
            Caption = 'Data di nasc.'
          end
          object laComuneDiNasc: TLabel
            Left = 444
            Top = 7
            Width = 133
            Height = 16
            Caption = 'Comune Di Nascita'
          end
          object laCAPdiNasc: TLabel
            Left = 350
            Top = 89
            Width = 31
            Height = 16
            Caption = 'CAP'
          end
          object laNazione: TLabel
            Left = 14
            Top = 89
            Width = 58
            Height = 16
            Caption = 'Nazione'
          end
          object dbeCodFisc: TDBEdit
            Left = 6
            Top = 22
            Width = 188
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CODICE_FISCALE'
            DataSource = dsoClienti
            TabOrder = 0
            OnExit = dbeCodFiscExit
          end
          object LookSesso: TDBLookupComboBox
            Left = 196
            Top = 22
            Width = 145
            Height = 22
            DataField = 'SESSO'
            DataSource = dsoClienti
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoSesso
            TabOrder = 1
          end
          object dbeCognome: TDBEdit
            Left = 114
            Top = 66
            Width = 233
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COGNOME'
            DataSource = dsoClienti
            TabOrder = 5
          end
          object dbeNome: TDBEdit
            Left = 353
            Top = 66
            Width = 186
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = dsoClienti
            TabOrder = 6
          end
          object dbeDataDiNascita: TDBEdit
            Left = 346
            Top = 22
            Width = 87
            Height = 22
            CharCase = ecUpperCase
            DataField = 'DATA_DI_NASCITA'
            DataSource = dsoClienti
            MaxLength = 10
            TabOrder = 7
          end
          object dbeComuneDiNascita: TDBEdit
            Left = 436
            Top = 22
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COMUNE_DI_NASCITA_ID'
            DataSource = dsoClienti
            TabOrder = 8
            Visible = False
            OnChange = dbeComuneDiNascitaChange
          end
          object bbLookComuneDiNascita: TBitBtn
            Left = 314
            Top = 105
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 10
            OnClick = bbLookComuneDiNascitaClick
          end
          object edComuneDiNascita: TEdit
            Left = 456
            Top = 87
            Width = 201
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 18
            Visible = False
            OnExit = edComuneDiNascitaExit
          end
          object edCAPdiNascita: TEdit
            Left = 250
            Top = 104
            Width = 49
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 16
            Visible = False
            OnExit = edCAPdiNascitaExit
          end
          object bbLookCAPdiNascita: TBitBtn
            Left = 400
            Top = 105
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 12
            OnClick = bbLookCAPdiNascitaClick
          end
          object edNazione: TEdit
            Left = 456
            Top = 113
            Width = 201
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 19
            Visible = False
            OnExit = edNazioneExit
          end
          object dbeNazione: TDBEdit
            Left = 4
            Top = 104
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZIONE_DI_NASCITA_ID'
            DataSource = dsoClienti
            TabOrder = 13
            Visible = False
            OnChange = dbeNazioneChange
          end
          object bbLookNazione: TBitBtn
            Left = 216
            Top = 105
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 15
            OnClick = bbLookNazioneClick
          end
          object dbeTitolo: TDBEdit
            Left = 10
            Top = 66
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TITOLO_ID'
            DataSource = dsoClienti
            TabOrder = 2
            Visible = False
            OnChange = dbeTitoloChange
          end
          object edTitolo: TEdit
            Left = 618
            Top = 102
            Width = 64
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 17
            Visible = False
            OnExit = edTitoloExit
          end
          object bbLookTitolo: TBitBtn
            Left = 84
            Top = 66
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 4
            OnClick = bbLookTitoloClick
          end
          object dbeTitolo_descr: TDBEdit
            Left = 14
            Top = 66
            Width = 65
            Height = 22
            DataField = 'TITOLO_DESCR'
            DataSource = dsoClienti
            TabOrder = 3
          end
          object dbeComNasc_descr: TDBEdit
            Left = 444
            Top = 22
            Width = 201
            Height = 22
            DataField = 'COMNASC_DESCR'
            DataSource = dsoClienti
            TabOrder = 9
          end
          object dbecapnasc_descr: TDBEdit
            Left = 342
            Top = 104
            Width = 55
            Height = 22
            DataField = 'CAPNASC_DESCR'
            DataSource = dsoClienti
            TabOrder = 11
          end
          object dbeNazNasc_descr: TDBEdit
            Left = 12
            Top = 104
            Width = 201
            Height = 22
            DataSource = dsoClienti
            Enabled = False
            TabOrder = 14
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
          Width = 690
          Height = 268
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laIndA1: TLabel
            Left = 21
            Top = 17
            Width = 55
            Height = 16
            Caption = 'Indirizzo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laComuneA1: TLabel
            Left = 21
            Top = 58
            Width = 53
            Height = 16
            Caption = 'Comune'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laTel1A1: TLabel
            Left = 21
            Top = 157
            Width = 67
            Height = 16
            Caption = 'Telefono 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laTel2A1: TLabel
            Left = 173
            Top = 157
            Width = 67
            Height = 16
            Caption = 'Telefono 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laCAPA1: TLabel
            Left = 23
            Top = 106
            Width = 27
            Height = 16
            Caption = 'CAP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laNazioneA1: TLabel
            Left = 293
            Top = 110
            Width = 52
            Height = 16
            Caption = 'Nazione'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laFaxA1: TLabel
            Left = 345
            Top = 157
            Width = 24
            Height = 16
            Caption = 'Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laEMailA1: TLabel
            Left = 21
            Top = 197
            Width = 47
            Height = 16
            Caption = 'E - Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laInternetA1: TLabel
            Left = 217
            Top = 197
            Width = 49
            Height = 16
            Caption = 'Internet'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laPartIVA: TLabel
            Left = 25
            Top = 134
            Width = 68
            Height = 16
            Caption = 'Partita IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laLocal: TLabel
            Left = 298
            Top = 134
            Width = 51
            Height = 16
            Caption = 'Localita'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 151
            Top = 108
            Width = 18
            Height = 16
            Caption = 'Pr.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeIndirizzo_A1: TDBEdit
            Left = 21
            Top = 33
            Width = 501
            Height = 22
            CharCase = ecUpperCase
            DataField = 'INDIRIZZO'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dbeTel1_A1: TDBEdit
            Left = 21
            Top = 173
            Width = 145
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TEL1'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object dbeTel2_A1: TDBEdit
            Left = 173
            Top = 173
            Width = 165
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TEL2'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object dbeFax_A1: TDBEdit
            Left = 345
            Top = 173
            Width = 177
            Height = 22
            CharCase = ecUpperCase
            DataField = 'FAX'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
          end
          object dbeEMail_A1: TDBEdit
            Left = 21
            Top = 214
            Width = 189
            Height = 22
            CharCase = ecUpperCase
            DataField = 'EMAIL'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
          object dbeInternet_A1: TDBEdit
            Left = 217
            Top = 214
            Width = 305
            Height = 22
            CharCase = ecUpperCase
            DataField = 'INTERNET'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
          end
          object dbePartIVA: TDBEdit
            Left = 105
            Top = 130
            Width = 159
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PARTITA_IVA'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnExit = dbePartIVAExit
          end
          object dbeLocalita: TDBEdit
            Left = 362
            Top = 130
            Width = 159
            Height = 22
            CharCase = ecUpperCase
            DataField = 'LOCALITA'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object dbeNazioneInd: TDBEdit
            Left = 356
            Top = 106
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZIONE_ID'
            DataSource = dsoClienti
            TabOrder = 8
            Visible = False
            OnChange = dbeNazioneIndChange
          end
          object edNazioneInd: TEdit
            Left = 494
            Top = 136
            Width = 133
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 18
            Visible = False
          end
          object bbLookNazioneInd: TBitBtn
            Left = 496
            Top = 106
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 10
            OnClick = bbLookNazioneIndClick
          end
          object dbeComune: TDBEdit
            Left = 16
            Top = 76
            Width = 5
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COMUNE_ID'
            DataSource = dsoClienti
            TabOrder = 1
            Visible = False
            OnChange = dbeComuneChange
          end
          object edComune: TEdit
            Left = 528
            Top = 76
            Width = 161
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 19
            Visible = False
          end
          object bbLookComune: TBitBtn
            Left = 344
            Top = 76
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = bbLookComuneClick
          end
          object edCAP: TEdit
            Left = 540
            Top = 100
            Width = 49
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 20
            Visible = False
          end
          object bbLookCAP: TBitBtn
            Left = 108
            Top = 104
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 5
            OnClick = bbLookCAPClick
          end
          object edPr: TEdit
            Left = 660
            Top = 190
            Width = 33
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 21
            Visible = False
          end
          object bbLookPr: TBitBtn
            Left = 214
            Top = 104
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 7
            OnClick = bbLookPrClick
          end
          object dbecom_descr: TDBEdit
            Left = 21
            Top = 76
            Width = 320
            Height = 22
            CharCase = ecUpperCase
            DataField = 'COM_DESCR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object dbeCap_descr: TDBEdit
            Left = 56
            Top = 104
            Width = 49
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CAP_DESCR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object dbePR_descr: TDBEdit
            Left = 178
            Top = 104
            Width = 35
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PR_DESCR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object dbeNaz_descr: TDBEdit
            Left = 362
            Top = 106
            Width = 131
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZ_DESCR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '&Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object Label2: TLabel
            Left = 49
            Top = 9
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
            Left = 99
            Top = 222
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
            Left = 38
            Top = 246
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
            Left = 104
            Top = 53
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
            Left = 40
            Top = 31
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
            Top = 5
            Width = 131
            Height = 20
            DataField = 'CONTROPARTITA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dsoPianoConti
            ParentFont = False
            TabOrder = 0
          end
          object LookPCDescr: TDBLookupComboBox
            Left = 274
            Top = 5
            Width = 386
            Height = 20
            DataField = 'CONTROPARTITA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dsoPianoConti
            ParentFont = False
            TabOrder = 1
          end
          object dbeContoCorr: TDBEdit
            Left = 134
            Top = 243
            Width = 228
            Height = 20
            CharCase = ecUpperCase
            DataField = 'CONTO_CORRENTE'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object bbLookCABDescr: TBitBtn
            Left = 611
            Top = 16
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 2
            Visible = False
            OnClick = bbLookCABDescrClick
          end
          object bbLookABIDescr: TBitBtn
            Left = 659
            Top = 217
            Width = 25
            Height = 23
            Caption = '...'
            TabOrder = 3
            OnClick = bbLookABIDescrClick
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 134
            Top = 219
            Width = 103
            Height = 21
            DropDownCount = 8
            DataField = 'CAB_ID'
            DataSource = dsoClienti
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'ID_CAB'
            LookupSource = dsoCAB
            ParentFont = False
            TabOrder = 5
            OnChange = RxDBLookupCombo1Change
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 240
            Top = 219
            Width = 417
            Height = 21
            DropDownCount = 8
            DataField = 'CAB_ID'
            DataSource = dsoClienti
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoCAB
            ParentFont = False
            TabOrder = 6
            OnChange = RxDBLookupCombo2Change
          end
          object RxDBLookupCombo3: TRxDBLookupCombo
            Left = 134
            Top = 49
            Width = 103
            Height = 21
            DropDownCount = 8
            DataField = 'ABI_ID'
            DataSource = dsoClienti
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_ABI'
            LookupDisplay = 'ID_ABI'
            LookupSource = dsoABI
            ParentFont = False
            TabOrder = 7
            OnChange = RxDBLookupCombo3Change
          end
          object RxDBLookupCombo4: TRxDBLookupCombo
            Left = 240
            Top = 49
            Width = 417
            Height = 21
            DropDownCount = 8
            DataField = 'ABI_ID'
            DataSource = dsoClienti
            EmptyItemColor = 10737916
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_ABI'
            LookupDisplay = 'DESCR'
            LookupSource = dsoABI
            ParentFont = False
            TabOrder = 8
            OnChange = RxDBLookupCombo4Change
            OnCloseUp = RxDBLookupCombo4Exit
            OnExit = RxDBLookupCombo4Exit
          end
          object RxDBGrid1: TRxDBGrid
            Left = 8
            Top = 72
            Width = 673
            Height = 145
            Hint = 'Doppio Click per selezionare '
            DataSource = dsoCAB
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = RxDBGrid1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_CAB'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ABI_ID'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMUNE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROV'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVINCIA_ID'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMUNE_ID'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOCALITA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAP_ID'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 134
            Top = 27
            Width = 131
            Height = 20
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'TIPO'
            ListField = 'NOME_CONTO'
            ListSource = dsoPianoConti
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 274
            Top = 27
            Width = 386
            Height = 20
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'TIPO'
            ListField = 'DESCR'
            ListSource = dsoPianoConti
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
        end
      end
      object tabs4: TTabSheet
        Caption = '&Vendita'
        ImageIndex = 3
        object paVendita: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laListino: TLabel
            Left = 78
            Top = 192
            Width = 46
            Height = 16
            Caption = 'Listino'
          end
          object laCat: TLabel
            Left = 55
            Top = 10
            Width = 69
            Height = 16
            Caption = 'Categoria'
          end
          object laAgente: TLabel
            Left = 74
            Top = 32
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
          object laProvvigione: TLabel
            Left = 40
            Top = 219
            Width = 84
            Height = 16
            Caption = 'Provvigione'
          end
          object laSconto: TLabel
            Left = 23
            Top = 243
            Width = 101
            Height = 16
            Caption = 'Sconto restata'
          end
          object laZona: TLabel
            Left = 88
            Top = 117
            Width = 36
            Height = 16
            Caption = 'Zona'
          end
          object laSottozona: TLabel
            Left = 54
            Top = 138
            Width = 70
            Height = 16
            Caption = 'Sottozona'
          end
          object laPorto: TLabel
            Left = 86
            Top = 169
            Width = 38
            Height = 16
            Caption = 'Porto'
          end
          object laPiu: TLabel
            Left = 217
            Top = 243
            Width = 17
            Height = 16
            Caption = ' + '
          end
          object Label8: TLabel
            Left = 56
            Top = 92
            Width = 57
            Height = 15
            Caption = 'Capo Area'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 43
            Top = 52
            Width = 70
            Height = 15
            Caption = 'Capo Gruppo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 77
            Top = 72
            Width = 36
            Height = 15
            Caption = 'R.C.G.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 431
            Top = 243
            Width = 78
            Height = 16
            Caption = 'Maggioraz.'
          end
          object dbeSconto1: TDBEdit
            Left = 134
            Top = 240
            Width = 78
            Height = 22
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA1'
            DataSource = dsoClienti
            TabOrder = 0
          end
          object dbeSconto2: TDBEdit
            Left = 238
            Top = 240
            Width = 76
            Height = 22
            CharCase = ecUpperCase
            DataField = 'SCONTO_TESTATA2'
            DataSource = dsoClienti
            TabOrder = 1
          end
          object RxDBLookupCombo5: TRxDBLookupCombo
            Left = 134
            Top = 30
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = DataSource3
            ParentFont = False
            TabOrder = 2
          end
          object RxDBLookupCombo6: TRxDBLookupCombo
            Left = 238
            Top = 30
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = DataSource3
            ParentFont = False
            TabOrder = 3
          end
          object RxDBLookupCombo7: TRxDBLookupCombo
            Left = 134
            Top = 90
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CA'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = DataSource2
            ParentFont = False
            TabOrder = 4
          end
          object RxDBLookupCombo8: TRxDBLookupCombo
            Left = 238
            Top = 90
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CA'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = DataSource2
            ParentFont = False
            TabOrder = 5
          end
          object RxDBLookupCombo9: TRxDBLookupCombo
            Left = 134
            Top = 50
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CG'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = DataSource1
            ParentFont = False
            TabOrder = 6
          end
          object RxDBLookupCombo10: TRxDBLookupCombo
            Left = 238
            Top = 50
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CG'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = DataSource1
            ParentFont = False
            TabOrder = 7
          end
          object RxDBLookupCombo11: TRxDBLookupCombo
            Left = 134
            Top = 70
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = DataSource4
            ParentFont = False
            TabOrder = 8
          end
          object RxDBLookupCombo12: TRxDBLookupCombo
            Left = 238
            Top = 70
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = DataSource4
            ParentFont = False
            TabOrder = 9
          end
          object RxDBLookupCombo13: TRxDBLookupCombo
            Left = 134
            Top = 218
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'PROVVIGIONE'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoProvvigione
            ParentFont = False
            TabOrder = 10
          end
          object RxDBLookupCombo14: TRxDBLookupCombo
            Left = 134
            Top = 9
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CATEGORIA_CLIENTE_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoCatCli
            ParentFont = False
            TabOrder = 11
          end
          object RxDBLookupCombo15: TRxDBLookupCombo
            Left = 238
            Top = 9
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CATEGORIA_CLIENTE_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoCatCli
            ParentFont = False
            TabOrder = 12
          end
          object LookZone: TRxDBLookupCombo
            Left = 135
            Top = 116
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_ZONA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'ID_CODICE_ZONA'
            LookupDisplay = 'ID_CODICE_ZONA'
            LookupSource = dsoZone
            ParentFont = False
            TabOrder = 13
          end
          object LookZoneDescr: TRxDBLookupCombo
            Left = 239
            Top = 116
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_ZONA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'ID_CODICE_ZONA'
            LookupDisplay = 'DESCR'
            LookupSource = dsoZone
            ParentFont = False
            TabOrder = 14
          end
          object LookSottoZone: TRxDBLookupCombo
            Left = 135
            Top = 137
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'ID_CODICE_SOTTO_ZONE'
            LookupDisplay = 'ID_CODICE_SOTTO_ZONE'
            LookupSource = dsoSottoZone
            ParentFont = False
            TabOrder = 15
            OnCloseUp = LookSottoZoneCloseUp
          end
          object dd: TRxDBLookupCombo
            Left = 239
            Top = 137
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_SOTTO_ZONA_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'ID_CODICE_SOTTO_ZONE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoSottoZone
            ParentFont = False
            TabOrder = 16
            OnCloseUp = ddCloseUp
          end
          object RxDBLookupCombo20: TRxDBLookupCombo
            Left = 239
            Top = 168
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'PORTO_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoPorto
            ParentFont = False
            TabOrder = 17
          end
          object RxDBLookupCombo21: TRxDBLookupCombo
            Left = 135
            Top = 168
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'PORTO_ID'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoPorto
            ParentFont = False
            TabOrder = 18
          end
          object RxDBLookupCombo22: TRxDBLookupCombo
            Left = 135
            Top = 192
            Width = 89
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_LISTINO'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoListini
            ParentFont = False
            TabOrder = 19
          end
          object RxDBLookupCombo23: TRxDBLookupCombo
            Left = 239
            Top = 192
            Width = 307
            Height = 19
            DropDownCount = 8
            DataField = 'CODICE_LISTINO'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoListini
            ParentFont = False
            TabOrder = 20
          end
          object DBEdit14: TDBEdit
            Left = 510
            Top = 238
            Width = 76
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CERTIFICATO'
            DataSource = dsoClienti
            TabOrder = 21
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri &Dati'
        ImageIndex = 4
        object paAltriDati: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
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
            Left = 93
            Top = 100
            Width = 32
            Height = 16
            Caption = 'Fido'
          end
          object laRischio: TLabel
            Left = 270
            Top = 100
            Width = 103
            Height = 16
            Caption = 'Rischio cliente'
          end
          object Label9: TLabel
            Left = 140
            Top = 136
            Width = 162
            Height = 16
            Caption = 'Escludi dalle scadenze'
          end
          object laGiorniEscl: TLabel
            Left = 297
            Top = 156
            Width = 47
            Height = 16
            Caption = 'Giorno'
          end
          object Label1: TLabel
            Left = 141
            Top = 156
            Width = 39
            Height = 16
            Caption = 'Mese'
          end
          object LookMoneta: TDBLookupComboBox
            Left = 137
            Top = 16
            Width = 79
            Height = 22
            DataField = 'MONETA_ID'
            DataSource = dsoClienti
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
            DataSource = dsoClienti
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
            DataSource = dsoClienti
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
            DataSource = dsoClienti
            KeyField = 'ID_PAGAMENTO'
            ListField = 'ID_PAGAMENTO'
            ListSource = dsoPagamenti
            TabOrder = 2
          end
          object dbeFido: TDBEdit
            Left = 137
            Top = 97
            Width = 116
            Height = 22
            CharCase = ecUpperCase
            DataField = 'FIDO'
            DataSource = dsoClienti
            TabOrder = 6
          end
          object dbeRischio: TDBEdit
            Left = 376
            Top = 97
            Width = 119
            Height = 22
            CharCase = ecUpperCase
            DataField = 'RISCHIO'
            DataSource = dsoClienti
            TabOrder = 7
          end
          object LookEsclMese1: TDBLookupComboBox
            Left = 140
            Top = 171
            Width = 137
            Height = 22
            DataField = 'ESCLUDI_MESE1'
            DataSource = dsoClienti
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoMesi
            TabOrder = 8
          end
          object LookEsclMese2: TDBLookupComboBox
            Left = 140
            Top = 198
            Width = 137
            Height = 22
            DataField = 'ESCLUDI_MESE2'
            DataSource = dsoClienti
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoMesi
            TabOrder = 10
          end
          object dbeGGscad1: TDBEdit
            Left = 297
            Top = 171
            Width = 37
            Height = 22
            CharCase = ecUpperCase
            DataField = 'GG_SCADENZA1'
            DataSource = dsoClienti
            TabOrder = 9
          end
          object dbeGGScad2: TDBEdit
            Left = 297
            Top = 198
            Width = 37
            Height = 22
            CharCase = ecUpperCase
            DataField = 'GG_SCADENZA2'
            DataSource = dsoClienti
            TabOrder = 11
          end
          object LookCodRagg: TDBLookupComboBox
            Left = 137
            Top = 70
            Width = 79
            Height = 22
            DataField = 'RAGGRUPPAMENTO_ID'
            DataSource = dsoClienti
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
            DataSource = dsoClienti
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoRaggrupCliFor
            TabOrder = 5
          end
        end
      end
      object tabs6: TTabSheet
        Caption = 'Altre &Sedi'
        ImageIndex = 5
        object paAltriSedi: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
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
            object Label3: TLabel
              Left = 24
              Top = 37
              Width = 58
              Height = 16
              Caption = 'Indirizzo'
            end
            object Label4: TLabel
              Left = 183
              Top = 61
              Width = 32
              Height = 16
              Caption = 'Citt'#224
            end
            object Label5: TLabel
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
      object tabs7: TTabSheet
        Caption = '&Fatturazione'
        ImageIndex = 6
        object paFatturazione: TPanel
          Left = 0
          Top = 0
          Width = 690
          Height = 268
          Align = alClient
          BevelOuter = bvLowered
          Color = 13098494
          Enabled = False
          TabOrder = 0
          object laIvaEsen: TLabel
            Left = 16
            Top = 42
            Width = 125
            Height = 16
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
            Visible = False
          end
          object Label17: TLabel
            Left = 16
            Top = 74
            Width = 125
            Height = 16
            Caption = 'Lettera Esenzione'
          end
          object gbPosRif: TGroupBox
            Left = 286
            Top = 168
            Width = 379
            Height = 91
            Caption = 'Posizioni && Riferimenti'
            TabOrder = 2
            Visible = False
            object dbragPosRif: TDBRadioGroup
              Left = 213
              Top = 16
              Width = 160
              Height = 63
              Caption = 'Posizione riferimento'
              DataField = 'POS_RIF_BOLLE'
              DataSource = dsoClienti
              Items.Strings = (
                'In fondo'
                'Tra le righe')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2')
            end
          end
          object gbDescrSu: TGroupBox
            Left = 35
            Top = 136
            Width = 196
            Height = 121
            Caption = 'Descr. su'
            TabOrder = 3
            Visible = False
            object laFattDiff: TLabel
              Left = 16
              Top = 91
              Width = 62
              Height = 16
              Caption = 'Fatt. Diff.'
            end
            object laFattImm: TLabel
              Left = 16
              Top = 68
              Width = 67
              Height = 16
              Caption = 'Fatt. Imm.'
            end
            object laDDT: TLabel
              Left = 16
              Top = 46
              Width = 33
              Height = 16
              Caption = 'DDT'
            end
            object laOrdini: TLabel
              Left = 16
              Top = 23
              Width = 42
              Height = 16
              Caption = 'Ordini'
            end
            object DBEdit6: TDBEdit
              Left = 81
              Top = 20
              Width = 99
              Height = 22
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 81
              Top = 42
              Width = 99
              Height = 22
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 81
              Top = 65
              Width = 99
              Height = 22
              CharCase = ecUpperCase
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 81
              Top = 88
              Width = 99
              Height = 22
              CharCase = ecUpperCase
              TabOrder = 3
            end
          end
          object dbcbAccotpArt: TDBCheckBox
            Left = 521
            Top = 152
            Width = 140
            Height = 14
            Caption = 'Accorpa articoli'
            DataField = 'ACCORPA_ARTICOLI'
            DataSource = dsoClienti
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
          end
          object dbcbFattRiepil: TDBCheckBox
            Left = 328
            Top = 144
            Width = 165
            Height = 17
            Caption = 'Fatture riepilogative'
            DataField = 'FATTURA_RIEPILOGATIVA'
            DataSource = dsoClienti
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
          end
          object DBCheckBox3: TDBCheckBox
            Left = 16
            Top = 10
            Width = 137
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Paese Extra CEE'
            DataField = 'RIP_RIF_ORDINI'
            DataSource = dsoClienti
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit13: TDBEdit
            Left = 149
            Top = 73
            Width = 532
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NAZNASC_DESCR'
            DataSource = dsoClienti
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object RxDBLookupCombo16: TRxDBLookupCombo
            Left = 149
            Top = 40
            Width = 73
            Height = 21
            DropDownCount = 8
            DataField = 'CODICE_IVA_ESENTE'
            DataSource = dsoClienti
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoEsenzione
            TabOrder = 6
          end
          object RxDBLookupCombo17: TRxDBLookupCombo
            Left = 229
            Top = 40
            Width = 453
            Height = 21
            DropDownCount = 8
            DataField = 'CODICE_IVA_ESENTE'
            DataSource = dsoClienti
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoEsenzione
            TabOrder = 7
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Note'
        ImageIndex = 7
        object DBMemo1: TDBMemo
          Left = 8
          Top = 0
          Width = 673
          Height = 265
          DataField = 'NOTE'
          DataSource = dsoClienti
          TabOrder = 0
        end
      end
    end
  end
  object dso_1temp: TDataSource
    DataSet = dmodAz.r_qCliForn
    Left = 600
    Top = 75
  end
  object dsoSesso: TDataSource
    DataSet = dmodPub.ibTab_Sesso
    Left = 256
    Top = 16
  end
  object dsoNazioni: TDataSource
    DataSet = dmodPub.ibTab_Nazioni
    Left = 216
    Top = 82
  end
  object dsoPianoConti: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 254
    Top = 82
  end
  object dsoCAB: TDataSource
    DataSet = dmodAz.ibTab_CAB
    Left = 282
    Top = 82
  end
  object dsoABI: TDataSource
    DataSet = dmodAz.ibTab_ABI
    Left = 308
    Top = 82
  end
  object dsoListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 344
    Top = 82
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 402
    Top = 82
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 428
    Top = 82
  end
  object dsoProvvigione: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 456
    Top = 82
  end
  object dsoSottoZone: TDataSource
    DataSet = dmodAz.ibTab_SottoZone
    Left = 484
    Top = 82
  end
  object dsoZone: TDataSource
    DataSet = dmodAz.ibTab_Zone
    Left = 512
    Top = 82
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 624
    Top = 38
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 556
    Top = 33
  end
  object dsoCatCli: TDataSource
    DataSet = dmodAz.ibTab_Cat_Cli
    Left = 372
    Top = 82
  end
  object dsoRaggrupCliFor: TDataSource
    DataSet = dmodAz.ibTab_Raggrup_Cli_For
    Left = 456
    Top = 41
  end
  object dsoMesi: TDataSource
    DataSet = dmodPub.ibTab_Mesi
    Left = 340
    Top = 33
  end
  object dsoEsenzione: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
    Left = 468
    Top = 31
  end
  object dsoAltreSedi: TDataSource
    DataSet = dmodAz.ibqAltreSedi
    OnUpdateData = dsoAltreSediUpdateData
    Left = 384
    Top = 33
  end
  object dsoTipo_titolo: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Titolo
    Left = 512
    Top = 33
  end
  object dsoComuni: TDataSource
    DataSet = dmodPub.ibTab_Comuni
    Left = 188
    Top = 82
  end
  object dsoPersAz: TDataSource
    DataSet = dmodAz.ibTabPersAz
    Left = 584
    Top = 41
  end
  object dsoClienti: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 218
    Top = 26
  end
  object mmCli: TMainMenu
    Left = 94
    Top = 29
    object File1: TMenuItem
      Caption = 'File'
      Visible = False
      object miCli_In_PianoConti: TMenuItem
        Caption = 'Inserire tutti i Clienti In Piano Dei Conti'
        ShortCut = 16464
        OnClick = miCli_In_PianoContiClick
      end
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2'
      'order by descr')
    Left = 552
    Top = 193
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery2CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery2PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery2IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery2TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery2TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery2TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery2TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery2TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery2CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery2CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery2TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 584
    Top = 201
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 1'
      'order by descr')
    Left = 632
    Top = 193
    object IBQuery1CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery1IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery1TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery1TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery1TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery1TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery1CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery1CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery1TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 664
    Top = 193
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
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 592
    Top = 233
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 3'
      'order by descr')
    Left = 560
    Top = 233
    object IBStringField7: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField8: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBStringField9: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField10: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object FloatField5: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField6: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField4: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField5: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField6: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField7: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField8: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField11: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField12: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IntegerField4: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 224
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 648
    Top = 72
  end
end
