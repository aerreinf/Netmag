object fGestListCrop: TfGestListCrop
  Left = 197
  Top = 183
  Width = 756
  Height = 555
  Caption = 'Gestione Listini'
  Color = 16764831
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 118
    Top = 0
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object Label3: TLabel
    Left = 118
    Top = 39
    Width = 38
    Height = 13
    Caption = 'Famiglia'
  end
  object Label4: TLabel
    Left = 298
    Top = 39
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel
    Left = 298
    Top = 0
    Width = 35
    Height = 13
    Caption = 'Gruppo'
  end
  object Label7: TLabel
    Left = 677
    Top = 6
    Width = 19
    Height = 13
    Caption = 'List.'
  end
  object Label13: TLabel
    Left = 616
    Top = 4
    Width = 38
    Height = 13
    Caption = 'Label13'
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 97
    Height = 73
    Caption = 'Articoli'
    ItemIndex = 0
    Items.Strings = (
      'Tutti'
      'Scegli Categ.')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object cbMarca: TCheckBox
    Left = 100
    Top = 16
    Width = 15
    Height = 17
    Hint = 'Marca'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cbMarcaClick
  end
  object rxdblcMarca: TRxDBLookupCombo
    Left = 118
    Top = 14
    Width = 160
    Height = 21
    Hint = 'Marca'
    DropDownCount = 8
    Color = 14811135
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoMARCA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnChange = rxdblcMarcaChange
    OnExit = rxdblcMarcaExit
  end
  object cbFamiglia: TCheckBox
    Left = 100
    Top = 54
    Width = 15
    Height = 17
    Hint = 'Famiglia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cbFamigliaClick
  end
  object rxdblcFamiglia: TRxDBLookupCombo
    Left = 118
    Top = 52
    Width = 160
    Height = 21
    Hint = 'Famiglia'
    DropDownCount = 8
    Color = 16777177
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoFAMIGLIA
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnChange = rxdblcFamigliaChange
    OnExit = rxdblcFamigliaExit
  end
  object cbTipo: TCheckBox
    Left = 280
    Top = 54
    Width = 15
    Height = 17
    Hint = 'Tipo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = cbTipoClick
  end
  object rxdblcTipo: TRxDBLookupCombo
    Left = 298
    Top = 52
    Width = 160
    Height = 21
    Hint = 'Tipo'
    DropDownCount = 8
    Color = 16050943
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoTIPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnChange = rxdblcTipoChange
    OnExit = rxdblcTipoExit
  end
  object rxdblcGruppo: TRxDBLookupCombo
    Left = 298
    Top = 14
    Width = 160
    Height = 21
    Hint = 'Gruppo'
    DropDownCount = 8
    Color = 15138790
    Enabled = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsoGRUPPO
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnChange = rxdblcGruppoChange
    OnExit = rxdblcGruppoExit
  end
  object cbGruppo: TCheckBox
    Left = 280
    Top = 16
    Width = 15
    Height = 17
    Hint = 'Gruppo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = cbGruppoClick
  end
  object List: TRxSpinEdit
    Left = 700
    Top = 2
    Width = 46
    Height = 21
    MaxValue = 8.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 168
    Width = 745
    Height = 353
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'CODICE'
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
        Color = 13434879
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
        Width = 225
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_IVA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'IVA'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 27
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTO_STANDART'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Costo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PREZZO_BASE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vend.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PREZZO_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMP2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 1'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMP3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 2'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMP4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 3'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMP5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 4'
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
        FieldName = 'IMP6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List.5'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'P2IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 1 ivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'P3IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 2 ivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'P4IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 3 ivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'P5IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 4 ivato'
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
        FieldName = 'P6IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'List. 5 ivato'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC22'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC31'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC33'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC41'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC42'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC43'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC51'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC52'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SC53'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'R2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'R3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'R4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'R5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'DATAMOD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'STRUTT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CG2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CG3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CG4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CG5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CA6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'CG6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
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
        FieldName = 'AG6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
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
  object Button1: TButton
    Left = 696
    Top = 50
    Width = 50
    Height = 25
    Cursor = crHandPoint
    Caption = 'Stampa'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 696
    Top = 25
    Width = 50
    Height = 25
    Cursor = crHandPoint
    Caption = 'Filtra'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 672
    Top = 128
    Width = 75
    Height = 17
    Caption = 'Applica Mod.'
    Enabled = False
    TabOrder = 13
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 75
    Width = 217
    Height = 74
    TabOrder = 14
    object Label5: TLabel
      Left = 4
      Top = 2
      Width = 87
      Height = 13
      Caption = 'Variazione List.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 51
      Top = 22
      Width = 6
      Height = 13
      Caption = '+'
    end
    object Label8: TLabel
      Left = 39
      Top = 22
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label14: TLabel
      Left = 186
      Top = 36
      Width = 19
      Height = 13
      Caption = 'List.'
    end
    object Edit1: TEdit
      Left = 3
      Top = 18
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 63
      Top = 18
      Width = 65
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Button4: TButton
      Left = 3
      Top = 46
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Aumenta'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 79
      Top = 46
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Diminuisci'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Edit6: TEdit
      Left = 139
      Top = 18
      Width = 39
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object RxSpinEdit2: TRxSpinEdit
      Left = 163
      Top = 50
      Width = 46
      Height = 21
      MaxValue = 4.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = RxSpinEdit1Enter
    end
  end
  object Panel2: TPanel
    Left = 218
    Top = 75
    Width = 177
    Height = 74
    TabOrder = 15
    object Label9: TLabel
      Left = 10
      Top = 4
      Width = 19
      Height = 13
      Caption = 'Sc1'
    end
    object Label10: TLabel
      Left = 50
      Top = 4
      Width = 19
      Height = 13
      Caption = 'Sc2'
    end
    object Label11: TLabel
      Left = 90
      Top = 4
      Width = 19
      Height = 13
      Caption = 'Sc3'
    end
    object Label12: TLabel
      Left = 138
      Top = 4
      Width = 19
      Height = 13
      Caption = 'List.'
    end
    object Edit3: TEdit
      Left = 3
      Top = 18
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
      OnClick = Edit3Click
      OnEnter = Edit3Enter
    end
    object Edit4: TEdit
      Left = 43
      Top = 18
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
      OnClick = Edit4Click
      OnEnter = Edit4Enter
    end
    object Edit5: TEdit
      Left = 83
      Top = 18
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '0'
      OnClick = Edit5Click
      OnEnter = Edit5Enter
    end
    object Button6: TButton
      Left = 46
      Top = 46
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imposta Sc.'
      TabOrder = 3
      OnClick = Button6Click
    end
    object RxSpinEdit1: TRxSpinEdit
      Left = 123
      Top = 18
      Width = 46
      Height = 21
      MaxValue = 4.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = RxSpinEdit1Enter
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 150
    Width = 745
    Height = 16
    TabOrder = 16
  end
  object Panel3: TPanel
    Left = 397
    Top = 75
    Width = 217
    Height = 74
    PopupMenu = PopupMenu1
    TabOrder = 17
    object Label15: TLabel
      Left = 4
      Top = 2
      Width = 176
      Height = 13
      Caption = 'Variazione List. da Prezzo Acq.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 51
      Top = 22
      Width = 6
      Height = 13
      Caption = '+'
    end
    object Label17: TLabel
      Left = 39
      Top = 22
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label18: TLabel
      Left = 186
      Top = 36
      Width = 19
      Height = 13
      Caption = 'List.'
    end
    object Edit7: TEdit
      Left = 3
      Top = 18
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit8: TEdit
      Left = 63
      Top = 18
      Width = 65
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Button7: TButton
      Left = 3
      Top = 46
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Aumenta'
      TabOrder = 2
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 79
      Top = 46
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Diminuisci'
      TabOrder = 3
      OnClick = Button8Click
    end
    object Edit9: TEdit
      Left = 139
      Top = 18
      Width = 39
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object RxSpinEdit3: TRxSpinEdit
      Left = 163
      Top = 50
      Width = 46
      Height = 21
      MaxValue = 4.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = RxSpinEdit1Enter
    end
  end
  object RadioGroup2: TRadioGroup
    Left = 464
    Top = 4
    Width = 209
    Height = 71
    Hint = 'Ordinamento per le Stampe di Situazione Magazzino'
    Caption = 'Ordinare per'
    Color = 16113359
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Codice'
      'Marca'
      'Famiglia'
      'Gruppo'
      'Tipo'
      'Descr2'
      'M-F-D2'
      'M-F-D')
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 210
    Top = 10
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 226
    Top = 40
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 346
    Top = 52
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 416
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 704
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 88
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
  object IBQuery1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_articoli'
      
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
      'from tab_articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'Select * from tab_articoli'
      'left join tab_contabile_articolo on'
      
        'tab_articoli.codice_articolo = tab_contabile_articolo.CODICE_ART' +
        'ICOLO'
      'left join tab_marca on'
      'tab_articoli.cat_art_marca_id = tab_marca.codice'
      'left join tab_famiglia on'
      'tab_articoli.cat_art_famiglia_id = tab_famiglia.codice'
      'left join tab_gruppo on'
      'tab_articoli.cat_art_gruppo_id = tab_gruppo.codice'
      'left join tab_tipo on'
      'tab_articoli.cat_art_tipo_id = tab_tipo.codice'
      'Where FLAG_ACCESSORIE = '#39'N'#39
      'order by codice_articolo')
    ModifySQL.Strings = (
      'update tab_articoli'
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
    Left = 672
    Top = 88
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
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
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
      currency = True
    end
    object IBQuery1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
      currency = True
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
      currency = True
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
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery1UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery1CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery1CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery1FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery1CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
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
      currency = True
    end
    object IBQuery1P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
      currency = True
    end
    object IBQuery1P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
      currency = True
    end
    object IBQuery1P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
      currency = True
    end
    object IBQuery1P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
      currency = True
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
      currency = True
    end
    object IBQuery1IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
      currency = True
    end
    object IBQuery1IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
      currency = True
    end
    object IBQuery1IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
      currency = True
    end
    object IBQuery1RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery1P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
      currency = True
    end
    object IBQuery1IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
      currency = True
    end
    object IBQuery1STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
      currency = True
    end
    object IBQuery1CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
      currency = True
    end
    object IBQuery1CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
      currency = True
    end
    object IBQuery1AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
      currency = True
    end
    object IBQuery1CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
      currency = True
    end
    object IBQuery1CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
      currency = True
    end
    object IBQuery1AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
      currency = True
    end
    object IBQuery1CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
      currency = True
    end
    object IBQuery1CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
      currency = True
    end
    object IBQuery1AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
      currency = True
    end
    object IBQuery1CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
      currency = True
    end
    object IBQuery1CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
      currency = True
    end
    object IBQuery1AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
      currency = True
    end
    object IBQuery1CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
      currency = True
    end
    object IBQuery1CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
      currency = True
    end
    object IBQuery1AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
      currency = True
    end
    object IBQuery1CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
      currency = True
    end
    object IBQuery1CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
      currency = True
    end
    object IBQuery1AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
      currency = True
    end
    object IBQuery1ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery1CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
      currency = True
    end
    object IBQuery1CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
      currency = True
    end
    object IBQuery1CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
      currency = True
    end
    object IBQuery1CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
      currency = True
    end
    object IBQuery1CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
      currency = True
    end
    object IBQuery1CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
      currency = True
    end
    object IBQuery1DESCR1: TIBStringField
      FieldName = 'DESCR1'
      Origin = '"TAB_MARCA"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"TAB_MARCA"."CODICE"'
    end
    object IBQuery1DESCR3: TIBStringField
      FieldName = 'DESCR3'
      Origin = '"TAB_FAMIGLIA"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE1: TIntegerField
      FieldName = 'CODICE1'
      Origin = '"TAB_FAMIGLIA"."CODICE"'
    end
    object IBQuery1DESCR4: TIBStringField
      FieldName = 'DESCR4'
      Origin = '"TAB_GRUPPO"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE2: TIntegerField
      FieldName = 'CODICE2'
      Origin = '"TAB_GRUPPO"."CODICE"'
    end
    object IBQuery1RIC: TFloatField
      FieldName = 'RIC'
      Origin = '"TAB_GRUPPO"."RIC"'
    end
    object IBQuery1SC: TIBStringField
      FieldName = 'SC'
      Origin = '"TAB_GRUPPO"."SC"'
      Size = 4
    end
    object IBQuery1DESCR5: TIBStringField
      FieldName = 'DESCR5'
      Origin = '"TAB_TIPO"."DESCR"'
      Size = 50
    end
    object IBQuery1CODICE3: TIntegerField
      FieldName = 'CODICE3'
      Origin = '"TAB_TIPO"."CODICE"'
    end
    object IBQuery1CODICE_ARTICOLO1: TIBStringField
      FieldName = 'CODICE_ARTICOLO1'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CODICE_ARTICOLO"'
    end
    object IBQuery1DEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DEPOSITO_ID"'
      Size = 3
    end
    object IBQuery1CLI_FOR_ID1: TIntegerField
      FieldName = 'CLI_FOR_ID1'
      Origin = '"TAB_CONTABILE_ARTICOLO"."CLI_FOR_ID"'
    end
    object IBQuery1TIPO_CLI_FOR_ID1: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID1'
      Origin = '"TAB_CONTABILE_ARTICOLO"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery1QTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ACQUISTI"'
    end
    object IBQuery1VAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ACQUISTI"'
    end
    object IBQuery1QTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_VENDITA"'
    end
    object IBQuery1VAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_VENDITA"'
    end
    object IBQuery1QTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_ENTRATE"'
    end
    object IBQuery1VAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_ENTRATE"'
    end
    object IBQuery1QTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ALTRE_USCITE"'
    end
    object IBQuery1VAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ALTRE_USCITA"'
    end
    object IBQuery1QTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_CLIENTE"'
    end
    object IBQuery1VAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_CLIENTE"'
    end
    object IBQuery1QTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_RESO_FORNITORE"'
    end
    object IBQuery1VAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_RESO_FORNITORE"'
    end
    object IBQuery1QTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_ORDINATO"'
    end
    object IBQuery1VAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_ORDINATO"'
    end
    object IBQuery1QTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_IMPEGNATO"'
    end
    object IBQuery1VAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_QTA_IMPEGNATO"'
    end
    object IBQuery1QTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_CLIENTE"'
    end
    object IBQuery1VAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_CLIENTE"'
    end
    object IBQuery1QTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_EVASA_FORNITORE"'
    end
    object IBQuery1VAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_EVASO_FORNITORE"'
    end
    object IBQuery1QTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."QTA_GIACENZA_INIZIALE"'
    end
    object IBQuery1COSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_GIACENZA_INIZIALE"'
    end
    object IBQuery1VAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."VAL_GIACENZA_INIZIALE"'
    end
    object IBQuery1GIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
      Origin = '"TAB_CONTABILE_ARTICOLO"."GIACENZA_ATTUALE"'
    end
    object IBQuery1DISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DISPONIBILITA"'
    end
    object IBQuery1COSTO_ULTIMO1: TFloatField
      FieldName = 'COSTO_ULTIMO1'
      Origin = '"TAB_CONTABILE_ARTICOLO"."COSTO_ULTIMO"'
    end
    object IBQuery1MED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MED_PREZZO_VEND"'
    end
    object IBQuery1ULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_COSTO_ACQ"'
    end
    object IBQuery1MEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
      Origin = '"TAB_CONTABILE_ARTICOLO"."MEDIO_COSTO_ACQ"'
    end
    object IBQuery1ULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
      Origin = '"TAB_CONTABILE_ARTICOLO"."ULT_PREZZO_VEND"'
    end
    object IBQuery1DATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMO_ACQUISTO"'
    end
    object IBQuery1DATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
      Origin = '"TAB_CONTABILE_ARTICOLO"."DATA_ULTIMA_VENDITA"'
    end
    object IBQuery1PRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
      Origin = '"TAB_CONTABILE_ARTICOLO"."PRETAGLIO"'
    end
    object IBQuery1DESCR6: TIBStringField
      FieldName = 'DESCR6'
      Origin = '"TAB_TIPO"."DESCR"'
      Size = 50
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 632
    Top = 120
  end
end
