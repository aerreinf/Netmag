object frmSelAcc: TfrmSelAcc
  Left = 283
  Top = 79
  ActiveControl = dbgArt_acc
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = 'Selezionare accessori'
  ClientHeight = 595
  ClientWidth = 506
  Color = 16744448
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 1
    Top = 288
    Width = 244
    Height = 28
    Caption = 'Inserisci in Distinte'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgArt_acc: TDBGrid
    Left = 2
    Top = 27
    Width = 503
    Height = 214
    Color = 12377822
    DataSource = dsArt_Acc
    FixedColor = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = 8454143
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = bbOKClick
    Columns = <
      item
        Color = 11599871
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Codice acc.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Color = 11599871
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 324
        Visible = True
      end
      item
        Color = 11599871
        Expanded = False
        FieldName = 'DESCR2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 240
        Visible = True
      end>
  end
  object bbOK: TBitBtn
    Left = 404
    Top = 247
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnClick = bbOKClick
  end
  object bbAnnulla: TBitBtn
    Left = 312
    Top = 247
    Width = 87
    Height = 25
    Cursor = crHandPoint
    Caption = 'Annulla'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = bbAnnullaClick
  end
  object pnlNavigator: TPanel
    Left = 8
    Top = 246
    Width = 195
    Height = 27
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 12438751
    TabOrder = 1
    object dbnArt_Acc: TDBNavigator
      Left = 6
      Top = 6
      Width = 184
      Height = 18
      DataSource = dsArt_Acc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 2
    Top = 2
    Width = 115
    Height = 23
    DropDownCount = 8
    Color = 14280424
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = dsArt_Acc
    ParentFont = False
    TabOrder = 4
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 131
    Top = 2
    Width = 323
    Height = 23
    DropDownCount = 8
    Color = 15790573
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = dsArt_Acc
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 344
    Width = 504
    Height = 249
    Color = 12377822
    DataSource = DataSource1
    FixedColor = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = 8454143
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Codice'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = 8454143
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descrizione'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = 8454143
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO_VENDITA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PK_CODICE'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 404
    Top = 287
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Inserisci'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object rxdblcDistDett_CodArt: TRxDBLookupCombo
    Left = 4
    Top = 320
    Width = 87
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    EmptyItemColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'CODICE_ARTICOLO'
    LookupSource = DataSource2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    OnChange = rxdblcDistDett_CodArtChange
  end
  object rxdblcDistDett_DescrArt: TRxDBLookupCombo
    Left = 90
    Top = 320
    Width = 189
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    EmptyItemColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'CODICE_ARTICOLO'
    LookupDisplay = 'DESCR'
    LookupSource = DataSource2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    OnChange = rxdblcDistDett_DescrArtChange
  end
  object dbeDett_Costo: TDBEdit
    Left = 338
    Top = 320
    Width = 43
    Height = 21
    AutoSize = False
    Ctl3D = False
    DataField = 'COSTO_STANDART'
    DataSource = DataSource2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 280
    Top = 320
    Width = 57
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 11
    OnExit = RxCalcEdit1Exit
  end
  object ComboBox1: TComboBox
    Left = 448
    Top = 316
    Width = 49
    Height = 24
    CharCase = ecUpperCase
    ItemHeight = 16
    TabOrder = 12
    Items.Strings = (
      'S'
      'F'
      'N'
      'A')
  end
  object RxCalcEdit2: TRxCalcEdit
    Left = 384
    Top = 320
    Width = 63
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 13
  end
  object dsArt_Acc: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 176
    Top = 124
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 104
    Top = 408
  end
  object dsDistinte_Det: TDataSource
    DataSet = dmodAz.ibtblDistinte_Dett
    Left = 300
    Top = 356
  end
  object DataSource2: TDataSource
    DataSet = dmodAz.ibqryArt_Acc_per_Distinte
    Left = 232
    Top = 248
  end
  object IBQuery1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from DISTINTE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into DISTINTE'
      
        '  (ACCESSORI, ALTRO1, ALTRO2, ALTRO3, ALTRO4, CODCLI, CODICE_ART' +
        'ICOLO, '
      
        '   COPPE, COSTO, COSTO_ACCESS_TOTALE, COSTO_TOTALE, DATA_CREAZIO' +
        'NE, DESCR_ARTICOLO, '
      
        '   FASONISTA, MANODOPERA, PK_CODICE, PREZZO_VENDITA, RICAMO, RIC' +
        'AR_LIRE, '
      '   RICAR_LIRE2, RICAR1PERC, RICAR2PERC, SITUAZIONE)'
      'values'
      
        '  (:ACCESSORI, :ALTRO1, :ALTRO2, :ALTRO3, :ALTRO4, :CODCLI, :COD' +
        'ICE_ARTICOLO, '
      
        '   :COPPE, :COSTO, :COSTO_ACCESS_TOTALE, :COSTO_TOTALE, :DATA_CR' +
        'EAZIONE, '
      
        '   :DESCR_ARTICOLO, :FASONISTA, :MANODOPERA, :PK_CODICE, :PREZZO' +
        '_VENDITA, '
      
        '   :RICAMO, :RICAR_LIRE, :RICAR_LIRE2, :RICAR1PERC, :RICAR2PERC,' +
        ' :SITUAZIONE)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO,'
      '  MANODOPERA,'
      '  RICAMO,'
      '  FASONISTA,'
      '  SITUAZIONE,'
      '  COPPE,'
      '  ACCESSORI,'
      '  ALTRO1,'
      '  ALTRO2,'
      '  ALTRO3,'
      '  ALTRO4,'
      '  COSTO,'
      '  RICAR1PERC,'
      '  RICAR2PERC,'
      '  RICAR_LIRE,'
      '  PREZZO_VENDITA,'
      '  COSTO_ACCESS_TOTALE,'
      '  COSTO_TOTALE,'
      '  DATA_CREAZIONE,'
      '  CODCLI,'
      '  RICAR_LIRE2'
      'from DISTINTE '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from DISTINTE'
      'order by codice_Articolo')
    ModifySQL.Strings = (
      'update DISTINTE'
      'set'
      '  ACCESSORI = :ACCESSORI,'
      '  ALTRO1 = :ALTRO1,'
      '  ALTRO2 = :ALTRO2,'
      '  ALTRO3 = :ALTRO3,'
      '  ALTRO4 = :ALTRO4,'
      '  CODCLI = :CODCLI,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  COPPE = :COPPE,'
      '  COSTO = :COSTO,'
      '  COSTO_ACCESS_TOTALE = :COSTO_ACCESS_TOTALE,'
      '  COSTO_TOTALE = :COSTO_TOTALE,'
      '  DATA_CREAZIONE = :DATA_CREAZIONE,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  FASONISTA = :FASONISTA,'
      '  MANODOPERA = :MANODOPERA,'
      '  PK_CODICE = :PK_CODICE,'
      '  PREZZO_VENDITA = :PREZZO_VENDITA,'
      '  RICAMO = :RICAMO,'
      '  RICAR_LIRE = :RICAR_LIRE,'
      '  RICAR_LIRE2 = :RICAR_LIRE2,'
      '  RICAR1PERC = :RICAR1PERC,'
      '  RICAR2PERC = :RICAR2PERC,'
      '  SITUAZIONE = :SITUAZIONE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 160
    Top = 408
    object IBQuery1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery1DESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE"."DESCR_ARTICOLO"'
      Size = 50
    end
    object IBQuery1MANODOPERA: TFloatField
      FieldName = 'MANODOPERA'
      Origin = '"DISTINTE"."MANODOPERA"'
    end
    object IBQuery1RICAMO: TFloatField
      FieldName = 'RICAMO'
      Origin = '"DISTINTE"."RICAMO"'
    end
    object IBQuery1FASONISTA: TFloatField
      FieldName = 'FASONISTA'
      Origin = '"DISTINTE"."FASONISTA"'
    end
    object IBQuery1SITUAZIONE: TFloatField
      FieldName = 'SITUAZIONE'
      Origin = '"DISTINTE"."SITUAZIONE"'
    end
    object IBQuery1COPPE: TFloatField
      FieldName = 'COPPE'
      Origin = '"DISTINTE"."COPPE"'
    end
    object IBQuery1ACCESSORI: TFloatField
      FieldName = 'ACCESSORI'
      Origin = '"DISTINTE"."ACCESSORI"'
    end
    object IBQuery1ALTRO1: TFloatField
      FieldName = 'ALTRO1'
      Origin = '"DISTINTE"."ALTRO1"'
    end
    object IBQuery1ALTRO2: TFloatField
      FieldName = 'ALTRO2'
      Origin = '"DISTINTE"."ALTRO2"'
    end
    object IBQuery1ALTRO3: TFloatField
      FieldName = 'ALTRO3'
      Origin = '"DISTINTE"."ALTRO3"'
    end
    object IBQuery1ALTRO4: TFloatField
      FieldName = 'ALTRO4'
      Origin = '"DISTINTE"."ALTRO4"'
    end
    object IBQuery1COSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE"."COSTO"'
    end
    object IBQuery1RICAR1PERC: TFloatField
      FieldName = 'RICAR1PERC'
      Origin = '"DISTINTE"."RICAR1PERC"'
    end
    object IBQuery1RICAR2PERC: TFloatField
      FieldName = 'RICAR2PERC'
      Origin = '"DISTINTE"."RICAR2PERC"'
    end
    object IBQuery1RICAR_LIRE: TFloatField
      FieldName = 'RICAR_LIRE'
      Origin = '"DISTINTE"."RICAR_LIRE"'
    end
    object IBQuery1PREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = '"DISTINTE"."PREZZO_VENDITA"'
    end
    object IBQuery1COSTO_ACCESS_TOTALE: TFloatField
      FieldName = 'COSTO_ACCESS_TOTALE'
      Origin = '"DISTINTE"."COSTO_ACCESS_TOTALE"'
    end
    object IBQuery1COSTO_TOTALE: TFloatField
      FieldName = 'COSTO_TOTALE'
      Origin = '"DISTINTE"."COSTO_TOTALE"'
    end
    object IBQuery1DATA_CREAZIONE: TDateTimeField
      FieldName = 'DATA_CREAZIONE'
      Origin = '"DISTINTE"."DATA_CREAZIONE"'
    end
    object IBQuery1CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"DISTINTE"."CODCLI"'
    end
    object IBQuery1RICAR_LIRE2: TFloatField
      FieldName = 'RICAR_LIRE2'
      Origin = '"DISTINTE"."RICAR_LIRE2"'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 280
    object stampe: TMenuItem
      Caption = 'Stampe'
      OnClick = stampeClick
    end
  end
end
