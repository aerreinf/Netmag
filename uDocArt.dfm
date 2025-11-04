inherited fDocArt: TfDocArt
  Left = 204
  Top = 199
  Caption = 'Inserimento Articoli'
  ClientHeight = 328
  ClientWidth = 651
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Top = 29
    Width = 651
    Height = 280
    object laCodice: TLabel
      Left = 3
      Top = 7
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 6
      Top = 25
      Width = 35
      Height = 14
      Caption = 'Descr.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laNostroDeposito: TLabel
      Left = 394
      Top = 49
      Width = 24
      Height = 14
      Caption = 'Dep.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laQtaCons: TLabel
      Left = 462
      Top = 67
      Width = 54
      Height = 14
      Caption = 'Q.t'#224' cons.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laImporto: TLabel
      Left = 115
      Top = 101
      Width = 44
      Height = 14
      Caption = 'Importo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzoUnitario: TLabel
      Left = 3
      Top = 101
      Width = 83
      Height = 14
      Caption = 'Prezzo unitario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laSc1: TLabel
      Left = 234
      Top = 101
      Width = 37
      Height = 14
      Caption = 'Sc. 1 %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laSc2: TLabel
      Left = 279
      Top = 101
      Width = 37
      Height = 14
      Caption = 'Sc. 2 %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laScMoneta: TLabel
      Left = 371
      Top = 101
      Width = 60
      Height = 14
      Caption = 'Sc. Moneta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laImportoScontato: TLabel
      Left = 531
      Top = 101
      Width = 95
      Height = 14
      Caption = 'Importo Scontato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laIVAto: TLabel
      Left = 512
      Top = 165
      Width = 34
      Height = 14
      Caption = 'IVATO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laIVA: TLabel
      Left = 400
      Top = 165
      Width = 19
      Height = 14
      Caption = 'IVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laOrdFron: TLabel
      Left = 8
      Top = 244
      Width = 64
      Height = 14
      Caption = 'Ordini Forn.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laQtaMag: TLabel
      Left = 124
      Top = 244
      Width = 50
      Height = 14
      Caption = 'Q.t'#224' Mag.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laOrdCli: TLabel
      Left = 248
      Top = 244
      Width = 50
      Height = 14
      Caption = 'Ordin.Cli.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 392
      Top = 67
      Width = 41
      Height = 14
      Caption = 'Q.t'#224' UM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblContoAcqVend: TLabel
      Left = 400
      Top = 203
      Width = 69
      Height = 14
      Caption = 'Piano dei conti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblColli: TLabel
      Left = 536
      Top = 67
      Width = 45
      Height = 14
      Caption = 'Tot.Colli'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 67
      Width = 22
      Height = 14
      Caption = 'Var.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 456
      Top = 244
      Width = 71
      Height = 14
      Caption = 'Ultimo Costo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 552
      Top = 244
      Width = 70
      Height = 14
      Caption = 'Costo Medio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 597
      Top = 67
      Width = 43
      Height = 14
      Caption = 'Provv.%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 131
      Top = 134
      Width = 73
      Height = 14
      Caption = 'Vend. Impon.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 243
      Top = 134
      Width = 61
      Height = 14
      Caption = 'Vend. Ivato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 367
      Top = 7
      Width = 15
      Height = 14
      Caption = 'Tg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 439
      Top = 7
      Width = 31
      Height = 14
      Caption = 'Colore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 584
      Top = 7
      Width = 23
      Height = 14
      Caption = 'Ferr.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 435
      Top = 134
      Width = 41
      Height = 14
      Caption = 'Rimessa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 279
      Top = 7
      Width = 15
      Height = 14
      Caption = 'Sk.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 324
      Top = 101
      Width = 34
      Height = 14
      Caption = 'Sc.3 %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Tag = 10
      Left = 44
      Top = 7
      Width = 157
      Height = 16
      Hint = 'Doppio Click per ricercare un articolo per Codice'
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'CODICE_ARTICOLO'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnDblClick = dbeCodiceDblClick
      OnEnter = dbeCodiceEnter
      OnExit = dbeCodiceExit
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Tag = 10
      Left = 44
      Top = 24
      Width = 513
      Height = 16
      Hint = 'Doppio Click per ricercare un articolo per Descrizione'
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14674687
      DataField = 'DESCR'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnDblClick = dbeDescrDblClick
      OnExit = dbeDescrExit
      OnKeyPress = dbeDescrKeyPress
    end
    object LookNostrDepCod: TDBLookupComboBox
      Left = 421
      Top = 46
      Width = 53
      Height = 20
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'DEP'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoDepositi
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object LookNostrDepDescr: TDBLookupComboBox
      Left = 475
      Top = 46
      Width = 170
      Height = 20
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'DEP'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoDepositi
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object gbUM: TGroupBox
      Left = 120
      Top = 56
      Width = 269
      Height = 41
      Caption = 'Unita di misura'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      object laImballo: TLabel
        Left = 237
        Top = 7
        Width = 24
        Height = 14
        Caption = 'Imb.'
      end
      object laDescrUM: TLabel
        Left = 96
        Top = 7
        Width = 65
        Height = 14
        Caption = 'Descrizione'
      end
      object cbUM1: TRadioButton
        Left = 10
        Top = 21
        Width = 31
        Height = 17
        Caption = '&1'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = cbUM1Click
      end
      object cbUM2: TRadioButton
        Left = 39
        Top = 21
        Width = 31
        Height = 17
        Caption = '&2'
        TabOrder = 1
        OnClick = cbUM1Click
      end
      object cbUM3: TRadioButton
        Left = 67
        Top = 21
        Width = 31
        Height = 17
        Caption = '&3'
        TabOrder = 2
        TabStop = True
        OnClick = cbUM1Click
      end
      object LookUM: TRxDBLookupCombo
        Left = 96
        Top = 20
        Width = 137
        Height = 19
        DropDownCount = 15
        DataField = 'UNITA_MISURA'
        DataSource = dsoDet_Doc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoUM
        ParentFont = False
        TabOrder = 3
      end
      object edImballo: TDBEdit
        Left = 237
        Top = 23
        Width = 29
        Height = 16
        AutoSize = False
        DataField = 'FATTCONV'
        DataSource = dsoDet_Doc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = dbeQtaUMClick
        OnEnter = dbeQtaUMEnter
        OnExit = dbeQtaUMExit
        OnKeyPress = dbeQtaUMKeyPress
      end
    end
    object dbeQtaCons: TDBEdit
      Left = 462
      Top = 81
      Width = 71
      Height = 16
      TabStop = False
      AutoSize = False
      DataField = 'QUANTITA'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      OnChange = dbeQtaConsChange
    end
    object dbeImporto: TDBEdit
      Left = 312
      Top = 248
      Width = 34
      Height = 22
      DataField = 'IMPORTO'
      DataSource = dsoDet_Doc
      TabOrder = 16
      Visible = False
      OnChange = dbeImportoChange
      OnExit = dbeImportoChange
    end
    object dbePrezzoUnitario: TDBEdit
      Left = 532
      Top = 202
      Width = 111
      Height = 22
      DataField = 'COSTO'
      DataSource = dsoDet_Doc
      TabOrder = 15
      Visible = False
      OnChange = dbePrezzoUnitarioChange
      OnExit = dbePrezzoUnitarioChange
    end
    object dbeSconto1: TDBEdit
      Left = 234
      Top = 115
      Width = 40
      Height = 18
      AutoSize = False
      DataField = 'SCONTO1'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = dbeSconto1Exit
      OnExit = dbeSconto1Exit
      OnKeyPress = dbeSconto1KeyPress
    end
    object dbeSconto2: TDBEdit
      Left = 279
      Top = 115
      Width = 40
      Height = 18
      AutoSize = False
      DataField = 'SCONTO2'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = dbeSconto1Exit
      OnExit = dbeSconto1Exit
      OnKeyPress = dbeSconto2KeyPress
    end
    object dbeScontoMoneta: TDBEdit
      Left = 398
      Top = 248
      Width = 34
      Height = 20
      DataField = 'SCONTO_EQ'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Visible = False
      OnExit = dbeSconto1Exit
    end
    object dbeImportoScontato: TDBEdit
      Left = 352
      Top = 250
      Width = 44
      Height = 20
      TabStop = False
      DataField = 'IMPORTO_SCONTO'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Visible = False
      OnChange = dbeImportoScontatoChange
    end
    object edSta_PrezzoUn: TEdit
      Left = 12
      Top = 206
      Width = 111
      Height = 22
      TabStop = False
      Color = 13161162
      ReadOnly = True
      TabOrder = 20
      Visible = False
    end
    object edSta_Sc1: TEdit
      Left = 242
      Top = 206
      Width = 55
      Height = 22
      TabStop = False
      Color = 13161162
      ReadOnly = True
      TabOrder = 21
      Visible = False
    end
    object edSta_Sc2: TEdit
      Left = 300
      Top = 206
      Width = 55
      Height = 22
      TabStop = False
      Color = 13161162
      ReadOnly = True
      TabOrder = 22
      Visible = False
    end
    object edSta_ScMoneta: TEdit
      Left = 526
      Top = 142
      Width = 111
      Height = 22
      TabStop = False
      Color = 13161162
      ReadOnly = True
      TabOrder = 23
      Visible = False
    end
    object dbeNumRiga: TDBEdit
      Left = 610
      Top = 24
      Width = 38
      Height = 16
      Hint = 'Numero Riga'
      TabStop = False
      AutoSize = False
      Color = 8454143
      DataField = 'NUM_RIGA_ID'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object dbeIvato: TDBEdit
      Left = 512
      Top = 180
      Width = 123
      Height = 18
      AutoSize = False
      DataField = 'importo_con_iva'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object bbImpSconRefresh: TBitBtn
      Left = 488
      Top = 114
      Width = 25
      Height = 21
      Caption = '-->'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      TabStop = False
      Visible = False
      OnClick = bbImpSconRefreshClick
    end
    object dbeQtaUM: TDBEdit
      Left = 392
      Top = 81
      Width = 67
      Height = 16
      AutoSize = False
      DataField = 'QTA_UM'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = dbeQtaUMClick
      OnEnter = dbeQtaUMEnter
      OnExit = dbeQtaUMExit
      OnKeyPress = dbeQtaUMKeyPress
    end
    object bbrefreshImpo: TBitBtn
      Left = 464
      Top = 152
      Width = 31
      Height = 21
      Caption = '->'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      TabStop = False
      Visible = False
      OnClick = bbrefreshImpoClick
    end
    object bbIvatoReftresh: TBitBtn
      Left = 392
      Top = 261
      Width = 17
      Height = 13
      Caption = '->'
      Enabled = False
      TabOrder = 26
      TabStop = False
      Visible = False
      OnClick = bbIvatoReftreshClick
    end
    object rxdblcPianoConto: TRxDBLookupCombo
      Left = 395
      Top = 225
      Width = 254
      Height = 19
      Cursor = crHandPoint
      DropDownCount = 10
      DataField = 'PIANOCONTO_ID'
      DataSource = dsoDet_Doc
      EmptyItemColor = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'DESCR'
      LookupSource = dsPianoConto
      ParentFont = False
      TabOrder = 27
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 480
      Top = 201
      Width = 169
      Height = 19
      Cursor = crHandPoint
      DropDownCount = 10
      Color = clWhite
      DataField = 'PIANOCONTO_ID'
      DataSource = dsoDet_Doc
      EmptyItemColor = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'NOME_CONTO'
      LookupSource = dsPianoConto
      ParentFont = False
      TabOrder = 28
    end
    object dbeTotColli: TDBEdit
      Left = 536
      Top = 81
      Width = 45
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'TOTCOLLI'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object Button1: TButton
      Left = 40
      Top = 66
      Width = 64
      Height = 15
      Caption = 'Prev. Prod.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Tag = 10
      Left = 8
      Top = 82
      Width = 103
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'COL'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      OnDblClick = dbeCodiceDblClick
      OnExit = dbeCodiceExit
      OnKeyPress = dbeCodiceKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 166
      Width = 381
      Height = 79
      BorderStyle = bsNone
      Color = 14671839
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs]
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'COSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Costo'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SCONTO1'
          Title.Alignment = taCenter
          Title.Caption = 'Sc1%'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SCONTO2'
          Title.Alignment = taCenter
          Title.Caption = 'Sc2%'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SCONTO3'
          Title.Alignment = taCenter
          Title.Caption = 'Sc3%'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SCONTO_EQ'
          Title.Alignment = taCenter
          Title.Caption = 'Sc Mon.'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_DOC'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Color = 7443221
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 561
      Top = 24
      Width = 48
      Height = 16
      Cursor = crHandPoint
      Caption = '&Seriali'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 573
      Top = 142
      Width = 44
      Height = 16
      Caption = '....'
      TabOrder = 33
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 456
      Top = 257
      Width = 89
      Height = 19
      DataField = 'COSTO_ULTIMO'
      DataSource = dsoContArt
      ReadOnly = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 34
    end
    object RxDBCalcEdit2: TRxDBCalcEdit
      Left = 144
      Top = 217
      Width = 116
      Height = 19
      DataField = 'QTA_ORDINATO'
      DataSource = dsoContArt
      ReadOnly = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 35
      Visible = False
    end
    object RxDBCalcEdit3: TRxDBCalcEdit
      Left = 124
      Top = 257
      Width = 116
      Height = 19
      DataField = 'GIACENZA_ATTUALE'
      DataSource = dsoContArt
      ReadOnly = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 36
    end
    object RxDBCalcEdit4: TRxDBCalcEdit
      Left = 264
      Top = 217
      Width = 116
      Height = 19
      DataField = 'QTA_IMPEGNATO'
      DataSource = dsoContArt
      ReadOnly = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 37
      Visible = False
    end
    object RxDBCalcEdit5: TRxDBCalcEdit
      Left = 3
      Top = 115
      Width = 105
      Height = 19
      DataField = 'COSTO'
      DataSource = dsoDet_Doc
      DefaultParams = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnChange = dbePrezzoUnitarioChange
      OnExit = dbePrezzoUnitarioChange
      OnKeyPress = RxDBCalcEdit5KeyPress
    end
    object RxDBCalcEdit6: TRxDBCalcEdit
      Left = 115
      Top = 115
      Width = 110
      Height = 19
      DataField = 'IMPORTO'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
      OnChange = dbeImportoChange
      OnExit = dbeImportoChange
    end
    object RxDBCalcEdit7: TRxDBCalcEdit
      Left = 371
      Top = 115
      Width = 105
      Height = 19
      DataField = 'SCONTO_EQ'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
      OnChange = dbeSconto1Exit
      OnExit = dbeSconto1Exit
      OnKeyPress = RxDBCalcEdit7KeyPress
    end
    object RxDBCalcEdit8: TRxDBCalcEdit
      Left = 531
      Top = 115
      Width = 118
      Height = 19
      DataField = 'IMPORTO_SCONTO'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 38
      OnChange = dbeImportoScontatoChange
    end
    object RxDBCalcEdit9: TRxDBCalcEdit
      Left = 552
      Top = 257
      Width = 89
      Height = 19
      DataField = 'MEDIO_COSTO_ACQ'
      DataSource = dsoContArt
      ReadOnly = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 39
    end
    object LookIVA: TRxDBLookupCombo
      Left = 400
      Top = 179
      Width = 81
      Height = 19
      DropDownCount = 8
      DataField = 'CODICE_IVA_ID'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsoIVA
      ParentFont = False
      TabOrder = 40
      OnChange = LookIVAChange
    end
    object DBEdit2: TDBEdit
      Left = 600
      Top = 81
      Width = 37
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'PERC_PROVV'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
    end
    object RxCalcEdit1: TRxCalcEdit
      Left = 3
      Top = 136
      Width = 105
      Height = 19
      Hint = 'Immettere qui il prezzo Ivato da cui verr'#224' scorporata l'#39'IVA'
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 42
      OnExit = RxCalcEdit1Exit
    end
    object RxDBCalcEdit10: TRxDBCalcEdit
      Left = 131
      Top = 147
      Width = 110
      Height = 19
      DataField = 'COSTOINVALUTA'
      DataSource = dsoDet_Doc
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 43
      OnChange = dbeImportoChange
      OnExit = dbeImportoChange
    end
    object RxDBCalcEdit11: TRxDBCalcEdit
      Left = 243
      Top = 147
      Width = 110
      Height = 19
      DataField = 'IMPORTOINVALUTA'
      DataSource = dsoDet_Doc
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 44
      OnChange = dbeImportoChange
      OnExit = dbeImportoChange
    end
    object Agg_Check: TDBCheckBox
      Left = 202
      Top = 6
      Width = 79
      Height = 17
      Caption = 'Agg. Costo'
      DataField = 'OMAGGIO'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object RxCalcEdit2: TRxCalcEdit
      Left = 8
      Top = 257
      Width = 106
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 46
    end
    object RxCalcEdit3: TRxCalcEdit
      Left = 248
      Top = 257
      Width = 106
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 47
    end
    object DBEdit11: TDBEdit
      Tag = 10
      Left = 383
      Top = 6
      Width = 53
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'A'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
    end
    object DBEdit9: TDBEdit
      Tag = 10
      Left = 471
      Top = 6
      Width = 107
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'B'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 49
    end
    object DBEdit10: TDBEdit
      Tag = 10
      Left = 608
      Top = 6
      Width = 40
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'C'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
    end
    object DBCheckBox1: TDBCheckBox
      Left = 5
      Top = 43
      Width = 97
      Height = 17
      Caption = 'Stampa Seriali'
      DataField = 'TIPO_RIGA'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 51
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object RxDBCalcEdit12: TRxDBCalcEdit
      Left = 355
      Top = 147
      Width = 78
      Height = 19
      DataField = 'COSTOINVALUTA'
      DataSource = dsoDet_Doc
      DefaultParams = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 52
      OnChange = dbePrezzoUnitarioChange
      OnExit = dbePrezzoUnitarioChange
      OnKeyPress = RxDBCalcEdit5KeyPress
    end
    object RxDBCalcEdit13: TRxDBCalcEdit
      Left = 435
      Top = 147
      Width = 78
      Height = 19
      DataField = 'OP_VAL_GIACENZA'
      DataSource = dsoDet_Doc
      DefaultParams = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 53
      OnChange = dbePrezzoUnitarioChange
      OnExit = dbePrezzoUnitarioChange
      OnKeyPress = RxDBCalcEdit5KeyPress
    end
    object DBEdit3: TDBEdit
      Tag = 10
      Left = 295
      Top = 6
      Width = 53
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'SCHEDA'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 54
      OnKeyPress = DBEdit3KeyPress
    end
    object dbeSconto3: TDBEdit
      Left = 324
      Top = 115
      Width = 40
      Height = 18
      AutoSize = False
      DataField = 'SCONTO3'
      DataSource = dsoDet_Doc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = dbeSconto1Exit
      OnExit = dbeSconto1Exit
      OnKeyPress = dbeSconto3KeyPress
    end
  end
  inherited tbarControl: TToolBar
    Width = 651
    Height = 29
    ButtonHeight = 27
    ButtonWidth = 29
    inherited sep1: TToolButton
      Left = 34
    end
    inherited tbtnNuovo: TToolButton
      Left = 42
    end
    inherited tbtnModifica: TToolButton
      Left = 71
    end
    inherited sep2: TToolButton
      Left = 100
    end
    inherited tbtnSalva: TToolButton
      Left = 108
    end
    inherited tbtnAnulla: TToolButton
      Left = 137
      Hint = 'Annulla'
    end
    inherited sep3: TToolButton
      Left = 166
    end
    inherited tbtnElimina: TToolButton
      Left = 174
      Visible = False
    end
    inherited sep4: TToolButton
      Left = 203
    end
    inherited tbtnPrev: TToolButton
      Left = 211
      Enabled = False
      Visible = False
    end
    inherited tbtnNext: TToolButton
      Left = 240
      Enabled = False
      Visible = False
    end
    inherited sep5: TToolButton
      Left = 269
      Visible = False
    end
    object tbtn_Articoli: TToolButton
      Left = 277
      Top = 0
      Cursor = crHandPoint
      Hint = 'Articoli Magazzino'
      ImageIndex = 50
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtn_ArticoliClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 309
    Width = 651
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'F2-Ricerca Articoli x Codice ; F3-Ricerca Art. x Descrizione'
        Width = 300
      end
      item
        Alignment = taCenter
        Text = 'F6-Annulla;F7-Salva;F8-Annulla'
        Width = 50
      end>
  end
  object dsoDet_Doc: TDataSource
    Tag = 1
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 28
    Top = 219
  end
  object dsoDepositi: TDataSource
    Tag = 1
    DataSet = dmodAz.IBQDepositi
    Left = 60
    Top = 217
  end
  object dsoUM: TDataSource
    DataSet = dmodAz.ibTab_Unita_di_Misura
    OnDataChange = dsoUMDataChange
    Left = 132
    Top = 219
  end
  object dsoArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 536
    Top = 234
  end
  object dsoIVA: TDataSource
    Tag = 1
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 166
    Top = 219
  end
  object dsoContArt: TDataSource
    DataSet = dmodAz.ibqCont_Art
    Left = 232
    Top = 224
  end
  object dsPianoConto: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 202
    Top = 223
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti')
    Left = 560
    Top = 2
  end
  object DataSource1: TDataSource
    DataSet = IBQuery3
    Left = 296
    Top = 213
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'SELECT  TAB_DET_DOC.COSTO,TAB_DET_DOC.SCONTO1,TAB_DET_DOC.SCONTO' +
        '2,TAB_DET_DOC.SCONTO3,'
      'TAB_DET_DOC.SCONTO_EQ,Tab_documenti.DATA_DOC from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'where TAB_DET_DOC.codice_articolo=:parcodart'
      'and TAB_DOCUMENTI.clifor_id=:parcliforid'
      'ORDER by TAB_DOCUMENTI.DATA_DOC DESCENDING')
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parcodart'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parcliforid'
        ParamType = ptUnknown
      end>
    object IBQuery3COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
      currency = True
    end
    object IBQuery3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object IBQuery3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object IBQuery3SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
      currency = True
    end
    object IBQuery3DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
    end
    object IBQuery3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'select * from tab_articoli'
      'where DESCR=:b')
    Left = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'b'
        ParamType = ptUnknown
      end>
    object IBQuery4CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery4DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBQuery4DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery4CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery4UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery4UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery4UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery4SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery4SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery4SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery4PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery4PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery4PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery4SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery4SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery4LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery4GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery4QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery4ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery4DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery4PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBQuery4COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery4TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery4FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery4FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery4COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery4RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery4GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery4ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery4RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery4RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery4RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery4RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery4STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery4GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery4PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery4CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery4CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery4CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery4DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery4VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery4VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery4VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery4NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery4TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery4TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery4OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery4TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery4CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery4CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery4DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery4NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery4NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery4NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery4FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery4FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery4PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery4COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery4DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery4NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery4TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery4CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery4CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery4UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery4UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery4CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery4CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery4CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery4FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery4CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBQuery4FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery4DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery4SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery4PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery4P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery4P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery4P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery4P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery4SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery4SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery4SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery4SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery4SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery4SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery4SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery4SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery4SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery4SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery4SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery4SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery4R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery4R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery4R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery4R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery4IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery4IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery4IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery4IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery4RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery4P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery4IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery4STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery4CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery4CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery4AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery4CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery4CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery4AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery4CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery4CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery4AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery4CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery4CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery4AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery4CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery4CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery4AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery4CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery4CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery4AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery4ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery4CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery4CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery4CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery4CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery4CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery4CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 416
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
    object IBQuery2DESCR: TIBStringField
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
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object IBQuery5CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object IBQuery5CODICE_AGGIUNTIVO: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object IBQuery5QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBQuery5DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
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
      
        'where (tab_documenti.tipo_doc=22) and (tab_det_doc.codice_artico' +
        'lo=:codice) '
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 67
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        ParamType = ptUnknown
      end>
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
      'group by tab_documenti.clifor_id,tab_det_doc.codice_articolo')
    Left = 115
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
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
      
        'where (tab_documenti.tipo_doc=12) and (tab_det_doc.codice_artico' +
        'lo=:codice) '
      
        'group by tab_documenti.clifor_id,tab_cli_for.DENOMINAZIONE,tab_d' +
        'et_doc.codice_articolo,tab_Det_doc.descr')
    Left = 347
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        ParamType = ptUnknown
      end>
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
      'group by clifor_id,tab_det_doc.codice_articolo')
    Left = 379
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_Articolo'
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
  object ibqOfferte: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_offerte'
      'where ID_OFFERTA=:idOff')
    Left = 504
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idOff'
        ParamType = ptUnknown
      end>
    object ibqOfferteDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_OFFERTE"."DESCR"'
      Size = 50
    end
    object ibqOfferteTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = '"TAB_OFFERTE"."TIPO"'
    end
    object ibqOfferteDATAINIZIO: TDateTimeField
      FieldName = 'DATAINIZIO'
      Origin = '"TAB_OFFERTE"."DATAINIZIO"'
    end
    object ibqOfferteDATAFINE: TDateTimeField
      FieldName = 'DATAFINE'
      Origin = '"TAB_OFFERTE"."DATAFINE"'
    end
    object ibqOfferteNUMPEZZI: TFloatField
      FieldName = 'NUMPEZZI'
      Origin = '"TAB_OFFERTE"."NUMPEZZI"'
    end
    object ibqOffertePREZZOUNITARIO: TFloatField
      FieldName = 'PREZZOUNITARIO'
      Origin = '"TAB_OFFERTE"."PREZZOUNITARIO"'
    end
    object ibqOffertePREZZOCONF: TFloatField
      FieldName = 'PREZZOCONF'
      Origin = '"TAB_OFFERTE"."PREZZOCONF"'
    end
    object ibqOfferteSCONTOPERC: TIntegerField
      FieldName = 'SCONTOPERC'
      Origin = '"TAB_OFFERTE"."SCONTOPERC"'
    end
    object ibqOfferteAZIONE: TIBStringField
      FieldName = 'AZIONE'
      Origin = '"TAB_OFFERTE"."AZIONE"'
      Size = 2
    end
    object ibqOfferteGIORNISETT: TIntegerField
      FieldName = 'GIORNISETT'
      Origin = '"TAB_OFFERTE"."GIORNISETT"'
    end
    object ibqOfferteID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_OFFERTE"."ID_OFFERTA"'
      Required = True
    end
  end
end
