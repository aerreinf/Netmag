object frmProduzioneAbbigliamento: TfrmProduzioneAbbigliamento
  Left = 313
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pretaglio'
  ClientHeight = 551
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPretaglio: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 516
    Align = alClient
    BevelOuter = bvLowered
    Color = 16762508
    Enabled = False
    TabOrder = 0
    object lblCodice: TLabel
      Left = 4
      Top = 4
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescr: TLabel
      Left = 130
      Top = 4
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblData: TLabel
      Left = 490
      Top = 4
      Width = 23
      Height = 14
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumero: TLabel
      Left = 582
      Top = 2
      Width = 44
      Height = 14
      Caption = 'Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotale: TLabel
      Left = 660
      Top = 4
      Width = 34
      Height = 14
      Caption = 'Totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDipendente: TLabel
      Left = 4
      Top = 41
      Width = 63
      Height = 14
      Caption = 'Dipendente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFasonista: TLabel
      Left = 186
      Top = 41
      Width = 53
      Height = 14
      Caption = 'Fasonista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCliente: TLabel
      Left = 368
      Top = 41
      Width = 39
      Height = 14
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblColori: TLabel
      Left = 8
      Top = 297
      Width = 33
      Height = 14
      Caption = 'Colori'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTaglie: TLabel
      Left = 226
      Top = 292
      Width = 32
      Height = 14
      Caption = 'Taglia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 214
      Top = 275
      Width = 45
      Height = 14
      Caption = 'Ferretto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 550
      Top = 41
      Width = 49
      Height = 14
      Caption = 'Deposito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 788
      Top = 260
      Width = 41
      Height = 14
      Caption = 'Assort.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 803
      Top = 284
      Width = 26
      Height = 14
      Caption = 'Scat.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 799
      Top = 308
      Width = 30
      Height = 14
      Caption = 'Pass.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 224
      Top = 259
      Width = 35
      Height = 14
      Caption = 'Coppa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 4
      Top = 18
      Width = 121
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = dbeCodiceExit
    end
    object dbeDescr: TDBEdit
      Left = 130
      Top = 18
      Width = 330
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbeNumero: TDBEdit
      Left = 582
      Top = 18
      Width = 73
      Height = 19
      AutoSize = False
      DataField = 'NUMERO'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbeTotale: TDBEdit
      Left = 660
      Top = 18
      Width = 53
      Height = 19
      AutoSize = False
      DataField = 'TOTALE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = dbeTotaleKeyPress
    end
    object dbdteData: TDBDateEdit
      Left = 488
      Top = 18
      Width = 93
      Height = 19
      DataField = 'DATA'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object rxdblcDipendente: TRxDBLookupCombo
      Left = 4
      Top = 55
      Width = 180
      Height = 21
      DropDownCount = 8
      DataField = 'DIPENDENTE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DESCR'
      LookupDisplay = 'DESCR'
      LookupSource = dsDipendente
      ParentFont = False
      TabOrder = 6
    end
    object rbdblcFasonista: TRxDBLookupCombo
      Left = 186
      Top = 55
      Width = 180
      Height = 21
      DropDownCount = 8
      DataField = 'FASONISTA'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DENOMINAZIONE'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsFasonista
      ParentFont = False
      TabOrder = 7
    end
    object rxdblcCliente: TRxDBLookupCombo
      Left = 368
      Top = 55
      Width = 180
      Height = 21
      DropDownCount = 8
      DataField = 'CLIENTE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DENOMINAZIONE'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsCliente
      ParentFont = False
      TabOrder = 8
      OnChange = rxdblcClienteChange
      OnExit = rxdblcClienteExit
    end
    object bbCalcola: TBitBtn
      Left = 779
      Top = 483
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Calcola'
      TabOrder = 15
      OnClick = bbCalcolaClick
    end
    object sgDett: TStringGrid
      Left = 262
      Top = 317
      Width = 437
      Height = 173
      Color = 15658734
      ColCount = 10
      Ctl3D = True
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 11
    end
    object sgTaglie: TStringGrid
      Left = 262
      Top = 256
      Width = 437
      Height = 59
      Color = -1
      ColCount = 10
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentFont = False
      TabOrder = 9
    end
    object sgColori: TStringGrid
      Left = 7
      Top = 317
      Width = 234
      Height = 173
      Color = -1
      ColCount = 2
      DefaultColWidth = 104
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentFont = False
      TabOrder = 10
    end
    object sgTotalePerTaglie: TStringGrid
      Left = 262
      Top = 493
      Width = 437
      Height = 21
      ColCount = 10
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object sgTotalePerColori: TStringGrid
      Left = 710
      Top = 317
      Width = 61
      Height = 173
      ColCount = 1
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object dbeQtaTotale: TDBEdit
      Left = 710
      Top = 493
      Width = 61
      Height = 19
      AutoSize = False
      DataField = 'QTA_TOTALE'
      DataSource = dsPretaglio
      ReadOnly = True
      TabOrder = 14
    end
    object bbCerca: TBitBtn
      Left = 464
      Top = 20
      Width = 21
      Height = 17
      Cursor = crHandPoint
      Hint = 'Ricerca Articolo da Inserire'
      Caption = '?'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbCercaClick
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 550
      Top = 55
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'CLIENTE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsDepositi
      ParentFont = False
      TabOrder = 16
    end
    object dbgAssort: TDBGrid
      Left = 1
      Top = 80
      Width = 737
      Height = 137
      Color = 14543103
      DataSource = dsAssort
      FixedColor = 14803425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 4210816
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Color = 12189695
          Expanded = False
          FieldName = 'COLORE'
          Title.Alignment = taCenter
          Title.Caption = 'colore'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 172
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA01'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA02'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA03'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA04'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA05'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA06'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA07'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA08'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA09'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12189695
          Expanded = False
          FieldName = 'TAGLIA10'
          Title.Alignment = taCenter
          Title.Caption = '/'
          Title.Color = clBlack
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 702
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 18
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 716
      Top = 17
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Caption = '...'
      TabOrder = 19
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 830
      Top = 256
      Width = 38
      Height = 19
      AutoSize = False
      TabOrder = 20
      Text = 'Tot'
    end
    object Edit2: TDBEdit
      Left = 829
      Top = 280
      Width = 39
      Height = 19
      AutoSize = False
      DataField = 'SCAT'
      DataSource = dsPretaglio
      TabOrder = 21
    end
    object DBEdit1: TDBEdit
      Left = 778
      Top = 317
      Width = 21
      Height = 21
      DataField = 'PASSATA'
      DataSource = dsPretaglio
      TabOrder = 22
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 829
      Top = 304
      Width = 39
      Height = 19
      AutoSize = False
      DataField = 'PASSATA'
      DataSource = dsPretaglio
      TabOrder = 23
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 811
      Top = 328
      Width = 57
      Height = 49
      Caption = 'Passata'
      DataField = 'PASSATA'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'No'
        'Si')
      ParentFont = False
      TabOrder = 24
      Values.Strings = (
        'N'
        'S')
    end
    object DBCheckBox1: TDBCheckBox
      Left = -3
      Top = 280
      Width = 76
      Height = 17
      Caption = 'Distinta Cliente'
      TabOrder = 25
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 806
      Top = 456
      Width = 33
      Height = 21
      DataField = 'PK_DIST'
      DataSource = dsPretaglio
      TabOrder = 26
      Visible = False
    end
    object dbeDescrPerDocum: TDBMemo
      Left = 2
      Top = 218
      Width = 735
      Height = 37
      DataField = 'NOTE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
    end
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 516
    Width = 892
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = clBlue
    TabOrder = 1
    object bbEsci: TBitBtn
      Left = 656
      Top = 6
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      TabOrder = 7
      OnClick = bbEsciClick
    end
    object bbPrnScheda: TBitBtn
      Left = 472
      Top = 6
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa scheda'
      PopupMenu = PopupMenu1
      TabOrder = 5
      OnClick = bbPrnSchedaClick
    end
    object bbPrnLista: TBitBtn
      Left = 564
      Top = 6
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa lista'
      TabOrder = 6
      OnClick = bbPrnListaClick
    end
    object bbNuovo: TBitBtn
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nuovo'
      TabOrder = 0
      OnClick = bbNuovoClick
    end
    object bbModifica: TBitBtn
      Left = 241
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Modifica'
      TabOrder = 1
      OnClick = bbModificaClick
    end
    object bbSalva: TBitBtn
      Left = 86
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Salva'
      Enabled = False
      TabOrder = 2
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 164
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Annulla'
      Enabled = False
      TabOrder = 3
      OnClick = bbAnnullaClick
    end
    object bbElimina: TBitBtn
      Left = 318
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Elimina'
      TabOrder = 4
      OnClick = bbEliminaClick
    end
    object BitBtn1: TBitBtn
      Left = 395
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Visualizza'
      TabOrder = 8
      OnClick = BitBtn1Click
    end
  end
  object dsPretaglio: TDataSource
    DataSet = dmodAz.ibqryPretaglio
    OnDataChange = dsPretaglioDataChange
    Left = 20
    Top = 316
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.IBQryCommessi
    Left = 52
    Top = 44
  end
  object dsFasonista: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 240
    Top = 68
  end
  object dsCliente: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 396
    Top = 64
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 660
    Top = 332
  end
  object dsDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 588
    Top = 64
  end
  object dsAssort: TDataSource
    DataSet = IBQuery3
    Left = 84
    Top = 104
  end
  object dsColori: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryColori
    Left = 192
    Top = 134
  end
  object dsTaglia: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryTaglia
    Left = 12
    Top = 110
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select max(numero)'
      'from pretaglio')
    Left = 680
    Top = 368
    object IBQuery1MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from taglia'
      'where CODICE_ARTICOLO=:CA'
      'order by descr')
    Left = 608
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CA'
        ParamType = ptUnknown
      end>
    object IBQuery2TAGLIA: TFloatField
      FieldName = 'TAGLIA'
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
    end
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery2
    Left = 680
    Top = 128
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from ASSORTIMENTO'
      'where CODICE_ARTICOLO=:CA')
    Left = 688
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CA'
        ParamType = ptUnknown
      end>
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery3TAGLIA01: TIntegerField
      FieldName = 'TAGLIA01'
    end
    object IBQuery3TAGLIA02: TIntegerField
      FieldName = 'TAGLIA02'
    end
    object IBQuery3TAGLIA03: TIntegerField
      FieldName = 'TAGLIA03'
    end
    object IBQuery3TAGLIA04: TIntegerField
      FieldName = 'TAGLIA04'
    end
    object IBQuery3TAGLIA05: TIntegerField
      FieldName = 'TAGLIA05'
    end
    object IBQuery3TAGLIA06: TIntegerField
      FieldName = 'TAGLIA06'
    end
    object IBQuery3TAGLIA07: TIntegerField
      FieldName = 'TAGLIA07'
    end
    object IBQuery3TAGLIA08: TIntegerField
      FieldName = 'TAGLIA08'
    end
    object IBQuery3TAGLIA09: TIntegerField
      FieldName = 'TAGLIA09'
    end
    object IBQuery3TAGLIA10: TIntegerField
      FieldName = 'TAGLIA10'
    end
    object IBQuery3COLORE: TIBStringField
      FieldName = 'COLORE'
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 616
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 232
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
end
