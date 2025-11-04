object frmPrimaNotaInsert: TfrmPrimaNotaInsert
  Left = 30
  Top = 64
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Inserimento in Prima Nota - '
  ClientHeight = 423
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDatiContab: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 97
    Align = alTop
    BevelOuter = bvLowered
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnExit = pnlDatiContabExit
    object lblDatMov: TLabel
      Left = 6
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Data movimento'
    end
    object lblDataDoc: TLabel
      Left = 254
      Top = 8
      Width = 99
      Height = 16
      Caption = 'Data documento'
    end
    object lblNumDoc: TLabel
      Left = 512
      Top = 8
      Width = 86
      Height = 16
      Caption = 'N° Documento'
    end
    object lblTotFattura: TLabel
      Left = 576
      Top = 34
      Width = 83
      Height = 16
      Caption = 'Totale Fattura'
    end
    object Label1: TLabel
      Left = 20
      Top = 32
      Width = 71
      Height = 16
      Caption = 'Descrizione'
    end
    object lblCliFor: TLabel
      Left = 30
      Top = 58
      Width = 53
      Height = 16
      Caption = 'Fornitore'
    end
    object lblContropartita: TLabel
      Left = 6
      Top = 80
      Width = 77
      Height = 15
      Caption = 'Contropartita'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblImponibile: TLabel
      Left = 248
      Top = 80
      Width = 59
      Height = 15
      Caption = 'Imponibile'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblIVAperc: TLabel
      Left = 382
      Top = 80
      Width = 48
      Height = 15
      Caption = 'IVA, [%]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblImposta: TLabel
      Left = 438
      Top = 80
      Width = 43
      Height = 15
      Caption = 'Imposta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object rxdblcCliFor: TRxDBLookupCombo
      Left = 108
      Top = 54
      Width = 347
      Height = 22
      DropDownCount = 10
      EmptyItemColor = 4210816
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsCliFor
      TabOrder = 0
    end
    object dtedtDataMov: TDateEdit
      Left = 108
      Top = 6
      Width = 97
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      TabOrder = 1
      Text = '01/01/2001'
    end
    object edtDescrMov: TEdit
      Left = 108
      Top = 30
      Width = 347
      Height = 22
      TabOrder = 2
    end
    object dtedtDataDoc: TDateEdit
      Left = 360
      Top = 6
      Width = 95
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      TabOrder = 3
      Text = '01/01/2001'
    end
    object rxspedtNumDoc: TRxSpinEdit
      Left = 610
      Top = 6
      Width = 97
      Height = 22
      Alignment = taRightJustify
      TabOrder = 4
    end
    object rxcalcedtTotalePagato: TRxCalcEdit
      Left = 574
      Top = 50
      Width = 133
      Height = 21
      AutoSize = False
      NumGlyphs = 2
      TabOrder = 5
    end
  end
  object pnlContab_Det: TPanel
    Left = 0
    Top = 97
    Width = 587
    Height = 326
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object dbcgContab: TDBCtrlGrid
      Left = 2
      Top = 2
      Width = 583
      Height = 297
      Align = alClient
      ColCount = 1
      Color = 15204326
      DataSource = dsContab
      PanelHeight = 33
      PanelWidth = 567
      ParentColor = False
      TabOrder = 0
      RowCount = 9
      SelectedColor = 16744448
      object dbeContropartita: TDBEdit
        Left = 4
        Top = 4
        Width = 233
        Height = 24
        CharCase = ecUpperCase
        Color = 16773862
        DataField = 'SOTTOCONTO_DESCR'
        DataSource = dsContab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnDblClick = dbeContropartitaDblClick
      end
      object dbeImposta: TDBEdit
        Left = 432
        Top = 4
        Width = 131
        Height = 24
        Color = 16773862
        DataField = 'IMPOSTA'
        DataSource = dsContab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbeIVAperc: TDBEdit
        Left = 378
        Top = 4
        Width = 49
        Height = 24
        Color = 16773862
        DataField = 'IVA_PERC'
        DataSource = dsContab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = dbeIVApercExit
      end
      object dbeImponibile: TDBEdit
        Left = 242
        Top = 4
        Width = 131
        Height = 24
        Color = 16773862
        DataField = 'IMPONIBILE'
        DataSource = dsContab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = dbeImponibileExit
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 299
      Width = 583
      Height = 25
      DataSource = dsContab
      Align = alBottom
      Flat = True
      TabOrder = 1
    end
  end
  object pnlBilancio: TPanel
    Left = 587
    Top = 97
    Width = 148
    Height = 326
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 2
    object lblTotale: TLabel
      Left = 6
      Top = 6
      Width = 39
      Height = 16
      Caption = 'Totale'
    end
    object lblSbilancio: TLabel
      Left = 6
      Top = 50
      Width = 56
      Height = 16
      Caption = 'Sbilancio'
    end
    object bbNuovo: TBitBtn
      Left = 12
      Top = 164
      Width = 123
      Height = 25
      Caption = '&Nuovo'
      TabOrder = 3
      OnClick = bbNuovoClick
    end
    object bbSalva: TBitBtn
      Left = 12
      Top = 198
      Width = 123
      Height = 25
      Caption = '&Salva'
      Enabled = False
      TabOrder = 4
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 12
      Top = 226
      Width = 123
      Height = 25
      Caption = '&Annulla'
      Enabled = False
      TabOrder = 5
      OnClick = bbAnnullaClick
    end
    object bbEsci: TBitBtn
      Left = 12
      Top = 271
      Width = 123
      Height = 25
      Caption = '&Esci'
      TabOrder = 6
      OnClick = bbEsciClick
    end
    object stTotale: TStaticText
      Left = 6
      Top = 22
      Width = 129
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object stSbilancio: TStaticText
      Left = 6
      Top = 66
      Width = 129
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object bbSottoConti: TBitBtn
      Left = 12
      Top = 108
      Width = 123
      Height = 25
      Caption = 'SottoConti'
      TabOrder = 2
      OnClick = bbSottoContiClick
    end
  end
  object dsContab: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryContab
    Left = 80
    Top = 188
  end
  object dsCliFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 234
    Top = 138
  end
end
