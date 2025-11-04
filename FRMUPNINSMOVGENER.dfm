object frmPNinsMovGener: TfrmPNinsMovGener
  Left = 185
  Top = 160
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Inserimento in Prima Nota - Movimento Generico'
  ClientHeight = 387
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContab: TPanel
    Left = 0
    Top = 97
    Width = 640
    Height = 290
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clBlue
    Enabled = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 636
      Height = 286
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
          Expanded = False
          FieldName = 'NOME_CONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Conto'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOTTOCONTO_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descrizione'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 325
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DARE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVERE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PROT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'DATA_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'DATA_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'NUM_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'DOC_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'DESCR_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'CLIFOR_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'TIPO_CLIFOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'deposito_codice'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'deposito_descr'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'BANCA_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'BANCA_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'NOTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'DATA_SCADENZA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'TOTALE_PAGATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'SBILANCIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'NUM_ASS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'PIANOCONTO_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          FieldName = 'CON_DETT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
        end>
    end
  end
  object pnlDatiContab: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 97
    Align = alTop
    BevelOuter = bvLowered
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
    TabOrder = 1
    OnExit = pnlDatiContabExit
    object lblDatMov: TLabel
      Left = 4
      Top = 2
      Width = 64
      Height = 14
      Caption = 'Data Regist.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataDoc: TLabel
      Left = 168
      Top = 2
      Width = 89
      Height = 14
      Caption = 'Data documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumDoc: TLabel
      Left = 266
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
    object Label1: TLabel
      Left = 352
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
    object lblContropartita: TLabel
      Left = 3
      Top = 58
      Width = 88
      Height = 16
      Caption = 'Contropartita*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImponibile: TLabel
      Left = 440
      Top = 58
      Width = 87
      Height = 16
      Caption = 'Dare (Entrata)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImposta: TLabel
      Left = 544
      Top = 58
      Width = 87
      Height = 16
      Caption = 'Avere (Uscita)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 39
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
    object SpeedButton1: TSpeedButton
      Left = 639
      Top = 77
      Width = 20
      Height = 18
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
      Left = 661
      Top = 77
      Width = 20
      Height = 18
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
      Left = 683
      Top = 77
      Width = 20
      Height = 18
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
      Left = 705
      Top = 77
      Width = 20
      Height = 18
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
      Left = 727
      Top = 77
      Width = 20
      Height = 18
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
    object Label3: TLabel
      Left = 285
      Top = 39
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
    object Label4: TLabel
      Left = 94
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
    object dtedtDataMov: TDateEdit
      Left = 4
      Top = 15
      Width = 83
      Height = 19
      CheckOnExit = True
      DefaultToday = True
      DialogTitle = 'Selezionare la Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      PopupColor = clSilver
      YearDigits = dyFour
      TabOrder = 0
      Text = '01/09/2001'
      OnChange = dtedtDataMovChange
      OnKeyPress = dtedtDataMovKeyPress
    end
    object dtedtDataDoc: TDateEdit
      Left = 168
      Top = 15
      Width = 80
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selezionare la Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      PopupColor = clSilver
      YearDigits = dyFour
      TabOrder = 1
      OnKeyPress = dtedtDataDocKeyPress
    end
    object edtDescr: TEdit
      Left = 352
      Top = 15
      Width = 395
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
      OnKeyPress = edtDescrKeyPress
    end
    object rxspinedtNumDoc: TRxSpinEdit
      Left = 266
      Top = 14
      Width = 81
      Height = 21
      Alignment = taRightJustify
      Decimal = 0
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = rxspinedtNumDocEnter
      OnKeyPress = rxspinedtNumDocKeyPress
    end
    object rxdblcDeposito: TRxDBLookupCombo
      Left = 57
      Top = 37
      Width = 218
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
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 75
      Width = 121
      Height = 20
      Hint = 'Doppio Click per ricercare'
      DataField = 'NOME_CONTO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnDblClick = DBEdit1DblClick
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 125
      Top = 75
      Width = 310
      Height = 20
      DataField = 'SOTTOCONTO_DESCR'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 440
      Top = 75
      Width = 90
      Height = 20
      DataField = 'DARE'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 544
      Top = 75
      Width = 90
      Height = 20
      DataField = 'AVERE'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = DBEdit4KeyPress
    end
    object Edit1: TEdit
      Left = 316
      Top = 37
      Width = 431
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnKeyPress = edtDescrKeyPress
    end
    object Edit2: TEdit
      Left = 94
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
      TabOrder = 10
      OnExit = Edit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 656
      Top = 58
      Width = 90
      Height = 16
      Hint = 'Saldo Conto'
      AutoSize = False
      DataField = 'SALDO'
      DataSource = DataSource1
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
  object pnlBilancio: TPanel
    Left = 640
    Top = 97
    Width = 113
    Height = 290
    Align = alRight
    BevelOuter = bvLowered
    Color = 10473471
    TabOrder = 2
    object lblTotaleDare: TLabel
      Left = 8
      Top = 2
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
    object lblTotaleAvere: TLabel
      Left = 8
      Top = 38
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
    object lblSbilancio: TLabel
      Left = 8
      Top = 75
      Width = 49
      Height = 14
      Caption = 'Sbilancio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbSalva: TBitBtn
      Left = 5
      Top = 222
      Width = 105
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
      TabOrder = 1
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 5
      Top = 242
      Width = 105
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
      TabOrder = 2
      OnClick = bbAnnullaClick
    end
    object bbEsci: TBitBtn
      Left = 5
      Top = 263
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbEsciClick
    end
    object bbNuovo: TBitBtn
      Left = 5
      Top = 202
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = '&Nuovo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbNuovoClick
    end
    object bbSottoConti: TBitBtn
      Left = 5
      Top = 134
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Crea Nuovo Conto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbSottoContiClick
    end
    object stTotaleDare: TRxCalcEdit
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      AutoSize = False
      Color = 14737632
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object stTotaleAvere: TRxCalcEdit
      Left = 8
      Top = 53
      Width = 97
      Height = 21
      AutoSize = False
      Color = 14737632
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object stSbilancio: TRxCalcEdit
      Left = 8
      Top = 90
      Width = 97
      Height = 21
      AutoSize = False
      Color = 14737632
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 113
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Importa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 5
      Top = 155
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
      TabOrder = 9
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 5
      Top = 174
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
      TabOrder = 10
      OnClick = BitBtn3Click
    end
  end
  object dsContab: TDataSource
    AutoEdit = False
    DataSet = rxmdPrimaNota
    Left = 48
    Top = 158
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
        Name = 'deposito_codice'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'deposito_descr'
        DataType = ftString
        Size = 50
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
        Name = 'NUM_ASS'
        DataType = ftString
        Size = 20
      end>
    Left = 6
    Top = 127
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
      EditMask = '!90/90/0000;1;_'
    end
    object rxmdPrimaNotaDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      EditMask = '!90/90/0000;1;_'
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
    object rxmdPrimaNotadeposito_codice: TStringField
      FieldName = 'deposito_codice'
      Size = 3
    end
    object rxmdPrimaNotadeposito_descr: TStringField
      FieldName = 'deposito_descr'
      Size = 50
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
      EditMask = '!90/90/0000;1;_'
    end
    object rxmdPrimaNotaTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
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
    object rxmdPrimaNotaNUM_ASS: TStringField
      FieldName = 'NUM_ASS'
    end
  end
  object dsDeposito: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 208
    Top = 123
  end
  object dsVisContab: TDataSource
    DataSet = dmodAz.ibqryContab2
    Left = 44
    Top = 228
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from  CONTABILITA'
      'where NUM_PROT=:N'
      'order by NUM_PROT')
    Left = 432
    Top = 119
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
    object IBQuery1NOME_CONTO: TIBStringField
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
    object IBQuery1NUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object IBQuery1NUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object IBQuery1NUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object IBQuery1NUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 208
    Top = 297
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_piano_conti')
    Left = 536
    Top = 185
    object IBQuery2ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Origin = '"TAB_PIANO_CONTI"."ID_PIANO_CONTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Origin = '"TAB_PIANO_CONTI"."GRUPPO"'
      Size = 2
    end
    object IBQuery2CONTO: TIBStringField
      FieldName = 'CONTO'
      Origin = '"TAB_PIANO_CONTI"."CONTO"'
      Size = 3
    end
    object IBQuery2SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Origin = '"TAB_PIANO_CONTI"."SOTTOCONTO"'
      Size = 5
    end
    object IBQuery2NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      Origin = '"TAB_PIANO_CONTI"."NOME_CONTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object IBQuery2TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_PIANO_CONTI"."TIPO"'
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PIANO_CONTI"."DESCR"'
      Size = 50
    end
    object IBQuery2NATURA: TSmallintField
      FieldName = 'NATURA'
      Origin = '"TAB_PIANO_CONTI"."NATURA"'
    end
    object IBQuery2LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
      Origin = '"TAB_PIANO_CONTI"."LIVELLO"'
    end
    object IBQuery2RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
      Origin = '"TAB_PIANO_CONTI"."RIVENDITA"'
    end
    object IBQuery2STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
      Origin = '"TAB_PIANO_CONTI"."STRUMENTALE"'
    end
    object IBQuery2INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
      Origin = '"TAB_PIANO_CONTI"."INDEDUCIBILE"'
    end
    object IBQuery2STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
      Origin = '"TAB_PIANO_CONTI"."STAMPA_IN_BILANCIO"'
    end
    object IBQuery2VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
      Origin = '"TAB_PIANO_CONTI"."VARIAZIONE_FISCALE"'
    end
    object IBQuery2DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Origin = '"TAB_PIANO_CONTI"."DICH_REDDITI_ID"'
      Size = 4
    end
    object IBQuery2RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_PIANO_CONTI"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object IBQuery2CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
      Origin = '"TAB_PIANO_CONTI"."CONTO_PERSONALIZZATO_ID"'
    end
    object IBQuery2CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
      Origin = '"TAB_PIANO_CONTI"."CAPO_CONTO_CLI_FOR"'
    end
    object IBQuery2SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
      Origin = '"TAB_PIANO_CONTI"."SPECIALE"'
    end
  end
  object ibqSaldo: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select PIANOCONTO_ID,(sum(dare)-sum(AVERE)) as SALDO from contab' +
        'ilita'
      'where PIANOCONTO_ID=:PCON'
      'group by PIANOCONTO_ID')
    Left = 344
    Top = 185
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
  object DataSource1: TDataSource
    DataSet = ibqSaldo
    Left = 384
    Top = 185
  end
end
