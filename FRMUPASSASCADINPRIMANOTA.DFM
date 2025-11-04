object frmPassaScadInPrimaNota: TfrmPassaScadInPrimaNota
  Left = 23
  Top = 105
  Width = 705
  Height = 375
  Caption = 'Scadenze --> Prima Nota'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCtrlScadenze: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 93
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object cbPagamento: TCheckBox
      Left = 8
      Top = 8
      Width = 77
      Height = 17
      Caption = '&Pagamento'
      TabOrder = 0
    end
    object rxdblcPagam: TRxDBLookupCombo
      Left = 88
      Top = 6
      Width = 237
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsPagamento
      ParentCtl3D = False
      TabOrder = 1
    end
    object gbCliForn: TGroupBox
      Left = 328
      Top = 2
      Width = 359
      Height = 83
      Ctl3D = False
      ParentCtl3D = False
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
      end
      object rbSoloForn: TRadioButton
        Left = 150
        Top = 12
        Width = 87
        Height = 17
        Caption = 'Solo Fornitori'
        TabOrder = 2
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
        Left = 320
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
        Left = 320
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
      Left = 12
      Top = 52
      Width = 87
      Height = 25
      Caption = '&Esci'
      TabOrder = 5
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
      Left = 104
      Top = 52
      Width = 85
      Height = 25
      Caption = '&Aggiorna'
      TabOrder = 6
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
      Left = 198
      Top = 52
      Width = 79
      Height = 25
      Caption = '&Stampa'
      TabOrder = 7
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
      Left = 88
      Top = 32
      Width = 53
      Height = 17
      Caption = 'Tutte'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object rbNonPagScad: TRadioButton
      Left = 152
      Top = 32
      Width = 81
      Height = 17
      Caption = 'Non Pagate'
      TabOrder = 3
    end
  end
  object dbgScadenze: TDBGrid
    Left = 0
    Top = 93
    Width = 697
    Height = 255
    Hint = 'Destro click...'
    Align = alClient
    DataSource = dsRicerca
    FixedColor = 7835964
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'N° doc'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Data Doc.'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR_TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'C/F'
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIFOR_DESCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Denominazione'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Importo   '
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SCADENZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Scadenza'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGATO'
        Title.Caption = 'Pagato (S/N)'
        Width = 68
        Visible = True
      end>
  end
  object dsRicerca: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 40
    Top = 144
  end
  object dsScadenze: TDataSource
    DataSet = dmodAz.ibqryScadenze
    Left = 60
    Top = 264
  end
  object dsCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 286
    Top = 30
  end
  object dsForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 334
    Top = 56
  end
  object dsPagamento: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Pagamento
    Left = 96
    Top = 44
  end
end
