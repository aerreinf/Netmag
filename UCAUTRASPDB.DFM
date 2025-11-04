object fCauTraspDB: TfCauTraspDB
  Left = 239
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Causali di Trasporto'
  ClientHeight = 102
  ClientWidth = 544
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
    Width = 544
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnCau_Trasp: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Cau_Trasp
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 544
    Height = 61
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
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Cau_Trasp
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 321
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Cau_Trasp
      TabOrder = 1
    end
  end
end
