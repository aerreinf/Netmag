object frmInsInPNPagamento: TfrmInsInPNPagamento
  Left = 206
  Top = 170
  ActiveControl = bbEsci
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inserimento in Prima Nota - '
  ClientHeight = 478
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDatiContab: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 185
    Align = alTop
    BevelInner = bvLowered
    Color = 15653740
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
      Left = 4
      Top = 2
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataDoc: TLabel
      Left = 144
      Top = 2
      Width = 67
      Height = 14
      Caption = 'Data docum.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotFattura: TLabel
      Left = 400
      Top = 79
      Width = 89
      Height = 14
      Caption = 'Dare (Incassato)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescrMov: TLabel
      Left = 392
      Top = 2
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
    object lblCliFor: TLabel
      Left = 4
      Top = 114
      Width = 51
      Height = 14
      Caption = 'Fornitore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblContrprt2: TLabel
      Left = 4
      Top = 79
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
    object lblNota: TLabel
      Left = 4
      Top = 36
      Width = 25
      Height = 14
      Caption = 'Note'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBanca: TLabel
      Left = 360
      Top = 36
      Width = 31
      Height = 14
      Caption = 'Banca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblNfatt: TLabel
      Left = 4
      Top = 148
      Width = 35
      Height = 14
      Caption = 'N'#176' fatt.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataFatt: TLabel
      Left = 120
      Top = 148
      Width = 62
      Height = 14
      Caption = 'Data fattura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImporto: TLabel
      Left = 218
      Top = 148
      Width = 44
      Height = 14
      Caption = 'Importo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAbbuono: TLabel
      Left = 416
      Top = 148
      Width = 50
      Height = 14
      Caption = 'Abbuono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblDataScadAss: TLabel
      Left = 613
      Top = 36
      Width = 74
      Height = 14
      Caption = 'Data scadenza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblNumAss: TLabel
      Left = 511
      Top = 36
      Width = 36
      Height = 14
      Caption = 'N'#176' ass.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblDataScad: TLabel
      Left = 320
      Top = 148
      Width = 78
      Height = 14
      Caption = 'Data scadenza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 592
      Top = 160
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Inserisci'
      Caption = 'I'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 613
      Top = 160
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'M'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 634
      Top = 160
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'A'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 655
      Top = 160
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'S'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 676
      Top = 160
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'E'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 224
      Top = 67
      Width = 20
      Height = 22
      Hint = 'Inserisci'
      Caption = 'R'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 162
      Top = 36
      Width = 49
      Height = 14
      Caption = 'Deposito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 4
      Top = 2
      Width = 50
      Height = 14
      Caption = 'Data Reg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 86
      Top = 2
      Width = 38
      Height = 14
      Caption = 'N'#176' Reg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumDoc: TLabel
      Left = 230
      Top = 2
      Width = 77
      Height = 14
      Caption = 'N'#176' Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 297
      Top = 15
      Width = 4
      Height = 19
      Caption = '/'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 323
      Top = 2
      Width = 40
      Height = 14
      Caption = 'N'#176' Prot.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 89
      Top = 162
      Width = 4
      Height = 19
      Caption = '/'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 611
      Top = 91
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Inserisci'
      Caption = 'I'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 629
      Top = 91
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'M'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 647
      Top = 91
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'A'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 664
      Top = 91
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'S'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 682
      Top = 91
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'E'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton11Click
    end
    object Label7: TLabel
      Left = 499
      Top = 79
      Width = 81
      Height = 14
      Caption = 'Avere (Pagato)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rxdblcCliFor: TRxDBLookupCombo
      Left = 117
      Top = 128
      Width = 285
      Height = 19
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsCliFor
      ParentFont = False
      TabOrder = 4
      OnChange = rxdblcCliForChange
      OnKeyPress = rxdblcCliForKeyPress
    end
    object rxdblcContropartita: TRxDBLookupCombo
      Left = 114
      Top = 93
      Width = 285
      Height = 19
      DropDownCount = 10
      DataField = 'campo2'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'DESCR'
      LookupSource = dsPianoConti
      ParentFont = False
      TabOrder = 7
      OnChange = rxdblcContropartitaChange
      OnKeyPress = rxdblcContropartitaKeyPress
    end
    object dtedtDataMov: TDateEdit
      Left = 4
      Top = 15
      Width = 81
      Height = 19
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      Text = '01/01/2001'
      OnChange = dtedtDataMovChange
      OnKeyPress = dtedtDataMovKeyPress
    end
    object dtedtDataDoc: TDateEdit
      Left = 144
      Top = 15
      Width = 82
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dtedtDataDocKeyPress
    end
    object rxcalcedtTotalePagato: TRxCalcEdit
      Left = 400
      Top = 93
      Width = 97
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      OnExit = rxcalcedtTotalePagatoExit
      OnKeyPress = rxcalcedtTotalePagatoKeyPress
    end
    object edtDescrMov: TEdit
      Left = 392
      Top = 15
      Width = 305
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edtDescrMovKeyPress
    end
    object edtNote: TEdit
      Left = 4
      Top = 49
      Width = 157
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edtBanca: TEdit
      Left = 360
      Top = 48
      Width = 150
      Height = 20
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 8
    end
    object dtedtDataScadenza: TDateEdit
      Left = 613
      Top = 49
      Width = 85
      Height = 19
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
      Text = '01/01/2001'
    end
    object rxdblcContropartitaNOME: TRxDBLookupCombo
      Left = 4
      Top = 93
      Width = 109
      Height = 19
      DropDownCount = 10
      DataField = 'campo2'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'NOME_CONTO'
      LookupSource = dsPianoConti
      ParentFont = False
      TabOrder = 6
      OnChange = rxdblcContropartitaNOMEChange
      OnKeyPress = rxdblcContropartitaNOMEKeyPress
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 4
      Top = 128
      Width = 109
      Height = 19
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dsCliFor
      ParentFont = False
      TabOrder = 3
      OnChange = RxDBLookupCombo1Change
      OnKeyPress = RxDBLookupCombo1KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 4
      Top = 162
      Width = 85
      Height = 19
      AutoSize = False
      Color = 16773862
      Ctl3D = False
      DataField = 'NUM_FATTURA'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnKeyPress = DBEdit1KeyPress
    end
    object DBDateEdit1: TDBDateEdit
      Left = 120
      Top = 162
      Width = 97
      Height = 19
      DataField = 'DATA_FATTURA'
      DataSource = dsContab
      Color = 16773862
      Ctl3D = False
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      OnKeyPress = DBDateEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 218
      Top = 162
      Width = 101
      Height = 19
      AutoSize = False
      Color = 16773862
      Ctl3D = False
      DataField = 'IMPORTO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBDateEdit2: TDBDateEdit
      Left = 320
      Top = 162
      Width = 95
      Height = 19
      DataField = 'DATA_SCADENZA'
      DataSource = dsContab
      Color = 16773862
      Ctl3D = False
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit3: TDBEdit
      Left = 416
      Top = 162
      Width = 51
      Height = 19
      AutoSize = False
      Color = 16773862
      Ctl3D = False
      DataField = 'ABBUONO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Visible = False
    end
    object rxdblcDeposito: TRxDBLookupCombo
      Left = 162
      Top = 49
      Width = 197
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsDeposito
      ParentFont = False
      TabOrder = 16
    end
    object rxspedtAssNum: TEdit
      Left = 511
      Top = 48
      Width = 101
      Height = 20
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 17
    end
    object Edit2: TEdit
      Left = 86
      Top = 15
      Width = 57
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnExit = Edit2Exit
    end
    object rxspedtNumDoc: TEdit
      Left = 230
      Top = 15
      Width = 67
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnKeyPress = rxspedtNumDocKeyPress
    end
    object Edit4: TEdit
      Left = 301
      Top = 15
      Width = 21
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object Edit3: TEdit
      Left = 323
      Top = 15
      Width = 65
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object DBEdit4: TDBEdit
      Left = 94
      Top = 162
      Width = 25
      Height = 19
      AutoSize = False
      Color = 16773862
      Ctl3D = False
      DataField = 'NUM_DOC_LETT'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
      OnKeyPress = DBEdit1KeyPress
    end
    object RxCalcEdit1: TRxCalcEdit
      Left = 499
      Top = 93
      Width = 97
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 23
      OnExit = rxcalcedtTotalePagatoExit
      OnKeyPress = rxcalcedtTotalePagatoKeyPress
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 414
      Top = 128
      Width = 176
      Height = 19
      Hint = 'Ricerca x Partita Iva'
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'PARTITA_IVA'
      LookupSource = DataSource2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
    end
  end
  object pnlBilancio: TPanel
    Left = 582
    Top = 185
    Width = 120
    Height = 293
    Align = alRight
    BevelInner = bvLowered
    Color = 13029887
    TabOrder = 1
    object lblTotale: TLabel
      Left = 9
      Top = 26
      Width = 62
      Height = 14
      Caption = 'Totale Dare'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSbilancio: TLabel
      Left = 9
      Top = 83
      Width = 49
      Height = 14
      Caption = 'Sbilancio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 9
      Top = 55
      Width = 70
      Height = 14
      Caption = 'Totale Avere'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbNuovo: TBitBtn
      Left = 11
      Top = 203
      Width = 106
      Height = 18
      Cursor = crHandPoint
      Caption = '&Nuovo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbNuovoClick
    end
    object bbSalva: TBitBtn
      Left = 11
      Top = 222
      Width = 106
      Height = 18
      Cursor = crHandPoint
      Caption = '&Salva'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 11
      Top = 241
      Width = 106
      Height = 18
      Cursor = crHandPoint
      Caption = '&Annulla'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bbAnnullaClick
    end
    object bbEsci: TBitBtn
      Left = 11
      Top = 265
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbEsciClick
    end
    object stTotale: TStaticText
      Left = 9
      Top = 38
      Width = 106
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object stSbilancio: TStaticText
      Left = 9
      Top = 95
      Width = 106
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object bbSottoConti: TBitBtn
      Left = 11
      Top = 116
      Width = 106
      Height = 19
      Cursor = crHandPoint
      Caption = 'Crea Nuovo Conto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbSottoContiClick
    end
    object bbScadenze: TBitBtn
      Left = 11
      Top = 181
      Width = 106
      Height = 18
      Cursor = crHandPoint
      Caption = 'Scadenze...'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbScadenzeClick
    end
    object BitBtn2: TBitBtn
      Left = 11
      Top = 136
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Nuovo Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 11
      Top = 155
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Nuovo Fornitore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = BitBtn3Click
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 67
      Width = 106
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 19
      Top = 4
      Width = 90
      Height = 16
      Hint = 'Saldo Conto'
      AutoSize = False
      DataField = 'SALDO'
      DataSource = DataSource3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 11
    end
  end
  object pnlContab: TPanel
    Left = 0
    Top = 185
    Width = 582
    Height = 293
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    Color = clYellow
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 3
      Top = 3
      Width = 576
      Height = 287
      Align = alClient
      DataSource = dsContab
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'NOME_CONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Conto'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'SOTTOCONTO_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descriz.'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 167
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'DARE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Dare'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'AVERE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Avere'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSilver
          Expanded = False
          FieldName = 'NUM_FATTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Num.Fatt.'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'IMPORTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Importo'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 123
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSilver
          Expanded = False
          FieldName = 'DATA_FATTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data Fatt.'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSilver
          Expanded = False
          FieldName = 'DATA_SCADENZA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Scadenza'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'NUM_ASS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Num.Ass.'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'NUM_PROT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'DATA_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'DATA_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'NUM_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'DOC_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'DESCR_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'CLIFOR_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'TIPO_CLIFOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'BANCA_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'BANCA_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'NOTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'TOTALE_PAGATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'SBILANCIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'PIANOCONTO_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'CON_DETT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'TIPO_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'ABBUONO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'FK_SCADENZA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'ASS_DATA_SCAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'IMPOSTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'IVA_PERC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'IMPONIBILE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REG_IVA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MESE_COMP'
          Visible = True
        end>
    end
  end
  object dsContab: TDataSource
    AutoEdit = False
    DataSet = rxmdPrimaNota
    Left = 82
    Top = 300
  end
  object dsPianoConti: TDataSource
    DataSet = IBQuery1
    Left = 570
    Top = 61
  end
  object dsCliFor: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 610
    Top = 4
  end
  object rxmdPrimaNota: TRxMemoryData
    FieldDefs = <
      item
        Name = 'PK_CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUM_PROT'
        DataType = ftInteger
      end
      item
        Name = 'DATA_MOV'
        DataType = ftDate
      end
      item
        Name = 'DATA_DOC'
        DataType = ftDate
      end
      item
        Name = 'NUM_DOC'
        DataType = ftInteger
      end
      item
        Name = 'DOC_ID'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_MOV'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SOTTOCONTO_DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DARE'
        DataType = ftFloat
      end
      item
        Name = 'AVERE'
        DataType = ftFloat
      end
      item
        Name = 'CLIFOR_ID'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CLIFOR'
        DataType = ftSmallint
      end
      item
        Name = 'BANCA_ID'
        DataType = ftInteger
      end
      item
        Name = 'BANCA_DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOTE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DATA_SCADENZA'
        DataType = ftDate
      end
      item
        Name = 'TOTALE_PAGATO'
        DataType = ftFloat
      end
      item
        Name = 'SBILANCIO'
        DataType = ftFloat
      end
      item
        Name = 'NUM_ASS'
        DataType = ftInteger
      end
      item
        Name = 'PIANOCONTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CONTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CON_DETT'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'TIPO_MOV'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NUM_FATTURA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_FATTURA'
        DataType = ftDate
      end
      item
        Name = 'IMPORTO'
        DataType = ftFloat
      end
      item
        Name = 'ABBUONO'
        DataType = ftFloat
      end
      item
        Name = 'FK_SCADENZA'
        DataType = ftInteger
      end
      item
        Name = 'ASS_DATA_SCAD'
        DataType = ftDate
      end
      item
        Name = 'IMPOSTA'
        DataType = ftFloat
      end
      item
        Name = 'IVA_PERC'
        DataType = ftFloat
      end
      item
        Name = 'IMPONIBILE'
        DataType = ftFloat
      end>
    ObjectView = True
    Left = 142
    Top = 271
    object rxmdPrimaNotaNUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
    end
    object rxmdPrimaNotaNUM_REG: TIntegerField
      FieldName = 'NUM_REG'
    end
    object rxmdPrimaNotaNUM_DOC_LETT: TStringField
      FieldName = 'NUM_DOC_LETT'
      Size = 4
    end
    object rxmdPrimaNotaPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object rxmdPrimaNotaNUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object rxmdPrimaNotaDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object rxmdPrimaNotaDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object rxmdPrimaNotaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object rxmdPrimaNotaDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object rxmdPrimaNotaDESCR_MOV: TStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object rxmdPrimaNotaSOTTOCONTO_DESCR: TStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object rxmdPrimaNotaDARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object rxmdPrimaNotaAVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object rxmdPrimaNotaCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object rxmdPrimaNotaTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object rxmdPrimaNotaBANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
    end
    object rxmdPrimaNotaBANCA_DESCR: TStringField
      FieldName = 'BANCA_DESCR'
      Size = 100
    end
    object rxmdPrimaNotaNOTE: TStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object rxmdPrimaNotaDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object rxmdPrimaNotaTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      currency = True
    end
    object rxmdPrimaNotaSBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
    end
    object rxmdPrimaNotaPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object rxmdPrimaNotaNOME_CONTO: TStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object rxmdPrimaNotaCON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Required = True
    end
    object rxmdPrimaNotaTIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Required = True
    end
    object rxmdPrimaNotaNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object rxmdPrimaNotaDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object rxmdPrimaNotaIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      currency = True
    end
    object rxmdPrimaNotaABBUONO: TFloatField
      FieldName = 'ABBUONO'
      currency = True
    end
    object rxmdPrimaNotaFK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
    end
    object rxmdPrimaNotaASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
    end
    object rxmdPrimaNotaIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      currency = True
    end
    object rxmdPrimaNotaIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
    end
    object rxmdPrimaNotaIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      currency = True
    end
    object rxmdPrimaNotaNUM_ASS: TStringField
      FieldName = 'NUM_ASS'
    end
    object rxmdPrimaNotaREG_IVA: TIntegerField
      FieldName = 'REG_IVA'
    end
    object rxmdPrimaNotaMESE_COMP: TStringField
      FieldName = 'MESE_COMP'
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_PIANO_CONTI'
      'Order By NOME_CONTO')
    Left = 536
    Top = 56
    object IBQuery1ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Origin = '"TAB_PIANO_CONTI"."ID_PIANO_CONTO"'
      Required = True
    end
    object IBQuery1GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Origin = '"TAB_PIANO_CONTI"."GRUPPO"'
      Size = 2
    end
    object IBQuery1CONTO: TIBStringField
      FieldName = 'CONTO'
      Origin = '"TAB_PIANO_CONTI"."CONTO"'
      Size = 3
    end
    object IBQuery1SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Origin = '"TAB_PIANO_CONTI"."SOTTOCONTO"'
      Size = 5
    end
    object IBQuery1NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      Origin = '"TAB_PIANO_CONTI"."NOME_CONTO"'
      ReadOnly = True
      Size = 12
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_PIANO_CONTI"."TIPO"'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PIANO_CONTI"."DESCR"'
      Size = 50
    end
    object IBQuery1NATURA: TSmallintField
      FieldName = 'NATURA'
      Origin = '"TAB_PIANO_CONTI"."NATURA"'
    end
    object IBQuery1LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
      Origin = '"TAB_PIANO_CONTI"."LIVELLO"'
    end
    object IBQuery1RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
      Origin = '"TAB_PIANO_CONTI"."RIVENDITA"'
    end
    object IBQuery1STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
      Origin = '"TAB_PIANO_CONTI"."STRUMENTALE"'
    end
    object IBQuery1INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
      Origin = '"TAB_PIANO_CONTI"."INDEDUCIBILE"'
    end
    object IBQuery1STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
      Origin = '"TAB_PIANO_CONTI"."STAMPA_IN_BILANCIO"'
    end
    object IBQuery1VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
      Origin = '"TAB_PIANO_CONTI"."VARIAZIONE_FISCALE"'
    end
    object IBQuery1DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Origin = '"TAB_PIANO_CONTI"."DICH_REDDITI_ID"'
      Size = 4
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_PIANO_CONTI"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
      Origin = '"TAB_PIANO_CONTI"."CONTO_PERSONALIZZATO_ID"'
    end
    object IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
      Origin = '"TAB_PIANO_CONTI"."CAPO_CONTO_CLI_FOR"'
    end
    object IBQuery1SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
      Origin = '"TAB_PIANO_CONTI"."SPECIALE"'
    end
  end
  object dsDeposito: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 200
    Top = 299
  end
  object dsVisContab: TDataSource
    DataSet = dmodAz.ibqryContab2
    Left = 60
    Top = 276
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from  CONTABILITA'
      'where NUM_PROT=:N'
      'order by NUM_PROT')
    Left = 424
    Top = 295
    ParamData = <
      item
        DataType = ftInteger
        Name = 'N'
        ParamType = ptUnknown
      end>
    object IBQuery1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery1NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object IBQuery1DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object IBQuery1DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object IBQuery1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery1DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IBQuery1DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object IBQuery1SOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object IBQuery1DARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object IBQuery1AVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object IBQuery1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery1BANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
    end
    object IBQuery1BANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Size = 100
    end
    object IBQuery1NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object IBQuery1DATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object IBQuery1TOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      currency = True
    end
    object IBQuery1SBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
    end
    object IBQuery1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object IBQuery1CON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Required = True
    end
    object IBQuery1NUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object IBQuery1DATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object IBQuery1IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      currency = True
    end
    object IBQuery1ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      currency = True
    end
    object IBQuery1TIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
    end
    object IBQuery1IMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      currency = True
    end
    object IBQuery1IMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      currency = True
    end
    object IBQuery1IVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
    end
    object IBQuery1FK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
    end
    object IBQuery1ASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
    end
    object IBQuery1DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Size = 3
    end
    object IBQuery1DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Size = 50
    end
    object IBQuery2NUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object IBQuery2NUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object IBQuery2NUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object IBQuery2NUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object IBQuery2PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBQuery2COD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object IBQuery2DESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
    object IBQuery2REG_IVA: TIntegerField
      FieldName = 'REG_IVA'
      Origin = '"CONTABILITA"."REG_IVA"'
    end
    object IBQuery2MESE_COMP: TIBStringField
      FieldName = 'MESE_COMP'
      Origin = '"CONTABILITA"."MESE_COMP"'
      Size = 2
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 160
    Top = 349
    object RxMemoryData1campo1: TIntegerField
      FieldName = 'campo1'
    end
    object RxMemoryData1campo2: TIntegerField
      FieldName = 'campo2'
    end
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 192
    Top = 349
  end
  object ibqCliPIva: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_cli_for'
      'where tipo=1'
      'order by PARTITA_IVA')
    Left = 264
    Top = 64
  end
  object ibqForPIva: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_cli_for'
      'where tipo=2'
      'order by PARTITA_IVA')
    Left = 304
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = ibqCliPIva
    Left = 336
    Top = 64
  end
  object ibqSaldo: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select PIANOCONTO_ID,(sum(dare)-sum(AVERE)) as SALDO from contab' +
        'ilita'
      'where PIANOCONTO_ID=:PCON'
      'group by PIANOCONTO_ID')
    Left = 296
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCON'
        ParamType = ptUnknown
      end>
    object ibqSaldoPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      ProviderFlags = []
    end
    object ibqSaldoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
      currency = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ibqSaldo
    Left = 336
    Top = 217
  end
end
