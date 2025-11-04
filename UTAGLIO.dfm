object fTaglio: TfTaglio
  Left = 191
  Top = 99
  Width = 881
  Height = 590
  Caption = 'Taglio'
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
    Width = 873
    Height = 521
    Align = alClient
    BevelOuter = bvLowered
    Color = 16763541
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
      Left = 2
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
      Left = 218
      Top = 296
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
      Left = 206
      Top = 280
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
      Left = 777
      Top = 274
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
      Left = 792
      Top = 298
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
      Left = 658
      Top = 146
      Width = 60
      Height = 14
      Caption = 'Da Tagliare'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 652
      Top = 106
      Width = 73
      Height = 14
      Caption = 'Numero Pret.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 216
      Top = 264
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
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      DataSource = dstaglio
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
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnExit = dbeNumeroExit
      OnKeyPress = dbeNumeroKeyPress
    end
    object dbeTotale: TDBEdit
      Left = 660
      Top = 18
      Width = 53
      Height = 19
      AutoSize = False
      DataField = 'TOTALE'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = dbeTotaleExit
      OnKeyPress = dbeTotaleKeyPress
    end
    object dbdteData: TDBDateEdit
      Left = 488
      Top = 18
      Width = 87
      Height = 19
      DataField = 'DATA'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
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
      DataSource = dstaglio
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
      DataSource = dstaglio
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
      DataSource = dstaglio
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
      Left = 769
      Top = 483
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
      Left = 252
      Top = 317
      Width = 437
      Height = 173
      Color = 13041663
      ColCount = 10
      Ctl3D = True
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
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
      Left = 252
      Top = 259
      Width = 437
      Height = 58
      Color = clBlack
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
      Left = 2
      Top = 317
      Width = 247
      Height = 173
      Color = clBlack
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
      Left = 252
      Top = 491
      Width = 437
      Height = 21
      Color = 16579791
      ColCount = 10
      DefaultColWidth = 42
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object sgTotalePerColori: TStringGrid
      Left = 700
      Top = 317
      Width = 61
      Height = 173
      Color = 16579791
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
      Left = 700
      Top = 493
      Width = 61
      Height = 19
      AutoSize = False
      DataField = 'QTA_TOTALE'
      DataSource = dstaglio
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
      DataSource = dstaglio
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
      Left = 4
      Top = 80
      Width = 644
      Height = 149
      Color = 14148607
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
          Color = 12582911
          Expanded = False
          FieldName = 'COLORE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA01'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA02'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA03'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA04'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA05'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA06'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA07'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA08'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA09'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          Color = 12582911
          Expanded = False
          FieldName = 'TAGLIA10'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
      Left = 692
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
      Hint = 'Calcola Quantit'#224
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 820
      Top = 272
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
      Left = 820
      Top = 296
      Width = 39
      Height = 19
      AutoSize = False
      DataField = 'SCAT'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object DBEdit1: TDBEdit
      Left = 768
      Top = 317
      Width = 21
      Height = 19
      AutoSize = False
      DataField = 'PASSATA'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object DBEdit2: TDBEdit
      Left = 662
      Top = 162
      Width = 52
      Height = 19
      AutoSize = False
      DataField = 'DATAGLIARE'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object DBEdit3: TDBEdit
      Left = 661
      Top = 122
      Width = 54
      Height = 19
      AutoSize = False
      DataField = 'NUMPRE'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object Button3: TButton
      Left = 717
      Top = 122
      Width = 17
      Height = 22
      Cursor = crHandPoint
      Hint = 'Cerca Scheda Pretaglio'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
      OnClick = Button3Click
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 804
      Top = 312
      Width = 57
      Height = 57
      Caption = 'Passata'
      DataField = 'PASSATA'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'No'
        'Si')
      ParentFont = False
      TabOrder = 26
      Values.Strings = (
        'N'
        'S')
    end
    object DBEdit4: TDBEdit
      Left = 796
      Top = 456
      Width = 33
      Height = 21
      DataField = 'PK_DIST'
      DataSource = dstaglio
      TabOrder = 27
      Visible = False
    end
    object dbeDescrPerDocum: TDBMemo
      Left = 2
      Top = 230
      Width = 736
      Height = 28
      DataField = 'NOTE'
      DataSource = dstaglio
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
    end
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 521
    Width = 873
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
      Left = 472
      Top = 6
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
      Left = 564
      Top = 6
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
      Left = 5
      Top = 6
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
      Left = 241
      Top = 6
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
      Left = 86
      Top = 6
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
      Left = 164
      Top = 6
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
      Left = 318
      Top = 6
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
      Left = 395
      Top = 6
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
  object dstaglio: TDataSource
    DataSet = dmodAz.ibqryTaglio
    OnDataChange = dstaglioDataChange
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
      'from taglio')
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
    Left = 664
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CA'
        ParamType = ptUnknown
      end>
    object IBQuery2TAGLIA: TFloatField
      FieldName = 'TAGLIA'
      Origin = '"TAGLIA"."TAGLIA"'
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAGLIA"."DESCR"'
    end
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAGLIA"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAGLIA"."PK_CODICE"'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery2
    Left = 656
    Top = 208
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from ASSORTIMENTO'
      'where CODICE_ARTICOLO=:CA')
    Left = 688
    Top = 216
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
  object dsPre: TDataSource
    DataSet = dmodAz.ibqryPretaglio
    Left = 656
    Top = 304
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from taglio'
      'where numero=:a')
    Left = 480
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
  end
end
