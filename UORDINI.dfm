inherited fOrdini: TfOrdini
  Left = 175
  Top = 134
  Caption = 'Ordini'
  ClientHeight = 539
  ClientWidth = 764
  Constraints.MinHeight = 432
  Constraints.MinWidth = 732
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 764
    Height = 296
    Align = alTop
    Font.Style = []
    object laNOrd: TLabel
      Left = 101
      Top = 0
      Width = 37
      Height = 14
      Caption = 'N'#176' Ord.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laData: TLabel
      Left = 269
      Top = 0
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
    object laProt: TLabel
      Left = 193
      Top = 0
      Width = 26
      Height = 14
      Caption = 'Prot.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPagam: TLabel
      Left = 15
      Top = 158
      Width = 23
      Height = 14
      Caption = 'Pag.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laBanca: TLabel
      Left = 6
      Top = 180
      Width = 32
      Height = 14
      Caption = 'Banca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laMezzoSped: TLabel
      Left = 2
      Top = 203
      Width = 36
      Height = 14
      Caption = 'Mezzo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPorto: TLabel
      Left = 490
      Top = 158
      Width = 30
      Height = 14
      Caption = 'Porto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDataSped: TLabel
      Left = 7
      Top = 137
      Width = 31
      Height = 14
      Caption = 'Sped.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 627
      Top = 275
      Width = 49
      Height = 14
      Caption = 'Tot.Provv.'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 275
      Width = 35
      Height = 14
      Caption = 'Qta tot.'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 260
      Top = 275
      Width = 34
      Height = 14
      Caption = 'Tot.Sc.'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 378
      Top = 275
      Width = 18
      Height = 14
      Caption = 'Tot.'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object laNote: TLabel
      Left = 13
      Top = 225
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
    object Label10: TLabel
      Left = 129
      Top = 275
      Width = 42
      Height = 14
      Caption = 'Tot.lordo'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 1
      Top = 32
      Width = 367
      Height = 100
    end
    object Bevel2: TBevel
      Left = 380
      Top = 32
      Width = 381
      Height = 100
    end
    object Label4: TLabel
      Left = 402
      Top = 203
      Width = 28
      Height = 14
      Caption = 'Dest.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laProvv: TLabel
      Left = 620
      Top = 137
      Width = 28
      Height = 14
      Caption = 'Prov.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 482
      Top = 275
      Width = 23
      Height = 14
      Caption = 'Acc.'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object laSconti: TLabel
      Left = 504
      Top = 137
      Width = 16
      Height = 14
      Caption = 'Sc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 251
      Width = 18
      Height = 14
      Caption = 'Ag.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 540
      Top = 251
      Width = 17
      Height = 14
      Caption = 'Ca.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 228
      Top = 251
      Width = 18
      Height = 14
      Caption = 'Cg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 451
      Top = 251
      Width = 23
      Height = 14
      Caption = 'RCG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laForn: TLabel
      Left = 383
      Top = 38
      Width = 51
      Height = 14
      Caption = 'Fornitore'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object laCli: TLabel
      Left = 5
      Top = 38
      Width = 39
      Height = 14
      Caption = 'Cliente'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbeNumOrd: TDBEdit
      Left = 101
      Top = 12
      Width = 67
      Height = 19
      AutoSize = False
      Color = clWhite
      DataField = 'NUMERO'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dbeProt: TDBEdit
      Left = 193
      Top = 12
      Width = 73
      Height = 19
      AutoSize = False
      DataField = 'PROT'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object dbeTot_Provv: TDBEdit
      Left = 686
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'TOTALE_PROVV'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
    object dbeTot_Qta: TDBEdit
      Left = 51
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'TOTALE_QTA'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
    end
    object dbeTot_Scont: TDBEdit
      Left = 301
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'TOTALE_SCONTO'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
    end
    object dbeTotale: TDBEdit
      Left = 401
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'TOTALE'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
    end
    object dbmNote: TDBMemo
      Left = 43
      Top = 223
      Width = 619
      Height = 19
      DataField = 'NOTE'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
    end
    object dbeForn: TDBEdit
      Left = 444
      Top = 36
      Width = 290
      Height = 19
      AutoSize = False
      DataField = 'FOR_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbeCli: TDBEdit
      Left = 54
      Top = 36
      Width = 290
      Height = 19
      AutoSize = False
      DataField = 'CLI_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object bbForn: TButton
      Left = 737
      Top = 37
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Scegli il Fornitore'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbFornClick
    end
    object bbCli: TButton
      Left = 346
      Top = 37
      Width = 19
      Height = 20
      Cursor = crHandPoint
      Hint = 'Scegli il cliente'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = bbCliClick
    end
    object bbNumOrd: TBitBtn
      Left = 169
      Top = 12
      Width = 21
      Height = 19
      Caption = '...'
      TabOrder = 5
      OnClick = bbNumOrdClick
    end
    object dbeBanca: TDBEdit
      Left = 43
      Top = 177
      Width = 321
      Height = 20
      DataField = 'BANCA_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object bBanca: TButton
      Left = 372
      Top = 178
      Width = 21
      Height = 19
      Caption = '...'
      TabOrder = 23
      OnClick = bBancaClick
    end
    object dbePagam: TDBEdit
      Left = 43
      Top = 155
      Width = 321
      Height = 20
      DataField = 'PAGAM_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object bPagam: TButton
      Left = 372
      Top = 156
      Width = 21
      Height = 19
      Caption = '...'
      TabOrder = 21
      OnClick = bPagamClick
    end
    object dbeSped: TDBEdit
      Left = 43
      Top = 200
      Width = 321
      Height = 20
      DataField = 'SPEDIZ_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object bSped: TButton
      Left = 372
      Top = 201
      Width = 21
      Height = 19
      Caption = '...'
      TabOrder = 25
      OnClick = bSpedClick
    end
    object dbePorto: TDBEdit
      Left = 523
      Top = 155
      Width = 213
      Height = 20
      DataField = 'PORTO_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object bPorto: TButton
      Left = 740
      Top = 156
      Width = 21
      Height = 19
      Caption = '...'
      TabOrder = 28
      OnClick = bPortoClick
    end
    object dbeFor_PIVA: TDBEdit
      Left = 634
      Top = 56
      Width = 121
      Height = 19
      AutoSize = False
      DataField = 'FOR_PIVA'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object dbecli_Ind: TDBEdit
      Left = 4
      Top = 56
      Width = 215
      Height = 19
      AutoSize = False
      DataField = 'CLI_IND'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object dbeFor_Ind: TDBEdit
      Left = 383
      Top = 56
      Width = 243
      Height = 19
      AutoSize = False
      DataField = 'FOR_IND'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object dbecli_piva: TDBEdit
      Left = 222
      Top = 56
      Width = 121
      Height = 19
      AutoSize = False
      DataField = 'CLI_PIVA'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object dbeFor_Tel: TDBEdit
      Left = 383
      Top = 96
      Width = 109
      Height = 19
      AutoSize = False
      DataField = 'FOR_TEL'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbeCli_Tel: TDBEdit
      Left = 4
      Top = 96
      Width = 85
      Height = 19
      AutoSize = False
      DataField = 'CLI_TEL'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object dbeTot_lordo: TDBEdit
      Left = 182
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'TOTALE_LORDO'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
    end
    object dbeFor_Ind2: TDBEdit
      Left = 383
      Top = 76
      Width = 371
      Height = 19
      AutoSize = False
      DataField = 'FOR_IND2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object dbeCli_Ind2: TDBEdit
      Left = 4
      Top = 76
      Width = 339
      Height = 19
      AutoSize = False
      DataField = 'CLI_IND2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object dbeDataSpedText: TDBEdit
      Left = 157
      Top = 134
      Width = 207
      Height = 20
      DataField = 'DATA_SPEDIZIONE_TEXT'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object dbeForTel2: TDBEdit
      Left = 517
      Top = 96
      Width = 102
      Height = 19
      AutoSize = False
      DataField = 'FOR_TEL2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbeForFax2: TDBEdit
      Left = 633
      Top = 96
      Width = 121
      Height = 19
      AutoSize = False
      DataField = 'FOR_FAX2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object dbeCliTel2: TDBEdit
      Left = 90
      Top = 96
      Width = 85
      Height = 19
      AutoSize = False
      DataField = 'CLI_TEL2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object dbeCliFax2: TDBEdit
      Left = 176
      Top = 96
      Width = 85
      Height = 19
      AutoSize = False
      DataField = 'CLI_FAX2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object DBDateEdit1: TDBDateEdit
      Left = 43
      Top = 135
      Width = 113
      Height = 19
      DataField = 'DATA_SPEDIZIONE'
      DataSource = dsoOrd
      DefaultToday = True
      DialogTitle = 'Seleziona una data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 35
    end
    object DBEdit1: TDBEdit
      Left = 440
      Top = 200
      Width = 321
      Height = 20
      DataField = 'DESTINAZIONE'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
    end
    object DBECabAbi: TDBEdit
      Left = 440
      Top = 177
      Width = 321
      Height = 20
      DataField = 'CABABI'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 37
    end
    object DBDateEdit2: TDBDateEdit
      Left = 269
      Top = 12
      Width = 92
      Height = 19
      DataField = 'DATA'
      DataSource = dsoOrd
      DefaultToday = True
      DialogTitle = 'Seleziona una data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object dbeProvv1: TDBEdit
      Left = 649
      Top = 134
      Width = 39
      Height = 20
      DataField = 'PROVV1'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 38
    end
    object dbeProvv2: TDBEdit
      Left = 690
      Top = 134
      Width = 71
      Height = 20
      DataField = 'PROVV_MON'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 39
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 624
      Top = 0
      Width = 137
      Height = 31
      Caption = 'Stato Ordine'
      Columns = 4
      DataField = 'SNRP'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'S'
        'N'
        'R'
        'P')
      ParentFont = False
      TabOrder = 40
      Values.Strings = (
        'S'
        'N'
        'R'
        'P')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 4
      Top = 0
      Width = 93
      Height = 31
      Caption = 'Tipo'
      Columns = 2
      DataField = 'TIPO'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Ord.'
        'Prev.')
      ParentFont = False
      TabOrder = 41
      Values.Strings = (
        'ORD'
        'PRE')
    end
    object DBEdit2: TDBEdit
      Left = 508
      Top = 273
      Width = 75
      Height = 19
      AutoSize = False
      Color = 11075583
      DataField = 'ACCONTO'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 24
      Top = 249
      Width = 60
      Height = 19
      DropDownCount = 8
      DataField = 'AGENTE_ID'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 43
      OnChange = RxDBLookupCombo5Change
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 87
      Top = 249
      Width = 138
      Height = 19
      DropDownCount = 8
      DataField = 'AGENTE_NOM'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 44
      OnChange = RxDBLookupCombo6Change
    end
    object dbeSconto1: TDBEdit
      Left = 523
      Top = 134
      Width = 39
      Height = 20
      DataField = 'SCONTO1'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
    end
    object dbeSconto2: TDBEdit
      Left = 566
      Top = 134
      Width = 39
      Height = 20
      DataField = 'SCONTO2'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 46
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 560
      Top = 249
      Width = 60
      Height = 19
      DropDownCount = 8
      DataField = 'CA'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 47
      OnChange = RxDBLookupCombo2Change
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 623
      Top = 249
      Width = 138
      Height = 21
      DropDownCount = 8
      DataField = 'CA_DESCR'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 48
      OnChange = RxDBLookupCombo3Change
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 249
      Top = 249
      Width = 60
      Height = 19
      DropDownCount = 8
      DataField = 'CG'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 49
      OnChange = RxDBLookupCombo4Change
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 311
      Top = 249
      Width = 138
      Height = 19
      DropDownCount = 8
      DataField = 'CG_DESCR'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ListStyle = lsDelimited
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 50
      OnChange = RxDBLookupCombo7Change
    end
    object Button1: TButton
      Left = 686
      Top = 222
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ricalcola'
      TabOrder = 51
      OnClick = Button1Click
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 440
      Top = 0
      Width = 183
      Height = 31
      Caption = 'Acquisizione'
      Columns = 6
      DataField = 'ACQ'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F')
      ParentFont = False
      TabOrder = 52
      Values.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
      OnChange = DBRadioGroup3Change
    end
    object RxDBLookupCombo8: TRxDBLookupCombo
      Left = 478
      Top = 249
      Width = 60
      Height = 19
      DropDownCount = 8
      DataField = 'CR'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource4
      ParentFont = False
      TabOrder = 53
    end
    object DBEdit3: TDBEdit
      Left = 264
      Top = 96
      Width = 101
      Height = 19
      Hint = 'E-mail cliente'
      AutoSize = False
      DataField = 'EMAIL_CLI'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 54
    end
    object DBEdit4: TDBEdit
      Left = 5
      Top = 116
      Width = 255
      Height = 15
      Hint = 'E-mail cliente'
      AutoSize = False
      DataField = 'SITO_CLI'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 55
    end
    object DBEdit5: TDBEdit
      Left = 383
      Top = 116
      Width = 255
      Height = 15
      Hint = 'E-mail cliente'
      AutoSize = False
      DataField = 'SITO_FOR'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 56
    end
    object DBEdit6: TDBEdit
      Left = 639
      Top = 116
      Width = 114
      Height = 15
      Hint = 'E-mail cliente'
      AutoSize = False
      DataField = 'EMAIL_FOR'
      DataSource = dsoOrd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 57
    end
  end
  inherited tbarControl: TToolBar
    Width = 764
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      Hint = 'Primo'
      ImageIndex = 8
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      Hint = 'Precedente'
      Caption = 'Precedente'
      ImageIndex = 9
      OnClick = ToolButton10Click
    end
    object ToolButton10: TToolButton
      Left = 245
      Top = 0
      Cursor = crHandPoint
      Hint = 'Successivo'
      Caption = 'ToolButton10'
      ImageIndex = 10
      OnClick = tbtnNextClick
    end
    object ToolButton9: TToolButton
      Left = 270
      Top = 0
      Cursor = crHandPoint
      Hint = 'Ultimo'
      Caption = 'ToolButton9'
      ImageIndex = 11
      OnClick = ToolButton9Click
    end
    object ToolButton7: TToolButton
      Left = 295
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 25
      Style = tbsSeparator
    end
    object tbtnPrn: TToolButton
      Left = 303
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Ordine.'
      ImageIndex = 25
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      OnClick = tbtnPrnClick
    end
    object sep7: TToolButton
      Left = 328
      Top = 0
      Width = 8
      Caption = 'sep7'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object tbtnNumOrd: TToolButton
      Left = 336
      Top = 0
      Cursor = crHandPoint
      Hint = 'Numeri'
      Caption = 'tbtnNumOrd'
      ImageIndex = 19
      OnClick = tbtnNumOrdClick
    end
    object ToolButton1: TToolButton
      Left = 361
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 20
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 369
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Conferma'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 394
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 402
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Preventivo'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton8: TToolButton
      Left = 427
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 25
      Style = tbsSeparator
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 435
      Top = 0
      Width = 145
      Height = 25
      DropDownCount = 8
      DisplayAllFields = True
      LookupField = 'NUMERO'
      LookupDisplay = 'NUMERO'
      LookupSource = dsoOrd
      TabOrder = 0
      OnCloseUp = RxDBLookupCombo1CloseUp
    end
  end
  object paDet: TPanel
    Left = 0
    Top = 323
    Width = 764
    Height = 216
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 2
    object tbarDet: TToolBar
      Left = 1
      Top = 1
      Width = 762
      Height = 23
      AutoSize = True
      ButtonWidth = 90
      Caption = 'tbarDet'
      Color = 13106939
      EdgeBorders = [ebBottom]
      EdgeInner = esNone
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      object sep11: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sep11'
        Style = tbsSeparator
      end
      object tbtnNuovo_Det: TToolButton
        Left = 8
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Nuovo'
        ImageIndex = 1
        OnClick = tbtnNuovo_DetClick
      end
      object sep13: TToolButton
        Left = 53
        Top = 0
        Width = 8
        Caption = 'sep13'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tbtnMod_Det: TToolButton
        Left = 61
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Modifica'
        ImageIndex = 2
        OnClick = tbtnMod_DetClick
      end
      object sep12: TToolButton
        Left = 118
        Top = 0
        Width = 8
        Caption = 'sep12'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tbtnDel_Det: TToolButton
        Left = 126
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Elimina'
        ImageIndex = 3
        OnClick = tbtnDel_DetClick
      end
      object ToolButton5: TToolButton
        Left = 176
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 184
        Top = 0
        Cursor = crHandPoint
        Caption = 'Aggiorna Totali'
        Enabled = False
        ImageIndex = 4
        OnClick = ToolButton6Click
      end
    end
    object dbgOrd_Det: TDBGrid
      Left = 1
      Top = 24
      Width = 762
      Height = 191
      Align = alClient
      BorderStyle = bsNone
      Color = 13434879
      Ctl3D = False
      DataSource = dsoOrd_Det
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'DigitSmall'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODICE_ART'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Cod.Art.'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descrizione'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 283
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO_UNITA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Prezzo'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Q.t'#224
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO_TOT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Totale'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SCONTO1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Sc.1'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SCONTO2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Sc.2'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO_SCONTATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Scontato'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Provv'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Agente'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAPO_GRUPPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAPO_AREA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object dsoOrd: TDataSource
    DataSet = dmodAz.ibqOrdini
    Left = 78
    Top = 423
  end
  object dsoOrd_Det: TDataSource
    DataSet = dmodAz.ibqOrd_Det
    Left = 232
    Top = 410
  end
  object dsoForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 632
    Top = 87
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 668
    Top = 4
  end
  object dsoPagam: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 540
    Top = 388
  end
  object dsoBanca: TDataSource
    DataSet = dmodAz.ibTab_Banche
    Left = 592
    Top = 376
  end
  object dsoSped: TDataSource
    DataSet = dmodAz.ibqTab_Spedizione
    Left = 722
    Top = 10
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 266
    Top = 162
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 464
    Top = 402
  end
  object dso_r_Cli_For: TDataSource
    DataSet = dmodAz.r_qCliForn
    Left = 450
    Top = 137
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 0'
      'order by descr')
    Left = 96
    Top = 225
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
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2'
      'order by descr')
    Left = 624
    Top = 217
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
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 1'
      'order by descr')
    Left = 296
    Top = 217
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
    Left = 328
    Top = 153
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 696
    Top = 185
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 136
    Top = 217
  end
  object IBTable1: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    OnPostError = IBTable1PostError
    TableName = 'NUM_ORDINI'
    Left = 304
    Top = 131
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    UpdateObject = IBUpdateSQL1
    Left = 393
    Top = 346
  end
  object IBUpdateSQL1: TIBUpdateSQL
    Left = 425
    Top = 346
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 3'
      'order by descr')
    Left = 456
    Top = 225
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
  object DataSource4: TDataSource
    DataSet = IBQuery5
    Left = 520
    Top = 233
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 145
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object ibRicercaCab: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_cab '
      'where pk_codice=:pk')
    Left = 320
    Top = 443
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pk'
        ParamType = ptUnknown
      end>
    object ibRicercaCabABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CAB"."ABI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object ibRicercaCabINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CAB"."INDIRIZZO"'
      Size = 100
    end
    object ibRicercaCabLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CAB"."LOCALITA"'
      Size = 50
    end
    object ibRicercaCabCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CAB"."COMUNE_ID"'
    end
    object ibRicercaCabPROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
      Origin = '"TAB_CAB"."PROVINCIA_ID"'
    end
    object ibRicercaCabCAP_ID: TIBStringField
      FieldName = 'CAP_ID'
      Origin = '"TAB_CAB"."CAP_ID"'
      Size = 5
    end
    object ibRicercaCabDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CAB"."DESCR"'
      Size = 50
    end
    object ibRicercaCabID_CAB: TIBStringField
      FieldName = 'ID_CAB'
      Origin = '"TAB_CAB"."ID_CAB"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object ibRicercaCabCOMUNE: TIBStringField
      FieldName = 'COMUNE'
      Origin = '"TAB_CAB"."COMUNE"'
      Size = 50
    end
    object ibRicercaCabPROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_CAB"."PROV"'
      Size = 5
    end
    object ibRicercaCabPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"TAB_CAB"."PK_CODICE"'
      Required = True
    end
  end
end
