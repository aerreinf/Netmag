object fCatCliDB: TfCatCliDB
  Left = 200
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Categoria clienti'
  ClientHeight = 163
  ClientWidth = 495
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
    Width = 495
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Categoria_Cli: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Cat_Cli
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 495
    Height = 122
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laID: TLabel
      Left = 20
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 100
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laListino: TLabel
      Left = 20
      Top = 60
      Width = 30
      Height = 13
      Caption = 'Listino'
    end
    object dbeID: TDBEdit
      Left = 16
      Top = 28
      Width = 69
      Height = 21
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Cat_Cli
      TabOrder = 0
      OnKeyPress = dbeIDKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 96
      Top = 28
      Width = 381
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Cat_Cli
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookListinoCod: TDBLookupComboBox
      Left = 16
      Top = 76
      Width = 69
      Height = 21
      DataField = 'CODICE_LISTINO_ID'
      DataSource = dmodAz.dsoTab_Cat_Cli
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodAz.dsoTab_Listino
      TabOrder = 2
      OnKeyPress = LookListinoCodKeyPress
    end
    object LookListinoDescr: TDBLookupComboBox
      Left = 96
      Top = 76
      Width = 381
      Height = 21
      DataField = 'CODICE_LISTINO_ID'
      DataSource = dmodAz.dsoTab_Cat_Cli
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Listino
      TabOrder = 3
      OnKeyPress = LookListinoDescrKeyPress
    end
  end
end
