inherited fMonete: TfMonete
  Caption = 'Monete'
  ClientHeight = 167
  ClientWidth = 458
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 458
    Height = 138
    object laCodice: TLabel
      Left = 16
      Top = 16
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laSimbolo: TLabel
      Left = 132
      Top = 16
      Width = 58
      Height = 16
      Caption = 'Simbolo'
    end
    object laDescr: TLabel
      Left = 16
      Top = 44
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID_Moneta: TDBEdit
      Left = 72
      Top = 12
      Width = 49
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_MONETE'
      DataSource = dsoMonete
      TabOrder = 0
    end
    object dbeSimbolo: TDBEdit
      Left = 200
      Top = 12
      Width = 77
      Height = 22
      CharCase = ecUpperCase
      DataField = 'SIMBOLO'
      DataSource = dsoMonete
      TabOrder = 1
    end
    object dbcboxMonetaUE: TDBCheckBox
      Left = 332
      Top = 12
      Width = 101
      Height = 17
      Caption = 'Moneta UE'
      DataField = 'MONETA_UE'
      DataSource = dsoMonete
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object dbeDescr: TDBEdit
      Left = 112
      Top = 40
      Width = 321
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoMonete
      TabOrder = 3
    end
    object gboxArrotondamento: TGroupBox
      Left = 12
      Top = 64
      Width = 425
      Height = 49
      Caption = 'Arrotondamento'
      TabOrder = 4
      object laTipoArr: TLabel
        Left = 12
        Top = 20
        Width = 33
        Height = 16
        Caption = 'Tipo'
      end
      object laPosArr: TLabel
        Left = 280
        Top = 20
        Width = 69
        Height = 16
        Caption = 'Posizione'
      end
      object LookTipoArrot_ID: TDBLookupComboBox
        Left = 52
        Top = 16
        Width = 221
        Height = 22
        DataField = 'TIPO_ARROTONDAMENTO_ID'
        DataSource = dsoMonete
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoTipoArr
        TabOrder = 0
      end
      object dbePosizioneArr: TDBEdit
        Left = 364
        Top = 16
        Width = 45
        Height = 22
        CharCase = ecUpperCase
        DataField = 'POSIZIONE_ARROTONDAMENTO'
        DataSource = dsoMonete
        TabOrder = 1
      end
    end
  end
  inherited tbarControl: TToolBar
    Width = 458
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 248
    Top = 2
  end
  object dsoTipoArr: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Arrotondamento
    Left = 260
    Top = 2
  end
end
