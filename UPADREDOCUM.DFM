object fPadreDocum: TfPadreDocum
  Left = 52
  Top = 53
  Width = 722
  Height = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
  end
  object paAdds: TPanel
    Left = 0
    Top = 364
    Width = 714
    Height = 111
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Label27: TLabel
      Left = 24
      Top = 12
      Width = 59
      Height = 13
      Caption = 'Totale Merci'
    end
    object Label28: TLabel
      Left = 19
      Top = 36
      Width = 64
      Height = 13
      Caption = 'Tetale Servizi'
    end
    object Label29: TLabel
      Left = 20
      Top = 84
      Width = 63
      Height = 13
      Caption = 'Totale Spese'
    end
    object Label30: TLabel
      Left = 14
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Totale Omaggi'
    end
    object Label31: TLabel
      Left = 184
      Top = 12
      Width = 63
      Height = 13
      Caption = 'Totale Sconti'
    end
    object Label32: TLabel
      Left = 200
      Top = 36
      Width = 47
      Height = 13
      Caption = 'Imponibile'
    end
    object Label33: TLabel
      Left = 210
      Top = 60
      Width = 37
      Height = 13
      Caption = 'Imposta'
    end
    object Label34: TLabel
      Left = 217
      Top = 84
      Width = 30
      Height = 13
      Caption = 'Totale'
    end
    object Label35: TLabel
      Left = 344
      Top = 12
      Width = 66
      Height = 13
      Caption = 'Data Acconto'
    end
    object Label36: TLabel
      Left = 374
      Top = 36
      Width = 36
      Height = 13
      Caption = 'Acconti'
    end
    object Label37: TLabel
      Left = 371
      Top = 60
      Width = 39
      Height = 13
      Caption = 'Abbuoni'
    end
    object Label38: TLabel
      Left = 389
      Top = 84
      Width = 21
      Height = 13
      Caption = 'Resi'
    end
    object Label39: TLabel
      Left = 552
      Top = 12
      Width = 51
      Height = 13
      Caption = 'Da Pagare'
    end
    object Label41: TLabel
      Left = 528
      Top = 60
      Width = 75
      Height = 13
      Caption = 'Totale in EURO'
    end
    object Label42: TLabel
      Left = 508
      Top = 84
      Width = 95
      Height = 13
      Caption = 'Da pagare in EURO'
    end
    object DBEdit18: TDBEdit
      Left = 92
      Top = 8
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DBEdit19: TDBEdit
      Left = 92
      Top = 32
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object DBEdit20: TDBEdit
      Left = 92
      Top = 80
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object DBEdit21: TDBEdit
      Left = 92
      Top = 56
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DBEdit22: TDBEdit
      Left = 256
      Top = 8
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object DBEdit23: TDBEdit
      Left = 256
      Top = 32
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object DBEdit24: TDBEdit
      Left = 256
      Top = 56
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object DBEdit25: TDBEdit
      Left = 256
      Top = 80
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object DBEdit26: TDBEdit
      Left = 416
      Top = 8
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object DBEdit27: TDBEdit
      Left = 416
      Top = 32
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object DBEdit28: TDBEdit
      Left = 416
      Top = 56
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object DBEdit29: TDBEdit
      Left = 416
      Top = 80
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object DBEdit30: TDBEdit
      Left = 612
      Top = 8
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object DBEdit32: TDBEdit
      Left = 612
      Top = 56
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object DBEdit33: TDBEdit
      Left = 612
      Top = 80
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object dbcbRilevaAcconto: TDBCheckBox
      Left = 528
      Top = 33
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Rileva Acconto'
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 714
    Height = 196
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object pctrlMain: TPageControl
      Left = 2
      Top = 2
      Width = 710
      Height = 192
      ActivePage = tabs2
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Testata'
        object pa1: TPanel
          Left = 0
          Top = 0
          Width = 702
          Height = 161
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object laOra: TLabel
            Left = 68
            Top = 20
            Width = 17
            Height = 13
            Caption = 'Ora'
          end
          object laDataDoc: TLabel
            Left = 156
            Top = 20
            Width = 49
            Height = 13
            Caption = 'Data Doc.'
          end
          object laDataReg: TLabel
            Left = 456
            Top = 20
            Width = 72
            Height = 13
            Caption = 'Mese di comp..'
          end
          object laDataCons: TLabel
            Left = 304
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Data Cons.'
          end
          object laNumero: TLabel
            Left = 48
            Top = 48
            Width = 37
            Height = 13
            Caption = 'Numeto'
          end
          object laSerie: TLabel
            Left = 176
            Top = 48
            Width = 24
            Height = 13
            Caption = 'Serie'
          end
          object laFornitore: TLabel
            Left = 44
            Top = 76
            Width = 41
            Height = 13
            Caption = 'Fornitore'
          end
          object laIndirizzo: TLabel
            Left = 44
            Top = 104
            Width = 38
            Height = 13
            Caption = 'Indirizzo'
          end
          object laNostroDeposito: TLabel
            Left = 11
            Top = 132
            Width = 74
            Height = 13
            Caption = 'Nostro deposito'
          end
          object dbeOra: TDBEdit
            Left = 92
            Top = 16
            Width = 57
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object dbeDataDoc: TDBEdit
            Left = 212
            Top = 16
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object dbeDataReg: TDBEdit
            Left = 532
            Top = 16
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object dbeDataCons: TDBEdit
            Left = 364
            Top = 16
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object dbeNumero: TDBEdit
            Left = 92
            Top = 44
            Width = 57
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object dbeSerie: TDBEdit
            Left = 212
            Top = 44
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object LookFornitoreCod: TDBLookupComboBox
            Left = 92
            Top = 72
            Width = 73
            Height = 21
            TabOrder = 6
          end
          object LookFornitoreDescr: TDBLookupComboBox
            Left = 168
            Top = 72
            Width = 273
            Height = 21
            TabOrder = 7
          end
          object dbeIndir: TDBEdit
            Left = 92
            Top = 100
            Width = 349
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 8
          end
          object LookNostrDepCod: TDBLookupComboBox
            Left = 92
            Top = 128
            Width = 73
            Height = 21
            TabOrder = 9
          end
          object LookNostrDepDescr: TDBLookupComboBox
            Left = 168
            Top = 128
            Width = 273
            Height = 21
            TabOrder = 10
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Sconti / Pagamenti'
        ImageIndex = 1
        object pa2: TPanel
          Left = 0
          Top = 0
          Width = 702
          Height = 161
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object laMoneta: TLabel
            Left = 50
            Top = 20
            Width = 36
            Height = 13
            Caption = 'Moneta'
          end
          object laPagamento: TLabel
            Left = 36
            Top = 84
            Width = 50
            Height = 13
            Caption = 'Pagamenti'
          end
          object laSconto: TLabel
            Left = 52
            Top = 52
            Width = 34
            Height = 13
            Caption = 'Sconto'
          end
          object laPIUTraSconti: TLabel
            Left = 156
            Top = 52
            Width = 18
            Height = 13
            Caption = '  +  '
          end
          object laImportoSconto: TLabel
            Left = 244
            Top = 52
            Width = 70
            Height = 13
            Caption = 'Importo sconto'
          end
          object LookMonetaCod: TDBLookupComboBox
            Left = 92
            Top = 16
            Width = 61
            Height = 21
            TabOrder = 0
          end
          object LookMonetaDescr: TDBLookupComboBox
            Left = 156
            Top = 16
            Width = 185
            Height = 21
            TabOrder = 1
          end
          object LookPagCod: TDBLookupComboBox
            Left = 92
            Top = 80
            Width = 61
            Height = 21
            TabOrder = 2
          end
          object LookPagDescr: TDBLookupComboBox
            Left = 156
            Top = 80
            Width = 185
            Height = 21
            TabOrder = 3
          end
          object dbeSconto1: TDBEdit
            Left = 92
            Top = 48
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object dbeSconto2: TDBEdit
            Left = 176
            Top = 48
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object dbeImportoSconto: TDBEdit
            Left = 320
            Top = 48
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
          end
        end
      end
      object tabs3: TTabSheet
        Caption = 'Spese'
        ImageIndex = 2
        object pa3: TPanel
          Left = 0
          Top = 0
          Width = 702
          Height = 161
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object laBolli: TLabel
            Left = 64
            Top = 20
            Width = 19
            Height = 13
            Caption = 'Bolli'
          end
          object laAccessor: TLabel
            Left = 32
            Top = 52
            Width = 52
            Height = 13
            Caption = 'Accessorie'
          end
          object laIncasso: TLabel
            Left = 232
            Top = 20
            Width = 37
            Height = 13
            Caption = 'Incasso'
          end
          object laImballo: TLabel
            Left = 236
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Imballo'
          end
          object laSpediz: TLabel
            Left = 452
            Top = 20
            Width = 52
            Height = 13
            Caption = 'Spedizione'
          end
          object laContrass: TLabel
            Left = 460
            Top = 52
            Width = 44
            Height = 13
            Caption = 'Contrass.'
          end
          object dbeBolli: TDBEdit
            Left = 92
            Top = 16
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object dbeAccessor: TDBEdit
            Left = 92
            Top = 48
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object dbeImballo: TDBEdit
            Left = 276
            Top = 48
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object dbeIncasso: TDBEdit
            Left = 276
            Top = 16
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object dbeContras: TDBEdit
            Left = 512
            Top = 48
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object dbeSpediz: TDBEdit
            Left = 512
            Top = 16
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
        end
      end
      object tabs4: TTabSheet
        Caption = 'Trasporti / Nr. Colli'
        ImageIndex = 3
        object pa4: TPanel
          Left = 0
          Top = 0
          Width = 702
          Height = 161
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object laPorto: TLabel
            Left = 60
            Top = 20
            Width = 25
            Height = 13
            Caption = 'Porto'
          end
          object laCauMag: TLabel
            Left = 12
            Top = 48
            Width = 74
            Height = 13
            Caption = 'Causale spediz.'
          end
          object laNrColli: TLabel
            Left = 48
            Top = 76
            Width = 36
            Height = 13
            Caption = 'Nr. Colli'
          end
          object lookPortoCod: TDBLookupComboBox
            Left = 92
            Top = 16
            Width = 61
            Height = 21
            TabOrder = 0
          end
          object LookPortoDescr: TDBLookupComboBox
            Left = 156
            Top = 16
            Width = 185
            Height = 21
            TabOrder = 1
          end
          object LookCauMagCod: TDBLookupComboBox
            Left = 92
            Top = 44
            Width = 61
            Height = 21
            TabOrder = 2
          end
          object LookCauMagDescr: TDBLookupComboBox
            Left = 156
            Top = 44
            Width = 185
            Height = 21
            TabOrder = 3
          end
          object dbeNrColl: TDBEdit
            Left = 92
            Top = 72
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
        end
      end
      object tabs5: TTabSheet
        Caption = 'Altri Dati'
        ImageIndex = 4
        object pa5: TPanel
          Left = 0
          Top = 0
          Width = 702
          Height = 161
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object laBancaForn: TLabel
            Left = 11
            Top = 20
            Width = 72
            Height = 13
            Caption = 'Banca fornitore'
          end
          object laListino: TLabel
            Left = 53
            Top = 48
            Width = 30
            Height = 13
            Caption = 'Listino'
          end
          object laAltraDest: TLabel
            Left = 36
            Top = 76
            Width = 47
            Height = 13
            Caption = 'Altra dest.'
          end
          object LookBancaFornCod: TDBLookupComboBox
            Left = 92
            Top = 16
            Width = 61
            Height = 21
            TabOrder = 0
          end
          object LookBancaFornDescr: TDBLookupComboBox
            Left = 156
            Top = 16
            Width = 185
            Height = 21
            TabOrder = 1
          end
          object LookListinoCod: TDBLookupComboBox
            Left = 92
            Top = 44
            Width = 61
            Height = 21
            TabOrder = 2
          end
          object LookListinoDescr: TDBLookupComboBox
            Left = 156
            Top = 44
            Width = 185
            Height = 21
            TabOrder = 3
          end
          object LookAltraDestCod: TDBLookupComboBox
            Left = 92
            Top = 72
            Width = 61
            Height = 21
            TabOrder = 4
          end
          object LookAltraDestDescr: TDBLookupComboBox
            Left = 156
            Top = 72
            Width = 185
            Height = 21
            TabOrder = 5
          end
        end
      end
    end
  end
  object paGrid: TPanel
    Left = 0
    Top = 237
    Width = 714
    Height = 127
    Align = alClient
    Caption = 'paGrid'
    TabOrder = 3
    object pctrlRighe: TPageControl
      Left = 1
      Top = 1
      Width = 712
      Height = 125
      ActivePage = tabs24
      Align = alClient
      TabOrder = 0
      object tabs21: TTabSheet
        Caption = 'Rige'
        object paRighe: TPanel
          Left = 0
          Top = 0
          Width = 704
          Height = 97
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgRighe: TDBGrid
            Left = 1
            Top = 1
            Width = 702
            Height = 95
            Align = alClient
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
      object tabs22: TTabSheet
        Caption = 'Cast. IVA'
        ImageIndex = 1
        object paCastIVA: TPanel
          Left = 0
          Top = 0
          Width = 704
          Height = 97
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbrCastIVA: TDBGrid
            Left = 1
            Top = 1
            Width = 702
            Height = 95
            Align = alClient
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
      object tabs23: TTabSheet
        Caption = 'Contabili'
        ImageIndex = 2
        object paContabili: TPanel
          Left = 0
          Top = 0
          Width = 704
          Height = 97
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label49: TLabel
            Left = 48
            Top = 96
            Width = 52
            Height = 13
            Caption = 'Spedizione'
          end
          object Label40: TLabel
            Left = 368
            Top = 96
            Width = 87
            Height = 13
            Caption = 'Attività/Subattività'
          end
          object Label50: TLabel
            Left = 560
            Top = 96
            Width = 17
            Height = 13
            Caption = '  /  '
          end
          object DBLookupComboBox25: TDBLookupComboBox
            Left = 104
            Top = 92
            Width = 61
            Height = 21
            TabOrder = 0
          end
          object DBLookupComboBox26: TDBLookupComboBox
            Left = 168
            Top = 92
            Width = 185
            Height = 21
            TabOrder = 1
          end
          object gbCodIVASpese: TGroupBox
            Left = 4
            Top = 1
            Width = 689
            Height = 88
            Caption = 'Codice IVA Spese:'
            TabOrder = 2
            object Label46: TLabel
              Left = 74
              Top = 16
              Width = 19
              Height = 13
              Caption = 'Bolli'
            end
            object Label43: TLabel
              Left = 56
              Top = 40
              Width = 37
              Height = 13
              Caption = 'Incasso'
            end
            object Label44: TLabel
              Left = 60
              Top = 64
              Width = 33
              Height = 13
              Caption = 'Imballo'
            end
            object Label47: TLabel
              Left = 372
              Top = 64
              Width = 52
              Height = 13
              Caption = 'Spedizione'
            end
            object Label48: TLabel
              Left = 372
              Top = 40
              Width = 52
              Height = 13
              Caption = 'Accessorie'
            end
            object Label45: TLabel
              Left = 360
              Top = 16
              Width = 65
              Height = 13
              Caption = 'Contrassegno'
            end
            object DBLookupComboBox20: TDBLookupComboBox
              Left = 100
              Top = 12
              Width = 61
              Height = 21
              TabOrder = 0
            end
            object DBLookupComboBox19: TDBLookupComboBox
              Left = 164
              Top = 12
              Width = 185
              Height = 21
              TabOrder = 1
            end
            object DBLookupComboBox24: TDBLookupComboBox
              Left = 100
              Top = 60
              Width = 61
              Height = 21
              TabOrder = 2
            end
            object DBLookupComboBox22: TDBLookupComboBox
              Left = 100
              Top = 36
              Width = 61
              Height = 21
              TabOrder = 3
            end
            object DBLookupComboBox21: TDBLookupComboBox
              Left = 164
              Top = 36
              Width = 185
              Height = 21
              TabOrder = 4
            end
            object DBLookupComboBox23: TDBLookupComboBox
              Left = 164
              Top = 60
              Width = 185
              Height = 21
              TabOrder = 5
            end
            object DBLookupComboBox27: TDBLookupComboBox
              Left = 428
              Top = 12
              Width = 61
              Height = 21
              TabOrder = 6
            end
            object DBLookupComboBox28: TDBLookupComboBox
              Left = 428
              Top = 36
              Width = 61
              Height = 21
              TabOrder = 7
            end
            object DBLookupComboBox29: TDBLookupComboBox
              Left = 428
              Top = 60
              Width = 61
              Height = 21
              TabOrder = 8
            end
            object DBLookupComboBox30: TDBLookupComboBox
              Left = 488
              Top = 60
              Width = 185
              Height = 21
              TabOrder = 9
            end
            object DBLookupComboBox31: TDBLookupComboBox
              Left = 488
              Top = 36
              Width = 185
              Height = 21
              TabOrder = 10
            end
            object DBLookupComboBox32: TDBLookupComboBox
              Left = 488
              Top = 12
              Width = 185
              Height = 21
              TabOrder = 11
            end
          end
          object DBLookupComboBox33: TDBLookupComboBox
            Left = 464
            Top = 92
            Width = 93
            Height = 21
            TabOrder = 3
          end
          object DBLookupComboBox34: TDBLookupComboBox
            Left = 584
            Top = 92
            Width = 93
            Height = 21
            TabOrder = 4
          end
        end
      end
      object tabs24: TTabSheet
        Caption = 'Altro'
        ImageIndex = 3
        object paAltro: TPanel
          Left = 0
          Top = 0
          Width = 704
          Height = 97
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label51: TLabel
            Left = 54
            Top = 40
            Width = 85
            Height = 13
            Caption = 'Causale Collegata'
          end
          object Label52: TLabel
            Left = 47
            Top = 12
            Width = 92
            Height = 13
            Caption = 'Causale Magazzino'
          end
          object Label53: TLabel
            Left = 60
            Top = 68
            Width = 79
            Height = 13
            Caption = 'Mezzo Trasporto'
          end
          object Label54: TLabel
            Left = 428
            Top = 12
            Width = 32
            Height = 13
            Caption = 'Report'
          end
          object DBLookupComboBox35: TDBLookupComboBox
            Left = 144
            Top = 36
            Width = 61
            Height = 21
            TabOrder = 0
          end
          object DBLookupComboBox36: TDBLookupComboBox
            Left = 208
            Top = 36
            Width = 185
            Height = 21
            TabOrder = 1
          end
          object DBLookupComboBox37: TDBLookupComboBox
            Left = 144
            Top = 8
            Width = 61
            Height = 21
            TabOrder = 2
          end
          object DBLookupComboBox38: TDBLookupComboBox
            Left = 208
            Top = 8
            Width = 185
            Height = 21
            TabOrder = 3
          end
          object DBLookupComboBox39: TDBLookupComboBox
            Left = 144
            Top = 64
            Width = 61
            Height = 21
            TabOrder = 4
          end
          object DBLookupComboBox40: TDBLookupComboBox
            Left = 208
            Top = 64
            Width = 185
            Height = 21
            TabOrder = 5
          end
          object BitBtn1: TBitBtn
            Left = 600
            Top = 8
            Width = 21
            Height = 21
            Caption = '...'
            TabOrder = 6
          end
          object DBEdit31: TDBEdit
            Left = 468
            Top = 8
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object DBCheckBox1: TDBCheckBox
            Left = 468
            Top = 40
            Width = 145
            Height = 17
            Caption = 'Accorpa Righe in Stampa'
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 468
            Top = 64
            Width = 117
            Height = 17
            Caption = 'Stampa Note Cliente'
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
    end
  end
end
