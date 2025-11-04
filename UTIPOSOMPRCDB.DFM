object fTipoSommaPrvDB: TfTipoSommaPrvDB
  Left = 239
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Tipo Somma Provvigione'
  ClientHeight = 141
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Tipo_Somma_Provvigione: TDBNavigator
      Left = 10
      Top = 10
      Width = 276
      Height = 31
      DataSource = dmodAz.dsoTab_Tipo_Provvigione
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 50
    Width = 506
    Height = 91
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 20
      Top = 19
      Width = 43
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 22
      Top = 43
      Width = 71
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 107
      Top = 14
      Width = 75
      Height = 24
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Tipo_Provvigione
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 108
      Top = 42
      Width = 381
      Height = 24
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Tipo_Provvigione
      TabOrder = 1
    end
  end
end
