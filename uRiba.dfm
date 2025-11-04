object fRiba: TfRiba
  Left = 198
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emissione Ri.Ba.'
  ClientHeight = 547
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 276
    Width = 767
    Height = 271
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13303807
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
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'DATA_PAG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'DESCR_MOV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13303807
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
        Color = 13303807
        Expanded = False
        FieldName = 'CAUSALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'BANCA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'BANCA_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'CLIFOR_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'INCASS_BANCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'INCASS_CAB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'INCASS_ABI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'INCASS_LOCALITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
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
        Color = 13303807
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
        Color = 13303807
        Expanded = False
        FieldName = 'DOC_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13303807
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
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
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
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'DEPOSITO_CODICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'DEPOSITO_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Color = 13303807
        Expanded = False
        FieldName = 'DESCR_IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 276
    Align = alTop
    BevelWidth = 2
    Color = 15653740
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 657
      Top = 219
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Inserisci'
      Caption = 'I'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 678
      Top = 219
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'M'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 699
      Top = 219
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'A'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 720
      Top = 219
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'S'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 741
      Top = 219
      Width = 20
      Height = 22
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'E'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 101
      Height = 14
      Caption = 'Data di Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 8
      Width = 44
      Height = 14
      Caption = 'Importo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 272
      Top = 8
      Width = 135
      Height = 14
      Caption = 'Riceviamo la somma di '#8364
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 119
      Height = 14
      Caption = 'versata a mezzo della'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 91
      Width = 50
      Height = 14
      Caption = 'della fatt.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 184
      Top = 147
      Width = 4
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 131
      Width = 42
      Height = 14
      Caption = 'Spett.le'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 171
      Width = 100
      Height = 14
      Caption = 'Incassare tramite '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 446
      Top = 171
      Width = 21
      Height = 14
      Caption = 'Cab'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 331
      Top = 171
      Width = 18
      Height = 14
      Caption = 'Abi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 208
      Width = 42
      Height = 14
      Caption = 'Localit'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 336
      Top = 48
      Width = 18
      Height = 14
      Caption = 'Abi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 720
      Top = 246
      Width = 41
      Height = 22
      Cursor = crHandPoint
      Caption = '&Esci'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 657
      Top = 246
      Width = 31
      Height = 22
      Cursor = crHandPoint
      Caption = 'S1'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      OnClick = SpeedButton7Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 8
      Top = 147
      Width = 321
      Height = 21
      DropDownCount = 8
      DataField = 'CLIFOR_DESCR'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DENOMINAZIONE'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsCli
      ParentFont = False
      TabOrder = 0
    end
    object DBDateEdit1: TDBDateEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      DataField = 'DATA_PAG'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 136
      Top = 24
      Width = 129
      Height = 21
      DataField = 'IMPORTO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnChange = RxDBCalcEdit1Change
    end
    object DBEdit1: TDBEdit
      Left = 272
      Top = 24
      Width = 481
      Height = 22
      DataField = 'DESCR_IMPORTO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 488
      Top = 52
      Width = 169
      Height = 33
      Caption = 'Causale'
      Columns = 2
      DataField = 'CAUSALE'
      DataSource = DataSource1
      Items.Strings = (
        'A SALDO'
        'IN CONTO')
      TabOrder = 4
      Values.Strings = (
        'A SALDO'
        'IN CONTO')
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 106
      Width = 745
      Height = 22
      DataField = 'DESCR_MOV'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 8
      Top = 64
      Width = 321
      Height = 21
      DropDownCount = 8
      DataField = 'BANCA_DESCR'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DESCR'
      LookupDisplay = 'DESCR'
      LookupSource = dsabi2
      ParentFont = False
      TabOrder = 6
      OnChange = RxDBLookupCombo2Change
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 8
      Top = 184
      Width = 321
      Height = 21
      DropDownCount = 8
      DataField = 'INCASS_BANCA'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DESCR'
      LookupDisplay = 'DESCR'
      LookupSource = dsabi2
      ParentFont = False
      TabOrder = 7
      OnChange = RxDBLookupCombo3Change
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 446
      Top = 184
      Width = 105
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'INCASS_CAB'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CAB'
      LookupDisplay = 'ID_CAB'
      LookupSource = dsCab
      ParentFont = False
      TabOrder = 8
      OnChange = RxDBLookupCombo4Change
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 331
      Top = 184
      Width = 113
      Height = 21
      DropDownCount = 8
      DataField = 'INCASS_ABI'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_ABI'
      LookupDisplay = 'ID_ABI'
      LookupSource = dsAbi
      ParentFont = False
      TabOrder = 9
      OnChange = RxDBLookupCombo5Change
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 8
      Top = 221
      Width = 321
      Height = 21
      DropDownCount = 8
      DataField = 'INCASS_LOCALITA'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'INDIRIZZO'
      LookupDisplay = 'INDIRIZZO'
      LookupSource = dsCab
      ParentFont = False
      TabOrder = 10
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 336
      Top = 64
      Width = 113
      Height = 21
      DropDownCount = 8
      DataField = 'BANCA_ID'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_ABI'
      LookupDisplay = 'ID_ABI'
      LookupSource = dsAbi
      ParentFont = False
      TabOrder = 11
      OnChange = RxDBLookupCombo7Change
    end
    object RxDBLookupCombo8: TRxDBLookupCombo
      Left = 330
      Top = 221
      Width = 235
      Height = 21
      DropDownCount = 8
      DataField = 'INCASS_COMUNE'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'COMUNE'
      LookupDisplay = 'COMUNE'
      LookupSource = dsCab
      ParentFont = False
      TabOrder = 12
    end
    object RxDBLookupCombo9: TRxDBLookupCombo
      Left = 568
      Top = 221
      Width = 41
      Height = 21
      DropDownCount = 8
      DataField = 'INCASS_PROV'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'PROV'
      LookupDisplay = 'PROV'
      LookupSource = dsCab
      ParentFont = False
      TabOrder = 13
    end
    object RxDBLookupCombo10: TRxDBLookupCombo
      Left = 552
      Top = 184
      Width = 209
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'INCASS_DESCR'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'DESCR'
      LookupDisplay = 'DESCR'
      LookupSource = dsCab
      ParentFont = False
      TabOrder = 14
    end
  end
  object ibRiba: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RIBA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into RIBA'
      '  (PK_CODICE, DATA_PAG, DATA_DOC, NUM_DOC, DOC_ID, DESCR_MOV, '
      'IMPORTO, '
      '   CLIFOR_ID, TIPO_CLIFOR, BANCA_ID, BANCA_DESCR, NOTE, '
      'DEPOSITO_CODICE, '
      '   DEPOSITO_DESCR, DESCR_IMPORTO, CLIFOR_DESCR, INCASS_BANCA, '
      'INCASS_CAB, '
      
        '   INCASS_ABI, INCASS_LOCALITA, CAUSALE, INCASS_COMUNE, INCASS_P' +
        'ROV, '
      'INCASS_DESCR)'
      'values'
      
        '  (:PK_CODICE, :DATA_PAG, :DATA_DOC, :NUM_DOC, :DOC_ID, :DESCR_M' +
        'OV, '
      ':IMPORTO, '
      '   :CLIFOR_ID, :TIPO_CLIFOR, :BANCA_ID, :BANCA_DESCR, :NOTE, '
      ':DEPOSITO_CODICE, '
      
        '   :DEPOSITO_DESCR, :DESCR_IMPORTO, :CLIFOR_DESCR, :INCASS_BANCA' +
        ', '
      ':INCASS_CAB, '
      '   :INCASS_ABI, :INCASS_LOCALITA, :CAUSALE, :INCASS_COMUNE, '
      ':INCASS_PROV, '
      '   :INCASS_DESCR)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  DATA_PAG,'
      '  DATA_DOC,'
      '  NUM_DOC,'
      '  DOC_ID,'
      '  DESCR_MOV,'
      '  IMPORTO,'
      '  CLIFOR_ID,'
      '  TIPO_CLIFOR,'
      '  BANCA_ID,'
      '  BANCA_DESCR,'
      '  NOTE,'
      '  DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR,'
      '  DESCR_IMPORTO,'
      '  CLIFOR_DESCR,'
      '  INCASS_BANCA,'
      '  INCASS_CAB,'
      '  INCASS_ABI,'
      '  INCASS_LOCALITA,'
      '  CAUSALE,'
      '  INCASS_COMUNE,'
      '  INCASS_PROV,'
      '  INCASS_DESCR'
      'from RIBA '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'SELECT * FROM RIBA'
      'order by  DATA_PAG')
    ModifySQL.Strings = (
      'update RIBA'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  DATA_PAG = :DATA_PAG,'
      '  DATA_DOC = :DATA_DOC,'
      '  NUM_DOC = :NUM_DOC,'
      '  DOC_ID = :DOC_ID,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  IMPORTO = :IMPORTO,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  BANCA_ID = :BANCA_ID,'
      '  BANCA_DESCR = :BANCA_DESCR,'
      '  NOTE = :NOTE,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_IMPORTO = :DESCR_IMPORTO,'
      '  CLIFOR_DESCR = :CLIFOR_DESCR,'
      '  INCASS_BANCA = :INCASS_BANCA,'
      '  INCASS_CAB = :INCASS_CAB,'
      '  INCASS_ABI = :INCASS_ABI,'
      '  INCASS_LOCALITA = :INCASS_LOCALITA,'
      '  CAUSALE = :CAUSALE,'
      '  INCASS_COMUNE = :INCASS_COMUNE,'
      '  INCASS_PROV = :INCASS_PROV,'
      '  INCASS_DESCR = :INCASS_DESCR'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_RIBA'
    Left = 672
    Top = 48
    object ibRibaPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"RIBA"."PK_CODICE"'
      Required = True
    end
    object ibRibaDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      Origin = '"RIBA"."DATA_PAG"'
    end
    object ibRibaDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"RIBA"."DATA_DOC"'
    end
    object ibRibaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"RIBA"."NUM_DOC"'
    end
    object ibRibaDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"RIBA"."DOC_ID"'
    end
    object ibRibaDESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"RIBA"."DESCR_MOV"'
      Size = 100
    end
    object ibRibaIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"RIBA"."IMPORTO"'
      currency = True
    end
    object ibRibaCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"RIBA"."CLIFOR_ID"'
    end
    object ibRibaTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"RIBA"."TIPO_CLIFOR"'
    end
    object ibRibaBANCA_ID: TIBStringField
      FieldName = 'BANCA_ID'
      Origin = '"RIBA"."BANCA_ID"'
      Size = 11
    end
    object ibRibaBANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Origin = '"RIBA"."BANCA_DESCR"'
      Size = 100
    end
    object ibRibaNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"RIBA"."NOTE"'
      Size = 255
    end
    object ibRibaDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"RIBA"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibRibaDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"RIBA"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibRibaDESCR_IMPORTO: TIBStringField
      FieldName = 'DESCR_IMPORTO'
      Origin = '"RIBA"."DESCR_IMPORTO"'
      Size = 100
    end
    object ibRibaCLIFOR_DESCR: TIBStringField
      FieldName = 'CLIFOR_DESCR'
      Origin = '"RIBA"."CLIFOR_DESCR"'
      Size = 100
    end
    object ibRibaINCASS_BANCA: TIBStringField
      FieldName = 'INCASS_BANCA'
      Origin = '"RIBA"."INCASS_BANCA"'
      Size = 100
    end
    object ibRibaINCASS_CAB: TIBStringField
      FieldName = 'INCASS_CAB'
      Origin = '"RIBA"."INCASS_CAB"'
      Size = 10
    end
    object ibRibaINCASS_ABI: TIBStringField
      FieldName = 'INCASS_ABI'
      Origin = '"RIBA"."INCASS_ABI"'
      Size = 10
    end
    object ibRibaINCASS_LOCALITA: TIBStringField
      FieldName = 'INCASS_LOCALITA'
      Origin = '"RIBA"."INCASS_LOCALITA"'
      Size = 100
    end
    object ibRibaCAUSALE: TIBStringField
      FieldName = 'CAUSALE'
      Origin = '"RIBA"."CAUSALE"'
      Size = 30
    end
    object ibRibaINCASS_COMUNE: TIBStringField
      FieldName = 'INCASS_COMUNE'
      Origin = '"RIBA"."INCASS_COMUNE"'
      Size = 100
    end
    object ibRibaINCASS_PROV: TIBStringField
      FieldName = 'INCASS_PROV'
      Origin = '"RIBA"."INCASS_PROV"'
      Size = 3
    end
    object ibRibaINCASS_DESCR: TIBStringField
      FieldName = 'INCASS_DESCR'
      Origin = '"RIBA"."INCASS_DESCR"'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ibRiba
    Left = 704
    Top = 48
  end
  object ibCliFor: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from tab_cli_for'
      'order by denominazione')
    Left = 672
    Top = 80
    object ibCliForID_CLI_FOR: TIntegerField
      FieldName = 'ID_CLI_FOR'
      Origin = '"TAB_CLI_FOR"."ID_CLI_FOR"'
      Required = True
    end
    object ibCliForTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_CLI_FOR"."TIPO"'
    end
    object ibCliForDENOMINAZIONE: TIBStringField
      FieldName = 'DENOMINAZIONE'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE"'
      Size = 50
    end
    object ibCliForCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = '"TAB_CLI_FOR"."COGNOME"'
      Size = 30
    end
    object ibCliForNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLI_FOR"."NOME"'
      Size = 30
    end
    object ibCliForNOME_ALTRO: TIBStringField
      FieldName = 'NOME_ALTRO'
      Origin = '"TAB_CLI_FOR"."NOME_ALTRO"'
      Size = 30
    end
    object ibCliForFULL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FULL_NAME'
      Origin = '"TAB_CLI_FOR"."FULL_NAME"'
      ReadOnly = True
      Size = 92
    end
    object ibCliForINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO"'
      Size = 100
    end
    object ibCliForCOMUNE_ID: TIntegerField
      FieldName = 'COMUNE_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_ID"'
    end
    object ibCliForPARTITA_IVA: TIBStringField
      FieldName = 'PARTITA_IVA'
      Origin = '"TAB_CLI_FOR"."PARTITA_IVA"'
      Size = 30
    end
    object ibCliForCODICE_FISCALE: TIBStringField
      FieldName = 'CODICE_FISCALE'
      Origin = '"TAB_CLI_FOR"."CODICE_FISCALE"'
      Size = 30
    end
    object ibCliForPERSONA_FISICA: TSmallintField
      FieldName = 'PERSONA_FISICA'
      Origin = '"TAB_CLI_FOR"."PERSONA_FISICA"'
    end
    object ibCliForPIANO_CONTI_ID: TIntegerField
      FieldName = 'PIANO_CONTI_ID'
      Origin = '"TAB_CLI_FOR"."PIANO_CONTI_ID"'
    end
    object ibCliForCONTO_CORRENTE: TIBStringField
      FieldName = 'CONTO_CORRENTE'
      Origin = '"TAB_CLI_FOR"."CONTO_CORRENTE"'
      Size = 30
    end
    object ibCliForMONETA_ID: TIBStringField
      FieldName = 'MONETA_ID'
      Origin = '"TAB_CLI_FOR"."MONETA_ID"'
      Size = 4
    end
    object ibCliForPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."PAGAMENTO_ID"'
      Size = 5
    end
    object ibCliForCODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_ZONA_ID"'
      Size = 7
    end
    object ibCliForCODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Origin = '"TAB_CLI_FOR"."CODICE_SOTTO_ZONA_ID"'
      Size = 7
    end
    object ibCliForCATEGORIA_CLIENTE_ID: TIBStringField
      FieldName = 'CATEGORIA_CLIENTE_ID'
      Origin = '"TAB_CLI_FOR"."CATEGORIA_CLIENTE_ID"'
      Size = 4
    end
    object ibCliForAGENTE_ID: TIBStringField
      FieldName = 'AGENTE_ID'
      Origin = '"TAB_CLI_FOR"."AGENTE_ID"'
      Size = 4
    end
    object ibCliForPROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_CLI_FOR"."PROVVIGIONE"'
    end
    object ibCliForLINGUA_ID: TIBStringField
      FieldName = 'LINGUA_ID'
      Origin = '"TAB_CLI_FOR"."LINGUA_ID"'
      Size = 4
    end
    object ibCliForCODICE_LISTINO: TIBStringField
      FieldName = 'CODICE_LISTINO'
      Origin = '"TAB_CLI_FOR"."CODICE_LISTINO"'
      Size = 30
    end
    object ibCliForSCONTO_TESTATA1: TFloatField
      FieldName = 'SCONTO_TESTATA1'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA1"'
    end
    object ibCliForSCONTO_TESTATA2: TFloatField
      FieldName = 'SCONTO_TESTATA2'
      Origin = '"TAB_CLI_FOR"."SCONTO_TESTATA2"'
    end
    object ibCliForTEL1: TIBStringField
      FieldName = 'TEL1'
      Origin = '"TAB_CLI_FOR"."TEL1"'
      Size = 15
    end
    object ibCliForTEL2: TIBStringField
      FieldName = 'TEL2'
      Origin = '"TAB_CLI_FOR"."TEL2"'
      Size = 15
    end
    object ibCliForFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"TAB_CLI_FOR"."FAX"'
      Size = 15
    end
    object ibCliForEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLI_FOR"."EMAIL"'
      Size = 50
    end
    object ibCliForINTERNET: TIBStringField
      FieldName = 'INTERNET'
      Origin = '"TAB_CLI_FOR"."INTERNET"'
      Size = 100
    end
    object ibCliForDATA_DI_NASCITA: TDateTimeField
      FieldName = 'DATA_DI_NASCITA'
      Origin = '"TAB_CLI_FOR"."DATA_DI_NASCITA"'
    end
    object ibCliForSESSO: TIntegerField
      FieldName = 'SESSO'
      Origin = '"TAB_CLI_FOR"."SESSO"'
    end
    object ibCliForTITOLO_ID: TIntegerField
      FieldName = 'TITOLO_ID'
      Origin = '"TAB_CLI_FOR"."TITOLO_ID"'
    end
    object ibCliForPORTO_ID: TIBStringField
      FieldName = 'PORTO_ID'
      Origin = '"TAB_CLI_FOR"."PORTO_ID"'
      Size = 4
    end
    object ibCliForFIDO: TFloatField
      FieldName = 'FIDO'
      Origin = '"TAB_CLI_FOR"."FIDO"'
    end
    object ibCliForABILITA_PARTITA: TSmallintField
      FieldName = 'ABILITA_PARTITA'
      Origin = '"TAB_CLI_FOR"."ABILITA_PARTITA"'
    end
    object ibCliForFATTURA_RIEPILOGATIVA: TIntegerField
      FieldName = 'FATTURA_RIEPILOGATIVA'
      Origin = '"TAB_CLI_FOR"."FATTURA_RIEPILOGATIVA"'
    end
    object ibCliForACCORPA_ARTICOLI: TSmallintField
      FieldName = 'ACCORPA_ARTICOLI'
      Origin = '"TAB_CLI_FOR"."ACCORPA_ARTICOLI"'
    end
    object ibCliForIVA_SOSPESA: TSmallintField
      FieldName = 'IVA_SOSPESA'
      Origin = '"TAB_CLI_FOR"."IVA_SOSPESA"'
    end
    object ibCliForPOS_RIF_BOLLE: TSmallintField
      FieldName = 'POS_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."POS_RIF_BOLLE"'
    end
    object ibCliForCODICE_IVA_ESENTE: TIBStringField
      FieldName = 'CODICE_IVA_ESENTE'
      Origin = '"TAB_CLI_FOR"."CODICE_IVA_ESENTE"'
      Size = 4
    end
    object ibCliForRIP_RIF_BOLLE: TIntegerField
      FieldName = 'RIP_RIF_BOLLE'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_BOLLE"'
    end
    object ibCliForESCLUDI_MESE1: TIntegerField
      FieldName = 'ESCLUDI_MESE1'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE1"'
    end
    object ibCliForRIP_RIF_ORDINI: TIntegerField
      FieldName = 'RIP_RIF_ORDINI'
      Origin = '"TAB_CLI_FOR"."RIP_RIF_ORDINI"'
    end
    object ibCliForESCLUDI_MESE2: TIntegerField
      FieldName = 'ESCLUDI_MESE2'
      Origin = '"TAB_CLI_FOR"."ESCLUDI_MESE2"'
    end
    object ibCliForTIPO_CONTO_ID: TSmallintField
      FieldName = 'TIPO_CONTO_ID'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTO_ID"'
    end
    object ibCliForNAZIONE_ID: TIntegerField
      FieldName = 'NAZIONE_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_ID"'
    end
    object ibCliForNAZIONE_DI_NASCITA_ID: TIntegerField
      FieldName = 'NAZIONE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."NAZIONE_DI_NASCITA_ID"'
    end
    object ibCliForRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_CLI_FOR"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object ibCliForRISCHIO: TFloatField
      FieldName = 'RISCHIO'
      Origin = '"TAB_CLI_FOR"."RISCHIO"'
    end
    object ibCliForGG_SCADENZA1: TIntegerField
      FieldName = 'GG_SCADENZA1'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA1"'
    end
    object ibCliForGG_SCADENZA2: TIntegerField
      FieldName = 'GG_SCADENZA2'
      Origin = '"TAB_CLI_FOR"."GG_SCADENZA2"'
    end
    object ibCliForCONTROPARTITA_ID: TIntegerField
      FieldName = 'CONTROPARTITA_ID'
      Origin = '"TAB_CLI_FOR"."CONTROPARTITA_ID"'
    end
    object ibCliForTIPO_CONTROPARTITA: TSmallintField
      FieldName = 'TIPO_CONTROPARTITA'
      Origin = '"TAB_CLI_FOR"."TIPO_CONTROPARTITA"'
    end
    object ibCliForCERTIFICATO: TSmallintField
      FieldName = 'CERTIFICATO'
      Origin = '"TAB_CLI_FOR"."CERTIFICATO"'
    end
    object ibCliForDENOMINAZIONE2: TIBStringField
      FieldName = 'DENOMINAZIONE2'
      Origin = '"TAB_CLI_FOR"."DENOMINAZIONE2"'
      Size = 50
    end
    object ibCliForINDIRIZZO2: TIBStringField
      FieldName = 'INDIRIZZO2'
      Origin = '"TAB_CLI_FOR"."INDIRIZZO2"'
      Size = 100
    end
    object ibCliForLOCALITA: TIBStringField
      FieldName = 'LOCALITA'
      Origin = '"TAB_CLI_FOR"."LOCALITA"'
      Size = 50
    end
    object ibCliForCOMUNE_DI_NASCITA_ID: TIntegerField
      FieldName = 'COMUNE_DI_NASCITA_ID'
      Origin = '"TAB_CLI_FOR"."COMUNE_DI_NASCITA_ID"'
    end
    object ibCliForCAB_ID: TIBStringField
      FieldName = 'CAB_ID'
      Origin = '"TAB_CLI_FOR"."CAB_ID"'
      Size = 11
    end
    object ibCliForABI_ID: TIBStringField
      FieldName = 'ABI_ID'
      Origin = '"TAB_CLI_FOR"."ABI_ID"'
      Size = 11
    end
    object ibCliForTITOLO_DESCR: TIBStringField
      FieldName = 'TITOLO_DESCR'
      Origin = '"TAB_CLI_FOR"."TITOLO_DESCR"'
      Size = 10
    end
    object ibCliForCOMNASC_DESCR: TIBStringField
      FieldName = 'COMNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."COMNASC_DESCR"'
      Size = 50
    end
    object ibCliForCAPNASC_DESCR: TIBStringField
      FieldName = 'CAPNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."CAPNASC_DESCR"'
      Size = 5
    end
    object ibCliForNAZNASC_DESCR: TIBStringField
      FieldName = 'NAZNASC_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZNASC_DESCR"'
    end
    object ibCliForCOM_DESCR: TIBStringField
      FieldName = 'COM_DESCR'
      Origin = '"TAB_CLI_FOR"."COM_DESCR"'
      Size = 50
    end
    object ibCliForCAP_DESCR: TIBStringField
      FieldName = 'CAP_DESCR'
      Origin = '"TAB_CLI_FOR"."CAP_DESCR"'
      Size = 5
    end
    object ibCliForPR_DESCR: TIBStringField
      FieldName = 'PR_DESCR'
      Origin = '"TAB_CLI_FOR"."PR_DESCR"'
      Size = 2
    end
    object ibCliForCAB_DESCR: TIBStringField
      FieldName = 'CAB_DESCR'
      Origin = '"TAB_CLI_FOR"."CAB_DESCR"'
      Size = 50
    end
    object ibCliForABI_DESCR: TIBStringField
      FieldName = 'ABI_DESCR'
      Origin = '"TAB_CLI_FOR"."ABI_DESCR"'
      Size = 100
    end
    object ibCliForNAZ_DESCR: TIBStringField
      FieldName = 'NAZ_DESCR'
      Origin = '"TAB_CLI_FOR"."NAZ_DESCR"'
      Size = 50
    end
    object ibCliForFASON: TIBStringField
      FieldName = 'FASON'
      Origin = '"TAB_CLI_FOR"."FASON"'
      Size = 1
    end
    object ibCliForNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TAB_CLI_FOR"."NOTE"'
      Size = 1000
    end
    object ibCliForCG: TIBStringField
      FieldName = 'CG'
      Origin = '"TAB_CLI_FOR"."CG"'
      Size = 4
    end
    object ibCliForCA: TIBStringField
      FieldName = 'CA'
      Origin = '"TAB_CLI_FOR"."CA"'
      Size = 4
    end
    object ibCliForCOD2: TIBStringField
      FieldName = 'COD2'
      Origin = '"TAB_CLI_FOR"."COD2"'
      Size = 4
    end
    object ibCliForCR: TIBStringField
      FieldName = 'CR'
      Origin = '"TAB_CLI_FOR"."CR"'
      Size = 4
    end
  end
  object ibCab: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from tab_cab'
      'where abi_id=:id_abi'
      'order by id_cab')
    DataSource = dsAbi
    Left = 672
    Top = 112
  end
  object ibAbi: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from tab_abi'
      'order by id_abi')
    Left = 672
    Top = 144
    object ibAbiDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ABI"."DESCR"'
      Size = 100
    end
    object ibAbiID_ABI: TIBStringField
      FieldName = 'ID_ABI'
      Origin = '"TAB_ABI"."ID_ABI"'
      Required = True
      Size = 5
    end
  end
  object dsCli: TDataSource
    AutoEdit = False
    DataSet = ibCliFor
    Left = 704
    Top = 80
  end
  object dsCab: TDataSource
    AutoEdit = False
    DataSet = ibCab
    Left = 704
    Top = 112
  end
  object dsAbi: TDataSource
    AutoEdit = False
    DataSet = ibAbi
    Left = 704
    Top = 144
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from tab_cab'
      'order by id_cab')
    Left = 600
    Top = 112
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = IBDataSet1
    Left = 632
    Top = 112
  end
  object ibAbi2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from tab_abi'
      'order by descr')
    Left = 600
    Top = 144
  end
  object dsabi2: TDataSource
    AutoEdit = False
    DataSet = ibAbi2
    Left = 632
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 136
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
end
