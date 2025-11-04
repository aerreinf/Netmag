object frmListiniStampa: TfrmListiniStampa
  Left = 197
  Top = 155
  BorderStyle = bsDialog
  Caption = 'Stampa listini...'
  ClientHeight = 251
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object lblListino: TLabel
    Left = 12
    Top = 14
    Width = 46
    Height = 20
    Caption = 'Listino'
  end
  object rxdblcListino: TRxDBLookupCombo
    Left = 12
    Top = 34
    Width = 323
    Height = 25
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsListini
    ParentCtl3D = False
    TabOrder = 0
  end
  object rbArtTutti: TRadioButton
    Left = 18
    Top = 72
    Width = 113
    Height = 17
    Caption = 'Tutti Articoli'
    TabOrder = 1
  end
  object rbArtFiltra: TRadioButton
    Left = 18
    Top = 96
    Width = 187
    Height = 25
    Caption = 'Filtra per Categorie'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object bbStList: TBitBtn
    Left = 348
    Top = 86
    Width = 189
    Height = 25
    Caption = 'Tutti campi'
    TabOrder = 3
    OnClick = bbStListClick
  end
  object rxdblcTipo: TRxDBLookupCombo
    Left = 36
    Top = 122
    Width = 253
    Height = 25
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsTipo
    ParentCtl3D = False
    TabOrder = 4
  end
  object rxdblcGruppo: TRxDBLookupCombo
    Left = 36
    Top = 152
    Width = 253
    Height = 25
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsGruppo
    ParentCtl3D = False
    TabOrder = 5
  end
  object rxdblcMarca: TRxDBLookupCombo
    Left = 36
    Top = 182
    Width = 253
    Height = 25
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsMarca
    ParentCtl3D = False
    TabOrder = 6
  end
  object rxdblcFamiglia: TRxDBLookupCombo
    Left = 36
    Top = 212
    Width = 253
    Height = 25
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'CODICE'
    LookupDisplay = 'DESCR'
    LookupSource = dsFamiglia
    ParentCtl3D = False
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 348
    Top = 116
    Width = 189
    Height = 25
    Caption = 'Prezzo'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 348
    Top = 146
    Width = 189
    Height = 25
    Caption = 'Prezzo+IVA'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 450
    Top = 204
    Width = 75
    Height = 25
    Caption = 'Esci'
    TabOrder = 10
    OnClick = BitBtn3Click
    Kind = bkAbort
  end
  object dsListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 70
    Top = 4
  end
  object dsTipo: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 296
    Top = 114
  end
  object dsGruppo: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 296
    Top = 146
  end
  object dsMarca: TDataSource
    DataSet = dmodAz.ibTab_Marca
    Left = 294
    Top = 178
  end
  object dsFamiglia: TDataSource
    DataSet = dmodAz.ibTab_Famiglia
    Left = 294
    Top = 212
  end
end
