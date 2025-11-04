object frmRicercaSottoconto: TfrmRicercaSottoconto
  Left = 186
  Top = 106
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Ricerca di SottoConto'
  ClientHeight = 436
  ClientWidth = 543
  Color = 16775600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSelPC: TPanel
    Left = 8
    Top = 2
    Width = 529
    Height = 99
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 13421570
    TabOrder = 0
    object lblContoAcqVend: TLabel
      Left = 28
      Top = 25
      Width = 156
      Height = 23
      Caption = 'Contropartita'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object rxdblcPianoContoNOME: TRxDBLookupCombo
      Left = 204
      Top = 12
      Width = 253
      Height = 39
      DropDownCount = 10
      Color = clSilver
      Ctl3D = False
      EmptyItemColor = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'NOME_CONTO'
      LookupSource = dsPianoDeiConti
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = rxdblcPianoContoNOMEChange
    end
    object rxdblcPianoConto: TRxDBLookupCombo
      Left = 12
      Top = 60
      Width = 510
      Height = 34
      DropDownCount = 10
      Color = clSilver
      Ctl3D = False
      EmptyItemColor = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_PIANO_CONTO'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnChange = rxdblcPianoContoChange
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 464
      Top = 0
      Width = 57
      Height = 57
      Caption = 'Tipo Conto'
      DataField = 'CAPO_CONTO_CLI_FOR'
      DataSource = dsPianoDeiConti
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Cli.'
        'Forn.'
        'Altro')
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '4')
    end
  end
  object bbOK: TBitBtn
    Left = 346
    Top = 402
    Width = 91
    Height = 29
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bbOKClick
  end
  object bbEsci: TBitBtn
    Left = 446
    Top = 402
    Width = 91
    Height = 29
    Caption = '&Esci'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bbEsciClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 529
    Height = 289
    DataSource = dsPianoDeiConti
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'NOME_CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 14803425
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'GRUPPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'SOTTOCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'NATURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'LIVELLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'RIVENDITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'STRUMENTALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'INDEDUCIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'STAMPA_IN_BILANCIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'VARIAZIONE_FISCALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'ID_PIANO_CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'DICH_REDDITI_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'RAGGRUPPAMENTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'CONTO_PERSONALIZZATO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'CAPO_CONTO_CLI_FOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14803425
        Expanded = False
        FieldName = 'SPECIALE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsPianoDeiConti: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 182
    Top = 10
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 10
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_PIANO_CONTI'
      'Order By descr')
    Left = 56
    Top = 10
    object IBQuery1ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Required = True
    end
    object IBQuery1GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Size = 2
    end
    object IBQuery1CONTO: TIBStringField
      FieldName = 'CONTO'
      Size = 3
    end
    object IBQuery1SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Size = 5
    end
    object IBQuery1NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      ReadOnly = True
      Size = 12
    end
    object IBQuery1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1NATURA: TSmallintField
      FieldName = 'NATURA'
    end
    object IBQuery1LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
    end
    object IBQuery1RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
    end
    object IBQuery1STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
    end
    object IBQuery1INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
    end
    object IBQuery1STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
    end
    object IBQuery1VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
    end
    object IBQuery1DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Size = 4
    end
    object IBQuery1RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Size = 4
    end
    object IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
    end
    object IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
    end
    object IBQuery1SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
    end
  end
end
