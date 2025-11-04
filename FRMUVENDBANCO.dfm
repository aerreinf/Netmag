object fVendBanco: TfVendBanco
  Left = 202
  Top = 120
  Width = 786
  Height = 600
  ActiveControl = BitBtn3
  AlphaBlendValue = 100
  BorderIcons = []
  Caption = 'Vendita al Banco'
  Color = clBlue
  TransparentColorValue = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 645
    Top = 438
    Width = 51
    Height = 15
    Caption = 'Contanti'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 777
    Height = 215
    BorderStyle = bsNone
    DataSource = dsoRigheDoc
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 15400959
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Codice'
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descrizione'
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 285
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Q.t'#224
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Prezzo '#8364
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Riga'
        Title.Color = 10485760
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 39
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
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEP'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEP'
        Width = 64
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 777
    Height = 136
    Color = 14349782
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 642
      Top = 57
      Width = 25
      Height = 14
      Caption = 'Imp.'#8364
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 644
      Top = 38
      Width = 23
      Height = 14
      Caption = 'iva '#8364
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 496
      Top = 76
      Width = 265
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
      object Label9: TLabel
        Left = 4
        Top = 7
        Width = 28
        Height = 14
        Caption = 'Caus.'
      end
      object LookCauMagCod: TDBLookupComboBox
        Left = 36
        Top = 4
        Width = 61
        Height = 20
        Ctl3D = False
        DataField = 'CAUSALE_MAGAZZINO'
        DataSource = dsoDocumento
        KeyField = 'CODICE_CAUSALE'
        ListField = 'CODICE_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 0
      end
      object LookCauMagDescr: TDBLookupComboBox
        Left = 102
        Top = 4
        Width = 160
        Height = 20
        Ctl3D = False
        DataField = 'CAUSALE_MAGAZZINO'
        DataSource = dsoDocumento
        KeyField = 'CODICE_CAUSALE'
        ListField = 'DESCR_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 351
      Top = 105
      Width = 268
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object Label10: TLabel
        Left = 4
        Top = 7
        Width = 31
        Height = 14
        Caption = 'Listino'
      end
      object LookListinoCod: TDBLookupComboBox
        Left = 37
        Top = 4
        Width = 60
        Height = 20
        Ctl3D = False
        DataField = 'LISTINO'
        DataSource = dsoDocumento
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoListino
        ParentCtl3D = False
        TabOrder = 0
        OnClick = LookListinoCodClick
      end
      object LookListinoDescr: TDBLookupComboBox
        Left = 101
        Top = 4
        Width = 162
        Height = 20
        Ctl3D = False
        DataField = 'LISTINO'
        DataSource = dsoDocumento
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoListino
        ParentCtl3D = False
        TabOrder = 1
        OnClick = LookListinoDescrClick
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 57
      Width = 218
      Height = 48
      Caption = 'Cliente / Fornitore'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Default'
        'Cliente'
        'Fornitore')
      ParentFont = False
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 624
      Top = 100
      Width = 87
      Height = 33
      Caption = 'Tipo'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'V'
        'L'
        'C')
      ParentFont = False
      TabOrder = 3
      OnClick = RadioGroup2Click
    end
    object Panel4: TPanel
      Left = 224
      Top = 76
      Width = 265
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 4
      object Label11: TLabel
        Left = 6
        Top = 8
        Width = 22
        Height = 14
        Caption = 'Dep.'
      end
      object LookNostrDepCod: TRxDBLookupCombo
        Left = 36
        Top = 3
        Width = 60
        Height = 21
        DropDownCount = 10
        Color = clWhite
        DataField = 'DEPOSITO'
        DataSource = dsoDocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = dsoDepositi
        ParentFont = False
        TabOrder = 0
        OnChange = LookNostrDepCodChange
      end
      object LookNostrDepDescr: TRxDBLookupCombo
        Left = 101
        Top = 3
        Width = 160
        Height = 21
        DropDownCount = 10
        Color = clWhite
        DataField = 'DEPOSITO'
        DataSource = dsoDocumento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoDepositi
        ParentFont = False
        TabOrder = 1
        OnChange = LookNostrDepDescrChange
      end
    end
    object LookCliDescr: TRxDBLookupCombo
      Left = 107
      Top = 106
      Width = 241
      Height = 27
      DropDownCount = 10
      DataField = 'CLIFOR_ID'
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsoCli
      ParentFont = False
      TabOrder = 5
      OnChange = LookCliDescrChange
    end
    object LookCliForCod: TRxDBLookupCombo
      Left = 3
      Top = 106
      Width = 97
      Height = 27
      DropDownCount = 8
      DataField = 'CLIFOR_ID'
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dsoCli
      ParentFont = False
      TabOrder = 6
      OnChange = LookCliForCodChange
    end
    object Button4: TButton
      Left = 713
      Top = 105
      Width = 61
      Height = 29
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 635
      Height = 51
      Color = 15918056
      TabOrder = 8
      object Bevel1: TBevel
        Left = 54
        Top = 5
        Width = 44
        Height = 42
      end
      object Bevel2: TBevel
        Left = 99
        Top = 5
        Width = 74
        Height = 42
      end
      object Bevel3: TBevel
        Left = 231
        Top = 5
        Width = 58
        Height = 42
      end
      object Bevel4: TBevel
        Left = 351
        Top = 5
        Width = 53
        Height = 42
      end
      object Bevel5: TBevel
        Left = 407
        Top = 5
        Width = 65
        Height = 42
      end
      object Bevel6: TBevel
        Left = 291
        Top = 5
        Width = 58
        Height = 42
      end
      object Bevel7: TBevel
        Left = 174
        Top = 5
        Width = 56
        Height = 42
      end
      object Bevel8: TBevel
        Left = 4
        Top = 5
        Width = 49
        Height = 42
      end
      object Bevel9: TBevel
        Left = 475
        Top = 5
        Width = 68
        Height = 42
      end
      object Bevel10: TBevel
        Left = 549
        Top = 5
        Width = 80
        Height = 42
      end
      object BitBtn1: TBitBtn
        Left = 57
        Top = 8
        Width = 39
        Height = 37
        Cursor = crHandPoint
        Caption = '&Salva'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn5: TBitBtn
        Left = 101
        Top = 8
        Width = 70
        Height = 37
        Cursor = crHandPoint
        Caption = 'Salva Reso'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 234
        Top = 8
        Width = 53
        Height = 37
        Cursor = crHandPoint
        Caption = 'Stampa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 354
        Top = 8
        Width = 47
        Height = 37
        Cursor = crHandPoint
        Caption = 'Svuota'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object BitBtn8: TBitBtn
        Left = 410
        Top = 8
        Width = 59
        Height = 37
        Cursor = crHandPoint
        Caption = 'file Ext.'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn8Click
      end
      object BitBtn11: TBitBtn
        Left = 296
        Top = 8
        Width = 47
        Height = 37
        Cursor = crHandPoint
        Caption = 'Scontr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn11Click
      end
      object BitBtn2: TBitBtn
        Left = 177
        Top = 8
        Width = 51
        Height = 37
        Cursor = crHandPoint
        Caption = '&Annulla'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 7
        Top = 8
        Width = 44
        Height = 37
        Cursor = crHandPoint
        Caption = '&Nuovo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 478
        Top = 8
        Width = 62
        Height = 37
        Cursor = crHandPoint
        Hint = 'prelievo da file MOVIMENTI'
        Caption = 'DaCassa'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BitBtn4Click
      end
      object BitBtn13: TBitBtn
        Left = 552
        Top = 8
        Width = 72
        Height = 37
        Cursor = crHandPoint
        Hint = 'prelievo da file ARTICOLI'
        Caption = 'Cassa TOT'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BitBtn13Click
      end
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 640
      Top = 0
      Width = 137
      Height = 35
      DataField = 'TOTALE_IVATO'
      DataSource = dsoDocumento
      ReadOnly = True
      Color = 9109503
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
    end
    object RxDBCalcEdit2: TRxDBCalcEdit
      Left = 680
      Top = 36
      Width = 97
      Height = 19
      DataField = 'TOTALE_IVA'
      DataSource = dsoDocumento
      ReadOnly = True
      Color = 9109503
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
    end
    object RxDBCalcEdit3: TRxDBCalcEdit
      Left = 680
      Top = 55
      Width = 97
      Height = 19
      DataField = 'TOTALE'
      DataSource = dsoDocumento
      ReadOnly = True
      Color = 9109503
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 11
    end
    object RadioGroup3: TRadioGroup
      Left = 464
      Top = 51
      Width = 89
      Height = 30
      Caption = 'Tipo Salv.'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'V'
        'L')
      ParentFont = False
      TabOrder = 12
      OnClick = RadioGroup2Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 370
    Width = 777
    Height = 39
    Color = 16573129
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label15: TLabel
      Left = 325
      Top = 0
      Width = 20
      Height = 14
      Caption = 'Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label18: TLabel
      Left = 3
      Top = 2
      Width = 46
      Height = 14
      Caption = 'Num.Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 69
      Top = 2
      Width = 47
      Height = 14
      Caption = 'Data Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 134
      Top = 2
      Width = 43
      Height = 14
      Caption = 'Ora Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 192
      Top = 5
      Width = 73
      Height = 22
      Caption = 'Label14'
      Color = 16573129
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 192
      Top = 24
      Width = 38
      Height = 14
      Caption = 'Label14'
      Visible = False
    end
    object DBEdit7: TDBEdit
      Left = 325
      Top = 14
      Width = 57
      Height = 19
      AutoSize = False
      BevelWidth = 2
      DataField = 'GIACENZA_ATTUALE'
      DataSource = dsoContArt
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object DBEdit10: TDBEdit
      Left = 3
      Top = 14
      Width = 63
      Height = 19
      AutoSize = False
      BevelWidth = 2
      DataField = 'NUM_DOC'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn9: TBitBtn
      Left = 568
      Top = 11
      Width = 41
      Height = 25
      Cursor = crHandPoint
      Hint = 'Elimina intero documento'
      Caption = 'Elimina'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object DBNavigator2: TDBNavigator
      Left = 641
      Top = 11
      Width = 120
      Height = 25
      DataSource = dsoDocumento
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 3
    end
    object BitBtn12: TBitBtn
      Left = 512
      Top = 11
      Width = 49
      Height = 25
      Cursor = crHandPoint
      Caption = 'Modifica'
      TabOrder = 4
      OnClick = BitBtn12Click
    end
    object DBEdit6: TDBEdit
      Left = 69
      Top = 14
      Width = 62
      Height = 19
      AutoSize = False
      BevelWidth = 2
      DataField = 'DATA_DOC'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 134
      Top = 14
      Width = 46
      Height = 19
      AutoSize = False
      BevelWidth = 2
      DataField = 'ORA'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CoEcrCom1: TCoEcrCom
      Left = 304
      Top = 8
      Width = 32
      Height = 32
      ControlData = {040001004F0300004F03000000000000}
    end
    object DBEdit11: TDBEdit
      Left = 440
      Top = 17
      Width = 70
      Height = 19
      AutoSize = False
      BevelWidth = 2
      Color = 8847644
      DataField = 'COSTO_STANDART'
      DataSource = dsoDati
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 488
    Top = 124
    Width = 200
    Height = 18
    DataSource = dsoRigheDoc
    Flat = True
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 57
    Color = clBlue
    Enabled = False
    TabOrder = 4
    object Label1: TLabel
      Left = 3
      Top = 1
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 123
      Top = 1
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 460
      Top = 1
      Width = 42
      Height = 14
      Caption = 'Q.t'#224' tot.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 514
      Top = 1
      Width = 53
      Height = 14
      Caption = 'Prezzo / '#8364
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 688
      Top = 1
      Width = 53
      Height = 14
      Caption = 'Importo '#8364
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 580
      Top = 1
      Width = 16
      Height = 14
      Caption = 'Sc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 628
      Top = 1
      Width = 43
      Height = 14
      Caption = 'Sc.Mon.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 605
      Top = 1
      Width = 16
      Height = 14
      Caption = 'Sc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 264
      Top = 35
      Width = 57
      Height = 18
      Caption = 'Nuovo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 324
      Top = 35
      Width = 57
      Height = 18
      Caption = 'Modifica'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 384
      Top = 35
      Width = 57
      Height = 18
      Caption = 'Elimina'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 444
      Top = 35
      Width = 57
      Height = 18
      Caption = 'Annulla'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object Label17: TLabel
      Left = 425
      Top = 1
      Width = 21
      Height = 14
      Caption = 'Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 389
      Top = 1
      Width = 15
      Height = 14
      Caption = 'Cf.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 3
      Top = 35
      Width = 89
      Height = 19
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 104
      Top = 14
      Width = 17
      Height = 19
      Caption = '...'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 364
      Top = 14
      Width = 17
      Height = 19
      Caption = '...'
      TabOrder = 2
      OnClick = Button2Click
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 14
      Width = 100
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICE_ARTICOLO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnDblClick = DBEdit1DblClick
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 123
      Top = 14
      Width = 239
      Height = 19
      AutoSize = False
      DataField = 'DESCR'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 459
      Top = 14
      Width = 45
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'QUANTITA'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 506
      Top = 14
      Width = 69
      Height = 19
      AutoSize = False
      DataField = 'IVATO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
      OnKeyPress = DBEdit4KeyPress
    end
    object Button3: TButton
      Left = 756
      Top = 14
      Width = 19
      Height = 39
      Caption = '...'
      TabOrder = 7
      OnClick = Button3Click
    end
    object DBEdit15: TDBEdit
      Left = 506
      Top = 35
      Width = 69
      Height = 19
      Hint = 'Prezzo Vend. senza IVA'
      AutoSize = False
      DataField = 'COSTO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit16: TDBEdit
      Left = 674
      Top = 14
      Width = 81
      Height = 19
      AutoSize = False
      DataField = 'IMPORTO_CON_IVA'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit17: TDBEdit
      Left = 674
      Top = 35
      Width = 81
      Height = 19
      AutoSize = False
      DataField = 'IMPORTO_SCONTO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit18: TDBEdit
      Left = 577
      Top = 14
      Width = 23
      Height = 19
      AutoSize = False
      DataField = 'SCONTO1'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnEnter = DBEdit18Enter
      OnExit = DBEdit18Exit
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit19: TDBEdit
      Left = 627
      Top = 14
      Width = 44
      Height = 19
      AutoSize = False
      DataField = 'SCONTO_EQ'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnEnter = DBEdit19Enter
      OnExit = DBEdit19Exit
      OnKeyPress = DBEdit19KeyPress
    end
    object DBEdit20: TDBEdit
      Left = 104
      Top = 35
      Width = 155
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'COL'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnKeyPress = DBEdit20KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 602
      Top = 14
      Width = 23
      Height = 19
      AutoSize = False
      DataField = 'SCONTO2'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 412
      Top = 14
      Width = 45
      Height = 19
      AutoSize = False
      DataField = 'QTA_UM'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnEnter = DBEdit9Enter
      OnExit = DBEdit9Exit
      OnKeyPress = DBEdit9KeyPress
    end
    object edimballo: TDBEdit
      Left = 382
      Top = 14
      Width = 28
      Height = 19
      AutoSize = False
      DataField = 'FATTCONV'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 547
    Width = 778
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'F2-Ricerca Articoli x Codice ; F3-Ricerca Art. x Descrizione'
        Width = 300
      end
      item
        Alignment = taCenter
        Text = 'F6-Annulla;F7-Salva'
        Width = 180
      end
      item
        Alignment = taCenter
        Text = 'Doc.: F9-Nuovo;F10-Modifica;F11-Salva;F12-Elimina'
        Width = 50
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 272
    Width = 777
    Height = 97
    TabStop = False
    BorderStyle = bsNone
    DataSource = DataSource3
    Enabled = False
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Color = 15400959
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Codice'
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Descrizione'
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 264
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Q.t'#224
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Prezzo '#8364
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 15400959
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Riga'
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'Ora'
        Title.Color = 16300803
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Color = 16300803
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clTeal
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 488
    Top = 296
    Width = 289
    Height = 21
    TabOrder = 7
    Text = 'Port=1,CURDIR='#39'C:\Software\Delphi\Progetti\dcu'#39
    Visible = False
  end
  object BitBtn10: TBitBtn
    Left = 4
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '1'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn10Click
  end
  object BitBtn14: TBitBtn
    Left = 52
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '2'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn14Click
  end
  object BitBtn15: TBitBtn
    Left = 100
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '3'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn15Click
  end
  object BitBtn16: TBitBtn
    Left = 148
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '4'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn16Click
  end
  object BitBtn17: TBitBtn
    Left = 196
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '5'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn17Click
  end
  object BitBtn18: TBitBtn
    Left = 244
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '6'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn18Click
  end
  object BitBtn19: TBitBtn
    Left = 292
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '7'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn19Click
  end
  object BitBtn20: TBitBtn
    Left = 340
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '8'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = BitBtn20Click
  end
  object BitBtn21: TBitBtn
    Left = 388
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '9'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BitBtn21Click
  end
  object BitBtn22: TBitBtn
    Left = 437
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = '0'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BitBtn22Click
  end
  object BitBtn23: TBitBtn
    Left = 486
    Top = 277
    Width = 45
    Height = 41
    Cursor = crHandPoint
    Caption = ','
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = BitBtn23Click
  end
  object RxCalcEdit2: TRxCalcEdit
    Left = 648
    Top = 329
    Width = 121
    Height = 27
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
    OnClick = RxCalcEdit2Click
  end
  object rxcalcedit1: TEdit
    Left = 648
    Top = 288
    Width = 121
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 20
    OnExit = rxcalcedit1Exit
  end
  object BitBtn24: TBitBtn
    Left = 592
    Top = 289
    Width = 55
    Height = 26
    Cursor = crHandPoint
    Caption = 'Canc.'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = BitBtn24Click
  end
  object Edit2: TEdit
    Left = 582
    Top = 329
    Width = 63
    Height = 27
    AutoSize = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Text = 'Resto'
  end
  object Edit4: TEdit
    Left = 6
    Top = 328
    Width = 63
    Height = 27
    AutoSize = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    Text = 'Colli'
  end
  object BitBtn25: TBitBtn
    Left = 480
    Top = 329
    Width = 55
    Height = 32
    Cursor = crHandPoint
    Caption = 'OK'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnClick = BitBtn25Click
  end
  object edit3: TDBEdit
    Left = 75
    Top = 328
    Width = 86
    Height = 27
    AutoSize = False
    BevelWidth = 2
    DataField = 'NRCOLLI'
    DataSource = dsoDocumento
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 25
    OnExit = Edit3Exit
  end
  object Edit5: TEdit
    Left = 288
    Top = 328
    Width = 169
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 26
    OnEnter = Edit5Enter
    OnExit = Edit5Exit
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 108
    Top = 212
  end
  object dsoFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 48
    Top = 236
  end
  object dsoRigheDoc: TDataSource
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 354
    Top = 106
  end
  object dsoListino: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 606
    Top = 472
  end
  object dsoDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 548
    Top = 281
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 564
    Top = 184
  end
  object dsoContArt: TDataSource
    DataSet = dmodAz.ibqCont_Art
    Left = 240
    Top = 80
  end
  object dsoArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 296
    Top = 98
  end
  object dsoDocumento: TDataSource
    DataSet = dmodAz.ibqTab_Doc
    Left = 424
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 168
    Top = 216
  end
  object FormStorage1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'RadioGroup2.ItemIndex'
      'RadioGroup3.ItemIndex')
    StoredValues = <>
    Left = 648
    Top = 492
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 184
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 216
    Top = 176
    object RxMemoryData1CODICE: TStringField
      FieldName = 'CODICE'
      Size = 13
    end
    object RxMemoryData1QTA: TFloatField
      FieldName = 'QTA'
    end
    object RxMemoryData1IMPORTO: TFloatField
      FieldName = 'PREZZO'
      currency = True
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CASSA'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PIPPON.C2, Sum(PIPPON.C3) AS SumOfC3, Sum(PIPPON.C4) AS S' +
        'umOfC4'
      'FROM PIPPON'
      'GROUP BY PIPPON.C2;')
    Left = 520
    Top = 88
    object ADOQuery1C2: TStringField
      FieldName = 'C2'
      Size = 12
    end
    object ADOQuery1SumOfC3: TFloatField
      FieldName = 'SumOfC3'
    end
    object ADOQuery1SumOfC4: TFloatField
      FieldName = 'SumOfC4'
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 304
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery2CODICE_ARTICOLO2: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery2DESCR3: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBQuery2DESCR22: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery2CODICE_IVA_ID2: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery2UNITA_DI_MISURA1_ID2: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA2_ID2: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA3_ID2: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery2SCONTO12: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery2SCONTO22: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery2SCONTO32: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery2PROVVIGIONE2: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery2PESO_NETTO_KG2: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery2PESO_LORDO_KG2: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery2SCORTA_MIN2: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery2SCORTA_MAX2: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery2LOTTO_RIORDINO2: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery2GG_APPROVVIGIONAMENTO2: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery2QTA_X_CONFEZIONE2: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery2ANNO2: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery2DESCR_AGGIUNTIVA_ID2: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery2PREZZO_BASE2: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
      currency = True
    end
    object IBQuery2COSTO_STANDART2: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
      currency = True
    end
    object IBQuery2TIPO_ARTICOLO_ID2: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery2FATT_CONV12: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery2FATT_CONV22: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery2COSTO_ID2: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery2RICAVO_ID2: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery2GIORNI_MAX_INVENDUTO2: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery2ASPETTO_ID2: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery2RIORDINO_MESE_DA2: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery2RIORDINO_MESE_A2: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery2RIORDINO_GIORNO_DA2: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery2RIORDINO_GIORNO_A2: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery2STAGIONE_ID2: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery2GRUPPO_ALTERNATIVO2: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery2PRODUTTORE_ID2: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery2CATEGORIA_ARTICOLO_ID2: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery2CATEGORIA_MERCEOLOGICA_ID2: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery2CODICE_BASE2: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery2DERIVATO2: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery2VARIANTE1_ID2: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE2_ID2: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE3_ID2: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery2NUM_VARIANTI2: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery2TIPO_COSTO_ID2: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery2TIPO_RICAVO_ID2: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery2OMAGGIO2: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery2TIPO_CLI_FOR_ID2: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery2CLI_FOR_ID2: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery2CODE_BAR2: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery2DESCR_CODE_BAR2: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery2NON_STAMPA_INVENTARIO2: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery2NON_STAMPA_REGISTRO2: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery2NOMENCLATURA2: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV1_NOMENCLATURA2: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV2_NOMENCLATURA2: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery2PROV_ORDINE2: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery2COSTO_ULTIMO2: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery2DATA_COSTO_ULTIMO2: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery2NUM_REPARTO2: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery2TIPO_CODE_BAR_ID2: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery2CONTO_ACQUISTO2: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery2CONTO_VENDITA2: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery2UN_MIS2_VAL2: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery2UN_MIS3_VAL2: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery2CAT_ART_FAMIGLIA_ID2: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery2CAT_ART_GRUPPO_ID2: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery2CAT_ART_MARCA_ID2: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery2FOTO_PERCORSO2: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery2CAT_ART_TIPO_ID2: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBQuery2FLAG_ACCESSORIE2: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery2DATAMOD2: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery2SCONTO42: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery2PREZZO_IVATO2: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery2P2IVATO2: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery2P3IVATO2: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery2P4IVATO2: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery2P5IVATO2: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery2SC212: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery2SC222: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery2SC232: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery2SC312: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery2SC322: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery2SC332: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery2SC412: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery2SC422: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery2SC432: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery2SC512: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery2SC522: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery2SC532: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery2R22: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery2R32: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery2R42: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery2R52: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery2IMP22: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery2IMP32: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery2IMP42: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery2IMP52: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery2RICARPREC2: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery2P6IVATO2: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery2IMP62: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery2STRUTT2: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery2CA7: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery2CG7: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery2AG7: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery2CA22: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery2CG22: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery2AG22: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery2CA32: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery2CG32: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery2AG32: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery2CA42: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery2CG42: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery2AG42: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery2CA52: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery2CG52: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery2AG52: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery2CA62: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery2CG62: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery2AG62: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery2ID_OFFERTA2: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery2CR7: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery2CR22: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery2CR32: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery2CR42: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery2CR52: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery2CR62: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object dsoDati: TDataSource
    DataSet = IBQuery2
    Left = 352
    Top = 240
  end
  object ibqryDetDoc: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from TAB_DET_DOC'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into TAB_DET_DOC'
      
        '  (ID_DOC_DET, TIPO_RIGA, CODICE_ARTICOLO, DESCR, COSTO, COSTOIN' +
        'VALUTA, '
      
        '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, D' +
        'EP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, DATA_REG, '
      
        '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, RIF_D' +
        'DT_ID_DOC, '
      
        '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, RIF_PRE_I' +
        'D_DOC, '
      
        '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, RIF_ORD_NUM' +
        '_DOC, RIF_DDT_NUM_DOC, '
      
        '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, OP_V' +
        'AL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C, '
      '   NUM_RIGA_ID)'
      'values'
      
        '  (:ID_DOC_DET, :TIPO_RIGA, :CODICE_ARTICOLO, :DESCR, :COSTO, :C' +
        'OSTOINVALUTA, '
      
        '   :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA, :SCONTO1, :SCON' +
        'TO2, :SCONTO3, '
      
        '   :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, :IMPORTOINVALUTA, :OMAGG' +
        'IO, :DEP, '
      
        '   :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVATO, :IMPORTO_CON' +
        '_IVA, :CODICE_IVA_ID, '
      
        '   :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :RIF_A_DDT, :RIF_I' +
        'D_DOC_DET, '
      
        '   :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, :RIF_ORD_ID_DOC, :RIF_ORD' +
        '_DATA_DOC, '
      
        '   :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, :PIANOCONTO_ID, :RIF_PRE_' +
        'NUM_DOC, '
      
        '   :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, :OP_QTA_DISPONIBILE, :OP_' +
        'VAL_DISPONIBILE, '
      
        '   :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC_ID, :TOTCOLLI, :TOTS' +
        'CAT, :PREZZOLIST, '
      '   :SCHEDA, :PASSATA, :COL, :A, :B, :C, :NUM_RIGA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOC_DET,'
      '  TIPO_RIGA,'
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  COSTO,'
      '  COSTOINVALUTA,'
      '  UNITA_MISURA,'
      '  FATTCONV,'
      '  QTA_UM,'
      '  QUANTITA,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  SCONTO4,'
      '  IMPORTO_SCONTO,'
      '  IMPORTO,'
      '  IMPORTOINVALUTA,'
      '  OMAGGIO,'
      '  DEP,'
      '  SCONTO_EQ,'
      '  PERC_PROVV,'
      '  TIPO_SERVIZIO,'
      '  IVATO,'
      '  IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID,'
      '  DATA_REG,'
      '  RIF_A,'
      '  RIF_A_PRE,'
      '  RIF_A_ORD,'
      '  RIF_A_DDT,'
      '  RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA,'
      '  DOC_ID,'
      '  TOTCOLLI,'
      '  TOTSCAT,'
      '  PREZZOLIST,'
      '  SCHEDA,'
      '  PASSATA,'
      '  COL,'
      '  A,'
      '  B,'
      '  C,'
      '  NUM_RIGA_ID'
      'from TAB_DET_DOC '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'SELECT * FROM  TAB_DET_DOC'
      'where doc_id=:RIF_DDT_ID_DOC'
      'ORDER BY DOC_ID')
    ModifySQL.Strings = (
      'update TAB_DET_DOC'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    DataSource = dsoRigheDoc
    Left = 120
    Top = 160
    object ibqryDetDocID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object ibqryDetDocTIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object ibqryDetDocCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object ibqryDetDocDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object ibqryDetDocCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
    end
    object ibqryDetDocCOSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
    end
    object ibqryDetDocUNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object ibqryDetDocFATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object ibqryDetDocQTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object ibqryDetDocQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object ibqryDetDocSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object ibqryDetDocSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object ibqryDetDocSCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object ibqryDetDocSCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object ibqryDetDocIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
    end
    object ibqryDetDocIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
    end
    object ibqryDetDocIMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
    end
    object ibqryDetDocOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object ibqryDetDocDEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object ibqryDetDocSCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object ibqryDetDocPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object ibqryDetDocTIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object ibqryDetDocIVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
    end
    object ibqryDetDocIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
    end
    object ibqryDetDocCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibqryDetDocDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object ibqryDetDocRIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object ibqryDetDocRIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object ibqryDetDocRIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object ibqryDetDocRIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object ibqryDetDocRIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object ibqryDetDocRIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object ibqryDetDocRIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object ibqryDetDocRIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object ibqryDetDocRIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object ibqryDetDocRIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object ibqryDetDocRIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object ibqryDetDocPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object ibqryDetDocRIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object ibqryDetDocRIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object ibqryDetDocRIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object ibqryDetDocOP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object ibqryDetDocOP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object ibqryDetDocOP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object ibqryDetDocOP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object ibqryDetDocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object ibqryDetDocTOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object ibqryDetDocTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object ibqryDetDocPREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object ibqryDetDocSCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object ibqryDetDocPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object ibqryDetDocCOL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object ibqryDetDocA: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object ibqryDetDocB: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object ibqryDetDocC: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object ibqryDetDocNUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      Required = True
    end
  end
  object ibq_aggArt: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from tab_Articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_Articoli'
      
        '  (CODICE_ARTICOLO, DESCR, DESCR2, CODICE_IVA_ID, UNITA_DI_MISUR' +
        'A1_ID, '
      
        '   UNITA_DI_MISURA2_ID, UNITA_DI_MISURA3_ID, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   PROVVIGIONE, PESO_NETTO_KG, PESO_LORDO_KG, SCORTA_MIN, SCORTA' +
        '_MAX, LOTTO_RIORDINO, '
      
        '   GG_APPROVVIGIONAMENTO, QTA_X_CONFEZIONE, ANNO, DESCR_AGGIUNTI' +
        'VA_ID, '
      
        '   PREZZO_BASE, COSTO_STANDART, TIPO_ARTICOLO_ID, FATT_CONV1, FA' +
        'TT_CONV2, '
      
        '   COSTO_ID, RICAVO_ID, GIORNI_MAX_INVENDUTO, ASPETTO_ID, RIORDI' +
        'NO_MESE_DA, '
      
        '   RIORDINO_MESE_A, RIORDINO_GIORNO_DA, RIORDINO_GIORNO_A, STAGI' +
        'ONE_ID, '
      
        '   GRUPPO_ALTERNATIVO, PRODUTTORE_ID, CATEGORIA_ARTICOLO_ID, CAT' +
        'EGORIA_MERCEOLOGICA_ID, '
      
        '   CODICE_BASE, DERIVATO, VARIANTE1_ID, VARIANTE2_ID, VARIANTE3_' +
        'ID, NUM_VARIANTI, '
      
        '   TIPO_COSTO_ID, TIPO_RICAVO_ID, OMAGGIO, TIPO_CLI_FOR_ID, CLI_' +
        'FOR_ID, '
      
        '   CODE_BAR, DESCR_CODE_BAR, NON_STAMPA_INVENTARIO, NON_STAMPA_R' +
        'EGISTRO, '
      
        '   NOMENCLATURA, FATT_CONV1_NOMENCLATURA, FATT_CONV2_NOMENCLATUR' +
        'A, PROV_ORDINE, '
      
        '   COSTO_ULTIMO, DATA_COSTO_ULTIMO, NUM_REPARTO, TIPO_CODE_BAR_I' +
        'D, CONTO_ACQUISTO, '
      
        '   CONTO_VENDITA, UN_MIS2_VAL, UN_MIS3_VAL, CAT_ART_FAMIGLIA_ID,' +
        ' CAT_ART_GRUPPO_ID, '
      
        '   CAT_ART_MARCA_ID, FOTO_PERCORSO, CAT_ART_TIPO_ID, FLAG_ACCESS' +
        'ORIE, DATAMOD, '
      
        '   SCONTO4, PREZZO_IVATO, P2IVATO, P3IVATO, P4IVATO, P5IVATO, SC' +
        '21, SC22, '
      
        '   SC23, SC31, SC32, SC33, SC41, SC42, SC43, SC51, SC52, SC53, R' +
        '2, R3, '
      
        '   R4, R5, IMP2, IMP3, IMP4, IMP5, RICARPREC, P6IVATO, IMP6, STR' +
        'UTT, CA, '
      
        '   CG, AG, CA2, CG2, AG2, CA3, CG3, AG3, CA4, CG4, AG4, CA5, CG5' +
        ', AG5, '
      '   CA6, CG6, AG6, ID_OFFERTA, CR, CR2, CR3, CR4, CR5, CR6)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DESCR, :DESCR2, :CODICE_IVA_ID, :UNITA_DI_' +
        'MISURA1_ID, '
      
        '   :UNITA_DI_MISURA2_ID, :UNITA_DI_MISURA3_ID, :SCONTO1, :SCONTO' +
        '2, :SCONTO3, '
      
        '   :PROVVIGIONE, :PESO_NETTO_KG, :PESO_LORDO_KG, :SCORTA_MIN, :S' +
        'CORTA_MAX, '
      
        '   :LOTTO_RIORDINO, :GG_APPROVVIGIONAMENTO, :QTA_X_CONFEZIONE, :' +
        'ANNO, :DESCR_AGGIUNTIVA_ID, '
      
        '   :PREZZO_BASE, :COSTO_STANDART, :TIPO_ARTICOLO_ID, :FATT_CONV1' +
        ', :FATT_CONV2, '
      
        '   :COSTO_ID, :RICAVO_ID, :GIORNI_MAX_INVENDUTO, :ASPETTO_ID, :R' +
        'IORDINO_MESE_DA, '
      
        '   :RIORDINO_MESE_A, :RIORDINO_GIORNO_DA, :RIORDINO_GIORNO_A, :S' +
        'TAGIONE_ID, '
      
        '   :GRUPPO_ALTERNATIVO, :PRODUTTORE_ID, :CATEGORIA_ARTICOLO_ID, ' +
        ':CATEGORIA_MERCEOLOGICA_ID, '
      
        '   :CODICE_BASE, :DERIVATO, :VARIANTE1_ID, :VARIANTE2_ID, :VARIA' +
        'NTE3_ID, '
      
        '   :NUM_VARIANTI, :TIPO_COSTO_ID, :TIPO_RICAVO_ID, :OMAGGIO, :TI' +
        'PO_CLI_FOR_ID, '
      
        '   :CLI_FOR_ID, :CODE_BAR, :DESCR_CODE_BAR, :NON_STAMPA_INVENTAR' +
        'IO, :NON_STAMPA_REGISTRO, '
      
        '   :NOMENCLATURA, :FATT_CONV1_NOMENCLATURA, :FATT_CONV2_NOMENCLA' +
        'TURA, :PROV_ORDINE, '
      
        '   :COSTO_ULTIMO, :DATA_COSTO_ULTIMO, :NUM_REPARTO, :TIPO_CODE_B' +
        'AR_ID, '
      
        '   :CONTO_ACQUISTO, :CONTO_VENDITA, :UN_MIS2_VAL, :UN_MIS3_VAL, ' +
        ':CAT_ART_FAMIGLIA_ID, '
      
        '   :CAT_ART_GRUPPO_ID, :CAT_ART_MARCA_ID, :FOTO_PERCORSO, :CAT_A' +
        'RT_TIPO_ID, '
      
        '   :FLAG_ACCESSORIE, :DATAMOD, :SCONTO4, :PREZZO_IVATO, :P2IVATO' +
        ', :P3IVATO, '
      
        '   :P4IVATO, :P5IVATO, :SC21, :SC22, :SC23, :SC31, :SC32, :SC33,' +
        ' :SC41, '
      
        '   :SC42, :SC43, :SC51, :SC52, :SC53, :R2, :R3, :R4, :R5, :IMP2,' +
        ' :IMP3, '
      
        '   :IMP4, :IMP5, :RICARPREC, :P6IVATO, :IMP6, :STRUTT, :CA, :CG,' +
        ' :AG, :CA2, '
      
        '   :CG2, :AG2, :CA3, :CG3, :AG3, :CA4, :CG4, :AG4, :CA5, :CG5, :' +
        'AG5, :CA6, '
      '   :CG6, :AG6, :ID_OFFERTA, :CR, :CR2, :CR3, :CR4, :CR5, :CR6)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_Articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from tab_Articoli'
      'where codice_articolo=:codice_articolo')
    ModifySQL.Strings = (
      'update tab_Articoli'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  DESCR2 = :DESCR2,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID = :UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID = :UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID = :UNITA_DI_MISURA3_ID,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  PESO_NETTO_KG = :PESO_NETTO_KG,'
      '  PESO_LORDO_KG = :PESO_LORDO_KG,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO = :GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE = :QTA_X_CONFEZIONE,'
      '  ANNO = :ANNO,'
      '  DESCR_AGGIUNTIVA_ID = :DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID = :TIPO_ARTICOLO_ID,'
      '  FATT_CONV1 = :FATT_CONV1,'
      '  FATT_CONV2 = :FATT_CONV2,'
      '  COSTO_ID = :COSTO_ID,'
      '  RICAVO_ID = :RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO = :GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID = :ASPETTO_ID,'
      '  RIORDINO_MESE_DA = :RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A = :RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA = :RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A = :RIORDINO_GIORNO_A,'
      '  STAGIONE_ID = :STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO = :GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID = :PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID = :CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE = :CODICE_BASE,'
      '  DERIVATO = :DERIVATO,'
      '  VARIANTE1_ID = :VARIANTE1_ID,'
      '  VARIANTE2_ID = :VARIANTE2_ID,'
      '  VARIANTE3_ID = :VARIANTE3_ID,'
      '  NUM_VARIANTI = :NUM_VARIANTI,'
      '  TIPO_COSTO_ID = :TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID = :TIPO_RICAVO_ID,'
      '  OMAGGIO = :OMAGGIO,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODE_BAR = :CODE_BAR,'
      '  DESCR_CODE_BAR = :DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO = :NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO = :NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA = :NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA = :FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA = :FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE = :PROV_ORDINE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO = :DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO = :NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID = :TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO = :CONTO_ACQUISTO,'
      '  CONTO_VENDITA = :CONTO_VENDITA,'
      '  UN_MIS2_VAL = :UN_MIS2_VAL,'
      '  UN_MIS3_VAL = :UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID = :CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID = :CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID = :CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO = :FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID = :CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE = :FLAG_ACCESSORIE,'
      '  DATAMOD = :DATAMOD,'
      '  SCONTO4 = :SCONTO4,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  P2IVATO = :P2IVATO,'
      '  P3IVATO = :P3IVATO,'
      '  P4IVATO = :P4IVATO,'
      '  P5IVATO = :P5IVATO,'
      '  SC21 = :SC21,'
      '  SC22 = :SC22,'
      '  SC23 = :SC23,'
      '  SC31 = :SC31,'
      '  SC32 = :SC32,'
      '  SC33 = :SC33,'
      '  SC41 = :SC41,'
      '  SC42 = :SC42,'
      '  SC43 = :SC43,'
      '  SC51 = :SC51,'
      '  SC52 = :SC52,'
      '  SC53 = :SC53,'
      '  R2 = :R2,'
      '  R3 = :R3,'
      '  R4 = :R4,'
      '  R5 = :R5,'
      '  IMP2 = :IMP2,'
      '  IMP3 = :IMP3,'
      '  IMP4 = :IMP4,'
      '  IMP5 = :IMP5,'
      '  RICARPREC = :RICARPREC,'
      '  P6IVATO = :P6IVATO,'
      '  IMP6 = :IMP6,'
      '  STRUTT = :STRUTT,'
      '  CA = :CA,'
      '  CG = :CG,'
      '  AG = :AG,'
      '  CA2 = :CA2,'
      '  CG2 = :CG2,'
      '  AG2 = :AG2,'
      '  CA3 = :CA3,'
      '  CG3 = :CG3,'
      '  AG3 = :AG3,'
      '  CA4 = :CA4,'
      '  CG4 = :CG4,'
      '  AG4 = :AG4,'
      '  CA5 = :CA5,'
      '  CG5 = :CG5,'
      '  AG5 = :AG5,'
      '  CA6 = :CA6,'
      '  CG6 = :CG6,'
      '  AG6 = :AG6,'
      '  ID_OFFERTA = :ID_OFFERTA,'
      '  CR = :CR,'
      '  CR2 = :CR2,'
      '  CR3 = :CR3,'
      '  CR4 = :CR4,'
      '  CR5 = :CR5,'
      '  CR6 = :CR6'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    DataSource = dsoRigheDoc
    Left = 152
    Top = 160
    object ibq_aggArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibq_aggArtDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object ibq_aggArtDESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object ibq_aggArtCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object ibq_aggArtUNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object ibq_aggArtUNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object ibq_aggArtUNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object ibq_aggArtSCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object ibq_aggArtSCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object ibq_aggArtSCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object ibq_aggArtPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object ibq_aggArtPESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object ibq_aggArtPESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object ibq_aggArtSCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object ibq_aggArtSCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object ibq_aggArtLOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object ibq_aggArtGG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object ibq_aggArtQTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object ibq_aggArtANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object ibq_aggArtDESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object ibq_aggArtPREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object ibq_aggArtCOSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object ibq_aggArtTIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object ibq_aggArtFATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object ibq_aggArtFATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object ibq_aggArtCOSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object ibq_aggArtRICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object ibq_aggArtGIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object ibq_aggArtASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object ibq_aggArtRIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object ibq_aggArtRIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object ibq_aggArtRIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object ibq_aggArtRIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object ibq_aggArtSTAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object ibq_aggArtGRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object ibq_aggArtPRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object ibq_aggArtCATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object ibq_aggArtCATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object ibq_aggArtCODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object ibq_aggArtDERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object ibq_aggArtVARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object ibq_aggArtVARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object ibq_aggArtVARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object ibq_aggArtNUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object ibq_aggArtTIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object ibq_aggArtTIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object ibq_aggArtOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object ibq_aggArtTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object ibq_aggArtCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object ibq_aggArtCODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object ibq_aggArtDESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object ibq_aggArtNON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object ibq_aggArtNON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object ibq_aggArtNOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object ibq_aggArtFATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object ibq_aggArtFATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object ibq_aggArtPROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object ibq_aggArtCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object ibq_aggArtDATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object ibq_aggArtNUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object ibq_aggArtTIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object ibq_aggArtCONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object ibq_aggArtCONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object ibq_aggArtUN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object ibq_aggArtUN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object ibq_aggArtCAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object ibq_aggArtCAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object ibq_aggArtCAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object ibq_aggArtFOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object ibq_aggArtCAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object ibq_aggArtFLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object ibq_aggArtDATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object ibq_aggArtSCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object ibq_aggArtPREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object ibq_aggArtP2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object ibq_aggArtP3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object ibq_aggArtP4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object ibq_aggArtP5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object ibq_aggArtSC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object ibq_aggArtSC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object ibq_aggArtSC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object ibq_aggArtSC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object ibq_aggArtSC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object ibq_aggArtSC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object ibq_aggArtSC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object ibq_aggArtSC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object ibq_aggArtSC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object ibq_aggArtSC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object ibq_aggArtSC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object ibq_aggArtSC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object ibq_aggArtR2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object ibq_aggArtR3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object ibq_aggArtR4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object ibq_aggArtR5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object ibq_aggArtIMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object ibq_aggArtIMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object ibq_aggArtIMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object ibq_aggArtIMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object ibq_aggArtRICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object ibq_aggArtP6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object ibq_aggArtIMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object ibq_aggArtSTRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object ibq_aggArtCA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object ibq_aggArtCG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object ibq_aggArtAG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object ibq_aggArtCA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object ibq_aggArtCG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object ibq_aggArtAG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object ibq_aggArtCA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object ibq_aggArtCG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object ibq_aggArtAG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object ibq_aggArtCA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object ibq_aggArtCG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object ibq_aggArtAG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object ibq_aggArtCA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object ibq_aggArtCG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object ibq_aggArtAG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object ibq_aggArtCA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object ibq_aggArtCG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object ibq_aggArtAG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object ibq_aggArtID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object ibq_aggArtCR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object ibq_aggArtCR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object ibq_aggArtCR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object ibq_aggArtCR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object ibq_aggArtCR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object ibq_aggArtCR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object ibqCont_Art: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from TAB_CONTABILE_ARTICOLO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    InsertSQL.Strings = (
      'insert into TAB_CONTABILE_ARTICOLO'
      
        '  (CODICE_ARTICOLO, DEPOSITO_ID, CLI_FOR_ID, TIPO_CLI_FOR_ID, DE' +
        'SCR, QTA_ACQUISTI, '
      
        '   VAL_ACQUISTI, QTA_VENDITA, VAL_VENDITA, QTA_ALTRE_ENTRATE, VA' +
        'L_ALTRE_ENTRATE, '
      
        '   QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLIENTE, VAL_RES' +
        'O_CLIENTE, '
      
        '   QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, QTA_ORDINATO, VAL_ORD' +
        'INATO, '
      
        '   QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QTA_EVASA_CLIENTE, VAL_EVAS' +
        'O_CLIENTE, '
      
        '   QTA_EVASA_FORNITORE, VAL_EVASO_FORNITORE, QTA_GIACENZA_INIZIA' +
        'LE, COSTO_GIACENZA_INIZIALE, '
      
        '   VAL_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, COSTO' +
        '_ULTIMO, '
      
        '   MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ, ULT_PREZZO_V' +
        'END, DATA_ULTIMO_ACQUISTO, '
      '   DATA_ULTIMA_VENDITA, PRETAGLIO)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DEPOSITO_ID, :CLI_FOR_ID, :TIPO_CLI_FOR_ID' +
        ', :DESCR, '
      
        '   :QTA_ACQUISTI, :VAL_ACQUISTI, :QTA_VENDITA, :VAL_VENDITA, :QT' +
        'A_ALTRE_ENTRATE, '
      
        '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_USCITE, :VAL_ALTRE_USCITA, :QT' +
        'A_RESO_CLIENTE, '
      
        '   :VAL_RESO_CLIENTE, :QTA_RESO_FORNITORE, :VAL_RESO_FORNITORE, ' +
        ':QTA_ORDINATO, '
      
        '   :VAL_ORDINATO, :QTA_IMPEGNATO, :VAL_QTA_IMPEGNATO, :QTA_EVASA' +
        '_CLIENTE, '
      
        '   :VAL_EVASO_CLIENTE, :QTA_EVASA_FORNITORE, :VAL_EVASO_FORNITOR' +
        'E, :QTA_GIACENZA_INIZIALE, '
      
        '   :COSTO_GIACENZA_INIZIALE, :VAL_GIACENZA_INIZIALE, :GIACENZA_A' +
        'TTUALE, '
      
        '   :DISPONIBILITA, :COSTO_ULTIMO, :MED_PREZZO_VEND, :ULT_COSTO_A' +
        'CQ, :MEDIO_COSTO_ACQ, '
      
        '   :ULT_PREZZO_VEND, :DATA_ULTIMO_ACQUISTO, :DATA_ULTIMA_VENDITA' +
        ', :PRETAGLIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DEPOSITO_ID,'
      '  CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID,'
      '  DESCR,'
      '  QTA_ACQUISTI,'
      '  VAL_ACQUISTI,'
      '  QTA_VENDITA,'
      '  VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO,'
      '  VAL_ORDINATO,'
      '  QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE,'
      '  DISPONIBILITA,'
      '  COSTO_ULTIMO,'
      '  MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO'
      'from TAB_CONTABILE_ARTICOLO '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID')
    SelectSQL.Strings = (
      'select TAB_CONTABILE_ARTICOLO.* from TAB_CONTABILE_ARTICOLO'
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO And DEPOSITO_ID=:DEP')
    ModifySQL.Strings = (
      'update TAB_CONTABILE_ARTICOLO'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  DESCR = :DESCR,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  VAL_VENDITA = :VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA = :VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO = :VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE = :COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE = :GIACENZA_ATTUALE,'
      '  DISPONIBILITA = :DISPONIBILITA,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  MED_PREZZO_VEND = :MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ = :ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ = :MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND = :ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO = :PRETAGLIO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    DataSource = dsoRigheDoc
    Left = 88
    Top = 160
    object ibqCont_ArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqCont_ArtDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object ibqCont_ArtCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object ibqCont_ArtTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object ibqCont_ArtDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 102
    end
    object ibqCont_ArtQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object ibqCont_ArtVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object ibqCont_ArtQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object ibqCont_ArtVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object ibqCont_ArtQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object ibqCont_ArtVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object ibqCont_ArtQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object ibqCont_ArtVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object ibqCont_ArtQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object ibqCont_ArtVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object ibqCont_ArtQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object ibqCont_ArtVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object ibqCont_ArtQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object ibqCont_ArtVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object ibqCont_ArtQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object ibqCont_ArtVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object ibqCont_ArtQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object ibqCont_ArtVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object ibqCont_ArtQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object ibqCont_ArtVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object ibqCont_ArtQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object ibqCont_ArtCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object ibqCont_ArtVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object ibqCont_ArtGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object ibqCont_ArtDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object ibqCont_ArtCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object ibqCont_ArtMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object ibqCont_ArtULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object ibqCont_ArtMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object ibqCont_ArtULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object ibqCont_ArtDATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object ibqCont_ArtDATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object ibqCont_ArtPRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TAB_DOCUMENTI_TEMP'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    InsertSQL.Strings = (
      'insert into TAB_DOCUMENTI_TEMP'
      
        '  (ID_DOCUMENTO, TESTATA_PN_ID, CAUSALE_DOC, TIPO_DOC, DA_FATTUR' +
        'ARE, CLIFOR_ID, '
      
        '   TIPO_CLIFOR, DEPOSITO, CONTRO_CLIFOR_ID, CONTRO_TIPO_CLIFOR, ' +
        'CONTRO_DEPOSITO, '
      
        '   CAUSALE_MAGAZZINO, CONTRO_CAUS_MAG, ATTIVITA, SUBATTIVITA, DA' +
        'TA_REGISTRAZIONE, '
      
        '   DATA_DOC, DATA_CONFERMA, DATA_EVASIONE, STATO_DOCUMENTO, STAT' +
        'O_CONTABILITA, '
      
        '   MONETA_ID, CAMBIO, KINGUA_ID, LISTINO, NS_RIFERIMENTO, VS_RIF' +
        'ERIMENTO, '
      
        '   CAUSALE_CONTABILE, CODICE_BOLL, PAGAMENTO_ID, BANCA_CLIFOR, B' +
        'ANCA_AZIENDA, '
      
        '   VETTORE1, VETTORE2, VETTORE3, PORTO, ASPETTO, SPEDIZIONE, PES' +
        'O_NETTO, '
      
        '   PESO_LORDO, CUBAGGIO, DESTINARIO, IMBALLO, SCONTO1, AGENTE_ID' +
        ', DATA_CONSEGNA, '
      
        '   NUM_DOC, NRCOLLI, SCONTO2, IMPORTO_SCONTO, NOTA, SOSPESO, IVA' +
        '_SOSPESA, '
      
        '   COD_IVA_ESENTE, COD_IVA_SPESE_BOLLI, COD_IVA_SPESE_INCASSO, C' +
        'OD_IVA_SPESE_IMVALLO, '
      
        '   COD_IVA_SPESE_CONTRASSEGNO, COD_IVA_SPESE_ACCESSIONE, COD_IVA' +
        '_SPESE_SPEDIZIONE, '
      
        '   ACCORPA_RIGHE, ATTIVITA2, SUBATTIVITA2, SOGGETTO_CEE, REPORT,' +
        ' RILEVA_ACCONTO, '
      
        '   ORA, FATT_ACCOMP, TIPO_FATT, ST_NOTE_CLIFOR, IVATO, STAMPATO,' +
        ' DATA_COMPETENZA_IVA, '
      
        '   MEZZO_TRASPORTO, TOT_PROVVIGIONE, TIPO_PROVVIGIONE, TOT_IMP_P' +
        'ROVVIGIONE, '
      
        '   CAST_MANUALE, NUM_DOC2, SERIE_DOC2, MESE_CONT, ALTRE_DERT_SI_' +
        'NO, SPESE_IMBALLO, '
      
        '   SPESE_BOLLI, SPESE_ACCESSORIE, SPESE_INCASSO, SPESE_SPEDIZION' +
        'E, SPESE_CONTRASS, '
      
        '   CAU_TRASP_ID, PER_ALTRA_DEST, IMPORTO_CON_IVA, TOTALE_MERCE, ' +
        'TOTALE_SERVIZI, '
      
        '   TOTALE, TOTALE_IVA, TOTALE_IVATO, TOTALE_SCONTI, TOTALE_EURO,' +
        ' TOTALE_EURO_IVATO, '
      
        '   CODIVA1, ALIVA1, IMPON1, IMPOSTA1, CODIVA2, ALIVA2, IMPON2, I' +
        'MPOSTA2, '
      
        '   CODIVA3, ALIVA3, IMPON3, IMPOSTA3, CODIVA4, ALIVA4, IMPON4, I' +
        'MPOSTA4, '
      
        '   CODIVA5, ALIVA5, IMPON5, IMPOSTA5, TOT_SPESE, ALTRA_DEST, SER' +
        'IE_DOC, '
      
        '   CLI_FOR_IND, ACCONTO, RATA1_IMPORTO, RATA2_IMPORTO, RATA3_IMP' +
        'ORTO, RATA4_IMPORTO, '
      
        '   RATA5_IMPORTO, RATA6_IMPORTO, TEL1, TEL2, TEL3, IVA_ESENTE, I' +
        'VA_ESENTE_ID, '
      
        '   VETTORE_IND, VETTORE_IND2, CLI_FOR_IND2, RATA1_DATA, RATA2_DA' +
        'TA, RATA3_DATA, '
      
        '   RATA4_DATA, RATA5_DATA, RATA6_DATA, PIANOCONTO_ID, ALTRA_DEST' +
        '2)'
      'values'
      
        '  (:ID_DOCUMENTO, :TESTATA_PN_ID, :CAUSALE_DOC, :TIPO_DOC, :DA_F' +
        'ATTURARE, '
      
        '   :CLIFOR_ID, :TIPO_CLIFOR, :DEPOSITO, :CONTRO_CLIFOR_ID, :CONT' +
        'RO_TIPO_CLIFOR, '
      
        '   :CONTRO_DEPOSITO, :CAUSALE_MAGAZZINO, :CONTRO_CAUS_MAG, :ATTI' +
        'VITA, :SUBATTIVITA, '
      
        '   :DATA_REGISTRAZIONE, :DATA_DOC, :DATA_CONFERMA, :DATA_EVASION' +
        'E, :STATO_DOCUMENTO, '
      
        '   :STATO_CONTABILITA, :MONETA_ID, :CAMBIO, :KINGUA_ID, :LISTINO' +
        ', :NS_RIFERIMENTO, '
      
        '   :VS_RIFERIMENTO, :CAUSALE_CONTABILE, :CODICE_BOLL, :PAGAMENTO' +
        '_ID, :BANCA_CLIFOR, '
      
        '   :BANCA_AZIENDA, :VETTORE1, :VETTORE2, :VETTORE3, :PORTO, :ASP' +
        'ETTO, :SPEDIZIONE, '
      
        '   :PESO_NETTO, :PESO_LORDO, :CUBAGGIO, :DESTINARIO, :IMBALLO, :' +
        'SCONTO1, '
      
        '   :AGENTE_ID, :DATA_CONSEGNA, :NUM_DOC, :NRCOLLI, :SCONTO2, :IM' +
        'PORTO_SCONTO, '
      
        '   :NOTA, :SOSPESO, :IVA_SOSPESA, :COD_IVA_ESENTE, :COD_IVA_SPES' +
        'E_BOLLI, '
      
        '   :COD_IVA_SPESE_INCASSO, :COD_IVA_SPESE_IMVALLO, :COD_IVA_SPES' +
        'E_CONTRASSEGNO, '
      
        '   :COD_IVA_SPESE_ACCESSIONE, :COD_IVA_SPESE_SPEDIZIONE, :ACCORP' +
        'A_RIGHE, '
      
        '   :ATTIVITA2, :SUBATTIVITA2, :SOGGETTO_CEE, :REPORT, :RILEVA_AC' +
        'CONTO, '
      
        '   :ORA, :FATT_ACCOMP, :TIPO_FATT, :ST_NOTE_CLIFOR, :IVATO, :STA' +
        'MPATO, '
      
        '   :DATA_COMPETENZA_IVA, :MEZZO_TRASPORTO, :TOT_PROVVIGIONE, :TI' +
        'PO_PROVVIGIONE, '
      
        '   :TOT_IMP_PROVVIGIONE, :CAST_MANUALE, :NUM_DOC2, :SERIE_DOC2, ' +
        ':MESE_CONT, '
      
        '   :ALTRE_DERT_SI_NO, :SPESE_IMBALLO, :SPESE_BOLLI, :SPESE_ACCES' +
        'SORIE, '
      
        '   :SPESE_INCASSO, :SPESE_SPEDIZIONE, :SPESE_CONTRASS, :CAU_TRAS' +
        'P_ID, :PER_ALTRA_DEST, '
      
        '   :IMPORTO_CON_IVA, :TOTALE_MERCE, :TOTALE_SERVIZI, :TOTALE, :T' +
        'OTALE_IVA, '
      
        '   :TOTALE_IVATO, :TOTALE_SCONTI, :TOTALE_EURO, :TOTALE_EURO_IVA' +
        'TO, :CODIVA1, '
      
        '   :ALIVA1, :IMPON1, :IMPOSTA1, :CODIVA2, :ALIVA2, :IMPON2, :IMP' +
        'OSTA2, '
      
        '   :CODIVA3, :ALIVA3, :IMPON3, :IMPOSTA3, :CODIVA4, :ALIVA4, :IM' +
        'PON4, :IMPOSTA4, '
      
        '   :CODIVA5, :ALIVA5, :IMPON5, :IMPOSTA5, :TOT_SPESE, :ALTRA_DES' +
        'T, :SERIE_DOC, '
      
        '   :CLI_FOR_IND, :ACCONTO, :RATA1_IMPORTO, :RATA2_IMPORTO, :RATA' +
        '3_IMPORTO, '
      
        '   :RATA4_IMPORTO, :RATA5_IMPORTO, :RATA6_IMPORTO, :TEL1, :TEL2,' +
        ' :TEL3, '
      
        '   :IVA_ESENTE, :IVA_ESENTE_ID, :VETTORE_IND, :VETTORE_IND2, :CL' +
        'I_FOR_IND2, '
      
        '   :RATA1_DATA, :RATA2_DATA, :RATA3_DATA, :RATA4_DATA, :RATA5_DA' +
        'TA, :RATA6_DATA, '
      '   :PIANOCONTO_ID, :ALTRA_DEST2)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOCUMENTO,'
      '  TESTATA_PN_ID,'
      '  CAUSALE_DOC,'
      '  TIPO_DOC,'
      '  DA_FATTURARE,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  DEPOSITO,'
      '  CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG,'
      '  ATTIVITA,'
      '  SUBATTIVITA,'
      '  DATA_REGISTRAZIONE,'
      '  DATA_DOC,'
      '  DATA_CONFERMA,'
      '  DATA_EVASIONE,'
      '  STATO_DOCUMENTO,'
      '  STATO_CONTABILITA,'
      '  MONETA_ID,'
      '  CAMBIO,'
      '  KINGUA_ID,'
      '  LISTINO,'
      '  NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE,'
      '  CODICE_BOLL,'
      '  PAGAMENTO_ID,'
      '  BANCA_CLIFOR,'
      '  BANCA_AZIENDA,'
      '  VETTORE1,'
      '  VETTORE2,'
      '  VETTORE3,'
      '  PORTO,'
      '  ASPETTO,'
      '  SPEDIZIONE,'
      '  PESO_NETTO,'
      '  PESO_LORDO,'
      '  CUBAGGIO,'
      '  DESTINARIO,'
      '  IMBALLO,'
      '  SCONTO1,'
      '  AGENTE_ID,'
      '  DATA_CONSEGNA,'
      '  NUM_DOC,'
      '  NRCOLLI,'
      '  SCONTO2,'
      '  IMPORTO_SCONTO,'
      '  NOTA,'
      '  SOSPESO,'
      '  IVA_SOSPESA,'
      '  COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE,'
      '  ATTIVITA2,'
      '  SUBATTIVITA2,'
      '  SOGGETTO_CEE,'
      '  REPORT,'
      '  RILEVA_ACCONTO,'
      '  ORA,'
      '  FATT_ACCOMP,'
      '  TIPO_FATT,'
      '  ST_NOTE_CLIFOR,'
      '  IVATO,'
      '  STAMPATO,'
      '  DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE,'
      '  NUM_DOC2,'
      '  SERIE_DOC2,'
      '  MESE_CONT,'
      '  ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO,'
      '  SPESE_BOLLI,'
      '  SPESE_ACCESSORIE,'
      '  SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS,'
      '  CAU_TRASP_ID,'
      '  PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA,'
      '  TOTALE_MERCE,'
      '  TOTALE_SERVIZI,'
      '  TOTALE,'
      '  TOTALE_IVA,'
      '  TOTALE_IVATO,'
      '  TOTALE_SCONTI,'
      '  TOTALE_EURO,'
      '  TOTALE_EURO_IVATO,'
      '  CODIVA1,'
      '  ALIVA1,'
      '  IMPON1,'
      '  IMPOSTA1,'
      '  CODIVA2,'
      '  ALIVA2,'
      '  IMPON2,'
      '  IMPOSTA2,'
      '  CODIVA3,'
      '  ALIVA3,'
      '  IMPON3,'
      '  IMPOSTA3,'
      '  CODIVA4,'
      '  ALIVA4,'
      '  IMPON4,'
      '  IMPOSTA4,'
      '  CODIVA5,'
      '  ALIVA5,'
      '  IMPON5,'
      '  IMPOSTA5,'
      '  TOT_SPESE,'
      '  ALTRA_DEST,'
      '  SERIE_DOC,'
      '  CLI_FOR_IND,'
      '  ACCONTO,'
      '  RATA1_IMPORTO,'
      '  RATA2_IMPORTO,'
      '  RATA3_IMPORTO,'
      '  RATA4_IMPORTO,'
      '  RATA5_IMPORTO,'
      '  RATA6_IMPORTO,'
      '  TEL1,'
      '  TEL2,'
      '  TEL3,'
      '  IVA_ESENTE,'
      '  IVA_ESENTE_ID,'
      '  VETTORE_IND,'
      '  VETTORE_IND2,'
      '  CLI_FOR_IND2,'
      '  RATA1_DATA,'
      '  RATA2_DATA,'
      '  RATA3_DATA,'
      '  RATA4_DATA,'
      '  RATA5_DATA,'
      '  RATA6_DATA,'
      '  PIANOCONTO_ID,'
      '  ALTRA_DEST2'
      'from TAB_DOCUMENTI_TEMP '
      'where'
      '  ID_DOCUMENTO = :ID_DOCUMENTO')
    SelectSQL.Strings = (
      
        'select TAB_DOCUMENTI_TEMP.*,TAB_CLI_FOR.DENOMINAZIONE AS CLIFORD' +
        'ESCR,TAB_CLI_FOR. PARTITA_IVA AS CliForPARTITAiva FROM TAB_DOCUM' +
        'ENTI_TEMP'
      
        'INNER JOIN TAB_CLI_FOR ON TAB_DOCUMENTI_TEMP.CLIFOR_ID =TAB_CLI_' +
        'FOR.ID_CLI_FOR'
      'WHERE TIPO_DOC = :parTipoDoc'
      'Order By DATA_DOC, Num_DOC')
    ModifySQL.Strings = (
      'update TAB_DOCUMENTI_TEMP'
      'set'
      '  ID_DOCUMENTO = :ID_DOCUMENTO,'
      '  TESTATA_PN_ID = :TESTATA_PN_ID,'
      '  CAUSALE_DOC = :CAUSALE_DOC,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  DA_FATTURARE = :DA_FATTURARE,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  DEPOSITO = :DEPOSITO,'
      '  CONTRO_CLIFOR_ID = :CONTRO_CLIFOR_ID,'
      '  CONTRO_TIPO_CLIFOR = :CONTRO_TIPO_CLIFOR,'
      '  CONTRO_DEPOSITO = :CONTRO_DEPOSITO,'
      '  CAUSALE_MAGAZZINO = :CAUSALE_MAGAZZINO,'
      '  CONTRO_CAUS_MAG = :CONTRO_CAUS_MAG,'
      '  ATTIVITA = :ATTIVITA,'
      '  SUBATTIVITA = :SUBATTIVITA,'
      '  DATA_REGISTRAZIONE = :DATA_REGISTRAZIONE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_CONFERMA = :DATA_CONFERMA,'
      '  DATA_EVASIONE = :DATA_EVASIONE,'
      '  STATO_DOCUMENTO = :STATO_DOCUMENTO,'
      '  STATO_CONTABILITA = :STATO_CONTABILITA,'
      '  MONETA_ID = :MONETA_ID,'
      '  CAMBIO = :CAMBIO,'
      '  KINGUA_ID = :KINGUA_ID,'
      '  LISTINO = :LISTINO,'
      '  NS_RIFERIMENTO = :NS_RIFERIMENTO,'
      '  VS_RIFERIMENTO = :VS_RIFERIMENTO,'
      '  CAUSALE_CONTABILE = :CAUSALE_CONTABILE,'
      '  CODICE_BOLL = :CODICE_BOLL,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  BANCA_CLIFOR = :BANCA_CLIFOR,'
      '  BANCA_AZIENDA = :BANCA_AZIENDA,'
      '  VETTORE1 = :VETTORE1,'
      '  VETTORE2 = :VETTORE2,'
      '  VETTORE3 = :VETTORE3,'
      '  PORTO = :PORTO,'
      '  ASPETTO = :ASPETTO,'
      '  SPEDIZIONE = :SPEDIZIONE,'
      '  PESO_NETTO = :PESO_NETTO,'
      '  PESO_LORDO = :PESO_LORDO,'
      '  CUBAGGIO = :CUBAGGIO,'
      '  DESTINARIO = :DESTINARIO,'
      '  IMBALLO = :IMBALLO,'
      '  SCONTO1 = :SCONTO1,'
      '  AGENTE_ID = :AGENTE_ID,'
      '  DATA_CONSEGNA = :DATA_CONSEGNA,'
      '  NUM_DOC = :NUM_DOC,'
      '  NRCOLLI = :NRCOLLI,'
      '  SCONTO2 = :SCONTO2,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  NOTA = :NOTA,'
      '  SOSPESO = :SOSPESO,'
      '  IVA_SOSPESA = :IVA_SOSPESA,'
      '  COD_IVA_ESENTE = :COD_IVA_ESENTE,'
      '  COD_IVA_SPESE_BOLLI = :COD_IVA_SPESE_BOLLI,'
      '  COD_IVA_SPESE_INCASSO = :COD_IVA_SPESE_INCASSO,'
      '  COD_IVA_SPESE_IMVALLO = :COD_IVA_SPESE_IMVALLO,'
      '  COD_IVA_SPESE_CONTRASSEGNO = :COD_IVA_SPESE_CONTRASSEGNO,'
      '  COD_IVA_SPESE_ACCESSIONE = :COD_IVA_SPESE_ACCESSIONE,'
      '  COD_IVA_SPESE_SPEDIZIONE = :COD_IVA_SPESE_SPEDIZIONE,'
      '  ACCORPA_RIGHE = :ACCORPA_RIGHE,'
      '  ATTIVITA2 = :ATTIVITA2,'
      '  SUBATTIVITA2 = :SUBATTIVITA2,'
      '  SOGGETTO_CEE = :SOGGETTO_CEE,'
      '  REPORT = :REPORT,'
      '  RILEVA_ACCONTO = :RILEVA_ACCONTO,'
      '  ORA = :ORA,'
      '  FATT_ACCOMP = :FATT_ACCOMP,'
      '  TIPO_FATT = :TIPO_FATT,'
      '  ST_NOTE_CLIFOR = :ST_NOTE_CLIFOR,'
      '  IVATO = :IVATO,'
      '  STAMPATO = :STAMPATO,'
      '  DATA_COMPETENZA_IVA = :DATA_COMPETENZA_IVA,'
      '  MEZZO_TRASPORTO = :MEZZO_TRASPORTO,'
      '  TOT_PROVVIGIONE = :TOT_PROVVIGIONE,'
      '  TIPO_PROVVIGIONE = :TIPO_PROVVIGIONE,'
      '  TOT_IMP_PROVVIGIONE = :TOT_IMP_PROVVIGIONE,'
      '  CAST_MANUALE = :CAST_MANUALE,'
      '  NUM_DOC2 = :NUM_DOC2,'
      '  SERIE_DOC2 = :SERIE_DOC2,'
      '  MESE_CONT = :MESE_CONT,'
      '  ALTRE_DERT_SI_NO = :ALTRE_DERT_SI_NO,'
      '  SPESE_IMBALLO = :SPESE_IMBALLO,'
      '  SPESE_BOLLI = :SPESE_BOLLI,'
      '  SPESE_ACCESSORIE = :SPESE_ACCESSORIE,'
      '  SPESE_INCASSO = :SPESE_INCASSO,'
      '  SPESE_SPEDIZIONE = :SPESE_SPEDIZIONE,'
      '  SPESE_CONTRASS = :SPESE_CONTRASS,'
      '  CAU_TRASP_ID = :CAU_TRASP_ID,'
      '  PER_ALTRA_DEST = :PER_ALTRA_DEST,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  TOTALE_MERCE = :TOTALE_MERCE,'
      '  TOTALE_SERVIZI = :TOTALE_SERVIZI,'
      '  TOTALE = :TOTALE,'
      '  TOTALE_IVA = :TOTALE_IVA,'
      '  TOTALE_IVATO = :TOTALE_IVATO,'
      '  TOTALE_SCONTI = :TOTALE_SCONTI,'
      '  TOTALE_EURO = :TOTALE_EURO,'
      '  TOTALE_EURO_IVATO = :TOTALE_EURO_IVATO,'
      '  CODIVA1 = :CODIVA1,'
      '  ALIVA1 = :ALIVA1,'
      '  IMPON1 = :IMPON1,'
      '  IMPOSTA1 = :IMPOSTA1,'
      '  CODIVA2 = :CODIVA2,'
      '  ALIVA2 = :ALIVA2,'
      '  IMPON2 = :IMPON2,'
      '  IMPOSTA2 = :IMPOSTA2,'
      '  CODIVA3 = :CODIVA3,'
      '  ALIVA3 = :ALIVA3,'
      '  IMPON3 = :IMPON3,'
      '  IMPOSTA3 = :IMPOSTA3,'
      '  CODIVA4 = :CODIVA4,'
      '  ALIVA4 = :ALIVA4,'
      '  IMPON4 = :IMPON4,'
      '  IMPOSTA4 = :IMPOSTA4,'
      '  CODIVA5 = :CODIVA5,'
      '  ALIVA5 = :ALIVA5,'
      '  IMPON5 = :IMPON5,'
      '  IMPOSTA5 = :IMPOSTA5,'
      '  TOT_SPESE = :TOT_SPESE,'
      '  ALTRA_DEST = :ALTRA_DEST,'
      '  SERIE_DOC = :SERIE_DOC,'
      '  CLI_FOR_IND = :CLI_FOR_IND,'
      '  ACCONTO = :ACCONTO,'
      '  RATA1_IMPORTO = :RATA1_IMPORTO,'
      '  RATA2_IMPORTO = :RATA2_IMPORTO,'
      '  RATA3_IMPORTO = :RATA3_IMPORTO,'
      '  RATA4_IMPORTO = :RATA4_IMPORTO,'
      '  RATA5_IMPORTO = :RATA5_IMPORTO,'
      '  RATA6_IMPORTO = :RATA6_IMPORTO,'
      '  TEL1 = :TEL1,'
      '  TEL2 = :TEL2,'
      '  TEL3 = :TEL3,'
      '  IVA_ESENTE = :IVA_ESENTE,'
      '  IVA_ESENTE_ID = :IVA_ESENTE_ID,'
      '  VETTORE_IND = :VETTORE_IND,'
      '  VETTORE_IND2 = :VETTORE_IND2,'
      '  CLI_FOR_IND2 = :CLI_FOR_IND2,'
      '  RATA1_DATA = :RATA1_DATA,'
      '  RATA2_DATA = :RATA2_DATA,'
      '  RATA3_DATA = :RATA3_DATA,'
      '  RATA4_DATA = :RATA4_DATA,'
      '  RATA5_DATA = :RATA5_DATA,'
      '  RATA6_DATA = :RATA6_DATA,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  ALTRA_DEST2 = :ALTRA_DEST2'
      'where'
      '  ID_DOCUMENTO = :OLD_ID_DOCUMENTO')
    Left = 16
    Top = 104
    object IBDataSet1ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."ID_DOCUMENTO"'
      Required = True
    end
    object IBDataSet1TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."TESTATA_PN_ID"'
    end
    object IBDataSet1CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAUSALE_DOC"'
      Size = 10
    end
    object IBDataSet1TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI_TEMP"."TIPO_DOC"'
    end
    object IBDataSet1DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI_TEMP"."DA_FATTURARE"'
    end
    object IBDataSet1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."CLIFOR_ID"'
    end
    object IBDataSet1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI_TEMP"."TIPO_CLIFOR"'
    end
    object IBDataSet1DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI_TEMP"."DEPOSITO"'
      Size = 3
    end
    object IBDataSet1CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."CONTRO_CLIFOR_ID"'
    end
    object IBDataSet1CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI_TEMP"."CONTRO_TIPO_CLIFOR"'
    end
    object IBDataSet1CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI_TEMP"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IBDataSet1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object IBDataSet1CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI_TEMP"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object IBDataSet1ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI_TEMP"."ATTIVITA"'
      Size = 3
    end
    object IBDataSet1SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI_TEMP"."SUBATTIVITA"'
      Size = 2
    end
    object IBDataSet1DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_REGISTRAZIONE"'
    end
    object IBDataSet1DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_DOC"'
    end
    object IBDataSet1DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_CONFERMA"'
    end
    object IBDataSet1DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_EVASIONE"'
    end
    object IBDataSet1STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."STATO_DOCUMENTO"'
    end
    object IBDataSet1STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI_TEMP"."STATO_CONTABILITA"'
    end
    object IBDataSet1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."MONETA_ID"'
      Size = 4
    end
    object IBDataSet1CAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAMBIO"'
    end
    object IBDataSet1KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."KINGUA_ID"'
      Size = 4
    end
    object IBDataSet1LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI_TEMP"."LISTINO"'
      Size = 10
    end
    object IBDataSet1NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."NS_RIFERIMENTO"'
      Size = 50
    end
    object IBDataSet1VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."VS_RIFERIMENTO"'
      Size = 50
    end
    object IBDataSet1CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object IBDataSet1CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODICE_BOLL"'
      Size = 10
    end
    object IBDataSet1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBDataSet1BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI_TEMP"."BANCA_CLIFOR"'
      Size = 5
    end
    object IBDataSet1BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI_TEMP"."BANCA_AZIENDA"'
      Size = 5
    end
    object IBDataSet1VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI_TEMP"."VETTORE1"'
      Size = 7
    end
    object IBDataSet1VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI_TEMP"."VETTORE2"'
      Size = 7
    end
    object IBDataSet1VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI_TEMP"."VETTORE3"'
      Size = 7
    end
    object IBDataSet1PORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."PORTO"'
      Size = 30
    end
    object IBDataSet1ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."ASPETTO"'
      Size = 4
    end
    object IBDataSet1SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPEDIZIONE"'
      Size = 4
    end
    object IBDataSet1PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."PESO_NETTO"'
    end
    object IBDataSet1PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI_TEMP"."PESO_LORDO"'
    end
    object IBDataSet1CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI_TEMP"."CUBAGGIO"'
    end
    object IBDataSet1DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI_TEMP"."DESTINARIO"'
      Size = 4
    end
    object IBDataSet1IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMBALLO"'
      Size = 4
    end
    object IBDataSet1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DOCUMENTI_TEMP"."SCONTO1"'
    end
    object IBDataSet1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."AGENTE_ID"'
      Size = 4
    end
    object IBDataSet1DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_CONSEGNA"'
    end
    object IBDataSet1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI_TEMP"."NUM_DOC"'
    end
    object IBDataSet1NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI_TEMP"."NRCOLLI"'
    end
    object IBDataSet1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DOCUMENTI_TEMP"."SCONTO2"'
    end
    object IBDataSet1IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPORTO_SCONTO"'
    end
    object IBDataSet1NOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI_TEMP"."NOTA"'
      Size = 100
    end
    object IBDataSet1SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI_TEMP"."SOSPESO"'
    end
    object IBDataSet1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI_TEMP"."IVA_SOSPESA"'
    end
    object IBDataSet1COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_ESENTE"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object IBDataSet1COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object IBDataSet1ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI_TEMP"."ACCORPA_RIGHE"'
    end
    object IBDataSet1ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI_TEMP"."ATTIVITA2"'
      Size = 2
    end
    object IBDataSet1SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI_TEMP"."SUBATTIVITA2"'
      Size = 2
    end
    object IBDataSet1SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI_TEMP"."SOGGETTO_CEE"'
    end
    object IBDataSet1REPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI_TEMP"."REPORT"'
      Size = 50
    end
    object IBDataSet1RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RILEVA_ACCONTO"'
    end
    object IBDataSet1ORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI_TEMP"."ORA"'
      Size = 5
    end
    object IBDataSet1FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI_TEMP"."FATT_ACCOMP"'
    end
    object IBDataSet1TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI_TEMP"."TIPO_FATT"'
    end
    object IBDataSet1ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI_TEMP"."ST_NOTE_CLIFOR"'
    end
    object IBDataSet1IVATO: TSmallintField
      FieldName = 'IVATO'
      Origin = '"TAB_DOCUMENTI_TEMP"."IVATO"'
    end
    object IBDataSet1STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI_TEMP"."STAMPATO"'
    end
    object IBDataSet1DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI_TEMP"."DATA_COMPETENZA_IVA"'
    end
    object IBDataSet1MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."MEZZO_TRASPORTO"'
    end
    object IBDataSet1TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOT_PROVVIGIONE"'
    end
    object IBDataSet1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TIPO_PROVVIGIONE"'
    end
    object IBDataSet1TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOT_IMP_PROVVIGIONE"'
    end
    object IBDataSet1CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAST_MANUALE"'
    end
    object IBDataSet1NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI_TEMP"."NUM_DOC2"'
    end
    object IBDataSet1SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI_TEMP"."SERIE_DOC2"'
      Size = 2
    end
    object IBDataSet1MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI_TEMP"."MESE_CONT"'
    end
    object IBDataSet1ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALTRE_DERT_SI_NO"'
    end
    object IBDataSet1SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_IMBALLO"'
    end
    object IBDataSet1SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_BOLLI"'
    end
    object IBDataSet1SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_ACCESSORIE"'
    end
    object IBDataSet1SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_INCASSO"'
    end
    object IBDataSet1SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_SPEDIZIONE"'
    end
    object IBDataSet1SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI_TEMP"."SPESE_CONTRASS"'
    end
    object IBDataSet1CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."CAU_TRASP_ID"'
      Size = 30
    end
    object IBDataSet1PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI_TEMP"."PER_ALTRA_DEST"'
    end
    object IBDataSet1IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPORTO_CON_IVA"'
    end
    object IBDataSet1TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_MERCE"'
    end
    object IBDataSet1TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_SERVIZI"'
    end
    object IBDataSet1TOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE"'
    end
    object IBDataSet1TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_IVA"'
    end
    object IBDataSet1TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_IVATO"'
    end
    object IBDataSet1TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_SCONTI"'
    end
    object IBDataSet1TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_EURO"'
    end
    object IBDataSet1TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOTALE_EURO_IVATO"'
    end
    object IBDataSet1CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODIVA1"'
      Size = 4
    end
    object IBDataSet1ALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALIVA1"'
    end
    object IBDataSet1IMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPON1"'
    end
    object IBDataSet1IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPOSTA1"'
    end
    object IBDataSet1CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODIVA2"'
      Size = 4
    end
    object IBDataSet1ALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALIVA2"'
    end
    object IBDataSet1IMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPON2"'
    end
    object IBDataSet1IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPOSTA2"'
    end
    object IBDataSet1CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODIVA3"'
      Size = 4
    end
    object IBDataSet1ALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALIVA3"'
    end
    object IBDataSet1IMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPON3"'
    end
    object IBDataSet1IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPOSTA3"'
    end
    object IBDataSet1CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODIVA4"'
      Size = 4
    end
    object IBDataSet1ALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALIVA4"'
    end
    object IBDataSet1IMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPON4"'
    end
    object IBDataSet1IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPOSTA4"'
    end
    object IBDataSet1CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI_TEMP"."CODIVA5"'
      Size = 4
    end
    object IBDataSet1ALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALIVA5"'
    end
    object IBDataSet1IMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPON5"'
    end
    object IBDataSet1IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI_TEMP"."IMPOSTA5"'
    end
    object IBDataSet1TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI_TEMP"."TOT_SPESE"'
    end
    object IBDataSet1ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALTRA_DEST"'
      Size = 100
    end
    object IBDataSet1SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI_TEMP"."SERIE_DOC"'
      Size = 10
    end
    object IBDataSet1CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI_TEMP"."CLI_FOR_IND"'
      Size = 255
    end
    object IBDataSet1ACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."ACCONTO"'
    end
    object IBDataSet1RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA1_IMPORTO"'
    end
    object IBDataSet1RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA2_IMPORTO"'
    end
    object IBDataSet1RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA3_IMPORTO"'
    end
    object IBDataSet1RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA4_IMPORTO"'
    end
    object IBDataSet1RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA5_IMPORTO"'
    end
    object IBDataSet1RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA6_IMPORTO"'
    end
    object IBDataSet1TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI_TEMP"."TEL1"'
      Size = 15
    end
    object IBDataSet1TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI_TEMP"."TEL2"'
      Size = 15
    end
    object IBDataSet1TEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI_TEMP"."TEL3"'
      Size = 15
    end
    object IBDataSet1IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI_TEMP"."IVA_ESENTE"'
    end
    object IBDataSet1IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."IVA_ESENTE_ID"'
    end
    object IBDataSet1VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI_TEMP"."VETTORE_IND"'
      Size = 100
    end
    object IBDataSet1VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI_TEMP"."VETTORE_IND2"'
      Size = 100
    end
    object IBDataSet1CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI_TEMP"."CLI_FOR_IND2"'
      Size = 255
    end
    object IBDataSet1RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA1_DATA"'
    end
    object IBDataSet1RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA2_DATA"'
    end
    object IBDataSet1RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA3_DATA"'
    end
    object IBDataSet1RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA4_DATA"'
    end
    object IBDataSet1RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA5_DATA"'
    end
    object IBDataSet1RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI_TEMP"."RATA6_DATA"'
    end
    object IBDataSet1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DOCUMENTI_TEMP"."PIANOCONTO_ID"'
    end
    object IBDataSet1ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI_TEMP"."ALTRA_DEST2"'
      Size = 100
    end
    object IBDataSet1CLIFORDESCR: TIBStringField
      FieldName = 'CLIFORDESCR'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object IBDataSet1CLIFORPARTITAIVA: TIBStringField
      FieldName = 'CLIFORPARTITAIVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 48
    Top = 104
  end
  object IBDataSet2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TAB_DET_DOC_TEMP'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into TAB_DET_DOC_TEMP'
      
        '  (ID_DOC_DET, TIPO_RIGA, CODICE_ARTICOLO, DESCR, COSTO, COSTOIN' +
        'VALUTA, '
      
        '   UNITA_MISURA, FATTCONV, QTA_UM, QUANTITA, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   SCONTO4, IMPORTO_SCONTO, IMPORTO, IMPORTOINVALUTA, OMAGGIO, D' +
        'EP, SCONTO_EQ, '
      
        '   PERC_PROVV, TIPO_SERVIZIO, IVATO, IMPORTO_CON_IVA, CODICE_IVA' +
        '_ID, DATA_REG, '
      
        '   RIF_A, RIF_A_PRE, RIF_A_ORD, RIF_A_DDT, RIF_ID_DOC_DET, RIF_D' +
        'DT_ID_DOC, '
      
        '   RIF_DDT_DATA_DOC, RIF_ORD_ID_DOC, RIF_ORD_DATA_DOC, RIF_PRE_I' +
        'D_DOC, '
      
        '   RIF_PRE_DATA_DOC, PIANOCONTO_ID, RIF_PRE_NUM_DOC, RIF_ORD_NUM' +
        '_DOC, RIF_DDT_NUM_DOC, '
      
        '   OP_QTA_DISPONIBILE, OP_VAL_DISPONIBILE, OP_QTA_GIACENZA, OP_V' +
        'AL_GIACENZA, '
      
        '   DOC_ID, TOTCOLLI, TOTSCAT, PREZZOLIST, SCHEDA, PASSATA, COL, ' +
        'A, B, C, '
      '   NUM_RIGA_ID)'
      'values'
      
        '  (:ID_DOC_DET, :TIPO_RIGA, :CODICE_ARTICOLO, :DESCR, :COSTO, :C' +
        'OSTOINVALUTA, '
      
        '   :UNITA_MISURA, :FATTCONV, :QTA_UM, :QUANTITA, :SCONTO1, :SCON' +
        'TO2, :SCONTO3, '
      
        '   :SCONTO4, :IMPORTO_SCONTO, :IMPORTO, :IMPORTOINVALUTA, :OMAGG' +
        'IO, :DEP, '
      
        '   :SCONTO_EQ, :PERC_PROVV, :TIPO_SERVIZIO, :IVATO, :IMPORTO_CON' +
        '_IVA, :CODICE_IVA_ID, '
      
        '   :DATA_REG, :RIF_A, :RIF_A_PRE, :RIF_A_ORD, :RIF_A_DDT, :RIF_I' +
        'D_DOC_DET, '
      
        '   :RIF_DDT_ID_DOC, :RIF_DDT_DATA_DOC, :RIF_ORD_ID_DOC, :RIF_ORD' +
        '_DATA_DOC, '
      
        '   :RIF_PRE_ID_DOC, :RIF_PRE_DATA_DOC, :PIANOCONTO_ID, :RIF_PRE_' +
        'NUM_DOC, '
      
        '   :RIF_ORD_NUM_DOC, :RIF_DDT_NUM_DOC, :OP_QTA_DISPONIBILE, :OP_' +
        'VAL_DISPONIBILE, '
      
        '   :OP_QTA_GIACENZA, :OP_VAL_GIACENZA, :DOC_ID, :TOTCOLLI, :TOTS' +
        'CAT, :PREZZOLIST, '
      '   :SCHEDA, :PASSATA, :COL, :A, :B, :C, :NUM_RIGA_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DOC_DET,'
      '  TIPO_RIGA,'
      '  CODICE_ARTICOLO,'
      '  DESCR,'
      '  COSTO,'
      '  COSTOINVALUTA,'
      '  UNITA_MISURA,'
      '  FATTCONV,'
      '  QTA_UM,'
      '  QUANTITA,'
      '  SCONTO1,'
      '  SCONTO2,'
      '  SCONTO3,'
      '  SCONTO4,'
      '  IMPORTO_SCONTO,'
      '  IMPORTO,'
      '  IMPORTOINVALUTA,'
      '  OMAGGIO,'
      '  DEP,'
      '  SCONTO_EQ,'
      '  PERC_PROVV,'
      '  TIPO_SERVIZIO,'
      '  IVATO,'
      '  IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID,'
      '  DATA_REG,'
      '  RIF_A,'
      '  RIF_A_PRE,'
      '  RIF_A_ORD,'
      '  RIF_A_DDT,'
      '  RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA,'
      '  DOC_ID,'
      '  TOTCOLLI,'
      '  TOTSCAT,'
      '  PREZZOLIST,'
      '  SCHEDA,'
      '  PASSATA,'
      '  COL,'
      '  A,'
      '  B,'
      '  C,'
      '  NUM_RIGA_ID'
      'from TAB_DET_DOC_TEMP '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'select * from TAB_DET_DOC_TEMP'
      'Where DOC_ID =:ID_Documento'
      'Order by DOC_ID,NUM_RIGA_ID,codice_Articolo')
    ModifySQL.Strings = (
      'update TAB_DET_DOC_TEMP'
      'set'
      '  ID_DOC_DET = :ID_DOC_DET,'
      '  TIPO_RIGA = :TIPO_RIGA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  COSTO = :COSTO,'
      '  COSTOINVALUTA = :COSTOINVALUTA,'
      '  UNITA_MISURA = :UNITA_MISURA,'
      '  FATTCONV = :FATTCONV,'
      '  QTA_UM = :QTA_UM,'
      '  QUANTITA = :QUANTITA,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  SCONTO4 = :SCONTO4,'
      '  IMPORTO_SCONTO = :IMPORTO_SCONTO,'
      '  IMPORTO = :IMPORTO,'
      '  IMPORTOINVALUTA = :IMPORTOINVALUTA,'
      '  OMAGGIO = :OMAGGIO,'
      '  DEP = :DEP,'
      '  SCONTO_EQ = :SCONTO_EQ,'
      '  PERC_PROVV = :PERC_PROVV,'
      '  TIPO_SERVIZIO = :TIPO_SERVIZIO,'
      '  IVATO = :IVATO,'
      '  IMPORTO_CON_IVA = :IMPORTO_CON_IVA,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  DATA_REG = :DATA_REG,'
      '  RIF_A = :RIF_A,'
      '  RIF_A_PRE = :RIF_A_PRE,'
      '  RIF_A_ORD = :RIF_A_ORD,'
      '  RIF_A_DDT = :RIF_A_DDT,'
      '  RIF_ID_DOC_DET = :RIF_ID_DOC_DET,'
      '  RIF_DDT_ID_DOC = :RIF_DDT_ID_DOC,'
      '  RIF_DDT_DATA_DOC = :RIF_DDT_DATA_DOC,'
      '  RIF_ORD_ID_DOC = :RIF_ORD_ID_DOC,'
      '  RIF_ORD_DATA_DOC = :RIF_ORD_DATA_DOC,'
      '  RIF_PRE_ID_DOC = :RIF_PRE_ID_DOC,'
      '  RIF_PRE_DATA_DOC = :RIF_PRE_DATA_DOC,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  RIF_PRE_NUM_DOC = :RIF_PRE_NUM_DOC,'
      '  RIF_ORD_NUM_DOC = :RIF_ORD_NUM_DOC,'
      '  RIF_DDT_NUM_DOC = :RIF_DDT_NUM_DOC,'
      '  OP_QTA_DISPONIBILE = :OP_QTA_DISPONIBILE,'
      '  OP_VAL_DISPONIBILE = :OP_VAL_DISPONIBILE,'
      '  OP_QTA_GIACENZA = :OP_QTA_GIACENZA,'
      '  OP_VAL_GIACENZA = :OP_VAL_GIACENZA,'
      '  DOC_ID = :DOC_ID,'
      '  TOTCOLLI = :TOTCOLLI,'
      '  TOTSCAT = :TOTSCAT,'
      '  PREZZOLIST = :PREZZOLIST,'
      '  SCHEDA = :SCHEDA,'
      '  PASSATA = :PASSATA,'
      '  COL = :COL,'
      '  A = :A,'
      '  B = :B,'
      '  C = :C,'
      '  NUM_RIGA_ID = :NUM_RIGA_ID'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    DataSource = DataSource1
    Left = 80
    Top = 104
    object IBDataSet2ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC_TEMP"."ID_DOC_DET"'
    end
    object IBDataSet2TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC_TEMP"."TIPO_RIGA"'
    end
    object IBDataSet2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC_TEMP"."CODICE_ARTICOLO"'
    end
    object IBDataSet2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC_TEMP"."DESCR"'
      Size = 100
    end
    object IBDataSet2COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC_TEMP"."COSTO"'
    end
    object IBDataSet2COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC_TEMP"."COSTOINVALUTA"'
    end
    object IBDataSet2UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC_TEMP"."UNITA_MISURA"'
      Size = 3
    end
    object IBDataSet2FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC_TEMP"."FATTCONV"'
    end
    object IBDataSet2QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC_TEMP"."QTA_UM"'
    end
    object IBDataSet2QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC_TEMP"."QUANTITA"'
    end
    object IBDataSet2SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC_TEMP"."SCONTO1"'
    end
    object IBDataSet2SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC_TEMP"."SCONTO2"'
    end
    object IBDataSet2SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC_TEMP"."SCONTO3"'
    end
    object IBDataSet2SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC_TEMP"."SCONTO4"'
    end
    object IBDataSet2IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC_TEMP"."IMPORTO_SCONTO"'
    end
    object IBDataSet2IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC_TEMP"."IMPORTO"'
    end
    object IBDataSet2IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC_TEMP"."IMPORTOINVALUTA"'
    end
    object IBDataSet2OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC_TEMP"."OMAGGIO"'
    end
    object IBDataSet2DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC_TEMP"."DEP"'
      Size = 4
    end
    object IBDataSet2SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC_TEMP"."SCONTO_EQ"'
    end
    object IBDataSet2PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC_TEMP"."PERC_PROVV"'
    end
    object IBDataSet2TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC_TEMP"."TIPO_SERVIZIO"'
      Size = 25
    end
    object IBDataSet2IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC_TEMP"."IVATO"'
    end
    object IBDataSet2IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC_TEMP"."IMPORTO_CON_IVA"'
    end
    object IBDataSet2CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC_TEMP"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBDataSet2DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC_TEMP"."DATA_REG"'
    end
    object IBDataSet2RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_A"'
    end
    object IBDataSet2RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_A_PRE"'
    end
    object IBDataSet2RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_A_ORD"'
    end
    object IBDataSet2RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_A_DDT"'
    end
    object IBDataSet2RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_ID_DOC_DET"'
    end
    object IBDataSet2RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_DDT_ID_DOC"'
    end
    object IBDataSet2RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_DDT_DATA_DOC"'
    end
    object IBDataSet2RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_ORD_ID_DOC"'
    end
    object IBDataSet2RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_ORD_DATA_DOC"'
    end
    object IBDataSet2RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_PRE_ID_DOC"'
    end
    object IBDataSet2RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_PRE_DATA_DOC"'
    end
    object IBDataSet2PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC_TEMP"."PIANOCONTO_ID"'
    end
    object IBDataSet2RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_PRE_NUM_DOC"'
    end
    object IBDataSet2RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_ORD_NUM_DOC"'
    end
    object IBDataSet2RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC_TEMP"."RIF_DDT_NUM_DOC"'
    end
    object IBDataSet2OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC_TEMP"."OP_QTA_DISPONIBILE"'
    end
    object IBDataSet2OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC_TEMP"."OP_VAL_DISPONIBILE"'
    end
    object IBDataSet2OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC_TEMP"."OP_QTA_GIACENZA"'
    end
    object IBDataSet2OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC_TEMP"."OP_VAL_GIACENZA"'
    end
    object IBDataSet2DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC_TEMP"."DOC_ID"'
      Required = True
    end
    object IBDataSet2TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC_TEMP"."TOTCOLLI"'
      Size = 3
    end
    object IBDataSet2TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC_TEMP"."TOTSCAT"'
    end
    object IBDataSet2PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC_TEMP"."PREZZOLIST"'
    end
    object IBDataSet2SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC_TEMP"."SCHEDA"'
    end
    object IBDataSet2PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC_TEMP"."PASSATA"'
      Size = 1
    end
    object IBDataSet2COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC_TEMP"."COL"'
      Size = 50
    end
    object IBDataSet2A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC_TEMP"."A"'
      Size = 30
    end
    object IBDataSet2B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC_TEMP"."B"'
      Size = 30
    end
    object IBDataSet2C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC_TEMP"."C"'
      Size = 30
    end
    object IBDataSet2NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC_TEMP"."NUM_RIGA_ID"'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBDataSet2
    Left = 120
    Top = 104
  end
  object ibq_aggArt_tmp: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from tab_Articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_Articoli'
      
        '  (CODICE_ARTICOLO, DESCR, DESCR2, CODICE_IVA_ID, UNITA_DI_MISUR' +
        'A1_ID, '
      
        '   UNITA_DI_MISURA2_ID, UNITA_DI_MISURA3_ID, SCONTO1, SCONTO2, S' +
        'CONTO3, '
      
        '   PROVVIGIONE, PESO_NETTO_KG, PESO_LORDO_KG, SCORTA_MIN, SCORTA' +
        '_MAX, LOTTO_RIORDINO, '
      
        '   GG_APPROVVIGIONAMENTO, QTA_X_CONFEZIONE, ANNO, DESCR_AGGIUNTI' +
        'VA_ID, '
      
        '   PREZZO_BASE, COSTO_STANDART, TIPO_ARTICOLO_ID, FATT_CONV1, FA' +
        'TT_CONV2, '
      
        '   COSTO_ID, RICAVO_ID, GIORNI_MAX_INVENDUTO, ASPETTO_ID, RIORDI' +
        'NO_MESE_DA, '
      
        '   RIORDINO_MESE_A, RIORDINO_GIORNO_DA, RIORDINO_GIORNO_A, STAGI' +
        'ONE_ID, '
      
        '   GRUPPO_ALTERNATIVO, PRODUTTORE_ID, CATEGORIA_ARTICOLO_ID, CAT' +
        'EGORIA_MERCEOLOGICA_ID, '
      
        '   CODICE_BASE, DERIVATO, VARIANTE1_ID, VARIANTE2_ID, VARIANTE3_' +
        'ID, NUM_VARIANTI, '
      
        '   TIPO_COSTO_ID, TIPO_RICAVO_ID, OMAGGIO, TIPO_CLI_FOR_ID, CLI_' +
        'FOR_ID, '
      
        '   CODE_BAR, DESCR_CODE_BAR, NON_STAMPA_INVENTARIO, NON_STAMPA_R' +
        'EGISTRO, '
      
        '   NOMENCLATURA, FATT_CONV1_NOMENCLATURA, FATT_CONV2_NOMENCLATUR' +
        'A, PROV_ORDINE, '
      
        '   COSTO_ULTIMO, DATA_COSTO_ULTIMO, NUM_REPARTO, TIPO_CODE_BAR_I' +
        'D, CONTO_ACQUISTO, '
      
        '   CONTO_VENDITA, UN_MIS2_VAL, UN_MIS3_VAL, CAT_ART_FAMIGLIA_ID,' +
        ' CAT_ART_GRUPPO_ID, '
      
        '   CAT_ART_MARCA_ID, FOTO_PERCORSO, CAT_ART_TIPO_ID, FLAG_ACCESS' +
        'ORIE, DATAMOD, '
      
        '   SCONTO4, PREZZO_IVATO, P2IVATO, P3IVATO, P4IVATO, P5IVATO, SC' +
        '21, SC22, '
      
        '   SC23, SC31, SC32, SC33, SC41, SC42, SC43, SC51, SC52, SC53, R' +
        '2, R3, '
      
        '   R4, R5, IMP2, IMP3, IMP4, IMP5, RICARPREC, P6IVATO, IMP6, STR' +
        'UTT, CA, '
      
        '   CG, AG, CA2, CG2, AG2, CA3, CG3, AG3, CA4, CG4, AG4, CA5, CG5' +
        ', AG5, '
      '   CA6, CG6, AG6, ID_OFFERTA, CR, CR2, CR3, CR4, CR5, CR6)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DESCR, :DESCR2, :CODICE_IVA_ID, :UNITA_DI_' +
        'MISURA1_ID, '
      
        '   :UNITA_DI_MISURA2_ID, :UNITA_DI_MISURA3_ID, :SCONTO1, :SCONTO' +
        '2, :SCONTO3, '
      
        '   :PROVVIGIONE, :PESO_NETTO_KG, :PESO_LORDO_KG, :SCORTA_MIN, :S' +
        'CORTA_MAX, '
      
        '   :LOTTO_RIORDINO, :GG_APPROVVIGIONAMENTO, :QTA_X_CONFEZIONE, :' +
        'ANNO, :DESCR_AGGIUNTIVA_ID, '
      
        '   :PREZZO_BASE, :COSTO_STANDART, :TIPO_ARTICOLO_ID, :FATT_CONV1' +
        ', :FATT_CONV2, '
      
        '   :COSTO_ID, :RICAVO_ID, :GIORNI_MAX_INVENDUTO, :ASPETTO_ID, :R' +
        'IORDINO_MESE_DA, '
      
        '   :RIORDINO_MESE_A, :RIORDINO_GIORNO_DA, :RIORDINO_GIORNO_A, :S' +
        'TAGIONE_ID, '
      
        '   :GRUPPO_ALTERNATIVO, :PRODUTTORE_ID, :CATEGORIA_ARTICOLO_ID, ' +
        ':CATEGORIA_MERCEOLOGICA_ID, '
      
        '   :CODICE_BASE, :DERIVATO, :VARIANTE1_ID, :VARIANTE2_ID, :VARIA' +
        'NTE3_ID, '
      
        '   :NUM_VARIANTI, :TIPO_COSTO_ID, :TIPO_RICAVO_ID, :OMAGGIO, :TI' +
        'PO_CLI_FOR_ID, '
      
        '   :CLI_FOR_ID, :CODE_BAR, :DESCR_CODE_BAR, :NON_STAMPA_INVENTAR' +
        'IO, :NON_STAMPA_REGISTRO, '
      
        '   :NOMENCLATURA, :FATT_CONV1_NOMENCLATURA, :FATT_CONV2_NOMENCLA' +
        'TURA, :PROV_ORDINE, '
      
        '   :COSTO_ULTIMO, :DATA_COSTO_ULTIMO, :NUM_REPARTO, :TIPO_CODE_B' +
        'AR_ID, '
      
        '   :CONTO_ACQUISTO, :CONTO_VENDITA, :UN_MIS2_VAL, :UN_MIS3_VAL, ' +
        ':CAT_ART_FAMIGLIA_ID, '
      
        '   :CAT_ART_GRUPPO_ID, :CAT_ART_MARCA_ID, :FOTO_PERCORSO, :CAT_A' +
        'RT_TIPO_ID, '
      
        '   :FLAG_ACCESSORIE, :DATAMOD, :SCONTO4, :PREZZO_IVATO, :P2IVATO' +
        ', :P3IVATO, '
      
        '   :P4IVATO, :P5IVATO, :SC21, :SC22, :SC23, :SC31, :SC32, :SC33,' +
        ' :SC41, '
      
        '   :SC42, :SC43, :SC51, :SC52, :SC53, :R2, :R3, :R4, :R5, :IMP2,' +
        ' :IMP3, '
      
        '   :IMP4, :IMP5, :RICARPREC, :P6IVATO, :IMP6, :STRUTT, :CA, :CG,' +
        ' :AG, :CA2, '
      
        '   :CG2, :AG2, :CA3, :CG3, :AG3, :CA4, :CG4, :AG4, :CA5, :CG5, :' +
        'AG5, :CA6, '
      '   :CG6, :AG6, :ID_OFFERTA, :CR, :CR2, :CR3, :CR4, :CR5, :CR6)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_Articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from tab_Articoli'
      'where codice_articolo=:codice_articolo')
    ModifySQL.Strings = (
      'update tab_Articoli'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR = :DESCR,'
      '  DESCR2 = :DESCR2,'
      '  CODICE_IVA_ID = :CODICE_IVA_ID,'
      '  UNITA_DI_MISURA1_ID = :UNITA_DI_MISURA1_ID,'
      '  UNITA_DI_MISURA2_ID = :UNITA_DI_MISURA2_ID,'
      '  UNITA_DI_MISURA3_ID = :UNITA_DI_MISURA3_ID,'
      '  SCONTO1 = :SCONTO1,'
      '  SCONTO2 = :SCONTO2,'
      '  SCONTO3 = :SCONTO3,'
      '  PROVVIGIONE = :PROVVIGIONE,'
      '  PESO_NETTO_KG = :PESO_NETTO_KG,'
      '  PESO_LORDO_KG = :PESO_LORDO_KG,'
      '  SCORTA_MIN = :SCORTA_MIN,'
      '  SCORTA_MAX = :SCORTA_MAX,'
      '  LOTTO_RIORDINO = :LOTTO_RIORDINO,'
      '  GG_APPROVVIGIONAMENTO = :GG_APPROVVIGIONAMENTO,'
      '  QTA_X_CONFEZIONE = :QTA_X_CONFEZIONE,'
      '  ANNO = :ANNO,'
      '  DESCR_AGGIUNTIVA_ID = :DESCR_AGGIUNTIVA_ID,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART,'
      '  TIPO_ARTICOLO_ID = :TIPO_ARTICOLO_ID,'
      '  FATT_CONV1 = :FATT_CONV1,'
      '  FATT_CONV2 = :FATT_CONV2,'
      '  COSTO_ID = :COSTO_ID,'
      '  RICAVO_ID = :RICAVO_ID,'
      '  GIORNI_MAX_INVENDUTO = :GIORNI_MAX_INVENDUTO,'
      '  ASPETTO_ID = :ASPETTO_ID,'
      '  RIORDINO_MESE_DA = :RIORDINO_MESE_DA,'
      '  RIORDINO_MESE_A = :RIORDINO_MESE_A,'
      '  RIORDINO_GIORNO_DA = :RIORDINO_GIORNO_DA,'
      '  RIORDINO_GIORNO_A = :RIORDINO_GIORNO_A,'
      '  STAGIONE_ID = :STAGIONE_ID,'
      '  GRUPPO_ALTERNATIVO = :GRUPPO_ALTERNATIVO,'
      '  PRODUTTORE_ID = :PRODUTTORE_ID,'
      '  CATEGORIA_ARTICOLO_ID = :CATEGORIA_ARTICOLO_ID,'
      '  CATEGORIA_MERCEOLOGICA_ID = :CATEGORIA_MERCEOLOGICA_ID,'
      '  CODICE_BASE = :CODICE_BASE,'
      '  DERIVATO = :DERIVATO,'
      '  VARIANTE1_ID = :VARIANTE1_ID,'
      '  VARIANTE2_ID = :VARIANTE2_ID,'
      '  VARIANTE3_ID = :VARIANTE3_ID,'
      '  NUM_VARIANTI = :NUM_VARIANTI,'
      '  TIPO_COSTO_ID = :TIPO_COSTO_ID,'
      '  TIPO_RICAVO_ID = :TIPO_RICAVO_ID,'
      '  OMAGGIO = :OMAGGIO,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  CODE_BAR = :CODE_BAR,'
      '  DESCR_CODE_BAR = :DESCR_CODE_BAR,'
      '  NON_STAMPA_INVENTARIO = :NON_STAMPA_INVENTARIO,'
      '  NON_STAMPA_REGISTRO = :NON_STAMPA_REGISTRO,'
      '  NOMENCLATURA = :NOMENCLATURA,'
      '  FATT_CONV1_NOMENCLATURA = :FATT_CONV1_NOMENCLATURA,'
      '  FATT_CONV2_NOMENCLATURA = :FATT_CONV2_NOMENCLATURA,'
      '  PROV_ORDINE = :PROV_ORDINE,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  DATA_COSTO_ULTIMO = :DATA_COSTO_ULTIMO,'
      '  NUM_REPARTO = :NUM_REPARTO,'
      '  TIPO_CODE_BAR_ID = :TIPO_CODE_BAR_ID,'
      '  CONTO_ACQUISTO = :CONTO_ACQUISTO,'
      '  CONTO_VENDITA = :CONTO_VENDITA,'
      '  UN_MIS2_VAL = :UN_MIS2_VAL,'
      '  UN_MIS3_VAL = :UN_MIS3_VAL,'
      '  CAT_ART_FAMIGLIA_ID = :CAT_ART_FAMIGLIA_ID,'
      '  CAT_ART_GRUPPO_ID = :CAT_ART_GRUPPO_ID,'
      '  CAT_ART_MARCA_ID = :CAT_ART_MARCA_ID,'
      '  FOTO_PERCORSO = :FOTO_PERCORSO,'
      '  CAT_ART_TIPO_ID = :CAT_ART_TIPO_ID,'
      '  FLAG_ACCESSORIE = :FLAG_ACCESSORIE,'
      '  DATAMOD = :DATAMOD,'
      '  SCONTO4 = :SCONTO4,'
      '  PREZZO_IVATO = :PREZZO_IVATO,'
      '  P2IVATO = :P2IVATO,'
      '  P3IVATO = :P3IVATO,'
      '  P4IVATO = :P4IVATO,'
      '  P5IVATO = :P5IVATO,'
      '  SC21 = :SC21,'
      '  SC22 = :SC22,'
      '  SC23 = :SC23,'
      '  SC31 = :SC31,'
      '  SC32 = :SC32,'
      '  SC33 = :SC33,'
      '  SC41 = :SC41,'
      '  SC42 = :SC42,'
      '  SC43 = :SC43,'
      '  SC51 = :SC51,'
      '  SC52 = :SC52,'
      '  SC53 = :SC53,'
      '  R2 = :R2,'
      '  R3 = :R3,'
      '  R4 = :R4,'
      '  R5 = :R5,'
      '  IMP2 = :IMP2,'
      '  IMP3 = :IMP3,'
      '  IMP4 = :IMP4,'
      '  IMP5 = :IMP5,'
      '  RICARPREC = :RICARPREC,'
      '  P6IVATO = :P6IVATO,'
      '  IMP6 = :IMP6,'
      '  STRUTT = :STRUTT,'
      '  CA = :CA,'
      '  CG = :CG,'
      '  AG = :AG,'
      '  CA2 = :CA2,'
      '  CG2 = :CG2,'
      '  AG2 = :AG2,'
      '  CA3 = :CA3,'
      '  CG3 = :CG3,'
      '  AG3 = :AG3,'
      '  CA4 = :CA4,'
      '  CG4 = :CG4,'
      '  AG4 = :AG4,'
      '  CA5 = :CA5,'
      '  CG5 = :CG5,'
      '  AG5 = :AG5,'
      '  CA6 = :CA6,'
      '  CG6 = :CG6,'
      '  AG6 = :AG6,'
      '  ID_OFFERTA = :ID_OFFERTA,'
      '  CR = :CR,'
      '  CR2 = :CR2,'
      '  CR3 = :CR3,'
      '  CR4 = :CR4,'
      '  CR5 = :CR5,'
      '  CR6 = :CR6'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    DataSource = DataSource2
    Left = 152
    Top = 104
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField3: TIBStringField
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 257
    end
    object IBStringField4: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField6: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField7: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField4: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField5: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField6: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField7: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField8: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField9: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField1: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField2: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField8: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField10: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField11: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField12: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField13: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField9: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField2: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField3: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField4: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField5: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField10: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField11: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField12: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField13: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField7: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField14: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField6: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField15: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField16: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField17: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField8: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField7: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField8: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField9: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField10: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField9: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField18: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField19: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField11: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField12: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField10: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField14: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField15: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField11: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField16: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField12: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField13: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField13: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField15: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField16: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField17: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField18: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField19: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField20: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField20: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField21: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField17: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField18: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField19: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField20: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField21: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField22: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField23: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField24: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField25: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField26: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField27: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField28: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField29: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField30: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField31: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField32: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField33: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField34: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField35: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField36: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField37: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField38: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField39: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField40: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField41: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField42: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField43: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField44: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField45: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField46: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField47: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField48: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField49: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField50: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField51: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField52: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField53: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField54: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField55: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField56: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField57: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField58: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField59: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField60: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField61: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField62: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField63: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField64: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField21: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField65: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField66: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField67: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField68: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField69: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField70: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object ibqCont_Art_tmp: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from TAB_CONTABILE_ARTICOLO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    InsertSQL.Strings = (
      'insert into TAB_CONTABILE_ARTICOLO'
      
        '  (CODICE_ARTICOLO, DEPOSITO_ID, CLI_FOR_ID, TIPO_CLI_FOR_ID, DE' +
        'SCR, QTA_ACQUISTI, '
      
        '   VAL_ACQUISTI, QTA_VENDITA, VAL_VENDITA, QTA_ALTRE_ENTRATE, VA' +
        'L_ALTRE_ENTRATE, '
      
        '   QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLIENTE, VAL_RES' +
        'O_CLIENTE, '
      
        '   QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, QTA_ORDINATO, VAL_ORD' +
        'INATO, '
      
        '   QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QTA_EVASA_CLIENTE, VAL_EVAS' +
        'O_CLIENTE, '
      
        '   QTA_EVASA_FORNITORE, VAL_EVASO_FORNITORE, QTA_GIACENZA_INIZIA' +
        'LE, COSTO_GIACENZA_INIZIALE, '
      
        '   VAL_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, COSTO' +
        '_ULTIMO, '
      
        '   MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ, ULT_PREZZO_V' +
        'END, DATA_ULTIMO_ACQUISTO, '
      '   DATA_ULTIMA_VENDITA, PRETAGLIO)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DEPOSITO_ID, :CLI_FOR_ID, :TIPO_CLI_FOR_ID' +
        ', :DESCR, '
      
        '   :QTA_ACQUISTI, :VAL_ACQUISTI, :QTA_VENDITA, :VAL_VENDITA, :QT' +
        'A_ALTRE_ENTRATE, '
      
        '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_USCITE, :VAL_ALTRE_USCITA, :QT' +
        'A_RESO_CLIENTE, '
      
        '   :VAL_RESO_CLIENTE, :QTA_RESO_FORNITORE, :VAL_RESO_FORNITORE, ' +
        ':QTA_ORDINATO, '
      
        '   :VAL_ORDINATO, :QTA_IMPEGNATO, :VAL_QTA_IMPEGNATO, :QTA_EVASA' +
        '_CLIENTE, '
      
        '   :VAL_EVASO_CLIENTE, :QTA_EVASA_FORNITORE, :VAL_EVASO_FORNITOR' +
        'E, :QTA_GIACENZA_INIZIALE, '
      
        '   :COSTO_GIACENZA_INIZIALE, :VAL_GIACENZA_INIZIALE, :GIACENZA_A' +
        'TTUALE, '
      
        '   :DISPONIBILITA, :COSTO_ULTIMO, :MED_PREZZO_VEND, :ULT_COSTO_A' +
        'CQ, :MEDIO_COSTO_ACQ, '
      
        '   :ULT_PREZZO_VEND, :DATA_ULTIMO_ACQUISTO, :DATA_ULTIMA_VENDITA' +
        ', :PRETAGLIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DEPOSITO_ID,'
      '  CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID,'
      '  DESCR,'
      '  QTA_ACQUISTI,'
      '  VAL_ACQUISTI,'
      '  QTA_VENDITA,'
      '  VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO,'
      '  VAL_ORDINATO,'
      '  QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE,'
      '  DISPONIBILITA,'
      '  COSTO_ULTIMO,'
      '  MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO'
      'from TAB_CONTABILE_ARTICOLO '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID')
    SelectSQL.Strings = (
      'select TAB_CONTABILE_ARTICOLO.* from TAB_CONTABILE_ARTICOLO'
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO And DEPOSITO_ID=:DEP')
    ModifySQL.Strings = (
      'update TAB_CONTABILE_ARTICOLO'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  DESCR = :DESCR,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  VAL_VENDITA = :VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA = :VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO = :VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE = :COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE = :GIACENZA_ATTUALE,'
      '  DISPONIBILITA = :DISPONIBILITA,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  MED_PREZZO_VEND = :MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ = :ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ = :MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND = :ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO = :PRETAGLIO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    DataSource = DataSource2
    Left = 184
    Top = 104
    object ibqCont_Art_tmpCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqCont_Art_tmpDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object ibqCont_Art_tmpCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object ibqCont_Art_tmpTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object ibqCont_Art_tmpDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 102
    end
    object ibqCont_Art_tmpQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object ibqCont_Art_tmpVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object ibqCont_Art_tmpQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object ibqCont_Art_tmpVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object ibqCont_Art_tmpQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object ibqCont_Art_tmpVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object ibqCont_Art_tmpQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object ibqCont_Art_tmpVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object ibqCont_Art_tmpQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object ibqCont_Art_tmpVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object ibqCont_Art_tmpQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object ibqCont_Art_tmpVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object ibqCont_Art_tmpQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object ibqCont_Art_tmpVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object ibqCont_Art_tmpQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object ibqCont_Art_tmpVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object ibqCont_Art_tmpQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object ibqCont_Art_tmpVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object ibqCont_Art_tmpQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object ibqCont_Art_tmpVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object ibqCont_Art_tmpQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmpCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmpVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmpGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object ibqCont_Art_tmpDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object ibqCont_Art_tmpCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object ibqCont_Art_tmpMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object ibqCont_Art_tmpULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object ibqCont_Art_tmpMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object ibqCont_Art_tmpULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object ibqCont_Art_tmpDATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object ibqCont_Art_tmpDATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object ibqCont_Art_tmpPRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
  end
  object IbqUpdoc: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'INSERT INTO tab_documenti_temp SELECT * FROM tab_documenti'
      'where id_documento=:id_doc;')
    Transaction = dmodAz.ibtrDef
    Left = 408
    Top = 216
  end
  object Ibqupdet: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'INSERT INTO tab_det_doc_temp SELECT * FROM tab_det_doc'
      'where doc_id=:id_doc')
    Transaction = dmodAz.ibtrDef
    Left = 536
    Top = 224
  end
  object IbqDel: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'delete from tab_documenti_temp')
    Left = 600
    Top = 256
  end
  object dsoCODICEIVA: TDataSource
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 252
    Top = 363
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 352
    Top = 184
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
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 257
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
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'SELECT  TAB_DET_DOC.COSTO,TAB_DET_DOC.SCONTO1,TAB_DET_DOC.SCONTO' +
        '2,'
      'TAB_DET_DOC.SCONTO_EQ,Tab_documenti.DATA_DOC from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      'TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id'
      'where TAB_DET_DOC.codice_articolo=:parcodart'
      'and TAB_DOCUMENTI.clifor_id=:parcliforid'
      'ORDER by TAB_DOCUMENTI.DATA_DOC DESCENDING')
    Left = 256
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
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_DET_DOC'
      
        'join tab_documenti on TAB_DET_DOC.DOC_ID=tab_documenti.ID_Docume' +
        'nto'
      'where tipo_doc=350'
      'Order by tab_det_doc.DATA_REG,num_riga_id,codice_Articolo')
    Left = 240
    Top = 328
    object IBQuery5ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object IBQuery5TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object IBQuery5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object IBQuery5DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object IBQuery5COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
      currency = True
    end
    object IBQuery5COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
      currency = True
    end
    object IBQuery5UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object IBQuery5FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object IBQuery5QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object IBQuery5QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object IBQuery5SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object IBQuery5SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object IBQuery5SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object IBQuery5SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery5IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
      currency = True
    end
    object IBQuery5IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
      currency = True
    end
    object IBQuery5IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
      currency = True
    end
    object IBQuery5OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object IBQuery5DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object IBQuery5SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
      currency = True
    end
    object IBQuery5PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object IBQuery5TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object IBQuery5IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
      currency = True
    end
    object IBQuery5IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
      currency = True
    end
    object IBQuery5CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery5DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object IBQuery5RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object IBQuery5RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object IBQuery5RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object IBQuery5RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object IBQuery5RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object IBQuery5RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object IBQuery5RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object IBQuery5RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object IBQuery5RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object IBQuery5RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object IBQuery5RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object IBQuery5PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object IBQuery5RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object IBQuery5RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object IBQuery5RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object IBQuery5OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object IBQuery5OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object IBQuery5OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object IBQuery5OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object IBQuery5DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object IBQuery5TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object IBQuery5TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object IBQuery5PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object IBQuery5SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object IBQuery5PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object IBQuery5COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object IBQuery5A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBQuery5B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBQuery5C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBQuery5NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      Required = True
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery5
    Left = 480
    Top = 168
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = dsoRigheDoc
    SQL.Strings = (
      'select * from tab_Articoli'
      'where codice_articolo=:codice_articolo')
    Left = 624
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_articolo'
        ParamType = ptUnknown
      end>
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 480
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField22: TIBStringField
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
    object FloatField71: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBStringField23: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 632
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField24: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object IntegerField22: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object IBStringField25: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object SmallintField14: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object FloatField72: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBStringField26: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
  end
  object ApdComPort1: TApdComPort
    ComNumber = 1
    Baud = 9600
    AutoOpen = False
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 712
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 152
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
end
