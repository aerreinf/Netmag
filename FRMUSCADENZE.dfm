object frmScadenze: TfrmScadenze
  Left = 184
  Top = 184
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Scadenze'
  ClientHeight = 469
  ClientWidth = 726
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 734
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 123
    Width = 77
    Height = 13
    Caption = 'Importo Residuo'
    Visible = False
  end
  object pnlCtrlScadenze: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 119
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 15653740
    TabOrder = 0
    object cbPagamento: TCheckBox
      Left = 8
      Top = 8
      Width = 77
      Height = 17
      Caption = '&Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbPagamentoClick
    end
    object rxdblcPagam: TRxDBLookupCombo
      Left = 88
      Top = 6
      Width = 241
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsPagamento
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = rxdblcPagamExit
    end
    object gbCliForn: TGroupBox
      Left = 10
      Top = 30
      Width = 321
      Height = 83
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      object rbTutti: TRadioButton
        Left = 8
        Top = 12
        Width = 45
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbSoloCli: TRadioButton
        Left = 68
        Top = 12
        Width = 77
        Height = 17
        Caption = 'Solo Clienti'
        TabOrder = 1
        OnClick = rbSoloCliClick
      end
      object rbSoloForn: TRadioButton
        Left = 150
        Top = 12
        Width = 87
        Height = 17
        Caption = 'Solo Fornitori'
        TabOrder = 2
        OnClick = rbSoloFornClick
      end
      object rbCli: TRadioButton
        Left = 8
        Top = 32
        Width = 55
        Height = 17
        Caption = 'Cliente'
        TabOrder = 3
      end
      object rxdblcCliDescr: TRxDBLookupCombo
        Left = 252
        Top = 30
        Width = 30
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsCli
        TabOrder = 4
        Visible = False
      end
      object rxdblcCliID: TRxDBLookupCombo
        Left = 70
        Top = 30
        Width = 241
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsCli
        TabOrder = 5
      end
      object rbForn: TRadioButton
        Left = 8
        Top = 56
        Width = 61
        Height = 17
        Caption = 'Fornitore'
        TabOrder = 6
      end
      object rxdblcForID: TRxDBLookupCombo
        Left = 70
        Top = 54
        Width = 241
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsForn
        TabOrder = 7
      end
      object rxdblcForDescr: TRxDBLookupCombo
        Left = 246
        Top = 54
        Width = 30
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsForn
        TabOrder = 8
        Visible = False
      end
    end
    object bbEsci: TBitBtn
      Left = 640
      Top = 88
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = bbEsciClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbAggiorna: TBitBtn
      Left = 640
      Top = 5
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Aggiorna'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = bbAggiornaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbStampa: TBitBtn
      Left = 640
      Top = 33
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Stampa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 10
      OnClick = bbStampaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object rbTutteScad: TRadioButton
      Left = 338
      Top = 8
      Width = 53
      Height = 17
      Caption = 'Tutte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object rbNonPagScad: TRadioButton
      Left = 388
      Top = 8
      Width = 81
      Height = 17
      Caption = 'Non Pagate'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
    end
    object bbPassa: TBitBtn
      Left = 640
      Top = 60
      Width = 85
      Height = 21
      Cursor = crHandPoint
      Caption = '&Passa...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnClick = bbPassaClick
    end
    object gbDataDoc: TGroupBox
      Left = 334
      Top = 30
      Width = 135
      Height = 83
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnExit = gbDataDocExit
      object rxlblDataDocDa: TRxLabel
        Left = 10
        Top = 24
        Width = 15
        Height = 14
        Caption = 'Da'
        ShadowPos = spRightBottom
      end
      object rxlblDataDocA: TRxLabel
        Left = 12
        Top = 52
        Width = 10
        Height = 14
        Caption = 'A'
        ShadowPos = spRightBottom
      end
      object dtedtDataDocDa: TDateEdit
        Left = 32
        Top = 20
        Width = 89
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        Text = '01/01/2004'
      end
      object dtedtDataDocA: TDateEdit
        Left = 32
        Top = 48
        Width = 88
        Height = 21
        DefaultToday = True
        NumGlyphs = 2
        TabOrder = 1
        Text = '08/09/2004'
      end
    end
    object chbxDataDoc: TCheckBox
      Left = 342
      Top = 26
      Width = 99
      Height = 17
      Caption = 'Data documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = chbxDataDocClick
    end
    object gbDataScad: TGroupBox
      Left = 474
      Top = 30
      Width = 135
      Height = 83
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnExit = gbDataScadExit
      object rxlblDataScadDa: TRxLabel
        Left = 10
        Top = 24
        Width = 15
        Height = 14
        Caption = 'Da'
        ShadowPos = spRightBottom
      end
      object rxlblDataScadA: TRxLabel
        Left = 12
        Top = 52
        Width = 10
        Height = 14
        Caption = 'A'
        ShadowPos = spRightBottom
      end
      object dtedtDataScadDa: TDateEdit
        Left = 32
        Top = 20
        Width = 89
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        Text = '01/01/2004'
      end
      object dtedtDataScadA: TDateEdit
        Left = 32
        Top = 48
        Width = 88
        Height = 21
        DefaultToday = True
        NumGlyphs = 2
        TabOrder = 1
        Text = '08/09/2004'
      end
    end
    object chbxDataScad: TCheckBox
      Left = 482
      Top = 26
      Width = 93
      Height = 17
      Caption = 'Data scadenza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = chbxDataScadClick
    end
    object BitBtn1: TBitBtn
      Left = 532
      Top = 5
      Width = 101
      Height = 25
      Cursor = crHandPoint
      Caption = 'Crea File Ri.Ba.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
  end
  object dbgScadenze: TDBGrid
    Left = 0
    Top = 138
    Width = 726
    Height = 323
    Cursor = crHandPoint
    Hint = 'Destro click - menu, doppio click per passare la scadenza...'
    DataSource = dsRicerca
    FixedColor = 7835964
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = pmGrid
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgScadenzeDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' doc'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Doc.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR_TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C/F'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Denominazione'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 336
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Importo   '
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SCADENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Scadenza'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Pagato (S/N)'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADARE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
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
        FieldName = 'DATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
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
        FieldName = 'CLIFOR_ID'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 120
    Width = 240
    Height = 18
    Cursor = crHandPoint
    DataSource = dsRicerca
    Enabled = False
    TabOrder = 2
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 368
    Top = 120
    Width = 121
    Height = 19
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object Button1: TButton
    Left = 520
    Top = 120
    Width = 75
    Height = 17
    Caption = 'Button1'
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object dsScadenze: TDataSource
    DataSet = dmodAz.ibqryScadenze
    Left = 60
    Top = 264
  end
  object dsPagamento: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Pagamento
    Left = 284
    Top = 34
  end
  object dsCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 162
    Top = 200
  end
  object dsForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 190
    Top = 200
  end
  object dsRicerca: TDataSource
    DataSet = ibqRicerca
    Left = 40
    Top = 144
  end
  object pmGrid: TPopupMenu
    Left = 30
    Top = 264
    object miPagato: TMenuItem
      Caption = 'Marca scadenza come pagata'
      OnClick = miPagatoClick
    end
    object miNonPagato: TMenuItem
      Caption = 'Marca scadenza come non pagata'
      OnClick = miNonPagatoClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miDelScadSel: TMenuItem
      Caption = 'Elimina scadenza selezionata'
      OnClick = miDelScadSelClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ModificaScadenza1: TMenuItem
      Caption = 'Modifica Scadenza'
      OnClick = ModificaScadenza1Click
    end
  end
  object ibqRicerca: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'select * from scadenze'
      'ORDER BY DATA_SCADENZA,DATA_DOC,NUM_DOC')
    UpdateObject = IBUpdateSQL1
    Left = 232
    Top = 248
    object ibqRicercaPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object ibqRicercaDOCUMENTO_ID: TIntegerField
      FieldName = 'DOCUMENTO_ID'
      Required = True
    end
    object ibqRicercaDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object ibqRicercaCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object ibqRicercaCLIFOR_TIPO: TSmallintField
      FieldName = 'CLIFOR_TIPO'
    end
    object ibqRicercaCLIFOR_DESCR: TIBStringField
      FieldName = 'CLIFOR_DESCR'
      Size = 50
    end
    object ibqRicercaIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##.00'
    end
    object ibqRicercaDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object ibqRicercaPAGATO: TIBStringField
      FieldName = 'PAGATO'
      Size = 1
    end
    object ibqRicercaPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object ibqRicercaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object ibqRicercaDATO: TFloatField
      FieldName = 'DATO'
      Origin = '"SCADENZE"."DATO"'
      currency = True
    end
    object ibqRicercaDADARE: TFloatField
      FieldName = 'DADARE'
      Origin = '"SCADENZE"."DADARE"'
      currency = True
    end
    object ibqRicercaNUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"SCADENZE"."NUM_DOC_LETT"'
      Size = 4
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 321
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = dsRicerca
    SQL.Strings = (
      'select * from tab_cli_for'
      'where ID_CLI_FOR=:CLIFOR_ID'
      'order by id_cli_for')
    Left = 496
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIFOR_ID'
        ParamType = ptUnknown
      end>
    object IBQuery1ID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Origin = '"TAB_CLI_FOR"."ID_CLI_FOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_CLI_FOR"."TIPO"'
    end
    object IBQuery1DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object IBQuery1COGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = '"TAB_CLI_FOR"."COGNOME"'
      Size = 30
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLI_FOR"."NOME"'
      Size = 30
    end
    object IBQuery1NOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Origin = '"TAB_CLI_FOR"."NOME_ALTRO"'
      Size = 30
    end
    object IBQuery1FULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      Origin = '"TAB_CLI_FOR"."FULL_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 92
    end
    object IBQuery1INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO"'
      Size = 100
    end
    object IBQuery1COMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_ID"'
    end
    object IBQuery1PARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object IBQuery1CODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_CLI_FOR"."CODICE_FISCALE"'
      Size = 30
    end
    object IBQuery1PERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
      Origin = '"TAB_CLI_FOR"."PERSONA_FISICA"'
    end
    object IBQuery1PIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
      Origin = '"TAB_CLI_FOR"."PIANO_CONTI_ID"'
    end
    object IBQuery1CONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Origin = '"TAB_CLI_FOR"."CONTO_CORRENTE"'
      Size = 30
    end
    object IBQuery1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_CLI_FOR"."MONETA_ID"'
      Size = 4
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."PAGAMENTO_ID"'
      Size = 5
    end
    object IBQuery1CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_ZONA_ID"'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Origin = '"TAB_CLI_FOR"."CATEGORIA_CLIENTE_ID"'
      Size = 4
    end
    object IBQuery1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_CLI_FOR"."AGENTE_ID"'
      Size = 4
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_CLI_FOR"."PROVVIGIONE"'
    end
    object IBQuery1LINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Origin = '"TAB_CLI_FOR"."LINGUA_ID"'
      Size = 4
    end
    object IBQuery1CODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Origin = '"TAB_CLI_FOR"."CODICE_LISTINO"'
      Size = 30
    end
    object IBQuery1SCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA1"'
    end
    object IBQuery1SCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA2"'
    end
    object IBQuery1TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_CLI_FOR"."TEL1"'
      Size = 15
    end
    object IBQuery1TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_CLI_FOR"."TEL2"'
      Size = 15
    end
    object IBQuery1FAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_CLI_FOR"."FAX"'
      Size = 15
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLI_FOR"."EMAIL"'
      Size = 50
    end
    object IBQuery1INTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_CLI_FOR"."INTERNET"'
      Size = 100
    end
    object IBQuery1DATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
      Origin = '"TAB_CLI_FOR"."DATA_DI_NASCITA"'
    end
    object IBQuery1SESSO: TIntegerField
      FieldName = 'SESSO'
      Origin = '"TAB_CLI_FOR"."SESSO"'
    end
    object IBQuery1TITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
      Origin = '"TAB_CLI_FOR"."TITOLO_ID"'
    end
    object IBQuery1PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"TAB_CLI_FOR"."PORTO_ID"'
      Size = 4
    end
    object IBQuery1FIDO: TFloatField
      FieldName = 'FIDO'
      Origin = '"TAB_CLI_FOR"."FIDO"'
    end
    object IBQuery1ABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
      Origin = '"TAB_CLI_FOR"."ABILITA_PARTITA"'
    end
    object IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
      Origin = '"TAB_CLI_FOR"."FATTURA_RIEPILOGATIVA"'
    end
    object IBQuery1ACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
      Origin = '"TAB_CLI_FOR"."ACCORPA_ARTICOLI"'
    end
    object IBQuery1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CLI_FOR"."IVA_SOSPESA"'
    end
    object IBQuery1POS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."POS_RIF_BOLLE"'
    end
    object IBQuery1CODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Origin = '"TAB_CLI_FOR"."CODICE_IVA_ESENTE"'
      Size = 4
    end
    object IBQuery1RIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_BOLLE"'
    end
    object IBQuery1ESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE1"'
    end
    object IBQuery1RIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_ORDINI"'
    end
    object IBQuery1ESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE2"'
    end
    object IBQuery1TIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTO_ID"'
    end
    object IBQuery1NAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_ID"'
    end
    object IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_DI_NASCITA_ID"'
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object IBQuery1RISCHIO: TFloatField
      FieldName = 'RISCHIO'
      Origin = '"TAB_CLI_FOR"."RISCHIO"'
    end
    object IBQuery1GG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA1"'
    end
    object IBQuery1GG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA2"'
    end
    object IBQuery1CONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
      Origin = '"TAB_CLI_FOR"."CONTROPARTITA_ID"'
    end
    object IBQuery1TIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTROPARTITA"'
    end
    object IBQuery1CERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
      Origin = '"TAB_CLI_FOR"."CERTIFICATO"'
    end
    object IBQuery1DENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE2"'
      Size = 50
    end
    object IBQuery1INDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO2"'
      Size = 100
    end
    object IBQuery1LOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CLI_FOR"."LOCALITA"'
      Size = 50
    end
    object IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_DI_NASCITA_ID"'
    end
    object IBQuery1CAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Origin = '"TAB_CLI_FOR"."CAB_ID"'
      Size = 11
    end
    object IBQuery1ABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CLI_FOR"."ABI_ID"'
      Size = 11
    end
    object IBQuery1TITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Origin = '"TAB_CLI_FOR"."TITOLO_DESCR"'
      Size = 10
    end
    object IBQuery1COMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."COMNASC_DESCR"'
      Size = 50
    end
    object IBQuery1CAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."CAPNASC_DESCR"'
      Size = 5
    end
    object IBQuery1NAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZNASC_DESCR"'
    end
    object IBQuery1COM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Origin = '"TAB_CLI_FOR"."COM_DESCR"'
      Size = 50
    end
    object IBQuery1CAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Origin = '"TAB_CLI_FOR"."CAP_DESCR"'
      Size = 5
    end
    object IBQuery1PR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Origin = '"TAB_CLI_FOR"."PR_DESCR"'
      Size = 2
    end
    object IBQuery1CAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Origin = '"TAB_CLI_FOR"."CAB_DESCR"'
      Size = 50
    end
    object IBQuery1ABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Origin = '"TAB_CLI_FOR"."ABI_DESCR"'
      Size = 100
    end
    object IBQuery1NAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZ_DESCR"'
      Size = 50
    end
    object IBQuery1FASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object IBQuery1NOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 1000
    end
    object IBQuery1CG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_CLI_FOR"."CG"'
      Size = 4
    end
    object IBQuery1CA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_CLI_FOR"."CA"'
      Size = 4
    end
    object IBQuery1COD2: TIBStringField
      FieldName = 'COD2'
      Origin = '"TAB_CLI_FOR"."COD2"'
      Size = 4
    end
    object IBQuery1CR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_CLI_FOR"."CR"'
      Size = 4
    end
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_RIBA'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_RIBA'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_RIBA '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'SELECT * FROM NUM_RIBA')
    ModifySQL.Strings = (
      'update NUM_RIBA'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 552
    Top = 168
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from scadenze '
      'where'
      '  PK_CODICE = :PK_CODICE')
    ModifySQL.Strings = (
      'update scadenze'
      'set'
      '  CLIFOR_DESCR = :CLIFOR_DESCR,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  CLIFOR_TIPO = :CLIFOR_TIPO,'
      '  DADARE = :DADARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  DATO = :DATO,'
      '  DOCUMENTO_ID = :DOCUMENTO_ID,'
      '  IMPORTO = :IMPORTO,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_DOC_LETT = :NUM_DOC_LETT,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  PAGATO = :PAGATO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into scadenze'
      
        '  (CLIFOR_DESCR, CLIFOR_ID, CLIFOR_TIPO, DADARE, DATA_DOC, DATA_' +
        'SCADENZA, '
      
        '   DATO, DOCUMENTO_ID, IMPORTO, NUM_DOC, NUM_DOC_LETT, PAGAMENTO' +
        '_ID, PAGATO, '
      '   PK_CODICE)'
      'values'
      
        '  (:CLIFOR_DESCR, :CLIFOR_ID, :CLIFOR_TIPO, :DADARE, :DATA_DOC, ' +
        ':DATA_SCADENZA, '
      
        '   :DATO, :DOCUMENTO_ID, :IMPORTO, :NUM_DOC, :NUM_DOC_LETT, :PAG' +
        'AMENTO_ID, '
      '   :PAGATO, :PK_CODICE)')
    DeleteSQL.Strings = (
      'delete from scadenze'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 272
    Top = 256
  end
end
