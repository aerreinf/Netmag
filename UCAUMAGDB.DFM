object fCauMagDB: TfCauMagDB
  Left = 244
  Top = 117
  BorderStyle = bsDialog
  Caption = 'Causali Magazzino'
  ClientHeight = 354
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_CauMag: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Cau_Mag
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_CauMagClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 446
    Height = 313
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object pctrlCauMag: TPageControl
      Left = 1
      Top = 95
      Width = 444
      Height = 217
      ActivePage = tabs1
      Align = alBottom
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = '- 1 -'
        object pa1: TPanel
          Left = 0
          Top = 0
          Width = 436
          Height = 186
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object Label3: TLabel
            Left = 316
            Top = 148
            Width = 97
            Height = 13
            Caption = ' Data Ultima Vendita'
          end
          object Label4: TLabel
            Left = 176
            Top = 152
            Width = 99
            Height = 13
            Caption = 'Ultimo Costo Acquisti'
          end
          object Label5: TLabel
            Left = 44
            Top = 152
            Width = 102
            Height = 13
            Caption = ' Data Ultimo Acquisto'
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 16
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Acquiti'
            Columns = 3
            DataField = 'QTA_ACQUISTI'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 152
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Fattur. Vendita'
            Columns = 3
            DataField = 'FATTURATO_VENDITA'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 288
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Vendita'
            Columns = 3
            DataField = 'QTA_VENDITA'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 16
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Acquiti'
            Columns = 3
            DataField = 'VAL_ACQUISTI'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 152
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Fattur. Acquito'
            Columns = 3
            DataField = 'FATTURATO_ACQUISTI'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 288
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Vendita'
            Columns = 3
            DataField = 'VAL_VENDITA'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object dbcbADataUltVen: TDBCheckBox
            Left = 296
            Top = 128
            Width = 73
            Height = 17
            Caption = 'Aggiorna'
            DataField = 'DATA_ULTIMA_VENDITA'
            DataSource = dmodAz.dsoTab_Cau_Mag
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcbAUltCostAcq: TDBCheckBox
            Left = 160
            Top = 132
            Width = 73
            Height = 17
            Caption = 'Aggiorna'
            DataField = 'COSTO_ULTIMO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbcbADataUltAcq: TDBCheckBox
            Left = 24
            Top = 132
            Width = 73
            Height = 17
            Caption = 'Aggiorna'
            DataField = 'DATA_ULTIMO_ACQUISTO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object tabs2: TTabSheet
        Caption = '- 2 -'
        ImageIndex = 1
        object pa2: TPanel
          Left = 0
          Top = 0
          Width = 436
          Height = 186
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object DBRadioGroup7: TDBRadioGroup
            Left = 16
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. altre Entrate'
            Columns = 3
            DataField = 'VAL_ALTRE_ENTRATE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 16
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. altre Entrate'
            Columns = 3
            DataField = 'QTA_ALTRE_ENTRATE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup9: TDBRadioGroup
            Left = 152
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. altre Uscite'
            Columns = 3
            DataField = 'QTA_ALTRE_USCITE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup10: TDBRadioGroup
            Left = 152
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. altre Uscite'
            Columns = 3
            DataField = 'VAL_ALTRE_USCITE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 288
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Giac. Iniz.'
            Columns = 3
            DataField = 'VAL_GIACENZA_INIZIALE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup12: TDBRadioGroup
            Left = 288
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Giac. Iniz.'
            Columns = 3
            DataField = 'QTA_GIACENZA_INIZIALE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
      object tabs3: TTabSheet
        Caption = '- 3 -'
        ImageIndex = 2
        object pa3: TPanel
          Left = 0
          Top = 0
          Width = 436
          Height = 186
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object DBRadioGroup13: TDBRadioGroup
            Left = 16
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Ordinato'
            Columns = 3
            DataField = 'VAL_ORDINATO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup14: TDBRadioGroup
            Left = 16
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Ordinato'
            Columns = 3
            DataField = 'QTA_ORDINATO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 152
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Reso Cliente'
            Columns = 3
            DataField = 'QTA_RESO_CLIENTE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 152
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Reso Cliente'
            Columns = 3
            DataField = 'VAL_RESO_CLIENTE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 288
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Reso Fornitore'
            Columns = 3
            DataField = 'VAL_RESO_FORNITORE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup18: TDBRadioGroup
            Left = 288
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Reso Fornitore'
            Columns = 3
            DataField = 'QTA_RESO_FORNITORE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
      object tabs4: TTabSheet
        Caption = '- 4 -'
        ImageIndex = 3
        object pa4: TPanel
          Left = 0
          Top = 0
          Width = 436
          Height = 186
          Align = alClient
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object DBRadioGroup19: TDBRadioGroup
            Left = 16
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Impegnato'
            Columns = 3
            DataField = 'VAL_IMPEGNATO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup20: TDBRadioGroup
            Left = 16
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Impegnato'
            Columns = 3
            DataField = 'QTA_IMPEGNATO'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup21: TDBRadioGroup
            Left = 152
            Top = 20
            Width = 129
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = 'Qta. Evasa Cliente'
            Columns = 3
            DataField = 'QTA_EVASA_CLIENTE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            ParentBiDiMode = False
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup22: TDBRadioGroup
            Left = 152
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Evasa Cliente'
            Columns = 3
            DataField = 'VAL_EVASO_CLIENTE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup23: TDBRadioGroup
            Left = 288
            Top = 72
            Width = 129
            Height = 45
            Caption = 'Val. Evasa Fornitore'
            Columns = 3
            DataField = 'VAL_EVASO_FORNITORE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object DBRadioGroup24: TDBRadioGroup
            Left = 288
            Top = 20
            Width = 129
            Height = 45
            Caption = 'Qta. Evasa Fornitore'
            Columns = 3
            DataField = 'QTA_EVASA_FORNITORE'
            DataSource = dmodAz.dsoTab_Cau_Mag
            Items.Strings = (
              ''
              '+'
              '-')
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
    end
    object pa0: TPanel
      Left = 0
      Top = 0
      Width = 445
      Height = 89
      BevelOuter = bvLowered
      Caption = 'pa0'
      Enabled = False
      TabOrder = 1
      object laCodice: TLabel
        Left = 16
        Top = 12
        Width = 33
        Height = 13
        Caption = 'Codice'
      end
      object Label2: TLabel
        Left = 12
        Top = 60
        Width = 68
        Height = 13
        Caption = 'Controcausale'
        Visible = False
      end
      object laDescr: TLabel
        Left = 84
        Top = 12
        Width = 55
        Height = 13
        Caption = 'Descrizione'
      end
      object laTipoArt: TLabel
        Left = 300
        Top = 12
        Width = 55
        Height = 13
        Caption = 'Controparte'
      end
      object dbeCodice: TDBEdit
        Left = 12
        Top = 28
        Width = 61
        Height = 21
        DataField = 'CODICE_CAUSALE'
        DataSource = dmodAz.dsoTab_Cau_Mag
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 56
        Width = 73
        Height = 21
        DataField = 'CONTROCAUSALE'
        DataSource = dmodAz.dsoTab_Cau_Mag
        TabOrder = 1
        Visible = False
      end
      object dbeDescr: TDBEdit
        Left = 76
        Top = 28
        Width = 213
        Height = 21
        DataField = 'DESCR_CAUSALE'
        DataSource = dmodAz.dsoTab_Cau_Mag
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 164
        Top = 56
        Width = 273
        Height = 21
        DataField = 'CONTROCAUSALE'
        DataSource = dmodAz.dsoTab_Cau_Mag
        TabOrder = 3
        Visible = False
      end
      object LookControParte: TDBLookupComboBox
        Left = 292
        Top = 28
        Width = 145
        Height = 21
        DataField = 'CONTROPARTE'
        DataSource = dmodAz.dsoTab_Cau_Mag
        TabOrder = 4
      end
    end
  end
end
