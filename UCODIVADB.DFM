object fCodIVADB: TfCodIVADB
  Left = 207
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Codici IVA'
  ClientHeight = 275
  ClientWidth = 499
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
    Width = 499
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_CodIVA: TDBNavigator
      Left = 12
      Top = 8
      Width = 220
      Height = 25
      DataSource = dmodAz.dsoTab_Codici_IVA
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_CodIVAClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 499
    Height = 234
    Align = alClient
    BevelOuter = bvLowered
    Color = 16744448
    Enabled = False
    TabOrder = 1
    object laCodice: TLabel
      Left = 4
      Top = 15
      Width = 40
      Height = 16
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 128
      Top = 15
      Width = 68
      Height = 16
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laAliq: TLabel
      Left = 4
      Top = 43
      Width = 96
      Height = 16
      Caption = 'Aliquota IVA (%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laIndetr: TLabel
      Left = 252
      Top = 43
      Width = 90
      Height = 16
      Caption = 'Indetrabilita (%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laIvaColleg: TLabel
      Left = 4
      Top = 71
      Width = 79
      Height = 16
      Caption = 'IVA Collegato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laTipoOper: TLabel
      Left = 4
      Top = 97
      Width = 94
      Height = 16
      Caption = 'Tipo Operazione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laNonSogg: TLabel
      Left = 4
      Top = 122
      Width = 104
      Height = 16
      Caption = 'Non Soggetto IVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laNonImpon: TLabel
      Left = 4
      Top = 148
      Width = 85
      Height = 16
      Caption = 'Non Imponibile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laEsenzione: TLabel
      Left = 4
      Top = 174
      Width = 61
      Height = 16
      Caption = 'Esenzione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laSigla: TLabel
      Left = 4
      Top = 203
      Width = 103
      Height = 16
      Caption = 'Sigla identificativa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laRifIVA: TLabel
      Left = 307
      Top = 203
      Width = 90
      Height = 16
      Caption = 'Riferimento IVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 56
      Top = 13
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 200
      Top = 13
      Width = 285
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 1
    end
    object dbeAliq: TDBEdit
      Left = 111
      Top = 41
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ALIQUOTA'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 2
    end
    object dbeIndetr: TDBEdit
      Left = 347
      Top = 41
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      DataField = 'INDETRABILITA'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 3
    end
    object LookCollIVACod: TDBLookupComboBox
      Left = 111
      Top = 69
      Width = 72
      Height = 21
      DataField = 'CODICE_IVA_COLLEGATO_ID'
      DataSource = dmodAz.dsoTab_Codici_IVA
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dmodAz.dsoTab_CodIVA_Colleg
      TabOrder = 4
    end
    object LookCollIVADesc: TDBLookupComboBox
      Left = 189
      Top = 69
      Width = 296
      Height = 21
      DataField = 'CODICE_IVA_COLLEGATO_ID'
      DataSource = dmodAz.dsoTab_Codici_IVA
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodAz.dsoTab_CodIVA_Colleg
      TabOrder = 5
    end
    object LookNonSogg: TDBLookupComboBox
      Left = 111
      Top = 120
      Width = 374
      Height = 21
      DataField = 'NON_SOGGETTO_IVA_ID'
      DataSource = dmodAz.dsoTab_Codici_IVA
      Enabled = False
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Non_Soggetto_IVA
      TabOrder = 6
    end
    object LookNonImpon: TDBLookupComboBox
      Left = 111
      Top = 146
      Width = 374
      Height = 21
      DataField = 'NON_IMPONIBILE_IVA_ID'
      DataSource = dmodAz.dsoTab_Codici_IVA
      Enabled = False
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Non_Imponibile_IVA
      TabOrder = 7
    end
    object LookEsenzione: TDBLookupComboBox
      Left = 111
      Top = 172
      Width = 374
      Height = 21
      DataField = 'ESENTE'
      DataSource = dmodAz.dsoTab_Codici_IVA
      Enabled = False
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_Esente_IVA
      TabOrder = 8
    end
    object dbeSiglaIdent: TDBEdit
      Left = 111
      Top = 201
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SIGLA_IDENTIFICATIVA'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 9
    end
    object dbeRiferIVA: TDBEdit
      Left = 400
      Top = 201
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RIFERIMENTO_IVA11_ID'
      DataSource = dmodAz.dsoTab_Codici_IVA
      TabOrder = 10
    end
    object LookClass: TDBLookupComboBox
      Left = 111
      Top = 95
      Width = 202
      Height = 21
      DataField = 'CLASSIFICAZIONE'
      DataSource = dmodAz.dsoTab_Codici_IVA
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dmodPub.dsoTab_ClassIVA
      TabOrder = 11
      OnCloseUp = LookClassCloseUp
    end
  end
end
