object fTipiOferteDB: TfTipiOferteDB
  Left = 251
  Top = 149
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tipi Offerte'
  ClientHeight = 509
  ClientWidth = 604
  Color = 16744448
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 43
    Width = 62
    Height = 14
    Caption = 'Num. Offerta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 3
    Top = 68
    Width = 20
    Height = 14
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 3
    Top = 92
    Width = 49
    Height = 14
    Caption = 'Data Inizio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 7
    Top = 116
    Width = 45
    Height = 14
    Caption = 'Data Fine'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 196
    Top = 43
    Width = 73
    Height = 14
    Caption = 'Prezzo Unitario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 185
    Top = 67
    Width = 84
    Height = 14
    Caption = 'Pezzi Confezione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 194
    Top = 91
    Width = 75
    Height = 14
    Caption = 'Prezzo Confez.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 178
    Top = 115
    Width = 91
    Height = 14
    Caption = 'Sconto Automatico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 371
    Top = 115
    Width = 40
    Height = 14
    Caption = 'Descriz.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 371
    Top = 93
    Width = 34
    Height = 14
    Caption = 'Azione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 136
    Width = 597
    Height = 185
    Hint = 'Doppio Click per Visualizzare gli articoli in offerta.'
    Ctl3D = False
    DataSource = dsOfferte
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_OFFERTA'
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
        Width = 34
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO'
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
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
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
        Width = 136
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATAINIZIO'
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
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATAFINE'
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
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZOUNITARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pr. Unit.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPEZZI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pezzi'
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
        FieldName = 'PREZZOCONF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pr.Conf.'
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
        FieldName = 'SCONTOPERC'
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
      end>
  end
  object DBEdit1: TDBEdit
    Left = 67
    Top = 39
    Width = 49
    Height = 22
    TabStop = False
    DataField = 'ID_OFFERTA'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 418
    Top = 111
    Width = 183
    Height = 22
    DataField = 'DESCR'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 8
  end
  object DBDateEdit1: TDBDateEdit
    Left = 67
    Top = 88
    Width = 102
    Height = 21
    DataField = 'DATAINIZIO'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object DBDateEdit2: TDBDateEdit
    Left = 67
    Top = 112
    Width = 102
    Height = 21
    DataField = 'DATAFINE'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object RxDBCalcEdit1: TRxDBCalcEdit
    Left = 272
    Top = 39
    Width = 91
    Height = 21
    DataField = 'PREZZOUNITARIO'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
  end
  object RxDBCalcEdit2: TRxDBCalcEdit
    Left = 272
    Top = 63
    Width = 91
    Height = 21
    DataField = 'NUMPEZZI'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object RxDBCalcEdit3: TRxDBCalcEdit
    Left = 272
    Top = 87
    Width = 91
    Height = 21
    DataField = 'PREZZOCONF'
    DataSource = dsOfferte
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object RxDBCalcEdit4: TRxDBCalcEdit
    Left = 272
    Top = 111
    Width = 91
    Height = 21
    DataField = 'SCONTOPERC'
    DataSource = dsOfferte
    DecimalPlaces = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 7
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 418
    Top = 88
    Width = 137
    Height = 22
    Style = csDropDownList
    DataField = 'AZIONE'
    DataSource = dsOfferte
    EnableValues = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    Items.Strings = (
      'Inserisci e Modifica'
      'Iserisci'
      'Modifica'
      'Cancella')
    ParentFont = False
    TabOrder = 9
    Values.Strings = (
      'IM'
      'I'
      'M'
      'C')
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 30
    Top = 64
    Width = 139
    Height = 22
    Hint = 
      '0 : Nessuna Offerta  -  1 : Offerta M x N  -  3 : Offerta tipo S' +
      'conto Automatico  -  4 : Offerta tipo Bollini'
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = dsOfferte
    EnableValues = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    Items.Strings = (
      '0 : Nessuna Offerta'
      '1 : Offerta M x N'
      '3 : Offerta tipo Sconto Automatico'
      '4 : Offerta tipo Bollini')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Values.Strings = (
      '0'
      '1'
      '3'
      '4')
  end
  object dbgResult: TDBGrid
    Left = 1
    Top = 326
    Width = 600
    Height = 181
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsoRicArt
    FixedColor = 8421631
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
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
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 108
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 223
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PREZZO_BASE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PREZZO_IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'IVATO'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTO_STANDART'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Costo'
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DESCR2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DESCR_CODE_BAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object tbarControl: TToolBar
    Left = 0
    Top = 0
    Width = 604
    Height = 25
    AutoSize = True
    ButtonHeight = 23
    ButtonWidth = 28
    Caption = 'tbarControl'
    Color = clSilver
    Flat = True
    Images = dmodPub.iliPub
    Indent = 5
    ParentColor = False
    TabOrder = 12
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
    object ToolButton1: TToolButton
      Left = 269
      Top = 0
      Cursor = crHandPoint
      Hint = 'Associa Offerta all'#39'articolo'
      Caption = 'Associa'
      ImageIndex = 21
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
  end
  object dsOfferte: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibtOfferte
    Left = 136
    Top = 32
  end
  object dsoRicArt: TDataSource
    DataSet = dmodAz.ibqRicerca_Art
    Left = 180
    Top = 421
  end
end
