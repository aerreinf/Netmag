object fCreaListWiz: TfCreaListWiz
  Left = 216
  Top = 165
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Creazione Listino'
  ClientHeight = 343
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 302
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object pCtrlOptions: TPageControl
      Left = 1
      Top = 1
      Width = 498
      Height = 300
      ActivePage = tabs2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Base'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 490
          Height = 269
          Align = alClient
          BevelOuter = bvLowered
          Color = clSilver
          TabOrder = 0
          object paList: TPanel
            Left = 62
            Top = 192
            Width = 373
            Height = 65
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 6
            Visible = False
            object rbAltroList: TRadioButton
              Left = 12
              Top = 8
              Width = 95
              Height = 17
              Caption = 'Altro Listino'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = rbAltroListClick
            end
            object rbListCli: TRadioButton
              Left = 126
              Top = 8
              Width = 103
              Height = 17
              Caption = 'Listino Cliente'
              Enabled = False
              TabOrder = 1
              Visible = False
              OnClick = rbListCliClick
            end
            object rbListFor: TRadioButton
              Left = 248
              Top = 8
              Width = 119
              Height = 17
              Caption = 'Listino Fornitore'
              Enabled = False
              TabOrder = 2
              Visible = False
              OnClick = rbListForClick
            end
            object LookListino: TDBLookupComboBox
              Left = 12
              Top = 32
              Width = 353
              Height = 24
              KeyField = 'CODICE'
              ListField = 'CODICE;DESCR'
              ListSource = dsoListino
              TabOrder = 3
            end
          end
          object paAcqVen: TPanel
            Left = 6
            Top = 166
            Width = 141
            Height = 79
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 8
            Visible = False
            object rbCostAcq: TRadioButton
              Left = 16
              Top = 14
              Width = 121
              Height = 17
              Caption = 'Costo d'#39'Acquisto'
              TabOrder = 0
              OnClick = rbCostAcqClick
            end
            object rbPrezVend: TRadioButton
              Left = 16
              Top = 40
              Width = 121
              Height = 17
              Caption = 'Prezzo di Vendita'
              Checked = True
              TabOrder = 1
              TabStop = True
              OnClick = rbPrezVendClick
            end
          end
          object paStandard: TPanel
            Left = 6
            Top = 166
            Width = 141
            Height = 79
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 7
            Visible = False
            object rbStdCosto: TRadioButton
              Left = 16
              Top = 20
              Width = 119
              Height = 17
              Caption = 'Costo Standard'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = rbStdCostoClick
            end
            object rbStdPrezzo: TRadioButton
              Left = 16
              Top = 44
              Width = 123
              Height = 17
              Caption = 'Prezzo Standard'
              TabOrder = 1
              OnClick = rbStdPrezzoClick
            end
          end
          object ragBase: TRadioGroup
            Left = 6
            Top = 4
            Width = 161
            Height = 105
            Caption = 'Base'
            Items.Strings = (
              'Da Prezzo in Articoli'
              'Da Ultimo Prezzo'
              'Da Media'
              'Da Listino')
            TabOrder = 0
            OnClick = ragBaseClick
          end
          object paBaseSel: TPanel
            Left = 230
            Top = 11
            Width = 205
            Height = 150
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 4
            Visible = False
            object bbFiltraSel: TBitBtn
              Left = 148
              Top = 104
              Width = 47
              Height = 33
              Caption = 'Filtra...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = bbFiltraSelClick
            end
            object LookListArticoli: TDBLookupListBox
              Left = 8
              Top = 8
              Width = 189
              Height = 68
              Hint = 'Doppio click seleziona articolo'
              KeyField = 'CODICE_ARTICOLO'
              ListField = 'CODICE_ARTICOLO'
              ListSource = dsoArticoli
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnDblClick = LookListArticoliDblClick
            end
            object edDa: TEdit
              Left = 8
              Top = 92
              Width = 129
              Height = 24
              CharCase = ecUpperCase
              ReadOnly = True
              TabOrder = 2
            end
            object edA: TEdit
              Left = 8
              Top = 120
              Width = 129
              Height = 24
              CharCase = ecUpperCase
              ReadOnly = True
              TabOrder = 3
            end
          end
          object rabCategoria: TRadioButton
            Left = 16
            Top = 128
            Width = 105
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Per categoria'
            TabOrder = 2
            OnClick = rabTuttiClick
          end
          object rabDaA: TRadioButton
            Left = 26
            Top = 146
            Width = 95
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Da art. a art.'
            TabOrder = 3
            OnClick = rabTuttiClick
          end
          object rabTutti: TRadioButton
            Left = 68
            Top = 110
            Width = 53
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Tutti'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = rabTuttiClick
          end
          object paGruppi: TPanel
            Left = 172
            Top = 11
            Width = 263
            Height = 150
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 5
            Visible = False
            object LookFam: TDBLookupComboBox
              Left = 88
              Top = 12
              Width = 169
              Height = 24
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoFam
              TabOrder = 0
            end
            object LookGruppo: TDBLookupComboBox
              Left = 88
              Top = 40
              Width = 169
              Height = 24
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoGruppo
              TabOrder = 1
            end
            object LookMarca: TDBLookupComboBox
              Left = 88
              Top = 68
              Width = 169
              Height = 24
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoMarca
              TabOrder = 2
            end
            object LookTipo: TDBLookupComboBox
              Left = 88
              Top = 96
              Width = 169
              Height = 24
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dsoTipo
              TabOrder = 3
            end
            object bbFiltraGruppo: TBitBtn
              Left = 116
              Top = 124
              Width = 75
              Height = 21
              Caption = 'Filtra...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = bbFiltraGruppoClick
            end
            object cbF: TCheckBox
              Left = 12
              Top = 16
              Width = 75
              Height = 17
              Caption = 'Famiglia'
              TabOrder = 5
            end
            object cbG: TCheckBox
              Left = 12
              Top = 42
              Width = 71
              Height = 17
              Caption = 'Gruppo'
              TabOrder = 6
            end
            object cbM: TCheckBox
              Left = 12
              Top = 70
              Width = 73
              Height = 17
              Caption = 'Marca'
              TabOrder = 7
            end
            object cbT: TCheckBox
              Left = 12
              Top = 98
              Width = 73
              Height = 17
              Caption = 'Tipo'
              TabOrder = 8
            end
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Criteri'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 490
          Height = 269
          Align = alClient
          BevelOuter = bvLowered
          Color = 14475748
          TabOrder = 0
          object Label1: TLabel
            Left = 28
            Top = 136
            Width = 65
            Height = 16
            Caption = 'Sconti in %'
          end
          object Label2: TLabel
            Left = 78
            Top = 158
            Width = 19
            Height = 16
            Caption = '  +  '
          end
          object Label3: TLabel
            Left = 250
            Top = 136
            Width = 82
            Height = 16
            Caption = 'ricarico 1 in %'
          end
          object laMoneta: TLabel
            Left = 28
            Top = 206
            Width = 45
            Height = 16
            Caption = 'Moneta'
          end
          object Label4: TLabel
            Left = 24
            Top = 234
            Width = 54
            Height = 16
            Caption = 'Arrotond.'
          end
          object lblRic2Lire: TLabel
            Left = 242
            Top = 162
            Width = 92
            Height = 16
            Caption = 'ricarico 2 in Lire'
          end
          object Label10: TLabel
            Left = 148
            Top = 158
            Width = 19
            Height = 16
            Caption = '  +  '
          end
          object cbMargine: TCheckBox
            Left = 24
            Top = 20
            Width = 223
            Height = 17
            Caption = 'Margine di ricarico in percentuale'
            Checked = True
            State = cbChecked
            TabOrder = 0
            Visible = False
            OnClick = cbMargineClick
          end
          object cbComprIVA: TCheckBox
            Left = 24
            Top = 40
            Width = 267
            Height = 17
            Caption = 'Il listino deve essere comprensiva di IVA'
            TabOrder = 1
            OnClick = cbComprIVAClick
          end
          object cbAppSconti: TCheckBox
            Left = 24
            Top = 60
            Width = 305
            Height = 17
            Caption = 'Applicare gli sconti nella generazione del listino'
            TabOrder = 2
            OnClick = cbAppScontiClick
          end
          object cbPrezziDinamici: TCheckBox
            Left = 24
            Top = 80
            Width = 187
            Height = 17
            Caption = 'Prezzi di listino dinamici'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnClick = cbPrezziDinamiciClick
          end
          object cbTuttiArticoli: TCheckBox
            Left = 24
            Top = 100
            Width = 271
            Height = 17
            Caption = 'Il listino interessa tutti gli articoli in archivio'
            Enabled = False
            TabOrder = 4
            Visible = False
          end
          object edScontoPerc: TEdit
            Left = 30
            Top = 154
            Width = 31
            Height = 24
            Hint = 'percentuale'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = '0'
            OnChange = edScontoPercChange
            OnExit = edScontoPercExit
          end
          object edSconto2: TEdit
            Left = 96
            Top = 154
            Width = 33
            Height = 24
            TabOrder = 6
            Text = '0'
            OnChange = edSconto2Change
            OnExit = edSconto2Exit
          end
          object edRicaricoPerc: TEdit
            Left = 338
            Top = 132
            Width = 37
            Height = 24
            TabOrder = 7
            Text = '0'
            OnChange = edRicaricoPercChange
            OnExit = edRicaricoPercExit
          end
          object udRicarico: TUpDown
            Left = 375
            Top = 132
            Width = 15
            Height = 24
            Associate = edRicaricoPerc
            Min = 0
            Position = 0
            TabOrder = 8
            Wrap = False
          end
          object udScontoPerc: TUpDown
            Left = 61
            Top = 154
            Width = 15
            Height = 24
            Associate = edScontoPerc
            Min = 0
            Position = 0
            TabOrder = 9
            Wrap = False
          end
          object LookMonetaDescr: TDBLookupComboBox
            Left = 86
            Top = 202
            Width = 289
            Height = 24
            KeyField = 'ID_MONETE'
            ListField = 'SIMBOLO;DESCR;ID_MONETE'
            ListSource = dsoMonete
            TabOrder = 10
          end
          object LookArrotond: TDBLookupComboBox
            Left = 86
            Top = 230
            Width = 129
            Height = 24
            KeyField = 'ID_ARROTONDAMENTO'
            ListField = 'ID_ARROTONDAMENTO'
            ListSource = dsoArrot
            TabOrder = 11
          end
          object edRicaricoLire: TEdit
            Left = 338
            Top = 158
            Width = 67
            Height = 24
            TabOrder = 12
            Text = '0'
            OnExit = edRicaricoLireExit
          end
          object UpDown1: TUpDown
            Left = 129
            Top = 154
            Width = 15
            Height = 24
            Associate = edSconto2
            Min = 0
            Position = 0
            TabOrder = 13
            Wrap = False
          end
          object UpDown2: TUpDown
            Left = 405
            Top = 158
            Width = 14
            Height = 24
            Associate = edRicaricoLire
            Min = 0
            Max = 0
            Position = 0
            TabOrder = 14
            Visible = False
            Wrap = False
          end
          object edSconto3: TEdit
            Left = 166
            Top = 154
            Width = 33
            Height = 24
            TabOrder = 15
            Text = '0'
            OnExit = edSconto3Exit
          end
          object UpDown3: TUpDown
            Left = 199
            Top = 154
            Width = 15
            Height = 24
            Associate = edSconto3
            Min = 0
            Position = 0
            TabOrder = 16
            Wrap = False
          end
        end
      end
      object tabs3: TTabSheet
        Caption = 'Generazione'
        ImageIndex = 2
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 490
          Height = 269
          Align = alClient
          BevelOuter = bvLowered
          Color = clSilver
          TabOrder = 0
          object Label5: TLabel
            Left = 82
            Top = 48
            Width = 43
            Height = 16
            Caption = 'Codice'
          end
          object Label6: TLabel
            Left = 54
            Top = 76
            Width = 71
            Height = 16
            Caption = 'Descrizione'
          end
          object Label7: TLabel
            Left = 26
            Top = 104
            Width = 108
            Height = 16
            Caption = 'Data inizio validità'
          end
          object Label8: TLabel
            Left = 236
            Top = 104
            Width = 99
            Height = 16
            Caption = 'Data fine validità'
          end
          object Label9: TLabel
            Left = 24
            Top = 20
            Width = 135
            Height = 16
            Caption = 'Dati generali del listino'
          end
          object edCodice_Listino: TEdit
            Left = 140
            Top = 44
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 10
            TabOrder = 0
            Text = '<CODICE>'
            OnChange = edCodice_ListinoChange
          end
          object edDescr: TEdit
            Left = 140
            Top = 72
            Width = 289
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 50
            TabOrder = 1
            Text = '<DESCRIZIONE>'
            OnChange = edDescrChange
          end
          object tpDataInizioVal: TDateTimePicker
            Left = 140
            Top = 100
            Width = 89
            Height = 24
            CalAlignment = dtaLeft
            Date = 36526.2288579861
            Time = 36526.2288579861
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 2
            OnCloseUp = tpDataInizioValChange
            OnChange = tpDataInizioValChange
            OnDblClick = tpDataInizioValDblClick
          end
          object tpDataFineVal: TDateTimePicker
            Left = 340
            Top = 100
            Width = 89
            Height = 24
            CalAlignment = dtaLeft
            Date = 36526.2289237037
            Time = 36526.2289237037
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 3
            OnCloseUp = tpDataFineValChange
            OnChange = tpDataFineValChange
            OnDblClick = tpDataFineValDblClick
          end
          object bbOK: TBitBtn
            Left = 284
            Top = 208
            Width = 133
            Height = 39
            Caption = 'Crea'
            TabOrder = 4
            OnClick = bbOKClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
              333333333337FF3333333333330003333333333333777F333333333333080333
              3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
              33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
              B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
              BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
              B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
              3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
              333333333337F33333333333333B333333333333333733333333}
            NumGlyphs = 2
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Gruppo filtrato'
        ImageIndex = 3
        object paGruFil: TPanel
          Left = 0
          Top = 0
          Width = 490
          Height = 269
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgGruFil: TDBGrid
            Left = 1
            Top = 1
            Width = 488
            Height = 267
            Align = alClient
            BorderStyle = bsNone
            Color = 16056317
            Ctl3D = False
            DataSource = dsoRicerca
            FixedColor = 15395278
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 302
    Width = 500
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clGray
    TabOrder = 1
    object bbCancel: TBitBtn
      Left = 330
      Top = 8
      Width = 131
      Height = 25
      Caption = 'Annulla'
      ModalResult = 2
      TabOrder = 0
      OnClick = bbCancelClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object dsoListino: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 4
    Top = 280
  end
  object dsoArrot: TDataSource
    DataSet = dmodPub.ibTab_Arrotondamenti
    Left = 37
    Top = 281
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 71
    Top = 281
  end
  object dsoFam: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 101
    Top = 281
  end
  object dsoGruppo: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 135
    Top = 281
  end
  object dsoMarca: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 165
    Top = 281
  end
  object dsoTipo: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 197
    Top = 281
  end
  object dsoRicerca: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 268
    Top = 284
  end
  object dsoArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 232
    Top = 281
  end
end
