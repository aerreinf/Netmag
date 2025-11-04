object fDepositiDB: TfDepositiDB
  Left = 257
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Depositi'
  ClientHeight = 150
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Dep: TDBNavigator
      Left = 8
      Top = 8
      Width = 270
      Height = 25
      DataSource = dmodAz.dsoTab_Depositi
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_DepClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 483
    Height = 109
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
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 82
      Height = 13
      Caption = 'Raggruppamento'
    end
    object dbeCodice: TDBEdit
      Left = 60
      Top = 16
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Depositi
      TabOrder = 0
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 16
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Depositi
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object LookRaggrupp: TDBLookupComboBox
      Left = 112
      Top = 48
      Width = 81
      Height = 21
      DataField = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      DataSource = dmodAz.dsoTab_Depositi
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodAz.dsoTab_RaggDep
      TabOrder = 2
      OnKeyPress = LookRaggruppKeyPress
    end
    object cboxMerce: TCheckBox
      Left = 16
      Top = 78
      Width = 110
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Merce di proprieta'
      TabOrder = 4
      OnClick = cboxMerceClick
      OnExit = cboxMerceExit
      OnKeyPress = cboxMerceKeyPress
    end
    object dbcboxMerce: TDBCheckBox
      Left = 136
      Top = 80
      Width = 17
      Height = 15
      Caption = 'Merce di proprieta'
      DataField = 'MERCE_NS'
      DataSource = dmodAz.dsoTab_Depositi
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object LookRaggDescr: TDBLookupComboBox
      Left = 200
      Top = 48
      Width = 262
      Height = 21
      DataField = 'RAGGRUPPAMENTO_DEPOSITI_ID'
      DataSource = dmodAz.dsoTab_Depositi
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_RaggDep
      TabOrder = 3
      OnKeyPress = LookRaggDescrKeyPress
    end
    object DBCheckBox1: TDBCheckBox
      Left = 288
      Top = 80
      Width = 81
      Height = 17
      Caption = 'Non Attivo'
      Color = clSilver
      DataField = 'ATTIVO'
      DataSource = dmodAz.dsoTab_Depositi
      ParentColor = False
      TabOrder = 6
      ValueChecked = 'N'
      ValueUnchecked = 'S'
    end
  end
end
