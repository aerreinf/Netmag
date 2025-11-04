object fNazioniDB: TfNazioniDB
  Left = 147
  Top = 121
  BorderStyle = bsDialog
  Caption = 'Nazioni'
  ClientHeight = 196
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Nazioni: TDBNavigator
      Left = 10
      Top = 10
      Width = 276
      Height = 31
      DataSource = dmodPub.dsoTab_Nazioni
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_NazioniClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 50
    Width = 592
    Height = 146
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 20
      Top = 25
      Width = 43
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 167
      Top = 25
      Width = 71
      Height = 16
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 20
      Top = 64
      Width = 45
      Height = 16
      Caption = 'Moneta'
    end
    object Label2: TLabel
      Left = 290
      Top = 64
      Width = 86
      Height = 16
      Caption = 'Codice Paese'
    end
    object Label3: TLabel
      Left = 20
      Top = 103
      Width = 56
      Height = 16
      Caption = 'Prov. ISO'
    end
    object Label4: TLabel
      Left = 290
      Top = 103
      Width = 164
      Height = 16
      Caption = 'Numero caratteri Partita IVA'
    end
    object dbeCodice: TDBEdit
      Left = 74
      Top = 20
      Width = 75
      Height = 24
      DataField = 'ID_NAZIONE'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 246
      Top = 20
      Width = 321
      Height = 24
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookMoneta: TDBLookupComboBox
      Left = 94
      Top = 59
      Width = 178
      Height = 24
      DataField = 'MONETA_ID'
      DataSource = dmodPub.dsoTab_Nazioni
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Monete
      TabOrder = 2
      OnKeyPress = LookMonetaKeyPress
    end
    object cboxMembroCE: TCheckBox
      Left = 468
      Top = 60
      Width = 99
      Height = 21
      Alignment = taLeftJustify
      Caption = 'Membro CE'
      TabOrder = 4
      OnClick = cboxMembroCEClick
      OnExit = cboxMembroCEExit
      OnKeyPress = cboxMembroCEKeyPress
    end
    object dbeCodPaese: TDBEdit
      Left = 379
      Top = 59
      Width = 75
      Height = 24
      DataField = 'CODICE_PAESE'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 3
      OnKeyPress = dbeCodPaeseKeyPress
    end
    object dbeProvISO: TDBEdit
      Left = 94
      Top = 98
      Width = 178
      Height = 24
      DataField = 'PROVINCIA_ISO'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 5
      OnKeyPress = dbeProvISOKeyPress
    end
    object dbeNcarPartIVA: TDBEdit
      Left = 473
      Top = 98
      Width = 94
      Height = 24
      DataField = 'NUMB_CHAR_PARTITA_IVA'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 6
      OnKeyPress = dbeNcarPartIVAKeyPress
    end
    object dbcboxMembroCE: TDBCheckBox
      Left = 571
      Top = 59
      Width = 21
      Height = 21
      Caption = 'dbcboxMembroCE'
      DataField = 'MEMBRO_CEE'
      DataSource = dmodPub.dsoTab_Nazioni
      TabOrder = 7
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
end
