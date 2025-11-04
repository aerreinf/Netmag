object fBolConto: TfBolConto
  Left = 182
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Bolle'
  ClientHeight = 548
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 520
    Top = 92
    Width = 55
    Height = 13
    Caption = 'Descrizione'
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 760
    Height = 138
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    Color = 16762508
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 3
      Top = 3
      Width = 754
      Height = 132
      Cursor = crHandPoint
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Testata Documento'
        Enabled = False
        object laNumero: TLabel
          Left = 5
          Top = 3
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
        object laDataDoc: TLabel
          Left = 68
          Top = 3
          Width = 49
          Height = 14
          Caption = 'Data Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object laCliFor: TLabel
          Left = 380
          Top = 3
          Width = 35
          Height = 14
          Caption = 'Cli/For'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object laNostroDeposito: TLabel
          Left = 5
          Top = 35
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
        object Label5: TLabel
          Left = 152
          Top = 3
          Width = 40
          Height = 14
          Caption = 'Agente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object laNote: TLabel
          Left = 344
          Top = 57
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
        object laCauMag: TLabel
          Left = 5
          Top = 71
          Width = 31
          Height = 14
          Caption = 'Caus.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object laNumRigaLocate: TLabel
          Left = 317
          Top = 87
          Width = 30
          Height = 14
          Caption = ' Riga: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbeNumero: TDBEdit
          Left = 5
          Top = 16
          Width = 57
          Height = 18
          AutoSize = False
          CharCase = ecUpperCase
          Color = 14679807
          Ctl3D = False
          DataField = 'NUM_DOC'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = 8388672
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object dbeDataDoc: TDBEdit
          Left = 68
          Top = 16
          Width = 77
          Height = 18
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
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object LookCliForCod: TRxDBLookupCombo
          Left = 370
          Top = 15
          Width = 73
          Height = 20
          Cursor = crHandPoint
          DropDownCount = 8
          DataField = 'CLIFOR_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          LookupField = 'ID_CLI_FOR'
          LookupDisplay = 'ID_CLI_FOR'
          ParentFont = False
          TabOrder = 2
          OnChange = LookCliForCodChange
        end
        object LookCliForDescr: TRxDBLookupCombo
          Left = 444
          Top = 15
          Width = 269
          Height = 20
          Cursor = crHandPoint
          DropDownCount = 15
          DataField = 'CLIFOR_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          LookupField = 'ID_CLI_FOR'
          LookupDisplay = 'DENOMINAZIONE'
          ParentFont = False
          TabOrder = 3
          OnChange = LookCliForDescrChange
        end
        object dbeIndirizzo_cli_for: TDBEdit
          Left = 370
          Top = 38
          Width = 175
          Height = 16
          AutoSize = False
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'CLI_FOR_IND'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object dbeIndirizzo_cli_for2: TDBEdit
          Left = 552
          Top = 38
          Width = 161
          Height = 16
          AutoSize = False
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'CLI_FOR_IND2'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object LookNostrDepCod: TRxDBLookupCombo
          Left = 5
          Top = 49
          Width = 60
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 10
          Color = 15395541
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
          TabOrder = 6
        end
        object LookNostrDepDescr: TRxDBLookupCombo
          Left = 66
          Top = 49
          Width = 185
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 10
          Color = 15395541
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
          TabOrder = 7
        end
        object dbeListino: TDBEdit
          Left = 713
          Top = 15
          Width = 23
          Height = 20
          CharCase = ecUpperCase
          Color = 10485760
          Ctl3D = False
          DataField = 'LISTINO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          Visible = False
        end
        object dbeContropartita: TDBEdit
          Left = 280
          Top = 16
          Width = 31
          Height = 18
          AutoSize = False
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'PIANOCONTO_ID'
          DataSource = dsoDocumento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8454143
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Visible = False
        end
        object LookAgCod: TDBLookupComboBox
          Left = 152
          Top = 15
          Width = 61
          Height = 20
          Ctl3D = False
          DataField = 'AGENTE_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODICE'
          ListField = 'CODICE'
          ListSource = dsoAgenti
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
        object LookAgDescr: TDBLookupComboBox
          Left = 216
          Top = 15
          Width = 57
          Height = 20
          Ctl3D = False
          DataField = 'AGENTE_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODICE'
          ListField = 'DESCR'
          ListSource = dsoAgenti
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object dbmNote: TDBMemo
          Left = 370
          Top = 57
          Width = 353
          Height = 47
          Ctl3D = False
          DataField = 'NOTA'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object LookCauMagCod: TDBLookupComboBox
          Left = 274
          Top = 15
          Width = 61
          Height = 20
          Ctl3D = False
          DataField = 'CAUSALE_MAGAZZINO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODICE_CAUSALE'
          ListField = 'CODICE_CAUSALE'
          ListSource = dsoCauMag
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
        end
        object LookCauSpedCod: TDBLookupComboBox
          Left = 5
          Top = 84
          Width = 60
          Height = 20
          Cursor = crHandPoint
          Ctl3D = False
          DataField = 'CAU_TRASP_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'DESCR'
          ListField = 'CODICE'
          ListSource = dsoCausSped
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
        end
        object LookCauSpedDescr: TDBLookupComboBox
          Left = 66
          Top = 84
          Width = 185
          Height = 20
          Cursor = crHandPoint
          Ctl3D = False
          DataField = 'CAU_TRASP_ID'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'DESCR'
          ListField = 'DESCR'
          ListSource = dsoCausSped
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
        end
        object RadioGroup1: TRadioGroup
          Left = 274
          Top = 40
          Width = 60
          Height = 48
          Caption = 'Carica da'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Int.'
            'Est.')
          ParentFont = False
          TabOrder = 16
          Visible = False
        end
        object edNumRigaLocate: TEdit
          Left = 344
          Top = 85
          Width = 25
          Height = 18
          Hint = 'Doppio click - ricerca'
          AutoSize = False
          Color = 8454143
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          Text = '1'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dati Trasporto'
        Enabled = False
        ImageIndex = 1
        object laPorto: TLabel
          Left = 4
          Top = 0
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
        object laNrColli: TLabel
          Left = 275
          Top = 0
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
          Left = 346
          Top = 0
          Width = 28
          Height = 14
          Caption = 'Peso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 4
          Top = 71
          Width = 42
          Height = 14
          Caption = 'Vettore'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 4
          Top = 36
          Width = 91
          Height = 14
          Caption = 'Aspetto dei beni'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lookPortoCod: TRxDBLookupCombo
          Left = 4
          Top = 13
          Width = 61
          Height = 21
          DropDownCount = 8
          DataField = 'PORTO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'DESCR'
          LookupDisplay = 'CODICE'
          LookupSource = dsoPorto
          ParentFont = False
          TabOrder = 0
        end
        object LookPortoDescr: TRxDBLookupCombo
          Left = 66
          Top = 13
          Width = 196
          Height = 21
          DropDownCount = 8
          DataField = 'PORTO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'DESCR'
          LookupDisplay = 'DESCR'
          LookupSource = dsoPorto
          ParentFont = False
          TabOrder = 1
        end
        object dbeNrColl: TDBEdit
          Left = 266
          Top = 15
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
          TabOrder = 2
        end
        object dbePesoLordo: TDBEdit
          Left = 330
          Top = 15
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
          TabOrder = 3
        end
        object LookVettoreCod: TDBLookupComboBox
          Left = 4
          Top = 85
          Width = 61
          Height = 20
          Ctl3D = False
          DataField = 'VETTORE1'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODICE'
          ListField = 'CODICE'
          ListSource = dsoVettori
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object LookVettoreDescr: TDBLookupComboBox
          Left = 66
          Top = 85
          Width = 211
          Height = 20
          Ctl3D = False
          DataField = 'VETTORE1'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODICE'
          ListField = 'RAGIONE_SOCIALE'
          ListSource = dsoVettori
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object dbeVettore_Ind: TDBEdit
          Left = 288
          Top = 85
          Width = 219
          Height = 20
          CharCase = ecUpperCase
          Color = clBtnFace
          Ctl3D = False
          DataField = 'VETTORE_IND'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object dbeVettore_Ind2: TDBEdit
          Left = 512
          Top = 85
          Width = 211
          Height = 20
          CharCase = ecUpperCase
          Color = clBtnFace
          Ctl3D = False
          DataField = 'VETTORE_IND2'
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
        object DBRadioGroup1: TDBRadioGroup
          Left = 456
          Top = 6
          Width = 273
          Height = 34
          Caption = 'Trasporto a cura del :'
          Columns = 3
          DataField = 'SPEDIZIONE'
          DataSource = dsoDocumento
          Items.Strings = (
            'Mittente'
            'Destinatario'
            'Vettore')
          TabOrder = 8
          Values.Strings = (
            'MITT'
            'DEST'
            'VETT')
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 4
          Top = 50
          Width = 61
          Height = 21
          DropDownCount = 8
          DataField = 'ASPETTO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'CODICE'
          LookupDisplay = 'CODICE'
          LookupSource = dsAspetto
          ParentFont = False
          TabOrder = 9
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 66
          Top = 50
          Width = 196
          Height = 21
          DropDownCount = 8
          DataField = 'ASPETTO'
          DataSource = dsoDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'CODICE'
          LookupDisplay = 'DESCR'
          LookupSource = dsAspetto
          ParentFont = False
          TabOrder = 10
        end
      end
    end
  end
  object dbgRighe: TDBGrid
    Left = 0
    Top = 238
    Width = 760
    Height = 267
    Align = alTop
    DataSource = dsoRigheDoc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 15724254
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Title.Alignment = taCenter
        Title.Caption = 'Riga'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 15724254
        Expanded = False
        FieldName = 'RIF_PRE_NUM_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
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
        Alignment = taLeftJustify
        Color = 15724254
        Expanded = False
        FieldName = 'SCHEDA'
        Title.Alignment = taCenter
        Title.Caption = 'Scheda'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Width = 79
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'Descriz.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 208
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Title.Alignment = taCenter
        Title.Caption = 'Um'
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
        FieldName = 'QTA_UM'
        Title.Alignment = taCenter
        Title.Caption = 'Scat.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'TOTSCAT'
        Title.Alignment = taCenter
        Title.Caption = 'Imb.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 49
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'QUANTITA'
        Title.Alignment = taCenter
        Title.Caption = 'Q.t'#224
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
        Color = 15724254
        Expanded = False
        FieldName = 'COSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Prezzo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'SCONTO1'
        Title.Alignment = taCenter
        Title.Caption = 'Sc%'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 41
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'IMPORTO_SCONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'DOC_ID'
        Title.Alignment = taCenter
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
        FieldName = 'COSTOINVALUTA'
        Title.Alignment = taCenter
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
        FieldName = 'FATTCONV'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO2'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO3'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO4'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTO'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTOINVALUTA'
        Title.Alignment = taCenter
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
        FieldName = 'OMAGGIO'
        Title.Alignment = taCenter
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
        FieldName = 'DEP'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO_EQ'
        Title.Alignment = taCenter
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
        FieldName = 'PERC_PROVV'
        Title.Alignment = taCenter
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
        FieldName = 'TIPO_SERVIZIO'
        Title.Alignment = taCenter
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
        FieldName = 'IVATO'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTO_CON_IVA'
        Title.Alignment = taCenter
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
        FieldName = 'CODICE_IVA_ID'
        Title.Alignment = taCenter
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
        FieldName = 'DATA_REG'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ID_DOC_DET'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_DDT_ID_DOC'
        Title.Alignment = taCenter
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
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_ID_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_DATA_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_PRE_ID_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_PRE_DATA_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A_PRE'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A_ORD'
        Title.Alignment = taCenter
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
        Title.Alignment = taCenter
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
        FieldName = 'PIANOCONTO_ID'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_NUM_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_DDT_NUM_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'OP_QTA_DISPONIBILE'
        Title.Alignment = taCenter
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
        FieldName = 'OP_VAL_DISPONIBILE'
        Title.Alignment = taCenter
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
        FieldName = 'OP_QTA_GIACENZA'
        Title.Alignment = taCenter
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
        FieldName = 'OP_VAL_GIACENZA'
        Title.Alignment = taCenter
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
        FieldName = 'TOTCOLLI'
        Title.Alignment = taCenter
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
        FieldName = 'ID_DOC_DET'
        Title.Alignment = taCenter
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
        FieldName = 'NUM_RIGA_ID'
        Title.Alignment = taCenter
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
        FieldName = 'TIPO_RIGA'
        Title.Alignment = taCenter
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
        FieldName = 'CODICE_ARTICOLO'
        Title.Alignment = taCenter
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
        FieldName = 'DESCR'
        Title.Alignment = taCenter
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
        Title.Alignment = taCenter
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
        FieldName = 'COSTOINVALUTA'
        Title.Alignment = taCenter
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
        FieldName = 'UNITA_MISURA'
        Title.Alignment = taCenter
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
        FieldName = 'FATTCONV'
        Title.Alignment = taCenter
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
        FieldName = 'QTA_UM'
        Title.Alignment = taCenter
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
        FieldName = 'QUANTITA'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO1'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO2'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO3'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO4'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTO_SCONTO'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTO'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTOINVALUTA'
        Title.Alignment = taCenter
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
        FieldName = 'OMAGGIO'
        Title.Alignment = taCenter
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
        FieldName = 'DEP'
        Title.Alignment = taCenter
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
        FieldName = 'SCONTO_EQ'
        Title.Alignment = taCenter
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
        FieldName = 'PERC_PROVV'
        Title.Alignment = taCenter
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
        FieldName = 'TIPO_SERVIZIO'
        Title.Alignment = taCenter
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
        FieldName = 'IVATO'
        Title.Alignment = taCenter
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
        FieldName = 'IMPORTO_CON_IVA'
        Title.Alignment = taCenter
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
        FieldName = 'CODICE_IVA_ID'
        Title.Alignment = taCenter
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
        FieldName = 'DATA_REG'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ID_DOC_DET'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_DDT_ID_DOC'
        Title.Alignment = taCenter
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
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_ID_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_DATA_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_PRE_ID_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_PRE_DATA_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A_PRE'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_A_ORD'
        Title.Alignment = taCenter
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
        Title.Alignment = taCenter
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
        FieldName = 'PIANOCONTO_ID'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_PRE_NUM_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_ORD_NUM_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'RIF_DDT_NUM_DOC'
        Title.Alignment = taCenter
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
        FieldName = 'OP_QTA_DISPONIBILE'
        Title.Alignment = taCenter
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
        FieldName = 'OP_VAL_DISPONIBILE'
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'OP_QTA_GIACENZA'
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'OP_VAL_GIACENZA'
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'TOTCOLLI'
        Visible = True
      end
      item
        Color = 15724254
        Expanded = False
        FieldName = 'TOTSCAT'
        Visible = True
      end>
  end
  object tbarControl: TToolBar
    Left = 0
    Top = 0
    Width = 760
    Height = 27
    AutoSize = True
    ButtonHeight = 25
    ButtonWidth = 28
    Caption = 'tbarControl'
    Color = clSilver
    Flat = True
    Images = dmodPub.iliPub
    Indent = 5
    ParentColor = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    object tbtnEsci: TToolButton
      Left = 5
      Top = 0
      Cursor = crHandPoint
      Hint = 'Esci'
      Caption = 'tbtnEsci'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEsciClick
    end
    object sep1: TToolButton
      Left = 33
      Top = 0
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
    object tbtnNuovo: TToolButton
      Left = 41
      Top = 0
      Cursor = crHandPoint
      Hint = 'Nuovo'
      Caption = 'tbtnNuovo'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNuovoClick
    end
    object tbtnModifica: TToolButton
      Left = 69
      Top = 0
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'tbtnModifica'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnModificaClick
    end
    object sep2: TToolButton
      Left = 97
      Top = 0
      Width = 8
      Caption = 'sep2'
      Style = tbsSeparator
    end
    object tbtnSalva: TToolButton
      Left = 105
      Top = 0
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'tbtnSalva'
      Enabled = False
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSalvaClick
    end
    object tbtnAnulla: TToolButton
      Left = 133
      Top = 0
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'tbtnAnulla'
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnAnullaClick
    end
    object sep3: TToolButton
      Left = 161
      Top = 0
      Width = 8
      Caption = 'sep3'
      Style = tbsSeparator
    end
    object tbtnElimina: TToolButton
      Left = 169
      Top = 0
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'tbtnElimina'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEliminaClick
    end
    object sep4: TToolButton
      Left = 197
      Top = 0
      Width = 8
      Caption = 'sep4'
      Style = tbsSeparator
    end
    object tbtnPrev: TToolButton
      Left = 205
      Top = 0
      Cursor = crHandPoint
      Hint = 'Precedente'
      Caption = 'Precedente'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnPrevClick
    end
    object tbtnNext: TToolButton
      Left = 233
      Top = 0
      Cursor = crHandPoint
      Hint = 'Successivo'
      Caption = 'Successivo'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNextClick
    end
    object sep5: TToolButton
      Left = 261
      Top = 0
      Width = 8
      Caption = 'sep5'
      Style = tbsSeparator
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
      Caption = 'tbtnPrint'
      ImageIndex = 25
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
    object ToolButton2: TToolButton
      Left = 341
      Top = 0
      Cursor = crHandPoint
      Hint = 'Visualizza'
      Caption = 'ToolButton2'
      ImageIndex = 23
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 504
    Width = 750
    Height = 44
    Color = 10485760
    TabOrder = 3
    object Label39: TLabel
      Left = 643
      Top = 5
      Width = 35
      Height = 15
      Caption = 'Totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 21
      Top = 5
      Width = 74
      Height = 15
      Caption = 'Totale Sconti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 132
      Top = 5
      Width = 77
      Height = 15
      Caption = 'Totale Scatoli'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 252
      Top = 5
      Width = 61
      Height = 15
      Caption = 'Totale Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeDaPagare: TDBEdit
      Left = 600
      Top = 19
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_IVATO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object dbeTotSconti: TDBEdit
      Left = 10
      Top = 19
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_SCONTI'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 122
      Top = 19
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PESO_LORDO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 234
      Top = 19
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PESO_NETTO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object dbeTotMerc: TDBEdit
    Left = 112
    Top = 352
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_MERCE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
  end
  object dbeTotServ: TDBEdit
    Left = 112
    Top = 376
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_SERVIZI'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
  end
  object dbeTotOmagg: TDBEdit
    Left = 112
    Top = 400
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
  end
  object dbeTotSpese: TDBEdit
    Left = 112
    Top = 424
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOT_SPESE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 7
    Visible = False
  end
  object dbeImponibile: TDBEdit
    Left = 306
    Top = 376
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 8
    Visible = False
  end
  object dbeImposta: TDBEdit
    Left = 306
    Top = 400
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVA'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 9
    Visible = False
  end
  object dbeTotale: TDBEdit
    Left = 306
    Top = 424
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVATO'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 10
    Visible = False
  end
  object dbeResi: TDBEdit
    Left = 432
    Top = 424
    Width = 73
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 11
    Visible = False
  end
  object dbeAbbuoni: TDBEdit
    Left = 432
    Top = 400
    Width = 73
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 12
    Visible = False
  end
  object dbeDataAcconto: TDBEdit
    Left = 464
    Top = 352
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 13
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 165
    Width = 760
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    Color = clBlue
    Enabled = False
    TabOrder = 14
    object Label3: TLabel
      Left = 61
      Top = 5
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
    object Label4: TLabel
      Left = 202
      Top = 5
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 369
      Top = 5
      Width = 26
      Height = 14
      Caption = 'Scat.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 414
      Top = 5
      Width = 24
      Height = 14
      Caption = 'Imb.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 471
      Top = 5
      Width = 21
      Height = 14
      Caption = 'Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 608
      Top = 5
      Width = 25
      Height = 14
      Caption = 'Sc.%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 542
      Top = 5
      Width = 38
      Height = 14
      Caption = 'Prezzo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 657
      Top = 5
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
    object Label13: TLabel
      Left = 17
      Top = 5
      Width = 23
      Height = 14
      Caption = 'Sch.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 45
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Nuovo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 73
      Top = 45
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Modifica'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 138
      Top = 45
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Elimina'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 203
      Top = 45
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Annulla'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 268
      Top = 45
      Width = 102
      Height = 18
      Cursor = crHandPoint
      Caption = 'Carica da &Term.'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object dbeCodice: TDBEdit
      Tag = 10
      Left = 53
      Top = 19
      Width = 55
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'CODICE_ARTICOLO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = dbeCodiceClick
      OnEnter = dbeCodiceEnter
      OnExit = dbeCodiceExit
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Tag = 10
      Left = 111
      Top = 19
      Width = 246
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'DESCR'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object DBEdit3: TDBEdit
      Tag = 10
      Left = 360
      Top = 19
      Width = 45
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'QTA_UM'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = DBEdit3Click
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Tag = 10
      Left = 408
      Top = 19
      Width = 37
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'TOTSCAT'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DBEdit4Click
      OnEnter = DBEdit4Enter
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEQtaCons: TDBEdit
      Tag = 10
      Left = 448
      Top = 19
      Width = 67
      Height = 18
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'QUANTITA'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = DBEQtaConsKeyPress
    end
    object DBEdit6: TDBEdit
      Tag = 10
      Left = 606
      Top = 19
      Width = 28
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'SCONTO1'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit7: TDBEdit
      Tag = 10
      Left = 518
      Top = 19
      Width = 86
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'COSTO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Tag = 10
      Left = 637
      Top = 19
      Width = 86
      Height = 18
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'IMPORTO_SCONTO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object BitBtn1: TBitBtn
      Left = 725
      Top = 19
      Width = 21
      Height = 18
      Cursor = crHandPoint
      Caption = 'I'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object DBScheda: TDBEdit
      Tag = 10
      Left = 5
      Top = 19
      Width = 46
      Height = 18
      Hint = 'Doppio click per scegliere una scheda'#13#10'0 - per rigo descrittivo'
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14155775
      DataField = 'SCHEDA'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = DBSchedaClick
      OnDblClick = DBSchedaDblClick
      OnEnter = DBSchedaEnter
      OnExit = DBSchedaExit
      OnKeyPress = DBSchedaKeyPress
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 508
      Top = 42
      Width = 215
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 10
      Color = 15395541
      DataField = 'COL'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CAUSALE'
      LookupDisplay = 'DESCR'
      LookupSource = dsoCauInt
      ParentFont = False
      TabOrder = 12
      OnChange = RxDBLookupCombo1Change
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 445
      Top = 42
      Width = 60
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 10
      Color = 15395541
      DataField = 'COL'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CAUSALE'
      LookupDisplay = 'ID_CAUSALE'
      LookupSource = dsoCauInt
      ParentFont = False
      TabOrder = 8
      OnChange = RxDBLookupCombo2Change
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 384
      Top = 42
      Width = 49
      Height = 21
      DataField = 'RIF_PRE_NUM_DOC'
      DataSource = dsoRigheDoc
      EnableValues = False
      ItemHeight = 13
      Items.Strings = (
        '1'
        '2')
      TabOrder = 7
      Values.Strings = (
        '1'
        '2')
    end
  end
  object dsoDocumento: TDataSource
    DataSet = dmodAz.ibqTab_Doc
    Left = 440
    Top = 250
  end
  object dsoRigheDoc: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 410
    Top = 250
  end
  object dsoMoneta: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 404
    Top = 4
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 436
    Top = 4
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 468
    Top = 4
  end
  object dsoCausSped: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 500
    Top = 4
  end
  object dsoBanca: TDataSource
    DataSet = dmodAz.ibTab_Banche
    Left = 530
    Top = 4
  end
  object dsoAltreDest: TDataSource
    DataSet = dmodAz.ibqAltreSedi
    Left = 594
    Top = 4
  end
  object dsoAgenti: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 630
    Top = 6
  end
  object dsoListino: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 606
    Top = 248
  end
  object dsoDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 572
    Top = 249
  end
  object dsoAltre_Sedi: TDataSource
    DataSet = dmodAz.ibqAltreSedi
    Left = 564
    Top = 2
  end
  object dsoFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 504
    Top = 252
  end
  object dsPersAz: TDataSource
    DataSet = dmodAz.ibTabPersAz
    Left = 676
    Top = 4
  end
  object dsEsenteIVA: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
    Left = 78
    Top = 278
  end
  object dsoVettori: TDataSource
    DataSet = dmodAz.ibTab_Vettori
    Left = 144
    Top = 278
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 220
    Top = 248
  end
  object dsAspetto: TDataSource
    DataSet = dmodAz.ibTab_Aspetto_Esteriore
    Left = 252
    Top = 248
  end
  object dsoCauTrasp: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 282
    Top = 248
  end
  object dsoCODICEIVA: TDataSource
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 316
    Top = 248
  end
  object dsoAttivita: TDataSource
    DataSet = dmodPub.ibTab_Attivita
    Left = 348
    Top = 248
  end
  object dsPianoConto: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 380
    Top = 249
  end
  object dsoCli: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 540
    Top = 252
  end
  object dsoArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 48
    Top = 282
  end
  object dsoContArt: TDataSource
    DataSet = dmodAz.ibqCont_Art
    Left = 16
    Top = 280
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    SQL.Strings = (
      'select A.*,B.RIC,B.SC'
      
        'from TAB_ARTICOLI A left JOIN TAB_GRUPPO B ON B.CODICE = A.CAT_A' +
        'RT_GRUPPO_ID'
      'Where  A.CODICE_ARTICOLO =:CA'
      'order by CODICE_ARTICOLO'
      ''
      ''
      '')
    Left = 136
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CA'
        ParamType = ptUnknown
        Value = ''
      end>
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      DisplayFormat = '#,##.00'
    end
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IBQuery1Gruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'Gruppo'
      LookupDataSet = IBTable5
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_GRUPPO_ID'
      Lookup = True
    end
    object IBQuery1Marca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = IBTable1
      LookupKeyFields = 'DESCR'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_MARCA_ID'
      Lookup = True
    end
    object IBQuery1Famiglia: TStringField
      FieldKind = fkLookup
      FieldName = 'Famiglia'
      LookupDataSet = IBTable4
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_FAMIGLIA_ID'
      Lookup = True
    end
    object IBQuery1Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = IBTable7
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_TIPO_ID'
      Lookup = True
    end
    object IBQuery1PREZZO_LISTINO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PREZZO_LISTINO'
      DisplayFormat = '#,##.00'
      Calculated = True
    end
    object IBQuery1RIC: TFloatField
      FieldName = 'RIC'
    end
    object IBQuery1CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IBQuery1CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBQuery1CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object IBQuery1DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery1UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery1SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery1PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery1PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery1SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery1SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery1LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery1QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery1ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery1TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery1FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery1FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery1COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery1RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery1ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery1RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery1RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery1RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery1RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery1STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery1GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery1PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery1CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery1DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery1VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery1VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery1VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery1NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery1TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery1TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery1OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery1TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery1CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery1DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery1NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery1NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery1NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery1PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery1COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery1DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery1NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery1TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery1CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery1CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery1UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery1FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery1FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery1DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery1SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery1PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery1P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery1P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery1P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery1P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery1SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery1SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery1SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery1SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery1SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery1SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery1SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery1SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery1SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery1SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery1SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery1SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery1R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery1R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery1R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery1R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery1IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery1IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery1IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery1IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery1RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery1P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery1IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery1STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery1CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery1CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery1AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery1CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery1CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery1AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery1CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery1CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery1AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery1CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery1CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery1AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery1CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery1CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery1AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery1CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery1CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery1AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery1ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery1CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery1CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery1CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery1CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery1CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery1CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
    object IBQuery1SC: TIBStringField
      FieldName = 'SC'
      Origin = '"TAB_GRUPPO"."SC"'
      Size = 4
    end
  end
  object IBTable5: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RIC'
        DataType = ftFloat
      end
      item
        Name = 'SC'
        DataType = ftString
        Size = 4
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_GRUPPO_ID'
    StoreDefs = True
    TableName = 'TAB_GRUPPO'
    Left = 344
    Top = 448
    object IBTable5DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable5CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
    object IBTable5RIC: TFloatField
      FieldName = 'RIC'
    end
  end
  object IBTable1: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_MARCA_ID'
    StoreDefs = True
    TableName = 'TAB_MARCA'
    Left = 408
    Top = 448
    object IBTable1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable1CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
  end
  object IBTable4: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_FAMIGLIA_ID'
    StoreDefs = True
    TableName = 'TAB_FAMIGLIA'
    Left = 440
    Top = 448
  end
  object IBTable7: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_TIPO_ID'
    StoreDefs = True
    TableName = 'TAB_TIPO'
    Left = 376
    Top = 448
  end
  object ibqRicerca: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from taglio'
      'where passata='#39'N'#39)
    Left = 104
    Top = 288
  end
  object dsoRicerca: TDataSource
    DataSet = ibqRicerca
    Left = 112
    Top = 280
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT'
      'sum(QUANTITA) as f_1 FROM TAB_DET_DOC'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =500'
      'AND TAB_DET_DOC.scheda =:parArt')
    Left = 168
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parArt'
        ParamType = ptUnknown
      end>
    object IBQuery2F_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
  end
  object dsProvv: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 470
    Top = 253
  end
  object dsoCauInt: TDataSource
    DataSet = dmodAz.Tab_Causali
    Left = 640
    Top = 256
  end
  object IBQuery3: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_det_doc'
      'where'
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    InsertSQL.Strings = (
      'insert into tab_det_doc'
      
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
      'Select *'
      'from tab_det_doc '
      'where'
      '  DOC_ID = :DOC_ID and'
      '  NUM_RIGA_ID = :NUM_RIGA_ID')
    SelectSQL.Strings = (
      'select * from tab_det_doc'
      'JOIN TAB_DOCUMENTI ON'
      '(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)'
      'WHERE TAB_DOCUMENTI.TIPO_DOC =500'
      'AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID'
      'and tab_det_doc.DOC_ID=:docid'
      'and tab_det_doc.num_riga_id=:docdet'
      'ORDER BY TAB_DET_DOC.CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update tab_det_doc'
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
      '  DOC_ID = :OLD_DOC_ID and'
      '  NUM_RIGA_ID = :OLD_NUM_RIGA_ID')
    Left = 304
    Top = 296
    object IBQuery3ID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."ID_DOC_DET"'
    end
    object IBQuery3TIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
      Origin = '"TAB_DET_DOC"."TIPO_RIGA"'
    end
    object IBQuery3CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_DET_DOC"."CODICE_ARTICOLO"'
    end
    object IBQuery3DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_DET_DOC"."DESCR"'
      Size = 102
    end
    object IBQuery3COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
    end
    object IBQuery3COSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
      Origin = '"TAB_DET_DOC"."COSTOINVALUTA"'
    end
    object IBQuery3UNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Origin = '"TAB_DET_DOC"."UNITA_MISURA"'
      Size = 3
    end
    object IBQuery3FATTCONV: TFloatField
      FieldName = 'FATTCONV'
      Origin = '"TAB_DET_DOC"."FATTCONV"'
    end
    object IBQuery3QTA_UM: TFloatField
      FieldName = 'QTA_UM'
      Origin = '"TAB_DET_DOC"."QTA_UM"'
    end
    object IBQuery3QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_DET_DOC"."QUANTITA"'
    end
    object IBQuery3SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_DET_DOC"."SCONTO1"'
    end
    object IBQuery3SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_DET_DOC"."SCONTO2"'
    end
    object IBQuery3SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_DET_DOC"."SCONTO3"'
    end
    object IBQuery3SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_DET_DOC"."SCONTO4"'
    end
    object IBQuery3IMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
      Origin = '"TAB_DET_DOC"."IMPORTO_SCONTO"'
    end
    object IBQuery3IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"TAB_DET_DOC"."IMPORTO"'
    end
    object IBQuery3IMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
      Origin = '"TAB_DET_DOC"."IMPORTOINVALUTA"'
    end
    object IBQuery3OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_DET_DOC"."OMAGGIO"'
    end
    object IBQuery3DEP: TIBStringField
      FieldName = 'DEP'
      Origin = '"TAB_DET_DOC"."DEP"'
      Size = 4
    end
    object IBQuery3SCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
      Origin = '"TAB_DET_DOC"."SCONTO_EQ"'
    end
    object IBQuery3PERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
      Origin = '"TAB_DET_DOC"."PERC_PROVV"'
    end
    object IBQuery3TIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Origin = '"TAB_DET_DOC"."TIPO_SERVIZIO"'
      Size = 25
    end
    object IBQuery3IVATO: TFloatField
      FieldName = 'IVATO'
      Origin = '"TAB_DET_DOC"."IVATO"'
    end
    object IBQuery3IMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
      Origin = '"TAB_DET_DOC"."IMPORTO_CON_IVA"'
    end
    object IBQuery3CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_DET_DOC"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery3DATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Origin = '"TAB_DET_DOC"."DATA_REG"'
    end
    object IBQuery3RIF_A: TSmallintField
      FieldName = 'RIF_A'
      Origin = '"TAB_DET_DOC"."RIF_A"'
    end
    object IBQuery3RIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
      Origin = '"TAB_DET_DOC"."RIF_A_PRE"'
    end
    object IBQuery3RIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
      Origin = '"TAB_DET_DOC"."RIF_A_ORD"'
    end
    object IBQuery3RIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
      Origin = '"TAB_DET_DOC"."RIF_A_DDT"'
    end
    object IBQuery3RIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
      Origin = '"TAB_DET_DOC"."RIF_ID_DOC_DET"'
    end
    object IBQuery3RIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_ID_DOC"'
    end
    object IBQuery3RIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_DATA_DOC"'
    end
    object IBQuery3RIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_ID_DOC"'
    end
    object IBQuery3RIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_DATA_DOC"'
    end
    object IBQuery3RIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_ID_DOC"'
    end
    object IBQuery3RIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_DATA_DOC"'
    end
    object IBQuery3PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"TAB_DET_DOC"."PIANOCONTO_ID"'
    end
    object IBQuery3RIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_PRE_NUM_DOC"'
    end
    object IBQuery3RIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_ORD_NUM_DOC"'
    end
    object IBQuery3RIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
      Origin = '"TAB_DET_DOC"."RIF_DDT_NUM_DOC"'
    end
    object IBQuery3OP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_QTA_DISPONIBILE"'
    end
    object IBQuery3OP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
      Origin = '"TAB_DET_DOC"."OP_VAL_DISPONIBILE"'
    end
    object IBQuery3OP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_QTA_GIACENZA"'
    end
    object IBQuery3OP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
      Origin = '"TAB_DET_DOC"."OP_VAL_GIACENZA"'
    end
    object IBQuery3DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TAB_DET_DOC"."DOC_ID"'
      Required = True
    end
    object IBQuery3TOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Origin = '"TAB_DET_DOC"."TOTCOLLI"'
      Size = 3
    end
    object IBQuery3TOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
    object IBQuery3PREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
      Origin = '"TAB_DET_DOC"."PREZZOLIST"'
    end
    object IBQuery3SCHEDA: TFloatField
      FieldName = 'SCHEDA'
      Origin = '"TAB_DET_DOC"."SCHEDA"'
    end
    object IBQuery3PASSATA: TIBStringField
      FieldName = 'PASSATA'
      Origin = '"TAB_DET_DOC"."PASSATA"'
      Size = 1
    end
    object IBQuery3COL: TIBStringField
      FieldName = 'COL'
      Origin = '"TAB_DET_DOC"."COL"'
      Size = 50
    end
    object IBQuery3A: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBQuery3B: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBQuery3C: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBQuery3NUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
      Origin = '"TAB_DET_DOC"."NUM_RIGA_ID"'
      Required = True
    end
    object IBQuery3ID_DOCUMENTO: TIntegerField
      FieldName = 'ID_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."ID_DOCUMENTO"'
      Required = True
    end
    object IBQuery3TESTATA_PN_ID: TIntegerField
      FieldName = 'TESTATA_PN_ID'
      Origin = '"TAB_DOCUMENTI"."TESTATA_PN_ID"'
    end
    object IBQuery3CAUSALE_DOC: TIBStringField
      FieldName = 'CAUSALE_DOC'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_DOC"'
      Size = 10
    end
    object IBQuery3TIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object IBQuery3DA_FATTURARE: TSmallintField
      FieldName = 'DA_FATTURARE'
      Origin = '"TAB_DOCUMENTI"."DA_FATTURARE"'
    end
    object IBQuery3CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CLIFOR_ID"'
    end
    object IBQuery3TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."TIPO_CLIFOR"'
    end
    object IBQuery3DEPOSITO: TIBStringField
      FieldName = 'DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."DEPOSITO"'
      Size = 3
    end
    object IBQuery3CONTRO_CLIFOR_ID: TIntegerField
      FieldName = 'CONTRO_CLIFOR_ID'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CLIFOR_ID"'
    end
    object IBQuery3CONTRO_TIPO_CLIFOR: TSmallintField
      FieldName = 'CONTRO_TIPO_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."CONTRO_TIPO_CLIFOR"'
    end
    object IBQuery3CONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IBQuery3CAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_MAGAZZINO"'
      Size = 4
    end
    object IBQuery3CONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
    object IBQuery3ATTIVITA: TIBStringField
      FieldName = 'ATTIVITA'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA"'
      Size = 5
    end
    object IBQuery3SUBATTIVITA: TIBStringField
      FieldName = 'SUBATTIVITA'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA"'
      Size = 2
    end
    object IBQuery3DATA_REGISTRAZIONE: TDateTimeField
      FieldName = 'DATA_REGISTRAZIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_REGISTRAZIONE"'
    end
    object IBQuery3DATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
      Origin = '"TAB_DOCUMENTI"."DATA_DOC"'
    end
    object IBQuery3DATA_CONFERMA: TDateTimeField
      FieldName = 'DATA_CONFERMA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONFERMA"'
    end
    object IBQuery3DATA_EVASIONE: TDateTimeField
      FieldName = 'DATA_EVASIONE'
      Origin = '"TAB_DOCUMENTI"."DATA_EVASIONE"'
    end
    object IBQuery3STATO_DOCUMENTO: TIntegerField
      FieldName = 'STATO_DOCUMENTO'
      Origin = '"TAB_DOCUMENTI"."STATO_DOCUMENTO"'
    end
    object IBQuery3STATO_CONTABILITA: TIntegerField
      FieldName = 'STATO_CONTABILITA'
      Origin = '"TAB_DOCUMENTI"."STATO_CONTABILITA"'
    end
    object IBQuery3MONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_DOCUMENTI"."MONETA_ID"'
      Size = 4
    end
    object IBQuery3CAMBIO: TFloatField
      FieldName = 'CAMBIO'
      Origin = '"TAB_DOCUMENTI"."CAMBIO"'
    end
    object IBQuery3KINGUA_ID: TIBStringField
      FieldName = 'KINGUA_ID'
      Origin = '"TAB_DOCUMENTI"."KINGUA_ID"'
      Size = 4
    end
    object IBQuery3LISTINO: TIBStringField
      FieldName = 'LISTINO'
      Origin = '"TAB_DOCUMENTI"."LISTINO"'
      Size = 10
    end
    object IBQuery3NS_RIFERIMENTO: TIBStringField
      FieldName = 'NS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."NS_RIFERIMENTO"'
      Size = 50
    end
    object IBQuery3VS_RIFERIMENTO: TIBStringField
      FieldName = 'VS_RIFERIMENTO'
      Origin = '"TAB_DOCUMENTI"."VS_RIFERIMENTO"'
      Size = 50
    end
    object IBQuery3CAUSALE_CONTABILE: TIBStringField
      FieldName = 'CAUSALE_CONTABILE'
      Origin = '"TAB_DOCUMENTI"."CAUSALE_CONTABILE"'
      Size = 4
    end
    object IBQuery3CODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object IBQuery3PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_DOCUMENTI"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBQuery3BANCA_CLIFOR: TIBStringField
      FieldName = 'BANCA_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."BANCA_CLIFOR"'
      Size = 5
    end
    object IBQuery3BANCA_AZIENDA: TIBStringField
      FieldName = 'BANCA_AZIENDA'
      Origin = '"TAB_DOCUMENTI"."BANCA_AZIENDA"'
      Size = 5
    end
    object IBQuery3VETTORE1: TIBStringField
      FieldName = 'VETTORE1'
      Origin = '"TAB_DOCUMENTI"."VETTORE1"'
      Size = 7
    end
    object IBQuery3VETTORE2: TIBStringField
      FieldName = 'VETTORE2'
      Origin = '"TAB_DOCUMENTI"."VETTORE2"'
      Size = 7
    end
    object IBQuery3VETTORE3: TIBStringField
      FieldName = 'VETTORE3'
      Origin = '"TAB_DOCUMENTI"."VETTORE3"'
      Size = 7
    end
    object IBQuery3PORTO: TIBStringField
      FieldName = 'PORTO'
      Origin = '"TAB_DOCUMENTI"."PORTO"'
      Size = 32
    end
    object IBQuery3ASPETTO: TIBStringField
      FieldName = 'ASPETTO'
      Origin = '"TAB_DOCUMENTI"."ASPETTO"'
      Size = 4
    end
    object IBQuery3SPEDIZIONE: TIBStringField
      FieldName = 'SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPEDIZIONE"'
      Size = 4
    end
    object IBQuery3PESO_NETTO: TFloatField
      FieldName = 'PESO_NETTO'
      Origin = '"TAB_DOCUMENTI"."PESO_NETTO"'
    end
    object IBQuery3PESO_LORDO: TFloatField
      FieldName = 'PESO_LORDO'
      Origin = '"TAB_DOCUMENTI"."PESO_LORDO"'
    end
    object IBQuery3CUBAGGIO: TFloatField
      FieldName = 'CUBAGGIO'
      Origin = '"TAB_DOCUMENTI"."CUBAGGIO"'
    end
    object IBQuery3DESTINARIO: TIBStringField
      FieldName = 'DESTINARIO'
      Origin = '"TAB_DOCUMENTI"."DESTINARIO"'
      Size = 4
    end
    object IBQuery3IMBALLO: TIBStringField
      FieldName = 'IMBALLO'
      Origin = '"TAB_DOCUMENTI"."IMBALLO"'
      Size = 4
    end
    object IBQuery3SCONTO11: TFloatField
      FieldName = 'SCONTO11'
      Origin = '"TAB_DOCUMENTI"."SCONTO1"'
    end
    object IBQuery3AGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_DOCUMENTI"."AGENTE_ID"'
      Size = 4
    end
    object IBQuery3DATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
      Origin = '"TAB_DOCUMENTI"."DATA_CONSEGNA"'
    end
    object IBQuery3NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC"'
    end
    object IBQuery3NRCOLLI: TFloatField
      FieldName = 'NRCOLLI'
      Origin = '"TAB_DOCUMENTI"."NRCOLLI"'
    end
    object IBQuery3SCONTO21: TFloatField
      FieldName = 'SCONTO21'
      Origin = '"TAB_DOCUMENTI"."SCONTO2"'
    end
    object IBQuery3IMPORTO_SCONTO1: TFloatField
      FieldName = 'IMPORTO_SCONTO1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_SCONTO"'
    end
    object IBQuery3NOTA: TIBStringField
      FieldName = 'NOTA'
      Origin = '"TAB_DOCUMENTI"."NOTA"'
      Size = 100
    end
    object IBQuery3SOSPESO: TSmallintField
      FieldName = 'SOSPESO'
      Origin = '"TAB_DOCUMENTI"."SOSPESO"'
    end
    object IBQuery3IVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_DOCUMENTI"."IVA_SOSPESA"'
    end
    object IBQuery3COD_IVA_ESENTE: TIBStringField
      FieldName = 'COD_IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_ESENTE"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_BOLLI: TIBStringField
      FieldName = 'COD_IVA_SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_BOLLI"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_INCASSO: TIBStringField
      FieldName = 'COD_IVA_SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_INCASSO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_IMVALLO: TIBStringField
      FieldName = 'COD_IVA_SPESE_IMVALLO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_IMVALLO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_CONTRASSEGNO: TIBStringField
      FieldName = 'COD_IVA_SPESE_CONTRASSEGNO'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_CONTRASSEGNO"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_ACCESSIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_ACCESSIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_ACCESSIONE"'
      Size = 4
    end
    object IBQuery3COD_IVA_SPESE_SPEDIZIONE: TIBStringField
      FieldName = 'COD_IVA_SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."COD_IVA_SPESE_SPEDIZIONE"'
      Size = 4
    end
    object IBQuery3ACCORPA_RIGHE: TSmallintField
      FieldName = 'ACCORPA_RIGHE'
      Origin = '"TAB_DOCUMENTI"."ACCORPA_RIGHE"'
    end
    object IBQuery3ATTIVITA2: TIBStringField
      FieldName = 'ATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."ATTIVITA2"'
      Size = 2
    end
    object IBQuery3SUBATTIVITA2: TIBStringField
      FieldName = 'SUBATTIVITA2'
      Origin = '"TAB_DOCUMENTI"."SUBATTIVITA2"'
      Size = 2
    end
    object IBQuery3SOGGETTO_CEE: TSmallintField
      FieldName = 'SOGGETTO_CEE'
      Origin = '"TAB_DOCUMENTI"."SOGGETTO_CEE"'
    end
    object IBQuery3REPORT: TIBStringField
      FieldName = 'REPORT'
      Origin = '"TAB_DOCUMENTI"."REPORT"'
      Size = 50
    end
    object IBQuery3RILEVA_ACCONTO: TSmallintField
      FieldName = 'RILEVA_ACCONTO'
      Origin = '"TAB_DOCUMENTI"."RILEVA_ACCONTO"'
    end
    object IBQuery3ORA: TIBStringField
      FieldName = 'ORA'
      Origin = '"TAB_DOCUMENTI"."ORA"'
      Size = 5
    end
    object IBQuery3FATT_ACCOMP: TSmallintField
      FieldName = 'FATT_ACCOMP'
      Origin = '"TAB_DOCUMENTI"."FATT_ACCOMP"'
    end
    object IBQuery3TIPO_FATT: TSmallintField
      FieldName = 'TIPO_FATT'
      Origin = '"TAB_DOCUMENTI"."TIPO_FATT"'
    end
    object IBQuery3ST_NOTE_CLIFOR: TSmallintField
      FieldName = 'ST_NOTE_CLIFOR'
      Origin = '"TAB_DOCUMENTI"."ST_NOTE_CLIFOR"'
    end
    object IBQuery3IVATO1: TSmallintField
      FieldName = 'IVATO1'
      Origin = '"TAB_DOCUMENTI"."IVATO"'
    end
    object IBQuery3STAMPATO: TSmallintField
      FieldName = 'STAMPATO'
      Origin = '"TAB_DOCUMENTI"."STAMPATO"'
    end
    object IBQuery3DATA_COMPETENZA_IVA: TDateTimeField
      FieldName = 'DATA_COMPETENZA_IVA'
      Origin = '"TAB_DOCUMENTI"."DATA_COMPETENZA_IVA"'
    end
    object IBQuery3MEZZO_TRASPORTO: TSmallintField
      FieldName = 'MEZZO_TRASPORTO'
      Origin = '"TAB_DOCUMENTI"."MEZZO_TRASPORTO"'
    end
    object IBQuery3TOT_PROVVIGIONE: TFloatField
      FieldName = 'TOT_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_PROVVIGIONE"'
    end
    object IBQuery3TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TIPO_PROVVIGIONE"'
    end
    object IBQuery3TOT_IMP_PROVVIGIONE: TFloatField
      FieldName = 'TOT_IMP_PROVVIGIONE'
      Origin = '"TAB_DOCUMENTI"."TOT_IMP_PROVVIGIONE"'
    end
    object IBQuery3CAST_MANUALE: TSmallintField
      FieldName = 'CAST_MANUALE'
      Origin = '"TAB_DOCUMENTI"."CAST_MANUALE"'
    end
    object IBQuery3NUM_DOC2: TIntegerField
      FieldName = 'NUM_DOC2'
      Origin = '"TAB_DOCUMENTI"."NUM_DOC2"'
    end
    object IBQuery3SERIE_DOC2: TIBStringField
      FieldName = 'SERIE_DOC2'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC2"'
      Size = 2
    end
    object IBQuery3MESE_CONT: TIntegerField
      FieldName = 'MESE_CONT'
      Origin = '"TAB_DOCUMENTI"."MESE_CONT"'
    end
    object IBQuery3ALTRE_DERT_SI_NO: TSmallintField
      FieldName = 'ALTRE_DERT_SI_NO'
      Origin = '"TAB_DOCUMENTI"."ALTRE_DERT_SI_NO"'
    end
    object IBQuery3SPESE_IMBALLO: TFloatField
      FieldName = 'SPESE_IMBALLO'
      Origin = '"TAB_DOCUMENTI"."SPESE_IMBALLO"'
    end
    object IBQuery3SPESE_BOLLI: TFloatField
      FieldName = 'SPESE_BOLLI'
      Origin = '"TAB_DOCUMENTI"."SPESE_BOLLI"'
    end
    object IBQuery3SPESE_ACCESSORIE: TFloatField
      FieldName = 'SPESE_ACCESSORIE'
      Origin = '"TAB_DOCUMENTI"."SPESE_ACCESSORIE"'
    end
    object IBQuery3SPESE_INCASSO: TFloatField
      FieldName = 'SPESE_INCASSO'
      Origin = '"TAB_DOCUMENTI"."SPESE_INCASSO"'
    end
    object IBQuery3SPESE_SPEDIZIONE: TFloatField
      FieldName = 'SPESE_SPEDIZIONE'
      Origin = '"TAB_DOCUMENTI"."SPESE_SPEDIZIONE"'
    end
    object IBQuery3SPESE_CONTRASS: TFloatField
      FieldName = 'SPESE_CONTRASS'
      Origin = '"TAB_DOCUMENTI"."SPESE_CONTRASS"'
    end
    object IBQuery3CAU_TRASP_ID: TIBStringField
      FieldName = 'CAU_TRASP_ID'
      Origin = '"TAB_DOCUMENTI"."CAU_TRASP_ID"'
      Size = 32
    end
    object IBQuery3PER_ALTRA_DEST: TSmallintField
      FieldName = 'PER_ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."PER_ALTRA_DEST"'
    end
    object IBQuery3IMPORTO_CON_IVA1: TFloatField
      FieldName = 'IMPORTO_CON_IVA1'
      Origin = '"TAB_DOCUMENTI"."IMPORTO_CON_IVA"'
    end
    object IBQuery3TOTALE_MERCE: TFloatField
      FieldName = 'TOTALE_MERCE'
      Origin = '"TAB_DOCUMENTI"."TOTALE_MERCE"'
    end
    object IBQuery3TOTALE_SERVIZI: TFloatField
      FieldName = 'TOTALE_SERVIZI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SERVIZI"'
    end
    object IBQuery3TOTALE: TFloatField
      FieldName = 'TOTALE'
      Origin = '"TAB_DOCUMENTI"."TOTALE"'
    end
    object IBQuery3TOTALE_IVA: TFloatField
      FieldName = 'TOTALE_IVA'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVA"'
    end
    object IBQuery3TOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_IVATO"'
    end
    object IBQuery3TOTALE_SCONTI: TFloatField
      FieldName = 'TOTALE_SCONTI'
      Origin = '"TAB_DOCUMENTI"."TOTALE_SCONTI"'
    end
    object IBQuery3TOTALE_EURO: TFloatField
      FieldName = 'TOTALE_EURO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO"'
    end
    object IBQuery3TOTALE_EURO_IVATO: TFloatField
      FieldName = 'TOTALE_EURO_IVATO'
      Origin = '"TAB_DOCUMENTI"."TOTALE_EURO_IVATO"'
    end
    object IBQuery3CODIVA1: TIBStringField
      FieldName = 'CODIVA1'
      Origin = '"TAB_DOCUMENTI"."CODIVA1"'
      Size = 4
    end
    object IBQuery3ALIVA1: TFloatField
      FieldName = 'ALIVA1'
      Origin = '"TAB_DOCUMENTI"."ALIVA1"'
    end
    object IBQuery3IMPON1: TFloatField
      FieldName = 'IMPON1'
      Origin = '"TAB_DOCUMENTI"."IMPON1"'
    end
    object IBQuery3IMPOSTA1: TFloatField
      FieldName = 'IMPOSTA1'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA1"'
    end
    object IBQuery3CODIVA2: TIBStringField
      FieldName = 'CODIVA2'
      Origin = '"TAB_DOCUMENTI"."CODIVA2"'
      Size = 4
    end
    object IBQuery3ALIVA2: TFloatField
      FieldName = 'ALIVA2'
      Origin = '"TAB_DOCUMENTI"."ALIVA2"'
    end
    object IBQuery3IMPON2: TFloatField
      FieldName = 'IMPON2'
      Origin = '"TAB_DOCUMENTI"."IMPON2"'
    end
    object IBQuery3IMPOSTA2: TFloatField
      FieldName = 'IMPOSTA2'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA2"'
    end
    object IBQuery3CODIVA3: TIBStringField
      FieldName = 'CODIVA3'
      Origin = '"TAB_DOCUMENTI"."CODIVA3"'
      Size = 4
    end
    object IBQuery3ALIVA3: TFloatField
      FieldName = 'ALIVA3'
      Origin = '"TAB_DOCUMENTI"."ALIVA3"'
    end
    object IBQuery3IMPON3: TFloatField
      FieldName = 'IMPON3'
      Origin = '"TAB_DOCUMENTI"."IMPON3"'
    end
    object IBQuery3IMPOSTA3: TFloatField
      FieldName = 'IMPOSTA3'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA3"'
    end
    object IBQuery3CODIVA4: TIBStringField
      FieldName = 'CODIVA4'
      Origin = '"TAB_DOCUMENTI"."CODIVA4"'
      Size = 4
    end
    object IBQuery3ALIVA4: TFloatField
      FieldName = 'ALIVA4'
      Origin = '"TAB_DOCUMENTI"."ALIVA4"'
    end
    object IBQuery3IMPON4: TFloatField
      FieldName = 'IMPON4'
      Origin = '"TAB_DOCUMENTI"."IMPON4"'
    end
    object IBQuery3IMPOSTA4: TFloatField
      FieldName = 'IMPOSTA4'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA4"'
    end
    object IBQuery3CODIVA5: TIBStringField
      FieldName = 'CODIVA5'
      Origin = '"TAB_DOCUMENTI"."CODIVA5"'
      Size = 4
    end
    object IBQuery3ALIVA5: TFloatField
      FieldName = 'ALIVA5'
      Origin = '"TAB_DOCUMENTI"."ALIVA5"'
    end
    object IBQuery3IMPON5: TFloatField
      FieldName = 'IMPON5'
      Origin = '"TAB_DOCUMENTI"."IMPON5"'
    end
    object IBQuery3IMPOSTA5: TFloatField
      FieldName = 'IMPOSTA5'
      Origin = '"TAB_DOCUMENTI"."IMPOSTA5"'
    end
    object IBQuery3TOT_SPESE: TFloatField
      FieldName = 'TOT_SPESE'
      Origin = '"TAB_DOCUMENTI"."TOT_SPESE"'
    end
    object IBQuery3ALTRA_DEST: TIBStringField
      FieldName = 'ALTRA_DEST'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST"'
      Size = 100
    end
    object IBQuery3SERIE_DOC: TIBStringField
      FieldName = 'SERIE_DOC'
      Origin = '"TAB_DOCUMENTI"."SERIE_DOC"'
      Size = 10
    end
    object IBQuery3CLI_FOR_IND: TIBStringField
      FieldName = 'CLI_FOR_IND'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND"'
      Size = 255
    end
    object IBQuery3ACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = '"TAB_DOCUMENTI"."ACCONTO"'
    end
    object IBQuery3RATA1_IMPORTO: TFloatField
      FieldName = 'RATA1_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA1_IMPORTO"'
    end
    object IBQuery3RATA2_IMPORTO: TFloatField
      FieldName = 'RATA2_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA2_IMPORTO"'
    end
    object IBQuery3RATA3_IMPORTO: TFloatField
      FieldName = 'RATA3_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA3_IMPORTO"'
    end
    object IBQuery3RATA4_IMPORTO: TFloatField
      FieldName = 'RATA4_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA4_IMPORTO"'
    end
    object IBQuery3RATA5_IMPORTO: TFloatField
      FieldName = 'RATA5_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA5_IMPORTO"'
    end
    object IBQuery3RATA6_IMPORTO: TFloatField
      FieldName = 'RATA6_IMPORTO'
      Origin = '"TAB_DOCUMENTI"."RATA6_IMPORTO"'
    end
    object IBQuery3TEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_DOCUMENTI"."TEL1"'
      Size = 15
    end
    object IBQuery3TEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_DOCUMENTI"."TEL2"'
      Size = 15
    end
    object IBQuery3TEL3: TIBStringField
      FieldName = 'TEL3'
      Origin = '"TAB_DOCUMENTI"."TEL3"'
      Size = 15
    end
    object IBQuery3IVA_ESENTE: TSmallintField
      FieldName = 'IVA_ESENTE'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE"'
    end
    object IBQuery3IVA_ESENTE_ID: TIntegerField
      FieldName = 'IVA_ESENTE_ID'
      Origin = '"TAB_DOCUMENTI"."IVA_ESENTE_ID"'
    end
    object IBQuery3VETTORE_IND: TIBStringField
      FieldName = 'VETTORE_IND'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND"'
      Size = 100
    end
    object IBQuery3VETTORE_IND2: TIBStringField
      FieldName = 'VETTORE_IND2'
      Origin = '"TAB_DOCUMENTI"."VETTORE_IND2"'
      Size = 100
    end
    object IBQuery3CLI_FOR_IND2: TIBStringField
      FieldName = 'CLI_FOR_IND2'
      Origin = '"TAB_DOCUMENTI"."CLI_FOR_IND2"'
      Size = 255
    end
    object IBQuery3RATA1_DATA: TDateField
      FieldName = 'RATA1_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA1_DATA"'
    end
    object IBQuery3RATA2_DATA: TDateField
      FieldName = 'RATA2_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA2_DATA"'
    end
    object IBQuery3RATA3_DATA: TDateField
      FieldName = 'RATA3_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA3_DATA"'
    end
    object IBQuery3RATA4_DATA: TDateField
      FieldName = 'RATA4_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA4_DATA"'
    end
    object IBQuery3RATA5_DATA: TDateField
      FieldName = 'RATA5_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA5_DATA"'
    end
    object IBQuery3RATA6_DATA: TDateField
      FieldName = 'RATA6_DATA'
      Origin = '"TAB_DOCUMENTI"."RATA6_DATA"'
    end
    object IBQuery3PIANOCONTO_ID1: TIntegerField
      FieldName = 'PIANOCONTO_ID1'
      Origin = '"TAB_DOCUMENTI"."PIANOCONTO_ID"'
    end
    object IBQuery3ALTRA_DEST2: TIBStringField
      FieldName = 'ALTRA_DEST2'
      Origin = '"TAB_DOCUMENTI"."ALTRA_DEST2"'
      Size = 100
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 368
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object ibDistinta: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      'select fasonista from distinte'
      'where codice_articolo=:parcodart')
    Left = 344
    Top = 296
  end
  object ibqRicerca2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from taglio'
      'where passata='#39'N'#39)
    Left = 56
    Top = 288
    object ibqRicerca2QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
  end
end
