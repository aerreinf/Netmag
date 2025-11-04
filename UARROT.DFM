inherited fArrot: TfArrot
  Left = 231
  Top = 177
  Caption = 'Gestione Listini'
  ClientHeight = 190
  ClientWidth = 343
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 343
    Height = 163
    object laCodice: TLabel
      Left = 344
      Top = 4
      Width = 50
      Height = 16
      Caption = 'Codice'
      Visible = False
    end
    object laDescr: TLabel
      Left = 316
      Top = 20
      Width = 146
      Height = 16
      Caption = 'Tipo arrotondamento'
      Visible = False
    end
    object Label1: TLabel
      Left = 288
      Top = 68
      Width = 52
      Height = 16
      Caption = 'Moneta'
      Visible = False
    end
    object laImp1: TLabel
      Left = 24
      Top = 12
      Width = 86
      Height = 16
      Caption = 'Listino Base'
    end
    object laImp2: TLabel
      Left = 52
      Top = 36
      Width = 58
      Height = 16
      Caption = 'Listino 1'
    end
    object laImp3: TLabel
      Left = 52
      Top = 60
      Width = 58
      Height = 16
      Caption = 'Listino 2'
    end
    object laImp4: TLabel
      Left = 52
      Top = 84
      Width = 58
      Height = 16
      Caption = 'Listino 3'
    end
    object laImp5: TLabel
      Left = 52
      Top = 108
      Width = 58
      Height = 16
      Caption = 'Listino 4'
    end
    object laImp6: TLabel
      Left = 52
      Top = 132
      Width = 58
      Height = 16
      Caption = 'Listino 5'
    end
    object laArr1: TLabel
      Left = 280
      Top = 92
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object laArr2: TLabel
      Left = 280
      Top = 116
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object laArr3: TLabel
      Left = 280
      Top = 140
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object laArr4: TLabel
      Left = 280
      Top = 164
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object laArr5: TLabel
      Left = 280
      Top = 188
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object laArr6: TLabel
      Left = 280
      Top = 212
      Width = 81
      Height = 16
      Caption = 'arrotonda a'
      Visible = False
    end
    object Label2: TLabel
      Left = 216
      Top = 11
      Width = 14
      Height = 16
      Caption = '%'
    end
    object Label3: TLabel
      Left = 216
      Top = 35
      Width = 14
      Height = 16
      Caption = '%'
    end
    object Label4: TLabel
      Left = 216
      Top = 59
      Width = 14
      Height = 16
      Caption = '%'
    end
    object Label5: TLabel
      Left = 216
      Top = 83
      Width = 14
      Height = 16
      Caption = '%'
    end
    object Label6: TLabel
      Left = 216
      Top = 107
      Width = 14
      Height = 16
      Caption = '%'
    end
    object Label7: TLabel
      Left = 216
      Top = 131
      Width = 14
      Height = 16
      Caption = '%'
    end
    object dbeCodice: TDBEdit
      Left = 400
      Top = 0
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_ARROTONDAMENTO'
      DataSource = dsoArrot
      TabOrder = 0
      Visible = False
    end
    object LookTipoArrot: TDBLookupComboBox
      Left = 296
      Top = 40
      Width = 165
      Height = 22
      DataField = 'TIPO_ARROTONDAMENTO_ID'
      DataSource = dsoArrot
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoTipoArr
      TabOrder = 1
      Visible = False
    end
    object LookMonetaDescr: TDBLookupComboBox
      Left = 384
      Top = 64
      Width = 77
      Height = 22
      DataField = 'MONETA_ID'
      DataSource = dsoArrot
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dsoMonete
      TabOrder = 2
      Visible = False
    end
    object LookMoneta: TDBLookupComboBox
      Left = 344
      Top = 64
      Width = 37
      Height = 22
      DataField = 'MONETA_ID'
      DataSource = dsoArrot
      KeyField = 'ID_MONETE'
      ListField = 'SIMBOLO'
      ListSource = dsoMonete
      TabOrder = 3
      Visible = False
    end
    object dbeImp6: TDBEdit
      Left = 112
      Top = 128
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO6'
      DataSource = dsoArrot
      TabOrder = 14
    end
    object dbeImp5: TDBEdit
      Left = 112
      Top = 104
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO5'
      DataSource = dsoArrot
      TabOrder = 12
    end
    object dbeImp4: TDBEdit
      Left = 112
      Top = 80
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO4'
      DataSource = dsoArrot
      TabOrder = 10
    end
    object dbeImp3: TDBEdit
      Left = 112
      Top = 56
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO3'
      DataSource = dsoArrot
      TabOrder = 8
    end
    object dbeImp2: TDBEdit
      Left = 112
      Top = 32
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO2'
      DataSource = dsoArrot
      TabOrder = 6
    end
    object dbeImp1: TDBEdit
      Left = 112
      Top = 8
      Width = 96
      Height = 22
      CharCase = ecUpperCase
      DataField = 'IMPORTO1'
      DataSource = dsoArrot
      TabOrder = 4
    end
    object dbeArr6: TDBEdit
      Left = 372
      Top = 208
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ARR6'
      DataSource = dsoArrot
      TabOrder = 5
      Visible = False
    end
    object dbeArr5: TDBEdit
      Left = 372
      Top = 184
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ARR5'
      DataSource = dsoArrot
      TabOrder = 7
      Visible = False
    end
    object dbeArr4: TDBEdit
      Left = 372
      Top = 160
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ARR4'
      DataSource = dsoArrot
      TabOrder = 9
      Visible = False
    end
    object dbeArr3: TDBEdit
      Left = 372
      Top = 136
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ARR3'
      DataSource = dsoArrot
      TabOrder = 11
      Visible = False
    end
    object dbeArr2: TDBEdit
      Left = 372
      Top = 112
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ARR2'
      DataSource = dsoArrot
      TabOrder = 13
      Visible = False
    end
    object dbeArr1: TDBEdit
      Left = 372
      Top = 88
      Width = 89
      Height = 22
      DataField = 'ARR1'
      DataSource = dsoArrot
      TabOrder = 15
      Visible = False
    end
  end
  inherited tbarControl: TToolBar
    Width = 343
    ButtonWidth = 24
    inherited sep1: TToolButton
      Left = 29
    end
    inherited tbtnNuovo: TToolButton
      Left = 37
      Enabled = False
      Visible = False
    end
    inherited tbtnModifica: TToolButton
      Left = 61
    end
    inherited sep2: TToolButton
      Left = 85
    end
    inherited tbtnSalva: TToolButton
      Left = 93
    end
    inherited tbtnAnulla: TToolButton
      Left = 117
    end
    inherited sep3: TToolButton
      Left = 141
    end
    inherited tbtnElimina: TToolButton
      Left = 149
    end
    inherited sep4: TToolButton
      Left = 173
    end
    inherited tbtnPrev: TToolButton
      Left = 181
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      Left = 205
      OnClick = tbtnNextClick
    end
    inherited sep5: TToolButton
      Left = 229
    end
  end
  object dsoArrot: TDataSource
    AutoEdit = False
    DataSet = dmodPub.ibTab_Arrotondamenti
    Left = 248
    Top = 30
  end
  object dsoMonete: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 284
    Top = 14
  end
  object dsoTipoArr: TDataSource
    DataSet = dmodPub.ibTab_Tipo_Arrotondamento
    Left = 296
    Top = 46
  end
end
