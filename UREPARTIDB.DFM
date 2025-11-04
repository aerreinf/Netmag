object fRepartiDB: TfRepartiDB
  Left = 193
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Reparti'
  ClientHeight = 221
  ClientWidth = 449
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
    Width = 449
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Reparti: TDBNavigator
      Left = 8
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Reparti
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 449
    Height = 180
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object laCodice: TLabel
      Left = 12
      Top = 20
      Width = 37
      Height = 13
      Caption = 'Numero'
    end
    object laDescr: TLabel
      Left = 12
      Top = 56
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 16
      Top = 88
      Width = 53
      Height = 13
      Caption = 'Codice IVA'
    end
    object Label2: TLabel
      Left = 28
      Top = 136
      Width = 371
      Height = 37
      Caption = 'Sotto sviluppo: Default???'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 76
      Top = 16
      Width = 101
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID_NUMERO_REPARTO'
      DataSource = dmodAz.dsoTab_Reparti
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 76
      Top = 52
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Reparti
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookCodIVACod: TDBLookupComboBox
      Left = 76
      Top = 84
      Width = 77
      Height = 21
      DataField = 'CODICE_IVA_ID'
      DataSource = dmodAz.dsoTab_Reparti
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 2
      OnKeyPress = LookCodIVACodKeyPress
    end
    object LookCodIVADescr: TDBLookupComboBox
      Left = 164
      Top = 84
      Width = 265
      Height = 21
      DataField = 'CODICE_IVA_ID'
      DataSource = dmodAz.dsoTab_Reparti
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 3
      OnKeyPress = LookCodIVADescrKeyPress
    end
    object DBCheckBox1: TDBCheckBox
      Left = 80
      Top = 112
      Width = 17
      Height = 17
      Caption = 'Default'
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
end
