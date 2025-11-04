object fProvDB: TfProvDB
  Left = 222
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Province'
  ClientHeight = 135
  ClientWidth = 487
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
    Width = 487
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Prov: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodPub.dsoTab_Province
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 487
    Height = 94
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 104
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Regione'
    end
    object Label2: TLabel
      Left = 316
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Sigla'
    end
    object Label3: TLabel
      Left = 12
      Top = 44
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laProvID: TLabel
      Left = 12
      Top = 16
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object LookRegione: TDBLookupComboBox
      Left = 156
      Top = 12
      Width = 145
      Height = 21
      DataField = 'REGIONE_ID'
      DataSource = dmodPub.dsoTab_Province
      KeyField = 'ID_REGIONE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Regioni
      TabOrder = 1
      OnKeyPress = LookRegioneKeyPress
    end
    object dbeSigla: TDBEdit
      Left = 356
      Top = 12
      Width = 121
      Height = 21
      DataField = 'SIGLA'
      DataSource = dmodPub.dsoTab_Province
      TabOrder = 2
      OnKeyPress = dbeSiglaKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 8
      Top = 60
      Width = 469
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Province
      TabOrder = 3
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeID_Prov: TDBEdit
      Left = 32
      Top = 12
      Width = 61
      Height = 21
      DataField = 'ID_PROVINCIA'
      DataSource = dmodPub.dsoTab_Province
      TabOrder = 0
      OnKeyPress = dbeID_ProvKeyPress
    end
  end
end
