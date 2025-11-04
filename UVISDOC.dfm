object fVisDoc: TfVisDoc
  Left = 170
  Top = 136
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Visualizzazione dei Documenti'
  ClientHeight = 477
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 265
    Width = 682
    Height = 212
    Align = alBottom
    BevelOuter = bvLowered
    Color = 16762250
    TabOrder = 0
    object gbData: TGroupBox
      Left = 10
      Top = 6
      Width = 125
      Height = 81
      Caption = '&Data'
      TabOrder = 0
      object laDataDa: TLabel
        Left = 12
        Top = 26
        Width = 14
        Height = 13
        Caption = 'Da'
      end
      object laDataA: TLabel
        Left = 14
        Top = 52
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object meDataDa: TMaskEdit
        Left = 34
        Top = 22
        Width = 69
        Height = 19
        Ctl3D = False
        EditMask = '!90/90/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '01/01/1977'
        OnExit = meDataDaExit
      end
      object meDataA: TMaskEdit
        Left = 34
        Top = 48
        Width = 69
        Height = 19
        Ctl3D = False
        EditMask = '!90/90/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = meDataAExit
      end
    end
    object gbPagamento: TGroupBox
      Left = 139
      Top = 6
      Width = 199
      Height = 81
      Caption = '&Pagamento'
      TabOrder = 1
      OnExit = gbPagamentoExit
      object rabPagTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rabPagScegli: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
      end
      object LookPagCod: TDBLookupComboBox
        Left = 78
        Top = 32
        Width = 71
        Height = 19
        Ctl3D = False
        KeyField = 'ID_PAGAMENTO'
        ListField = 'ID_PAGAMENTO'
        ListSource = dsoPagamento
        ParentCtl3D = False
        TabOrder = 2
      end
      object LookPagDescr: TDBLookupComboBox
        Left = 8
        Top = 54
        Width = 183
        Height = 19
        Ctl3D = False
        KeyField = 'ID_PAGAMENTO'
        ListField = 'DESCR'
        ListSource = dsoPagamento
        ParentCtl3D = False
        TabOrder = 3
      end
    end
    object gbAgente: TGroupBox
      Left = 343
      Top = 6
      Width = 200
      Height = 81
      Caption = '&Agente'
      TabOrder = 2
      OnExit = gbAgenteExit
      object rabAgTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rabAgScegli: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
      end
      object LookAgCod: TDBLookupComboBox
        Left = 76
        Top = 32
        Width = 71
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoAgente
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = LookAgCodCloseUp
        OnExit = LookAgCodExit
      end
      object LookAgDescr: TDBLookupComboBox
        Left = 8
        Top = 54
        Width = 183
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoAgente
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookAgDescrCloseUp
        OnExit = LookAgDescrExit
      end
    end
    object gbTipoCliFor: TGroupBox
      Left = 3
      Top = 92
      Width = 340
      Height = 117
      Caption = '&Tipo'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object rabTipoCliFornTutti: TRadioButton
        Left = 2
        Top = 18
        Width = 49
        Height = 15
        Caption = 'Tutti'
        TabOrder = 0
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoFornTutti: TRadioButton
        Left = 70
        Top = 18
        Width = 71
        Height = 15
        Caption = 'Tutti Forn.'
        TabOrder = 1
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoFornSc: TRadioButton
        Left = 2
        Top = 66
        Width = 75
        Height = 15
        Caption = 'Scegli Forn.'
        TabOrder = 4
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoCliTutti: TRadioButton
        Left = 150
        Top = 16
        Width = 63
        Height = 15
        Caption = 'Tutti Cli.'
        TabOrder = 2
        OnClick = rabTipoCliFornTuttiClick
      end
      object rabTipoCliSc: TRadioButton
        Left = 2
        Top = 40
        Width = 69
        Height = 17
        Caption = 'Scegli Cli.'
        TabOrder = 3
        OnClick = rabTipoCliFornTuttiClick
      end
      object LookCliCod: TRxDBLookupCombo
        Left = 76
        Top = 36
        Width = 63
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'ID_CLI_FOR'
        LookupSource = dsoCli
        TabOrder = 5
        OnChange = LookCliCodChange
        OnCloseUp = LookCliCodCloseUp
        OnExit = LookCliCodExit
      end
      object LookCliDescr: TRxDBLookupCombo
        Left = 142
        Top = 36
        Width = 195
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsoCli
        TabOrder = 6
        OnChange = LookCliDescrChange
        OnCloseUp = LookCliDescrCloseUp
        OnExit = LookCliDescrExit
      end
      object LookFornDescr: TRxDBLookupCombo
        Left = 142
        Top = 62
        Width = 195
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsoForn
        TabOrder = 7
        OnChange = LookFornDescrChange
        OnCloseUp = LookFornDescrCloseUp
        OnExit = LookFornDescrExit
      end
      object LookFornCod: TRxDBLookupCombo
        Left = 76
        Top = 62
        Width = 63
        Height = 21
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'ID_CLI_FOR'
        LookupSource = dsoForn
        TabOrder = 8
        OnChange = LookFornCodChange
        OnCloseUp = LookFornCodCloseUp
        OnExit = LookFornCodExit
      end
    end
    object bbEsci: TBitBtn
      Left = 634
      Top = 180
      Width = 43
      Height = 27
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbEsciClick
    end
    object bbStampa: TBitBtn
      Left = 414
      Top = 180
      Width = 35
      Height = 25
      Cursor = crHandPoint
      Caption = 'St.&1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnClick = bbStampaClick
    end
    object gbCausale: TGroupBox
      Left = 344
      Top = 92
      Width = 199
      Height = 83
      Caption = '&Causale'
      TabOrder = 6
      object rabCauTutti: TRadioButton
        Left = 8
        Top = 18
        Width = 45
        Height = 17
        Caption = 'Tutti'
        TabOrder = 0
        OnClick = rabCauTuttiClick
      end
      object rabCauSc: TRadioButton
        Left = 8
        Top = 36
        Width = 63
        Height = 17
        Caption = 'a Scelta'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object LookCauCod: TDBLookupComboBox
        Left = 78
        Top = 34
        Width = 71
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE_CAUSALE'
        ListField = 'CODICE_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = LookCauCodCloseUp
        OnExit = LookCauCodCloseUp
      end
      object LookCauDescr: TDBLookupComboBox
        Left = 8
        Top = 56
        Width = 183
        Height = 19
        Ctl3D = False
        KeyField = 'CODICE_CAUSALE'
        ListField = 'DESCR_CAUSALE'
        ListSource = dsoCauMag
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookCauDescrCloseUp
        OnExit = LookCauDescrCloseUp
      end
    end
    object BitBtn1: TBitBtn
      Left = 344
      Top = 180
      Width = 67
      Height = 25
      Cursor = crHandPoint
      Caption = 'Visualizza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 452
      Top = 180
      Width = 37
      Height = 25
      Cursor = crHandPoint
      Caption = 'St.&2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 8
      OnClick = BitBtn2Click
    end
    object RadioButton1: TRadioButton
      Left = 550
      Top = 166
      Width = 103
      Height = 15
      Caption = 'Ord. Data'
      Checked = True
      TabOrder = 9
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 550
      Top = 181
      Width = 79
      Height = 15
      Caption = 'Ord. Cli/For'
      TabOrder = 10
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 550
      Top = 195
      Width = 83
      Height = 15
      Caption = 'Ord. Vettore'
      TabOrder = 11
      OnClick = RadioButton3Click
    end
    object GroupBox1: TGroupBox
      Left = 547
      Top = 6
      Width = 126
      Height = 81
      Caption = '&Zona'
      TabOrder = 12
      object RadioButton4: TRadioButton
        Left = 4
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton5: TRadioButton
        Left = 4
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 64
        Top = 32
        Width = 59
        Height = 19
        Ctl3D = False
        DataSource = dsoZona
        KeyField = 'ID_CODICE_ZONA'
        ListField = 'ID_CODICE_ZONA'
        ListSource = dsoZona
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 5
        Top = 54
        Width = 116
        Height = 19
        Ctl3D = False
        DataSource = dsoZona
        KeyField = 'ID_CODICE_ZONA'
        ListField = 'DESCR'
        ListSource = dsoZona
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = LookAgDescrCloseUp
        OnExit = LookAgDescrExit
      end
    end
    object GroupBox2: TGroupBox
      Left = 547
      Top = 86
      Width = 126
      Height = 81
      Caption = '&Sottozona'
      TabOrder = 13
      object RadioButton6: TRadioButton
        Left = 4
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton7: TRadioButton
        Left = 4
        Top = 36
        Width = 63
        Height = 15
        Caption = 'a Scelta'
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 64
        Top = 32
        Width = 59
        Height = 19
        Ctl3D = False
        KeyField = 'ID_CODICE_SOTTO_ZONE'
        ListField = 'ID_CODICE_SOTTO_ZONE'
        ListSource = dsoSottozone
        ParentCtl3D = False
        TabOrder = 2
        OnCloseUp = DBLookupComboBox3CloseUp
        OnExit = DBLookupComboBox3Exit
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 5
        Top = 54
        Width = 116
        Height = 19
        Ctl3D = False
        KeyField = 'ID_CODICE_SOTTO_ZONE'
        ListField = 'DESCR'
        ListSource = dsoSottozone
        ParentCtl3D = False
        TabOrder = 3
        OnCloseUp = DBLookupComboBox4CloseUp
        OnExit = DBLookupComboBox4Exit
      end
    end
    object BitBtn3: TBitBtn
      Left = 492
      Top = 180
      Width = 37
      Height = 25
      Cursor = crHandPoint
      Hint = 'Stampa x Agente e Vettore'
      Caption = 'St.&3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 14
      OnClick = BitBtn2Click
    end
  end
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 265
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object dbgDocView: TDBGrid
      Left = 1
      Top = 1
      Width = 680
      Height = 263
      Align = alClient
      Color = 15461355
      Ctl3D = False
      DataSource = dsoDocFiltered
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Color = 12320767
          Expanded = False
          FieldName = 'NUM_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#176' Doc.'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
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
          Width = 60
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'DENOMINAZIONE'
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
          Width = 212
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'DESCR'
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
          Width = 139
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE'
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
          Width = 81
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_IVATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Totale + IVA'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Color = 12320767
          Expanded = False
          FieldName = 'ID_DOCUMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TESTATA_PN_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DA_FATTURARE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLIFOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DEPOSITO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_CLIFOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_TIPO_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_DEPOSITO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_MAGAZZINO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_CAUS_MAG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ATTIVITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SUBATTIVITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_REGISTRAZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_CONFERMA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_EVASIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STATO_DOCUMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STATO_CONTABILITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MONETA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAMBIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'KINGUA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'LISTINO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NS_RIFERIMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VS_RIFERIMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_CONTABILE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_BOLL'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PAGAMENTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'BANCA_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'BANCA_AZIENDA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ASPETTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PESO_NETTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PESO_LORDO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CUBAGGIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DESTINARIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMBALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'AGENTE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_CONSEGNA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NUM_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NRCOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_SCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NOTA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SOSPESO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_SOSPESA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_ESENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_BOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_INCASSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_IMVALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_ACCESSIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ACCORPA_RIGHE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ATTIVITA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SUBATTIVITA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SOGGETTO_CEE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'REPORT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RILEVA_ACCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ORA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FATT_ACCOMP'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_FATT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ST_NOTE_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STAMPATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_COMPETENZA_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MEZZO_TRASPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_IMP_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAST_MANUALE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NUM_DOC2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SERIE_DOC2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MESE_CONT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRE_DERT_SI_NO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_IMBALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_BOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_ACCESSORIE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_INCASSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_CONTRASS'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAU_TRASP_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PER_ALTRA_DEST'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_CON_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_MERCE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_SERVIZI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_SCONTI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_EURO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_EURO_IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_SPESE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRA_DEST'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SERIE_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_IND'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ACCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA1_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA2_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA3_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA4_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA5_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA6_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_ESENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_ESENTE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE_IND'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE_IND2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_IND2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA1_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA2_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA3_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA4_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA5_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA6_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PIANOCONTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRA_DEST2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_ZONA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_SOTTO_ZONA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_FISSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CLI_FOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_SOMMA_PRV'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_PROVVIGIONE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_FATTURATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_AG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ID_DOCUMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TESTATA_PN_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DA_FATTURARE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLIFOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DEPOSITO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_CLIFOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_TIPO_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_DEPOSITO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_MAGAZZINO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTRO_CAUS_MAG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ATTIVITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SUBATTIVITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_REGISTRAZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_CONFERMA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_EVASIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STATO_DOCUMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STATO_CONTABILITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MONETA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAMBIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'KINGUA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'LISTINO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NS_RIFERIMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VS_RIFERIMENTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAUSALE_CONTABILE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_BOLL'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PAGAMENTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'BANCA_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'BANCA_AZIENDA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ASPETTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PESO_NETTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PESO_LORDO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CUBAGGIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DESTINARIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMBALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'AGENTE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_CONSEGNA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NUM_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NRCOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_SCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NOTA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SOSPESO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_SOSPESA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_ESENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_BOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_INCASSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_IMVALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_ACCESSIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ACCORPA_RIGHE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ATTIVITA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SUBATTIVITA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SOGGETTO_CEE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'REPORT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RILEVA_ACCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ORA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FATT_ACCOMP'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_FATT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ST_NOTE_CLIFOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'STAMPATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_COMPETENZA_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MEZZO_TRASPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_IMP_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAST_MANUALE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NUM_DOC2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SERIE_DOC2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MESE_CONT'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRE_DERT_SI_NO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_IMBALLO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_BOLLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_ACCESSORIE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_INCASSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_SPEDIZIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SPESE_CONTRASS'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAU_TRASP_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PER_ALTRA_DEST'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_CON_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_MERCE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_SERVIZI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_SCONTI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_EURO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_EURO_IVATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA4'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODIVA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALIVA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPON5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPOSTA5'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOT_SPESE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRA_DEST'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SERIE_DOC'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_IND'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ACCONTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA1_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA2_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA3_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA4_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA5_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA6_IMPORTO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL3'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_ESENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_ESENTE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE_IND'
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
          Color = 12320767
          Expanded = False
          FieldName = 'VETTORE_IND2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_IND2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA1_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA2_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA3_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA4_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA5_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RATA6_DATA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PIANOCONTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ALTRA_DEST2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_ZONA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_SOTTO_ZONA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IMPORTO_FISSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CLI_FOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CLI_FOR_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_SOMMA_PRV'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_PROVVIGIONE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_FATTURATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TOTALE_PROVVIGIONE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_AG'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ID_CLI_FOR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COGNOME'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NOME'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NOME_ALTRO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FULL_NAME'
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
          Color = 12320767
          Expanded = False
          FieldName = 'INDIRIZZO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COMUNE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PARTITA_IVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_FISCALE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PERSONA_FISICA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PIANO_CONTI_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTO_CORRENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'MONETA_ID1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PAGAMENTO_ID1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CATEGORIA_CLIENTE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'AGENTE_ID1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'LINGUA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_LISTINO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO_TESTATA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SCONTO_TESTATA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL11'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TEL21'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FAX'
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
          Color = 12320767
          Expanded = False
          FieldName = 'EMAIL'
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
          Color = 12320767
          Expanded = False
          FieldName = 'INTERNET'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DATA_DI_NASCITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'SESSO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TITOLO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PORTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FIDO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ABILITA_PARTITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FATTURA_RIEPILOGATIVA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ACCORPA_ARTICOLI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'IVA_SOSPESA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'POS_RIF_BOLLE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_IVA_ESENTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RIP_RIF_BOLLE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ESCLUDI_MESE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RIP_RIF_ORDINI'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ESCLUDI_MESE2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CONTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NAZIONE_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NAZIONE_DI_NASCITA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RAGGRUPPAMENTO_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'RISCHIO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'GG_SCADENZA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'GG_SCADENZA2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CONTROPARTITA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TIPO_CONTROPARTITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CERTIFICATO'
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
          Color = 12320767
          Expanded = False
          FieldName = 'DENOMINAZIONE2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'INDIRIZZO2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'LOCALITA'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COMUNE_DI_NASCITA_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAB_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ABI_ID'
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
          Color = 12320767
          Expanded = False
          FieldName = 'TITOLO_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COMNASC_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAPNASC_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NAZNASC_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COM_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAP_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PR_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CAB_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'ABI_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NAZ_DESCR'
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
          Color = 12320767
          Expanded = False
          FieldName = 'FASON'
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
          Color = 12320767
          Expanded = False
          FieldName = 'NOTE'
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
          Color = 12320767
          Expanded = False
          FieldName = 'COD2'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_ZONA_ID1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CODICE_SOTTO_ZONA_ID1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'PROVVIGIONE1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CG1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CA1'
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
          Color = 12320767
          Expanded = False
          FieldName = 'CR1'
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
  object dsoDocFiltered: TDataSource
    DataSet = IBQuery1
    Left = 494
    Top = 92
  end
  object dsoPagamento: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 299
    Top = 152
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 501
    Top = 160
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 182
    Top = 260
  end
  object dsoForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 230
    Top = 292
  end
  object dsoCliForn: TDataSource
    DataSet = dmodAz.r_qCliForn
    Left = 274
    Top = 314
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 502
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 128
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_DOCUMENTI'
      'inner join tab_cli_for on'
      'tab_documenti.CLIFOR_ID=tab_cli_for.id_cli_for'
      'left join tab_agenti on'
      'tab_documenti.agente_id=tab_agenti.codice'
      'left join tab_agenti on'
      'tab_documenti.CA_ID=tab_agenti.codice'
      '')
    Left = 280
    Top = 353
    object IBQuery1ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IBQuery1TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBQuery1CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IBQuery1TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object IBQuery1DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IBQuery1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery1DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IBQuery1CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object IBQuery1CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBQuery1CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBQuery1CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBQuery1CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBQuery1SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object IBQuery1DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object IBQuery1DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBQuery1DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object IBQuery1DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IBQuery1STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IBQuery1STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBQuery1MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object IBQuery1CAMBIO: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBQuery1KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBQuery1LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBQuery1NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery1VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBQuery1CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBQuery1CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBQuery1BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBQuery1BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBQuery1VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBQuery1VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBQuery1VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBQuery1PORTO: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBQuery1ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBQuery1SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object IBQuery1PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object IBQuery1PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object IBQuery1CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBQuery1DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBQuery1IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery1AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery1DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IBQuery1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery1NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery1IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      currency = True
    end
    object IBQuery1NOTA: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object IBQuery1SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
    end
    object IBQuery1IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBQuery1COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBQuery1COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object IBQuery1ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBQuery1SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object IBQuery1SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBQuery1REPORT: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object IBQuery1RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBQuery1ORA: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object IBQuery1FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object IBQuery1TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object IBQuery1ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object IBQuery1IVATO: TSmallintField
      FieldName = 'IVATO'
    end
    object IBQuery1STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
    end
    object IBQuery1DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object IBQuery1MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object IBQuery1TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
    end
    object IBQuery1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery1TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
    end
    object IBQuery1CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IBQuery1NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBQuery1SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IBQuery1MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object IBQuery1ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object IBQuery1SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      currency = True
    end
    object IBQuery1SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      currency = True
    end
    object IBQuery1SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      currency = True
    end
    object IBQuery1SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      currency = True
    end
    object IBQuery1SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      currency = True
    end
    object IBQuery1SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      currency = True
    end
    object IBQuery1CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object IBQuery1PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object IBQuery1IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      currency = True
    end
    object IBQuery1TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      currency = True
    end
    object IBQuery1TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      currency = True
    end
    object IBQuery1TOTALE: TFloatField
      FieldName = 'TOTALE'
      currency = True
    end
    object IBQuery1TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      currency = True
    end
    object IBQuery1TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      currency = True
    end
    object IBQuery1TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      currency = True
    end
    object IBQuery1TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
    end
    object IBQuery1TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
    end
    object IBQuery1CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object IBQuery1ALIVA1: TFloatField
      FieldName = 'ALIVA1'
    end
    object IBQuery1IMPON1: TFloatField
      FieldName = 'IMPON1'
      currency = True
    end
    object IBQuery1IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      currency = True
    end
    object IBQuery1CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object IBQuery1ALIVA2: TFloatField
      FieldName = 'ALIVA2'
    end
    object IBQuery1IMPON2: TFloatField
      FieldName = 'IMPON2'
      currency = True
    end
    object IBQuery1IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      currency = True
    end
    object IBQuery1CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object IBQuery1ALIVA3: TFloatField
      FieldName = 'ALIVA3'
    end
    object IBQuery1IMPON3: TFloatField
      FieldName = 'IMPON3'
      currency = True
    end
    object IBQuery1IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      currency = True
    end
    object IBQuery1CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object IBQuery1ALIVA4: TFloatField
      FieldName = 'ALIVA4'
    end
    object IBQuery1IMPON4: TFloatField
      FieldName = 'IMPON4'
      currency = True
    end
    object IBQuery1IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      currency = True
    end
    object IBQuery1CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object IBQuery1ALIVA5: TFloatField
      FieldName = 'ALIVA5'
    end
    object IBQuery1IMPON5: TFloatField
      FieldName = 'IMPON5'
      currency = True
    end
    object IBQuery1IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      currency = True
    end
    object IBQuery1TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBQuery1ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBQuery1SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBQuery1CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object IBQuery1ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery1RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      currency = True
    end
    object IBQuery1RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      currency = True
    end
    object IBQuery1RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      currency = True
    end
    object IBQuery1RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      currency = True
    end
    object IBQuery1RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      currency = True
    end
    object IBQuery1RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      currency = True
    end
    object IBQuery1TEL1: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBQuery1TEL2: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBQuery1TEL3: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object IBQuery1IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IBQuery1IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBQuery1VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBQuery1VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBQuery1CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object IBQuery1RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
    end
    object IBQuery1RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
    end
    object IBQuery1RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
    end
    object IBQuery1RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
    end
    object IBQuery1RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
    end
    object IBQuery1RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IBQuery1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBQuery1ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
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
    object IBQuery1TIPO_PROVVIGIONE1: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE1'
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
    object IBQuery1CR: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IBQuery1ID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object IBQuery1DENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBQuery1COGNOME: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object IBQuery1NOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object IBQuery1FULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object IBQuery1INDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IBQuery1COMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object IBQuery1PARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object IBQuery1CODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object IBQuery1PERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object IBQuery1PIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object IBQuery1CONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object IBQuery1MONETA_ID1: TIBStringField
      FieldName = 'MONETA_ID1'
      Size = 4
    end
    object IBQuery1PAGAMENTO_ID1: TIBStringField
      FieldName = 'PAGAMENTO_ID1'
      Size = 5
    end
    object IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object IBQuery1AGENTE_ID1: TIBStringField
      FieldName = 'AGENTE_ID1'
      Size = 4
    end
    object IBQuery1LINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object IBQuery1CODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object IBQuery1SCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object IBQuery1SCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object IBQuery1TEL11: TIBStringField
      FieldName = 'TEL11'
      Size = 15
    end
    object IBQuery1TEL21: TIBStringField
      FieldName = 'TEL21'
      Size = 15
    end
    object IBQuery1FAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object IBQuery1INTERNET: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object IBQuery1DATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object IBQuery1SESSO: TIntegerField
      FieldName = 'SESSO'
    end
    object IBQuery1TITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object IBQuery1PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object IBQuery1FIDO: TFloatField
      FieldName = 'FIDO'
    end
    object IBQuery1ABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object IBQuery1ACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object IBQuery1IVA_SOSPESA1: TSmallintField
      FieldName = 'IVA_SOSPESA1'
    end
    object IBQuery1POS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object IBQuery1CODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object IBQuery1RIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object IBQuery1ESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object IBQuery1RIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object IBQuery1ESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object IBQuery1TIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object IBQuery1NAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object IBQuery1RISCHIO: TFloatField
      FieldName = 'RISCHIO'
    end
    object IBQuery1GG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object IBQuery1GG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object IBQuery1CONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object IBQuery1TIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object IBQuery1CERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object IBQuery1DENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object IBQuery1INDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object IBQuery1LOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object IBQuery1CAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object IBQuery1ABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object IBQuery1TITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object IBQuery1COMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object IBQuery1CAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object IBQuery1NAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object IBQuery1COM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object IBQuery1CAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object IBQuery1PR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object IBQuery1CAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object IBQuery1ABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object IBQuery1NAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object IBQuery1FASON: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object IBQuery1NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object IBQuery1COD2: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object IBQuery1CODICE_ZONA_ID1: TIBStringField
      FieldName = 'CODICE_ZONA_ID1'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID1: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID1'
      Size = 7
    end
    object IBQuery1PROVVIGIONE1: TFloatField
      FieldName = 'PROVVIGIONE1'
    end
    object IBQuery1CG1: TIBStringField
      FieldName = 'CG1'
      Size = 4
    end
    object IBQuery1CA1: TIBStringField
      FieldName = 'CA1'
      Size = 4
    end
    object IBQuery1CR1: TIBStringField
      FieldName = 'CR1'
      Size = 4
    end
    object IBQuery1CA_ID: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object IBQuery1CODICE1: TIBStringField
      FieldName = 'CODICE1'
      Origin = '"TAB_AGENTI"."CODICE"'
      Size = 4
    end
    object IBQuery1DESCR1: TIBStringField
      FieldName = 'DESCR1'
      Origin = '"TAB_AGENTI"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE_ZONA_ID2: TIBStringField
      FieldName = 'CODICE_ZONA_ID2'
      Origin = '"TAB_AGENTI"."CODICE_ZONA_ID"'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID2: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID2'
      Origin = '"TAB_AGENTI"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object IBQuery1PROVVIGIONE2: TFloatField
      FieldName = 'PROVVIGIONE2'
      Origin = '"TAB_AGENTI"."PROVVIGIONE"'
    end
    object IBQuery1IMPORTO_FISSO1: TFloatField
      FieldName = 'IMPORTO_FISSO1'
      Origin = '"TAB_AGENTI"."IMPORTO_FISSO"'
    end
    object IBQuery1TIPO_CLI_FOR1: TSmallintField
      FieldName = 'TIPO_CLI_FOR1'
      Origin = '"TAB_AGENTI"."TIPO_CLI_FOR"'
    end
    object IBQuery1CLI_FOR_ID1: TIntegerField
      FieldName = 'CLI_FOR_ID1'
      Origin = '"TAB_AGENTI"."CLI_FOR_ID"'
    end
    object IBQuery1TIPO_SOMMA_PRV1: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV1'
      Origin = '"TAB_AGENTI"."TIPO_SOMMA_PRV"'
    end
    object IBQuery1TIPO_PROVVIGIONE2: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE2'
      Origin = '"TAB_AGENTI"."TIPO_PROVVIGIONE"'
    end
    object IBQuery1TOTALE_FATTURATO1: TFloatField
      FieldName = 'TOTALE_FATTURATO1'
      Origin = '"TAB_AGENTI"."TOTALE_FATTURATO"'
    end
    object IBQuery1TOTALE_PROVVIGIONE1: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE1'
      Origin = '"TAB_AGENTI"."TOTALE_PROVVIGIONE"'
    end
    object IBQuery1CG2: TIBStringField
      FieldName = 'CG2'
      Origin = '"TAB_AGENTI"."CG"'
      Size = 4
    end
    object IBQuery1CA2: TIBStringField
      FieldName = 'CA2'
      Origin = '"TAB_AGENTI"."CA"'
      Size = 4
    end
    object IBQuery1TIPO_AG1: TIntegerField
      FieldName = 'TIPO_AG1'
      Origin = '"TAB_AGENTI"."TIPO_AG"'
    end
    object IBQuery1CR2: TIBStringField
      FieldName = 'CR2'
      Origin = '"TAB_AGENTI"."CR"'
      Size = 4
    end
    object IBQuery1ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 3
    end
    object IBQuery1ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 5
    end
  end
  object dsoZona: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibTab_Zone
    Left = 288
    Top = 208
  end
  object dsoSottozone: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibTab_SottoZone
    Left = 328
    Top = 208
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_DOCUMENTI'
      'inner join tab_cli_for on'
      'tab_documenti.CLIFOR_ID=tab_cli_for.id_cli_for'
      'left join tab_agenti on'
      'tab_documenti.agente_id=tab_agenti.codice'
      'left join tab_agenti on'
      'tab_documenti.CA_ID=tab_agenti.codice'
      'left join tab_Vettori on'
      'tab_documenti.vettore1=tab_vettori.codice'
      '')
    Left = 448
    Top = 345
    object IntegerField1: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'TESTATA_PN_ID'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Size = 10
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object SmallintField1: TSmallintField
      FieldName = 'DA_FATTURARE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object SmallintField2: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBStringField2: TIBStringField
      FieldName = 'DEPOSITO'
      Size = 3
    end
    object IntegerField5: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
    end
    object SmallintField3: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
    end
    object IBStringField3: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Size = 3
    end
    object IBStringField4: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Size = 4
    end
    object IBStringField6: TIBStringField
      FieldName = 'SUBATTIVITA'
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATA_CONFERMA'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DATA_EVASIONE'
    end
    object IntegerField6: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
    end
    object IntegerField7: TIntegerField
      FieldName = 'STATO_CONTABILITA'
    end
    object IBStringField7: TIBStringField
      FieldName = 'MONETA_ID'
      Size = 4
    end
    object FloatField1: TFloatField
      FieldName = 'CAMBIO'
    end
    object IBStringField8: TIBStringField
      FieldName = 'KINGUA_ID'
      Size = 4
    end
    object IBStringField9: TIBStringField
      FieldName = 'LISTINO'
      Size = 10
    end
    object IBStringField10: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField11: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Size = 50
    end
    object IBStringField12: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Size = 4
    end
    object IBStringField13: TIBStringField
      FieldName = 'CODICE_BOLL'
      Size = 10
    end
    object IBStringField14: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Size = 4
    end
    object IBStringField15: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Size = 5
    end
    object IBStringField16: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Size = 5
    end
    object IBStringField17: TIBStringField
      FieldName = 'VETTORE1'
      Size = 7
    end
    object IBStringField18: TIBStringField
      FieldName = 'VETTORE2'
      Size = 7
    end
    object IBStringField19: TIBStringField
      FieldName = 'VETTORE3'
      Size = 7
    end
    object IBStringField20: TIBStringField
      FieldName = 'PORTO'
      Size = 4
    end
    object IBStringField21: TIBStringField
      FieldName = 'ASPETTO'
      Size = 4
    end
    object IBStringField22: TIBStringField
      FieldName = 'SPEDIZIONE'
      Size = 4
    end
    object FloatField2: TFloatField
      FieldName = 'PESO_NETTO'
    end
    object FloatField3: TFloatField
      FieldName = 'PESO_LORDO'
    end
    object FloatField4: TFloatField
      FieldName = 'CUBAGGIO'
    end
    object IBStringField23: TIBStringField
      FieldName = 'DESTINARIO'
      Size = 4
    end
    object IBStringField24: TIBStringField
      FieldName = 'IMBALLO'
      Size = 4
    end
    object FloatField5: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBStringField25: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object IntegerField8: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object FloatField6: TFloatField
      FieldName = 'NRCOLLI'
    end
    object FloatField7: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField8: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      currency = True
    end
    object IBStringField26: TIBStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object SmallintField4: TSmallintField
      FieldName = 'SOSPESO'
    end
    object SmallintField5: TSmallintField
      FieldName = 'IVA_SOSPESA'
    end
    object IBStringField27: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Size = 4
    end
    object IBStringField28: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Size = 4
    end
    object IBStringField29: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Size = 4
    end
    object IBStringField30: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Size = 4
    end
    object IBStringField31: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Size = 4
    end
    object IBStringField32: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Size = 4
    end
    object IBStringField33: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Size = 4
    end
    object SmallintField6: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
    end
    object IBStringField34: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Size = 2
    end
    object SmallintField7: TSmallintField
      FieldName = 'SOGGETTO_CEE'
    end
    object IBStringField35: TIBStringField
      FieldName = 'REPORT'
      Size = 50
    end
    object SmallintField8: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
    end
    object IBStringField36: TIBStringField
      FieldName = 'ORA'
      Size = 5
    end
    object SmallintField9: TSmallintField
      FieldName = 'FATT_ACCOMP'
    end
    object SmallintField10: TSmallintField
      FieldName = 'TIPO_FATT'
    end
    object SmallintField11: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
    end
    object SmallintField12: TSmallintField
      FieldName = 'IVATO'
    end
    object SmallintField13: TSmallintField
      FieldName = 'STAMPATO'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
    end
    object SmallintField14: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
    end
    object FloatField9: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
    end
    object SmallintField15: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField10: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
    end
    object SmallintField16: TSmallintField
      FieldName = 'CAST_MANUALE'
    end
    object IntegerField9: TIntegerField
      FieldName = 'NUM_DOC2'
    end
    object IBStringField37: TIBStringField
      FieldName = 'SERIE_DOC2'
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'MESE_CONT'
    end
    object SmallintField17: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
    end
    object FloatField11: TFloatField
      FieldName = 'SPESE_IMBALLO'
      currency = True
    end
    object FloatField12: TFloatField
      FieldName = 'SPESE_BOLLI'
      currency = True
    end
    object FloatField13: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      currency = True
    end
    object FloatField14: TFloatField
      FieldName = 'SPESE_INCASSO'
      currency = True
    end
    object FloatField15: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      currency = True
    end
    object FloatField16: TFloatField
      FieldName = 'SPESE_CONTRASS'
      currency = True
    end
    object IBStringField38: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Size = 4
    end
    object SmallintField18: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
    end
    object FloatField17: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      currency = True
    end
    object FloatField18: TFloatField
      FieldName = 'TOTALE_MERCE'
      currency = True
    end
    object FloatField19: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      currency = True
    end
    object FloatField20: TFloatField
      FieldName = 'TOTALE'
      currency = True
    end
    object FloatField21: TFloatField
      FieldName = 'TOTALE_IVA'
      currency = True
    end
    object FloatField22: TFloatField
      FieldName = 'TOTALE_IVATO'
      currency = True
    end
    object FloatField23: TFloatField
      FieldName = 'TOTALE_SCONTI'
      currency = True
    end
    object FloatField24: TFloatField
      FieldName = 'TOTALE_EURO'
    end
    object FloatField25: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
    end
    object IBStringField39: TIBStringField
      FieldName = 'CODIVA1'
      Size = 4
    end
    object FloatField26: TFloatField
      FieldName = 'ALIVA1'
    end
    object FloatField27: TFloatField
      FieldName = 'IMPON1'
      currency = True
    end
    object FloatField28: TFloatField
      FieldName = 'IMPOSTA1'
      currency = True
    end
    object IBStringField40: TIBStringField
      FieldName = 'CODIVA2'
      Size = 4
    end
    object FloatField29: TFloatField
      FieldName = 'ALIVA2'
    end
    object FloatField30: TFloatField
      FieldName = 'IMPON2'
      currency = True
    end
    object FloatField31: TFloatField
      FieldName = 'IMPOSTA2'
      currency = True
    end
    object IBStringField41: TIBStringField
      FieldName = 'CODIVA3'
      Size = 4
    end
    object FloatField32: TFloatField
      FieldName = 'ALIVA3'
    end
    object FloatField33: TFloatField
      FieldName = 'IMPON3'
      currency = True
    end
    object FloatField34: TFloatField
      FieldName = 'IMPOSTA3'
      currency = True
    end
    object IBStringField42: TIBStringField
      FieldName = 'CODIVA4'
      Size = 4
    end
    object FloatField35: TFloatField
      FieldName = 'ALIVA4'
    end
    object FloatField36: TFloatField
      FieldName = 'IMPON4'
      currency = True
    end
    object FloatField37: TFloatField
      FieldName = 'IMPOSTA4'
      currency = True
    end
    object IBStringField43: TIBStringField
      FieldName = 'CODIVA5'
      Size = 4
    end
    object FloatField38: TFloatField
      FieldName = 'ALIVA5'
    end
    object FloatField39: TFloatField
      FieldName = 'IMPON5'
      currency = True
    end
    object FloatField40: TFloatField
      FieldName = 'IMPOSTA5'
      currency = True
    end
    object FloatField41: TFloatField
      FieldName = 'TOT_SPESE'
    end
    object IBStringField44: TIBStringField
      FieldName = 'ALTRA_DEST'
      Size = 100
    end
    object IBStringField45: TIBStringField
      FieldName = 'SERIE_DOC'
      Size = 10
    end
    object IBStringField46: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Size = 255
    end
    object FloatField42: TFloatField
      FieldName = 'ACCONTO'
    end
    object FloatField43: TFloatField
      FieldName = 'RATA1_IMPORTO'
      currency = True
    end
    object FloatField44: TFloatField
      FieldName = 'RATA2_IMPORTO'
      currency = True
    end
    object FloatField45: TFloatField
      FieldName = 'RATA3_IMPORTO'
      currency = True
    end
    object FloatField46: TFloatField
      FieldName = 'RATA4_IMPORTO'
      currency = True
    end
    object FloatField47: TFloatField
      FieldName = 'RATA5_IMPORTO'
      currency = True
    end
    object FloatField48: TFloatField
      FieldName = 'RATA6_IMPORTO'
      currency = True
    end
    object IBStringField47: TIBStringField
      FieldName = 'TEL1'
      Size = 15
    end
    object IBStringField48: TIBStringField
      FieldName = 'TEL2'
      Size = 15
    end
    object IBStringField49: TIBStringField
      FieldName = 'TEL3'
      Size = 15
    end
    object SmallintField19: TSmallintField
      FieldName = 'IVA_ESENTE'
    end
    object IntegerField11: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
    end
    object IBStringField50: TIBStringField
      FieldName = 'VETTORE_IND'
      Size = 100
    end
    object IBStringField51: TIBStringField
      FieldName = 'VETTORE_IND2'
      Size = 100
    end
    object IBStringField52: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'RATA1_DATA'
    end
    object DateField2: TDateField
      FieldName = 'RATA2_DATA'
    end
    object DateField3: TDateField
      FieldName = 'RATA3_DATA'
    end
    object DateField4: TDateField
      FieldName = 'RATA4_DATA'
    end
    object DateField5: TDateField
      FieldName = 'RATA5_DATA'
    end
    object DateField6: TDateField
      FieldName = 'RATA6_DATA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBStringField53: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Size = 100
    end
    object IBStringField54: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField55: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBStringField56: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField57: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object FloatField49: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField50: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField20: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField13: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField21: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField22: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE1'
    end
    object FloatField51: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField52: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField58: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField59: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IntegerField14: TIntegerField
      FieldName = 'TIPO_AG'
    end
    object IBStringField60: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IntegerField15: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Required = True
    end
    object SmallintField23: TSmallintField
      FieldName = 'TIPO'
    end
    object IBStringField61: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Size = 50
    end
    object IBStringField62: TIBStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object IBStringField63: TIBStringField
      FieldName = 'NOME'
      Size = 30
    end
    object IBStringField64: TIBStringField
      FieldName = 'NOME_ALTRO'
      Size = 30
    end
    object IBStringField65: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 92
    end
    object IBStringField66: TIBStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object IntegerField16: TIntegerField
      FieldName = 'COMUNE_ID'
    end
    object IBStringField67: TIBStringField
      FieldName = 'PARTITA_IVA'
      Size = 30
    end
    object IBStringField68: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Size = 30
    end
    object SmallintField24: TSmallintField
      FieldName = 'PERSONA_FISICA'
    end
    object IntegerField17: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
    end
    object IBStringField69: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Size = 30
    end
    object IBStringField70: TIBStringField
      FieldName = 'MONETA_ID1'
      Size = 4
    end
    object IBStringField71: TIBStringField
      FieldName = 'PAGAMENTO_ID1'
      Size = 5
    end
    object IBStringField72: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Size = 4
    end
    object IBStringField73: TIBStringField
      FieldName = 'AGENTE_ID1'
      Size = 4
    end
    object IBStringField74: TIBStringField
      FieldName = 'LINGUA_ID'
      Size = 4
    end
    object IBStringField75: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Size = 30
    end
    object FloatField53: TFloatField
      FieldName = 'SCONTO_TESTATA1'
    end
    object FloatField54: TFloatField
      FieldName = 'SCONTO_TESTATA2'
    end
    object IBStringField76: TIBStringField
      FieldName = 'TEL11'
      Size = 15
    end
    object IBStringField77: TIBStringField
      FieldName = 'TEL21'
      Size = 15
    end
    object IBStringField78: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object IBStringField79: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object IBStringField80: TIBStringField
      FieldName = 'INTERNET'
      Size = 100
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
    end
    object IntegerField18: TIntegerField
      FieldName = 'SESSO'
    end
    object IntegerField19: TIntegerField
      FieldName = 'TITOLO_ID'
    end
    object IBStringField81: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object FloatField55: TFloatField
      FieldName = 'FIDO'
    end
    object SmallintField25: TSmallintField
      FieldName = 'ABILITA_PARTITA'
    end
    object IntegerField20: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
    end
    object SmallintField26: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
    end
    object SmallintField27: TSmallintField
      FieldName = 'IVA_SOSPESA1'
    end
    object SmallintField28: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
    end
    object IBStringField82: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Size = 4
    end
    object IntegerField21: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
    end
    object IntegerField22: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
    end
    object IntegerField23: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
    end
    object IntegerField24: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
    end
    object SmallintField29: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
    end
    object IntegerField25: TIntegerField
      FieldName = 'NAZIONE_ID'
    end
    object IntegerField26: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
    end
    object IBStringField83: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object FloatField56: TFloatField
      FieldName = 'RISCHIO'
    end
    object IntegerField27: TIntegerField
      FieldName = 'GG_SCADENZA1'
    end
    object IntegerField28: TIntegerField
      FieldName = 'GG_SCADENZA2'
    end
    object IntegerField29: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
    end
    object SmallintField30: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
    end
    object SmallintField31: TSmallintField
      FieldName = 'CERTIFICATO'
    end
    object IBStringField84: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Size = 50
    end
    object IBStringField85: TIBStringField
      FieldName = 'INDIRIZZO2'
      Size = 100
    end
    object IBStringField86: TIBStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object IntegerField30: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
    end
    object IBStringField87: TIBStringField
      FieldName = 'CAB_ID'
      Size = 13
    end
    object IBStringField88: TIBStringField
      FieldName = 'ABI_ID'
      Size = 13
    end
    object IBStringField89: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Size = 10
    end
    object IBStringField90: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Size = 50
    end
    object IBStringField91: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Size = 5
    end
    object IBStringField92: TIBStringField
      FieldName = 'NAZNASC_DESCR'
    end
    object IBStringField93: TIBStringField
      FieldName = 'COM_DESCR'
      Size = 50
    end
    object IBStringField94: TIBStringField
      FieldName = 'CAP_DESCR'
      Size = 5
    end
    object IBStringField95: TIBStringField
      FieldName = 'PR_DESCR'
      Size = 2
    end
    object IBStringField96: TIBStringField
      FieldName = 'CAB_DESCR'
      Size = 50
    end
    object IBStringField97: TIBStringField
      FieldName = 'ABI_DESCR'
      Size = 100
    end
    object IBStringField98: TIBStringField
      FieldName = 'NAZ_DESCR'
      Size = 50
    end
    object IBStringField99: TIBStringField
      FieldName = 'FASON'
      Size = 1
    end
    object IBStringField100: TIBStringField
      FieldName = 'NOTE'
      Size = 1000
    end
    object IBStringField101: TIBStringField
      FieldName = 'COD2'
      Size = 4
    end
    object IBStringField102: TIBStringField
      FieldName = 'CODICE_ZONA_ID1'
      Size = 7
    end
    object IBStringField103: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID1'
      Size = 7
    end
    object FloatField57: TFloatField
      FieldName = 'PROVVIGIONE1'
    end
    object IBStringField104: TIBStringField
      FieldName = 'CG1'
      Size = 4
    end
    object IBStringField105: TIBStringField
      FieldName = 'CA1'
      Size = 4
    end
    object IBStringField106: TIBStringField
      FieldName = 'CR1'
      Size = 4
    end
    object IBStringField107: TIBStringField
      FieldName = 'CA_ID'
      Origin = '"TAB_DOCUMENTI"."CA_ID"'
      Size = 4
    end
    object IBStringField108: TIBStringField
      FieldName = 'CODICE1'
      Origin = '"TAB_AGENTI"."CODICE"'
      Size = 4
    end
    object IBStringField109: TIBStringField
      FieldName = 'DESCR1'
      Origin = '"TAB_AGENTI"."DESCR"'
      Size = 50
    end
    object IBStringField110: TIBStringField
      FieldName = 'CODICE_ZONA_ID2'
      Origin = '"TAB_AGENTI"."CODICE_ZONA_ID"'
      Size = 7
    end
    object IBStringField111: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID2'
      Origin = '"TAB_AGENTI"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object FloatField58: TFloatField
      FieldName = 'PROVVIGIONE2'
      Origin = '"TAB_AGENTI"."PROVVIGIONE"'
    end
    object FloatField59: TFloatField
      FieldName = 'IMPORTO_FISSO1'
      Origin = '"TAB_AGENTI"."IMPORTO_FISSO"'
    end
    object SmallintField32: TSmallintField
      FieldName = 'TIPO_CLI_FOR1'
      Origin = '"TAB_AGENTI"."TIPO_CLI_FOR"'
    end
    object IntegerField31: TIntegerField
      FieldName = 'CLI_FOR_ID1'
      Origin = '"TAB_AGENTI"."CLI_FOR_ID"'
    end
    object SmallintField33: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV1'
      Origin = '"TAB_AGENTI"."TIPO_SOMMA_PRV"'
    end
    object SmallintField34: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE2'
      Origin = '"TAB_AGENTI"."TIPO_PROVVIGIONE"'
    end
    object FloatField60: TFloatField
      FieldName = 'TOTALE_FATTURATO1'
      Origin = '"TAB_AGENTI"."TOTALE_FATTURATO"'
    end
    object FloatField61: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE1'
      Origin = '"TAB_AGENTI"."TOTALE_PROVVIGIONE"'
    end
    object IBStringField112: TIBStringField
      FieldName = 'CG2'
      Origin = '"TAB_AGENTI"."CG"'
      Size = 4
    end
    object IBStringField113: TIBStringField
      FieldName = 'CA2'
      Origin = '"TAB_AGENTI"."CA"'
      Size = 4
    end
    object IntegerField32: TIntegerField
      FieldName = 'TIPO_AG1'
      Origin = '"TAB_AGENTI"."TIPO_AG"'
    end
    object IBStringField114: TIBStringField
      FieldName = 'CR2'
      Origin = '"TAB_AGENTI"."CR"'
      Size = 4
    end
    object IBStringField115: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 3
    end
    object IBStringField116: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 5
    end
    object IBQuery2CODICE2: TIBStringField
      FieldName = 'CODICE2'
      Origin = '"TAB_VETTORI"."CODICE"'
      Size = 7
    end
    object IBQuery2RAGIONE_SOCIALE: TIBStringField
      FieldName = 'RAGIONE_SOCIALE'
      Origin = '"TAB_VETTORI"."RAGIONE_SOCIALE"'
      Size = 30
    end
    object IBQuery2PARTITA_IVA1: TIBStringField
      FieldName = 'PARTITA_IVA1'
      Origin = '"TAB_VETTORI"."PARTITA_IVA"'
    end
    object IBQuery2CODICE_FISCALE1: TIBStringField
      FieldName = 'CODICE_FISCALE1'
      Origin = '"TAB_VETTORI"."CODICE_FISCALE"'
      Size = 16
    end
    object IBQuery2INDIRIZZO1: TIBStringField
      FieldName = 'INDIRIZZO1'
      Origin = '"TAB_VETTORI"."INDIRIZZO"'
      Size = 100
    end
    object IBQuery2CAP: TIBStringField
      FieldName = 'CAP'
      Origin = '"TAB_VETTORI"."CAP"'
      Size = 5
    end
    object IBQuery2CITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = '"TAB_VETTORI"."CITTA"'
      Size = 30
    end
    object IBQuery2PROVINCIA_ID: TIntegerField
      FieldName = 'PROVINCIA_ID'
      Origin = '"TAB_VETTORI"."PROVINCIA_ID"'
    end
    object IBQuery2STATO: TIBStringField
      FieldName = 'STATO'
      Origin = '"TAB_VETTORI"."STATO"'
      Size = 2
    end
    object IBQuery2TEL12: TIBStringField
      FieldName = 'TEL12'
      Origin = '"TAB_VETTORI"."TEL1"'
      Size = 15
    end
    object IBQuery2TEL22: TIBStringField
      FieldName = 'TEL22'
      Origin = '"TAB_VETTORI"."TEL2"'
      Size = 15
    end
    object IBQuery2FAX1: TIBStringField
      FieldName = 'FAX1'
      Origin = '"TAB_VETTORI"."FAX"'
      Size = 15
    end
    object IBQuery2STATO_ISO: TIBStringField
      FieldName = 'STATO_ISO'
      Origin = '"TAB_VETTORI"."STATO_ISO"'
    end
    object IBQuery2MONETA_ID2: TIBStringField
      FieldName = 'MONETA_ID2'
      Origin = '"TAB_VETTORI"."MONETA_ID"'
      Size = 4
    end
    object IBQuery2ABBONATO: TSmallintField
      FieldName = 'ABBONATO'
      Origin = '"TAB_VETTORI"."ABBONATO"'
    end
    object IBQuery2NOTA1: TIBStringField
      FieldName = 'NOTA1'
      Origin = '"TAB_VETTORI"."NOTA"'
      Size = 255
    end
    object IBQuery2PROV: TIBStringField
      FieldName = 'PROV'
      Origin = '"TAB_VETTORI"."PROV"'
      Size = 2
    end
  end
end
