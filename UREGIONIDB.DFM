object fRegioniDB: TfRegioniDB
  Left = 239
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Regioni'
  ClientHeight = 98
  ClientWidth = 521
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
    Width = 521
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Regioni: TDBNavigator
      Left = 8
      Top = 8
      Width = 208
      Height = 25
      DataSource = dmodPub.dsoTab_Regioni
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 521
    Height = 57
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object laDescr: TLabel
      Left = 104
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object laID_reg: TLabel
      Left = 12
      Top = 20
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object dbeDescr: TDBEdit
      Left = 168
      Top = 16
      Width = 341
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Regioni
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeID_Regione: TDBEdit
      Left = 32
      Top = 16
      Width = 57
      Height = 21
      DataField = 'ID_REGIONE'
      DataSource = dmodPub.dsoTab_Regioni
      TabOrder = 0
      OnKeyPress = dbeID_RegioneKeyPress
    end
  end
end
