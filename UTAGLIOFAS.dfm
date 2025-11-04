object fTaglioFas: TfTaglioFas
  Left = 162
  Top = 55
  Width = 751
  Height = 601
  Caption = 'Taglio Diretto Fasonista'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPretaglio: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 532
    Align = alClient
    BevelOuter = bvLowered
    Color = 16760445
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
      Top = 4
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
      Left = 93
      Top = 289
      Width = 33
      Height = 14
      Caption = 'Taglie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 81
      Top = 271
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
      Left = 654
      Top = 273
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
      Left = 669
      Top = 297
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
      Left = 665
      Top = 321
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
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
      Color = 15329769
      DataField = 'NUMERO'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object dbdteData: TDBDateEdit
      Left = 488
      Top = 18
      Width = 93
      Height = 21
      DataField = 'DATA'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      LookupField = 'DENOMINAZIONE'
      LookupDisplay = 'DENOMINAZIONE'
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
      Left = 645
      Top = 491
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Calcola'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = bbCalcolaClick
    end
    object sgDett: TStringGrid
      Left = 128
      Top = 317
      Width = 437
      Height = 173
      Color = 15066597
      ColCount = 10
      Ctl3D = True
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
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
      Left = 128
      Top = 269
      Width = 437
      Height = 43
      Color = clBlack
      ColCount = 10
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 2
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
      Left = 8
      Top = 317
      Width = 113
      Height = 173
      Color = clBlack
      ColCount = 1
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
      Left = 128
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
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object sgTotalePerColori: TStringGrid
      Left = 576
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
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object dbeQtaTotale: TDBEdit
      Left = 576
      Top = 493
      Width = 61
      Height = 19
      AutoSize = False
      DataField = 'QTA_TOTALE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object bbCerca: TBitBtn
      Left = 464
      Top = 20
      Width = 21
      Height = 17
      Cursor = crHandPoint
      Caption = '?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
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
      Height = 143
      Color = 15791615
      DataSource = dsAssort
      FixedColor = 14803425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 4210816
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
          Color = 14548991
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
      Left = 568
      Top = 272
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 696
      Top = 269
      Width = 41
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      Text = 'Tot'
    end
    object Edit2: TDBEdit
      Left = 698
      Top = 293
      Width = 39
      Height = 19
      AutoSize = False
      DataField = 'SCAT'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object DBEdit1: TDBEdit
      Left = 644
      Top = 317
      Width = 21
      Height = 21
      DataField = 'PASSATA'
      DataSource = dsPretaglio
      TabOrder = 22
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 698
      Top = 317
      Width = 39
      Height = 19
      AutoSize = False
      DataField = 'PASSATA'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 680
      Top = 341
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
    object DBEdit3: TDBEdit
      Left = 672
      Top = 456
      Width = 33
      Height = 21
      DataField = 'PK_DIST'
      DataSource = dsPretaglio
      TabOrder = 25
      Visible = False
    end
    object dbeDescrPerDocum: TDBMemo
      Left = 4
      Top = 225
      Width = 733
      Height = 37
      DataField = 'NOTE'
      DataSource = dsPretaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 532
    Width = 743
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 10485760
    TabOrder = 1
    object bbEsci: TBitBtn
      Left = 661
      Top = 5
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbEsciClick
    end
    object bbPrnScheda: TBitBtn
      Left = 477
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa scheda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbPrnSchedaClick
    end
    object bbPrnLista: TBitBtn
      Left = 569
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa lista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bbPrnListaClick
    end
    object bbNuovo: TBitBtn
      Left = 10
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nuovo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbNuovoClick
    end
    object bbModifica: TBitBtn
      Left = 246
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Modifica'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbModificaClick
    end
    object bbSalva: TBitBtn
      Left = 91
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Salva'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 169
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Annulla'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbAnnullaClick
    end
    object bbElimina: TBitBtn
      Left = 323
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Elimina'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbEliminaClick
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Visualizza'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object dsPretaglio: TDataSource
    DataSet = dmodAz.ibqryPretFas
    Left = 20
    Top = 316
  end
  object dsDipendente: TDataSource
    DataSet = dmodAz.ibqTab_For
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
      'from TAGLIOFAS')
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
end
