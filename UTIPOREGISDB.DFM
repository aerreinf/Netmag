object fTipoRegisDB: TfTipoRegisDB
  Left = 239
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Tipo Registratore'
  ClientHeight = 125
  ClientWidth = 386
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
    Width = 386
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTipoRegistratore: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodPub.dsoTab_Tipo_Registratore
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 386
    Height = 84
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
      Left = 16
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 144
      Top = 20
      Width = 28
      Height = 13
      Caption = 'Driver'
      Enabled = False
      Visible = False
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodPub.dsoTab_Tipo_Registratore
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 80
      Top = 48
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Tipo_Registratore
      TabOrder = 1
    end
    object dbeDriver: TDBEdit
      Left = 208
      Top = 16
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodPub.dsoTab_Tipo_Registratore
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
end
