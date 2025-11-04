object fArtPerOrd: TfArtPerOrd
  Left = 207
  Top = 279
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Articoli per Ordine'
  ClientHeight = 142
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 101
    Align = alClient
    BevelOuter = bvLowered
    Color = 16537187
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object laArt: TLabel
      Left = 10
      Top = 10
      Width = 49
      Height = 16
      Caption = 'Articolo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzo_Unita: TLabel
      Left = 74
      Top = 54
      Width = 96
      Height = 16
      Caption = 'Prezzo Base P.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laQta: TLabel
      Left = 8
      Top = 54
      Width = 26
      Height = 16
      Caption = 'Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laSconti: TLabel
      Left = 364
      Top = 52
      Width = 40
      Height = 16
      Caption = 'Sconti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzoTot: TLabel
      Left = 202
      Top = 54
      Width = 84
      Height = 16
      Caption = 'Prezzo totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzoScont: TLabel
      Left = 424
      Top = 54
      Width = 101
      Height = 16
      Caption = 'Prezzo scontato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 10
      Top = 26
      Width = 163
      Height = 22
      DataField = 'CODICE_ART'
      DataSource = dsoOrdDet
      TabOrder = 0
      OnClick = dbeCodiceClick
      OnEnter = dbeCodiceEnter
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 26
      Width = 335
      Height = 22
      DataField = 'DESCR'
      DataSource = dsoOrdDet
      TabOrder = 2
      OnClick = dbeDescrClick
      OnEnter = dbeDescrEnter
    end
    object bbCodice: TBitBtn
      Left = 176
      Top = 26
      Width = 21
      Height = 23
      Caption = '...'
      TabOrder = 1
      OnClick = bbCodiceClick
    end
    object bbDescr: TBitBtn
      Left = 536
      Top = 26
      Width = 23
      Height = 23
      Caption = '...'
      TabOrder = 3
      OnClick = bbDescrClick
    end
    object dbePrezzo: TDBEdit
      Left = 74
      Top = 70
      Width = 111
      Height = 22
      DataField = 'PREZZO_UNITA'
      DataSource = dsoOrdDet
      TabOrder = 5
      OnEnter = dbePrezzoEnter
      OnExit = dbePrezzoExit
    end
    object dbeQta: TDBEdit
      Left = 8
      Top = 70
      Width = 57
      Height = 22
      DataField = 'QTA'
      DataSource = dsoOrdDet
      TabOrder = 4
      OnEnter = dbeQtaEnter
      OnExit = dbeQtaExit
    end
    object dbeSc1: TDBEdit
      Left = 344
      Top = 70
      Width = 35
      Height = 22
      DataField = 'SCONTO1'
      DataSource = dsoOrdDet
      TabOrder = 7
      OnExit = dbeSc1Exit
    end
    object dbeSc2: TDBEdit
      Left = 384
      Top = 70
      Width = 35
      Height = 22
      DataField = 'SCONTO2'
      DataSource = dsoOrdDet
      TabOrder = 8
      OnExit = dbeSc2Exit
    end
    object dbePrezzoTotale: TDBEdit
      Left = 202
      Top = 70
      Width = 137
      Height = 22
      DataField = 'PREZZO_TOT'
      DataSource = dsoOrdDet
      TabOrder = 6
    end
    object dbePrezzoSc: TDBEdit
      Left = 424
      Top = 70
      Width = 137
      Height = 22
      DataField = 'PREZZO_SCONTATO'
      DataSource = dsoOrdDet
      TabOrder = 9
    end
    object PageControl1: TPageControl
      Left = 6
      Top = 112
      Width = 556
      Height = 185
      ActivePage = TabSheet2
      TabIndex = 0
      TabOrder = 10
      object TabSheet2: TTabSheet
        Caption = 'Base'
        ImageIndex = 1
        object Label5: TLabel
          Left = 2
          Top = 2
          Width = 35
          Height = 16
          Caption = 'Diam.'
        end
        object Label6: TLabel
          Left = 211
          Top = 2
          Width = 42
          Height = 16
          Caption = 'Qualit'#224
        end
        object Label7: TLabel
          Left = 427
          Top = 2
          Width = 33
          Height = 16
          Caption = 'Barre'
        end
        object Label9: TLabel
          Left = 50
          Top = 50
          Width = 54
          Height = 16
          Caption = 'Peso Kg.'
        end
        object Label10: TLabel
          Left = 154
          Top = 50
          Width = 71
          Height = 16
          Caption = 'Prezzo B. P.'
        end
        object Label11: TLabel
          Left = 250
          Top = 50
          Width = 56
          Height = 16
          Caption = 'Trasp. '#8364'/t'
        end
        object Label12: TLabel
          Left = 346
          Top = 50
          Width = 72
          Height = 16
          Caption = 'Prezzo B. D.'
        end
        object Label13: TLabel
          Left = 442
          Top = 50
          Width = 47
          Height = 16
          Caption = 'Extra '#8364'/t'
        end
        object DBEdit4: TDBEdit
          Left = 2
          Top = 18
          Width = 120
          Height = 22
          DataField = 'DIAM'
          DataSource = dsoOrdDet
          TabOrder = 0
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit5: TDBEdit
          Left = 211
          Top = 18
          Width = 120
          Height = 22
          DataField = 'QUALITA'
          DataSource = dsoOrdDet
          TabOrder = 1
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit6: TDBEdit
          Left = 427
          Top = 18
          Width = 120
          Height = 22
          DataField = 'BARRE'
          DataSource = dsoOrdDet
          TabOrder = 2
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit8: TDBEdit
          Left = 50
          Top = 66
          Width = 70
          Height = 22
          DataField = 'QTA'
          DataSource = dsoOrdDet
          TabOrder = 3
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit9: TDBEdit
          Left = 154
          Top = 66
          Width = 70
          Height = 22
          DataField = 'PREZZO_UNITA'
          DataSource = dsoOrdDet
          TabOrder = 4
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit10: TDBEdit
          Left = 250
          Top = 66
          Width = 70
          Height = 22
          DataField = 'CODICE_ART'
          DataSource = dsoOrdDet
          TabOrder = 5
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit11: TDBEdit
          Left = 346
          Top = 66
          Width = 70
          Height = 22
          DataField = 'PREZZODEST'
          DataSource = dsoOrdDet
          TabOrder = 6
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit12: TDBEdit
          Left = 442
          Top = 66
          Width = 70
          Height = 22
          DataField = 'EXTRA'
          DataSource = dsoOrdDet
          TabOrder = 7
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Marcegaglia Lamiere'
        ImageIndex = 2
        object Label8: TLabel
          Left = 34
          Top = 2
          Width = 48
          Height = 15
          Caption = 'Quantit'#224
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 2
          Top = 18
          Width = 54
          Height = 16
          Caption = 'Peso Kg.'
        end
        object Label17: TLabel
          Left = 402
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Prezzo'
        end
        object Label18: TLabel
          Left = 58
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Norma'
        end
        object Label21: TLabel
          Left = 74
          Top = 18
          Width = 47
          Height = 16
          Caption = 'Nr.Fogli'
        end
        object Label22: TLabel
          Left = 141
          Top = 2
          Width = 67
          Height = 15
          Caption = 'Tip.Lamiera'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 267
          Top = 2
          Width = 41
          Height = 15
          Caption = 'Acciaio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 418
          Top = 2
          Width = 63
          Height = 15
          Caption = 'Dimensioni'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 363
          Top = 18
          Width = 42
          Height = 16
          Caption = 'Spess.'
        end
        object Label24: TLabel
          Left = 427
          Top = 18
          Width = 30
          Height = 16
          Caption = 'Larg.'
        end
        object Label25: TLabel
          Left = 491
          Top = 18
          Width = 32
          Height = 16
          Caption = 'Lung.'
        end
        object DBEdit7: TDBEdit
          Left = 74
          Top = 34
          Width = 47
          Height = 22
          DataField = 'NUMFOGLI'
          DataSource = dsoOrdDet
          TabOrder = 0
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit13: TDBEdit
          Left = 131
          Top = 34
          Width = 86
          Height = 22
          DataField = 'TIPOLOGIA'
          DataSource = dsoOrdDet
          TabOrder = 1
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit14: TDBEdit
          Left = 227
          Top = 34
          Width = 120
          Height = 22
          DataField = 'ACCIAIO'
          DataSource = dsoOrdDet
          TabOrder = 2
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit15: TDBEdit
          Left = 2
          Top = 34
          Width = 70
          Height = 22
          DataField = 'QTA'
          DataSource = dsoOrdDet
          TabOrder = 3
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit16: TDBEdit
          Left = 402
          Top = 74
          Width = 70
          Height = 22
          DataField = 'PREZZO_UNITA'
          DataSource = dsoOrdDet
          TabOrder = 4
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit17: TDBEdit
          Left = 58
          Top = 74
          Width = 70
          Height = 22
          DataField = 'NORMA'
          DataSource = dsoOrdDet
          TabOrder = 5
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit20: TDBEdit
          Left = 363
          Top = 34
          Width = 54
          Height = 22
          DataField = 'SPESSORE'
          DataSource = dsoOrdDet
          TabOrder = 6
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit21: TDBEdit
          Left = 427
          Top = 34
          Width = 54
          Height = 22
          DataField = 'LARGHEZZA'
          DataSource = dsoOrdDet
          TabOrder = 7
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit22: TDBEdit
          Left = 491
          Top = 34
          Width = 54
          Height = 22
          DataField = 'LUNGHEZZA'
          DataSource = dsoOrdDet
          TabOrder = 8
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Marcegaglia Nastri'
        ImageIndex = 3
        object Label19: TLabel
          Left = 10
          Top = 2
          Width = 48
          Height = 15
          Caption = 'Quantit'#224
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 2
          Top = 18
          Width = 54
          Height = 16
          Caption = 'Peso Kg.'
        end
        object Label26: TLabel
          Left = 402
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Prezzo'
        end
        object Label27: TLabel
          Left = 58
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Norma'
        end
        object Label29: TLabel
          Left = 93
          Top = 2
          Width = 46
          Height = 15
          Caption = 'Prodotto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 203
          Top = 2
          Width = 41
          Height = 15
          Caption = 'Qualit'#224
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 314
          Top = 2
          Width = 41
          Height = 15
          Caption = 'Aspetto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 307
          Top = 18
          Width = 43
          Height = 16
          Caption = 'Finitura'
        end
        object Label33: TLabel
          Left = 427
          Top = 18
          Width = 30
          Height = 16
          Caption = 'Larg.'
        end
        object Label34: TLabel
          Left = 491
          Top = 18
          Width = 59
          Height = 16
          Caption = 'Spessore'
        end
        object DBEdit19: TDBEdit
          Left = 75
          Top = 34
          Width = 86
          Height = 22
          DataField = 'TIPOLOGIA'
          DataSource = dsoOrdDet
          TabOrder = 0
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit23: TDBEdit
          Left = 165
          Top = 34
          Width = 120
          Height = 22
          DataField = 'ACCIAIO'
          DataSource = dsoOrdDet
          TabOrder = 1
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit24: TDBEdit
          Left = 2
          Top = 34
          Width = 70
          Height = 22
          DataField = 'QTA'
          DataSource = dsoOrdDet
          TabOrder = 2
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit25: TDBEdit
          Left = 402
          Top = 74
          Width = 70
          Height = 22
          DataField = 'PREZZO_UNITA'
          DataSource = dsoOrdDet
          TabOrder = 3
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit26: TDBEdit
          Left = 58
          Top = 74
          Width = 70
          Height = 22
          DataField = 'NORMA'
          DataSource = dsoOrdDet
          TabOrder = 4
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit27: TDBEdit
          Left = 307
          Top = 34
          Width = 54
          Height = 22
          DataField = 'FINITURA'
          DataSource = dsoOrdDet
          TabOrder = 5
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit28: TDBEdit
          Left = 427
          Top = 34
          Width = 54
          Height = 22
          DataField = 'LARGHEZZA'
          DataSource = dsoOrdDet
          TabOrder = 6
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit29: TDBEdit
          Left = 491
          Top = 34
          Width = 54
          Height = 22
          DataField = 'SPESSORE'
          DataSource = dsoOrdDet
          TabOrder = 7
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Marcegaglia Tubi'
        ImageIndex = 3
        object Label28: TLabel
          Left = 10
          Top = 2
          Width = 48
          Height = 15
          Caption = 'Quantit'#224
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 2
          Top = 18
          Width = 54
          Height = 16
          Caption = 'Peso Kg.'
        end
        object Label36: TLabel
          Left = 418
          Top = 2
          Width = 63
          Height = 15
          Caption = 'Dimensioni'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 427
          Top = 18
          Width = 42
          Height = 16
          Caption = 'Spess.'
        end
        object Label38: TLabel
          Left = 363
          Top = 18
          Width = 62
          Height = 16
          Caption = 'Lato/Diam'
        end
        object Label39: TLabel
          Left = 491
          Top = 18
          Width = 32
          Height = 16
          Caption = 'Lung.'
        end
        object Label40: TLabel
          Left = 58
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Norma'
        end
        object Label41: TLabel
          Left = 267
          Top = 2
          Width = 41
          Height = 15
          Caption = 'Acciaio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 402
          Top = 58
          Width = 41
          Height = 16
          Caption = 'Prezzo'
        end
        object Label43: TLabel
          Left = 131
          Top = 2
          Width = 45
          Height = 15
          Caption = 'Finitura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBEdit18: TDBEdit
          Left = 2
          Top = 34
          Width = 70
          Height = 22
          DataField = 'QTA'
          DataSource = dsoOrdDet
          TabOrder = 0
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit30: TDBEdit
          Left = 363
          Top = 34
          Width = 54
          Height = 22
          DataField = 'LATO'
          DataSource = dsoOrdDet
          TabOrder = 1
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit31: TDBEdit
          Left = 427
          Top = 34
          Width = 54
          Height = 22
          DataField = 'SPESSORE'
          DataSource = dsoOrdDet
          TabOrder = 2
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit32: TDBEdit
          Left = 491
          Top = 34
          Width = 54
          Height = 22
          DataField = 'LUNGHEZZA'
          DataSource = dsoOrdDet
          TabOrder = 3
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit33: TDBEdit
          Left = 58
          Top = 73
          Width = 70
          Height = 22
          DataField = 'NORMA'
          DataSource = dsoOrdDet
          TabOrder = 4
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit34: TDBEdit
          Left = 227
          Top = 34
          Width = 120
          Height = 22
          DataField = 'ACCIAIO'
          DataSource = dsoOrdDet
          TabOrder = 5
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit35: TDBEdit
          Left = 402
          Top = 73
          Width = 70
          Height = 22
          DataField = 'PREZZO_UNITA'
          DataSource = dsoOrdDet
          TabOrder = 6
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
        object DBEdit36: TDBEdit
          Left = 91
          Top = 34
          Width = 120
          Height = 22
          DataField = 'FINITURA'
          DataSource = dsoOrdDet
          TabOrder = 7
          OnClick = dbeCodiceClick
          OnEnter = dbeCodiceEnter
        end
      end
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 101
    Width = 565
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = 10790052
    TabOrder = 1
    object Label1: TLabel
      Left = 519
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Provv.'
    end
    object Label2: TLabel
      Left = 438
      Top = 5
      Width = 16
      Height = 13
      Caption = 'Ag.'
    end
    object Label3: TLabel
      Left = 374
      Top = 5
      Width = 21
      Height = 13
      Caption = 'C.G.'
    end
    object Label4: TLabel
      Left = 246
      Top = 5
      Width = 20
      Height = 13
      Caption = 'C.A.'
    end
    object Label44: TLabel
      Left = 310
      Top = 5
      Width = 32
      Height = 13
      Caption = 'R.C.G.'
    end
    object bbOK: TBitBtn
      Left = 10
      Top = 12
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = bbOKClick
    end
    object bbCanc: TBitBtn
      Left = 104
      Top = 12
      Width = 71
      Height = 25
      Caption = '&Anulla'
      TabOrder = 1
      OnClick = bbCancClick
    end
    object DBEProvv: TDBEdit
      Left = 512
      Top = 18
      Width = 45
      Height = 21
      Color = 8421440
      DataField = 'PROVV'
      DataSource = dsoOrdDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = DBEProvvClick
      OnEnter = DBEProvvEnter
    end
    object DBEdit1: TDBEdit
      Left = 438
      Top = 18
      Width = 59
      Height = 21
      Color = 8421440
      DataField = 'AGENTE'
      DataSource = dsoOrdDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = DBEProvvClick
      OnEnter = DBEProvvEnter
    end
    object DBEdit2: TDBEdit
      Left = 374
      Top = 18
      Width = 59
      Height = 21
      Color = 8421440
      DataField = 'CAPO_GRUPPO'
      DataSource = dsoOrdDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = DBEProvvClick
      OnEnter = DBEProvvEnter
    end
    object DBEdit3: TDBEdit
      Left = 246
      Top = 18
      Width = 59
      Height = 21
      Color = 8421440
      DataField = 'CAPO_AREA'
      DataSource = dsoOrdDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = DBEProvvClick
      OnEnter = DBEProvvEnter
    end
    object DBEdit37: TDBEdit
      Left = 310
      Top = 18
      Width = 59
      Height = 21
      Color = 8421440
      DataField = 'CAPO_REPARTO'
      DataSource = dsoOrdDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = DBEProvvClick
      OnEnter = DBEProvvEnter
    end
  end
  object dsoOrdDet: TDataSource
    DataSet = dmodAz.ibqOrd_Det
    Left = 462
  end
end
