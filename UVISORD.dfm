object fVisOrdini: TfVisOrdini
  Left = 211
  Top = 97
  Width = 798
  Height = 598
  Caption = 'Visualizzazione Ordini'
  Color = clBtnFace
  Constraints.MinHeight = 360
  Constraints.MinWidth = 554
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 364
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object dbgDocView: TDBGrid
      Left = 1
      Top = 1
      Width = 788
      Height = 362
      Align = alClient
      Color = 13828095
      Ctl3D = False
      DataSource = DataSource7
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgDocViewDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ACQ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Tipo'
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
          FieldName = 'SNRP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Stato'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 18
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NUMERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'N'#176
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'DATA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data'
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
          Color = clWhite
          Expanded = False
          FieldName = 'FOR_NOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Fornitore'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 211
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'CLI_NOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 205
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'CODICE_ART'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clWhite
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
          Color = clWhite
          Expanded = False
          FieldName = 'PREZZO_UNITA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clWhite
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
          Width = 91
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'TOTALE_PROVV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Provv.'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'AGENTE_NOM'
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
          Width = 161
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'DATA_SPEDIZIONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data spedizione'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'TOTALE_SCONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Totale - Sconto'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Color = clWhite
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
          Color = clWhite
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
          Expanded = False
          FieldName = 'AGENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
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
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
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
  object paCtrl: TPanel
    Left = 0
    Top = 364
    Width = 790
    Height = 200
    Align = alBottom
    BevelOuter = bvLowered
    Caption = 'v'
    Color = 16758122
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 718
      Top = 5
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = '&Visualizza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object bbStampa: TBitBtn
      Left = 718
      Top = 33
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa &1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbStampaClick
    end
    object bbEsci: TBitBtn
      Left = 718
      Top = 157
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbEsciClick
    end
    object gbTipoCliFor: TGroupBox
      Left = 3
      Top = 2
      Width = 630
      Height = 191
      Caption = '&Tipo'
      PopupMenu = PopupMenu1
      TabOrder = 3
      object laDataDa: TLabel
        Left = 516
        Top = 10
        Width = 14
        Height = 13
        Caption = 'Da'
      end
      object laDataA: TLabel
        Left = 518
        Top = 34
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object cbCli: TCheckBox
        Left = 6
        Top = 14
        Width = 57
        Height = 17
        Caption = 'Cliente'
        TabOrder = 0
        OnClick = cbCliClick
      end
      object cbForn: TCheckBox
        Left = 262
        Top = 14
        Width = 63
        Height = 17
        Caption = 'Fornitore'
        TabOrder = 1
        OnClick = cbFornClick
      end
      object LookCliDescr: TRxDBLookupCombo
        Left = 70
        Top = 30
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'CLI_NOM'
        LookupDisplay = 'CLI_NOM'
        LookupSource = DataSource9
        TabOrder = 2
        OnChange = LookCliDescrChange
      end
      object LookFornDescr: TRxDBLookupCombo
        Left = 326
        Top = 30
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dsoForn
        TabOrder = 3
        OnChange = LookFornDescrChange
      end
      object LookCliCod: TRxDBLookupCombo
        Left = 6
        Top = 30
        Width = 65
        Height = 21
        DropDownCount = 8
        LookupField = 'CLI_NOM'
        LookupDisplay = 'CLI_ID'
        LookupSource = DataSource9
        TabOrder = 4
        OnChange = LookCliCodChange
      end
      object LookFornCod: TRxDBLookupCombo
        Left = 262
        Top = 30
        Width = 65
        Height = 20
        DropDownCount = 8
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'ID_CLI_FOR'
        LookupSource = dsoForn
        TabOrder = 5
        OnChange = LookFornCodChange
      end
      object cbAgente: TCheckBox
        Left = 6
        Top = 54
        Width = 57
        Height = 17
        Caption = 'Agente'
        TabOrder = 6
        OnClick = cbAgenteClick
      end
      object LookAgCod: TRxDBLookupCombo
        Left = 6
        Top = 70
        Width = 65
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource4
        TabOrder = 7
        OnChange = LookAgCodChange
      end
      object LookAgDescr: TRxDBLookupCombo
        Left = 70
        Top = 70
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource4
        TabOrder = 8
        OnChange = LookAgDescrChange
      end
      object medatada: TDateEdit
        Left = 534
        Top = 8
        Width = 90
        Height = 21
        NumGlyphs = 2
        TabOrder = 9
        Text = '01/01/2001'
        OnChange = DateEdit1Change
      end
      object medataa: TDateEdit
        Left = 534
        Top = 30
        Width = 90
        Height = 21
        NumGlyphs = 2
        TabOrder = 10
        OnChange = DateEdit2Change
      end
      object CheckBox1: TCheckBox
        Left = 262
        Top = 54
        Width = 90
        Height = 17
        Caption = 'Capo Gruppo'
        TabOrder = 11
        OnClick = CheckBox1Click
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 262
        Top = 70
        Width = 65
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource5
        TabOrder = 12
        OnChange = RxDBLookupCombo3Change
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 326
        Top = 70
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource5
        TabOrder = 13
        OnChange = RxDBLookupCombo4Change
      end
      object CheckBox2: TCheckBox
        Left = 6
        Top = 109
        Width = 90
        Height = 17
        Caption = 'Capo Area'
        TabOrder = 14
        OnClick = CheckBox2Click
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 6
        Top = 125
        Width = 65
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource6
        TabOrder = 15
        OnChange = RxDBLookupCombo5Change
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 70
        Top = 125
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource6
        TabOrder = 16
        OnChange = RxDBLookupCombo6Change
      end
      object CheckBox3: TCheckBox
        Left = 359
        Top = 110
        Width = 90
        Height = 17
        Caption = 'Partita I.V.A.'
        TabOrder = 17
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 262
        Top = 126
        Width = 188
        Height = 21
        DropDownCount = 10
        LookupField = 'PARTITA_IVA'
        LookupDisplay = 'PARTITA_IVA'
        LookupSource = dsoCli
        TabOrder = 18
      end
      object CheckBox4: TCheckBox
        Left = 455
        Top = 110
        Width = 90
        Height = 17
        Caption = 'Articolo'
        TabOrder = 19
        OnClick = CheckBox4Click
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 454
        Top = 126
        Width = 169
        Height = 21
        DropDownCount = 10
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'CODICE_ARTICOLO'
        LookupSource = dmodAz.dsoTab_Articoli
        TabOrder = 20
        OnChange = RxDBLookupCombo1Change
      end
      object RadioGroup1: TRadioGroup
        Left = 516
        Top = 61
        Width = 110
        Height = 33
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemIndex = 1
        Items.Strings = (
          'S'
          'N'
          'R'
          'P')
        ParentFont = False
        TabOrder = 21
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 264
        Top = 148
        Width = 358
        Height = 21
        DropDownCount = 10
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Articoli
        TabOrder = 22
        OnChange = RxDBLookupCombo2Change
      end
      object CheckBox5: TCheckBox
        Left = 516
        Top = 51
        Width = 90
        Height = 15
        Caption = 'Stato Ordine'
        TabOrder = 23
      end
      object CheckBox6: TCheckBox
        Left = 6
        Top = 146
        Width = 90
        Height = 12
        Caption = 'Tipo Ordine'
        TabOrder = 24
      end
      object RadioGroup2: TRadioGroup
        Left = 0
        Top = 158
        Width = 201
        Height = 30
        Columns = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'F')
        ParentFont = False
        TabOrder = 25
      end
      object CheckBox7: TCheckBox
        Left = 6
        Top = 94
        Width = 90
        Height = 17
        Caption = 'R.C.G.'
        TabOrder = 26
        OnClick = CheckBox7Click
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 93
        Top = 94
        Width = 65
        Height = 20
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource8
        TabOrder = 27
        OnChange = RxDBLookupCombo8Change
      end
      object RxDBLookupCombo9: TRxDBLookupCombo
        Left = 158
        Top = 94
        Width = 188
        Height = 20
        DropDownCount = 10
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource8
        TabOrder = 28
        OnChange = RxDBLookupCombo9Change
      end
    end
    object BitBtn2: TBitBtn
      Left = 635
      Top = 30
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Caption = 'Tot.Cli.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 635
      Top = 128
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Caption = 'St. Acconti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 635
      Top = 5
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Caption = 'Tot.For.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 718
      Top = 57
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa &2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 718
      Top = 81
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa &3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 718
      Top = 105
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa &4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 718
      Top = 129
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Caption = 'Stampa &5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 635
      Top = 61
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Hint = 'riepilogo Mensile Fornitori'
      Caption = 'Riep.For.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 635
      Top = 86
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Hint = 'riepilogo Mensile Clienti'
      Caption = 'Riep.Cli.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn10Click
    end
  end
  object dsoAgente: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    OnDataChange = dsoAgenteDataChange
    Left = 489
    Top = 220
  end
  object dsoOrd_Filter: TDataSource
    DataSet = dmodAz.q_ibqVisOrd
    Left = 492
    Top = 92
  end
  object dsoForn: TDataSource
    DataSet = dmodAz.ibqTab_For
    OnDataChange = dsoFornDataChange
    Left = 272
    Top = 280
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    OnDataChange = dsoCliDataChange
    Left = 266
    Top = 248
  end
  object TotCli_descr: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select Cli_nom, Sum (Totale) as F_1, Sum(Totale_provv) as F_2 fr' +
        'om ordini'
      'where data>=:d1 and data <=:d2'
      'group by cli_nom'
      'order by cli_nom')
    Left = 496
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object TotCli_descrCLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Size = 100
    end
    object TotCli_descrF_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
    object TotCli_descrF_2: TFloatField
      FieldName = 'F_2'
      DisplayFormat = '#,##.00'
    end
  end
  object frReport1: TfrReport
    Values.Data = {
      0400000000000000000000014100000000000000014200000000000000014300
      0000000000000144}
    OnGetValue = frReport1GetValue
    Left = 480
    Top = 360
    Data = {050000000A43617465676F72696131022041022042022044022043}
    PixelsPerInch = 96
  end
  object DataSource1: TDataSource
    DataSet = TotCli_descr
    Left = 440
    Top = 512
  end
  object TotFor_descr: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select For_nom, Sum (Totale) as F_1, Sum(Totale_provv) as F_2 fr' +
        'om ordini'
      'where data>=:d1 and data <=:d2'
      'group by For_nom'
      'order by For_nom')
    Left = 552
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object TotFor_descrFOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      Size = 100
    end
    object TotFor_descrF_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
    object TotFor_descrF_2: TFloatField
      FieldName = 'F_2'
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource2: TDataSource
    DataSet = TotFor_descr
    Left = 384
    Top = 512
  end
  object TotArtFor: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select CODICE_ART, DESCR, QTA, PREZZO_SCONTATO, PROVV,Fk_codice'
      'from odr_dett'
      'order by codice_art')
    Left = 192
    Top = 152
    object TotArtForCODICE_ART: TIBStringField
      FieldName = 'CODICE_ART'
    end
    object TotArtForDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object TotArtForPREZZO_SCONTATO: TFloatField
      FieldName = 'PREZZO_SCONTATO'
      DisplayFormat = '#,##.00'
    end
    object TotArtForPROVV: TFloatField
      FieldName = 'PROVV'
    end
    object TotArtForFK_CODICE: TIntegerField
      FieldName = 'FK_CODICE'
    end
    object TotArtForFornitore: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornitore'
      LookupDataSet = dmodAz.ibqOrdini
      LookupKeyFields = 'PK_CODICE'
      LookupResultField = 'FOR_NOM'
      KeyFields = 'PROVV'
      Lookup = True
    end
    object TotArtForQTA: TFloatField
      FieldName = 'QTA'
    end
  end
  object DataSource3: TDataSource
    Left = 40
    Top = 288
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 0'
      'order by descr')
    Left = 72
    Top = 401
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
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 128
    Top = 393
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 1'
      'order by descr')
    Left = 328
    Top = 465
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
  object DataSource5: TDataSource
    DataSet = IBQuery1
    Left = 392
    Top = 457
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2'
      'order by descr')
    Left = 168
    Top = 473
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
  object DataSource6: TDataSource
    DataSet = IBQuery2
    Left = 216
    Top = 473
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT ordini.*,odr_dett.*,tab_articoli.COSTO_STANDART'
      'FROM ordini'
      'JOIN odr_dett ON'
      '(ordini.PK_CODICE=odr_dett.FK_CODICE)'
      'left JOIN tab_articoli ON'
      '(odr_dett.CODICE_ART=tab_articoli.codice_Articolo)'
      'order by Ordini.data,ordini.numero')
    Left = 608
    Top = 296
    object IBQuery4PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery4NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object IBQuery4AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery4AGENTE_NOM: TIBStringField
      FieldName = 'AGENTE_NOM'
      Size = 100
    end
    object IBQuery4CLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object IBQuery4CLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Size = 100
    end
    object IBQuery4FOR_ID: TIntegerField
      FieldName = 'FOR_ID'
    end
    object IBQuery4FOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      Size = 100
    end
    object IBQuery4PAGAM_ID: TIBStringField
      FieldName = 'PAGAM_ID'
      Size = 4
    end
    object IBQuery4NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 502
    end
    object IBQuery4BANCA: TIBStringField
      FieldName = 'BANCA'
      Size = 5
    end
    object IBQuery4SPEDOZIONE_ID: TIBStringField
      FieldName = 'SPEDOZIONE_ID'
      Size = 4
    end
    object IBQuery4CORIERE: TIBStringField
      FieldName = 'CORIERE'
      Size = 100
    end
    object IBQuery4PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object IBQuery4SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery4SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery4SCONTO_MON: TFloatField
      FieldName = 'SCONTO_MON'
    end
    object IBQuery4PROVV1: TFloatField
      FieldName = 'PROVV1'
    end
    object IBQuery4PROVV2: TFloatField
      FieldName = 'PROVV2'
    end
    object IBQuery4PROVV_MON: TFloatField
      FieldName = 'PROVV_MON'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4PROT: TIBStringField
      FieldName = 'PROT'
      Size = 22
    end
    object IBQuery4TOTALE_IMPON: TFloatField
      FieldName = 'TOTALE_IMPON'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4TOTALE: TFloatField
      FieldName = 'TOTALE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4TOTALE_PROVV: TFloatField
      FieldName = 'TOTALE_PROVV'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4TOTALE_SCONTO: TFloatField
      FieldName = 'TOTALE_SCONTO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4BANCA_NOM: TIBStringField
      FieldName = 'BANCA_NOM'
      Size = 100
    end
    object IBQuery4PAGAM_NOM: TIBStringField
      FieldName = 'PAGAM_NOM'
      Size = 100
    end
    object IBQuery4PORTO_NOM: TIBStringField
      FieldName = 'PORTO_NOM'
      Size = 100
    end
    object IBQuery4SPEDIZ_NOM: TIBStringField
      FieldName = 'SPEDIZ_NOM'
      Size = 100
    end
    object IBQuery4CLI_IND: TIBStringField
      FieldName = 'CLI_IND'
      Size = 255
    end
    object IBQuery4FOR_IND: TIBStringField
      FieldName = 'FOR_IND'
      Size = 255
    end
    object IBQuery4CLI_TEL: TIBStringField
      FieldName = 'CLI_TEL'
      Size = 26
    end
    object IBQuery4FOR_TEL: TIBStringField
      FieldName = 'FOR_TEL'
      Size = 26
    end
    object IBQuery4FOR_PIVA: TIBStringField
      FieldName = 'FOR_PIVA'
      Size = 30
    end
    object IBQuery4CLI_PIVA: TIBStringField
      FieldName = 'CLI_PIVA'
      Size = 30
    end
    object IBQuery4CLI_IND2: TIBStringField
      FieldName = 'CLI_IND2'
      Size = 255
    end
    object IBQuery4FOR_IND2: TIBStringField
      FieldName = 'FOR_IND2'
      Size = 255
    end
    object IBQuery4DATA_SPEDIZIONE_TEXT: TIBStringField
      FieldName = 'DATA_SPEDIZIONE_TEXT'
      Size = 50
    end
    object IBQuery4CLI_TEL2: TIBStringField
      FieldName = 'CLI_TEL2'
      Size = 50
    end
    object IBQuery4CLI_FAX2: TIBStringField
      FieldName = 'CLI_FAX2'
      Size = 50
    end
    object IBQuery4FOR_TEL2: TIBStringField
      FieldName = 'FOR_TEL2'
      Size = 50
    end
    object IBQuery4FOR_FAX2: TIBStringField
      FieldName = 'FOR_FAX2'
      Size = 50
    end
    object IBQuery4DESTINAZIONE: TIBStringField
      FieldName = 'DESTINAZIONE'
      Size = 50
    end
    object IBQuery4CABABI: TIBStringField
      FieldName = 'CABABI'
      Size = 50
    end
    object IBQuery4DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQuery4DATA_SPEDIZIONE: TDateTimeField
      FieldName = 'DATA_SPEDIZIONE'
    end
    object IBQuery4SNRP: TIBStringField
      FieldName = 'SNRP'
      Size = 1
    end
    object IBQuery4ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery4TIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object IBQuery4CA_DESCR: TIBStringField
      FieldName = 'CA_DESCR'
      Size = 52
    end
    object IBQuery4CG_DESCR: TIBStringField
      FieldName = 'CG_DESCR'
      Size = 52
    end
    object IBQuery4CA: TIBStringField
      FieldName = 'CA'
      Size = 5
    end
    object IBQuery4CG: TIBStringField
      FieldName = 'CG'
      Size = 5
    end
    object IBQuery4FK_CODICE: TIntegerField
      FieldName = 'FK_CODICE'
    end
    object IBQuery4CODICE_ART: TIBStringField
      FieldName = 'CODICE_ART'
    end
    object IBQuery4DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery4PREZZO_UNITA: TFloatField
      FieldName = 'PREZZO_UNITA'
      currency = True
    end
    object IBQuery4SCONTO11: TFloatField
      FieldName = 'SCONTO11'
      currency = True
    end
    object IBQuery4SCONTO21: TFloatField
      FieldName = 'SCONTO21'
      currency = True
    end
    object IBQuery4SCONTO_MON1: TFloatField
      FieldName = 'SCONTO_MON1'
      currency = True
    end
    object IBQuery4PREZZO_TOT: TFloatField
      FieldName = 'PREZZO_TOT'
      currency = True
    end
    object IBQuery4SCONTO_TOT: TFloatField
      FieldName = 'SCONTO_TOT'
      currency = True
    end
    object IBQuery4PREZZO_SCONTATO: TFloatField
      FieldName = 'PREZZO_SCONTATO'
      currency = True
    end
    object IBQuery4PROVV: TFloatField
      FieldName = 'PROVV'
    end
    object IBQuery4CAPO_AREA: TFloatField
      FieldName = 'CAPO_AREA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4CAPO_GRUPPO: TFloatField
      FieldName = 'CAPO_GRUPPO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4AGENTE: TFloatField
      FieldName = 'AGENTE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4ACQ: TIBStringField
      FieldName = 'ACQ'
      Size = 1
    end
    object IBQuery4QQQ: TFloatField
      FieldName = 'QQQ'
    end
    object IBQuery4TOTALE_QTA: TFloatField
      FieldName = 'TOTALE_QTA'
    end
    object IBQuery4QTA: TFloatField
      FieldName = 'QTA'
    end
    object IBQuery4ID_CODICE: TFloatField
      FieldName = 'ID_CODICE'
    end
    object IBQuery4DIAM: TFloatField
      FieldName = 'DIAM'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4QUALITA: TIBStringField
      FieldName = 'QUALITA'
      Size = 30
    end
    object IBQuery4BARRE: TIBStringField
      FieldName = 'BARRE'
      Size = 30
    end
    object IBQuery4PREZZODEST: TFloatField
      FieldName = 'PREZZODEST'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4EXTRA: TFloatField
      FieldName = 'EXTRA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4UM: TIBStringField
      FieldName = 'UM'
      Size = 2
    end
    object IBQuery4FINITURA: TIBStringField
      FieldName = 'FINITURA'
      Size = 30
    end
    object IBQuery4ACCIAIO: TIBStringField
      FieldName = 'ACCIAIO'
      Size = 30
    end
    object IBQuery4NORMA: TIBStringField
      FieldName = 'NORMA'
      Size = 30
    end
    object IBQuery4LATO: TFloatField
      FieldName = 'LATO'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4SPESSORE: TFloatField
      FieldName = 'SPESSORE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4LUNGHEZZA: TFloatField
      FieldName = 'LUNGHEZZA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4LARGHEZZA: TFloatField
      FieldName = 'LARGHEZZA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4TIPOLOGIA: TFloatField
      FieldName = 'TIPOLOGIA'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4NUMFOGLI: TFloatField
      FieldName = 'NUMFOGLI'
      DisplayFormat = '#,##.00'
    end
    object IBQuery4COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      currency = True
    end
    object IBQuery4CR: TIBStringField
      FieldName = 'CR'
      Size = 4
    end
    object IBQuery4CAPO_REPARTO: TFloatField
      FieldName = 'CAPO_REPARTO'
    end
  end
  object DataSource7: TDataSource
    DataSet = IBQuery4
    Left = 640
    Top = 296
  end
  object frDesigner1: TfrDesigner
    Left = 592
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 56
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 3'
      'order by descr')
    Left = 368
    Top = 433
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
  object DataSource8: TDataSource
    DataSet = IBQuery5
    Left = 424
    Top = 425
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select distinct cli_nom,cli_id from ordini'
      'order by cli_nom')
    Left = 152
    Top = 216
    object IBQuery6CLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Size = 100
    end
    object IBQuery6CLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
  end
  object DataSource9: TDataSource
    DataSet = IBQuery6
    Left = 192
    Top = 216
  end
  object IBQuery7: TIBQuery
    SQL.Strings = (
      'SELECT ordini.*,odr_dett.*,tab_articoli.COSTO_STANDART'
      'FROM ordini'
      'JOIN odr_dett ON'
      '(ordini.PK_CODICE=odr_dett.FK_CODICE)'
      'left JOIN tab_articoli ON'
      '(odr_dett.CODICE_ART=tab_articoli.codice_Articolo)'
      'order by Ordini.data,ordini.numero')
    Left = 616
    Top = 48
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from ordini '
      'where acconto <> 0')
    Left = 376
    Top = 160
    object IBQuery8PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery8NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object IBQuery8AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Size = 4
    end
    object IBQuery8AGENTE_NOM: TIBStringField
      FieldName = 'AGENTE_NOM'
      Size = 100
    end
    object IBQuery8CLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object IBQuery8CLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      Size = 100
    end
    object IBQuery8FOR_ID: TIntegerField
      FieldName = 'FOR_ID'
    end
    object IBQuery8FOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      Size = 100
    end
    object IBQuery8PAGAM_ID: TIBStringField
      FieldName = 'PAGAM_ID'
      Size = 4
    end
    object IBQuery8NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 502
    end
    object IBQuery8BANCA: TIBStringField
      FieldName = 'BANCA'
      Size = 5
    end
    object IBQuery8SPEDOZIONE_ID: TIBStringField
      FieldName = 'SPEDOZIONE_ID'
      Size = 4
    end
    object IBQuery8CORIERE: TIBStringField
      FieldName = 'CORIERE'
      Size = 100
    end
    object IBQuery8PORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Size = 4
    end
    object IBQuery8SCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBQuery8SCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBQuery8SCONTO_MON: TFloatField
      FieldName = 'SCONTO_MON'
    end
    object IBQuery8PROVV1: TFloatField
      FieldName = 'PROVV1'
    end
    object IBQuery8PROVV2: TFloatField
      FieldName = 'PROVV2'
    end
    object IBQuery8PROVV_MON: TFloatField
      FieldName = 'PROVV_MON'
    end
    object IBQuery8PROT: TIBStringField
      FieldName = 'PROT'
      Size = 22
    end
    object IBQuery8TOTALE_IMPON: TFloatField
      FieldName = 'TOTALE_IMPON'
    end
    object IBQuery8TOTALE: TFloatField
      FieldName = 'TOTALE'
    end
    object IBQuery8TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
    end
    object IBQuery8TOTALE_PROVV: TFloatField
      FieldName = 'TOTALE_PROVV'
    end
    object IBQuery8TOTALE_SCONTO: TFloatField
      FieldName = 'TOTALE_SCONTO'
    end
    object IBQuery8BANCA_NOM: TIBStringField
      FieldName = 'BANCA_NOM'
      Size = 100
    end
    object IBQuery8PAGAM_NOM: TIBStringField
      FieldName = 'PAGAM_NOM'
      Size = 100
    end
    object IBQuery8PORTO_NOM: TIBStringField
      FieldName = 'PORTO_NOM'
      Size = 100
    end
    object IBQuery8SPEDIZ_NOM: TIBStringField
      FieldName = 'SPEDIZ_NOM'
      Size = 100
    end
    object IBQuery8CLI_IND: TIBStringField
      FieldName = 'CLI_IND'
      Size = 255
    end
    object IBQuery8FOR_IND: TIBStringField
      FieldName = 'FOR_IND'
      Size = 255
    end
    object IBQuery8CLI_TEL: TIBStringField
      FieldName = 'CLI_TEL'
      Size = 26
    end
    object IBQuery8FOR_TEL: TIBStringField
      FieldName = 'FOR_TEL'
      Size = 26
    end
    object IBQuery8FOR_PIVA: TIBStringField
      FieldName = 'FOR_PIVA'
      Size = 30
    end
    object IBQuery8CLI_PIVA: TIBStringField
      FieldName = 'CLI_PIVA'
      Size = 30
    end
    object IBQuery8CLI_IND2: TIBStringField
      FieldName = 'CLI_IND2'
      Size = 255
    end
    object IBQuery8FOR_IND2: TIBStringField
      FieldName = 'FOR_IND2'
      Size = 255
    end
    object IBQuery8DATA_SPEDIZIONE_TEXT: TIBStringField
      FieldName = 'DATA_SPEDIZIONE_TEXT'
      Size = 50
    end
    object IBQuery8CLI_TEL2: TIBStringField
      FieldName = 'CLI_TEL2'
      Size = 50
    end
    object IBQuery8CLI_FAX2: TIBStringField
      FieldName = 'CLI_FAX2'
      Size = 50
    end
    object IBQuery8FOR_TEL2: TIBStringField
      FieldName = 'FOR_TEL2'
      Size = 50
    end
    object IBQuery8FOR_FAX2: TIBStringField
      FieldName = 'FOR_FAX2'
      Size = 50
    end
    object IBQuery8DESTINAZIONE: TIBStringField
      FieldName = 'DESTINAZIONE'
      Size = 152
    end
    object IBQuery8CABABI: TIBStringField
      FieldName = 'CABABI'
      Size = 50
    end
    object IBQuery8DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object IBQuery8DATA_SPEDIZIONE: TDateTimeField
      FieldName = 'DATA_SPEDIZIONE'
    end
    object IBQuery8SNRP: TIBStringField
      FieldName = 'SNRP'
      Size = 1
    end
    object IBQuery8ACCONTO: TFloatField
      FieldName = 'ACCONTO'
    end
    object IBQuery8TIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object IBQuery8CA_DESCR: TIBStringField
      FieldName = 'CA_DESCR'
      Size = 52
    end
    object IBQuery8CG_DESCR: TIBStringField
      FieldName = 'CG_DESCR'
      Size = 52
    end
    object IBQuery8CA: TIBStringField
      FieldName = 'CA'
      Size = 5
    end
    object IBQuery8CG: TIBStringField
      FieldName = 'CG'
      Size = 5
    end
    object IBQuery8ACQ: TIBStringField
      FieldName = 'ACQ'
      Size = 1
    end
    object IBQuery8QQQ: TFloatField
      FieldName = 'QQQ'
    end
    object IBQuery8TOTALE_QTA: TFloatField
      FieldName = 'TOTALE_QTA'
    end
    object IBQuery8CR: TIBStringField
      FieldName = 'CR'
      Size = 5
    end
  end
  object ibTotForMen: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      'select distinct mese,FOR_NOM,'
      'sum(TOTALE_QTA) as tot_qta,sum(TOTALE_SCONTO) as tot_sconto,'
      
        'sum(TOTALE) as totale,sum(TOTALE_PROVV) as tot_provv,count(*) fr' +
        'om ORD_MENSILE_DETT'
      'where tipo='#39'ORD'#39
      'group by mese,FOR_NOM')
    Left = 48
    Top = 40
    object ibTotForMenMESE: TSmallintField
      FieldName = 'MESE'
      ProviderFlags = []
    end
    object ibTotForMenFOR_NOM: TIBStringField
      FieldName = 'FOR_NOM'
      ProviderFlags = []
      Size = 100
    end
    object ibTotForMenTOT_QTA: TFloatField
      FieldName = 'TOT_QTA'
      ProviderFlags = []
    end
    object ibTotForMenTOT_SCONTO: TFloatField
      FieldName = 'TOT_SCONTO'
      ProviderFlags = []
      currency = True
    end
    object ibTotForMenTOTALE: TFloatField
      FieldName = 'TOTALE'
      ProviderFlags = []
      currency = True
    end
    object ibTotForMenCOUNT: TIntegerField
      FieldName = 'COUNT'
      ProviderFlags = []
    end
    object ibTotForMenTOT_PROVV: TFloatField
      FieldName = 'TOT_PROVV'
      ProviderFlags = []
      currency = True
    end
  end
  object ibTotCliMen: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      'select distinct mese,CLI_NOM,'
      'sum(TOTALE_QTA) as tot_qta,sum(TOTALE_SCONTO) as tot_sconto,'
      'sum(TOTALE) as totale,sum(TOTALE_PROVV) as tot_provv,count(*) '
      'from ORD_MENSILE_DETT'
      'where tipo='#39'ORD'#39
      'group by mese,CLI_NOM')
    Left = 168
    Top = 32
    object SmallintField7: TSmallintField
      FieldName = 'MESE'
      ProviderFlags = []
    end
    object FloatField9: TFloatField
      FieldName = 'TOT_QTA'
      ProviderFlags = []
    end
    object FloatField10: TFloatField
      FieldName = 'TOT_SCONTO'
      ProviderFlags = []
      currency = True
    end
    object FloatField11: TFloatField
      FieldName = 'TOTALE'
      ProviderFlags = []
      currency = True
    end
    object FloatField12: TFloatField
      FieldName = 'TOT_PROVV'
      ProviderFlags = []
      currency = True
    end
    object ibTotCliMenCLI_NOM: TIBStringField
      FieldName = 'CLI_NOM'
      ProviderFlags = []
      Size = 100
    end
    object ibTotCliMenCOUNT: TIntegerField
      FieldName = 'COUNT'
      ProviderFlags = []
    end
  end
end
