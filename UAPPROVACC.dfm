object fApprovAcc: TfApprovAcc
  Left = 206
  Top = 172
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Situazione Materie Prime'
  ClientHeight = 523
  ClientWidth = 752
  Color = 16618084
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 2
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
  object Label2: TLabel
    Left = 152
    Top = 2
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
  object Label4: TLabel
    Left = 228
    Top = 50
    Width = 84
    Height = 14
    Caption = 'Da Consegnare'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 2
    Top = 50
    Width = 47
    Height = 14
    Caption = 'Ordinato'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Button2Click
  end
  object Label6: TLabel
    Left = 116
    Top = 50
    Width = 44
    Height = 14
    Caption = 'Arrivato'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 2
    Top = 89
    Width = 58
    Height = 14
    Caption = 'Magazzino'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 116
    Top = 89
    Width = 84
    Height = 14
    Caption = 'Da Consegnare'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 228
    Top = 89
    Width = 49
    Height = 14
    Caption = 'Pretaglio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 340
    Top = 128
    Width = 54
    Height = 14
    Caption = 'Consumo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 2
    Top = 128
    Width = 75
    Height = 14
    Caption = 'Giacenze Iniz.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 106
    Top = 68
    Width = 6
    Height = 16
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 218
    Top = 68
    Width = 9
    Height = 16
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 106
    Top = 106
    Width = 9
    Height = 16
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 219
    Top = 106
    Width = 6
    Height = 16
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 116
    Top = 128
    Width = 33
    Height = 14
    Caption = 'Taglio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 228
    Top = 128
    Width = 55
    Height = 14
    Caption = 'Taglio Ext.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 218
    Top = 146
    Width = 9
    Height = 16
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 330
    Top = 146
    Width = 9
    Height = 16
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 340
    Top = 89
    Width = 61
    Height = 14
    Caption = 'Disponibile'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 3
    Top = 329
    Width = 114
    Height = 14
    Caption = 'Ordinato Tg,Col,Ferr.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Button2Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 2
    Top = 18
    Width = 141
    Height = 22
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = DataSource1
    ParentFont = False
    TabOrder = 0
    OnChange = RxDBLookupCombo1Change
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 152
    Top = 18
    Width = 313
    Height = 22
    DropDownCount = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = DataSource1
    ParentFont = False
    TabOrder = 1
    OnChange = RxDBLookupCombo2Change
  end
  object Button1: TButton
    Left = 472
    Top = 19
    Width = 75
    Height = 21
    Caption = '&Visualizza'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 672
    Top = 4
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Esci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TRxCalcEdit
    Left = 228
    Top = 66
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Edit3: TRxCalcEdit
    Left = 2
    Top = 66
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Edit4: TRxCalcEdit
    Left = 116
    Top = 66
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Edit10: TRxCalcEdit
    Left = 340
    Top = 104
    Width = 94
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Edit9: TRxCalcEdit
    Left = 228
    Top = 104
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Edit6: TRxCalcEdit
    Left = 116
    Top = 104
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object Edit5: TRxCalcEdit
    Left = 2
    Top = 104
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object Edit11: TRxCalcEdit
    Left = 340
    Top = 144
    Width = 94
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object Edit12: TRxCalcEdit
    Left = 2
    Top = 144
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object Button3: TButton
    Left = 536
    Top = 4
    Width = 59
    Height = 25
    Caption = 'Button3'
    TabOrder = 13
    Visible = False
    OnClick = Button3Click
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 116
    Top = 144
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
  object RxCalcEdit2: TRxCalcEdit
    Left = 228
    Top = 144
    Width = 100
    Height = 21
    AutoSize = False
    Color = 15859411
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object Button4: TButton
    Left = 506
    Top = 4
    Width = 59
    Height = 25
    Caption = 'Button4'
    TabOrder = 16
    Visible = False
    OnClick = Button4Click
  end
  object DBGrid2: TDBGrid
    Left = 2
    Top = 344
    Width = 431
    Height = 177
    DataSource = DataSource13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13041663
        Expanded = False
        FieldName = 'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Tg.'
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
        Color = 13041663
        Expanded = False
        FieldName = 'B'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Col.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Ferr.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'F_2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Q.t'#224' Ord.'
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
        Color = 13041663
        Expanded = False
        FieldName = 'Arr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Arrivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'DaCons'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Da Cons.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13041663
        Expanded = False
        FieldName = 'F_1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Costo Medio'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 2
    Top = 168
    Width = 426
    Height = 129
    BevelInner = bvLowered
    Color = 10485760
    Enabled = False
    TabOrder = 18
    object Label23: TLabel
      Left = 303
      Top = 51
      Width = 41
      Height = 14
      Caption = 'Gruppo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 303
      Top = 89
      Width = 24
      Height = 14
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 133
      Top = 89
      Width = 45
      Height = 14
      Caption = 'Famiglia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 133
      Top = 51
      Width = 33
      Height = 14
      Caption = 'Marca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroup4: TRadioGroup
      Left = 4
      Top = 5
      Width = 105
      Height = 71
      Caption = 'Scegli Articolo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Da Art. Ad Art.'
        'x Categorie')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup4Click
    end
    object rxdblcDaArtCodice: TRxDBLookupCombo
      Left = 112
      Top = 5
      Width = 91
      Height = 21
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnChange = rxdblcDaArtCodiceChange
      OnExit = rxdblcDaArtCodiceExit
    end
    object rxdblcDaArt: TRxDBLookupCombo
      Left = 206
      Top = 5
      Width = 215
      Height = 21
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnChange = rxdblcDaArtChange
      OnExit = rxdblcDaArtExit
    end
    object rxdblcAdArtCodice: TRxDBLookupCombo
      Left = 112
      Top = 29
      Width = 91
      Height = 21
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnChange = rxdblcAdArtCodiceChange
      OnExit = rxdblcAdArtCodiceExit
    end
    object rxdblcAdArt: TRxDBLookupCombo
      Left = 206
      Top = 29
      Width = 215
      Height = 21
      DropDownCount = 8
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnChange = rxdblcAdArtChange
      OnExit = rxdblcAdArtExit
    end
    object rxdblcGruppo: TRxDBLookupCombo
      Left = 303
      Top = 65
      Width = 118
      Height = 21
      Hint = 'Gruppo'
      DropDownCount = 8
      Color = 15138790
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource11
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object rxdblcMarca: TRxDBLookupCombo
      Left = 133
      Top = 65
      Width = 118
      Height = 21
      Hint = 'Marca'
      DropDownCount = 8
      Color = 14811135
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource9
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object rxdblcTipo: TRxDBLookupCombo
      Left = 303
      Top = 103
      Width = 118
      Height = 21
      Hint = 'Tipo'
      DropDownCount = 8
      Color = 16050943
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource12
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object rxdblcFamiglia: TRxDBLookupCombo
      Left = 133
      Top = 103
      Width = 118
      Height = 21
      Hint = 'Famiglia'
      DropDownCount = 8
      Color = 16777177
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource10
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object cbMarca: TCheckBox
      Left = 115
      Top = 67
      Width = 15
      Height = 17
      Hint = 'Marca'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = cbMarcaClick
    end
    object cbFamiglia: TCheckBox
      Left = 115
      Top = 105
      Width = 15
      Height = 17
      Hint = 'Famiglia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cbFamigliaClick
    end
    object cbTipo: TCheckBox
      Left = 285
      Top = 105
      Width = 15
      Height = 17
      Hint = 'Tipo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = cbTipoClick
    end
    object cbGruppo: TCheckBox
      Left = 285
      Top = 67
      Width = 15
      Height = 17
      Hint = 'Gruppo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = cbGruppoClick
    end
    object Button5: TButton
      Left = 16
      Top = 82
      Width = 75
      Height = 25
      Caption = '&Stampa'
      TabOrder = 13
      OnClick = Button5Click
    end
  end
  object PageControl1: TPageControl
    Left = 437
    Top = 82
    Width = 313
    Height = 217
    ActivePage = TabSheet1
    TabOrder = 19
    object TabSheet1: TTabSheet
      Caption = 'Pret. Tot.'
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 303
        Height = 187
        DataSource = DataSource15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = 13565951
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tg.'
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
            Color = 13565951
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Col.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferr.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F_1'
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
            Width = 79
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Costo Medio'
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
    object TabSheet2: TTabSheet
      Caption = 'Pret. Ferr.'
      ImageIndex = 1
      object DBGrid4: TDBGrid
        Left = 2
        Top = 1
        Width = 303
        Height = 189
        DataSource = DataSource16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferretto'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pret. Col.'
      ImageIndex = 2
      object DBGrid5: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 187
        DataSource = DataSource17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Colore'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Pret. Tg.'
      ImageIndex = 3
      object DBGrid6: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 186
        DataSource = DataSource18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
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
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 168
    Width = 433
    Height = 177
    ActivePage = TabSheet5
    TabOrder = 20
    object TabSheet5: TTabSheet
      Caption = 'Arrivi Tot.'
      object DBGrid1: TDBGrid
        Left = 0
        Top = -4
        Width = 385
        Height = 153
        DataSource = DataSource14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = 13565951
            Expanded = False
            FieldName = 'A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tg.'
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
            Color = 13565951
            Expanded = False
            FieldName = 'B'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Col.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'C'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferr.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F_2'
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
            Width = 79
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Costo Medio'
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
            FieldName = 'ORD'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Arrivi Ferr.'
      ImageIndex = 1
      object DBGrid7: TDBGrid
        Left = 2
        Top = 1
        Width = 313
        Height = 147
        DataSource = DataSource21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'C'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferretto'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Arrivi Col.'
      ImageIndex = 2
      object DBGrid8: TDBGrid
        Left = 2
        Top = 2
        Width = 314
        Height = 147
        DataSource = DataSource20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'B'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Colore'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Arrivi Tg.'
      ImageIndex = 3
      object DBGrid9: TDBGrid
        Left = 1
        Top = 0
        Width = 313
        Height = 149
        DataSource = DataSource19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
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
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
  end
  object PageControl4: TPageControl
    Left = 437
    Top = 298
    Width = 314
    Height = 225
    ActivePage = TabSheet13
    TabOrder = 21
    object TabSheet13: TTabSheet
      Caption = 'Taglio Tot.'
      object DBGrid14: TDBGrid
        Left = 1
        Top = 1
        Width = 303
        Height = 195
        DataSource = DataSource22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = 13565951
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tg.'
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
            Color = 13565951
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Col.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferr.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F_1'
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
            Width = 79
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Costo Medio'
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
    object TabSheet14: TTabSheet
      Caption = 'Taglio Ferr.'
      ImageIndex = 1
      object DBGrid15: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferretto'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Taglio Col.'
      ImageIndex = 2
      object DBGrid16: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Colore'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Taglio Tg.'
      ImageIndex = 3
      object DBGrid17: TDBGrid
        Left = 1
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
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
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Tag.Ext.Tot.'
      ImageIndex = 4
      object DBGrid10: TDBGrid
        Left = 1
        Top = 1
        Width = 303
        Height = 195
        DataSource = DataSource26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = 13565951
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tg.'
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
            Color = 13565951
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Col.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferr.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'F_1'
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
            Width = 79
            Visible = True
          end
          item
            Color = 13565951
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Costo Medio'
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
    object TabSheet10: TTabSheet
      Caption = 'Tag.Ext.Ferr.'
      ImageIndex = 5
      object DBGrid11: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Ferretto'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Tag.Ext.Col.'
      ImageIndex = 6
      object DBGrid12: TDBGrid
        Left = 2
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'COLORE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Colore'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Tag.Ext.Tg.'
      ImageIndex = 7
      object DBGrid13: TDBGrid
        Left = 1
        Top = 2
        Width = 303
        Height = 195
        DataSource = DataSource29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'TAGLIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
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
            Alignment = taCenter
            Color = 12910591
            Expanded = False
            FieldName = 'F_1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
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
          end>
      end
    end
  end
  object Button6: TButton
    Left = 472
    Top = 43
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'Stampa Tot.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 22
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 542
    Top = 43
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'Stampa F.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 23
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 612
    Top = 43
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'Stampa C.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 24
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 682
    Top = 43
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'Stampa T.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 25
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 682
    Top = 60
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'Stampa Cp.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 26
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 471
    Top = 61
    Width = 69
    Height = 17
    Cursor = crHandPoint
    Caption = 'St. Cp.Col'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 27
    OnClick = Button11Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery4
    Left = 304
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 457
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      '')
    Left = 577
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 233
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      '')
    Left = 712
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 113
    Top = 72
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_ARTICOLI'
      'Where FLAG_ACCESSORIE='#39'S'#39
      'Order By CODICE_ARTICOLO')
    Left = 344
  end
  object RxMemoryData1: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'CODICE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTITA'
        DataType = ftFloat
      end>
    Left = 600
    Top = 8
    object RxMemoryData1CODICE: TStringField
      FieldName = 'CODICE'
    end
    object RxMemoryData1QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##.00'
    end
  end
  object RxMemoryData2: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'CODICE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTITA'
        DataType = ftFloat
      end>
    Left = 632
    Top = 8
    object RxMemoryData2CODICE: TStringField
      FieldName = 'CODICE'
    end
    object RxMemoryData2QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
  end
  object RxMemoryData3: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'CODICE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTITA'
        DataType = ftFloat
      end>
    Left = 632
    Top = 56
    object RxMemoryData3CODICE: TStringField
      FieldName = 'CODICE'
    end
    object RxMemoryData3QUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 417
    Top = 65528
  end
  object RxMemoryData4: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Codice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDINATO'
        DataType = ftFloat
      end
      item
        Name = 'CONSEGNATO'
        DataType = ftFloat
      end
      item
        Name = 'DACONS'
        DataType = ftFloat
      end>
    Left = 688
    Top = 80
    object RxMemoryData4Codice: TStringField
      FieldName = 'Codice'
    end
    object RxMemoryData4DESCR: TStringField
      FieldName = 'DESCR'
    end
    object RxMemoryData4ORDINATO: TFloatField
      FieldName = 'ORDINATO'
    end
    object RxMemoryData4CONSEGNATO: TFloatField
      FieldName = 'CONSEGNATO'
    end
    object RxMemoryData4DACONS: TFloatField
      FieldName = 'DACONS'
    end
  end
  object DataSource4: TDataSource
    DataSet = RxMemoryData4
    Left = 161
    Top = 64
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 218
    Top = 251
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 218
    Top = 281
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 328
    Top = 257
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 330
    Top = 293
  end
  object DataSource5: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 218
    Top = 251
  end
  object DataSource6: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 218
    Top = 281
  end
  object DataSource7: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 328
    Top = 257
  end
  object DataSource8: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 330
    Top = 293
  end
  object DataSource9: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 218
    Top = 251
  end
  object DataSource10: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 218
    Top = 281
  end
  object DataSource11: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 328
    Top = 257
  end
  object DataSource12: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 330
    Top = 293
  end
  object IBQuery6: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    OnCalcFields = IBQuery6CalcFields
    DataSource = DataSource1
    SQL.Strings = (
      
        'select codice_articolo,descr,avg(costo) as F_1 ,sum(quantita) as' +
        ' F_2,a,b,c from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=22) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,a,b,c'
      'order by codice_articolo,b,a,c')
    Left = 40
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery6CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery6DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery6F_1: TFloatField
      FieldName = 'F_1'
      currency = True
    end
    object IBQuery6F_2: TFloatField
      FieldName = 'F_2'
      DisplayFormat = '#,##.000'
    end
    object IBQuery6A: TIBStringField
      FieldName = 'A'
      Size = 30
    end
    object IBQuery6B: TIBStringField
      FieldName = 'B'
      Size = 30
    end
    object IBQuery6C: TIBStringField
      FieldName = 'C'
      Size = 30
    end
    object IBQuery6DaCons: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DaCons'
      DisplayFormat = '#,##.000'
      Calculated = True
    end
    object IBQuery6Arr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Arr'
      DisplayFormat = '#,##.000'
      Calculated = True
    end
  end
  object DataSource13: TDataSource
    DataSet = IBQuery6
    Left = 72
    Top = 384
  end
  object IBQuery7: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DataSource = DataSource1
    SQL.Strings = (
      
        'select distinct codice_articolo,descr,avg(costo) as F_1 ,avg(cos' +
        'to) As Ord,sum(quantita) as F_2,a,b,c from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,a,b,c'
      'order by codice_articolo,b,a,c')
    Left = 72
    Top = 206
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery7CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery7DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery7F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery7ORD: TFloatField
      FieldName = 'ORD'
      ProviderFlags = []
    end
    object IBQuery7F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
    end
    object IBQuery7A: TIBStringField
      FieldName = 'A'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery7B: TIBStringField
      FieldName = 'B'
      ProviderFlags = []
      Size = 30
    end
    object IBQuery7C: TIBStringField
      FieldName = 'C'
      ProviderFlags = []
      Size = 30
    end
  end
  object DataSource14: TDataSource
    DataSet = IBQuery7
    Left = 16
    Top = 246
  end
  object IBQuery8: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct codice_articolo,descr,avg(costo) as F_1 ,sum(qua' +
        'ntita) as F_2,a,b,c from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO) and (tab_det_doc.A=:A) and (tab_det_doc.B=:' +
        'B) and (tab_det_doc.C=:C)'
      'group by tipo_doc,codice_articolo,descr,a,b,c'
      'order by codice_articolo,b,a,c')
    Left = 112
    Top = 350
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'A'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'B'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C'
        ParamType = ptUnknown
      end>
    object IBQuery8CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery8DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery8F_1: TFloatField
      FieldName = 'F_1'
    end
    object IBQuery8F_2: TFloatField
      FieldName = 'F_2'
    end
    object IBQuery8A: TIBStringField
      FieldName = 'A'
      Size = 30
    end
    object IBQuery8B: TIBStringField
      FieldName = 'B'
      Size = 30
    end
    object IBQuery8C: TIBStringField
      FieldName = 'C'
      Size = 30
    end
  end
  object IBQuery9: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.totale) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      
        'distinte.codice_articolo = pretaglio.codice and distinte.codcli ' +
        '= pretaglio.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (pretaglio.passata='#39'N'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 320
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery9CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery9F_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery10: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*taglio.totale) as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join taglio on'
      
        'distinte.codice_articolo = taglio.codice and distinte.codcli = t' +
        'aglio.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo'
      '')
    Left = 232
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery10CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery10F_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery11: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*tagliofas.totale)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tagliofas on'
      
        'distinte.codice_articolo = tagliofas.codice and distinte.codcli ' +
        '=  tagliofas.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 64
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery11CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery11F_1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery12: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.colore,' +
        'tgcol_temp.taglia,tgcol_temp.f1,sum(distinte_dett.qta*tgcol_temp' +
        '.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = tgcol_temp.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp.colore,tgcol_t' +
        'emp.taglia,tgcol_temp.f1'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.colore,' +
        'tgcol_temp.taglia,tgcol_temp.f1,sum(distinte_dett.qta*tgcol_temp' +
        '.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp.PK_DIST not in (select codc' +
        'li from distinte))'
      
        'group by distinte_dett.codice_articolo,tgcol_temp.colore,tgcol_t' +
        'emp.taglia,tgcol_temp.f1'
      '')
    Left = 448
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery12COLORE: TIBStringField
      FieldName = 'COLORE'
      Size = 100
    end
    object IBQuery12TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
    end
    object IBQuery12F1: TIBStringField
      FieldName = 'F1'
      Size = 5
    end
    object IBQuery12F_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
    object IBQuery12CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
  end
  object DataSource15: TDataSource
    AutoEdit = False
    DataSet = IBQuery12
    Left = 528
    Top = 240
  end
  object IBQuery13: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.f1,sum(' +
        'distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = tgcol_temp.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp.f1'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.f1,sum(' +
        'distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp.PK_DIST not in (select codc' +
        'li from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp.f1'
      '')
    Left = 576
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery13CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery13F1: TIBStringField
      FieldName = 'F1'
      Size = 5
    end
    object IBQuery13F_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##'
    end
  end
  object DataSource16: TDataSource
    DataSet = IBQuery13
    Left = 712
    Top = 120
  end
  object IBStoredProc1: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'PRE_TG_COL'
    Left = 600
    Top = 144
  end
  object IBQuery14: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.Colore,' +
        'sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = tgcol_temp.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp.Colore'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.Colore,' +
        'sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp.PK_DIST not in (select codc' +
        'li from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp.Colore'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 616
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField6: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##'
    end
    object IBQuery14COLORE: TIBStringField
      FieldName = 'COLORE'
      Size = 100
    end
  end
  object DataSource17: TDataSource
    DataSet = IBQuery14
    Left = 704
    Top = 152
  end
  object IBQuery15: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.taglia,' +
        'sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = tgcol_temp.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp.taglia'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.taglia,' +
        'sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp.PK_DIST not in (select codc' +
        'li from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp.taglia'
      ''
      ''
      ''
      ''
      '')
    Left = 656
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField8: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##'
    end
    object IBQuery15TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
    end
  end
  object DataSource18: TDataSource
    DataSet = IBQuery15
    Left = 720
    Top = 192
  end
  object IBQuery16: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DataSource = DataSource1
    SQL.Strings = (
      
        'select distinct codice_articolo,descr,avg(costo) as F_1 ,sum(qua' +
        'ntita) as F_2 ,a from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,a'
      'order by codice_articolo,a')
    Left = 136
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery16CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery16DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery16F_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
    object IBQuery16F_2: TFloatField
      FieldName = 'F_2'
      DisplayFormat = '#,##.00'
    end
    object IBQuery16A: TIBStringField
      FieldName = 'A'
      Size = 30
    end
  end
  object DataSource19: TDataSource
    DataSet = IBQuery16
    Left = 192
    Top = 248
  end
  object IBQuery17: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DataSource = DataSource1
    SQL.Strings = (
      
        'select distinct codice_articolo,descr,avg(costo) as F_1 ,sum(qua' +
        'ntita) as F_2 ,b from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,b'
      'order by codice_articolo,b')
    Left = 136
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery17CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery17DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery17F_1: TFloatField
      FieldName = 'F_1'
      DisplayFormat = '#,##.00'
    end
    object IBQuery17F_2: TFloatField
      FieldName = 'F_2'
      DisplayFormat = '#,##.00'
    end
    object IBQuery17B: TIBStringField
      FieldName = 'B'
      Size = 30
    end
  end
  object DataSource20: TDataSource
    DataSet = IBQuery17
    Left = 192
    Top = 280
  end
  object IBQuery18: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DataSource = DataSource1
    SQL.Strings = (
      
        'select distinct codice_articolo,descr,avg(costo) as F_1 ,sum(qua' +
        'ntita) as F_2,c from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,c'
      'order by codice_articolo,c')
    Left = 136
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery18CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBQuery18DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery18F_1: TFloatField
      FieldName = 'F_1'
    end
    object IBQuery18F_2: TFloatField
      FieldName = 'F_2'
    end
    object IBQuery18C: TIBStringField
      FieldName = 'C'
      Size = 30
    end
  end
  object DataSource21: TDataSource
    DataSet = IBQuery18
    Left = 192
    Top = 312
  end
  object IBQuery19: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.colore' +
        ',tgcol_temp2.taglia,tgcol_temp2.f1,sum(distinte_dett.qta*tgcol_t' +
        'emp2.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = tgcol_temp2.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp2.colore,tgcol_' +
        'temp2.taglia,tgcol_temp2.f1')
    Left = 480
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery19CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery19COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery19TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      ProviderFlags = []
    end
    object IBQuery19F1: TIBStringField
      FieldName = 'F1'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery19F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource22: TDataSource
    AutoEdit = False
    DataSet = IBQuery19
    Left = 512
    Top = 352
  end
  object IBStoredProc2: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'TAG_TG_COL'
    Left = 448
    Top = 352
  end
  object IBQuery20: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.f1,sum' +
        '(distinte_dett.qta*tgcol_temp2.qta)  as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = tgcol_temp2.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp2.f1'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.f1,sum' +
        '(distinte_dett.qta*tgcol_temp2.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp2.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp2.f1'
      ''
      ''
      ''
      ''
      '')
    Left = 448
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery20CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery20F1: TIBStringField
      FieldName = 'F1'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery20F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource23: TDataSource
    DataSet = IBQuery20
    Left = 480
    Top = 384
  end
  object IBQuery21: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.Colore' +
        ',sum(distinte_dett.qta*tgcol_temp2.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = tgcol_temp2.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp2.Colore'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.Colore' +
        ',sum(distinte_dett.qta*tgcol_temp2.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp2.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp2.Colore'
      ''
      '')
    Left = 448
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery21CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery21COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery21F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##'
    end
  end
  object DataSource24: TDataSource
    DataSet = IBQuery21
    Left = 480
    Top = 416
  end
  object IBQuery22: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.taglia' +
        ',sum(distinte_dett.qta*tgcol_temp2.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = tgcol_temp2.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp2.taglia'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.taglia' +
        ',sum(distinte_dett.qta*tgcol_temp2.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp2.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp2.taglia'
      ''
      ''
      ''
      '')
    Left = 448
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery22CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery22TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      ProviderFlags = []
    end
    object IBQuery22F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##'
    end
  end
  object DataSource25: TDataSource
    DataSet = IBQuery22
    Left = 480
    Top = 448
  end
  object IBStoredProc3: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'TAGE_TG_COL'
    Left = 576
    Top = 352
  end
  object IBQuery23: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.colore' +
        ',tgcol_temp3.taglia,tgcol_temp3.f1,sum(distinte_dett.qta*tgcol_t' +
        'emp3.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = tgcol_temp3.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp3.colore,tgcol_' +
        'temp3.taglia,tgcol_temp3.f1'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.colore' +
        ',tgcol_temp3.taglia,tgcol_temp3.f1,sum(distinte_dett.qta*tgcol_t' +
        'emp3.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp3.PK_DIST not in (select cod' +
        'cli from distinte))'
      
        'group by distinte_dett.codice_articolo,tgcol_temp3.colore,tgcol_' +
        'temp3.taglia,tgcol_temp3.f1'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 608
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery23CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery23COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery23TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      ProviderFlags = []
    end
    object IBQuery23F1: TIBStringField
      FieldName = 'F1'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery23F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource26: TDataSource
    AutoEdit = False
    DataSet = IBQuery23
    Left = 640
    Top = 352
  end
  object IBQuery24: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.f1,sum' +
        '(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = tgcol_temp3.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp3.f1'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.f1,sum' +
        '(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp3.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp3.f1'
      ''
      ''
      ''
      '')
    Left = 608
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery24CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery24F1: TIBStringField
      FieldName = 'F1'
      ProviderFlags = []
      Size = 5
    end
    object IBQuery24F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##.00'
    end
  end
  object DataSource27: TDataSource
    DataSet = IBQuery24
    Left = 640
    Top = 384
  end
  object IBQuery25: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.Colore' +
        ',sum(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = tgcol_temp3.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp3.Colore'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.Colore' +
        ',sum(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp3.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp3.Colore'
      ''
      ''
      ''
      ''
      '')
    Left = 608
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery25CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery25COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery25F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##'
    end
  end
  object DataSource28: TDataSource
    DataSet = IBQuery25
    Left = 640
    Top = 416
  end
  object IBQuery26: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.taglia' +
        ',sum(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = tgcol_temp3.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      'group by distinte_dett.codice_articolo,tgcol_temp3.taglia'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.taglia' +
        ',sum(distinte_dett.qta*tgcol_temp3.qta) as F_1  from distinte_de' +
        'tt'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp3.PK_DIST not in (select cod' +
        'cli from distinte))'
      'group by distinte_dett.codice_articolo,tgcol_temp3.taglia'
      ''
      '')
    Left = 608
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery26CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery26TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      ProviderFlags = []
    end
    object IBQuery26F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
      DisplayFormat = '#,##'
    end
  end
  object DataSource29: TDataSource
    DataSet = IBQuery26
    Left = 640
    Top = 448
  end
  object ib1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'insert into tgcol_temp'
      
        '(select codice,taglia0,F0,colore0,QTA00,scat from pretaglio wher' +
        'e (passata='#39'N'#39')  and (qta00<>0)'
      'union'
      
        'select codice,taglia1,F1,colore0,QTA10,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta10<>0)'
      'union'
      
        'select codice,taglia2,F2,colore0,QTA20,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta20<>0)'
      'union'
      
        'select codice,taglia3,F3,colore0,QTA30,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta30<>0)'
      'union'
      
        'select codice,taglia4,F4,colore0,QTA40,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta40<>0)'
      'union'
      
        'select codice,taglia5,F5,colore0,QTA50,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta50<>0)'
      'union'
      
        'select codice,taglia6,F6,colore0,QTA60,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta60<>0)'
      'union'
      
        'select codice,taglia7,F7,colore0,QTA70,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta70<>0)'
      'union'
      
        'select codice,taglia8,F8,colore0,QTA80,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta80<>0)'
      'union'
      
        'select codice,taglia0,F0,colore1,QTA01,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta01<>0)'
      'union'
      
        'select codice,taglia1,F1,colore1,QTA11,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta11<>0)'
      'union'
      
        'select codice,taglia2,F2,colore1,QTA21,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta21<>0)'
      'union'
      
        'select codice,taglia3,F3,colore1,QTA31,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta31<>0)'
      'union'
      
        'select codice,taglia4,F4,colore1,QTA41,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta41<>0)'
      'union'
      
        'select codice,taglia5,F5,colore1,QTA51,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta51<>0)'
      'union'
      
        'select codice,taglia6,F6,colore1,QTA61,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta61<>0)'
      'union'
      
        'select codice,taglia7,F7,colore1,QTA71,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta71<>0)'
      'union'
      
        'select codice,taglia8,F8,colore1,QTA81,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta81<>0)'
      'union'
      
        'select codice,taglia0,F0,colore2,QTA02,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta02<>0)'
      'union'
      
        'select codice,taglia1,F1,colore2,QTA12,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta12<>0)'
      'union'
      
        'select codice,taglia2,F2,colore2,QTA22,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta22<>0)'
      'union'
      
        'select codice,taglia3,F3,colore2,QTA32,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta32<>0)'
      'union'
      
        'select codice,taglia4,F4,colore2,QTA42,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta42<>0)'
      'union'
      
        'select codice,taglia5,F5,colore2,QTA52,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta52<>0)'
      'union'
      
        'select codice,taglia6,F6,colore2,QTA62,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta62<>0)'
      'union'
      
        'select codice,taglia7,F7,colore2,QTA72,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta72<>0)'
      'union'
      
        'select codice,taglia8,F8,colore2,QTA82,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta82<>0)'
      'union'
      
        'select codice,taglia0,F0,colore3,QTA03,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta03<>0)'
      'union'
      
        'select codice,taglia1,F1,colore3,QTA13,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta13<>0)'
      'union'
      
        'select codice,taglia2,F2,colore3,QTA23,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta23<>0)'
      'union'
      
        'select codice,taglia3,F3,colore3,QTA33,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta33<>0)'
      'union'
      
        'select codice,taglia4,F4,colore3,QTA43,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta43<>0)'
      'union'
      
        'select codice,taglia5,F5,colore3,QTA53,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta53<>0)'
      'union'
      
        'select codice,taglia6,F6,colore3,QTA63,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta63<>0)'
      'union'
      
        'select codice,taglia7,F7,colore3,QTA73,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta73<>0)'
      'union'
      
        'select codice,taglia8,F8,colore3,QTA83,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta83<>0)'
      'union'
      
        'select codice,taglia0,F0,colore4,QTA04,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta04<>0)'
      'union'
      
        'select codice,taglia1,F1,colore4,QTA14,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta14<>0)'
      'union'
      
        'select codice,taglia2,F2,colore4,QTA24,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta24<>0)'
      'union'
      
        'select codice,taglia3,F3,colore4,QTA34,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta34<>0)'
      'union'
      
        'select codice,taglia4,F4,colore4,QTA44,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta44<>0)'
      'union'
      
        'select codice,taglia5,F5,colore4,QTA54,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta54<>0)'
      'union'
      
        'select codice,taglia6,F6,colore4,QTA64,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta64<>0)'
      'union'
      
        'select codice,taglia7,F7,colore4,QTA74,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta74<>0)'
      'union'
      
        'select codice,taglia8,F8,colore4,QTA84,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta84<>0)'
      'union'
      
        'select codice,taglia0,F0,colore5,QTA05,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta05<>0)'
      'union'
      
        'select codice,taglia1,F1,colore5,QTA15,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta15<>0)'
      'union'
      
        'select codice,taglia2,F2,colore5,QTA25,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta25<>0)'
      'union'
      
        'select codice,taglia3,F3,colore5,QTA35,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta35<>0)'
      'union'
      
        'select codice,taglia4,F4,colore5,QTA45,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta45<>0)'
      'union'
      
        'select codice,taglia5,F5,colore5,QTA55,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta55<>0)'
      'union'
      
        'select codice,taglia6,F6,colore5,QTA65,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta65<>0)'
      'union'
      
        'select codice,taglia7,F7,colore5,QTA75,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta75<>0)'
      'union'
      
        'select codice,taglia8,F8,colore5,QTA85,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta85<>0)'
      'union'
      
        'select codice,taglia0,F0,colore6,QTA06,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta06<>0)'
      'union'
      
        'select codice,taglia1,F1,colore6,QTA16,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta16<>0)'
      'union'
      
        'select codice,taglia2,F2,colore6,QTA26,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta26<>0)'
      'union'
      
        'select codice,taglia3,F3,colore6,QTA36,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta36<>0)'
      'union'
      
        'select codice,taglia4,F4,colore6,QTA46,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta46<>0)'
      'union'
      
        'select codice,taglia5,F5,colore6,QTA56,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta56<>0)'
      'union'
      
        'select codice,taglia6,F6,colore6,QTA66,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta66<>0)'
      'union'
      
        'select codice,taglia7,F7,colore6,QTA76,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta76<>0)'
      'union'
      
        'select codice,taglia8,F8,colore6,QTA86,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta86<>0)'
      'union'
      
        'select codice,taglia0,F0,colore7,QTA07,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta07<>0)'
      'union'
      
        'select codice,taglia1,F1,colore7,QTA17,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta17<>0)'
      'union'
      
        'select codice,taglia2,F2,colore7,QTA27,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta27<>0)'
      'union'
      
        'select codice,taglia3,F3,colore7,QTA37,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta37<>0)'
      'union'
      
        'select codice,taglia4,F4,colore7,QTA47,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta47<>0)'
      'union'
      
        'select codice,taglia5,F5,colore7,QTA57,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta57<>0)'
      'union'
      
        'select codice,taglia6,F6,colore7,QTA67,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta67<>0)'
      'union'
      
        'select codice,taglia7,F7,colore7,QTA77,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta77<>0)'
      'union'
      
        'select codice,taglia8,F8,colore7,QTA87,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta87<>0)'
      'union'
      
        'select codice,taglia0,F0,colore8,QTA08,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta08<>0)'
      'union'
      
        'select codice,taglia1,F1,colore8,QTA18,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta18<>0)'
      'union'
      
        'select codice,taglia2,F2,colore8,QTA28,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta28<>0)'
      'union'
      
        'select codice,taglia3,F3,colore8,QTA38,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta38<>0)'
      'union'
      
        'select codice,taglia4,F4,colore8,QTA48,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta48<>0)'
      'union'
      
        'select codice,taglia5,F5,colore8,QTA58,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta58<>0)'
      'union'
      
        'select codice,taglia6,F6,colore8,QTA68,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta68<>0)'
      'union'
      
        'select codice,taglia7,F7,colore8,QTA78,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta78<>0)'
      'union'
      
        'select codice,taglia8,F8,colore8,QTA88,scat from pretaglio where' +
        ' (passata='#39'N'#39')  and (qta88<>0))')
    Left = 184
    Top = 400
  end
  object ib2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select codice,taglia0,F0,colore0,QTA00,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta00<>0)'
      'union'
      
        'select codice,taglia1,F1,colore0,QTA10,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta10<>0)'
      'union'
      
        'select codice,taglia2,F2,colore0,QTA20,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta20<>0)'
      'union'
      
        'select codice,taglia3,F3,colore0,QTA30,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta30<>0)'
      'union'
      
        'select codice,taglia4,F4,colore0,QTA40,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta40<>0)'
      'union'
      
        'select codice,taglia5,F5,colore0,QTA50,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta50<>0)'
      'union'
      
        'select codice,taglia6,F6,colore0,QTA60,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta60<>0)'
      'union'
      
        'select codice,taglia7,F7,colore0,QTA70,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta70<>0)'
      'union'
      
        'select codice,taglia8,F8,colore0,QTA80,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta80<>0)'
      'union'
      
        'select codice,taglia0,F0,colore1,QTA01,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta01<>0)'
      'union'
      
        'select codice,taglia1,F1,colore1,QTA11,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta11<>0)'
      'union'
      
        'select codice,taglia2,F2,colore1,QTA21,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta21<>0)'
      'union'
      
        'select codice,taglia3,F3,colore1,QTA31,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta31<>0)'
      'union'
      
        'select codice,taglia4,F4,colore1,QTA41,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta41<>0)'
      'union'
      
        'select codice,taglia5,F5,colore1,QTA51,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta51<>0)'
      'union'
      
        'select codice,taglia6,F6,colore1,QTA61,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta61<>0)'
      'union'
      
        'select codice,taglia7,F7,colore1,QTA71,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta71<>0)'
      'union'
      
        'select codice,taglia8,F8,colore1,QTA81,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta81<>0)'
      'union'
      
        'select codice,taglia0,F0,colore2,QTA02,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta02<>0)'
      'union'
      
        'select codice,taglia1,F1,colore2,QTA12,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta12<>0)'
      'union'
      
        'select codice,taglia2,F2,colore2,QTA22,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta22<>0)'
      'union'
      
        'select codice,taglia3,F3,colore2,QTA32,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta32<>0)'
      'union'
      
        'select codice,taglia4,F4,colore2,QTA42,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta42<>0)'
      'union'
      
        'select codice,taglia5,F5,colore2,QTA52,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta52<>0)'
      'union'
      
        'select codice,taglia6,F6,colore2,QTA62,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta62<>0)'
      'union'
      
        'select codice,taglia7,F7,colore2,QTA72,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta72<>0)'
      'union'
      
        'select codice,taglia8,F8,colore2,QTA82,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta82<>0)'
      'union'
      
        'select codice,taglia0,F0,colore3,QTA03,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta03<>0)'
      'union'
      
        'select codice,taglia1,F1,colore3,QTA13,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta13<>0)'
      'union'
      
        'select codice,taglia2,F2,colore3,QTA23,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta23<>0)'
      'union'
      
        'select codice,taglia3,F3,colore3,QTA33,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta33<>0)'
      'union'
      
        'select codice,taglia4,F4,colore3,QTA43,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta43<>0)'
      'union'
      
        'select codice,taglia5,F5,colore3,QTA53,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta53<>0)'
      'union'
      
        'select codice,taglia6,F6,colore3,QTA63,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta63<>0)'
      'union'
      
        'select codice,taglia7,F7,colore3,QTA73,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta73<>0)'
      'union'
      
        'select codice,taglia8,F8,colore3,QTA83,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta83<>0)'
      'union'
      
        'select codice,taglia0,F0,colore4,QTA04,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta04<>0)'
      'union'
      
        'select codice,taglia1,F1,colore4,QTA14,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta14<>0)'
      'union'
      
        'select codice,taglia2,F2,colore4,QTA24,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta24<>0)'
      'union'
      
        'select codice,taglia3,F3,colore4,QTA34,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta34<>0)'
      'union'
      
        'select codice,taglia4,F4,colore4,QTA44,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta44<>0)'
      'union'
      
        'select codice,taglia5,F5,colore4,QTA54,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta54<>0)'
      'union'
      
        'select codice,taglia6,F6,colore4,QTA64,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta64<>0)'
      'union'
      
        'select codice,taglia7,F7,colore4,QTA74,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta74<>0)'
      'union'
      
        'select codice,taglia8,F8,colore4,QTA84,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta84<>0)'
      'union'
      
        'select codice,taglia0,F0,colore5,QTA05,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta05<>0)'
      'union'
      
        'select codice,taglia1,F1,colore5,QTA15,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta15<>0)'
      'union'
      
        'select codice,taglia2,F2,colore5,QTA25,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta25<>0)'
      'union'
      
        'select codice,taglia3,F3,colore5,QTA35,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta35<>0)'
      'union'
      
        'select codice,taglia4,F4,colore5,QTA45,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta45<>0)'
      'union'
      
        'select codice,taglia5,F5,colore5,QTA55,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta55<>0)'
      'union'
      
        'select codice,taglia6,F6,colore5,QTA65,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta65<>0)'
      'union'
      
        'select codice,taglia7,F7,colore5,QTA75,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta75<>0)'
      'union'
      
        'select codice,taglia8,F8,colore5,QTA85,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta85<>0)'
      'union'
      
        'select codice,taglia0,F0,colore6,QTA06,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta06<>0)'
      'union'
      
        'select codice,taglia1,F1,colore6,QTA16,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta16<>0)'
      'union'
      
        'select codice,taglia2,F2,colore6,QTA26,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta26<>0)'
      'union'
      
        'select codice,taglia3,F3,colore6,QTA36,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta36<>0)'
      'union'
      
        'select codice,taglia4,F4,colore6,QTA46,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta46<>0)'
      'union'
      
        'select codice,taglia5,F5,colore6,QTA56,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta56<>0)'
      'union'
      
        'select codice,taglia6,F6,colore6,QTA66,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta66<>0)'
      'union'
      
        'select codice,taglia7,F7,colore6,QTA76,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta76<>0)'
      'union'
      
        'select codice,taglia8,F8,colore6,QTA86,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta86<>0)'
      'union'
      
        'select codice,taglia0,F0,colore7,QTA07,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta07<>0)'
      'union'
      
        'select codice,taglia1,F1,colore7,QTA17,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta17<>0)'
      'union'
      
        'select codice,taglia2,F2,colore7,QTA27,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta27<>0)'
      'union'
      
        'select codice,taglia3,F3,colore7,QTA37,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta37<>0)'
      'union'
      
        'select codice,taglia4,F4,colore7,QTA47,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta47<>0)'
      'union'
      
        'select codice,taglia5,F5,colore7,QTA57,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta57<>0)'
      'union'
      
        'select codice,taglia6,F6,colore7,QTA67,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta67<>0)'
      'union'
      
        'select codice,taglia7,F7,colore7,QTA77,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta77<>0)'
      'union'
      
        'select codice,taglia8,F8,colore7,QTA87,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta87<>0)'
      'union'
      
        'select codice,taglia0,F0,colore8,QTA08,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta08<>0)'
      'union'
      
        'select codice,taglia1,F1,colore8,QTA18,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta18<>0)'
      'union'
      
        'select codice,taglia2,F2,colore8,QTA28,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta28<>0)'
      'union'
      
        'select codice,taglia3,F3,colore8,QTA38,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta38<>0)'
      'union'
      
        'select codice,taglia4,F4,colore8,QTA48,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta48<>0)'
      'union'
      
        'select codice,taglia5,F5,colore8,QTA58,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta58<>0)'
      'union'
      
        'select codice,taglia6,F6,colore8,QTA68,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta68<>0)'
      'union'
      
        'select codice,taglia7,F7,colore8,QTA78,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta78<>0)'
      'union'
      
        'select codice,taglia8,F8,colore8,QTA88,scat from taglio where (p' +
        'assata='#39'N'#39')  and (qta88<>0)')
    Left = 216
    Top = 400
  end
  object ib3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select codice,taglia0,F0,colore0,QTA00,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta00<>0)'
      'union'
      
        'select codice,taglia1,F1,colore0,QTA10,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta10<>0)'
      'union'
      
        'select codice,taglia2,F2,colore0,QTA20,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta20<>0)'
      'union'
      
        'select codice,taglia3,F3,colore0,QTA30,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta30<>0)'
      'union'
      
        'select codice,taglia4,F4,colore0,QTA40,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta40<>0)'
      'union'
      
        'select codice,taglia5,F5,colore0,QTA50,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta50<>0)'
      'union'
      
        'select codice,taglia6,F6,colore0,QTA60,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta60<>0)'
      'union'
      
        'select codice,taglia7,F7,colore0,QTA70,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta70<>0)'
      'union'
      
        'select codice,taglia8,F8,colore0,QTA80,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta80<>0)'
      'union'
      
        'select codice,taglia0,F0,colore1,QTA01,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta01<>0)'
      'union'
      
        'select codice,taglia1,F1,colore1,QTA11,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta11<>0)'
      'union'
      
        'select codice,taglia2,F2,colore1,QTA21,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta21<>0)'
      'union'
      
        'select codice,taglia3,F3,colore1,QTA31,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta31<>0)'
      'union'
      
        'select codice,taglia4,F4,colore1,QTA41,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta41<>0)'
      'union'
      
        'select codice,taglia5,F5,colore1,QTA51,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta51<>0)'
      'union'
      
        'select codice,taglia6,F6,colore1,QTA61,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta61<>0)'
      'union'
      
        'select codice,taglia7,F7,colore1,QTA71,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta71<>0)'
      'union'
      
        'select codice,taglia8,F8,colore1,QTA81,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta81<>0)'
      'union'
      
        'select codice,taglia0,F0,colore2,QTA02,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta02<>0)'
      'union'
      
        'select codice,taglia1,F1,colore2,QTA12,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta12<>0)'
      'union'
      
        'select codice,taglia2,F2,colore2,QTA22,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta22<>0)'
      'union'
      
        'select codice,taglia3,F3,colore2,QTA32,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta32<>0)'
      'union'
      
        'select codice,taglia4,F4,colore2,QTA42,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta42<>0)'
      'union'
      
        'select codice,taglia5,F5,colore2,QTA52,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta52<>0)'
      'union'
      
        'select codice,taglia6,F6,colore2,QTA62,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta62<>0)'
      'union'
      
        'select codice,taglia7,F7,colore2,QTA72,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta72<>0)'
      'union'
      
        'select codice,taglia8,F8,colore2,QTA82,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta82<>0)'
      'union'
      
        'select codice,taglia0,F0,colore3,QTA03,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta03<>0)'
      'union'
      
        'select codice,taglia1,F1,colore3,QTA13,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta13<>0)'
      'union'
      
        'select codice,taglia2,F2,colore3,QTA23,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta23<>0)'
      'union'
      
        'select codice,taglia3,F3,colore3,QTA33,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta33<>0)'
      'union'
      
        'select codice,taglia4,F4,colore3,QTA43,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta43<>0)'
      'union'
      
        'select codice,taglia5,F5,colore3,QTA53,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta53<>0)'
      'union'
      
        'select codice,taglia6,F6,colore3,QTA63,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta63<>0)'
      'union'
      
        'select codice,taglia7,F7,colore3,QTA73,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta73<>0)'
      'union'
      
        'select codice,taglia8,F8,colore3,QTA83,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta83<>0)'
      'union'
      
        'select codice,taglia0,F0,colore4,QTA04,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta04<>0)'
      'union'
      
        'select codice,taglia1,F1,colore4,QTA14,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta14<>0)'
      'union'
      
        'select codice,taglia2,F2,colore4,QTA24,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta24<>0)'
      'union'
      
        'select codice,taglia3,F3,colore4,QTA34,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta34<>0)'
      'union'
      
        'select codice,taglia4,F4,colore4,QTA44,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta44<>0)'
      'union'
      
        'select codice,taglia5,F5,colore4,QTA54,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta54<>0)'
      'union'
      
        'select codice,taglia6,F6,colore4,QTA64,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta64<>0)'
      'union'
      
        'select codice,taglia7,F7,colore4,QTA74,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta74<>0)'
      'union'
      
        'select codice,taglia8,F8,colore4,QTA84,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta84<>0)'
      'union'
      
        'select codice,taglia0,F0,colore5,QTA05,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta05<>0)'
      'union'
      
        'select codice,taglia1,F1,colore5,QTA15,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta15<>0)'
      'union'
      
        'select codice,taglia2,F2,colore5,QTA25,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta25<>0)'
      'union'
      
        'select codice,taglia3,F3,colore5,QTA35,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta35<>0)'
      'union'
      
        'select codice,taglia4,F4,colore5,QTA45,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta45<>0)'
      'union'
      
        'select codice,taglia5,F5,colore5,QTA55,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta55<>0)'
      'union'
      
        'select codice,taglia6,F6,colore5,QTA65,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta65<>0)'
      'union'
      
        'select codice,taglia7,F7,colore5,QTA75,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta75<>0)'
      'union'
      
        'select codice,taglia8,F8,colore5,QTA85,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta85<>0)'
      'union'
      
        'select codice,taglia0,F0,colore6,QTA06,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta06<>0)'
      'union'
      
        'select codice,taglia1,F1,colore6,QTA16,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta16<>0)'
      'union'
      
        'select codice,taglia2,F2,colore6,QTA26,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta26<>0)'
      'union'
      
        'select codice,taglia3,F3,colore6,QTA36,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta36<>0)'
      'union'
      
        'select codice,taglia4,F4,colore6,QTA46,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta46<>0)'
      'union'
      
        'select codice,taglia5,F5,colore6,QTA56,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta56<>0)'
      'union'
      
        'select codice,taglia6,F6,colore6,QTA66,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta66<>0)'
      'union'
      
        'select codice,taglia7,F7,colore6,QTA76,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta76<>0)'
      'union'
      
        'select codice,taglia8,F8,colore6,QTA86,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta86<>0)'
      'union'
      
        'select codice,taglia0,F0,colore7,QTA07,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta07<>0)'
      'union'
      
        'select codice,taglia1,F1,colore7,QTA17,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta17<>0)'
      'union'
      
        'select codice,taglia2,F2,colore7,QTA27,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta27<>0)'
      'union'
      
        'select codice,taglia3,F3,colore7,QTA37,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta37<>0)'
      'union'
      
        'select codice,taglia4,F4,colore7,QTA47,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta47<>0)'
      'union'
      
        'select codice,taglia5,F5,colore7,QTA57,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta57<>0)'
      'union'
      
        'select codice,taglia6,F6,colore7,QTA67,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta67<>0)'
      'union'
      
        'select codice,taglia7,F7,colore7,QTA77,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta77<>0)'
      'union'
      
        'select codice,taglia8,F8,colore7,QTA87,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta87<>0)'
      'union'
      
        'select codice,taglia0,F0,colore8,QTA08,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta08<>0)'
      'union'
      
        'select codice,taglia1,F1,colore8,QTA18,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta18<>0)'
      'union'
      
        'select codice,taglia2,F2,colore8,QTA28,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta28<>0)'
      'union'
      
        'select codice,taglia3,F3,colore8,QTA38,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta38<>0)'
      'union'
      
        'select codice,taglia4,F4,colore8,QTA48,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta48<>0)'
      'union'
      
        'select codice,taglia5,F5,colore8,QTA58,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta58<>0)'
      'union'
      
        'select codice,taglia6,F6,colore8,QTA68,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta68<>0)'
      'union'
      
        'select codice,taglia7,F7,colore8,QTA78,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta78<>0)'
      'union'
      
        'select codice,taglia8,F8,colore8,QTA88,scat from tagliofas where' +
        ' (passata='#39'N'#39')  and (qta88<>0)')
    Left = 248
    Top = 400
  end
  object IBSQL1: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'delete from tgcol_temp')
    Transaction = dmodAz.ibtrDef
    Left = 320
    Top = 192
  end
  object IBSQL2: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'delete from tgcol_temp2')
    Transaction = dmodAz.ibtrDef
    Left = 352
    Top = 192
  end
  object IBSQL3: TIBSQL
    Database = dmodAz.ibdbAzUni
    SQL.Strings = (
      'delete from tgcol_temp3')
    Transaction = dmodAz.ibtrDef
    Left = 384
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 232
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
  object RxArriviTot: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_1'
        DataType = ftFloat
      end
      item
        Name = 'ORD'
        DataType = ftFloat
      end
      item
        Name = 'F_2'
        DataType = ftFloat
      end
      item
        Name = 'A'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'B'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 30
      end>
    Left = 24
    Top = 456
    object RxArriviTotCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object RxArriviTotDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object RxArriviTotORD: TFloatField
      FieldName = 'ORD'
    end
    object RxArriviTotA: TStringField
      FieldName = 'A'
      Size = 30
    end
    object RxArriviTotB: TStringField
      FieldName = 'B'
      Size = 30
    end
    object RxArriviTotC: TStringField
      FieldName = 'C'
      Size = 30
    end
    object RxArriviTotArriv: TFloatField
      FieldName = 'Arriv'
    end
    object RxArriviTotF_1: TFloatField
      FieldName = 'F_1'
    end
    object RxArriviTotPret: TFloatField
      FieldName = 'Pret'
    end
    object RxArriviTotTaglio: TFloatField
      FieldName = 'Taglio'
    end
    object RxArriviTotExt: TFloatField
      FieldName = 'Ext'
    end
  end
  object RxArriviF: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_1'
        DataType = ftFloat
      end
      item
        Name = 'F_2'
        DataType = ftFloat
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 30
      end>
    Left = 80
    Top = 456
    object RxArriviFCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object RxArriviFDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object RxArriviFF_1: TFloatField
      FieldName = 'F_1'
    end
    object RxArriviFF_2: TFloatField
      FieldName = 'F_2'
    end
    object RxArriviFC: TStringField
      FieldName = 'C'
      Size = 30
    end
    object RxArriviFORD: TFloatField
      FieldName = 'ORD'
    end
    object RxArriviFPret: TFloatField
      FieldName = 'Pret'
    end
    object RxArriviFTaglio: TFloatField
      FieldName = 'Taglio'
    end
    object RxArriviFExt: TFloatField
      FieldName = 'Ext'
    end
  end
  object IBQuery27: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = DataSource1
    SQL.Strings = (
      
        'select codice_articolo,descr,avg(costo) as F_1 ,sum(quantita) as' +
        ' F_2,c from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=22) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,c'
      'order by codice_articolo,c')
    Left = 304
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery27CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery27DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery27F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery27F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
    end
    object IBQuery27C: TIBStringField
      FieldName = 'C'
      ProviderFlags = []
      Size = 30
    end
  end
  object RxArriviC: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_1'
        DataType = ftFloat
      end
      item
        Name = 'F_2'
        DataType = ftFloat
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 30
      end>
    Left = 136
    Top = 456
    object RxArriviCCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object RxArriviCDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object RxArriviCF_1: TFloatField
      FieldName = 'F_1'
    end
    object RxArriviCF_2: TFloatField
      FieldName = 'F_2'
    end
    object RxArriviCB: TStringField
      DisplayWidth = 30
      FieldName = 'B'
      Size = 30
    end
    object RxArriviCORD: TFloatField
      FieldName = 'ORD'
    end
    object RxArriviCPret: TFloatField
      FieldName = 'Pret'
    end
    object RxArriviCTaglio: TFloatField
      FieldName = 'Taglio'
    end
    object RxArriviCExt: TFloatField
      FieldName = 'Ext'
    end
  end
  object IBQuery28: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = DataSource1
    SQL.Strings = (
      
        'select codice_articolo,descr,avg(costo) as F_1 ,sum(quantita) as' +
        ' F_2,B from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=22) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,B'
      'order by codice_articolo,B')
    Left = 344
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery28CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery28DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery28F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery28F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
    end
    object IBQuery28B: TIBStringField
      FieldName = 'B'
      ProviderFlags = []
      Size = 30
    end
  end
  object IBQuery29: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DataSource = DataSource1
    SQL.Strings = (
      
        'select codice_articolo,descr,avg(costo) as F_1 ,sum(quantita) as' +
        ' F_2,A from tab_det_doc'
      'join tab_documenti on'
      'tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=22) and (tab_det_doc.codice_artico' +
        'lo=:CODICE_ARTICOLO)'
      'group by tipo_doc,codice_articolo,descr,A'
      'order by codice_articolo,A')
    Left = 392
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODICE_ARTICOLO'
        ParamType = ptUnknown
      end>
    object IBQuery29CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery29DESCR: TIBStringField
      FieldName = 'DESCR'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery29F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery29F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
    end
    object IBQuery29A: TIBStringField
      FieldName = 'A'
      ProviderFlags = []
      Size = 30
    end
  end
  object RxArriviT: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_1'
        DataType = ftFloat
      end
      item
        Name = 'F_2'
        DataType = ftFloat
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 30
      end>
    Left = 192
    Top = 456
    object RxArriviTCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object RxArriviTDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object RxArriviTF_1: TFloatField
      FieldName = 'F_1'
    end
    object RxArriviTF_2: TFloatField
      FieldName = 'F_2'
    end
    object RxArriviTA: TStringField
      FieldName = 'A'
      Size = 30
    end
    object RxArriviTORD: TFloatField
      FieldName = 'ORD'
    end
    object RxArriviTPret: TFloatField
      FieldName = 'Pret'
    end
    object RxArriviTTaglio: TFloatField
      FieldName = 'Taglio'
    end
    object RxArriviTExt: TFloatField
      FieldName = 'Ext'
    end
  end
  object IBQuery30: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.totale) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      
        'distinte.codice_articolo = pretaglio.codice and distinte.codcli ' +
        '= 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (pretaglio.passata='#39'N'#39') and ( pretaglio' +
        '.PK_DIST not in (select codcli from distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 368
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery31: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*taglio.totale) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join taglio on'
      'distinte.codice_articolo = taglio.codice and distinte.codcli = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and ( taglio.PK_DIST not in (select codcli ' +
        'from distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 280
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField2: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery32: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*tagliofas.totale) as F_1 from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tagliofas on'
      
        'distinte.codice_articolo = tagliofas.codice and distinte.codcli ' +
        '=  0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and ( tagliofas.PK_DIST not in (select codc' +
        'li from distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 56
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField3: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField5: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery33: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*taglio.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join taglio on'
      
        'distinte.codice_articolo = taglio.codice and distinte.codcli = t' +
        'aglio.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 328
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField4: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField6: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery34: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*taglio.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join taglio on'
      'distinte.codice_articolo = taglio.codice and distinte.codcli = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39') and ( taglio.PK_DIST not in (select codcli f' +
        'rom distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 392
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField5: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField7: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery35: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      
        'distinte.codice_articolo = pretaglio.codice and distinte.codcli ' +
        '= pretaglio.PK_DIST '
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39') and (pretaglio.passata='#39'N'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 400
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField7: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField8: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery36: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*pretaglio.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join pretaglio on'
      
        'distinte.codice_articolo = pretaglio.codice and distinte.codcli ' +
        '= 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39') and (pretaglio.passata='#39'N'#39') and ( pretaglio.' +
        'PK_DIST not in (select codcli from distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 448
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField9: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField9: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery37: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*tagliofas.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tagliofas on'
      
        'distinte.codice_articolo = tagliofas.codice and distinte.codcli ' +
        '=  tagliofas.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39')'
      'group by distinte_dett.codice_articolo')
    Left = 208
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField10: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField10: TFloatField
      FieldName = 'F_1'
    end
  end
  object IBQuery38: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,sum(distinte_dett.' +
        'qta*tagliofas.scat) as F_1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tagliofas on'
      
        'distinte.codice_articolo = tagliofas.codice and distinte.codcli ' +
        '=  0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO='#39'S'#39') and ( tagliofas.PK_DIST not in (select codcl' +
        'i from distinte))'
      'group by distinte_dett.codice_articolo')
    Left = 176
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBStringField11: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object FloatField11: TFloatField
      FieldName = 'F_1'
    end
  end
  object RxArriviCP: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODICE_ARTICOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_1'
        DataType = ftFloat
      end
      item
        Name = 'F_2'
        DataType = ftFloat
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 30
      end>
    Left = 240
    Top = 456
    object RxArriviCPCODICE_ARTICOLO: TStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object RxArriviCPDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object RxArriviCPF_1: TFloatField
      FieldName = 'F_1'
    end
    object RxArriviCPF_2: TFloatField
      FieldName = 'F_2'
    end
    object RxArriviCPA: TStringField
      FieldName = 'A'
      Size = 30
    end
    object RxArriviCPORD: TFloatField
      FieldName = 'ORD'
    end
    object RxArriviCPPret: TFloatField
      FieldName = 'Pret'
    end
    object RxArriviCPTaglio: TFloatField
      FieldName = 'Taglio'
    end
    object RxArriviCPExt: TFloatField
      FieldName = 'Ext'
    end
  end
  object IBQuery39: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.colore,' +
        'tgcol_temp.coppa,sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 f' +
        'rom distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = tgcol_temp.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp.colore,tgcol_t' +
        'emp.coppa'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp.colore,' +
        'tgcol_temp.coppa,sum(distinte_dett.qta*tgcol_temp.qta)  as F_1 f' +
        'rom distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp on'
      
        'distinte.codice_articolo = tgcol_temp.codice and distinte.codcli' +
        ' = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp.PK_DIST not in (select codc' +
        'li from distinte))'
      
        'group by distinte_dett.codice_articolo,tgcol_temp.colore,tgcol_t' +
        'emp.coppa'
      '')
    Left = 496
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery39CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery39COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery39F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery39COPPA: TIBStringField
      FieldName = 'COPPA'
      ProviderFlags = []
    end
  end
  object IBQuery40: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp2.colore' +
        ',tgcol_temp2.coppa,sum(distinte_dett.qta*tgcol_temp2.qta) as F_1' +
        '  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp2 on'
      
        'distinte.codice_articolo = tgcol_temp2.codice and distinte.codcl' +
        'i = tgcol_temp2.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp2.colore,tgcol_' +
        'temp2.coppa')
    Left = 528
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery40CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery40COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery40F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery40COPPA: TIBStringField
      FieldName = 'COPPA'
      ProviderFlags = []
    end
  end
  object IBStoredProc4: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'PRE_TG_COL1'
    Left = 648
    Top = 184
  end
  object IBStoredProc5: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'TAGE_TG_COL1'
    Left = 560
    Top = 464
  end
  object IBStoredProc6: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    StoredProcName = 'TAG_TG_COL1'
    Left = 520
    Top = 472
  end
  object IBQuery41: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    SQL.Strings = (
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.colore' +
        ',tgcol_temp3.taglia,sum(distinte_dett.qta*tgcol_temp3.qta) as F_' +
        '1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = tgcol_temp3.PK_DIST'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39')'
      
        'group by distinte_dett.codice_articolo,tgcol_temp3.colore,tgcol_' +
        'temp3.taglia'
      'union'
      
        'select distinct distinte_dett.codice_articolo,tgcol_temp3.colore' +
        ',tgcol_temp3.taglia,sum(distinte_dett.qta*tgcol_temp3.qta) as F_' +
        '1  from distinte_dett'
      'join distinte on'
      'distinte_dett.fk_distinte=distinte.pk_codice'
      'join tgcol_temp3 on'
      
        'distinte.codice_articolo = tgcol_temp3.codice and distinte.codcl' +
        'i = 0'
      
        'where (distinte_dett.codice_articolo=:cod_acc) and (distinte_det' +
        't.FLAG_SCATOLO<>'#39'S'#39') and (tgcol_temp3.PK_DIST not in (select cod' +
        'cli from distinte))'
      
        'group by distinte_dett.codice_articolo,tgcol_temp3.colore,tgcol_' +
        'temp3.taglia'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 704
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_acc'
        ParamType = ptUnknown
      end>
    object IBQuery41CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      ProviderFlags = []
    end
    object IBQuery41COLORE: TIBStringField
      FieldName = 'COLORE'
      ProviderFlags = []
      Size = 100
    end
    object IBQuery41F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery41TAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      ProviderFlags = []
    end
  end
end
