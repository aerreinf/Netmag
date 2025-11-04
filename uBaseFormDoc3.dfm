inherited fBaseFormDoc3: TfBaseFormDoc3
  Left = 207
  Top = 120
  AlphaBlendValue = 220
  Caption = 'fBaseFormDoc3'
  ClientHeight = 558
  ClientWidth = 713
  Constraints.MaxWidth = 808
  Constraints.MinHeight = 454
  Constraints.MinWidth = 720
  Font.Height = -11
  Menu = mmPerDoc
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited paView: TPanel
    Top = 1
    Width = 10
    Height = 8
    Align = alNone
    Visible = False
  end
  inherited tbarControl: TToolBar
    Width = 713
    Height = 24
    ButtonHeight = 22
    ButtonWidth = 28
    PopupMenu = PopupMenu1
    inherited sep1: TToolButton
      Left = 33
    end
    inherited tbtnNuovo: TToolButton
      Left = 41
    end
    inherited tbtnModifica: TToolButton
      Left = 69
    end
    inherited sep2: TToolButton
      Left = 97
    end
    inherited tbtnSalva: TToolButton
      Left = 105
    end
    inherited tbtnAnulla: TToolButton
      Left = 133
      Hint = 'Annulla'
    end
    inherited sep3: TToolButton
      Left = 161
    end
    inherited tbtnElimina: TToolButton
      Left = 169
    end
    inherited sep4: TToolButton
      Left = 197
    end
    inherited tbtnPrev: TToolButton
      Left = 205
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      Left = 233
      OnClick = tbtnNextClick
    end
    inherited sep5: TToolButton
      Left = 261
    end
    object tbtnNumDoc: TToolButton
      Left = 269
      Top = 0
      Cursor = crHandPoint
      Hint = 'Numero Documento'
      Caption = 'NumDoc'
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNumDocClick
    end
    object ToolButton1: TToolButton
      Left = 297
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 20
      Style = tbsSeparator
    end
    object tbtnPrint: TToolButton
      Left = 305
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Documento'
      Caption = 'tbtnPrint'
      ImageIndex = 25
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      OnClick = tbtnPrintClick
    end
    object ToolButton3: TToolButton
      Left = 333
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 341
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Lista'
      Caption = 'ToolButton6'
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
    object ToolButton4: TToolButton
      Left = 369
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object Edit2: TEdit
      Left = 377
      Top = 0
      Width = 64
      Height = 22
      Hint = 'Stampare fino A:'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object ToolButton13: TToolButton
      Left = 441
      Top = 0
      Width = 8
      Caption = 'ToolButton13'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 449
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Bar Code'
      Caption = 'ToolButton5'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton10: TToolButton
      Left = 477
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 25
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 485
      Top = 0
      Cursor = crHandPoint
      Hint = 'Lista Seriali'
      Caption = 'ToolButton11'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton11Click
    end
    object ToolButton12: TToolButton
      Left = 513
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 25
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 521
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa Front.'
      Caption = 'ToolButton2'
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton19: TToolButton
      Left = 549
      Top = 0
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton20: TToolButton
      Left = 557
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa selettiva Seriali'
      Caption = 'ToolButton20'
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton20Click
    end
    object ToolButton21: TToolButton
      Left = 585
      Top = 0
      Width = 8
      Caption = 'ToolButton21'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton22: TToolButton
      Left = 593
      Top = 0
      Cursor = crHandPoint
      Hint = 'Export'
      Caption = 'ToolButton22'
      ImageIndex = 26
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton22Click
    end
    object ToolButton23: TToolButton
      Left = 621
      Top = 0
      Width = 8
      Caption = 'ToolButton23'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object ToolButton24: TToolButton
      Left = 629
      Top = 0
      Cursor = crHandPoint
      Hint = 'Documenti da Fatturare'
      Caption = 'ToolButton24'
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = ToolButton24Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 713
    Height = 114
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pctrlMain: TPageControl
      Left = 2
      Top = 2
      Width = 709
      Height = 110
      Cursor = crHandPoint
      ActivePage = tabs1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Testata'
        object pa1: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 78
          Align = alClient
          BevelOuter = bvLowered
          Color = 16762508
          TabOrder = 0
          object laOra: TLabel
            Left = 169
            Top = 40
            Width = 19
            Height = 14
            AutoSize = False
            Caption = 'Ora'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laDataDoc: TLabel
            Left = 3
            Top = 40
            Width = 49
            Height = 14
            AutoSize = False
            Caption = 'Data Doc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laDataReg: TLabel
            Left = 169
            Top = 2
            Width = 59
            Height = 14
            AutoSize = False
            Caption = 'Protocollo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laDataCons: TLabel
            Left = 86
            Top = 40
            Width = 58
            Height = 15
            AutoSize = False
            Caption = 'Data Cons.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laNumero: TLabel
            Left = 3
            Top = 2
            Width = 44
            Height = 15
            AutoSize = False
            Caption = 'Numero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laSerie: TLabel
            Left = 86
            Top = 2
            Width = 29
            Height = 14
            AutoSize = False
            Caption = 'Serie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laCliFor: TLabel
            Left = 342
            Top = 2
            Width = 243
            Height = 14
            Hint = 'Crea Nuovo Cli/For'
            AutoSize = False
            Caption = 'Cli/For'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnDblClick = laCliForDblClick
          end
          object laNostroDeposito: TLabel
            Left = 261
            Top = 15
            Width = 49
            Height = 14
            AutoSize = False
            Caption = 'Deposito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 230
            Top = 2
            Width = 25
            Height = 14
            AutoSize = False
            Caption = 'List.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton4: TSpeedButton
            Left = 456
            Top = 6
            Width = 241
            Height = 13
            Cursor = crHandPoint
            Caption = 'Nuovo Cli/For'
            Flat = True
            OnClick = SpeedButton4Click
          end
          object dbeOra: TDBEdit
            Left = 169
            Top = 55
            Width = 57
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ORA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object dbeDataDoc: TDBEdit
            Left = 3
            Top = 55
            Width = 76
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DATA_DOC'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = dbeDataDocKeyPress
          end
          object dbeMese: TDBEdit
            Left = 169
            Top = 17
            Width = 57
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'MESE_CONT'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object dbeDataCons: TDBEdit
            Left = 86
            Top = 55
            Width = 81
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DATA_CONSEGNA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object dbeNumero: TDBEdit
            Left = 3
            Top = 17
            Width = 81
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 14679807
            Ctl3D = False
            DataField = 'NUM_DOC'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            OnExit = dbeNumeroExit
            OnKeyPress = dbeNumeroKeyPress
            OnMouseUp = dbeNumeroMouseUp
          end
          object dbeSerie: TDBEdit
            Left = 86
            Top = 17
            Width = 81
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15326719
            Ctl3D = False
            DataField = 'SERIE_DOC'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object dbeListino: TDBEdit
            Left = 230
            Top = 17
            Width = 25
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16711808
            Ctl3D = False
            DataField = 'LISTINO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object dbeIndirizzo_cli_for: TDBEdit
            Left = 511
            Top = 42
            Width = 187
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'CLI_FOR_IND'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object dbeIndirizzo_cli_for2: TDBEdit
            Left = 511
            Top = 59
            Width = 187
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'CLI_FOR_IND2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object dbeContropartita: TDBEdit
            Left = 230
            Top = 55
            Width = 25
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16711808
            Ctl3D = False
            DataField = 'PIANOCONTO_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object LookCliForDescr: TRxDBLookupCombo
            Left = 416
            Top = 20
            Width = 283
            Height = 21
            DropDownCount = 15
            DisplayAllFields = True
            DataField = 'CLIFOR_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'ID_CLI_FOR'
            LookupDisplay = 'DENOMINAZIONE'
            LookupSource = dmodAz.dsoqTabCli
            ParentFont = False
            TabOrder = 10
            OnChange = LookCliForDescrChange
          end
          object LookCliForCod: TRxDBLookupCombo
            Left = 342
            Top = 20
            Width = 73
            Height = 21
            DropDownCount = 8
            DataField = 'CLIFOR_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            LookupField = 'ID_CLI_FOR'
            LookupDisplay = 'ID_CLI_FOR'
            LookupSource = dmodAz.dsoqTabCli
            ParentFont = False
            TabOrder = 11
            OnChange = LookCliForCodChange
          end
          object LookNostrDepDescr: TRxDBLookupCombo
            Left = 261
            Top = 50
            Width = 247
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'DEPOSITO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoDepositi
            ParentFont = False
            TabOrder = 12
          end
          object LookNostrDepCod: TRxDBLookupCombo
            Left = 261
            Top = 28
            Width = 73
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'DEPOSITO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoDepositi
            ParentFont = False
            TabOrder = 13
          end
          object DBEdit15: TDBEdit
            Left = 230
            Top = 38
            Width = 25
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16711808
            Ctl3D = False
            DataField = 'ID_DOCUMENTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
            Visible = False
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Sconti / Pagamenti / Spese'
        ImageIndex = 1
        object pa2: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 78
          Align = alClient
          BevelOuter = bvLowered
          Color = 14352095
          TabOrder = 0
          object laMoneta: TLabel
            Left = 263
            Top = 3
            Width = 41
            Height = 14
            Caption = 'Moneta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laPagamento: TLabel
            Left = 8
            Top = 3
            Width = 62
            Height = 14
            Caption = 'Pagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laSconto: TLabel
            Left = 511
            Top = 3
            Width = 38
            Height = 14
            Caption = 'Sconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laPIUTraSconti: TLabel
            Left = 525
            Top = 18
            Width = 12
            Height = 14
            Caption = ' + '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laImportoSconto: TLabel
            Left = 605
            Top = 3
            Width = 85
            Height = 14
            Caption = 'Importo sconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laBolli: TLabel
            Left = 91
            Top = 44
            Width = 23
            Height = 14
            Caption = 'Bolli'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laAccessor: TLabel
            Left = 7
            Top = 44
            Width = 63
            Height = 14
            Caption = 'Accessorie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laIncasso: TLabel
            Left = 289
            Top = 44
            Width = 43
            Height = 14
            Caption = 'Incasso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laImballo: TLabel
            Left = 210
            Top = 44
            Width = 40
            Height = 14
            Caption = 'Imballo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laSpediz: TLabel
            Left = 384
            Top = 44
            Width = 61
            Height = 14
            Caption = 'Spedizione'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laContrass: TLabel
            Left = 139
            Top = 44
            Width = 54
            Height = 14
            Caption = 'Contrass.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 362
            Top = 59
            Width = 9
            Height = 14
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label23: TLabel
            Left = 630
            Top = 44
            Width = 45
            Height = 14
            Caption = 'Acconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeSconto1: TDBEdit
            Left = 465
            Top = 16
            Width = 61
            Height = 20
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SCONTO1'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object dbeSconto2: TDBEdit
            Left = 535
            Top = 16
            Width = 61
            Height = 20
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SCONTO2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object dbeImportoSconto: TDBEdit
            Left = 601
            Top = 16
            Width = 97
            Height = 20
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'IMPORTO_SCONTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object LookMonetaCod: TRxDBLookupCombo
            Left = 261
            Top = 16
            Width = 65
            Height = 21
            DropDownCount = 8
            DataField = 'MONETA_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_MONETE'
            LookupDisplay = 'ID_MONETE'
            LookupSource = dsoMoneta
            ParentFont = False
            TabOrder = 3
          end
          object LookPagCod2: TRxDBLookupCombo
            Left = 8
            Top = 16
            Width = 65
            Height = 21
            DropDownCount = 8
            DataField = 'PAGAMENTO_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_PAGAMENTO'
            LookupDisplay = 'ID_PAGAMENTO'
            LookupSource = dsoPagamenti
            ParentFont = False
            TabOrder = 4
          end
          object LookMonetaDescr: TRxDBLookupCombo
            Left = 326
            Top = 16
            Width = 137
            Height = 21
            DropDownCount = 8
            DataField = 'MONETA_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_MONETE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoMoneta
            ParentFont = False
            TabOrder = 5
          end
          object LookPagDescr: TRxDBLookupCombo
            Left = 72
            Top = 16
            Width = 188
            Height = 21
            DropDownCount = 8
            DataField = 'PAGAMENTO_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'ID_PAGAMENTO'
            LookupDisplay = 'DESCR'
            LookupSource = dsoPagamenti
            ParentFont = False
            TabOrder = 6
          end
          object dbeBolli: TDBEdit
            Left = 72
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_BOLLI'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            OnExit = dbeBolliExit
          end
          object dbeAccessor: TDBEdit
            Left = 8
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_ACCESSORIE'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnExit = dbeBolliExit
          end
          object dbeImballo: TDBEdit
            Left = 200
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_IMBALLO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            OnExit = dbeBolliExit
          end
          object dbeIncasso: TDBEdit
            Left = 264
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_INCASSO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnExit = dbeBolliExit
          end
          object dbeContras: TDBEdit
            Left = 136
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_CONTRASS'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            OnExit = dbeBolliExit
          end
          object dbeSpediz: TDBEdit
            Left = 384
            Top = 58
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_SPEDIZIONE'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            OnExit = dbeBolliExit
          end
          object DBEdit2: TDBEdit
            Left = 326
            Top = 58
            Width = 33
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'SPESE_INCASSO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            Visible = False
            OnExit = dbeBolliExit
          end
          object dbeAcconti: TDBEdit
            Left = 608
            Top = 56
            Width = 89
            Height = 21
            Hint = 
              'Si ricorda che tale somma dovr'#224' essere registrata in Prima Nota ' +
              'manualmente'
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ACCONTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Trasporti / Nr. Colli'
        ImageIndex = 3
        object pa4: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 78
          Align = alClient
          BevelOuter = bvLowered
          Color = 14352095
          TabOrder = 0
          object laPorto: TLabel
            Left = 60
            Top = 8
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
          object laCauMag: TLabel
            Left = 8
            Top = 30
            Width = 82
            Height = 14
            Caption = 'Causale Trasp.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laNrColli: TLabel
            Left = 363
            Top = 8
            Width = 42
            Height = 14
            Caption = 'Nr. Colli'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laPesoLordo: TLabel
            Left = 475
            Top = 8
            Width = 60
            Height = 14
            Caption = 'Peso lordo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laPesoNetto: TLabel
            Left = 603
            Top = 8
            Width = 29
            Height = 14
            Caption = 'Netto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object laNote: TLabel
            Left = 378
            Top = 28
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
          object Label27: TLabel
            Left = 180
            Top = 59
            Width = 61
            Height = 15
            Caption = 'Totale Q.t'#224
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeNrColl: TDBEdit
            Left = 408
            Top = 8
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'NRCOLLI'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object dbePesoLordo: TDBEdit
            Left = 536
            Top = 8
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PESO_LORDO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object dbePesoNetto: TDBEdit
            Left = 634
            Top = 8
            Width = 61
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PESO_NETTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object dbmNote: TDBMemo
            Left = 408
            Top = 28
            Width = 287
            Height = 48
            Ctl3D = False
            DataField = 'NOTA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit1: TDBEdit
            Left = 13
            Top = 52
            Width = 35
            Height = 20
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ATTIVITA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
          object LookCauSpedCod: TRxDBLookupCombo
            Left = 94
            Top = 28
            Width = 61
            Height = 21
            DropDownCount = 8
            Color = clWhite
            DataField = 'CAU_TRASP_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'DESCR'
            LookupDisplay = 'CODICE'
            LookupSource = dsoCausSped
            ParentFont = False
            TabOrder = 5
          end
          object LookCauSpedDescr: TRxDBLookupCombo
            Left = 154
            Top = 28
            Width = 196
            Height = 21
            DropDownCount = 8
            DataField = 'CAU_TRASP_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'DESCR'
            LookupDisplay = 'DESCR'
            LookupSource = dsoCausSped
            ParentFont = False
            TabOrder = 6
          end
          object lookPortoCod: TRxDBLookupCombo
            Left = 94
            Top = 6
            Width = 61
            Height = 21
            DropDownCount = 8
            DataField = 'PORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'DESCR'
            LookupDisplay = 'CODICE'
            LookupSource = dsoPorto
            ParentFont = False
            TabOrder = 7
          end
          object LookPortoDescr: TRxDBLookupCombo
            Left = 154
            Top = 6
            Width = 196
            Height = 21
            DropDownCount = 8
            DataField = 'PORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'DESCR'
            LookupDisplay = 'DESCR'
            LookupSource = dsoPorto
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit22: TDBEdit
            Left = 253
            Top = 57
            Width = 97
            Height = 19
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PESO_NETTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri Dati'
        ImageIndex = 4
        object pa5: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 78
          Align = alClient
          BevelOuter = bvLowered
          Color = 14352095
          TabOrder = 0
          object laBancaForn: TLabel
            Left = 41
            Top = 10
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
          object laListino: TLabel
            Left = 39
            Top = 34
            Width = 38
            Height = 14
            Caption = 'Listino'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 340
            Top = 10
            Width = 81
            Height = 14
            Caption = 'VS riferimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 340
            Top = 32
            Width = 80
            Height = 14
            Caption = 'NS riferimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LookBancaFornCod: TDBLookupComboBox
            Left = 82
            Top = 6
            Width = 63
            Height = 20
            Ctl3D = False
            DataField = 'BANCA_CLIFOR'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_BANCA'
            ListField = 'ID_BANCA'
            ListSource = dsoBanca
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object LookBancaFornDescr: TDBLookupComboBox
            Left = 146
            Top = 6
            Width = 185
            Height = 20
            Ctl3D = False
            DataField = 'BANCA_CLIFOR'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'ID_BANCA'
            ListField = 'DESCR'
            ListSource = dsoBanca
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object LookListinoCod: TDBLookupComboBox
            Left = 82
            Top = 30
            Width = 61
            Height = 20
            Ctl3D = False
            DataField = 'LISTINO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dsoListino
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object LookListinoDescr: TDBLookupComboBox
            Left = 146
            Top = 30
            Width = 185
            Height = 20
            Ctl3D = False
            DataField = 'LISTINO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoListino
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object LookAltraDestCod: TDBLookupComboBox
            Left = 588
            Top = 72
            Width = 107
            Height = 19
            Color = 8421440
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            KeyField = 'INDIRIZZO'
            ListField = 'CITTA'
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
          object LookAltraDestDescr: TDBLookupComboBox
            Left = 308
            Top = 72
            Width = 229
            Height = 19
            Color = 8421440
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            KeyField = 'INDIRIZZO'
            ListField = 'INDIRIZZO'
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Visible = False
          end
          object dbcbAltraDest: TDBCheckBox
            Left = 2
            Top = 55
            Width = 77
            Height = 17
            Caption = 'Altra dest.'
            DataField = 'PER_ALTRA_DEST'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = dbcbAltraDestClick
          end
          object dbeVS_Rif: TDBEdit
            Left = 424
            Top = 6
            Width = 267
            Height = 20
            CharCase = ecUpperCase
            Color = 4210816
            Ctl3D = False
            DataField = 'VS_RIFERIMENTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object dbeNSrif: TDBEdit
            Left = 424
            Top = 28
            Width = 267
            Height = 20
            CharCase = ecUpperCase
            Color = 37779
            Ctl3D = False
            DataField = 'NS_RIFERIMENTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 88
            Top = 72
            Width = 217
            Height = 19
            Color = 8421440
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            KeyField = 'INDIRIZZO'
            ListField = 'RAGSOC'
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            Visible = False
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 539
            Top = 72
            Width = 47
            Height = 19
            Color = 8421440
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            KeyField = 'INDIRIZZO'
            ListField = 'CITTA'
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 80
            Top = 54
            Width = 193
            Height = 21
            DropDownCount = 8
            DataField = 'ALTRA_DEST2'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'RAGSOC'
            LookupSource = dsoAltreDest
            ParentFont = False
            TabOrder = 11
            OnChange = RxDBLookupCombo2Change
          end
          object RxDBLookupCombo3: TRxDBLookupCombo
            Left = 272
            Top = 54
            Width = 193
            Height = 21
            DropDownCount = 8
            DataField = 'ALTRA_DEST2'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'INDIRIZZO'
            LookupSource = dsoAltreDest
            ParentFont = False
            TabOrder = 12
            OnChange = RxDBLookupCombo3Change
          end
          object RxDBLookupCombo4: TRxDBLookupCombo
            Left = 464
            Top = 54
            Width = 57
            Height = 21
            DropDownCount = 8
            DataField = 'ALTRA_DEST2'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'CAP'
            LookupSource = dsoAltreDest
            ParentFont = False
            TabOrder = 13
          end
          object RxDBLookupCombo5: TRxDBLookupCombo
            Left = 520
            Top = 54
            Width = 169
            Height = 21
            DropDownCount = 8
            DataField = 'ALTRA_DEST2'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'PK_CODICE'
            LookupDisplay = 'CITTA'
            LookupSource = dsoAltreDest
            ParentFont = False
            TabOrder = 14
            OnChange = RxDBLookupCombo5Change
          end
        end
      end
      object T6: TTabSheet
        Caption = 'Trasf.'
        ImageIndex = 4
        object pa6: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 78
          Align = alClient
          Color = 14352095
          TabOrder = 0
          object Label22: TLabel
            Left = 4
            Top = 18
            Width = 92
            Height = 14
            AutoSize = False
            Caption = 'Deposito Dest.'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 310
            Top = 18
            Width = 146
            Height = 14
            Caption = 'Contro Causale Magazzino'
            Enabled = False
          end
          object DBCheckBox1: TDBCheckBox
            Left = 5
            Top = 2
            Width = 124
            Height = 17
            Caption = 'Trasf. a:'
            DataField = 'CODICE_BOLL'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox1Click
          end
          object RxDBLookupCombo7: TRxDBLookupCombo
            Left = 4
            Top = 31
            Width = 73
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'CONTRO_DEPOSITO'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoDepositi
            ParentFont = False
            TabOrder = 1
          end
          object RxDBLookupCombo8: TRxDBLookupCombo
            Left = 4
            Top = 53
            Width = 247
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'CONTRO_DEPOSITO'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoDepositi
            ParentFont = False
            TabOrder = 2
          end
          object RxDBLookupCombo10: TRxDBLookupCombo
            Left = 310
            Top = 31
            Width = 73
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'CONTRO_CAUS_MAG'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE_CAUSALE'
            LookupDisplay = 'CODICE_CAUSALE'
            LookupSource = dsoCauMag
            ParentFont = False
            TabOrder = 3
          end
          object RxDBLookupCombo11: TRxDBLookupCombo
            Left = 310
            Top = 53
            Width = 247
            Height = 21
            DropDownCount = 10
            Color = 14737632
            DataField = 'CONTRO_CAUS_MAG'
            DataSource = dsoDocumento
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE_CAUSALE'
            LookupDisplay = 'DESCR_CAUSALE'
            LookupSource = dsoCauMag
            ParentFont = False
            TabOrder = 4
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Dest. manuale'
        ImageIndex = 5
        object DBEdit21: TDBEdit
          Left = 80
          Top = 16
          Width = 481
          Height = 20
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ALTRA_DEST'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object paGrid: TPanel
    Left = 0
    Top = 138
    Width = 713
    Height = 357
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paGrid'
    TabOrder = 3
    object pctrlRighe: TPageControl
      Left = 0
      Top = 0
      Width = 713
      Height = 363
      Cursor = crHandPoint
      ActivePage = tabs21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object tabs21: TTabSheet
        Caption = 'Righe'
        object dbgRighe: TDBGrid
          Left = 0
          Top = 94
          Width = 705
          Height = 236
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsoRigheDoc
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = dbgRigheDblClick
          Columns = <
            item
              Alignment = taCenter
              Color = 15724254
              Expanded = False
              FieldName = 'NUM_RIGA_ID'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Riga'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 24
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'TIPO_SERVIZIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'T'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 16
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'CODICE_ARTICOLO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Codice'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'DESCR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              Width = 189
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 15724254
              Expanded = False
              FieldName = 'UNITA_MISURA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'UM'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 20
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'QUANTITA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'COSTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Prezzo Un.'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 15724254
              Expanded = False
              FieldName = 'SCONTO1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              Width = 25
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 15724254
              Expanded = False
              FieldName = 'SCONTO2'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              Width = 25
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'SCONTO3'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Sc.3'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 26
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'SCONTO_EQ'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Sc.Mon.'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'IMPORTO_SCONTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Importo'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'IMPORTO_CON_IVA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Importo+IVA'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'RIF_A_DDT'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = 15724254
              Expanded = False
              FieldName = 'RIF_DDT_DATA_DOC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
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
              FieldName = 'PIANOCONTO_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'A'
              Title.Alignment = taCenter
              Title.Caption = 'Taglia'
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
              FieldName = 'B'
              Title.Alignment = taCenter
              Title.Caption = 'Colore'
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
              FieldName = 'C'
              Title.Alignment = taCenter
              Title.Caption = 'Ferretto'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 56
          Width = 705
          Height = 68
          Align = alTop
          BevelInner = bvLowered
          Color = clSilver
          Enabled = False
          TabOrder = 1
          object laCodice: TLabel
            Left = 4
            Top = 3
            Width = 33
            Height = 14
            Caption = 'Codice'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laDescr: TLabel
            Left = 140
            Top = 3
            Width = 32
            Height = 14
            Caption = 'Descr.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 515
            Top = 3
            Width = 38
            Height = 14
            Caption = 'Q.t'#224' UM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laQtaCons: TLabel
            Left = 585
            Top = 3
            Width = 50
            Height = 14
            Caption = 'Q.t'#224' cons.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laPrezzoUnitario: TLabel
            Left = 4
            Top = 31
            Width = 72
            Height = 14
            Caption = 'Prezzo unitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laImporto: TLabel
            Left = 105
            Top = 31
            Width = 35
            Height = 14
            Caption = 'Importo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laSc1: TLabel
            Left = 214
            Top = 31
            Width = 29
            Height = 14
            Caption = 'Sc1%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laSc2: TLabel
            Left = 248
            Top = 31
            Width = 29
            Height = 14
            Caption = 'Sc2%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laScMoneta: TLabel
            Left = 282
            Top = 31
            Width = 54
            Height = 14
            Caption = 'Sc. Moneta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laImportoScontato: TLabel
            Left = 384
            Top = 31
            Width = 81
            Height = 14
            Caption = 'Importo Scontato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laIVA: TLabel
            Left = 487
            Top = 31
            Width = 18
            Height = 14
            Caption = 'IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object laIVAto: TLabel
            Left = 594
            Top = 31
            Width = 32
            Height = 14
            Caption = 'IVATO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 668
            Top = 43
            Width = 11
            Height = 22
            Hint = 'Nuova Riga'
            Caption = 'N'
            Enabled = False
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 680
            Top = 43
            Width = 11
            Height = 22
            Hint = 'Modifica Riga'
            Caption = 'M'
            Enabled = False
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object SpeedButton3: TSpeedButton
            Left = 692
            Top = 43
            Width = 11
            Height = 22
            Hint = 'Annulla'
            Caption = 'A'
            Enabled = False
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object Label18: TLabel
            Left = 667
            Top = 3
            Width = 31
            Height = 14
            Caption = 'Provv.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object dbeCodice: TDBEdit
            Tag = 10
            Left = 4
            Top = 16
            Width = 133
            Height = 16
            Hint = 'Doppio Click per ricercare un articolo per Codice'
            AutoSize = False
            BevelEdges = [beBottom]
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CODICE_ARTICOLO'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnKeyPress = dbeCodiceKeyPress
          end
          object dbeDescr: TDBEdit
            Tag = 10
            Left = 140
            Top = 16
            Width = 373
            Height = 16
            Hint = 'Doppio Click per ricercare un articolo per Descrizione'
            AutoSize = False
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'DESCR'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object dbeQtaUM: TDBEdit
            Left = 515
            Top = 16
            Width = 67
            Height = 16
            AutoSize = False
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'QTA_UM'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = dbeQtaUMKeyPress
          end
          object dbeQtaCons: TDBEdit
            Left = 585
            Top = 16
            Width = 71
            Height = 16
            TabStop = False
            AutoSize = False
            BorderStyle = bsNone
            DataField = 'QUANTITA'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object RxDBCalcEdit5: TRxDBCalcEdit
            Left = 4
            Top = 45
            Width = 99
            Height = 19
            DataField = 'COSTO'
            DataSource = dsoRigheDoc
            BorderStyle = bsNone
            Color = clWhite
            DecimalPlaces = 4
            DisplayFormat = ',0.####'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 4
            OnKeyPress = RxDBCalcEdit5KeyPress
          end
          object RxDBCalcEdit6: TRxDBCalcEdit
            Left = 105
            Top = 45
            Width = 108
            Height = 19
            DataField = 'IMPORTO'
            DataSource = dsoRigheDoc
            BorderStyle = bsNone
            Color = clWhite
            DecimalPlaces = 4
            DisplayFormat = ',0.####'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit16: TDBEdit
            Left = 214
            Top = 45
            Width = 32
            Height = 19
            AutoSize = False
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'SCONTO1'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = DBEdit16KeyPress
          end
          object DBEdit17: TDBEdit
            Left = 248
            Top = 45
            Width = 32
            Height = 19
            AutoSize = False
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'SCONTO2'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = DBEdit17KeyPress
          end
          object RxDBCalcEdit7: TRxDBCalcEdit
            Left = 282
            Top = 45
            Width = 100
            Height = 19
            DataField = 'SCONTO_EQ'
            DataSource = dsoRigheDoc
            BorderStyle = bsNone
            Color = clWhite
            DecimalPlaces = 4
            DisplayFormat = ',0.####'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 8
            OnKeyPress = RxDBCalcEdit7KeyPress
          end
          object RxDBCalcEdit8: TRxDBCalcEdit
            Left = 384
            Top = 45
            Width = 102
            Height = 19
            DataField = 'IMPORTO_SCONTO'
            DataSource = dsoRigheDoc
            BorderStyle = bsNone
            Color = clWhite
            DecimalPlaces = 4
            DisplayFormat = ',0.####'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 9
          end
          object LookIVA: TRxDBLookupCombo
            Left = 487
            Top = 44
            Width = 81
            Height = 21
            DropDownCount = 8
            DataField = 'CODICE_IVA_ID'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoCODICEIVA
            ParentFont = False
            TabOrder = 10
          end
          object dbeIvato: TDBEdit
            Left = 570
            Top = 45
            Width = 97
            Height = 18
            AutoSize = False
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'importo_con_iva'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit18: TDBEdit
            Left = 667
            Top = 16
            Width = 32
            Height = 16
            TabStop = False
            AutoSize = False
            BorderStyle = bsNone
            DataField = 'PERC_PROVV'
            DataSource = dsoRigheDoc
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
        end
        object tbarArtEvent: TToolBar
          Left = 0
          Top = 0
          Width = 705
          Height = 56
          AutoSize = True
          ButtonWidth = 61
          Color = 8454143
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShowCaptions = True
          TabOrder = 2
          object tbtnaInsert: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = '&Nuovo'
            ImageIndex = 0
            OnClick = tbtnaInsertClick
          end
          object ToolButton15: TToolButton
            Left = 45
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            Down = True
            ImageIndex = 9
            Marked = True
            Style = tbsDivider
          end
          object tbtnaEdit: TToolButton
            Left = 53
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = '&Modifica'
            ImageIndex = 1
            OnClick = tbtnaEditClick
          end
          object ToolButton16: TToolButton
            Left = 110
            Top = 0
            Width = 8
            Caption = 'ToolButton16'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object tbtnaDel: TToolButton
            Left = 118
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = '&Elimina'
            ImageIndex = 2
            OnClick = tbtnaDelClick
          end
          object sepa2: TToolButton
            Left = 168
            Top = 0
            Width = 8
            AutoSize = True
            Caption = 'sepa2'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object edNumRigaLocate: TEdit
            Left = 176
            Top = 0
            Width = 29
            Height = 22
            Hint = 'Doppio click - ricerca'
            Color = clTeal
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = '1'
            OnChange = edNumRigaLocateChange
            OnKeyPress = edNumRigaLocateKeyPress
          end
          object sep7: TToolButton
            Left = 205
            Top = 0
            Width = 8
            AutoSize = True
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tbtnDaPreventivo: TToolButton
            Left = 213
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'da Prev.'
            ImageIndex = 3
            OnClick = tbtnDaPreventivoClick
          end
          object sep9: TToolButton
            Left = 268
            Top = 0
            Width = 8
            AutoSize = True
            Caption = 'sep9'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tbtnDaOrdine: TToolButton
            Left = 276
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'da Ordine'
            ImageIndex = 4
            OnClick = tbtnDaOrdineClick
          end
          object sep8: TToolButton
            Left = 0
            Top = 0
            Width = 8
            AutoSize = True
            Caption = 'sep8'
            ImageIndex = 4
            Wrap = True
            Style = tbsSeparator
          end
          object tbtnDaDDT: TToolButton
            Left = 0
            Top = 30
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'da D.D.T.'
            ImageIndex = 5
            OnClick = tbtnDaDDTClick
          end
          object ToolButton9: TToolButton
            Left = 57
            Top = 30
            Width = 8
            AutoSize = True
            Caption = 'ToolButton9'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton8: TToolButton
            Left = 65
            Top = 30
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'da Bolla'
            ImageIndex = 6
            OnClick = ToolButton8Click
          end
          object tt: TToolButton
            Left = 118
            Top = 30
            Width = 8
            AutoSize = True
            Caption = 'tt'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object tbtnAggiornaIVA: TToolButton
            Left = 126
            Top = 30
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'I.V.A.'
            ImageIndex = 7
            OnClick = tbtnAggiornaIVAClick
          end
          object ToolButton7: TToolButton
            Left = 165
            Top = 30
            Width = 8
            AutoSize = True
            Caption = 'ToolButton7'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton14: TToolButton
            Left = 173
            Top = 30
            Cursor = crHandPoint
            AutoSize = True
            Caption = 'Ext.'
            ImageIndex = 8
            OnClick = ToolButton14Click
          end
          object ToolButton17: TToolButton
            Left = 203
            Top = 30
            Width = 8
            AutoSize = True
            Caption = 'ToolButton17'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object ToolButton18: TToolButton
            Left = 211
            Top = 30
            Cursor = crMultiDrag
            AutoSize = True
            Caption = 'Ext.2'
            ImageIndex = 9
            OnClick = ToolButton18Click
          end
          object ToolButton25: TToolButton
            Left = 247
            Top = 30
            Width = 8
            AutoSize = True
            Caption = 'ToolButton25'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object ToolButton26: TToolButton
            Left = 255
            Top = 30
            AutoSize = True
            Caption = 'da Banco'
            ImageIndex = 10
            OnClick = ToolButton26Click
          end
          object ToolButton27: TToolButton
            Left = 315
            Top = 30
            Width = 8
            Caption = 'ToolButton27'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
      end
      object tabs22: TTabSheet
        Caption = 'IVA - Scadenze'
        Enabled = False
        ImageIndex = 1
        object paCastIVA: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 334
          Align = alClient
          BevelOuter = bvLowered
          Color = 13826559
          TabOrder = 0
          object laCodIVA: TLabel
            Left = 174
            Top = 20
            Width = 60
            Height = 14
            Caption = 'Codice IVA'
          end
          object laAliqIVA: TLabel
            Left = 264
            Top = 20
            Width = 45
            Height = 14
            Caption = 'Aliquota'
          end
          object laImpost: TLabel
            Left = 472
            Top = 20
            Width = 45
            Height = 14
            Caption = 'Imposta'
          end
          object laImpon: TLabel
            Left = 350
            Top = 20
            Width = 58
            Height = 14
            Caption = 'Imponibile'
          end
          object Label1: TLabel
            Left = 156
            Top = 38
            Width = 9
            Height = 14
            Caption = '1.'
          end
          object Label2: TLabel
            Left = 156
            Top = 55
            Width = 9
            Height = 14
            Caption = '2.'
          end
          object Label3: TLabel
            Left = 156
            Top = 89
            Width = 9
            Height = 14
            Caption = '4.'
          end
          object Label4: TLabel
            Left = 156
            Top = 72
            Width = 9
            Height = 14
            Caption = '3.'
          end
          object Label6: TLabel
            Left = 156
            Top = 106
            Width = 9
            Height = 14
            Caption = '5.'
          end
          object Label13: TLabel
            Left = 96
            Top = 160
            Width = 23
            Height = 14
            Caption = 'Data'
          end
          object Label14: TLabel
            Left = 96
            Top = 178
            Width = 44
            Height = 14
            Caption = 'Importo'
          end
          object Label15: TLabel
            Left = 321
            Top = 140
            Width = 63
            Height = 16
            Caption = 'Scadenze'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 335
            Top = 4
            Width = 34
            Height = 16
            Alignment = taCenter
            Caption = 'I.V.A.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeCodIva1: TDBEdit
            Left = 172
            Top = 37
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'CODIVA1'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbeAl1: TDBEdit
            Left = 250
            Top = 37
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'ALIVA1'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object dbeImpos1: TDBEdit
            Left = 435
            Top = 37
            Width = 119
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'IMPOSTA1'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbeImpon1: TDBEdit
            Left = 328
            Top = 37
            Width = 103
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'IMPON1'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbeImpos2: TDBEdit
            Left = 435
            Top = 54
            Width = 119
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532014
            Ctl3D = False
            DataField = 'IMPOSTA2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object dbeImpon2: TDBEdit
            Left = 328
            Top = 54
            Width = 103
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532014
            Ctl3D = False
            DataField = 'IMPON2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object dbeAl2: TDBEdit
            Left = 250
            Top = 54
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532014
            Ctl3D = False
            DataField = 'ALIVA2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbeCodIva2: TDBEdit
            Left = 172
            Top = 54
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532014
            Ctl3D = False
            DataField = 'CODIVA2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object dbeImpos4: TDBEdit
            Left = 435
            Top = 88
            Width = 119
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15527167
            Ctl3D = False
            DataField = 'IMPOSTA4'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object dbeImpon4: TDBEdit
            Left = 328
            Top = 88
            Width = 103
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15527167
            Ctl3D = False
            DataField = 'IMPON4'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbeAl4: TDBEdit
            Left = 250
            Top = 88
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15527167
            Ctl3D = False
            DataField = 'ALIVA4'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object dbeCodIva4: TDBEdit
            Left = 172
            Top = 88
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15527167
            Ctl3D = False
            DataField = 'CODIVA4'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object dbeCodIVA3: TDBEdit
            Left = 172
            Top = 71
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532031
            Ctl3D = False
            DataField = 'CODIVA3'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object dbeAl3: TDBEdit
            Left = 250
            Top = 71
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532031
            Ctl3D = False
            DataField = 'ALIVA3'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbeImpon3: TDBEdit
            Left = 328
            Top = 71
            Width = 103
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532031
            Ctl3D = False
            DataField = 'IMPON3'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object dbeImpos3: TDBEdit
            Left = 435
            Top = 71
            Width = 119
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 15532031
            Ctl3D = False
            DataField = 'IMPOSTA3'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object dbeCodIva5: TDBEdit
            Left = 172
            Top = 105
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16772350
            Ctl3D = False
            DataField = 'CODIVA5'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
          object dbeAl5: TDBEdit
            Left = 250
            Top = 105
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16772350
            Ctl3D = False
            DataField = 'ALIVA5'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
          end
          object dbeImpon5: TDBEdit
            Left = 328
            Top = 105
            Width = 103
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16772350
            Ctl3D = False
            DataField = 'IMPON5'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object dbeImpos5: TDBEdit
            Left = 435
            Top = 105
            Width = 119
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16772350
            Ctl3D = False
            DataField = 'IMPOSTA5'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object DBEdit3: TDBEdit
            Left = 148
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA1_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object DBEdit4: TDBEdit
            Left = 148
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA1_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 21
          end
          object DBEdit5: TDBEdit
            Left = 228
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA2_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 22
          end
          object DBEdit6: TDBEdit
            Left = 228
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA2_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 23
          end
          object DBEdit7: TDBEdit
            Left = 308
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA3_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 24
          end
          object DBEdit8: TDBEdit
            Left = 308
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA3_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
          end
          object DBEdit9: TDBEdit
            Left = 388
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA4_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 26
          end
          object DBEdit10: TDBEdit
            Left = 388
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA4_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 27
          end
          object DBEdit11: TDBEdit
            Left = 468
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA5_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 28
          end
          object DBEdit12: TDBEdit
            Left = 468
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA5_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 29
          end
          object DBEdit13: TDBEdit
            Left = 548
            Top = 159
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA6_DATA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 30
          end
          object DBEdit14: TDBEdit
            Left = 548
            Top = 177
            Width = 73
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Color = 16777196
            Ctl3D = False
            DataField = 'RATA6_IMPORTO'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 31
          end
          object DBEdit19: TDBEdit
            Left = 10
            Top = 308
            Width = 151
            Height = 16
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'TOTALE_SCONTI'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 32
          end
        end
      end
      object tabs23: TTabSheet
        Caption = 'Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 334
          Align = alClient
          BevelOuter = bvLowered
          Color = 13826559
          TabOrder = 0
          object Label40: TLabel
            Left = 4
            Top = 178
            Width = 98
            Height = 14
            Caption = 'Attivit'#224'/Subattivit'#224
            Visible = False
          end
          object Label50: TLabel
            Left = 212
            Top = 178
            Width = 15
            Height = 14
            Caption = '  /  '
            Visible = False
          end
          object Label49: TLabel
            Left = 90
            Top = 160
            Width = 59
            Height = 13
            Caption = 'Esenzione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object lblContoAcqVend: TLabel
            Left = 320
            Top = 179
            Width = 156
            Height = 23
            Caption = 'Contropartita'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -20
            Font.Name = 'Courier New'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object gbCodIVASpese: TGroupBox
            Left = 6
            Top = 4
            Width = 689
            Height = 119
            Caption = 'Codice IVA Spese:'
            Color = 13826559
            ParentColor = False
            TabOrder = 0
            object Label46: TLabel
              Left = 46
              Top = 20
              Width = 23
              Height = 14
              Caption = 'Bolli'
            end
            object Label43: TLabel
              Left = 28
              Top = 44
              Width = 43
              Height = 14
              Caption = 'Incasso'
            end
            object Label44: TLabel
              Left = 32
              Top = 68
              Width = 40
              Height = 14
              Caption = 'Imballo'
            end
            object Label47: TLabel
              Left = 356
              Top = 68
              Width = 61
              Height = 14
              Caption = 'Spedizione'
            end
            object Label48: TLabel
              Left = 356
              Top = 44
              Width = 63
              Height = 14
              Caption = 'Accessorie'
            end
            object Label45: TLabel
              Left = 340
              Top = 20
              Width = 79
              Height = 14
              Caption = 'Contrassegno'
            end
            object Label25: TLabel
              Left = 32
              Top = 92
              Width = 42
              Height = 14
              Caption = 'Reg. Iva'
            end
            object Label26: TLabel
              Left = 200
              Top = 92
              Width = 104
              Height = 14
              Caption = 'Mese Competenza'
            end
            object LookBolliCod: TDBLookupComboBox
              Left = 84
              Top = 16
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_BOLLI'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 0
            end
            object LookBolliDescr: TDBLookupComboBox
              Left = 148
              Top = 16
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_BOLLI'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 1
            end
            object LookImballoCod: TDBLookupComboBox
              Left = 84
              Top = 64
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_IMVALLO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 2
            end
            object LookIncassoCod: TDBLookupComboBox
              Left = 84
              Top = 40
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_INCASSO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 3
            end
            object LookIncassoDescr: TDBLookupComboBox
              Left = 148
              Top = 40
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_INCASSO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 4
            end
            object LookImballoDescr: TDBLookupComboBox
              Left = 148
              Top = 64
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_IMVALLO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 5
            end
            object LookContrsegnoCod: TDBLookupComboBox
              Left = 426
              Top = 16
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_CONTRASSEGNO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 6
            end
            object LookAccessorieCod: TDBLookupComboBox
              Left = 426
              Top = 40
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_ACCESSIONE'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 7
            end
            object LookSpedizioneCod: TDBLookupComboBox
              Left = 426
              Top = 64
              Width = 61
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_SPEDIZIONE'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 8
            end
            object LookSpedizioneDescr: TDBLookupComboBox
              Left = 488
              Top = 64
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_SPEDIZIONE'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 9
            end
            object LookAccessorieDescr: TDBLookupComboBox
              Left = 488
              Top = 40
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_ACCESSIONE'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 10
            end
            object LookContraSegnoDescr: TDBLookupComboBox
              Left = 488
              Top = 16
              Width = 185
              Height = 20
              Ctl3D = False
              DataField = 'COD_IVA_SPESE_CONTRASSEGNO'
              DataSource = dsoDocumento
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoCODICEIVA
              ParentCtl3D = False
              TabOrder = 11
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 84
              Top = 88
              Width = 85
              Height = 22
              DataField = 'NUM_DOC2'
              DataSource = dsoDocumento
              EnableValues = False
              ItemHeight = 14
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20')
              TabOrder = 12
            end
            object DBEdit20: TDBEdit
              Left = 313
              Top = 91
              Width = 57
              Height = 16
              AutoSize = False
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'SERIE_DOC2'
              DataSource = dsoDocumento
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
            end
          end
          object LookAttivita: TDBLookupComboBox
            Left = 116
            Top = 174
            Width = 93
            Height = 20
            Ctl3D = False
            DataField = 'ATTIVITA'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoAttivita
            ParentCtl3D = False
            TabOrder = 1
            Visible = False
          end
          object LookSubAttivita: TDBLookupComboBox
            Left = 240
            Top = 174
            Width = 93
            Height = 20
            Ctl3D = False
            DataField = 'SUBATTIVITA'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsoAttivita
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
          end
          object dbcbIvaesente: TDBCheckBox
            Left = 8
            Top = 142
            Width = 79
            Height = 17
            Caption = 'Esenzione'
            DataField = 'IVA_ESENTE'
            DataSource = dsoDocumento
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 526
            Top = 166
            Width = 169
            Height = 39
            DropDownCount = 10
            Color = 4106487
            Ctl3D = False
            DataField = 'PIANOCONTO_ID'
            DataSource = dsoDocumento
            EmptyItemColor = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -24
            Font.Name = 'Palatino Linotype'
            Font.Style = [fsBold]
            LookupField = 'ID_PIANO_CONTO'
            LookupDisplay = 'NOME_CONTO'
            LookupSource = dsPianoConto
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object rxdblcPianoConto: TRxDBLookupCombo
            Left = 304
            Top = 210
            Width = 391
            Height = 21
            DropDownCount = 10
            Ctl3D = False
            DataField = 'PIANOCONTO_ID'
            DataSource = dsoDocumento
            EmptyItemColor = clBackground
            LookupField = 'ID_PIANO_CONTO'
            LookupDisplay = 'DESCR'
            LookupSource = dsPianoConto
            ParentCtl3D = False
            TabOrder = 5
          end
          object DBLookupComboBox25: TRxDBLookupCombo
            Left = 86
            Top = 140
            Width = 50
            Height = 21
            DropDownCount = 8
            DataField = 'IVA_ESENTE_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsEsenteIVA
            ParentFont = False
            TabOrder = 6
          end
          object DBLookupComboBox26: TRxDBLookupCombo
            Left = 136
            Top = 140
            Width = 560
            Height = 21
            DropDownCount = 8
            DataField = 'IVA_ESENTE_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsEsenteIVA
            ParentFont = False
            TabOrder = 7
          end
        end
      end
      object tabs24: TTabSheet
        Caption = 'Causale-Trasporto-Vettore'
        ImageIndex = 3
        object paAltro: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 334
          Align = alClient
          BevelOuter = bvLowered
          Color = 13826559
          Enabled = False
          TabOrder = 0
          object Label51: TLabel
            Left = 38
            Top = 192
            Width = 98
            Height = 14
            Caption = 'Causale Collegata'
            Enabled = False
            Visible = False
          end
          object Label52: TLabel
            Left = 31
            Top = 12
            Width = 105
            Height = 14
            Caption = 'Causale Magazzino'
          end
          object Label53: TLabel
            Left = 44
            Top = 53
            Width = 96
            Height = 14
            Caption = 'Trasporto a Cura '
            Transparent = True
          end
          object laReport: TLabel
            Left = 426
            Top = 10
            Width = 37
            Height = 14
            Caption = 'Report'
          end
          object Label7: TLabel
            Left = 96
            Top = 119
            Width = 42
            Height = 14
            Caption = 'Vettore'
          end
          object Label19: TLabel
            Left = 44
            Top = 95
            Width = 91
            Height = 14
            Caption = 'Aspetto dei beni'
          end
          object LookCauCollCod: TDBLookupComboBox
            Left = 144
            Top = 188
            Width = 61
            Height = 20
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            Visible = False
          end
          object LookCauCollDescr: TDBLookupComboBox
            Left = 208
            Top = 188
            Width = 211
            Height = 20
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Visible = False
          end
          object LookCauMagCod: TDBLookupComboBox
            Left = 144
            Top = 8
            Width = 61
            Height = 20
            Ctl3D = False
            DataField = 'CAUSALE_MAGAZZINO'
            DataSource = dsoDocumento
            KeyField = 'CODICE_CAUSALE'
            ListField = 'CODICE_CAUSALE'
            ListSource = dsoCauMag
            ParentCtl3D = False
            TabOrder = 2
          end
          object LookCauMagDescr: TDBLookupComboBox
            Left = 208
            Top = 8
            Width = 211
            Height = 20
            Ctl3D = False
            DataField = 'CAUSALE_MAGAZZINO'
            DataSource = dsoDocumento
            KeyField = 'CODICE_CAUSALE'
            ListField = 'DESCR_CAUSALE'
            ListSource = dsoCauMag
            ParentCtl3D = False
            TabOrder = 3
          end
          object bbLookReport: TBitBtn
            Left = 666
            Top = 8
            Width = 25
            Height = 19
            Caption = '...'
            Enabled = False
            TabOrder = 4
          end
          object dbeReport: TDBEdit
            Left = 468
            Top = 8
            Width = 195
            Height = 20
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'REPORT'
            DataSource = dsoDocumento
            ParentCtl3D = False
            TabOrder = 5
          end
          object dbcbAcrpRigheInStampa: TDBCheckBox
            Left = 468
            Top = 40
            Width = 173
            Height = 17
            Caption = 'Accorpa Righe in Stampa'
            DataField = 'ACCORPA_RIGHE'
            DataSource = dsoDocumento
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcbStampaNoteCliente: TDBCheckBox
            Left = 468
            Top = 64
            Width = 141
            Height = 17
            Caption = 'Stampa Note Cliente'
            DataField = 'ST_NOTE_CLIFOR'
            DataSource = dsoDocumento
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object LookVettoreCod: TDBLookupComboBox
            Left = 144
            Top = 115
            Width = 61
            Height = 20
            Ctl3D = False
            DataField = 'VETTORE1'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dsoVettori
            ParentCtl3D = False
            TabOrder = 8
            OnCloseUp = LookVettoreCodCloseUp
            OnExit = LookVettoreCodExit
          end
          object LookVettoreDescr: TDBLookupComboBox
            Left = 208
            Top = 115
            Width = 211
            Height = 20
            Ctl3D = False
            DataField = 'VETTORE1'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'RAGIONE_SOCIALE'
            ListSource = dsoVettori
            ParentCtl3D = False
            TabOrder = 9
            OnExit = LookVettoreCodExit
          end
          object dbeVettore_Ind: TDBEdit
            Left = 144
            Top = 137
            Width = 275
            Height = 20
            CharCase = ecUpperCase
            Color = clBtnFace
            Ctl3D = False
            DataField = 'VETTORE_IND'
            DataSource = dsoDocumento
            ParentCtl3D = False
            TabOrder = 10
          end
          object dbeVettore_Ind2: TDBEdit
            Left = 144
            Top = 159
            Width = 275
            Height = 20
            CharCase = ecUpperCase
            Color = clBtnFace
            Ctl3D = False
            DataField = 'VETTORE_IND2'
            DataSource = dsoDocumento
            ParentCtl3D = False
            TabOrder = 11
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 144
            Top = 91
            Width = 61
            Height = 20
            Ctl3D = False
            DataField = 'ASPETTO'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'CODICE'
            ListSource = dsAspetto
            ParentCtl3D = False
            TabOrder = 12
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 208
            Top = 91
            Width = 211
            Height = 20
            Ctl3D = False
            DataField = 'ASPETTO'
            DataSource = dsoDocumento
            KeyField = 'CODICE'
            ListField = 'DESCR'
            ListSource = dsAspetto
            ParentCtl3D = False
            TabOrder = 13
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 144
            Top = 40
            Width = 273
            Height = 34
            Caption = 'Trasporto'
            Columns = 3
            DataField = 'SPEDIZIONE'
            DataSource = dsoDocumento
            Items.Strings = (
              'Mittente'
              'Destinatario'
              'Vettore')
            TabOrder = 14
            Values.Strings = (
              'MITT'
              'DEST'
              'VETT')
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Agenti e Provv.'
        ImageIndex = 4
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 334
          Align = alClient
          Color = 13826559
          TabOrder = 0
          object Label5: TLabel
            Left = 188
            Top = 6
            Width = 40
            Height = 14
            Caption = 'Agente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 449
            Top = 6
            Width = 46
            Height = 14
            Caption = 'Provv. %'
          end
          object Label20: TLabel
            Left = 188
            Top = 46
            Width = 57
            Height = 14
            Caption = 'Capo Area'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 449
            Top = 46
            Width = 46
            Height = 14
            Caption = 'Provv. %'
          end
          object LookAgCod: TRxDBLookupCombo
            Left = 188
            Top = 20
            Width = 61
            Height = 21
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoAgenti
            ParentFont = False
            TabOrder = 0
            OnChange = LookAgCodChange
          end
          object LookAgDescr: TRxDBLookupCombo
            Left = 250
            Top = 20
            Width = 196
            Height = 21
            DropDownCount = 8
            DataField = 'AGENTE_ID'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoAgenti
            ParentFont = False
            TabOrder = 1
            OnChange = LookAgDescrChange
          end
          object RxDBLookupCombo6: TRxDBLookupCombo
            Left = 449
            Top = 20
            Width = 54
            Height = 21
            DropDownCount = 8
            DataField = 'ATTIVITA'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsProvv
            ParentFont = False
            TabOrder = 2
          end
          object RxDBLookupCombo9: TRxDBLookupCombo
            Left = 449
            Top = 60
            Width = 54
            Height = 21
            DropDownCount = 8
            DataField = 'ATTIVITA2'
            DataSource = dsoDocumento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsProvv
            ParentFont = False
            TabOrder = 3
          end
          object LookCADescr: TRxDBLookupCombo
            Left = 250
            Top = 60
            Width = 195
            Height = 21
            DropDownCount = 8
            DataField = 'CA_ID'
            DataSource = dsoDocumento
            LookupField = 'CODICE'
            LookupDisplay = 'DESCR'
            LookupSource = dsoAgenti
            TabOrder = 4
          end
          object LookCACod: TRxDBLookupCombo
            Left = 188
            Top = 60
            Width = 61
            Height = 21
            DropDownCount = 8
            DataField = 'CA_ID'
            DataSource = dsoDocumento
            LookupField = 'CODICE'
            LookupDisplay = 'CODICE'
            LookupSource = dsoAgenti
            TabOrder = 5
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Seriali'
        ImageIndex = 5
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 334
          Align = alClient
          Color = 13826559
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 8
            Top = 8
            Width = 689
            Height = 297
            DataSource = DataSource3
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            Columns = <
              item
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
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Color = clBlack
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 307
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'SERIALE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
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
                Width = 205
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_DET_DOC'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Title.Alignment = taCenter
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
                FieldName = 'ID_DOC'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
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
          object RxCalcEdit1: TRxCalcEdit
            Left = 16
            Top = 307
            Width = 121
            Height = 21
            AutoSize = False
            NumGlyphs = 2
            TabOrder = 1
          end
        end
      end
    end
  end
  object paAdds: TPanel
    Left = 0
    Top = 495
    Width = 713
    Height = 44
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10485760
    TabOrder = 4
    object laTotMerc: TLabel
      Left = 4
      Top = 6
      Width = 68
      Height = 14
      Caption = 'Totale Merci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laTotServ: TLabel
      Left = 95
      Top = 6
      Width = 74
      Height = 14
      Caption = 'Totale Servizi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laTotSpese: TLabel
      Left = 186
      Top = 6
      Width = 72
      Height = 14
      Caption = 'Totale Spese'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laTotOmagg: TLabel
      Left = 280
      Top = 5
      Width = 10
      Height = 14
      AutoSize = False
      Caption = 'Totale Omaggi'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label31: TLabel
      Left = 170
      Top = 4
      Width = 10
      Height = 16
      AutoSize = False
      Caption = 'Totale Sconti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label32: TLabel
      Left = 293
      Top = 6
      Width = 58
      Height = 14
      Caption = 'Imponibile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 384
      Top = 6
      Width = 45
      Height = 14
      Caption = 'Imposta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laTotale: TLabel
      Left = 475
      Top = 6
      Width = 34
      Height = 14
      Caption = 'Totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laAccount: TLabel
      Left = 72
      Top = 7
      Width = 17
      Height = 14
      AutoSize = False
      Caption = 'Acconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label39: TLabel
      Left = 600
      Top = 6
      Width = 103
      Height = 15
      Caption = 'Totale Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeTotMerc: TDBEdit
      Left = 4
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_MERCE'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object dbeTotServ: TDBEdit
      Left = 95
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_SERVIZI'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object dbeTotSpese: TDBEdit
      Left = 186
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOT_SPESE'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object dbeTotOmagg: TDBEdit
      Left = 280
      Top = 22
      Width = 10
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object dbeTotSconti: TDBEdit
      Left = 250
      Top = 4
      Width = 10
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_SCONTI'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object dbeImponibile: TDBEdit
      Left = 293
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object dbeImposta: TDBEdit
      Left = 384
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_IVA'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object dbeTotale: TDBEdit
      Left = 475
      Top = 22
      Width = 90
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_IVATO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object dbeDataAcconto: TDBEdit
      Left = 80
      Top = 4
      Width = 10
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object dbeAbbuoni: TDBEdit
      Left = 368
      Top = 5
      Width = 10
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Visible = False
    end
    object dbeResi: TDBEdit
      Left = 160
      Top = 6
      Width = 10
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Visible = False
    end
    object dbeDaPagare: TDBEdit
      Left = 600
      Top = 22
      Width = 110
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = 15987680
      Ctl3D = False
      DataField = 'TOTALE_IVATO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object dbcbRilevaAcconto: TDBCheckBox
      Left = 264
      Top = 4
      Width = 10
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Rileva Acconto'
      DataField = 'RILEVA_ACCONTO'
      DataSource = dsoDocumento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 539
    Width = 713
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'F2-Ricerca Articoli'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'F4-St.Frontal.'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'Righe:F5-Nuova;F6-Modifica;F7-Salva;F8-Elimina'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = 'Doc.:F9-Nuovo;F10-Modifica;F11-Salva;F12-Elimina'
        Width = 50
      end>
  end
  object dsoRigheDoc: TDataSource
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 522
    Top = 394
  end
  object dsoMoneta: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 556
    Top = 396
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 620
    Top = 396
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 652
    Top = 396
  end
  object dsoCausSped: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 452
    Top = 292
  end
  object dsoBanca: TDataSource
    DataSet = dmodAz.ibTab_Banche
    Left = 554
    Top = 308
  end
  object dsoListino: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 510
    Top = 312
  end
  object dsoAltreDest: TDataSource
    DataSet = dmodAz.ibqAltreSedi
    Left = 682
    Top = 396
  end
  object dsoDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 252
    Top = 429
  end
  object dsoCODICEIVA: TDataSource
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 572
    Top = 428
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 396
    Top = 436
  end
  object dsoCauTrasp: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 538
    Top = 428
  end
  object dsoAttivita: TDataSource
    DataSet = dmodPub.ibTab_Attivita
    Left = 508
    Top = 428
  end
  object dsoAgenti: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 598
    Top = 278
  end
  object dsoVettori: TDataSource
    DataSet = dmodAz.ibTab_Vettori
    Left = 288
    Top = 426
  end
  object dsAspetto: TDataSource
    DataSet = dmodAz.ibTab_Aspetto_Esteriore
    Left = 476
    Top = 428
  end
  object dsEsenteIVA: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
    Left = 222
    Top = 426
  end
  object mmPerDoc: TMainMenu
    Left = 240
    Top = 306
    object File1: TMenuItem
      Caption = 'File'
      Visible = False
      object Rimetterescadenze1: TMenuItem
        Caption = 'Rimettere scadenze'
        ShortCut = 16467
        OnClick = Rimetterescadenze1Click
      end
      object miDoc_Det_PianoConto: TMenuItem
        Caption = 'Per Articoli - passare Contropartita'
        ShortCut = 16464
        OnClick = miDoc_Det_PianoContoClick
      end
    end
  end
  object dsPianoConto: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 436
    Top = 429
  end
  object dsPersAz: TDataSource
    Left = 188
    Top = 424
  end
  object dsoDocumento: TDataSource
    DataSet = dmodAz.ibqTab_Doc
    Left = 486
    Top = 392
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 360
    Top = 281
    object RxMemoryData1CODICE: TStringField
      FieldName = 'CODICE'
      Size = 13
    end
    object RxMemoryData1QTA: TFloatField
      FieldName = 'QTA'
    end
    object RxMemoryData1PREZZO: TCurrencyField
      FieldName = 'PREZZO'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 640
    Top = 305
  end
  object dsProvv: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 590
    Top = 397
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
    Left = 216
    Top = 352
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
    object ibqCont_ArtMEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
    end
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
    Left = 264
    Top = 408
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
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 448
    Top = 328
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
      'and id_documento=:id_doc'
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
    Left = 208
    Top = 457
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
    Left = 240
    Top = 457
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
    Left = 272
    Top = 457
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
  object IbqUpdoc: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'INSERT INTO tab_documenti_temp SELECT * FROM tab_documenti'
      'where id_documento=:id_doc;')
    Transaction = dmodAz.ibtrDef
    Left = 368
    Top = 385
  end
  object Ibqupdet: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'INSERT INTO tab_det_doc_temp SELECT * FROM tab_det_doc'
      'where doc_id=:id_doc')
    Transaction = dmodAz.ibtrDef
    Left = 408
    Top = 385
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    SQL.Strings = (
      'select * from TAB_DET_DOC'
      'Where DOC_ID =:ID_Documento'
      'Order by DOC_ID,NUM_RIGA_ID,codice_Articolo')
    Left = 416
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_Documento'
        ParamType = ptUnknown
      end>
    object IBQuery1ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object IBQuery1TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object IBQuery1COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
    end
    object IBQuery1COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
    end
    object IBQuery1UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object IBQuery1FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object IBQuery1QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object IBQuery1QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object IBQuery1SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object IBQuery1SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery1IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
    end
    object IBQuery1IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
    end
    object IBQuery1IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
    end
    object IBQuery1OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object IBQuery1DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object IBQuery1SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object IBQuery1PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object IBQuery1TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object IBQuery1IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
    end
    object IBQuery1IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
    end
    object IBQuery1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery1DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object IBQuery1RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object IBQuery1RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object IBQuery1RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object IBQuery1RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object IBQuery1RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object IBQuery1RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object IBQuery1RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object IBQuery1RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object IBQuery1RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object IBQuery1RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object IBQuery1RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object IBQuery1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object IBQuery1RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object IBQuery1RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object IBQuery1RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object IBQuery1OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object IBQuery1OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object IBQuery1OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object IBQuery1OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object IBQuery1DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object IBQuery1TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object IBQuery1TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object IBQuery1PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object IBQuery1SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object IBQuery1PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object IBQuery1COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object IBQuery1A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBQuery1B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBQuery1C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBQuery1NUM_RIGA_ID: TIntegerField
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
    Left = 312
    Top = 392
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
    Left = 344
    Top = 457
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
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
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
  object DataSource2: TDataSource
    DataSet = IBDataSet2
    Left = 312
    Top = 457
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
    Left = 376
    Top = 457
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
    object ibqCont_Art_tmpMEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
    end
  end
  object IbqDel: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      'delete from tab_documenti_temp')
    Left = 576
    Top = 361
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 433
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object IBDataSet3: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      'select * from seriali '
      'where id_doc=:ddd'
      'order by Codice,seriale')
    Left = 568
    Top = 24
    object IBDataSet3ID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Origin = '"SERIALI"."ID_DOC"'
      Required = True
    end
    object IBDataSet3CODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"SERIALI"."CODICE"'
    end
    object IBDataSet3DESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"SERIALI"."DESCRIZIONE"'
      Size = 100
    end
    object IBDataSet3SERIALE: TIBStringField
      FieldName = 'SERIALE'
      Origin = '"SERIALI"."SERIALE"'
      Required = True
      Size = 30
    end
    object IBDataSet3ID_DET_DOC: TFloatField
      FieldName = 'ID_DET_DOC'
      Origin = '"SERIALI"."ID_DET_DOC"'
      Required = True
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 632
    Top = 24
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
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = tabSeriali
    Left = 464
    Top = 184
  end
  object tabSeriali: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from seriali'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  CODICE = :OLD_CODICE and'
      '  SERIALE = :OLD_SERIALE and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    InsertSQL.Strings = (
      'insert into seriali'
      '  (ID_DOC, CODICE, DESCRIZIONE, SERIALE, ID_DET_DOC)'
      'values'
      '  (:ID_DOC, :CODICE, :DESCRIZIONE, :SERIALE, :ID_DET_DOC)')
    RefreshSQL.Strings = (
      'Select *'
      'from seriali '
      'where'
      '  ID_DOC = :ID_DOC and'
      '  CODICE = :CODICE and'
      '  SERIALE = :SERIALE and'
      '  ID_DET_DOC = :ID_DET_DOC')
    SelectSQL.Strings = (
      'select * from seriali'
      'where id_doc=:id_documento'
      'order by seriale')
    ModifySQL.Strings = (
      'update seriali'
      'set'
      '  ID_DOC = :ID_DOC,'
      '  CODICE = :CODICE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  SERIALE = :SERIALE,'
      '  ID_DET_DOC = :ID_DET_DOC'
      'where'
      '  ID_DOC = :OLD_ID_DOC and'
      '  CODICE = :OLD_CODICE and'
      '  SERIALE = :OLD_SERIALE and'
      '  ID_DET_DOC = :OLD_ID_DET_DOC')
    DataSource = dsoDocumento
    Left = 464
    Top = 224
    object tabSerialiID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Origin = '"SERIALI"."ID_DOC"'
      Required = True
    end
    object tabSerialiCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"SERIALI"."CODICE"'
    end
    object tabSerialiDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"SERIALI"."DESCRIZIONE"'
      Size = 100
    end
    object tabSerialiID_DET_DOC: TFloatField
      FieldName = 'ID_DET_DOC'
      Origin = '"SERIALI"."ID_DET_DOC"'
    end
    object tabSerialiSERIALE: TIBStringField
      FieldName = 'SERIALE'
      Origin = '"SERIALI"."SERIALE"'
      Size = 30
    end
  end
  object ibqCont_Art2: TIBDataSet
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
        'SCR, '
      'QTA_ACQUISTI, '
      '   VAL_ACQUISTI, QTA_VENDITA, VAL_VENDITA, QTA_ALTRE_ENTRATE, '
      'VAL_ALTRE_ENTRATE, '
      '   QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLIENTE, '
      'VAL_RESO_CLIENTE, '
      '   QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, QTA_ORDINATO, '
      'VAL_ORDINATO, '
      '   QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QTA_EVASA_CLIENTE, '
      'VAL_EVASO_CLIENTE, '
      '   QTA_EVASA_FORNITORE, VAL_EVASO_FORNITORE, '
      'QTA_GIACENZA_INIZIALE, COSTO_GIACENZA_INIZIALE, '
      '   VAL_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, '
      'COSTO_ULTIMO, '
      '   MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ, '
      'ULT_PREZZO_VEND, DATA_ULTIMO_ACQUISTO, '
      '   DATA_ULTIMA_VENDITA, PRETAGLIO)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DEPOSITO_ID, :CLI_FOR_ID, :TIPO_CLI_FOR_ID' +
        ', '
      ':DESCR, '
      '   :QTA_ACQUISTI, :VAL_ACQUISTI, :QTA_VENDITA, :VAL_VENDITA, '
      ':QTA_ALTRE_ENTRATE, '
      '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_USCITE, :VAL_ALTRE_USCITA, '
      ':QTA_RESO_CLIENTE, '
      '   :VAL_RESO_CLIENTE, :QTA_RESO_FORNITORE, :VAL_RESO_FORNITORE, '
      ':QTA_ORDINATO, '
      '   :VAL_ORDINATO, :QTA_IMPEGNATO, :VAL_QTA_IMPEGNATO, '
      ':QTA_EVASA_CLIENTE, '
      
        '   :VAL_EVASO_CLIENTE, :QTA_EVASA_FORNITORE, :VAL_EVASO_FORNITOR' +
        'E, '
      ':QTA_GIACENZA_INIZIALE, '
      '   :COSTO_GIACENZA_INIZIALE, :VAL_GIACENZA_INIZIALE, '
      ':GIACENZA_ATTUALE, '
      
        '   :DISPONIBILITA, :COSTO_ULTIMO, :MED_PREZZO_VEND, :ULT_COSTO_A' +
        'CQ, '
      ':MEDIO_COSTO_ACQ, '
      
        '   :ULT_PREZZO_VEND, :DATA_ULTIMO_ACQUISTO, :DATA_ULTIMA_VENDITA' +
        ', '
      ':PRETAGLIO)')
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
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO And DEPOSITO_ID=:ID_DEP')
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
    Left = 56
    Top = 408
    object ibqCont_Art2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqCont_Art2DEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object ibqCont_Art2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object ibqCont_Art2TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object ibqCont_Art2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 100
    end
    object ibqCont_Art2QTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object ibqCont_Art2VAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object ibqCont_Art2QTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object ibqCont_Art2VAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object ibqCont_Art2QTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object ibqCont_Art2VAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object ibqCont_Art2QTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object ibqCont_Art2VAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object ibqCont_Art2QTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object ibqCont_Art2VAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object ibqCont_Art2QTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object ibqCont_Art2VAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object ibqCont_Art2QTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object ibqCont_Art2VAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object ibqCont_Art2QTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object ibqCont_Art2VAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object ibqCont_Art2QTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object ibqCont_Art2VAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object ibqCont_Art2QTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object ibqCont_Art2VAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object ibqCont_Art2QTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art2COSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art2VAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art2GIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object ibqCont_Art2DISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object ibqCont_Art2COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object ibqCont_Art2MED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object ibqCont_Art2ULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object ibqCont_Art2MEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object ibqCont_Art2ULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object ibqCont_Art2DATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object ibqCont_Art2DATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object ibqCont_Art2PRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
    object ibqCont_Art2MEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
    end
  end
  object ibqCont_Art_tmp2: TIBDataSet
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
      'where CODICE_ARTICOLO=:CODICE_ARTICOLO And DEPOSITO_ID=:ID_DEP')
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
    Left = 136
    Top = 377
    object ibqCont_Art_tmp2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqCont_Art_tmp2DEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Required = True
      Size = 3
    end
    object ibqCont_Art_tmp2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object ibqCont_Art_tmp2TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object ibqCont_Art_tmp2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DESCR"'
      Size = 100
    end
    object ibqCont_Art_tmp2QTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object ibqCont_Art_tmp2VAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object ibqCont_Art_tmp2QTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object ibqCont_Art_tmp2VAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object ibqCont_Art_tmp2QTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object ibqCont_Art_tmp2VAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object ibqCont_Art_tmp2QTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object ibqCont_Art_tmp2VAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object ibqCont_Art_tmp2QTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object ibqCont_Art_tmp2VAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object ibqCont_Art_tmp2QTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object ibqCont_Art_tmp2VAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object ibqCont_Art_tmp2QTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object ibqCont_Art_tmp2VAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object ibqCont_Art_tmp2QTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object ibqCont_Art_tmp2VAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object ibqCont_Art_tmp2QTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object ibqCont_Art_tmp2VAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object ibqCont_Art_tmp2QTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object ibqCont_Art_tmp2VAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object ibqCont_Art_tmp2QTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmp2COSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmp2VAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object ibqCont_Art_tmp2GIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object ibqCont_Art_tmp2DISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object ibqCont_Art_tmp2COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object ibqCont_Art_tmp2MED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object ibqCont_Art_tmp2ULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object ibqCont_Art_tmp2MEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object ibqCont_Art_tmp2ULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object ibqCont_Art_tmp2DATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object ibqCont_Art_tmp2DATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object ibqCont_Art_tmp2PRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
    object ibqCont_Art_tmp2MEDIA_SPESE: TFloatField
      FieldName = 'MEDIA_SPESE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIA_SPESE"'
    end
  end
  object ibDistinte: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      'select * from disitinte where '
      'codice_Articolo=:codice_Articolo'
      'Order By CODICE_ARTICOLO')
    DataSource = dsoRigheDoc
    Left = 16
    Top = 296
  end
  object IBQuery3_R1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a'
      'and TIPO_ARTICOLO_ID=1')
    Left = 368
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField22: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField23: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField24: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBStringField25: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField26: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField27: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField28: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField71: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField72: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField73: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField74: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField75: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField76: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField77: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField78: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField79: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField22: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField23: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField24: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField29: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField80: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField81: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField14: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField82: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField83: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField25: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField26: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField27: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField30: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField15: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField16: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField17: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField18: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField31: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField32: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField33: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField34: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField28: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField35: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField19: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField36: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField37: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField38: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField29: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField20: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField21: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField22: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField23: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField30: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField39: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField40: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField24: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField25: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField31: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField84: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField85: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField32: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField86: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField33: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField26: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField34: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField35: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField36: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField37: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField38: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField39: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField40: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField41: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField41: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField42: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField87: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField88: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField89: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField90: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField91: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField92: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField93: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField94: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField95: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField96: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField97: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField98: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField99: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField100: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField101: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField102: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField103: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField104: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField105: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField106: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField107: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField108: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField109: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField110: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField111: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField112: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField113: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField114: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField115: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField116: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField117: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField118: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField119: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField120: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField121: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField122: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField123: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField124: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField125: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField126: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField127: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField128: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField129: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField130: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField131: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField132: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField133: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField134: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField42: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField135: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField136: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField137: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField138: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField139: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField140: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object IBQuery3_R3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a'
      'and TIPO_ARTICOLO_ID<>1')
    Left = 304
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField43: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField44: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField45: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBStringField46: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField47: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField48: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField49: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField141: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField142: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField143: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField144: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField145: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField146: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField147: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField148: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField149: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField43: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField44: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField45: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField50: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField150: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField151: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField27: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField152: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField153: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField46: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField47: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField48: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField51: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField28: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField29: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField30: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField31: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField52: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField53: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField54: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField55: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField49: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField56: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField32: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField57: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField58: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField59: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField50: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField33: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField34: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField35: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField36: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField51: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField60: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField61: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField37: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField38: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField52: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField154: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField155: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField53: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField156: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField54: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField39: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField55: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField56: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField57: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField58: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField59: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField60: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField61: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField62: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField62: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField63: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField157: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField158: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField159: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField160: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField161: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField162: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField163: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField164: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField165: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField166: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField167: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField168: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField169: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField170: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField171: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField172: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField173: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField174: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField175: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField176: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField177: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField178: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField179: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField180: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField181: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField182: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField183: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField184: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField185: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField186: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField187: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField188: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField189: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField190: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField191: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField192: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField193: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField194: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField195: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField196: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField197: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField198: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField199: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField200: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField201: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField202: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField203: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField204: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField63: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField205: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField206: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField207: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField208: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField209: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField210: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object ibdProt1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from num_prot1'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into num_prot1'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select *'
      'from num_prot1 '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from num_prot1'
      'order by numero')
    ModifySQL.Strings = (
      'update num_prot1'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 136
    Top = 312
    object ibdProt1NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT1"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdProt1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"NUM_PROT1"."DATA"'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 496
    Top = 24
  end
end
