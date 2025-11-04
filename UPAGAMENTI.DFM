inherited fPagamenti: TfPagamenti
  Left = 234
  Top = 123
  Caption = 'Pagamenti'
  ClientHeight = 347
  ClientWidth = 426
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 426
    Height = 320
    object laID_Comune: TLabel
      Left = 16
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 88
      Top = 20
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object Label2: TLabel
      Left = 4
      Top = 88
      Width = 115
      Height = 16
      Caption = 'Tipo pagamento'
    end
    object Label3: TLabel
      Left = 4
      Top = 116
      Width = 127
      Height = 16
      Caption = 'Importo prima rata'
    end
    object Label1: TLabel
      Left = 5
      Top = 195
      Width = 86
      Height = 16
      Caption = 'Numero rate'
    end
    object Label5: TLabel
      Left = 4
      Top = 282
      Width = 46
      Height = 16
      Caption = 'Spese'
    end
    object dbeCodice: TDBEdit
      Left = 12
      Top = 36
      Width = 65
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_PAGAMENTO'
      DataSource = dsoPagam
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 36
      Width = 317
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoPagam
      TabOrder = 1
    end
    object LookTipoPag: TDBLookupComboBox
      Left = 120
      Top = 84
      Width = 89
      Height = 22
      DataField = 'TIPO_PAGAMENTO'
      DataSource = dsoPagam
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoTipoPagam
      TabOrder = 2
    end
    object LookTipoPagDescr: TDBLookupComboBox
      Left = 211
      Top = 84
      Width = 209
      Height = 22
      DataField = 'TIPO_PAGAMENTO'
      DataSource = dsoPagam
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoTipoPagam
      TabOrder = 3
    end
    object dbePrimaRata: TDBEdit
      Left = 152
      Top = 112
      Width = 101
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CALCOLO_PRIMA_RATA'
      DataSource = dsoPagam
      TabOrder = 4
    end
    object dbcbGiorniComm: TDBCheckBox
      Left = 4
      Top = 140
      Width = 153
      Height = 17
      Caption = 'Giorni commerciali'
      DataField = 'GIORNI_COMMERCIALI'
      DataSource = dsoPagam
      Enabled = False
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbcbPersonRata: TDBCheckBox
      Left = 4
      Top = 164
      Width = 149
      Height = 17
      Caption = 'Personalizza rate'
      DataField = 'PERSONALIZZA'
      DataSource = dsoPagam
      Enabled = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbeNumRate: TDBEdit
      Left = 100
      Top = 192
      Width = 53
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NUMERO_RATE'
      DataSource = dsoPagam
      TabOrder = 7
    end
    object dbcbEsclSabat: TDBCheckBox
      Left = 5
      Top = 221
      Width = 120
      Height = 14
      Caption = 'Escludi sabati'
      DataField = 'ESC_SABATI'
      DataSource = dsoPagam
      Enabled = False
      TabOrder = 8
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbcbEsclFesta: TDBCheckBox
      Left = 5
      Top = 245
      Width = 172
      Height = 14
      Caption = 'Escludi altre festivit'#224
      DataField = 'ESC_FESTIVI'
      DataSource = dsoPagam
      Enabled = False
      TabOrder = 9
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbeSpese: TDBEdit
      Left = 56
      Top = 280
      Width = 109
      Height = 22
      CharCase = ecUpperCase
      DataField = 'SPESE'
      DataSource = dsoPagam
      TabOrder = 10
    end
    object gbScadenze: TGroupBox
      Left = 216
      Top = 144
      Width = 181
      Height = 129
      Caption = 'Scadenze'
      TabOrder = 11
      TabStop = True
      object Label4: TLabel
        Left = 16
        Top = 104
        Width = 94
        Height = 16
        Caption = 'Giorni 1a rata'
      end
      object dbragScadenze: TDBRadioGroup
        Left = 16
        Top = 16
        Width = 145
        Height = 77
        DataField = 'FINE_MESE'
        DataSource = dsoPagam
        Items.Strings = (
          'Fine mese'
          'Met'#224' mese'
          'Data documento')
        TabOrder = 0
        TabStop = True
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object dbeGiorn1rata: TDBEdit
        Left = 116
        Top = 100
        Width = 45
        Height = 22
        CharCase = ecUpperCase
        DataField = 'GIORNI_PRIMA_RATA'
        DataSource = dsoPagam
        TabOrder = 1
      end
    end
  end
  inherited tbarControl: TToolBar
    Width = 426
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoPagam: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 284
    Top = 2
  end
  object dsoTipoPagam: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Pagamento
    Left = 368
    Top = 65534
  end
end
