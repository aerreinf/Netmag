object fPersAzDB: TfPersAzDB
  Left = 216
  Top = 126
  BorderStyle = bsDialog
  Caption = 'Personalizzazione azienda'
  ClientHeight = 507
  ClientWidth = 615
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object dbnPersAz: TDBNavigator
      Left = 8
      Top = 8
      Width = 222
      Height = 25
      DataSource = dmodAz.dsoTabPersAz
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnPersAzClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 615
    Height = 466
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object pctrlPersonalizzazione: TPageControl
      Left = 2
      Top = 2
      Width = 611
      Height = 462
      ActivePage = tabs5
      Align = alClient
      TabIndex = 4
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '- 1 -'
        object pa1: TPanel
          Left = 0
          Top = 0
          Width = 603
          Height = 434
          Align = alClient
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 138
            Top = 16
            Width = 35
            Height = 13
            Caption = 'Cassa'
          end
          object Label2: TLabel
            Left = 129
            Top = 40
            Width = 44
            Height = 13
            Caption = 'Acquisti'
          end
          object Label3: TLabel
            Left = 130
            Top = 64
            Width = 43
            Height = 13
            Caption = 'Vendite'
          end
          object Label4: TLabel
            Left = 103
            Top = 88
            Width = 70
            Height = 13
            Caption = 'Corrispettivi'
          end
          object Label5: TLabel
            Left = 30
            Top = 112
            Width = 143
            Height = 13
            Caption = 'Corrispettivi da Ventilare'
          end
          object Label6: TLabel
            Left = 100
            Top = 136
            Width = 73
            Height = 13
            Caption = 'Erario C/IVA'
          end
          object Label7: TLabel
            Left = 105
            Top = 160
            Width = 68
            Height = 13
            Caption = 'IVA Vendite'
          end
          object Label8: TLabel
            Left = 90
            Top = 184
            Width = 83
            Height = 13
            Caption = 'IVA C/Acquisti'
          end
          object Label9: TLabel
            Left = 52
            Top = 208
            Width = 121
            Height = 13
            Caption = 'IVA Sospesa Acquisti'
          end
          object Label10: TLabel
            Left = 53
            Top = 232
            Width = 120
            Height = 13
            Caption = 'IVA Sospesa Vendite'
          end
          object Label11: TLabel
            Left = 58
            Top = 256
            Width = 115
            Height = 13
            Caption = 'IVA Prorata Acquisti'
          end
          object Label13: TLabel
            Left = 80
            Top = 400
            Width = 93
            Height = 13
            Caption = 'Interessi Passivi'
          end
          object Label14: TLabel
            Left = 91
            Top = 376
            Width = 82
            Height = 13
            Caption = 'IVA In Ritardo'
          end
          object Label15: TLabel
            Left = 29
            Top = 346
            Width = 145
            Height = 26
            Alignment = taRightJustify
            Caption = 'IVA Acquisto su Registro Vendite'
            WordWrap = True
          end
          object Label16: TLabel
            Left = 35
            Top = 328
            Width = 138
            Height = 13
            Caption = 'Giroconto per IVA Indetraibile'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 83
            Top = 304
            Width = 90
            Height = 13
            Caption = 'IVA Indetraibile'
          end
          object Label18: TLabel
            Left = 59
            Top = 280
            Width = 114
            Height = 13
            Caption = 'IVA Prorata Vendite'
          end
          object LookIVAAqcRV: TDBLookupComboBox
            Left = 176
            Top = 348
            Width = 145
            Height = 19
            DataField = 'IVA_ACQ_SU_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 28
          end
          object LookIVAAcqRVD: TDBLookupComboBox
            Left = 328
            Top = 348
            Width = 265
            Height = 19
            DataField = 'IVA_ACQ_SU_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 29
          end
          object LookIVARitD: TDBLookupComboBox
            Left = 328
            Top = 372
            Width = 265
            Height = 19
            DataField = 'IVA_RITARDO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 31
          end
          object LookIVARit: TDBLookupComboBox
            Left = 176
            Top = 372
            Width = 145
            Height = 19
            DataField = 'IVA_RITARDO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 30
          end
          object LookIntPas: TDBLookupComboBox
            Left = 176
            Top = 396
            Width = 145
            Height = 19
            DataField = 'INTERESSI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 32
          end
          object LookIntPasD: TDBLookupComboBox
            Left = 328
            Top = 396
            Width = 265
            Height = 19
            DataField = 'INTERESSI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 33
          end
          object Look_Problem1D: TDBLookupComboBox
            Left = 328
            Top = 324
            Width = 265
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 27
          end
          object Look_Problem1: TDBLookupComboBox
            Left = 176
            Top = 324
            Width = 145
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 26
          end
          object LookIVAInd: TDBLookupComboBox
            Left = 176
            Top = 300
            Width = 145
            Height = 19
            DataField = 'IVA_INDETRAIBILE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 24
          end
          object LookIVAIndD: TDBLookupComboBox
            Left = 328
            Top = 300
            Width = 265
            Height = 19
            DataField = 'IVA_INDETRAIBILE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 25
          end
          object LookIVAProVen: TDBLookupComboBox
            Left = 176
            Top = 276
            Width = 145
            Height = 19
            DataField = 'IVA_PRORATA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 22
          end
          object LookIVAProAcq: TDBLookupComboBox
            Left = 176
            Top = 252
            Width = 145
            Height = 19
            DataField = 'IVA_PRORATA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 20
          end
          object LookIVAProAcqD: TDBLookupComboBox
            Left = 328
            Top = 252
            Width = 265
            Height = 19
            DataField = 'IVA_PRORATA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 21
          end
          object LookIVAProVenD: TDBLookupComboBox
            Left = 328
            Top = 276
            Width = 265
            Height = 19
            DataField = 'IVA_PRORATA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 23
          end
          object LookErCIVAD: TDBLookupComboBox
            Left = 328
            Top = 132
            Width = 265
            Height = 19
            DataField = 'IVA_ERARIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 11
          end
          object LookErCIVA: TDBLookupComboBox
            Left = 176
            Top = 132
            Width = 145
            Height = 19
            DataField = 'IVA_ERARIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 10
          end
          object LookCorrVent: TDBLookupComboBox
            Left = 176
            Top = 108
            Width = 145
            Height = 19
            DataField = 'CORRISPETTIVI_VENTILAZIONE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 8
          end
          object LookCoorVentD: TDBLookupComboBox
            Left = 328
            Top = 108
            Width = 265
            Height = 19
            DataField = 'CORRISPETTIVI_VENTILAZIONE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 9
          end
          object LookCorr: TDBLookupComboBox
            Left = 176
            Top = 84
            Width = 145
            Height = 19
            DataField = 'CORRISPETTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 6
          end
          object LookVen: TDBLookupComboBox
            Left = 176
            Top = 60
            Width = 145
            Height = 19
            DataField = 'VENDITE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 4
          end
          object LookVanD: TDBLookupComboBox
            Left = 328
            Top = 60
            Width = 265
            Height = 19
            DataField = 'VENDITE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 5
          end
          object LookCooD: TDBLookupComboBox
            Left = 328
            Top = 84
            Width = 265
            Height = 19
            DataField = 'CORRISPETTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 7
          end
          object LookIVAVen: TDBLookupComboBox
            Left = 176
            Top = 156
            Width = 145
            Height = 19
            DataField = 'IVA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 12
          end
          object LookIVAVenD: TDBLookupComboBox
            Left = 328
            Top = 156
            Width = 265
            Height = 19
            DataField = 'IVA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 13
          end
          object LookIVACAcqD: TDBLookupComboBox
            Left = 328
            Top = 180
            Width = 265
            Height = 19
            DataField = 'IVA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 15
          end
          object LookIVACAcq: TDBLookupComboBox
            Left = 176
            Top = 180
            Width = 145
            Height = 19
            DataField = 'IVA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 14
          end
          object LookIVASospAqc: TDBLookupComboBox
            Left = 176
            Top = 204
            Width = 145
            Height = 19
            DataField = 'IVA_SOSPESA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 16
          end
          object LookIVASospVen: TDBLookupComboBox
            Left = 176
            Top = 228
            Width = 145
            Height = 19
            DataField = 'IVA_SOSPESA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 18
          end
          object LookIVASospVenD: TDBLookupComboBox
            Left = 328
            Top = 228
            Width = 265
            Height = 19
            DataField = 'IVA_SOSPESA_VEN'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 19
          end
          object LookIVASospAqcD: TDBLookupComboBox
            Left = 328
            Top = 204
            Width = 265
            Height = 19
            DataField = 'IVA_SOSPESA_ACQ'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 17
          end
          object LookCassa: TDBLookupComboBox
            Left = 176
            Top = 12
            Width = 145
            Height = 19
            DataField = 'CASSA'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 0
          end
          object LookAcq: TDBLookupComboBox
            Left = 176
            Top = 36
            Width = 145
            Height = 19
            DataField = 'ACQUISTI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object LookAcqD: TDBLookupComboBox
            Left = 328
            Top = 36
            Width = 265
            Height = 19
            DataField = 'ACQUISTI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 3
          end
          object LookCassaD: TDBLookupComboBox
            Left = 328
            Top = 12
            Width = 265
            Height = 19
            DataField = 'CASSA'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 1
          end
        end
      end
      object tabs2: TTabSheet
        Caption = '- 2 -'
        ImageIndex = 1
        object pa2: TPanel
          Left = 0
          Top = 0
          Width = 603
          Height = 434
          Align = alClient
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label12: TLabel
            Left = 94
            Top = 16
            Width = 78
            Height = 13
            Caption = 'Conto Cliente'
          end
          object Label19: TLabel
            Left = 83
            Top = 40
            Width = 89
            Height = 13
            Caption = 'Conto Fornitore'
          end
          object Label20: TLabel
            Left = 52
            Top = 64
            Width = 120
            Height = 13
            Caption = 'Rif.1 Appartenza Azienda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 52
            Top = 88
            Width = 120
            Height = 13
            Caption = 'Rif.2 Appartenza Azienda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 32
            Top = 112
            Width = 140
            Height = 13
            Caption = 'Spese Spedizioni (Costi)'
          end
          object Label23: TLabel
            Left = 27
            Top = 136
            Width = 145
            Height = 13
            Caption = 'Spese Spedizioni (Ricavi)'
          end
          object Label24: TLabel
            Left = 47
            Top = 160
            Width = 125
            Height = 13
            Caption = 'Spese Imballo (Costi)'
          end
          object Label25: TLabel
            Left = 42
            Top = 184
            Width = 130
            Height = 13
            Caption = 'Spese Imballo (Ricavi)'
          end
          object Label26: TLabel
            Left = 29
            Top = 208
            Width = 143
            Height = 13
            Caption = 'Spese Accessorie (Costi)'
          end
          object Label27: TLabel
            Left = 24
            Top = 232
            Width = 148
            Height = 13
            Caption = 'Spese Accessorie (Ricavi)'
          end
          object Label28: TLabel
            Left = 17
            Top = 256
            Width = 155
            Height = 13
            Caption = 'Spese Contrasegno (Costi)'
          end
          object Label29: TLabel
            Left = 82
            Top = 400
            Width = 90
            Height = 13
            Caption = 'IVA C/Omaggio'
          end
          object Label30: TLabel
            Left = 74
            Top = 376
            Width = 98
            Height = 13
            Caption = 'Abbuoni (Ricavo)'
          end
          object Label31: TLabel
            Left = 83
            Top = 352
            Width = 89
            Height = 13
            Caption = 'Abbuoni (Costi)'
          end
          object Label32: TLabel
            Left = 96
            Top = 328
            Width = 76
            Height = 13
            Caption = 'Reso (Ricavi)'
          end
          object Label33: TLabel
            Left = 101
            Top = 304
            Width = 71
            Height = 13
            Caption = 'Reso (Costi)'
          end
          object Label34: TLabel
            Left = 12
            Top = 280
            Width = 160
            Height = 13
            Caption = 'Spese Contrasegno (Ricavi)'
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 176
            Top = 348
            Width = 145
            Height = 19
            DataField = 'ABBUONI_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 28
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 328
            Top = 348
            Width = 265
            Height = 19
            DataField = 'ABBUONI_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 29
          end
          object DBLookupComboBox37: TDBLookupComboBox
            Left = 328
            Top = 372
            Width = 265
            Height = 19
            DataField = 'ABBUONI_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 31
          end
          object DBLookupComboBox38: TDBLookupComboBox
            Left = 176
            Top = 372
            Width = 145
            Height = 19
            DataField = 'ABBUONI_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 30
          end
          object DBLookupComboBox39: TDBLookupComboBox
            Left = 176
            Top = 396
            Width = 145
            Height = 19
            DataField = 'IVA_C_OMAGGIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 32
          end
          object DBLookupComboBox40: TDBLookupComboBox
            Left = 328
            Top = 396
            Width = 265
            Height = 19
            DataField = 'IVA_C_OMAGGIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 33
          end
          object DBLookupComboBox41: TDBLookupComboBox
            Left = 328
            Top = 324
            Width = 265
            Height = 19
            DataField = 'RESO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 27
          end
          object DBLookupComboBox42: TDBLookupComboBox
            Left = 176
            Top = 324
            Width = 145
            Height = 19
            DataField = 'RESO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 26
          end
          object DBLookupComboBox43: TDBLookupComboBox
            Left = 176
            Top = 300
            Width = 145
            Height = 19
            DataField = 'RESO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 24
          end
          object DBLookupComboBox44: TDBLookupComboBox
            Left = 328
            Top = 300
            Width = 265
            Height = 19
            DataField = 'RESO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 25
          end
          object DBLookupComboBox45: TDBLookupComboBox
            Left = 176
            Top = 276
            Width = 145
            Height = 19
            DataField = 'CONTRASEGNO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 22
          end
          object DBLookupComboBox46: TDBLookupComboBox
            Left = 176
            Top = 252
            Width = 145
            Height = 19
            DataField = 'CONTRASEGNO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 20
          end
          object DBLookupComboBox47: TDBLookupComboBox
            Left = 328
            Top = 252
            Width = 265
            Height = 19
            DataField = 'CONTRASEGNO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 21
          end
          object DBLookupComboBox48: TDBLookupComboBox
            Left = 328
            Top = 276
            Width = 265
            Height = 19
            DataField = 'CONTRASEGNO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 23
          end
          object DBLookupComboBox49: TDBLookupComboBox
            Left = 328
            Top = 132
            Width = 265
            Height = 19
            DataField = 'SPEDIZIONE_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 11
          end
          object DBLookupComboBox50: TDBLookupComboBox
            Left = 176
            Top = 132
            Width = 145
            Height = 19
            DataField = 'SPEDIZIONE_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 10
          end
          object DBLookupComboBox51: TDBLookupComboBox
            Left = 176
            Top = 108
            Width = 145
            Height = 19
            DataField = 'SPEDIZIONE_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 8
          end
          object DBLookupComboBox52: TDBLookupComboBox
            Left = 328
            Top = 108
            Width = 265
            Height = 19
            DataField = 'SPEDIZIONE_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 9
          end
          object DBLookupComboBox53: TDBLookupComboBox
            Left = 176
            Top = 84
            Width = 145
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 6
          end
          object DBLookupComboBox54: TDBLookupComboBox
            Left = 176
            Top = 60
            Width = 145
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 4
          end
          object DBLookupComboBox55: TDBLookupComboBox
            Left = 328
            Top = 60
            Width = 265
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 5
          end
          object DBLookupComboBox56: TDBLookupComboBox
            Left = 328
            Top = 84
            Width = 265
            Height = 19
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 7
          end
          object DBLookupComboBox57: TDBLookupComboBox
            Left = 176
            Top = 156
            Width = 145
            Height = 19
            DataField = 'IMBALLO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 12
          end
          object DBLookupComboBox58: TDBLookupComboBox
            Left = 328
            Top = 156
            Width = 265
            Height = 19
            DataField = 'IMBALLO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 13
          end
          object DBLookupComboBox59: TDBLookupComboBox
            Left = 328
            Top = 180
            Width = 265
            Height = 19
            DataField = 'IMBALLO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 15
          end
          object DBLookupComboBox60: TDBLookupComboBox
            Left = 176
            Top = 180
            Width = 145
            Height = 19
            DataField = 'IMBALLO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 14
          end
          object DBLookupComboBox61: TDBLookupComboBox
            Left = 176
            Top = 204
            Width = 145
            Height = 19
            DataField = 'ACCESSORIE_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 16
          end
          object DBLookupComboBox62: TDBLookupComboBox
            Left = 176
            Top = 228
            Width = 145
            Height = 19
            DataField = 'ACCESSORIE_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 18
          end
          object DBLookupComboBox63: TDBLookupComboBox
            Left = 328
            Top = 228
            Width = 265
            Height = 19
            DataField = 'ACCESSORIE_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 19
          end
          object DBLookupComboBox64: TDBLookupComboBox
            Left = 328
            Top = 204
            Width = 265
            Height = 19
            DataField = 'ACCESSORIE_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 17
          end
          object DBLookupComboBox65: TDBLookupComboBox
            Left = 176
            Top = 12
            Width = 145
            Height = 19
            DataField = 'CONTO_CLIENTE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 0
          end
          object DBLookupComboBox66: TDBLookupComboBox
            Left = 176
            Top = 36
            Width = 145
            Height = 19
            DataField = 'CONTO_FORNITORE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object DBLookupComboBox67: TDBLookupComboBox
            Left = 328
            Top = 36
            Width = 265
            Height = 19
            DataField = 'CONTO_FORNITORE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 3
          end
          object DBLookupComboBox68: TDBLookupComboBox
            Left = 328
            Top = 12
            Width = 265
            Height = 19
            DataField = 'CONTO_CLIENTE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 1
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '- 3 -'
        ImageIndex = 2
        object pa3: TPanel
          Left = 0
          Top = 0
          Width = 603
          Height = 434
          Align = alClient
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label35: TLabel
            Left = 79
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Omaggio (Costi)'
          end
          object Label36: TLabel
            Left = 74
            Top = 40
            Width = 99
            Height = 13
            Caption = 'Omaggio (Ricavi)'
          end
          object Label37: TLabel
            Left = 67
            Top = 64
            Width = 106
            Height = 13
            Caption = 'Spese Bolli (Costi)'
          end
          object Label38: TLabel
            Left = 62
            Top = 88
            Width = 111
            Height = 13
            Caption = 'Spese Bolli (Ricavi)'
          end
          object Label39: TLabel
            Left = 46
            Top = 112
            Width = 127
            Height = 13
            Caption = 'Spese Incasso (Conti)'
          end
          object Label40: TLabel
            Left = 42
            Top = 136
            Width = 131
            Height = 13
            Caption = 'Spese Incasso (Ricavi)'
          end
          object DBLookupComboBox83: TDBLookupComboBox
            Left = 328
            Top = 132
            Width = 265
            Height = 19
            DataField = 'INCASSO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 11
          end
          object DBLookupComboBox84: TDBLookupComboBox
            Left = 176
            Top = 132
            Width = 145
            Height = 19
            DataField = 'INCASSO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 10
          end
          object DBLookupComboBox85: TDBLookupComboBox
            Left = 176
            Top = 108
            Width = 145
            Height = 19
            DataField = 'INCASSO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 8
          end
          object DBLookupComboBox86: TDBLookupComboBox
            Left = 328
            Top = 108
            Width = 265
            Height = 19
            DataField = 'INCASSO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 9
          end
          object DBLookupComboBox87: TDBLookupComboBox
            Left = 176
            Top = 84
            Width = 145
            Height = 19
            DataField = 'BOLLI_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 6
          end
          object DBLookupComboBox88: TDBLookupComboBox
            Left = 176
            Top = 60
            Width = 145
            Height = 19
            DataField = 'BOLLI_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 4
          end
          object DBLookupComboBox89: TDBLookupComboBox
            Left = 328
            Top = 60
            Width = 265
            Height = 19
            DataField = 'BOLLI_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 5
          end
          object DBLookupComboBox90: TDBLookupComboBox
            Left = 328
            Top = 84
            Width = 265
            Height = 19
            DataField = 'BOLLI_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 7
          end
          object DBLookupComboBox99: TDBLookupComboBox
            Left = 176
            Top = 12
            Width = 145
            Height = 19
            DataField = 'OMAGGIO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 0
          end
          object DBLookupComboBox100: TDBLookupComboBox
            Left = 176
            Top = 36
            Width = 145
            Height = 19
            DataField = 'OMAGGIO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object DBLookupComboBox101: TDBLookupComboBox
            Left = 328
            Top = 36
            Width = 265
            Height = 19
            DataField = 'OMAGGIO_R'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 3
          end
          object DBLookupComboBox102: TDBLookupComboBox
            Left = 328
            Top = 12
            Width = 265
            Height = 19
            DataField = 'OMAGGIO_C'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 1
          end
        end
      end
      object tabs4: TTabSheet
        Caption = '- 4 -'
        ImageIndex = 3
        object pa4: TPanel
          Left = 0
          Top = 0
          Width = 603
          Height = 434
          Align = alClient
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label42: TLabel
            Left = 19
            Top = 14
            Width = 150
            Height = 13
            Caption = 'Stato Patrimoniale Iniziale'
          end
          object Label43: TLabel
            Left = 27
            Top = 38
            Width = 142
            Height = 13
            Caption = 'Stato Patrimoniale Finale'
          end
          object Label44: TLabel
            Left = 77
            Top = 62
            Width = 92
            Height = 13
            Caption = 'Profitti e Perdite'
          end
          object Label48: TLabel
            Left = 82
            Top = 182
            Width = 87
            Height = 13
            Caption = 'Risconti Passivi'
          end
          object Label49: TLabel
            Left = 92
            Top = 158
            Width = 77
            Height = 13
            Caption = 'Risconti Attivi'
          end
          object Label51: TLabel
            Left = 107
            Top = 110
            Width = 62
            Height = 13
            Caption = 'Ratei Attivi'
          end
          object Label45: TLabel
            Left = 56
            Top = 86
            Width = 113
            Height = 13
            Caption = 'Risultato d'#39'Esercizio'
          end
          object Label50: TLabel
            Left = 97
            Top = 134
            Width = 72
            Height = 13
            Caption = 'Ratei Passivi'
          end
          object DBLookupComboBox94: TDBLookupComboBox
            Left = 176
            Top = 12
            Width = 145
            Height = 19
            DataField = 'SP_INIZIALE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 0
          end
          object DBLookupComboBox93: TDBLookupComboBox
            Left = 328
            Top = 12
            Width = 265
            Height = 19
            DataField = 'SP_INIZIALE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 1
          end
          object DBLookupComboBox95: TDBLookupComboBox
            Left = 176
            Top = 36
            Width = 145
            Height = 19
            DataField = 'SP_FINALE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 2
          end
          object DBLookupComboBox98: TDBLookupComboBox
            Left = 328
            Top = 36
            Width = 265
            Height = 19
            DataField = 'SP_FINALE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 3
          end
          object DBLookupComboBox96: TDBLookupComboBox
            Left = 176
            Top = 60
            Width = 145
            Height = 19
            DataField = 'PROFITTI_PERDITE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 4
          end
          object DBLookupComboBox97: TDBLookupComboBox
            Left = 328
            Top = 60
            Width = 265
            Height = 19
            DataField = 'PROFITTI_PERDITE'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 5
          end
          object DBLookupComboBox80: TDBLookupComboBox
            Left = 176
            Top = 84
            Width = 145
            Height = 19
            DataField = 'RISULTATO_ESERCIZIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 6
          end
          object DBLookupComboBox81: TDBLookupComboBox
            Left = 328
            Top = 84
            Width = 265
            Height = 19
            DataField = 'RISULTATO_ESERCIZIO'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 7
          end
          object DBLookupComboBox79: TDBLookupComboBox
            Left = 176
            Top = 108
            Width = 145
            Height = 19
            DataField = 'RATEI_ATTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 8
          end
          object DBLookupComboBox82: TDBLookupComboBox
            Left = 328
            Top = 108
            Width = 265
            Height = 19
            DataField = 'RATEI_ATTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 9
          end
          object DBLookupComboBox77: TDBLookupComboBox
            Left = 176
            Top = 132
            Width = 145
            Height = 19
            DataField = 'RATEI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 10
          end
          object DBLookupComboBox78: TDBLookupComboBox
            Left = 328
            Top = 132
            Width = 265
            Height = 19
            DataField = 'RATEI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 11
          end
          object DBLookupComboBox76: TDBLookupComboBox
            Left = 176
            Top = 156
            Width = 145
            Height = 19
            DataField = 'RISCONTI_ACTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 12
          end
          object DBLookupComboBox75: TDBLookupComboBox
            Left = 328
            Top = 156
            Width = 265
            Height = 19
            DataField = 'RISCONTI_ACTIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 13
          end
          object DBLookupComboBox69: TDBLookupComboBox
            Left = 176
            Top = 180
            Width = 145
            Height = 19
            DataField = 'RISCONTI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'NOME_CONTO'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 14
          end
          object DBLookupComboBox70: TDBLookupComboBox
            Left = 328
            Top = 180
            Width = 265
            Height = 19
            DataField = 'RISCONTI_PASSIVI'
            DataSource = dmodAz.dsoTabPersAz
            KeyField = 'ID_PIANO_CONTO'
            ListField = 'DESCR'
            ListSource = dmodAz.dsoTab_Piano_Conti
            TabOrder = 15
          end
          object GroupBox1: TGroupBox
            Left = 96
            Top = 258
            Width = 397
            Height = 159
            Caption = 'Codici IVA Spese per '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            object Label52: TLabel
              Left = 8
              Top = 132
              Width = 79
              Height = 13
              Caption = 'Contrassegno'
            end
            object Label47: TLabel
              Left = 26
              Top = 112
              Width = 61
              Height = 13
              Caption = 'Accessorie'
            end
            object Label46: TLabel
              Left = 44
              Top = 44
              Width = 43
              Height = 13
              Caption = 'Imballo'
            end
            object Label41: TLabel
              Left = 25
              Top = 90
              Width = 62
              Height = 13
              Caption = 'Spedizione'
            end
            object Label53: TLabel
              Left = 43
              Top = 66
              Width = 44
              Height = 13
              Caption = 'Incasso'
            end
            object Label54: TLabel
              Left = 63
              Top = 22
              Width = 24
              Height = 13
              Caption = 'Bolli'
            end
            object DBLookupComboBox10: TDBLookupComboBox
              Left = 162
              Top = 128
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_CONTRASEGNO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 11
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 162
              Top = 106
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_ACC'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 9
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 162
              Top = 40
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_IMBALLO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 3
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 162
              Top = 84
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_SPED'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 7
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 90
              Top = 84
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_SPED'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 6
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 90
              Top = 40
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_IMBALLO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 2
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 90
              Top = 106
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_ACC'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 8
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 90
              Top = 128
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_CONTRASEGNO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 10
            end
            object DBLookupComboBox11: TDBLookupComboBox
              Left = 90
              Top = 62
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_INCASSO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 4
            end
            object DBLookupComboBox12: TDBLookupComboBox
              Left = 90
              Top = 18
              Width = 69
              Height = 19
              DataField = 'COD_IVA_SPESE_BOLLO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'CODICE'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 0
            end
            object DBLookupComboBox13: TDBLookupComboBox
              Left = 162
              Top = 18
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_BOLLO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 1
            end
            object DBLookupComboBox14: TDBLookupComboBox
              Left = 162
              Top = 62
              Width = 221
              Height = 19
              DataField = 'COD_IVA_SPESE_INCASSO'
              DataSource = dmodAz.dsoTabPersAz
              KeyField = 'CODICE'
              ListField = 'DESCR'
              ListSource = dmodAz.dsoTab_Codici_IVA
              TabOrder = 5
            end
          end
        end
      end
      object tabs5: TTabSheet
        Caption = '- 5 -'
        ImageIndex = 4
        object pa5: TPanel
          Left = 0
          Top = 0
          Width = 603
          Height = 434
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 16
            Top = 3
            Width = 161
            Height = 41
            Caption = 'Codice da cui partire '
            TabOrder = 0
            object DBEdit1: TDBEdit
              Left = 8
              Top = 16
              Width = 145
              Height = 19
              DataField = 'DESCR_ZOOM_ART'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 184
            Top = 3
            Width = 401
            Height = 41
            Caption = 'Percorso per Salvataggio '
            TabOrder = 1
            object DBEdit2: TDBEdit
              Left = 8
              Top = 16
              Width = 385
              Height = 19
              DataField = 'RIF_VALUTA'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 0
            end
          end
          object GroupBox4: TGroupBox
            Left = 16
            Top = 207
            Width = 569
            Height = 62
            Caption = 'Gestione E-mail '
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object Label55: TLabel
              Left = 8
              Top = 19
              Width = 28
              Height = 14
              Caption = 'POP3'
            end
            object Label56: TLabel
              Left = 294
              Top = 19
              Width = 31
              Height = 14
              Caption = 'SMTP'
            end
            object Label57: TLabel
              Left = 8
              Top = 41
              Width = 60
              Height = 14
              Caption = 'User Name'
            end
            object Label58: TLabel
              Left = 294
              Top = 41
              Width = 56
              Height = 14
              Caption = 'Password'
            end
            object DBEdit3: TDBEdit
              Left = 72
              Top = 16
              Width = 145
              Height = 20
              DataField = 'POP3'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 352
              Top = 16
              Width = 145
              Height = 20
              DataField = 'SMTP'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 72
              Top = 38
              Width = 185
              Height = 20
              DataField = 'USERNAME'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 352
              Top = 38
              Width = 193
              Height = 20
              DataField = 'PASSWORDS'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object GroupBox5: TGroupBox
            Left = 16
            Top = 271
            Width = 569
            Height = 71
            Caption = 'Gestione Costi di gestione '
            Color = 8454143
            ParentColor = False
            TabOrder = 3
            object Label59: TLabel
              Left = 8
              Top = 22
              Width = 98
              Height = 13
              Caption = 'Tot. Giorni Lavorativi'
            end
            object Label60: TLabel
              Left = 14
              Top = 46
              Width = 92
              Height = 13
              Caption = 'Tot. Ore Giornaliere'
            end
            object Label61: TLabel
              Left = 192
              Top = 22
              Width = 89
              Height = 13
              Caption = 'Costo Orario Ordin.'
            end
            object Label62: TLabel
              Left = 192
              Top = 46
              Width = 89
              Height = 13
              Caption = 'Costo Orario Strao.'
            end
            object Label63: TLabel
              Left = 389
              Top = 46
              Width = 84
              Height = 13
              Caption = 'Costo Orario Fest.'
            end
            object Label64: TLabel
              Left = 384
              Top = 22
              Width = 88
              Height = 13
              Caption = 'Costo Orario Trasf.'
            end
            object DBEdit7: TDBEdit
              Left = 112
              Top = 19
              Width = 49
              Height = 19
              DataField = 'TOTGIORNI'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 112
              Top = 43
              Width = 49
              Height = 19
              DataField = 'TOTORE'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 283
              Top = 19
              Width = 81
              Height = 19
              DataField = 'COSTONORM'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 283
              Top = 43
              Width = 81
              Height = 19
              DataField = 'COSTOSTRA'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 475
              Top = 43
              Width = 81
              Height = 19
              DataField = 'COSTOFEST'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 4
            end
            object DBEdit12: TDBEdit
              Left = 475
              Top = 19
              Width = 81
              Height = 19
              DataField = 'COSTOTRAS'
              DataSource = dmodAz.dsoTabPersAz
              TabOrder = 5
            end
          end
          object GroupBox6: TGroupBox
            Left = 16
            Top = 344
            Width = 569
            Height = 84
            Caption = 'Settaggio x Com port '
            Color = 15134678
            ParentColor = False
            TabOrder = 4
            object LabelParity: TLabel
              Left = 402
              Top = 55
              Width = 34
              Height = 14
              Caption = 'Parity:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelStopbits: TLabel
              Left = 387
              Top = 21
              Width = 49
              Height = 14
              Caption = 'Stopbits:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelDataBits: TLabel
              Left = 213
              Top = 55
              Width = 47
              Height = 14
              Caption = 'Databits:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelBaudrate: TLabel
              Left = 208
              Top = 21
              Width = 52
              Height = 14
              Caption = 'Baudrate:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label65: TLabel
              Left = 9
              Top = 40
              Width = 29
              Height = 14
              Caption = 'Com:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBComboBox1: TDBComboBox
              Left = 48
              Top = 36
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPORT'
              DataSource = dmodAz.dsoTabPersAz
              ItemHeight = 13
              Items.Strings = (
                '1'
                '2'
                '3'
                '4')
              TabOrder = 0
            end
            object DBComboBox2: TDBComboBox
              Left = 264
              Top = 17
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAUDRATE'
              DataSource = dmodAz.dsoTabPersAz
              ItemHeight = 13
              Items.Strings = (
                '110'
                '300'
                '600'
                '1200'
                '2400'
                '4800'
                '9600'
                '14400'
                '19200'
                '38400'
                '56000'
                '57600'
                '115200'
                '128000'
                '256000')
              TabOrder = 1
            end
            object DBComboBox3: TDBComboBox
              Left = 264
              Top = 51
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DATABITS'
              DataSource = dmodAz.dsoTabPersAz
              ItemHeight = 13
              Items.Strings = (
                '4'
                '5'
                '6'
                '7'
                '8')
              TabOrder = 2
            end
            object DBComboBox4: TDBComboBox
              Left = 440
              Top = 17
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'STOPBITS'
              DataSource = dmodAz.dsoTabPersAz
              ItemHeight = 13
              Items.Strings = (
                '1'
                '10'
                '15'
                '20')
              TabOrder = 3
            end
            object DBComboBox5: TDBComboBox
              Left = 440
              Top = 51
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PARITY'
              DataSource = dmodAz.dsoTabPersAz
              ItemHeight = 13
              Items.Strings = (
                'NONE'
                'ODD'
                'EVEN'
                'MARK'
                'SPACE')
              TabOrder = 4
            end
          end
          object GroupBox7: TGroupBox
            Left = 16
            Top = 123
            Width = 569
            Height = 83
            Caption = 'Gestione FTP'
            Color = 42496
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 5
            object Label66: TLabel
              Left = 8
              Top = 19
              Width = 25
              Height = 14
              Caption = 'Host'
            end
            object Label67: TLabel
              Left = 308
              Top = 19
              Width = 49
              Height = 14
              Caption = 'Curr. Dir.'
            end
            object Label68: TLabel
              Left = 8
              Top = 41
              Width = 60
              Height = 14
              Caption = 'User Name'
            end
            object Label69: TLabel
              Left = 308
              Top = 41
              Width = 56
              Height = 14
              Caption = 'Password'
            end
            object Label70: TLabel
              Left = 8
              Top = 63
              Width = 29
              Height = 14
              Caption = 'Porta'
            end
            object DBEdit13: TDBEdit
              Left = 72
              Top = 16
              Width = 185
              Height = 20
              DataField = 'FTPHOST'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit14: TDBEdit
              Left = 368
              Top = 16
              Width = 193
              Height = 20
              DataField = 'DIRFTP'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit15: TDBEdit
              Left = 72
              Top = 38
              Width = 185
              Height = 20
              DataField = 'USERFTP'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 368
              Top = 38
              Width = 193
              Height = 20
              DataField = 'PASSFTP'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 3
            end
            object DBEdit17: TDBEdit
              Left = 72
              Top = 60
              Width = 41
              Height = 20
              DataField = 'PORTFTP'
              DataSource = dmodAz.dsoTabPersAz
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
  end
end
