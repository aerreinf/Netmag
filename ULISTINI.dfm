inherited fListini: TfListini
  Left = 51
  Top = 115
  Caption = 'Listini'
  ClientHeight = 366
  ClientWidth = 653
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 8
    Top = 84
    Width = 176
    Height = 16
    Caption = 'Articoli per questo listino:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited paView: TPanel
    Width = 653
    Height = 52
    Align = alTop
    object laCodice: TLabel
      Left = 10
      Top = 4
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 172
      Top = 4
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 10
      Top = 20
      Width = 149
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoListini
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 168
      Top = 20
      Width = 407
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoListini
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 653
    inherited tbtnSalva: TToolButton
      Enabled = True
    end
    inherited tbtnAnulla: TToolButton
      Enabled = True
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
    object tbtnRefresh: TToolButton
      Left = 245
      Top = 0
      Hint = 'Agiorna'
      Caption = 'Refresh'
      ImageIndex = 17
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnRefreshClick
    end
    object tbtnStampa: TToolButton
      Left = 270
      Top = 0
      Hint = 'Stampa Listini'
      Caption = 'Stampa Listini'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnStampaClick
    end
  end
  object dbgListinoDetaglio: TDBGrid
    Left = 0
    Top = 137
    Width = 653
    Height = 229
    Align = alClient
    DataSource = dsoArtPerListino
    FixedColor = 14606012
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Title.Caption = 'Codice Art.'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Art_descr'
        Title.Caption = 'Descrizione Articolo'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prezzo_'
        Title.Caption = 'Prezzo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prezzo_Ivato_'
        Title.Caption = 'Prezzo Ivato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DINAMICO'
        Width = 18
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO'
        Title.Caption = 'prezzo per modificare'
        Title.Color = clRed
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO_IVATO'
        Title.Caption = 'prezzo ivato per modificare'
        Title.Color = clRed
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RICARICA_PERC'
        Title.Caption = 'R,%'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RICARICA'
        Title.Caption = 'R'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO1'
        Title.Caption = 'sc1,%'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO2'
        Title.Caption = 'sc2,%'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTATO'
        Title.Caption = 'sc'
        Width = 73
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 79
    Width = 653
    Height = 58
    ButtonHeight = 53
    Caption = 'ToolBar1'
    Flat = True
    Images = dmodPub.iliPub
    Indent = 16
    TabOrder = 3
    object pnlFiltro_Art: TPanel
      Left = 16
      Top = 0
      Width = 485
      Height = 53
      BevelInner = bvLowered
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = pnlFiltro_ArtExit
      object chbxTipo: TCheckBox
        Left = 2
        Top = 4
        Width = 59
        Height = 17
        Caption = 'Tipo'
        TabOrder = 0
        OnClick = chbxTipoClick
      end
      object rxlcTipo: TRxDBLookupCombo
        Left = 2
        Top = 26
        Width = 117
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoTIPO
        TabOrder = 1
      end
      object rxlcMarca: TRxDBLookupCombo
        Left = 120
        Top = 26
        Width = 117
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoMARCA
        TabOrder = 2
      end
      object chbxMarca: TCheckBox
        Left = 120
        Top = 4
        Width = 59
        Height = 17
        Caption = 'Marca'
        TabOrder = 3
        OnClick = chbxMarcaClick
      end
      object chbxFamiglia: TCheckBox
        Left = 240
        Top = 4
        Width = 59
        Height = 17
        Caption = 'Famiglia'
        TabOrder = 4
        OnClick = chbxFamigliaClick
      end
      object rxlcFamiglia: TRxDBLookupCombo
        Left = 238
        Top = 26
        Width = 119
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoFAMIGLIA
        TabOrder = 5
      end
      object chbxGruppo: TCheckBox
        Left = 360
        Top = 4
        Width = 59
        Height = 17
        Caption = 'Gruppo'
        TabOrder = 6
        OnClick = chbxGruppoClick
      end
      object rxlcGruppo: TRxDBLookupCombo
        Left = 358
        Top = 26
        Width = 121
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dsoGRUPPO
        TabOrder = 7
      end
    end
    object tbtnAggiorna: TToolButton
      Left = 501
      Top = 0
      Hint = 'Filtra'
      Caption = 'Aggiorna'
      ImageIndex = 50
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnAggiornaClick
    end
  end
  object dsoListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 282
    Top = 34
  end
  object dsoArtPerListino: TDataSource
    DataSet = dmodAz.ibqShowArtPerListini
    Left = 350
    Top = 46
  end
  object dsoMARCA: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 172
    Top = 92
  end
  object dsoFAMIGLIA: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 284
    Top = 96
  end
  object dsoTIPO: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 40
    Top = 92
  end
  object dsoGRUPPO: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 392
    Top = 96
  end
end
