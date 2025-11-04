object fArrotDB: TfArrotDB
  Left = 200
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Arrotondamento'
  ClientHeight = 286
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    object dbnTab_Arrotondamento: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Arrotondamenti
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 428
    Height = 245
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 16
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 136
      Top = 20
      Width = 98
      Height = 13
      Caption = 'Tipo arrotondamento'
    end
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 36
      Height = 13
      Caption = 'Moneta'
    end
    object laImp1: TLabel
      Left = 16
      Top = 92
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laArr1: TLabel
      Left = 252
      Top = 92
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object laArr2: TLabel
      Left = 252
      Top = 116
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object laImp2: TLabel
      Left = 16
      Top = 116
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laArr4: TLabel
      Left = 252
      Top = 164
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object laImp4: TLabel
      Left = 16
      Top = 164
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laImp3: TLabel
      Left = 16
      Top = 140
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laArr3: TLabel
      Left = 252
      Top = 140
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object laArr6: TLabel
      Left = 252
      Top = 212
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object laImp6: TLabel
      Left = 16
      Top = 212
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laImp5: TLabel
      Left = 16
      Top = 188
      Width = 68
      Height = 13
      Caption = 'Fino al importo'
    end
    object laArr5: TLabel
      Left = 252
      Top = 188
      Width = 54
      Height = 13
      Caption = 'arrotonda a'
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      DataField = 'ID_ARROTONDAMENTO'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object LookTipoArrot: TDBLookupComboBox
      Left = 244
      Top = 16
      Width = 173
      Height = 21
      DataField = 'TIPO_ARROTONDAMENTO_ID'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Tipo_Arrotondamento
      TabOrder = 1
      OnKeyPress = LookTipoArrotKeyPress
    end
    object LookMoneta: TDBLookupComboBox
      Left = 60
      Top = 48
      Width = 81
      Height = 21
      DataField = 'MONETA_ID'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      KeyField = 'ID_MONETE'
      ListField = 'SIMBOLO'
      ListSource = dmodPub.dsoTab_Monete
      TabOrder = 2
      OnKeyPress = LookMonetaKeyPress
    end
    object dbeImp1: TDBEdit
      Left = 100
      Top = 88
      Width = 137
      Height = 21
      DataField = 'IMPORTO1'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 4
      OnKeyPress = dbeImp1KeyPress
    end
    object dbeArr1: TDBEdit
      Left = 324
      Top = 88
      Width = 89
      Height = 21
      DataField = 'ARR1'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 5
      OnKeyPress = dbeArr1KeyPress
    end
    object dbeImp2: TDBEdit
      Left = 100
      Top = 112
      Width = 137
      Height = 21
      DataField = 'IMPORTO2'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 6
      OnKeyPress = dbeImp2KeyPress
    end
    object dbeArr2: TDBEdit
      Left = 324
      Top = 112
      Width = 89
      Height = 21
      DataField = 'ARR2'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 7
      OnKeyPress = dbeArr2KeyPress
    end
    object dbeImp4: TDBEdit
      Left = 100
      Top = 160
      Width = 137
      Height = 21
      DataField = 'IMPORTO4'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 10
      OnKeyPress = dbeImp4KeyPress
    end
    object dbeImp3: TDBEdit
      Left = 100
      Top = 136
      Width = 137
      Height = 21
      DataField = 'IMPORTO3'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 8
      OnKeyPress = dbeImp3KeyPress
    end
    object dbeArr3: TDBEdit
      Left = 324
      Top = 136
      Width = 89
      Height = 21
      DataField = 'ARR3'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 9
      OnKeyPress = dbeArr3KeyPress
    end
    object dbeArr4: TDBEdit
      Left = 324
      Top = 160
      Width = 89
      Height = 21
      DataField = 'ARR4'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 11
      OnKeyPress = dbeArr4KeyPress
    end
    object dbeImp6: TDBEdit
      Left = 100
      Top = 208
      Width = 137
      Height = 21
      DataField = 'IMPORTO6'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 14
      OnKeyPress = dbeImp6KeyPress
    end
    object dbeImp5: TDBEdit
      Left = 100
      Top = 184
      Width = 137
      Height = 21
      DataField = 'IMPORTO5'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 12
      OnKeyPress = dbeImp5KeyPress
    end
    object dbeArr5: TDBEdit
      Left = 324
      Top = 184
      Width = 89
      Height = 21
      DataField = 'ARR5'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 13
      OnKeyPress = dbeArr5KeyPress
    end
    object dbeArr6: TDBEdit
      Left = 324
      Top = 208
      Width = 89
      Height = 21
      DataField = 'ARR6'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      TabOrder = 15
      OnKeyPress = dbeArr6KeyPress
    end
    object LookMonetaDescr: TDBLookupComboBox
      Left = 152
      Top = 48
      Width = 265
      Height = 21
      DataField = 'MONETA_ID'
      DataSource = dmodPub.dsoTab_Arrotondamenti
      KeyField = 'ID_MONETE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Monete
      TabOrder = 3
      OnKeyPress = LookMonetaDescrKeyPress
    end
  end
end
