object fMoneteDB: TfMoneteDB
  Left = 201
  Top = 95
  BorderStyle = bsDialog
  Caption = 'Monete'
  ClientHeight = 165
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnMonete: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Monete
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Aggiungere moneta'
        'Delete record'
        'Modificare moneta'
        'Salvare'
        'Cancel edit'
        'Refresh data')
      TabOrder = 0
      OnClick = dbnMoneteClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 448
    Height = 124
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 16
      Top = 44
      Width = 61
      Height = 13
      Caption = 'Descriozione'
    end
    object laSimbolo: TLabel
      Left = 132
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Simbolo'
    end
    object dbeID_Moneta: TDBEdit
      Left = 60
      Top = 12
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID_MONETE'
      DataSource = dmodPub.dsoTab_Monete
      TabOrder = 0
      OnKeyPress = dbeID_MonetaKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 40
      Width = 341
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Monete
      TabOrder = 3
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeSimbolo: TDBEdit
      Left = 176
      Top = 12
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SIMBOLO'
      DataSource = dmodPub.dsoTab_Monete
      TabOrder = 1
      OnKeyPress = dbeSimboloKeyPress
    end
    object cboxMoneta_UE: TCheckBox
      Left = 316
      Top = 13
      Width = 81
      Height = 17
      Caption = 'Moneta UE'
      TabOrder = 2
      OnClick = cboxMoneta_UEClick
      OnExit = cboxMoneta_UEExit
      OnKeyPress = cboxMoneta_UEKeyPress
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
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object laPosArr: TLabel
        Left = 280
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Posizione'
      end
      object LookTipoArrot_ID: TDBLookupComboBox
        Left = 44
        Top = 16
        Width = 229
        Height = 21
        DataField = 'TIPO_ARROTONDAMENTO_ID'
        DataSource = dmodPub.dsoTab_Monete
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dmodPub.dsoTab_Tipo_Arrotondamento
        TabOrder = 0
        OnKeyPress = LookTipoArrot_IDKeyPress
      end
      object dbePosizioneArr: TDBEdit
        Left = 332
        Top = 16
        Width = 77
        Height = 21
        CharCase = ecUpperCase
        DataField = 'POSIZIONE_ARROTONDAMENTO'
        DataSource = dmodPub.dsoTab_Monete
        TabOrder = 1
        OnKeyPress = dbePosizioneArrKeyPress
      end
    end
    object dbcboxMonetaUE: TDBCheckBox
      Left = 408
      Top = 12
      Width = 13
      Height = 17
      Caption = 'MonetaUE |invisible!'
      DataField = 'MONETA_UE'
      DataSource = dmodPub.dsoTab_Monete
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
end
