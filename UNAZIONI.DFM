inherited fNazioni: TfNazioni
  Left = 221
  Top = 193
  Caption = 'Nazioni'
  ClientHeight = 154
  ClientWidth = 531
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 531
    Height = 127
    object laCodice: TLabel
      Left = 16
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 144
      Top = 20
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 52
      Height = 16
      Caption = 'Moneta'
    end
    object Label3: TLabel
      Left = 16
      Top = 84
      Width = 66
      Height = 16
      Caption = 'Prov. ISO'
    end
    object Label4: TLabel
      Left = 236
      Top = 84
      Width = 193
      Height = 16
      Caption = 'Numero caratteri Partita IVA'
    end
    object Label2: TLabel
      Left = 236
      Top = 52
      Width = 99
      Height = 16
      Caption = 'Codice Paese'
    end
    object dbeCodice: TDBEdit
      Left = 72
      Top = 16
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_NAZIONE'
      DataSource = dsoNazioni
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 236
      Top = 16
      Width = 277
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoNazioni
      TabOrder = 1
    end
    object dbeProvISO: TDBEdit
      Left = 84
      Top = 80
      Width = 145
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PROVINCIA_ISO'
      DataSource = dsoNazioni
      TabOrder = 2
    end
    object dbeCodPaese: TDBEdit
      Left = 340
      Top = 48
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE_PAESE'
      DataSource = dsoNazioni
      TabOrder = 3
    end
    object dbcboxMembroCE: TDBCheckBox
      Left = 408
      Top = 52
      Width = 101
      Height = 17
      Caption = 'Membro CE'
      DataField = 'MEMBRO_CEE'
      DataSource = dsoNazioni
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbeNcarPartIVA: TDBEdit
      Left = 436
      Top = 80
      Width = 77
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NUMB_CHAR_PARTITA_IVA'
      DataSource = dsoNazioni
      TabOrder = 5
    end
    object edMoneta: TEdit
      Left = 84
      Top = 48
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 6
      OnExit = edMonetaExit
    end
    object bbLookMoneta: TBitBtn
      Left = 208
      Top = 48
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 7
      OnClick = bbLookMonetaClick
    end
    object dbeMoneta: TDBEdit
      Left = 72
      Top = 48
      Width = 9
      Height = 22
      CharCase = ecUpperCase
      DataField = 'MONETA_ID'
      DataSource = dsoNazioni
      TabOrder = 8
      Visible = False
      OnChange = dbeMonetaChange
    end
  end
  inherited tbarControl: TToolBar
    Width = 531
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoNazioni: TDataSource
    DataSet = dmodPub.ibTab_Nazioni
    Left = 352
    Top = 2
  end
end
