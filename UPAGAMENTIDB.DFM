object fPagamentiDB: TfPagamentiDB
  Left = 241
  Top = 119
  BorderStyle = bsDialog
  Caption = 'Pagamenti'
  ClientHeight = 355
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
    Width = 428
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Pagamenti: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Pagamenti
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_PagamentiClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 428
    Height = 314
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    object laDescr: TLabel
      Left = 88
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laID_Comune: TLabel
      Left = 16
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object Label1: TLabel
      Left = 17
      Top = 195
      Width = 58
      Height = 13
      Caption = 'Numero rate'
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 77
      Height = 13
      Caption = 'Tipo pagemento'
    end
    object Label3: TLabel
      Left = 16
      Top = 116
      Width = 84
      Height = 13
      Caption = 'Importo prima rata'
    end
    object Label5: TLabel
      Left = 16
      Top = 284
      Width = 30
      Height = 13
      Caption = 'Spese'
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 36
      Width = 317
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 1
    end
    object dbeID_Comune: TDBEdit
      Left = 12
      Top = 36
      Width = 65
      Height = 21
      DataField = 'ID_PAGAMENTO'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 0
    end
    object dbcbEsclSabat: TDBCheckBox
      Left = 17
      Top = 221
      Width = 96
      Height = 14
      Caption = 'Escludi sabati'
      DataField = 'ESC_SABATI'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbcbEsclFesta: TDBCheckBox
      Left = 17
      Top = 245
      Width = 118
      Height = 14
      Caption = 'Escludi altre festività'
      DataField = 'ESC_FESTIVI'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object LookTipoPag: TDBLookupComboBox
      Left = 120
      Top = 84
      Width = 81
      Height = 21
      DataField = 'TIPO_PAGAMENTO'
      DataSource = dmodAz.dsoTab_Pagamenti
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodPub.dsoTab_Tipo_Pagamento
      TabOrder = 4
    end
    object LookTipoPagDescr: TDBLookupComboBox
      Left = 208
      Top = 84
      Width = 193
      Height = 21
      DataField = 'TIPO_PAGAMENTO'
      DataSource = dmodAz.dsoTab_Pagamenti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Tipo_Pagamento
      TabOrder = 5
    end
    object dbeNumRate: TDBEdit
      Left = 88
      Top = 192
      Width = 53
      Height = 21
      DataField = 'NUMERO_RATE'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 6
    end
    object dbcbGiorniComm: TDBCheckBox
      Left = 16
      Top = 140
      Width = 113
      Height = 17
      Caption = 'Giorni commerciali'
      DataField = 'GIORNI_COMMERCIALI'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 7
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbcbPersonRata: TDBCheckBox
      Left = 16
      Top = 164
      Width = 105
      Height = 17
      Caption = 'Personalizza rate'
      DataField = 'PERSONALIZZA'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 8
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object gbScadenze: TGroupBox
      Left = 216
      Top = 144
      Width = 181
      Height = 129
      Caption = 'Scadenze'
      TabOrder = 9
      object Label4: TLabel
        Left = 28
        Top = 104
        Width = 63
        Height = 13
        Caption = 'Giorni 1a rata'
      end
      object dbragScadenze: TDBRadioGroup
        Left = 16
        Top = 16
        Width = 145
        Height = 77
        DataField = 'FINE_MESE'
        DataSource = dmodAz.dsoTab_Pagamenti
        Items.Strings = (
          'Fine mese'
          'Metà mese'
          'Data documento')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object dbeGiorn1rata: TDBEdit
        Left = 104
        Top = 100
        Width = 45
        Height = 21
        DataField = 'GIORNI_PRIMA_RATA'
        DataSource = dmodAz.dsoTab_Pagamenti
        TabOrder = 1
      end
    end
    object dbeSpese: TDBEdit
      Left = 64
      Top = 280
      Width = 121
      Height = 21
      DataField = 'SPESE'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 10
    end
    object dbePrimaRata: TDBEdit
      Left = 120
      Top = 112
      Width = 169
      Height = 21
      DataField = 'CALCOLO_PRIMA_RATA'
      DataSource = dmodAz.dsoTab_Pagamenti
      TabOrder = 11
    end
  end
end
