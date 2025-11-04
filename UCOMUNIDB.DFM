object fComuniDB: TfComuniDB
  Left = 183
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Comuni'
  ClientHeight = 127
  ClientWidth = 452
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
    Width = 452
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Comuni: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Comuni
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 452
    Height = 86
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object laProvincia: TLabel
      Left = 12
      Top = 52
      Width = 44
      Height = 13
      Caption = 'Provincia'
    end
    object laCodCom: TLabel
      Left = 156
      Top = 52
      Width = 75
      Height = 13
      Caption = 'Codice Comune'
    end
    object laDescr: TLabel
      Left = 88
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laCAP: TLabel
      Left = 344
      Top = 52
      Width = 21
      Height = 13
      Caption = 'CAP'
    end
    object laID_Comune: TLabel
      Left = 12
      Top = 20
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object LookProv: TDBLookupComboBox
      Left = 68
      Top = 48
      Width = 73
      Height = 21
      DataField = 'PROVINCIA_ID'
      DataSource = dmodPub.dsoTab_Comuni
      KeyField = 'ID_PROVINCIA'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Province
      TabOrder = 2
      OnKeyPress = LookProvKeyPress
    end
    object dbeCodCom: TDBEdit
      Left = 240
      Top = 48
      Width = 85
      Height = 21
      DataField = 'CODICE_COMUNE'
      DataSource = dmodPub.dsoTab_Comuni
      TabOrder = 3
      OnKeyPress = dbeCodComKeyPress
    end
    object dbeCAP: TDBEdit
      Left = 376
      Top = 48
      Width = 61
      Height = 21
      DataField = 'CAP'
      DataSource = dmodPub.dsoTab_Comuni
      TabOrder = 4
      OnKeyPress = dbeCAPKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 152
      Top = 16
      Width = 285
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Comuni
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeID_Comune: TDBEdit
      Left = 32
      Top = 16
      Width = 49
      Height = 21
      DataField = 'ID_COMUNE'
      DataSource = dmodPub.dsoTab_Comuni
      TabOrder = 0
      OnKeyPress = dbeID_ComuneKeyPress
    end
  end
end
