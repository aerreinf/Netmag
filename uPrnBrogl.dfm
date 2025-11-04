object fPrnBroglMag: TfPrnBroglMag
  Left = 403
  Top = 78
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Stampa Brogliaccio Magazzino'
  ClientHeight = 520
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paMain: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 520
    Align = alClient
    BevelOuter = bvLowered
    Color = 16759671
    PopupMenu = PopupMenu1
    TabOrder = 0
    object gbArticoli: TGroupBox
      Left = 10
      Top = 167
      Width = 447
      Height = 190
      Caption = '&Articoli'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 43
        Top = 114
        Width = 30
        Height = 14
        Caption = 'Marca'
      end
      object Label2: TLabel
        Left = 254
        Top = 114
        Width = 36
        Height = 14
        Caption = 'Gruppo'
      end
      object Label3: TLabel
        Left = 43
        Top = 153
        Width = 38
        Height = 14
        Caption = 'Famiglia'
      end
      object Label4: TLabel
        Left = 254
        Top = 153
        Width = 20
        Height = 14
        Caption = 'Tipo'
      end
      object rabArtTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 47
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rabArtTuttiClick
      end
      object rabArtDaA: TRadioButton
        Left = 8
        Top = 37
        Width = 143
        Height = 16
        Caption = 'scelta articolo (fino 2)'
        TabOrder = 1
        OnClick = rabArtDaAClick
      end
      object rabArtCat: TRadioButton
        Left = 8
        Top = 98
        Width = 91
        Height = 17
        Hint = 'Marca, Gruppo,'#13#10'Famiglia, Tipo'
        Caption = 'per Categorie'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = rabArtCatClick
      end
      object rxdblcDaArt: TRxDBLookupCombo
        Left = 146
        Top = 54
        Width = 297
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'DESCR'
        LookupSource = dsArticoli2
        TabOrder = 3
        OnChange = rxdblcDaArtChange
        OnExit = rxdblcDaArtExit
      end
      object rxdblcAdArt: TRxDBLookupCombo
        Left = 146
        Top = 78
        Width = 297
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'DESCR'
        LookupSource = dsArticoli2
        TabOrder = 4
        OnChange = rxdblcAdArtChange
        OnExit = rxdblcAdArtExit
      end
      object rxdblcAdArtCodice: TRxDBLookupCombo
        Left = 24
        Top = 78
        Width = 119
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'CODICE_ARTICOLO'
        LookupSource = dsArticoli
        TabOrder = 5
        OnChange = rxdblcAdArtCodiceChange
        OnExit = rxdblcAdArtExit
      end
      object rxdblcDaArtCodice: TRxDBLookupCombo
        Left = 24
        Top = 54
        Width = 119
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'CODICE_ARTICOLO'
        LookupSource = dsArticoli
        TabOrder = 6
        OnChange = rxdblcDaArtCodiceChange
        OnExit = rxdblcDaArtExit
      end
      object rxdblcGruppo: TRxDBLookupCombo
        Left = 254
        Top = 128
        Width = 190
        Height = 21
        Hint = 'Gruppo'
        DropDownCount = 8
        Color = 15138790
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoGRUPPO
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnChange = rxdblcGruppoExit
        OnExit = rxdblcGruppoExit
      end
      object rxdblcMarca: TRxDBLookupCombo
        Left = 43
        Top = 128
        Width = 190
        Height = 21
        Hint = 'Marca'
        DropDownCount = 8
        Color = 14811135
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoMARCA
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnChange = rxdblcMarcaExit
        OnExit = rxdblcMarcaExit
      end
      object rxdblcTipo: TRxDBLookupCombo
        Left = 254
        Top = 166
        Width = 190
        Height = 21
        Hint = 'Tipo'
        DropDownCount = 8
        Color = 16050943
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoTIPO
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnChange = rxdblcTipoExit
        OnExit = rxdblcTipoExit
      end
      object rxdblcFamiglia: TRxDBLookupCombo
        Left = 43
        Top = 166
        Width = 190
        Height = 21
        Hint = 'Famiglia'
        DropDownCount = 8
        Color = 16777177
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoFAMIGLIA
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnChange = rxdblcFamigliaExit
        OnExit = rxdblcFamigliaExit
      end
      object cbMarca: TCheckBox
        Left = 28
        Top = 130
        Width = 15
        Height = 17
        Hint = 'Marca'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = cbMarcaClick
      end
      object cbFamiglia: TCheckBox
        Left = 28
        Top = 168
        Width = 15
        Height = 17
        Hint = 'Famiglia'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = cbFamigliaClick
      end
      object cbTipo: TCheckBox
        Left = 239
        Top = 168
        Width = 15
        Height = 17
        Hint = 'Tipo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = cbTipoClick
      end
      object cbGruppo: TCheckBox
        Left = 239
        Top = 130
        Width = 15
        Height = 17
        Hint = 'Gruppo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = cbGruppoClick
      end
      object RadioGroup1: TRadioGroup
        Left = 168
        Top = 9
        Width = 190
        Height = 41
        Caption = 'Scegli Articoli'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Tutti'
          'Vend.'
          'Access.')
        TabOrder = 15
        OnClick = RadioGroup1Click
      end
    end
    object gbData: TGroupBox
      Left = 220
      Top = 8
      Width = 125
      Height = 81
      Caption = '&Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = gbDataExit
      object laDataDa: TLabel
        Left = 12
        Top = 26
        Width = 13
        Height = 14
        Caption = 'Da'
      end
      object laDataA: TLabel
        Left = 14
        Top = 52
        Width = 8
        Height = 14
        Caption = 'A'
      end
      object meDataDa: TMaskEdit
        Left = 34
        Top = 22
        Width = 66
        Height = 20
        Ctl3D = False
        EditMask = '!90/90/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '01/01/2004'
      end
      object meDataA: TMaskEdit
        Left = 34
        Top = 48
        Width = 69
        Height = 20
        Ctl3D = False
        EditMask = '!90/90/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object gbDeposito: TGroupBox
      Left = 350
      Top = 8
      Width = 199
      Height = 81
      Caption = 'De&posito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = gbDepositoExit
      object rabDepTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rabDepTuttiClick
      end
      object rabDepScegli: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
        OnClick = rabDepTuttiClick
      end
      object LookDepCod: TDBLookupComboBox
        Left = 76
        Top = 32
        Width = 71
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoDep
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = LookDepCodCloseUp
        OnExit = LookDepCodCloseUp
      end
      object LookDepDescr: TDBLookupComboBox
        Left = 8
        Top = 54
        Width = 183
        Height = 20
        Ctl3D = False
        DropDownRows = 10
        Enabled = False
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoDep
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookDepDescrCloseUp
        OnExit = LookDepDescrCloseUp
      end
    end
    object gbTipoCliFor: TGroupBox
      Left = 10
      Top = 108
      Width = 619
      Height = 59
      Caption = '&Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = gbTipoCliForExit
      object rabTipoCliFornTutti: TRadioButton
        Left = 10
        Top = 16
        Width = 49
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoFornTutti: TRadioButton
        Left = 62
        Top = 34
        Width = 71
        Height = 15
        Caption = 'Tutti Forn.'
        TabOrder = 1
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoFornSc: TRadioButton
        Left = 140
        Top = 34
        Width = 75
        Height = 15
        Caption = 'Scegli Forn.'
        TabOrder = 6
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoCliTutti: TRadioButton
        Left = 62
        Top = 16
        Width = 63
        Height = 15
        Caption = 'Tutti Cli.'
        TabOrder = 2
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoCliSc: TRadioButton
        Left = 140
        Top = 15
        Width = 69
        Height = 17
        Caption = 'Scegli Cli.'
        TabOrder = 3
        OnClick = rabTipoCliFornTuttiClick
      end
      object LookCliCod: TDBLookupComboBox
        Left = 220
        Top = 10
        Width = 81
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'ID_CLI_FOR'
        ListField = 'ID_CLI_FOR'
        ListSource = dsoCli
        ParentCtl3D = False
        TabOrder = 4
        OnCloseUp = LookCliCodCloseUp
        OnExit = LookCliCodCloseUp
      end
      object LookCliDescr: TDBLookupComboBox
        Left = 306
        Top = 10
        Width = 308
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'ID_CLI_FOR'
        ListField = 'DENOMINAZIONE'
        ListSource = dsoCli
        ParentCtl3D = False
        TabOrder = 5
        OnCloseUp = LookCliDescrCloseUp
        OnExit = LookCliDescrCloseUp
      end
      object LookFornDescr: TDBLookupComboBox
        Left = 306
        Top = 32
        Width = 308
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'ID_CLI_FOR'
        ListField = 'DENOMINAZIONE'
        ListSource = dsoForn
        ParentCtl3D = False
        TabOrder = 8
        OnCloseUp = LookFornDescrCloseUp
        OnExit = LookFornDescrCloseUp
      end
      object LookFornCod: TDBLookupComboBox
        Left = 220
        Top = 32
        Width = 81
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'ID_CLI_FOR'
        ListField = 'ID_CLI_FOR'
        ListSource = dsoForn
        ParentCtl3D = False
        TabOrder = 7
        OnCloseUp = LookFornCodCloseUp
        OnExit = LookFornCodCloseUp
      end
    end
    object bbStampa: TBitBtn
      Left = 2
      Top = 360
      Width = 105
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa x Cod.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bbStampaClick
    end
    object gbCausale: TGroupBox
      Left = 10
      Top = 8
      Width = 205
      Height = 100
      Caption = '&Causale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = gbCausaleExit
      object rabCauTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 45
        Height = 17
        Caption = 'Tutte'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rabCauTuttiClick
      end
      object rabCauSc: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 17
        Caption = 'a Scelta'
        TabOrder = 1
        OnClick = rabCauTuttiClick
      end
      object LookCauCod: TDBLookupComboBox
        Left = 78
        Top = 32
        Width = 71
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'CODICE_CAUSALE'
        ListField = 'CODICE_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = LookCauCodCloseUp
        OnExit = LookCauCodCloseUp
      end
      object LookCauDescr: TDBLookupComboBox
        Left = 8
        Top = 54
        Width = 177
        Height = 20
        Ctl3D = False
        Enabled = False
        KeyField = 'CODICE_CAUSALE'
        ListField = 'DESCR_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookCauDescrCloseUp
        OnExit = LookCauDescrCloseUp
      end
      object Edit1: TEdit
        Left = 61
        Top = 75
        Width = 124
        Height = 22
        TabOrder = 4
      end
      object RadioButton1: TRadioButton
        Left = 8
        Top = 78
        Width = 54
        Height = 17
        Caption = 'Selez.'
        TabOrder = 5
        OnClick = rabCauTuttiClick
      end
      object Button6: TButton
        Left = 186
        Top = 55
        Width = 15
        Height = 19
        Hint = 'Cliccka per aggiungere alla selezione'
        Caption = '..'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 186
        Top = 77
        Width = 15
        Height = 19
        Hint = 'Chiudi Filtro'
        Caption = '..'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Visible = False
        OnClick = Button7Click
      end
    end
    object gbTipoStampa: TGroupBox
      Left = 474
      Top = 167
      Width = 155
      Height = 49
      Caption = 'tipo Stampa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object rabTSAn: TRadioButton
        Left = 8
        Top = 20
        Width = 65
        Height = 17
        Caption = 'analitica'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rabTSSinClick
      end
      object rabTSSin: TRadioButton
        Left = 84
        Top = 20
        Width = 63
        Height = 17
        Caption = 'sintetica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rabTSSinClick
      end
    end
    object Button1: TButton
      Left = 223
      Top = 443
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = 'Riep Depositi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 326
      Top = 380
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Inventario Articoli '#39'Vendita'#39
      Caption = 'Situaz.Magaz. V.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = Button2Click
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 381
      Width = 105
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa x Des.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 223
      Top = 422
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa Riep.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtn2Click
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 464
      Width = 632
      Height = 54
      DataSource = DataSource2
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Button3: TButton
      Left = 326
      Top = 401
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Inventario Articoli '#39'Accessori'#39
      Caption = 'Situaz.Magaz. A.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = Button3Click
    end
    object RadioGroup2: TRadioGroup
      Left = 544
      Top = 217
      Width = 90
      Height = 140
      Hint = 'Ordinamento per le Stampe di Situazione Magazzino'
      Caption = 'Ordinare per'
      Color = 16113359
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Codice'
        'Descrizione'
        'Venduti Q.t'#224
        'Venduti Val.'
        'Giacenza'
        'Guadagno')
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object RadioGroup3: TRadioGroup
      Left = 458
      Top = 217
      Width = 86
      Height = 140
      Hint = 'Visualizza tutti quelli :'
      Caption = 'St.x Inventario'
      Color = 16113359
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        '>0'
        '<=0'
        'Sotto Scorta'
        '<0')
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object BitBtn3: TBitBtn
      Left = 223
      Top = 401
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = '&Sta. Riep. Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 2
      Top = 402
      Width = 105
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa x Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 2
      Top = 423
      Width = 105
      Height = 20
      Cursor = crHandPoint
      Caption = '&Stampa x Docum.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = BitBtn5Click
    end
    object GroupBox1: TGroupBox
      Left = 107
      Top = 376
      Width = 113
      Height = 86
      Caption = 'Sit. Ordini'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnExit = gbDataExit
      object Button5: TButton
        Left = 18
        Top = 15
        Width = 79
        Height = 20
        Cursor = crHandPoint
        Hint = 'Visualizza Situazione Oridni Acquisto per Fornitore e Articolo'
        Caption = 'Sit.Ord. Acq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button5Click
      end
      object Button4: TButton
        Left = 17
        Top = 39
        Width = 80
        Height = 20
        Cursor = crHandPoint
        Hint = 'Visualizza Situazione Oridni VENDITA per Cliente e Articolo'
        Caption = 'Sit.Ord. Ven.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button4Click
      end
      object Button8: TButton
        Left = 7
        Top = 63
        Width = 100
        Height = 20
        Cursor = crHandPoint
        Hint = 
          'Visualizza Situazione Oridni VENDITA da WEB per Cliente e Artico' +
          'lo'
        Caption = 'Sit.Ord. Ven. WEB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = Button8Click
      end
    end
    object BitBtn6: TBitBtn
      Left = 326
      Top = 422
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = 'Situaz. Artic.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 326
      Top = 443
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = 'Situaz. Clienti'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object bbEsci: TBitBtn
      Left = 648
      Top = 451
      Width = 105
      Height = 62
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbEsciClick
    end
    object GroupBox2: TGroupBox
      Left = 435
      Top = 376
      Width = 92
      Height = 86
      Caption = 'Sit. C/L'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnExit = gbDataExit
      object Button9: TButton
        Left = 8
        Top = 15
        Width = 79
        Height = 20
        Cursor = crHandPoint
        Hint = 'Visualizza Situazione Oridni Acquisto per Fornitore e Articolo'
        Caption = 'Sit.D.D.T.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 7
        Top = 39
        Width = 80
        Height = 20
        Cursor = crHandPoint
        Hint = 'Visualizza Situazione Oridni VENDITA per Cliente e Articolo'
        Caption = 'Sit.D.D.T. Ext'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 7
        Top = 64
        Width = 80
        Height = 19
        Cursor = crHandPoint
        Hint = 
          'Visualizza Situazione Oridni VENDITA da WEB per Cliente e Artico' +
          'lo'
        Caption = 'Sit.D.D.T. C/L'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = Button11Click
      end
    end
    object BitBtn9: TBitBtn
      Left = 223
      Top = 380
      Width = 100
      Height = 20
      Cursor = crHandPoint
      Caption = 'D.D.T. da Fattur.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 2
      Top = 444
      Width = 105
      Height = 20
      Cursor = crHandPoint
      Caption = 'Scarico M.P. x Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = BitBtn10Click
    end
    object gbAgente: TGroupBox
      Left = 559
      Top = 8
      Width = 200
      Height = 81
      Caption = '&Agente'
      TabOrder = 25
      object rabAgTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rabAgScegli: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
        OnClick = rabAgScegliClick
      end
      object LookAgCod: TDBLookupComboBox
        Left = 76
        Top = 32
        Width = 71
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoAgente
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = LookAgCodCloseUp
        OnExit = LookAgCodExit
      end
      object LookAgDescr: TDBLookupComboBox
        Left = 8
        Top = 54
        Width = 183
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoAgente
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookAgDescrCloseUp
        OnExit = LookAgDescrExit
      end
    end
  end
  object BitBtn8: TBitBtn
    Left = 534
    Top = 359
    Width = 100
    Height = 16
    Cursor = crHandPoint
    Caption = 'Situaz. Fiori'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn8Click
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 438
    Top = 166
  end
  object dsoForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 326
    Top = 122
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 172
    Top = 24
  end
  object dsoDep: TDataSource
    DataSet = IBQuery2
    Left = 506
    Top = 22
  end
  object dsoCLIFORN: TDataSource
    DataSet = dmodAz.r_qCliForn
    Left = 582
    Top = 154
  end
  object dsArticoli: TDataSource
    DataSet = IBQuery4
    Left = 234
    Top = 230
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 330
    Top = 308
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 154
    Top = 304
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 264
    Top = 280
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 154
    Top = 274
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select distinct TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino,'
      'sum(TAB_DET_DOC.IMPORTO_SCONTO) as somma1,'
      'sum(TAB_DET_DOC.IMPORTO_CON_IVA) as somma2'
      'FROM TAB_DET_DOC JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      
        'WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DAT' +
        'A_DOC <=:parDataA'
      'group by TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino')
    Left = 408
    Top = 208
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'parDataDa'
        ParamType = ptUnknown
        Value = 29221d
      end
      item
        DataType = ftDateTime
        Name = 'parDataA'
        ParamType = ptUnknown
        Value = 37255d
      end>
    object IBQuery1Nome_Deposito: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Deposito'
      LookupDataSet = IBQuery2
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'DEP'
      Size = 100
      Lookup = True
    end
    object IBQuery1DEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBQuery1CAUSALE_MAGAZZINO: TIBStringField
      DisplayWidth = 10
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 10
    end
    object IBQuery1SOMMA1: TFloatField
      FieldName = 'SOMMA1'
      DisplayFormat = '#,##'
    end
    object IBQuery1SOMMA2: TFloatField
      FieldName = 'SOMMA2'
      DisplayFormat = '#,##'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 456
    Top = 248
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 100
    SQL.Strings = (
      'select * from tab_depositi'
      'order by descr')
    Left = 422
    Top = 8
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery2DETAGLIO: TSmallintField
      FieldName = 'DETAGLIO'
    end
    object IBQuery2MERCE_NS: TSmallintField
      FieldName = 'MERCE_NS'
    end
    object IBQuery2RAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      Size = 4
    end
    object IBQuery2INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IBQuery2CITTA: TIBStringField
      FieldName = 'CITTA'
      Size = 30
    end
    object IBQuery2CAP: TIBStringField
      FieldName = 'CAP'
      Size = 5
    end
    object IBQuery2PROV: TIBStringField
      FieldName = 'PROV'
      Size = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 232
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
    object StampeSALDO1: TMenuItem
      Caption = 'Stampe (SALDO)'
      OnClick = StampeSALDO1Click
    end
    object StampeSaldo21: TMenuItem
      Caption = 'Stampe (Saldo2)'
      OnClick = StampeSaldo21Click
    end
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'SELECT distinct TAB_DET_DOC.codice_articolo, TAB_DET_DOC.descr, ' +
        'SUM(TAB_DET_DOC.QTA_UM) as SCAT, SUM(TAB_DET_DOC.QUANTITA) as QT' +
        'A'
      'FROM TAB_DET_DOC JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      
        'WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DAT' +
        'A_DOC <=:parDataA'
      'GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr'
      'ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.num_doc'
      '')
    Left = 456
    Top = 208
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'parDataDa'
        ParamType = ptUnknown
        Value = '01/01/1999'
      end
      item
        DataType = ftString
        Name = 'parDataA'
        ParamType = ptUnknown
        Value = '01/01/2005'
      end>
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      DisplayWidth = 13
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery3DESCR: TIBStringField
      DisplayWidth = 25
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery3SCAT: TFloatField
      FieldName = 'SCAT'
      DisplayFormat = '#,##.00'
    end
    object IBQuery3QTA: TFloatField
      FieldName = 'QTA'
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery3
    Left = 496
    Top = 208
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Order By CODICE_ARTICOLO')
    Left = 66
    Top = 154
    object IBQuery4CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery4DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBQuery4DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Size = 1000
    end
    object IBQuery4CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBQuery4UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Size = 3
    end
    object IBQuery4UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Size = 3
    end
    object IBQuery4UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Size = 3
    end
    object IBQuery4SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery4SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery4SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object IBQuery4PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery4PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
    end
    object IBQuery4PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
    end
    object IBQuery4SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
    end
    object IBQuery4SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
    end
    object IBQuery4LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
    end
    object IBQuery4GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
    end
    object IBQuery4QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
    end
    object IBQuery4ANNO: TIntegerField
      FieldName = 'ANNO'
    end
    object IBQuery4DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Size = 4
    end
    object IBQuery4PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
    end
    object IBQuery4COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
    end
    object IBQuery4TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
    end
    object IBQuery4FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
    end
    object IBQuery4FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
    end
    object IBQuery4COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
    end
    object IBQuery4RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
    end
    object IBQuery4GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
    end
    object IBQuery4ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Size = 4
    end
    object IBQuery4RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
    end
    object IBQuery4RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
    end
    object IBQuery4RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
    end
    object IBQuery4RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
    end
    object IBQuery4STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Size = 4
    end
    object IBQuery4GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Size = 4
    end
    object IBQuery4PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Size = 10
    end
    object IBQuery4CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Size = 4
    end
    object IBQuery4CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
    end
    object IBQuery4CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
    end
    object IBQuery4DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
    end
    object IBQuery4VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Size = 3
    end
    object IBQuery4VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Size = 3
    end
    object IBQuery4VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Size = 3
    end
    object IBQuery4NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
    end
    object IBQuery4TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
    end
    object IBQuery4TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
    end
    object IBQuery4OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBQuery4TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object IBQuery4CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery4CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Size = 50
    end
    object IBQuery4DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object IBQuery4NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
    end
    object IBQuery4NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
    end
    object IBQuery4NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
    end
    object IBQuery4FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
    end
    object IBQuery4FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
    end
    object IBQuery4PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
    end
    object IBQuery4COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
    end
    object IBQuery4DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
    end
    object IBQuery4NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
    end
    object IBQuery4TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
    end
    object IBQuery4CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
    end
    object IBQuery4CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
    end
    object IBQuery4UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IBQuery4UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
    end
    object IBQuery4CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IBQuery4CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IBQuery4CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object IBQuery4FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Size = 255
    end
    object IBQuery4CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBQuery4FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Size = 1
    end
    object IBQuery4DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
    end
    object IBQuery4SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBQuery4PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
    end
    object IBQuery4P2IVATO: TFloatField
      FieldName = 'P2IVATO'
    end
    object IBQuery4P3IVATO: TFloatField
      FieldName = 'P3IVATO'
    end
    object IBQuery4P4IVATO: TFloatField
      FieldName = 'P4IVATO'
    end
    object IBQuery4P5IVATO: TFloatField
      FieldName = 'P5IVATO'
    end
    object IBQuery4SC21: TFloatField
      FieldName = 'SC21'
    end
    object IBQuery4SC22: TFloatField
      FieldName = 'SC22'
    end
    object IBQuery4SC23: TFloatField
      FieldName = 'SC23'
    end
    object IBQuery4SC31: TFloatField
      FieldName = 'SC31'
    end
    object IBQuery4SC32: TFloatField
      FieldName = 'SC32'
    end
    object IBQuery4SC33: TFloatField
      FieldName = 'SC33'
    end
    object IBQuery4SC41: TFloatField
      FieldName = 'SC41'
    end
    object IBQuery4SC42: TFloatField
      FieldName = 'SC42'
    end
    object IBQuery4SC43: TFloatField
      FieldName = 'SC43'
    end
    object IBQuery4SC51: TFloatField
      FieldName = 'SC51'
    end
    object IBQuery4SC52: TFloatField
      FieldName = 'SC52'
    end
    object IBQuery4SC53: TFloatField
      FieldName = 'SC53'
    end
    object IBQuery4R2: TFloatField
      FieldName = 'R2'
    end
    object IBQuery4R3: TFloatField
      FieldName = 'R3'
    end
    object IBQuery4R4: TFloatField
      FieldName = 'R4'
    end
    object IBQuery4R5: TFloatField
      FieldName = 'R5'
    end
    object IBQuery4IMP2: TFloatField
      FieldName = 'IMP2'
    end
    object IBQuery4IMP3: TFloatField
      FieldName = 'IMP3'
    end
    object IBQuery4IMP4: TFloatField
      FieldName = 'IMP4'
    end
    object IBQuery4IMP5: TFloatField
      FieldName = 'IMP5'
    end
    object IBQuery4RICARPREC: TFloatField
      FieldName = 'RICARPREC'
    end
  end
  object ibqOrdVen: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqOrdVenCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      'where tab_documenti.tipo_doc=12'
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 472
    Top = 320
    object ibqOrdVenCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqOrdVenDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object ibqOrdVenCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqOrdVenDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object ibqOrdVenF_1: TFloatField
      FieldName = 'F_1'
    end
    object ibqOrdVenConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
  end
  object ibqConsOrd: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where ((tab_documenti.tipo_doc=13) or (tab_documenti.tipo_doc=14' +
        ') or (tab_documenti.tipo_doc=210))  and (tab_det_doc.codice_arti' +
        'colo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 592
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqConsOrdCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqConsOrdCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqConsOrdF_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object ibqOrdAcq: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqOrdAcqCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      'where tab_documenti.tipo_doc=22'
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 552
    Top = 264
    object ibqOrdAcqCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqOrdAcqDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object ibqOrdAcqCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqOrdAcqDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object ibqOrdAcqF_1: TFloatField
      FieldName = 'F_1'
    end
    object ibqOrdAcqConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
  end
  object ibqConsOrd2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where ((tab_documenti.tipo_doc=23) or (tab_documenti.tipo_doc=24' +
        ') or (tab_documenti.tipo_doc=211))  and (tab_det_doc.codice_arti' +
        'colo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by tab_documenti.clifor_id,tab_det_doc.codice_articolo')
    Left = 600
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqConsOrd2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqConsOrd2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqConsOrd2F_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Order By DESCR')
    Left = 114
    Top = 154
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object IBStringField3: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Size = 1000
    end
    object IBStringField4: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Size = 3
    end
    object IBStringField6: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Size = 3
    end
    object IBStringField7: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'SCONTO1'
    end
    object FloatField2: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField3: TFloatField
      FieldName = 'SCONTO3'
    end
    object FloatField4: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField5: TFloatField
      FieldName = 'PESO_NETTO_KG'
    end
    object FloatField6: TFloatField
      FieldName = 'PESO_LORDO_KG'
    end
    object FloatField7: TFloatField
      FieldName = 'SCORTA_MIN'
    end
    object FloatField8: TFloatField
      FieldName = 'SCORTA_MAX'
    end
    object FloatField9: TFloatField
      FieldName = 'LOTTO_RIORDINO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ANNO'
    end
    object IBStringField8: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Size = 4
    end
    object FloatField10: TFloatField
      FieldName = 'PREZZO_BASE'
    end
    object FloatField11: TFloatField
      FieldName = 'COSTO_STANDART'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
    end
    object FloatField12: TFloatField
      FieldName = 'FATT_CONV1'
    end
    object FloatField13: TFloatField
      FieldName = 'FATT_CONV2'
    end
    object IntegerField4: TIntegerField
      FieldName = 'COSTO_ID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RICAVO_ID'
    end
    object IntegerField6: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
    end
    object IBStringField9: TIBStringField
      FieldName = 'ASPETTO_ID'
      Size = 4
    end
    object SmallintField2: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
    end
    object SmallintField3: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
    end
    object SmallintField4: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
    end
    object SmallintField5: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
    end
    object IBStringField10: TIBStringField
      FieldName = 'STAGIONE_ID'
      Size = 4
    end
    object IBStringField11: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Size = 4
    end
    object IBStringField12: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Size = 10
    end
    object IBStringField13: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Size = 4
    end
    object IntegerField7: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
    end
    object IBStringField14: TIBStringField
      FieldName = 'CODICE_BASE'
    end
    object SmallintField6: TSmallintField
      FieldName = 'DERIVATO'
    end
    object IBStringField15: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Size = 3
    end
    object IBStringField16: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Size = 3
    end
    object IBStringField17: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Size = 3
    end
    object IntegerField8: TIntegerField
      FieldName = 'NUM_VARIANTI'
    end
    object SmallintField7: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
    end
    object SmallintField8: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
    end
    object SmallintField9: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object SmallintField10: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBStringField18: TIBStringField
      FieldName = 'CODE_BAR'
      Size = 50
    end
    object IBStringField19: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Size = 50
    end
    object SmallintField11: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
    end
    object SmallintField12: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'NOMENCLATURA'
    end
    object FloatField14: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
    end
    object FloatField15: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
    end
    object IntegerField11: TIntegerField
      FieldName = 'PROV_ORDINE'
    end
    object FloatField16: TFloatField
      FieldName = 'COSTO_ULTIMO'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
    end
    object IntegerField12: TIntegerField
      FieldName = 'NUM_REPARTO'
    end
    object SmallintField13: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
    end
    object IntegerField13: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONTO_VENDITA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IntegerField16: TIntegerField
      FieldName = 'UN_MIS3_VAL'
    end
    object IntegerField17: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IntegerField18: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IntegerField19: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object IBStringField20: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Size = 255
    end
    object IntegerField20: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBStringField21: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Size = 1
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATAMOD'
    end
    object FloatField17: TFloatField
      FieldName = 'SCONTO4'
    end
    object FloatField18: TFloatField
      FieldName = 'PREZZO_IVATO'
    end
    object FloatField19: TFloatField
      FieldName = 'P2IVATO'
    end
    object FloatField20: TFloatField
      FieldName = 'P3IVATO'
    end
    object FloatField21: TFloatField
      FieldName = 'P4IVATO'
    end
    object FloatField22: TFloatField
      FieldName = 'P5IVATO'
    end
    object FloatField23: TFloatField
      FieldName = 'SC21'
    end
    object FloatField24: TFloatField
      FieldName = 'SC22'
    end
    object FloatField25: TFloatField
      FieldName = 'SC23'
    end
    object FloatField26: TFloatField
      FieldName = 'SC31'
    end
    object FloatField27: TFloatField
      FieldName = 'SC32'
    end
    object FloatField28: TFloatField
      FieldName = 'SC33'
    end
    object FloatField29: TFloatField
      FieldName = 'SC41'
    end
    object FloatField30: TFloatField
      FieldName = 'SC42'
    end
    object FloatField31: TFloatField
      FieldName = 'SC43'
    end
    object FloatField32: TFloatField
      FieldName = 'SC51'
    end
    object FloatField33: TFloatField
      FieldName = 'SC52'
    end
    object FloatField34: TFloatField
      FieldName = 'SC53'
    end
    object FloatField35: TFloatField
      FieldName = 'R2'
    end
    object FloatField36: TFloatField
      FieldName = 'R3'
    end
    object FloatField37: TFloatField
      FieldName = 'R4'
    end
    object FloatField38: TFloatField
      FieldName = 'R5'
    end
    object FloatField39: TFloatField
      FieldName = 'IMP2'
    end
    object FloatField40: TFloatField
      FieldName = 'IMP3'
    end
    object FloatField41: TFloatField
      FieldName = 'IMP4'
    end
    object FloatField42: TFloatField
      FieldName = 'IMP5'
    end
    object FloatField43: TFloatField
      FieldName = 'RICARPREC'
    end
  end
  object dsArticoli2: TDataSource
    DataSet = IBQuery5
    Left = 168
    Top = 200
  end
  object IBSQL1: TIBSQL
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 248
    Top = 312
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      
        'select clifor_id,tab_cli_for.denominazione,tipo_clifor,causale_m' +
        'agazzino,sum(totale) AS IMPON,sum(totale_iva) as IVA'
      'from tab_documenti'
      'left join tab_cli_for'
      'on tab_documenti.clifor_id =tab_cli_for.id_cli_for'
      
        'group by clifor_id,tab_cli_for.denominazione,tipo_clifor,causale' +
        '_magazzino'
      'order by clifor_id')
    Left = 168
    Top = 336
    object IBDataSet1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBDataSet1DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBDataSet1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBDataSet1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBDataSet1IMPON: TFloatField
      FieldName = 'IMPON'
    end
    object IBDataSet1IVA: TFloatField
      FieldName = 'IVA'
    end
  end
  object ibqOrdVenW: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqOrdVenWCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where tab_documenti.tipo_doc=12 and tab_documenti.SERIE_DOC='#39'WEB' +
        #39
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 512
    Top = 320
    object ibqOrdVenWCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqOrdVenWDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object ibqOrdVenWCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqOrdVenWDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object ibqOrdVenWConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
    object ibqOrdVenWF_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object ibqConsOrdW: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where ((tab_documenti.tipo_doc=13) or (tab_documenti.tipo_doc=14' +
        ') or (tab_documenti.tipo_doc=210))  and (tab_det_doc.codice_arti' +
        'colo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 600
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqConsOrdWCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqConsOrdWCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object ibqConsOrdWF_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBDataSet2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from tab_contabile_articolo'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    InsertSQL.Strings = (
      'insert into tab_contabile_articolo'
      
        '  (CODICE_ARTICOLO, DEPOSITO_ID, CLI_FOR_ID, TIPO_CLI_FOR_ID, DE' +
        'SCR, '
      'QTA_ACQUISTI, '
      '   VAL_ACQUISTI, QTA_VENDITA, VAL_VENDITA, QTA_ALTRE_ENTRATE, '
      'VAL_ALTRE_ENTRATE, '
      '   QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLIENTE, '
      'VAL_RESO_CLIENTE, '
      '   QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, QTA_ORDINATO, '
      'VAL_ORDINATO, '
      '   QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QTA_EVASA_CLIENTE, '
      'VAL_EVASO_CLIENTE, '
      '   QTA_EVASA_FORNITORE, VAL_EVASO_FORNITORE, '
      'QTA_GIACENZA_INIZIALE, COSTO_GIACENZA_INIZIALE, '
      '   VAL_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, '
      'COSTO_ULTIMO, '
      '   MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ, '
      'ULT_PREZZO_VEND, DATA_ULTIMO_ACQUISTO, '
      '   DATA_ULTIMA_VENDITA, PRETAGLIO)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DEPOSITO_ID, :CLI_FOR_ID, :TIPO_CLI_FOR_ID' +
        ', '
      ':DESCR, '
      '   :QTA_ACQUISTI, :VAL_ACQUISTI, :QTA_VENDITA, :VAL_VENDITA, '
      ':QTA_ALTRE_ENTRATE, '
      '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_USCITE, :VAL_ALTRE_USCITA, '
      ':QTA_RESO_CLIENTE, '
      '   :VAL_RESO_CLIENTE, :QTA_RESO_FORNITORE, :VAL_RESO_FORNITORE, '
      ':QTA_ORDINATO, '
      '   :VAL_ORDINATO, :QTA_IMPEGNATO, :VAL_QTA_IMPEGNATO, '
      ':QTA_EVASA_CLIENTE, '
      
        '   :VAL_EVASO_CLIENTE, :QTA_EVASA_FORNITORE, :VAL_EVASO_FORNITOR' +
        'E, '
      ':QTA_GIACENZA_INIZIALE, '
      '   :COSTO_GIACENZA_INIZIALE, :VAL_GIACENZA_INIZIALE, '
      ':GIACENZA_ATTUALE, '
      
        '   :DISPONIBILITA, :COSTO_ULTIMO, :MED_PREZZO_VEND, :ULT_COSTO_A' +
        'CQ, '
      ':MEDIO_COSTO_ACQ, '
      
        '   :ULT_PREZZO_VEND, :DATA_ULTIMO_ACQUISTO, :DATA_ULTIMA_VENDITA' +
        ', '
      ':PRETAGLIO)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_contabile_articolo '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID')
    SelectSQL.Strings = (
      'select * from tab_contabile_articolo'
      '')
    ModifySQL.Strings = (
      'update tab_contabile_articolo'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  DESCR = :DESCR,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  VAL_VENDITA = :VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA = :VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO = :VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE = :COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE = :GIACENZA_ATTUALE,'
      '  DISPONIBILITA = :DISPONIBILITA,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  MED_PREZZO_VEND = :MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ = :ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ = :MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND = :ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO = :PRETAGLIO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    Left = 16
    Top = 288
    object IBDataSet2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBDataSet2DEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object IBDataSet2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object IBDataSet2TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object IBDataSet2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 100
    end
    object IBDataSet2QTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object IBDataSet2VAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object IBDataSet2QTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object IBDataSet2VAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object IBDataSet2QTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object IBDataSet2VAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object IBDataSet2QTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object IBDataSet2VAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object IBDataSet2QTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object IBDataSet2VAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object IBDataSet2QTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object IBDataSet2VAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object IBDataSet2QTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object IBDataSet2VAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object IBDataSet2QTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object IBDataSet2VAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object IBDataSet2QTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object IBDataSet2VAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object IBDataSet2QTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object IBDataSet2VAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object IBDataSet2QTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object IBDataSet2COSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object IBDataSet2VAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object IBDataSet2GIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object IBDataSet2DISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object IBDataSet2COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object IBDataSet2MED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object IBDataSet2ULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object IBDataSet2MEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object IBDataSet2ULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object IBDataSet2DATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object IBDataSet2DATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object IBDataSet2PRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
  end
  object ibq1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT'
      'TAB_DET_DOC.*, TAB_DOCUMENTI.* '
      'FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'where (TIPO_DOC = 13) or (TIPO_DOC = 350) or'
      '(TIPO_DOC = 14) or (TIPO_DOC = 210)')
    Left = 40
    Top = 344
    object ibq1ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object ibq1TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object ibq1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object ibq1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 100
    end
    object ibq1COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
    end
    object ibq1COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
    end
    object ibq1UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object ibq1FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object ibq1QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object ibq1QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object ibq1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object ibq1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object ibq1SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object ibq1SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object ibq1IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
    end
    object ibq1IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
    end
    object ibq1IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
    end
    object ibq1OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object ibq1DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object ibq1SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object ibq1PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object ibq1TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object ibq1IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
    end
    object ibq1IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
    end
    object ibq1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibq1DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object ibq1RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object ibq1RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object ibq1RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object ibq1RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object ibq1RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object ibq1RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object ibq1RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object ibq1RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object ibq1RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object ibq1RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object ibq1RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object ibq1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object ibq1RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object ibq1RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object ibq1RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object ibq1OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object ibq1OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object ibq1OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object ibq1OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object ibq1DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object ibq1TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object ibq1TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object ibq1PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object ibq1SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object ibq1PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object ibq1COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object ibq1A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object ibq1B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object ibq1C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object ibq1NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      Required = True
    end
    object ibq1ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."ID_DOCUMENTO"'
      Required = True
    end
    object ibq1TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI"."TESTATA_PN_ID"'
    end
    object ibq1CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_DOC"'
      Size = 10
    end
    object ibq1TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object ibq1DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI"."DA_FATTURARE"'
    end
    object ibq1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CLIFOR_ID"'
    end
    object ibq1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object ibq1DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object ibq1CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CLIFOR_ID"'
    end
    object ibq1CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."CONTRO_TIPO_CLIFOR"'
    end
    object ibq1CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object ibq1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object ibq1CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object ibq1ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 3
    end
    object ibq1SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA"'
      Size = 2
    end
    object ibq1DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_REGISTRAZIONE"'
    end
    object ibq1DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
    end
    object ibq1DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONFERMA"'
    end
    object ibq1DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_EVASIONE"'
    end
    object ibq1STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."STATO_DOCUMENTO"'
    end
    object ibq1STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI"."STATO_CONTABILITA"'
    end
    object ibq1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI"."MONETA_ID"'
      Size = 4
    end
    object ibq1CAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI"."CAMBIO"'
    end
    object ibq1KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI"."KINGUA_ID"'
      Size = 4
    end
    object ibq1LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI"."LISTINO"'
      Size = 10
    end
    object ibq1NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."NS_RIFERIMENTO"'
      Size = 50
    end
    object ibq1VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."VS_RIFERIMENTO"'
      Size = 50
    end
    object ibq1CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object ibq1CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object ibq1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibq1BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."BANCA_CLIFOR"'
      Size = 5
    end
    object ibq1BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI"."BANCA_AZIENDA"'
      Size = 5
    end
    object ibq1VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI"."VETTORE1"'
      Size = 7
    end
    object ibq1VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI"."VETTORE2"'
      Size = 7
    end
    object ibq1VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI"."VETTORE3"'
      Size = 7
    end
    object ibq1PORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI"."PORTO"'
      Size = 30
    end
    object ibq1ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI"."ASPETTO"'
      Size = 4
    end
    object ibq1SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPEDIZIONE"'
      Size = 4
    end
    object ibq1PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI"."PESO_NETTO"'
    end
    object ibq1PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI"."PESO_LORDO"'
    end
    object ibq1CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI"."CUBAGGIO"'
    end
    object ibq1DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI"."DESTINARIO"'
      Size = 4
    end
    object ibq1IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI"."IMBALLO"'
      Size = 4
    end
    object ibq1SCONTO11: TFloatField
      FieldName = 'SCONTO11'
      Origin = '"TAB_DOCUMENTI"."SCONTO1"'
    end
    object ibq1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI"."AGENTE_ID"'
      Size = 4
    end
    object ibq1DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONSEGNA"'
    end
    object ibq1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC"'
    end
    object ibq1NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI"."NRCOLLI"'
    end
    object ibq1SCONTO21: TFloatField
      FieldName = 'SCONTO21'
      Origin = '"TAB_DOCUMENTI"."SCONTO2"'
    end
    object ibq1IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_SCONTO"'
    end
    object ibq1NOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI"."NOTA"'
      Size = 100
    end
    object ibq1SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI"."SOSPESO"'
    end
    object ibq1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI"."IVA_SOSPESA"'
    end
    object ibq1COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_ESENTE"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object ibq1COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object ibq1ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI"."ACCORPA_RIGHE"'
    end
    object ibq1ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 3
    end
    object ibq1SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA2"'
      Size = 2
    end
    object ibq1SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI"."SOGGETTO_CEE"'
    end
    object ibq1REPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI"."REPORT"'
      Size = 50
    end
    object ibq1RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI"."RILEVA_ACCONTO"'
    end
    object ibq1ORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI"."ORA"'
      Size = 5
    end
    object ibq1FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI"."FATT_ACCOMP"'
    end
    object ibq1TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI"."TIPO_FATT"'
    end
    object ibq1ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."ST_NOTE_CLIFOR"'
    end
    object ibq1IVATO1: TSmallintField
      FieldName = 'IVATO1'
      Origin = '"TAB_DOCUMENTI"."IVATO"'
    end
    object ibq1STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI"."STAMPATO"'
    end
    object ibq1DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI"."DATA_COMPETENZA_IVA"'
    end
    object ibq1MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI"."MEZZO_TRASPORTO"'
    end
    object ibq1TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_PROVVIGIONE"'
    end
    object ibq1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TIPO_PROVVIGIONE"'
    end
    object ibq1TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_IMP_PROVVIGIONE"'
    end
    object ibq1CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI"."CAST_MANUALE"'
    end
    object ibq1NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC2"'
    end
    object ibq1SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC2"'
      Size = 2
    end
    object ibq1MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI"."MESE_CONT"'
    end
    object ibq1ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI"."ALTRE_DERT_SI_NO"'
    end
    object ibq1SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI"."SPESE_IMBALLO"'
    end
    object ibq1SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."SPESE_BOLLI"'
    end
    object ibq1SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI"."SPESE_ACCESSORIE"'
    end
    object ibq1SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."SPESE_INCASSO"'
    end
    object ibq1SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPESE_SPEDIZIONE"'
    end
    object ibq1SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI"."SPESE_CONTRASS"'
    end
    object ibq1CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI"."CAU_TRASP_ID"'
      Size = 30
    end
    object ibq1PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."PER_ALTRA_DEST"'
    end
    object ibq1IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_CON_IVA"'
    end
    object ibq1TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI"."TOTALE_MERCE"'
    end
    object ibq1TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SERVIZI"'
    end
    object ibq1TOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
    end
    object ibq1TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVA"'
    end
    object ibq1TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVATO"'
    end
    object ibq1TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SCONTI"'
    end
    object ibq1TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
    end
    object ibq1TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO_IVATO"'
    end
    object ibq1CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI"."CODIVA1"'
      Size = 4
    end
    object ibq1ALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI"."ALIVA1"'
    end
    object ibq1IMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI"."IMPON1"'
    end
    object ibq1IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA1"'
    end
    object ibq1CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI"."CODIVA2"'
      Size = 4
    end
    object ibq1ALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI"."ALIVA2"'
    end
    object ibq1IMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI"."IMPON2"'
    end
    object ibq1IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA2"'
    end
    object ibq1CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI"."CODIVA3"'
      Size = 4
    end
    object ibq1ALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI"."ALIVA3"'
    end
    object ibq1IMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI"."IMPON3"'
    end
    object ibq1IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA3"'
    end
    object ibq1CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI"."CODIVA4"'
      Size = 4
    end
    object ibq1ALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI"."ALIVA4"'
    end
    object ibq1IMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI"."IMPON4"'
    end
    object ibq1IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA4"'
    end
    object ibq1CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI"."CODIVA5"'
      Size = 4
    end
    object ibq1ALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI"."ALIVA5"'
    end
    object ibq1IMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI"."IMPON5"'
    end
    object ibq1IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA5"'
    end
    object ibq1TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI"."TOT_SPESE"'
    end
    object ibq1ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST"'
      Size = 100
    end
    object ibq1SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC"'
      Size = 10
    end
    object ibq1CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND"'
      Size = 255
    end
    object ibq1ACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI"."ACCONTO"'
    end
    object ibq1RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object ibq1RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object ibq1RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object ibq1RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object ibq1RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object ibq1RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object ibq1TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI"."TEL1"'
      Size = 15
    end
    object ibq1TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI"."TEL2"'
      Size = 15
    end
    object ibq1TEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI"."TEL3"'
      Size = 15
    end
    object ibq1IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE"'
    end
    object ibq1IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE_ID"'
    end
    object ibq1VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND"'
      Size = 100
    end
    object ibq1VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND2"'
      Size = 100
    end
    object ibq1CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND2"'
      Size = 255
    end
    object ibq1RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object ibq1RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object ibq1RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object ibq1RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object ibq1RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object ibq1RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object ibq1PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
      Origin = '"TAB_DOCUMENTI"."PIANOCONTO_ID"'
    end
    object ibq1ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST2"'
      Size = 100
    end
    object ibq1CA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 576
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField22: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBQuery2DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery2CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery2UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery2SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery2SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery2SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery2PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery2PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery2PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery2SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery2SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery2LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery2GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery2QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery2ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery2DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery2PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBQuery2COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery2TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery2FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery2FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery2COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery2RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery2GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery2ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery2RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery2RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery2RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery2RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery2STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery2GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery2PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery2CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery2CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery2CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery2DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery2VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery2NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery2TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery2TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery2OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery2TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery2CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery2DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery2NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery2NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery2NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery2PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery2COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery2DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery2NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery2TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery2CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery2CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery2UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery2UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery2CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery2CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery2CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery2FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery2CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBQuery2FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery2DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery2SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery2PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery2P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery2P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery2P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery2P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery2SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery2SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery2SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery2SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery2SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery2SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery2SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery2SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery2SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery2SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery2SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery2SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery2R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery2R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery2R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery2R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery2IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery2IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery2IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery2IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery2RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery2P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery2IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery2STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery2CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery2CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery2AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery2CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery2CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery2AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery2CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery2CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery2AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery2CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery2CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery2AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery2CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery2CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery2AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery2CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery2CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery2AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery2ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery2CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery2CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery2CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery2CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery2CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery2CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object ibqSitArt: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'SELECT distinct TAB_DET_DOC.codice_articolo, TAB_DET_DOC.descr,t' +
        'ab_documenti.clifor_id,tab_cli_for.denominazione,tab_cli_for.tip' +
        'o, SUM(TAB_DET_DOC.QUANTITA) as QTA'
      'FROM TAB_DET_DOC JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'join tab_cli_for on'
      '(tab_cli_for.id_cli_for=tab_documenti.clifor_id)'
      
        'where ((tab_documenti.tipo_doc=23) or (tab_documenti.tipo_doc=24' +
        ') or (tab_documenti.tipo_doc=13) or (tab_documenti.tipo_doc=14) ' +
        'or (tab_documenti.tipo_doc=210) or (tab_documenti.tipo_doc=211) ' +
        'or (tab_documenti.tipo_doc=350))'
      
        'GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,tab_docum' +
        'enti.clifor_id,tab_cli_for.denominazione,tab_cli_for.tipo'
      
        'ORDER BY TAB_DET_DOC.codice_articolo,tab_cli_for.tipo,tab_cli_fo' +
        'r.denominazione')
    Left = 504
    Top = 272
  end
  object ibqSitDDTExt: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqSitDDTExtCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      'where tab_documenti.tipo_doc=136'
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 216
    object ibqSitDDTExtCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDTExtDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      ProviderFlags = []
      Size = 50
    end
    object ibqSitDDTExtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTExtDESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibqSitDDTExtF_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object ibqSitDDTExtConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
  end
  object ibqSitDDTExt2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where (tab_documenti.tipo_doc=336)  and (tab_det_doc.codice_arti' +
        'colo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqSitDDTExt2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDTExt2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTExt2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
  end
  object ibqSitDDT: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqSitDDTCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      'where tab_documenti.tipo_doc=13'
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 216
    Top = 48
    object ibqSitDDTCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDTDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      ProviderFlags = []
      Size = 50
    end
    object ibqSitDDTCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTDESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibqSitDDTF_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object ibqSitDDTConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
  end
  object ibqSitDDT2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where (tab_documenti.tipo_doc=23)  and (tab_det_doc.codice_artic' +
        'olo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 288
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqSitDDT2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDT2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDT2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
  end
  object ibqSitDDTCl: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqSitDDTClCalcFields
    SQL.Strings = (
      
        'select clifor_id,tab_cli_for.DENOMINAZIONE,tab_det_doc.codice_ar' +
        'ticolo,tab_Det_doc.descr,sum(tab_det_doc.quantita) as F_1 from t' +
        'ab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where (tab_documenti.tipo_doc=135) or (tab_documenti.tipo_doc=13' +
        '6)'
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 360
    Top = 160
    object ibqSitDDTClCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDTClDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      ProviderFlags = []
      Size = 50
    end
    object ibqSitDDTClCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTClDESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibqSitDDTClF_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object ibqSitDDTClConsegnato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Consegnato'
      Calculated = True
    end
  end
  object ibqSitDDTCl2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select clifor_id,tab_det_doc.codice_articolo,sum(tab_det_doc.qua' +
        'ntita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_cli_for on'
      'tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where ((tab_documenti.tipo_doc=335) or (tab_documenti.tipo_doc=3' +
        '36))  and (tab_det_doc.codice_articolo=:codice_Articolo)'
      'and (tab_documenti.clifor_id=:clifor_id)'
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 400
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clifor_id'
        ParamType = ptUnknown
      end>
    object ibqSitDDTCl2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
    object ibqSitDDTCl2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTCl2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 600
    Top = 48
  end
  object ibqSitDDTCl_1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqSitDDTCl_1CalcFields
    SQL.Strings = (
      
        'select tab_Det_doc.dep,tab_det_doc.codice_articolo,tab_Det_doc.d' +
        'escr,sum(tab_det_doc.quantita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_articoli'
      'on  tab_det_doc.codice_articolo =tab_articoli.codice_articolo'
      
        'where ((tab_documenti.tipo_doc=135) or (tab_documenti.tipo_doc=1' +
        '36)) and tab_articoli.FLAG_ACCESSORIE='#39'N'#39
      
        'group by tab_Det_doc.dep,tab_det_doc.codice_articolo,tab_Det_doc' +
        '.descr'
      'order by tab_Det_doc.dep,tab_det_doc.codice_articolo')
    Left = 256
    Top = 152
    object ibqSitDDTCl_1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTCl_1DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibqSitDDTCl_1F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object ibqSitDDTCl_1CONSEGNATO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CONSEGNATO'
      Calculated = True
    end
    object ibqSitDDTCl_1DEP: TIBStringField
      FieldName = 'DEP'
      ProviderFlags = []
      Size = 4
    end
  end
  object ibqSitDDTCl2_1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select tab_det_doc.codice_articolo,sum(tab_det_doc.quantita) as ' +
        'F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      
        'where ((tab_documenti.tipo_doc=335)  or (tab_documenti.tipo_doc=' +
        '336)) and (tab_det_doc.codice_articolo=:codice_Articolo) and (ta' +
        'b_det_doc.dep=:pardep)'
      'group by tab_det_doc.codice_articolo'
      'order by tab_det_doc.codice_articolo')
    Left = 288
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pardep'
        ParamType = ptUnknown
      end>
    object ibqSitDDTCl2_1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTCl2_1F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
  end
  object ibqSitDDTCl_2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnCalcFields = ibqSitDDTCl_2CalcFields
    SQL.Strings = (
      
        'select tab_documenti.clifor_id,tab_Det_doc.dep,tab_det_doc.codic' +
        'e_articolo,tab_Det_doc.descr,tab_det_doc.scheda,sum(tab_det_doc.' +
        'quantita) as F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      'join tab_articoli'
      'on  tab_det_doc.codice_articolo =tab_articoli.codice_articolo'
      
        'where ((tab_documenti.tipo_doc=135)  or (tab_documenti.tipo_doc=' +
        '136)) and tab_articoli.FLAG_ACCESSORIE='#39'N'#39' and (tab_documenti.cl' +
        'ifor_id=:parCliFor_ID) and (tab_det_doc.codice_articolo=:codice_' +
        'Articolo) '
      
        'group by tab_documenti.clifor_id,tab_Det_doc.dep,tab_det_doc.cod' +
        'ice_articolo,tab_Det_doc.descr,tab_det_doc.scheda'
      
        'order by tab_Det_doc.dep,tab_det_doc.codice_articolo,tab_det_doc' +
        '.scheda')
    Left = 256
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parCliFor_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end>
    object ibqSitDDTCl_2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTCl_2DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibqSitDDTCl_2SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      ProviderFlags = []
    end
    object ibqSitDDTCl_2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object ibqSitDDTCl_2CONSEGNATO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CONSEGNATO'
      Calculated = True
    end
    object ibqSitDDTCl_2DEP: TIBStringField
      FieldName = 'DEP'
      ProviderFlags = []
      Size = 4
    end
    object ibqSitDDTCl_2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      ProviderFlags = []
    end
  end
  object ibqSitDDTCl2_2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select tab_det_doc.codice_articolo,sum(tab_det_doc.quantita) as ' +
        'F_1 from tab_documenti'
      'join tab_det_doc'
      'on tab_documenti.id_documento = tab_det_doc.doc_id'
      
        'where ((tab_documenti.tipo_doc=335)  or (tab_documenti.tipo_doc=' +
        '336)) and (tab_det_doc.codice_articolo=:codice_Articolo)   and (' +
        'tab_det_doc.SCHEDA=:PARSCHEDA)  and (tab_det_doc.dep=:pardep) an' +
        'd (tab_documenti.clifor_id=:parCliFor_ID)'
      'group by tab_det_doc.codice_articolo'
      'order by tab_det_doc.codice_articolo')
    Left = 288
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARSCHEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pardep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parCliFor_ID'
        ParamType = ptUnknown
      end>
    object ibqSitDDTCl2_2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object ibqSitDDTCl2_2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
  end
  object frReport1: TfrReport
    Values.Data = {01000000000000000000000553414C444F}
    OnDataSetWork = frReport1DataSetWork
    OnGetValue = frReport1GetValue
    Left = 472
    Top = 88
    Data = {020000000A43617465676F72696131062053414C444F}
    PixelsPerInch = 96
  end
  object frDesigner1: TfrDesigner
    Left = 510
    Top = 88
  end
  object ibqDaFatt: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_documenti'
      'join tab_cli_for'
      'on tab_documenti.clifor_id=tab_cli_for.id_cli_for'
      
        'where ((subattivita<>'#39'S'#39') or (subattivita is null)) and tipo_doc' +
        '=13'
      'order by tab_cli_for.denominazione,data_doc')
    Left = 242
    Top = 351
  end
  object ibqScar_dis: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT * from scar_distinte inner join tab_contabile_articolo'
      
        'on scar_distinte.codice_articolo= tab_contabile_articolo.codice_' +
        'articolo')
    Left = 362
    Top = 343
    object ibqScar_disPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"SCAR_DISTINTE"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqScar_disCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"SCAR_DISTINTE"."CODICE_ARTICOLO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqScar_disDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"SCAR_DISTINTE"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibqScar_disQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"SCAR_DISTINTE"."QTA"'
    end
    object ibqScar_disID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"SCAR_DISTINTE"."ID_DOCUMENTO"'
    end
    object ibqScar_disDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"SCAR_DISTINTE"."DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqScar_disCODICE_ART_VEN: TIBStringField
      FieldName = 'CODICE_ART_VEN'
      Origin = '"SCAR_DISTINTE"."CODICE_ART_VEN"'
      Required = True
    end
    object ibqScar_disNUM_DOCUMENTO: TIntegerField
      FieldName = 'NUM_DOCUMENTO'
      Origin = '"SCAR_DISTINTE"."NUM_DOCUMENTO"'
    end
    object ibqScar_disCAUSALE_DOCUMENTO: TIBStringField
      FieldName = 'CAUSALE_DOCUMENTO'
      Origin = '"SCAR_DISTINTE"."CAUSALE_DOCUMENTO"'
      Size = 5
    end
    object ibqScar_disMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
  end
  object frReport2: TfrReport
    Values.Data = {01000000000000000000000553414C444F}
    OnDataSetWork = frReport2DataSetWork
    OnGetValue = frReport2GetValue
    Left = 472
    Top = 128
    Data = {020000000A43617465676F72696131062053414C444F}
    PixelsPerInch = 96
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 685
    Top = 152
  end
  object r_qBrogliaccio2: TIBQuery
    SQL.Strings = (
      
        'SELECT tab_det_doc.*, TAB_DOCUMENTI.* ,tab_causali_magazzino.mov' +
        '_non_valido as TIPOMOV,tab_causali_magazzino.descr_causale as ca' +
        'usale_descr,TAB_CONTABILE_ARTICOLO.giacenza_attuale,TAB_CONTABIL' +
        'E_ARTICOLO.ULT_COSTO_ACQ,tab_cli_for.denominazione as CliFornDes' +
        'cr,distinte.COSTO as COSTOD,tab_depositi.descr as deposito'
      'FROM TAB_DET_DOC'
      
        ' JOIN TAB_DOCUMENTI ON (TAB_DOCUMENTI.id_documento = TAB_DET_DOC' +
        '.doc_id)'
      'JOIN TAB_causali_magazzino ON'
      
        '(TAB_DOCUMENTI.causale_magazzino=TAB_causali_magazzino.codice_ca' +
        'usale)'
      'JOIN TAB_cli_for ON'
      '(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)'
      
        'JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_a' +
        'rticolo = TAB_DET_DOC.codice_Articolo) and'
      '(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))'
      'join tab_depositi on'
      '(TAB_Det_doc.dep=tab_depositi.codice)'
      ''
      
        'left join distinte on Tab_det_doc.codice_articolo=distinte.codic' +
        'e_articolo'
      'ORDER BY  TAB_DET_DOC.DEP,  TAB_DET_DOC.codice_articolo')
    Left = 656
    Top = 245
    object r_qBrogliaccio2DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object r_qBrogliaccio2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object r_qBrogliaccio2DESCR: TIBStringField
      DisplayWidth = 100
      FieldName = 'DESCR'
      Size = 100
    end
    object r_qBrogliaccio2UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object r_qBrogliaccio2QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##.00'
    end
    object r_qBrogliaccio2SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccio2SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccio2SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccio2COSTO: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'COSTO'
      DisplayFormat = '#,##.0'
    end
    object r_qBrogliaccio2DEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object r_qBrogliaccio2ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object r_qBrogliaccio2DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object r_qBrogliaccio2NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object r_qBrogliaccio2SERIE_DOC: TIBStringField
      DisplayWidth = 10
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object r_qBrogliaccio2TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object r_qBrogliaccio2CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object r_qBrogliaccio2CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object r_qBrogliaccio2CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object r_qBrogliaccio2IMPORTO_SCONTO: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'IMPORTO_SCONTO'
      DisplayFormat = '#,##'
    end
    object r_qBrogliaccio2IMPORTO_CON_IVA: TFloatField
      DefaultExpression = '#,##.00'
      FieldName = 'IMPORTO_CON_IVA'
      DisplayFormat = '#,##'
    end
    object r_qBrogliaccio2QTA_UM: TFloatField
      FieldName = 'QTA_UM'
    end
    object r_qBrogliaccio2TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
    end
    object r_qBrogliaccio2LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object r_qBrogliaccio2COL: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object r_qBrogliaccio2ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object r_qBrogliaccio2NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object r_qBrogliaccio2TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object r_qBrogliaccio2COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object r_qBrogliaccio2FATTCONV: TFloatField
      FieldName = 'FATTCONV'
    end
    object r_qBrogliaccio2SCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object r_qBrogliaccio2SCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object r_qBrogliaccio2IMPORTO: TFloatField
      FieldName = 'IMPORTO'
    end
    object r_qBrogliaccio2IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object r_qBrogliaccio2OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object r_qBrogliaccio2PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object r_qBrogliaccio2TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object r_qBrogliaccio2IVATO: TFloatField
      FieldName = 'IVATO'
    end
    object r_qBrogliaccio2CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object r_qBrogliaccio2DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object r_qBrogliaccio2RIF_A: TSmallintField
      FieldName = 'RIF_A'
    end
    object r_qBrogliaccio2RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object r_qBrogliaccio2RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object r_qBrogliaccio2RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object r_qBrogliaccio2RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object r_qBrogliaccio2RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object r_qBrogliaccio2RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object r_qBrogliaccio2RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object r_qBrogliaccio2RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object r_qBrogliaccio2RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object r_qBrogliaccio2RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object r_qBrogliaccio2PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object r_qBrogliaccio2RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object r_qBrogliaccio2RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object r_qBrogliaccio2RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object r_qBrogliaccio2TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object r_qBrogliaccio2PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object r_qBrogliaccio2SCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object r_qBrogliaccio2PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object r_qBrogliaccio2TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object r_qBrogliaccio2CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object r_qBrogliaccio2TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object r_qBrogliaccio2DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object r_qBrogliaccio2CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object r_qBrogliaccio2CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object r_qBrogliaccio2CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object r_qBrogliaccio2CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object r_qBrogliaccio2ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Size = 2
    end
    object r_qBrogliaccio2SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object r_qBrogliaccio2DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object r_qBrogliaccio2DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object r_qBrogliaccio2DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object r_qBrogliaccio2STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object r_qBrogliaccio2STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object r_qBrogliaccio2MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object r_qBrogliaccio2CAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object r_qBrogliaccio2KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object r_qBrogliaccio2NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object r_qBrogliaccio2VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object r_qBrogliaccio2CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object r_qBrogliaccio2PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object r_qBrogliaccio2BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object r_qBrogliaccio2BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object r_qBrogliaccio2VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object r_qBrogliaccio2VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object r_qBrogliaccio2VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object r_qBrogliaccio2PORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object r_qBrogliaccio2ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object r_qBrogliaccio2SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object r_qBrogliaccio2PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object r_qBrogliaccio2PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object r_qBrogliaccio2CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object r_qBrogliaccio2DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object r_qBrogliaccio2IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object r_qBrogliaccio2SCONTO11: TFloatField
      FieldName = 'SCONTO11'
    end
    object r_qBrogliaccio2AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object r_qBrogliaccio2DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object r_qBrogliaccio2NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object r_qBrogliaccio2SCONTO21: TFloatField
      FieldName = 'SCONTO21'
    end
    object r_qBrogliaccio2IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
    end
    object r_qBrogliaccio2NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object r_qBrogliaccio2SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object r_qBrogliaccio2IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object r_qBrogliaccio2COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object r_qBrogliaccio2COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object r_qBrogliaccio2ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object r_qBrogliaccio2ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Size = 2
    end
    object r_qBrogliaccio2SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object r_qBrogliaccio2SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object r_qBrogliaccio2REPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object r_qBrogliaccio2RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object r_qBrogliaccio2ORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object r_qBrogliaccio2FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object r_qBrogliaccio2TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object r_qBrogliaccio2ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object r_qBrogliaccio2IVATO1: TSmallintField
      FieldName = 'IVATO1'
    end
    object r_qBrogliaccio2STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object r_qBrogliaccio2DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object r_qBrogliaccio2MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object r_qBrogliaccio2TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
    end
    object r_qBrogliaccio2TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object r_qBrogliaccio2TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
    end
    object r_qBrogliaccio2CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object r_qBrogliaccio2NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object r_qBrogliaccio2SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object r_qBrogliaccio2MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object r_qBrogliaccio2ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object r_qBrogliaccio2SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
    end
    object r_qBrogliaccio2SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
    end
    object r_qBrogliaccio2SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
    end
    object r_qBrogliaccio2SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
    end
    object r_qBrogliaccio2SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
    end
    object r_qBrogliaccio2SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
    end
    object r_qBrogliaccio2CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object r_qBrogliaccio2PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object r_qBrogliaccio2IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
    end
    object r_qBrogliaccio2TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
    end
    object r_qBrogliaccio2TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
    end
    object r_qBrogliaccio2TOTALE: TFloatField
      FieldName = 'TOTALE'
    end
    object r_qBrogliaccio2TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
    end
    object r_qBrogliaccio2TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
    end
    object r_qBrogliaccio2TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
    end
    object r_qBrogliaccio2TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
    end
    object r_qBrogliaccio2TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
    end
    object r_qBrogliaccio2CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object r_qBrogliaccio2ALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object r_qBrogliaccio2IMPON1: TFloatField
      FieldName = 'IMPON1'
    end
    object r_qBrogliaccio2IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
    end
    object r_qBrogliaccio2CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object r_qBrogliaccio2ALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object r_qBrogliaccio2IMPON2: TFloatField
      FieldName = 'IMPON2'
    end
    object r_qBrogliaccio2IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
    end
    object r_qBrogliaccio2CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object r_qBrogliaccio2ALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object r_qBrogliaccio2IMPON3: TFloatField
      FieldName = 'IMPON3'
    end
    object r_qBrogliaccio2IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
    end
    object r_qBrogliaccio2CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object r_qBrogliaccio2ALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object r_qBrogliaccio2IMPON4: TFloatField
      FieldName = 'IMPON4'
    end
    object r_qBrogliaccio2IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
    end
    object r_qBrogliaccio2CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object r_qBrogliaccio2ALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object r_qBrogliaccio2IMPON5: TFloatField
      FieldName = 'IMPON5'
    end
    object r_qBrogliaccio2IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
    end
    object r_qBrogliaccio2TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object r_qBrogliaccio2ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object r_qBrogliaccio2CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object r_qBrogliaccio2ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object r_qBrogliaccio2TEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object r_qBrogliaccio2TEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object r_qBrogliaccio2TEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object r_qBrogliaccio2IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object r_qBrogliaccio2IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object r_qBrogliaccio2VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object r_qBrogliaccio2VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object r_qBrogliaccio2CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object r_qBrogliaccio2PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
    end
    object r_qBrogliaccio2ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object r_qBrogliaccio2A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object r_qBrogliaccio2B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object r_qBrogliaccio2C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object r_qBrogliaccio2CA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object r_qBrogliaccio2GIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object r_qBrogliaccio2COSTOD: TFloatField
      FieldName = 'COSTOD'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
    object r_qBrogliaccio2OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object r_qBrogliaccio2OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object r_qBrogliaccio2OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object r_qBrogliaccio2OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object r_qBrogliaccio2RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object r_qBrogliaccio2RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object r_qBrogliaccio2RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object r_qBrogliaccio2RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object r_qBrogliaccio2RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object r_qBrogliaccio2RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object r_qBrogliaccio2RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object r_qBrogliaccio2RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object r_qBrogliaccio2RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object r_qBrogliaccio2RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object r_qBrogliaccio2RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object r_qBrogliaccio2RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object r_qBrogliaccio2CLIFORNDESCR: TIBStringField
      FieldName = 'CLIFORNDESCR'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object r_qBrogliaccio2TIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"TAB_CAUSALI_MAGAZZINO"."MOV_NON_VALIDO"'
    end
    object r_qBrogliaccio2CAUSALE_DESCR: TIBStringField
      FieldName = 'CAUSALE_DESCR'
      Origin = '"TAB_CAUSALI_MAGAZZINO"."DESCR_CAUSALE"'
      Size = 50
    end
    object r_qBrogliaccio2DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object r_qBrogliaccio2DESCR1: TIBStringField
      FieldName = 'deposito3'
      Origin = '"TAB_DEPOSITI"."DESCR"'
      Size = 50
    end
    object r_qBrogliaccio2ULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
      currency = True
    end
  end
  object r_dsoBrogliaccio2: TDataSource
    DataSet = r_qBrogliaccio2
    Left = 712
    Top = 253
  end
end
