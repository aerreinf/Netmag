object fArticoliDB: TfArticoliDB
  Left = 107
  Top = 67
  BorderStyle = bsDialog
  Caption = 'Articoli'
  ClientHeight = 423
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Articoli: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Articoli
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_ArticoliClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 687
    Height = 84
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object laCodice: TLabel
      Left = 52
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 28
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laTipoArt: TLabel
      Left = 20
      Top = 60
      Width = 62
      Height = 13
      Caption = 'Tipo Artticolo'
    end
    object dbeCodice: TDBEdit
      Left = 96
      Top = 8
      Width = 189
      Height = 21
      DataField = 'CODICE_ARTICOLO'
      DataSource = dmodAz.dsoTab_Articoli
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 96
      Top = 32
      Width = 393
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Articoli
      TabOrder = 1
    end
    object LookTipoArt: TDBLookupComboBox
      Left = 96
      Top = 56
      Width = 145
      Height = 21
      DataField = 'TIPO_ARTICOLO_ID'
      DataSource = dmodAz.dsoTab_Articoli
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_TipoArt
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 125
    Width = 687
    Height = 298
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object pctrlArticoli: TPageControl
      Left = 2
      Top = 2
      Width = 683
      Height = 294
      ActivePage = tabs5
      Align = alClient
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Generale'
        object paGeneral: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 266
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Codice IVA'
          end
          object Label2: TLabel
            Left = 16
            Top = 48
            Width = 27
            Height = 13
            Caption = 'Costo'
          end
          object Label3: TLabel
            Left = 236
            Top = 48
            Width = 57
            Height = 13
            Caption = 'Costo ultimo'
          end
          object Label4: TLabel
            Left = 16
            Top = 76
            Width = 32
            Height = 13
            Caption = 'Prezzo'
          end
          object Label5: TLabel
            Left = 288
            Top = 104
            Width = 30
            Height = 13
            Caption = 'Sconti'
          end
          object Label6: TLabel
            Left = 16
            Top = 132
            Width = 54
            Height = 13
            Caption = 'Scorta Min.'
          end
          object Label7: TLabel
            Left = 264
            Top = 132
            Width = 57
            Height = 13
            Caption = 'Scorta Max.'
          end
          object Label8: TLabel
            Left = 16
            Top = 160
            Width = 38
            Height = 13
            Caption = 'Reparto'
          end
          object Label9: TLabel
            Left = 216
            Top = 188
            Width = 60
            Height = 13
            Caption = 'Num.Varianti'
          end
          object Label10: TLabel
            Left = 364
            Top = 188
            Width = 31
            Height = 13
            Caption = 'Provv.'
          end
          object laOmaggio: TLabel
            Left = 16
            Top = 188
            Width = 42
            Height = 13
            Caption = 'Omaggio'
          end
          object Label22: TLabel
            Left = 204
            Top = 76
            Width = 88
            Height = 13
            Caption = 'Prezzo IVA inclusa'
          end
          object LookCodIVA: TDBLookupComboBox
            Left = 92
            Top = 16
            Width = 85
            Height = 21
            DataField = 'CODICE_IVA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Codici_IVA
            TabOrder = 0
          end
          object LookCodIVADescr: TDBLookupComboBox
            Left = 184
            Top = 16
            Width = 297
            Height = 21
            DataField = 'CODICE_IVA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Codici_IVA
            TabOrder = 1
          end
          object dbeCosto: TDBEdit
            Left = 92
            Top = 44
            Width = 85
            Height = 21
            DataField = 'COSTO_STANDART'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 2
          end
          object dbeCostoUltimo: TDBEdit
            Left = 300
            Top = 44
            Width = 89
            Height = 21
            DataField = 'COSTO_ULTIMO'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 3
          end
          object dbePrezzo: TDBEdit
            Left = 92
            Top = 72
            Width = 85
            Height = 21
            DataField = 'PREZZO_BASE'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 4
            OnExit = dbePrezzoExit
          end
          object dbeSconto1: TDBEdit
            Left = 332
            Top = 100
            Width = 69
            Height = 21
            DataField = 'SCONTO1'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 5
          end
          object dbeSconto2: TDBEdit
            Left = 412
            Top = 100
            Width = 69
            Height = 21
            DataField = 'SCONTO2'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 6
          end
          object dbeScortaMin: TDBEdit
            Left = 92
            Top = 128
            Width = 149
            Height = 21
            DataField = 'SCORTA_MIN'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 7
          end
          object dbeScortaMax: TDBEdit
            Left = 332
            Top = 128
            Width = 149
            Height = 21
            DataField = 'SCORTA_MAX'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 8
          end
          object LookReparto: TDBLookupComboBox
            Left = 92
            Top = 156
            Width = 85
            Height = 21
            DataField = 'NUM_REPARTO'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_NUMERO_REPARTO'
            ListField = 'ID_NUMERO_REPARTO'
            ListSource = dmodAz.dsoTab_Reparti
            TabOrder = 9
          end
          object LookRepartpDescr: TDBLookupComboBox
            Left = 188
            Top = 156
            Width = 293
            Height = 21
            DataField = 'NUM_REPARTO'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_NUMERO_REPARTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Reparti
            TabOrder = 10
          end
          object LookNumVar: TDBEdit
            Left = 284
            Top = 184
            Width = 69
            Height = 21
            DataField = 'NUM_VARIANTI'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 12
          end
          object dbeProvv: TDBEdit
            Left = 412
            Top = 184
            Width = 69
            Height = 21
            DataField = 'PROVVIGIONE'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 13
          end
          object LookOmaggio: TDBLookupComboBox
            Left = 92
            Top = 184
            Width = 109
            Height = 21
            DataField = 'OMAGGIO'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodPub.dsoTab_Tipo_Omaggio
            TabOrder = 11
          end
          object edPrezzoIvato: TEdit
            Left = 300
            Top = 72
            Width = 89
            Height = 21
            ReadOnly = True
            TabOrder = 14
            Text = '0'
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Aspetto'
        ImageIndex = 1
        object paAspetto: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 266
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label11: TLabel
            Left = 8
            Top = 28
            Width = 95
            Height = 13
            Caption = 'Unita di misura base'
          end
          object Label12: TLabel
            Left = 24
            Top = 52
            Width = 78
            Height = 13
            Caption = 'Unita di misura 2'
          end
          object Label13: TLabel
            Left = 24
            Top = 76
            Width = 78
            Height = 13
            Caption = 'Unita di misura 3'
          end
          object Label14: TLabel
            Left = 436
            Top = 52
            Width = 12
            Height = 13
            Caption = ' = '
          end
          object Label15: TLabel
            Left = 436
            Top = 76
            Width = 12
            Height = 13
            Caption = ' = '
          end
          object Label16: TLabel
            Left = 512
            Top = 52
            Width = 77
            Height = 13
            Caption = ' x Un. Mis. Base'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 512
            Top = 76
            Width = 77
            Height = 13
            Caption = ' x Un. Mis. Base'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 24
            Top = 100
            Width = 79
            Height = 13
            Caption = 'Aspetto esteriore'
          end
          object Label19: TLabel
            Left = 52
            Top = 128
            Width = 51
            Height = 13
            Caption = 'Peso netto'
          end
          object Label20: TLabel
            Left = 244
            Top = 128
            Width = 50
            Height = 13
            Caption = 'Peso lordo'
          end
          object Label21: TLabel
            Left = 20
            Top = 208
            Width = 182
            Height = 13
            Caption = 'Descrizione aggiuntiva per i documenti'
          end
          object LookUM1: TDBLookupComboBox
            Left = 108
            Top = 24
            Width = 101
            Height = 21
            DataField = 'UNITA_DI_MISURA1_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 0
          end
          object LookUM1D: TDBLookupComboBox
            Left = 216
            Top = 24
            Width = 217
            Height = 21
            DataField = 'UNITA_DI_MISURA1_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 1
          end
          object LookUM2D: TDBLookupComboBox
            Left = 216
            Top = 48
            Width = 217
            Height = 21
            DataField = 'UNITA_DI_MISURA2_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 3
          end
          object LookUM2: TDBLookupComboBox
            Left = 108
            Top = 48
            Width = 101
            Height = 21
            DataField = 'UNITA_DI_MISURA2_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 2
          end
          object LookUM3D: TDBLookupComboBox
            Left = 216
            Top = 72
            Width = 217
            Height = 21
            DataField = 'UNITA_DI_MISURA3_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 6
          end
          object LookUM3: TDBLookupComboBox
            Left = 108
            Top = 72
            Width = 101
            Height = 21
            DataField = 'UNITA_DI_MISURA3_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Unita_Di_Misura
            TabOrder = 5
          end
          object dbeUM2Val: TDBEdit
            Left = 452
            Top = 48
            Width = 57
            Height = 21
            DataField = 'UN_MIS2_VAL'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 4
          end
          object dbeUM3Val: TDBEdit
            Left = 452
            Top = 72
            Width = 57
            Height = 21
            DataField = 'UN_MIS3_VAL'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 7
          end
          object LookAspEst: TDBLookupComboBox
            Left = 108
            Top = 96
            Width = 101
            Height = 21
            DataField = 'ASPETTO_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Aspetto_Est
            TabOrder = 8
          end
          object LookAspEstD: TDBLookupComboBox
            Left = 216
            Top = 96
            Width = 217
            Height = 21
            DataField = 'ASPETTO_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Aspetto_Est
            TabOrder = 9
          end
          object dbePesoNetto: TDBEdit
            Left = 108
            Top = 124
            Width = 117
            Height = 21
            DataField = 'PESO_NETTO_KG'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 10
          end
          object dbePesoLordo: TDBEdit
            Left = 308
            Top = 124
            Width = 125
            Height = 21
            DataField = 'PESO_LORDO_KG'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 11
          end
          object dbeDescrPerDocum: TDBEdit
            Left = 16
            Top = 228
            Width = 577
            Height = 21
            DataField = 'DESCR2'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 14
          end
          object dbcbNSIntervento: TDBCheckBox
            Left = 8
            Top = 168
            Width = 161
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Non stampare su inventario'
            DataField = 'NON_STAMPA_INVENTARIO'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 12
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcbNSRegMagaz: TDBCheckBox
            Left = 228
            Top = 168
            Width = 197
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Non stampare registro di magazino'
            DataField = 'NON_STAMPA_REGISTRO'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 13
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object tabs3: TTabSheet
        Caption = 'Gruppi'
        ImageIndex = 2
        object paGruppi: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 266
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label23: TLabel
            Left = 88
            Top = 16
            Width = 41
            Height = 13
            Caption = 'Fornitore'
          end
          object Label24: TLabel
            Left = 52
            Top = 192
            Width = 78
            Height = 13
            Caption = 'Categoria articoli'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 80
            Top = 88
            Width = 49
            Height = 13
            Caption = 'Produttore'
          end
          object Label26: TLabel
            Left = 44
            Top = 216
            Width = 87
            Height = 13
            Caption = 'Gruppo alternativo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 88
            Top = 64
            Width = 42
            Height = 13
            Caption = 'Stagione'
          end
          object Label28: TLabel
            Left = 20
            Top = 240
            Width = 111
            Height = 13
            Caption = 'Categoria merceologica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 60
            Top = 112
            Width = 71
            Height = 13
            Caption = 'Conto acquisto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 64
            Top = 140
            Width = 66
            Height = 13
            Caption = 'Conto vendita'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 144
            Top = 168
            Width = 44
            Height = 16
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 268
            Top = 168
            Width = 52
            Height = 16
            Caption = 'Gruppo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 388
            Top = 168
            Width = 61
            Height = 16
            Caption = 'Famiglia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 528
            Top = 168
            Width = 33
            Height = 16
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LookForn: TDBLookupComboBox
            Left = 140
            Top = 12
            Width = 325
            Height = 21
            DataField = 'CLI_FOR_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_CLI_FOR'
            ListField = 'DENOMINAZIONE'
            ListSource = dmodAz.dsoqTabFor
            TabOrder = 0
          end
          object LookFornFN: TDBLookupComboBox
            Left = 140
            Top = 36
            Width = 325
            Height = 21
            DataField = 'CLI_FOR_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_CLI_FOR'
            ListField = 'FULL_NAME'
            ListSource = dmodAz.dsoqTabFor
            TabOrder = 1
          end
          object LookCatArt_M: TDBLookupComboBox
            Left = 140
            Top = 188
            Width = 121
            Height = 21
            DataField = 'CAT_ART_MARCA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Marca
            TabOrder = 2
          end
          object LookCatArt_F: TDBLookupComboBox
            Left = 384
            Top = 188
            Width = 137
            Height = 21
            DataField = 'CAT_ART_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Famiglia
            TabOrder = 3
          end
          object LookProd: TDBLookupComboBox
            Left = 140
            Top = 84
            Width = 105
            Height = 21
            DataField = 'PRODUTTORE_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Produttori
            TabOrder = 4
          end
          object LookProdDescr: TDBLookupComboBox
            Left = 248
            Top = 84
            Width = 217
            Height = 21
            DataField = 'PRODUTTORE_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Produttori
            TabOrder = 5
          end
          object LookGrAlt_M: TDBLookupComboBox
            Left = 140
            Top = 212
            Width = 121
            Height = 21
            DataField = 'GR_ALT_MARCA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Marca
            TabOrder = 6
          end
          object LookGrAlt_F: TDBLookupComboBox
            Left = 384
            Top = 212
            Width = 137
            Height = 21
            DataField = 'GR_ALT_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Famiglia
            TabOrder = 7
          end
          object LookStagioni: TDBLookupComboBox
            Left = 140
            Top = 60
            Width = 105
            Height = 21
            DataField = 'STAGIONE_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dmodAz.dsoTab_Stagioni
            TabOrder = 8
          end
          object LooikStagiioni: TDBLookupComboBox
            Left = 248
            Top = 60
            Width = 217
            Height = 21
            DataField = 'STAGIONE_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Stagioni
            TabOrder = 9
          end
          object LookCatMerc_F: TDBLookupComboBox
            Left = 384
            Top = 236
            Width = 137
            Height = 21
            DataField = 'CAT_MERC_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Famiglia
            TabOrder = 11
          end
          object LookContoAcqD: TDBLookupComboBox
            Left = 248
            Top = 108
            Width = 217
            Height = 21
            DataField = 'CONTO_ACQUISTO'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 13
          end
          object LookContoVendDescr: TDBLookupComboBox
            Left = 248
            Top = 136
            Width = 217
            Height = 21
            DataField = 'CONTO_VENDITA'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 15
          end
          object LookCatMerc_M: TDBLookupComboBox
            Left = 140
            Top = 236
            Width = 121
            Height = 21
            DataField = 'CAT_MERC_MARCA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Marca
            TabOrder = 10
          end
          object LookContoAcq: TDBLookupComboBox
            Left = 140
            Top = 108
            Width = 105
            Height = 21
            DataField = 'CONTO_ACQUISTO'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 12
          end
          object LookContoVend: TDBLookupComboBox
            Left = 140
            Top = 136
            Width = 105
            Height = 21
            DataField = 'CONTO_VENDITA'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 14
          end
          object LookCatArt_G: TDBLookupComboBox
            Left = 264
            Top = 188
            Width = 117
            Height = 21
            DataField = 'CAT_ART_GRUPPO_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Gruppo
            TabOrder = 16
          end
          object LookGrAlt_G: TDBLookupComboBox
            Left = 264
            Top = 212
            Width = 117
            Height = 21
            DataField = 'GR_ALT_GRUPPO_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Gruppo
            TabOrder = 17
          end
          object LookCatMerc_G: TDBLookupComboBox
            Left = 264
            Top = 236
            Width = 117
            Height = 21
            DataField = 'CAT_MERC_GRUPPO_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Gruppo
            TabOrder = 18
          end
          object LookCatArt_T: TDBLookupComboBox
            Left = 524
            Top = 188
            Width = 145
            Height = 21
            DataField = 'CAT_ART_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Tipo
            TabOrder = 19
          end
          object LookGrAlt_T: TDBLookupComboBox
            Left = 524
            Top = 212
            Width = 145
            Height = 21
            DataField = 'GR_ALT_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Tipo
            TabOrder = 20
          end
          object LookCatMerc_T: TDBLookupComboBox
            Left = 524
            Top = 236
            Width = 145
            Height = 21
            DataField = 'CAT_MERC_FAMIGLIA_ID'
            DataSource = dmodAz.dsoTab_Articoli
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Tipo
            TabOrder = 21
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Codici aggiuntivi'
        ImageIndex = 3
        object paCodAgg: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 266
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label34: TLabel
            Left = 12
            Top = 176
            Width = 82
            Height = 13
            Caption = 'Codice di vendita'
            Visible = False
          end
          object laTipoVend: TLabel
            Left = 52
            Top = 204
            Width = 21
            Height = 13
            Caption = 'Tipo'
          end
          object laCodVend: TLabel
            Left = 236
            Top = 204
            Width = 33
            Height = 13
            Caption = 'Codice'
            Visible = False
          end
          object laDescrVend: TLabel
            Left = 20
            Top = 236
            Width = 55
            Height = 13
            Caption = 'Descrizione'
            Visible = False
          end
          object dbeDescrVend: TDBEdit
            Left = 80
            Top = 232
            Width = 389
            Height = 21
            TabOrder = 2
            Visible = False
          end
          object dbeDodVend: TDBEdit
            Left = 280
            Top = 200
            Width = 189
            Height = 21
            TabOrder = 3
            Visible = False
          end
          object LookTipo: TDBLookupComboBox
            Left = 80
            Top = 200
            Width = 145
            Height = 21
            TabOrder = 1
            Visible = False
          end
          object dbgCodAgg: TDBGrid
            Left = 1
            Top = 1
            Width = 673
            Height = 264
            Align = alClient
            DataSource = dsoCodAgg
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODICE_AGGIUNTIVO'
                Width = 186
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TipoCodAgg'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR'
                Width = 256
                Visible = True
              end>
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Depositi'
        ImageIndex = 4
        object paDep: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 266
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgDepositi: TDBGrid
            Left = 1
            Top = 1
            Width = 673
            Height = 264
            Align = alClient
            DataSource = dsoDepPerArt
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Deposito'
                Width = 152
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SCORTA_MIN'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SCORTA_MAX'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOTTO_RIORDINO'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ubicazione'
                Visible = True
              end>
          end
        end
      end
      object tabs6: TTabSheet
        Caption = 'Foto'
        ImageIndex = 5
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 675
          Height = 41
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object sbtnCarica: TSpeedButton
            Left = 8
            Top = 8
            Width = 105
            Height = 22
            Caption = 'Carica'
            Flat = True
            OnClick = sbtnCaricaClick
          end
          object sbtnScarica: TSpeedButton
            Left = 120
            Top = 8
            Width = 105
            Height = 22
            Caption = 'Scarica'
            Flat = True
            OnClick = sbtnScaricaClick
          end
          object sbtnMostraFoto: TSpeedButton
            Left = 232
            Top = 8
            Width = 101
            Height = 22
            Caption = 'Mostra'
            Flat = True
            OnClick = sbtnMostraFotoClick
          end
          object cbFotoStretch: TCheckBox
            Left = 392
            Top = 12
            Width = 81
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Stretch'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = cbFotoStretchClick
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 41
          Width = 675
          Height = 225
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object imFotoArticolo: TImage
            Left = 2
            Top = 2
            Width = 671
            Height = 221
            Align = alClient
            IncrementalDisplay = True
          end
          object dbeFotoPercorso: TDBEdit
            Left = 4
            Top = 4
            Width = 665
            Height = 21
            DataField = 'FOTO_PERCORSO'
            DataSource = dmodAz.dsoTab_Articoli
            TabOrder = 0
            Visible = False
          end
        end
      end
    end
  end
  object opdImagPercors: TOpenPictureDialog
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 458
    Top = 195
  end
  object dsoCodAgg: TDataSource
    DataSet = dmodAz.ibqTab_Cod_Agg
    Left = 272
    Top = 8
  end
  object dsoDepPerArt: TDataSource
    DataSet = dmodAz.ibqTab_Art_Dep
    Left = 312
    Top = 8
  end
end
