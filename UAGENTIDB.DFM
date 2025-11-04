object fAgentiDB: TfAgentiDB
  Left = 215
  Top = 306
  BorderStyle = bsDialog
  Caption = 'Agenti'
  ClientHeight = 351
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object tbarControl: TToolBar
      Left = 2
      Top = 2
      Width = 723
      Height = 27
      AutoSize = True
      ButtonHeight = 25
      ButtonWidth = 25
      Caption = 'tbarControl'
      Flat = True
      Images = dmodPub.iliPub
      Indent = 5
      TabOrder = 0
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
        Left = 30
        Top = 0
        Width = 8
        Caption = 'sep1'
        Style = tbsSeparator
      end
      object tbtnNuovo: TToolButton
        Left = 38
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
        Left = 63
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
        Left = 88
        Top = 0
        Width = 8
        Caption = 'sep2'
        Style = tbsSeparator
      end
      object tbtnSalva: TToolButton
        Left = 96
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
        Left = 121
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
        Left = 146
        Top = 0
        Width = 8
        Caption = 'sep3'
        Style = tbsSeparator
      end
      object tbtnElimina: TToolButton
        Left = 154
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
        Left = 179
        Top = 0
        Width = 8
        Caption = 'sep4'
        Style = tbsSeparator
      end
      object tbtnPrev: TToolButton
        Left = 187
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
        Left = 212
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
        Left = 237
        Top = 0
        Width = 8
        Caption = 'sep5'
        Style = tbsSeparator
      end
    end
  end
  object paView: TPanel
    Left = 0
    Top = 33
    Width = 727
    Height = 216
    Align = alTop
    BevelOuter = bvLowered
    Color = 16744448
    Enabled = False
    TabOrder = 1
    object laCodice: TLabel
      Left = 43
      Top = 9
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
    object laDescr: TLabel
      Left = 16
      Top = 28
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
    object laProvv: TLabel
      Left = 47
      Top = 132
      Width = 34
      Height = 14
      Caption = 'Provv.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laImpFisso: TLabel
      Left = 556
      Top = 132
      Width = 75
      Height = 14
      Caption = 'Importo fisso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laZona: TLabel
      Left = 8
      Top = 157
      Width = 27
      Height = 14
      Caption = 'Zona'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laSottoZona: TLabel
      Left = 384
      Top = 159
      Width = 55
      Height = 14
      Caption = 'Sottozona'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laTipoSommPRV: TLabel
      Left = 40
      Top = 178
      Width = 106
      Height = 14
      Caption = 'Tipo somma provv.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laTipoProvv: TLabel
      Left = 240
      Top = 177
      Width = 92
      Height = 14
      Caption = 'Tipo provvigione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laTotFatt: TLabel
      Left = 472
      Top = 176
      Width = 42
      Height = 14
      Caption = 'Tot.fatt.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laTotRpovv: TLabel
      Left = 589
      Top = 176
      Width = 58
      Height = 14
      Caption = 'Tot. provv.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 428
      Top = 28
      Width = 57
      Height = 14
      Caption = 'Capo Area'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 413
      Top = 90
      Width = 72
      Height = 14
      Caption = 'Capo Gruppo'
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 411
      Top = 58
      Width = 74
      Height = 14
      Caption = 'Capo Reparto'
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 87
      Top = 5
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Agenti
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 87
      Top = 27
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Agenti
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeImpFisso: TDBEdit
      Left = 632
      Top = 128
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IMPORTO_FISSO'
      DataSource = dmodAz.dsoTab_Agenti
      TabOrder = 2
      Visible = False
      OnKeyPress = dbeImpFissoKeyPress
    end
    object dbeTotaleFatturato: TDBEdit
      Left = 472
      Top = 191
      Width = 108
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TOTALE_FATTURATO'
      DataSource = dmodAz.dsoTab_Agenti
      TabOrder = 9
      Visible = False
      OnKeyPress = dbeTotaleFatturatoKeyPress
    end
    object dbeTotaleProvvigione: TDBEdit
      Left = 589
      Top = 191
      Width = 101
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TOTALE_PROVVIGIONE'
      DataSource = dmodAz.dsoTab_Agenti
      TabOrder = 10
      Visible = False
      OnKeyPress = dbeTotaleProvvigioneKeyPress
    end
    object LookZona: TDBLookupComboBox
      Left = 40
      Top = 153
      Width = 89
      Height = 21
      DataField = 'CODICE_ZONA_ID'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'ID_CODICE_ZONA'
      ListField = 'ID_CODICE_ZONA'
      ListSource = dmodAz.dsoTab_Zone
      TabOrder = 3
      Visible = False
      OnKeyPress = LookZonaKeyPress
    end
    object LookZonaDescr: TDBLookupComboBox
      Left = 135
      Top = 153
      Width = 179
      Height = 21
      DataField = 'CODICE_ZONA_ID'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'ID_CODICE_ZONA'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Zone
      TabOrder = 4
      Visible = False
      OnKeyPress = LookZonaDescrKeyPress
    end
    object LookSottoZona: TDBLookupComboBox
      Left = 440
      Top = 154
      Width = 89
      Height = 21
      DataField = 'CODICE_SOTTO_ZONA_ID'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'ID_CODICE_SOTTO_ZONE'
      ListField = 'ID_CODICE_SOTTO_ZONE'
      ListSource = dmodAz.dsoTab_Sotto_Zone
      TabOrder = 5
      Visible = False
      OnCloseUp = LookSottoZonaCloseUp
      OnKeyPress = LookSottoZonaKeyPress
    end
    object LookSottoZonaDescr: TDBLookupComboBox
      Left = 535
      Top = 154
      Width = 179
      Height = 21
      DataField = 'CODICE_SOTTO_ZONA_ID'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'ID_CODICE_SOTTO_ZONE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Sotto_Zone
      TabOrder = 6
      Visible = False
      OnCloseUp = LookSottoZonaCloseUp
      OnKeyPress = LookSottoZonaDescrKeyPress
    end
    object LookSommaProvv: TDBLookupComboBox
      Left = 40
      Top = 191
      Width = 193
      Height = 21
      DataField = 'TIPO_SOMMA_PRV'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Tipo_Somma_Provv
      TabOrder = 7
      Visible = False
      OnKeyPress = LookSommaProvvKeyPress
    end
    object LookTipoProvvigione: TDBLookupComboBox
      Left = 240
      Top = 191
      Width = 185
      Height = 21
      DataField = 'TIPO_PROVVIGIONE'
      DataSource = dmodAz.dsoTab_Agenti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Tipo_Somma_Provv
      TabOrder = 8
      Visible = False
      OnKeyPress = LookTipoProvvigioneKeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 87
      Top = 48
      Width = 289
      Height = 67
      Caption = 'Tipo Agente'
      Columns = 2
      DataField = 'TIPO_AG'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Agente'
        'Capo Gruppo'
        'R.C.G.'
        'Capo Area')
      ParentFont = False
      TabOrder = 11
      Values.Strings = (
        '0'
        '1'
        '3'
        '2')
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 550
      Top = 24
      Width = 175
      Height = 22
      DropDownCount = 8
      DataField = 'CA'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 12
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 488
      Top = 24
      Width = 61
      Height = 22
      DropDownCount = 8
      DataField = 'CA'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 13
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 550
      Top = 86
      Width = 175
      Height = 22
      DropDownCount = 8
      DataField = 'CG'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 14
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 488
      Top = 86
      Width = 61
      Height = 22
      DropDownCount = 8
      DataField = 'CG'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 15
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 550
      Top = 54
      Width = 175
      Height = 22
      DropDownCount = 8
      DataField = 'CR'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 16
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 488
      Top = 54
      Width = 61
      Height = 22
      DropDownCount = 8
      DataField = 'CR'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 17
    end
    object RxDBLookupCombo13: TRxDBLookupCombo
      Left = 87
      Top = 130
      Width = 89
      Height = 19
      DropDownCount = 8
      DataField = 'PROVVIGIONE'
      DataSource = dmodAz.dsoTab_Agenti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = dsoProvvigione
      ParentFont = False
      TabOrder = 18
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 249
    Width = 727
    Height = 102
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Uso Futuro'
    Color = 16744576
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
    object pctrlCategorie: TPageControl
      Left = 2
      Top = 2
      Width = 723
      Height = 98
      ActivePage = tabs1
      Align = alClient
      TabOrder = 0
      Visible = False
      object tabs1: TTabSheet
        Caption = 'Cat. Merceologica'
        object paCatMerc: TPanel
          Left = 0
          Top = 0
          Width = 715
          Height = 69
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgCatMerc: TDBGrid
            Left = 1
            Top = 1
            Width = 713
            Height = 67
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsoCatMercAg
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -10
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = dbgCatMercKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'Cat. Merc.'
                Width = 244
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVVIGIONE'
                Width = 114
                Visible = True
              end>
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Cat. Clienti'
        ImageIndex = 1
        object paCatCli: TPanel
          Left = 0
          Top = 0
          Width = 398
          Height = 133
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgCatCli: TDBGrid
            Left = 1
            Top = 1
            Width = 396
            Height = 131
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsoCatCliAg
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsItalic]
            OnKeyPress = dbgCatCliKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'Cat. Cliente'
                Width = 253
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVVIGIONE'
                Width = 108
                Visible = True
              end>
          end
        end
      end
    end
  end
  object dsoCatCliAg: TDataSource
    DataSet = dmodAz.ibTab_Cat_Cli_x_Ag
    Left = 192
    Top = 49
  end
  object dsoCatMercAg: TDataSource
    DataSet = dmodAz.ibTab_Cat_Merc_x_Ag
    Left = 236
    Top = 49
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 1')
    Left = 608
    Top = 137
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
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 100
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2')
    Left = 528
    Top = 17
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
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 656
    Top = 137
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 584
    Top = 65
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where codice=:parcodice and TIPO_AG=:partipoag')
    Left = 320
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parcodice'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'partipoag'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 3')
    Left = 624
    Top = 89
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
  object DataSource3: TDataSource
    DataSet = IBQuery4
    Left = 672
    Top = 89
  end
  object dsoProvvigione: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 584
    Top = 18
  end
end
