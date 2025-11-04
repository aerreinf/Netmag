object frmPassDoc: TfrmPassDoc
  Left = 205
  Top = 121
  Width = 770
  Height = 550
  Color = clBtnFace
  Constraints.MinHeight = 360
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tbarCtrlPassDoc: TToolBar
    Left = 0
    Top = 0
    Width = 762
    Height = 40
    ButtonHeight = 36
    ButtonWidth = 28
    Caption = 'tbarCtrlPassDoc'
    Color = clWhite
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    Images = dmodPub.iliPub
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    object sep0: TToolButton
      Left = 0
      Top = 0
      Width = 7
      Style = tbsSeparator
    end
    object tbtnEsci: TToolButton
      Left = 7
      Top = 0
      Cursor = crHandPoint
      Caption = 'Esci'
      ImageIndex = 0
      OnClick = tbtnEsciClick
    end
    object sep1: TToolButton
      Left = 35
      Top = 0
      Width = 8
      Caption = 'sep1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tbtnPassaTutti: TToolButton
      Left = 43
      Top = 0
      Cursor = crHandPoint
      Hint = 'Passa Tutti'
      Caption = 'Tutti'
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnPassaTuttiClick
    end
    object pnlFiltroData: TPanel
      Left = 71
      Top = 0
      Width = 490
      Height = 36
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 16744448
      TabOrder = 0
      object Label1: TLabel
        Left = 22
        Top = 2
        Width = 13
        Height = 14
        Caption = 'Da'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 136
        Top = 2
        Width = 8
        Height = 14
        Caption = 'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtedtDataDa: TDateEdit
        Left = 34
        Top = 13
        Width = 95
        Height = 21
        DefaultToday = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        Text = '01/01/2004'
        OnChange = dtedtDataAChange
        OnExit = dtedtDataDaExit
      end
      object dtedtDataA: TDateEdit
        Left = 144
        Top = 13
        Width = 95
        Height = 21
        DefaultToday = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        Text = '31/12/2004'
        OnChange = dtedtDataAChange
        OnExit = dtedtDataDaExit
      end
      object bbaggiorna: TBitBtn
        Left = 248
        Top = 9
        Width = 63
        Height = 21
        Cursor = crHandPoint
        Caption = 'Aggiorna'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = bbaggiornaClick
      end
      object BitBtn1: TBitBtn
        Left = 314
        Top = 9
        Width = 79
        Height = 21
        Cursor = crHandPoint
        Caption = 'Visual. Tutti'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object RadioButton1: TCheckBox
        Left = 408
        Top = 11
        Width = 97
        Height = 17
        Caption = 'Tutti'
        TabOrder = 4
      end
    end
    object BitBtn2: TBitBtn
      Left = 561
      Top = 0
      Width = 79
      Height = 36
      Cursor = crHandPoint
      Caption = 'Passa in Fatt.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 640
      Top = 0
      Width = 79
      Height = 36
      Cursor = crHandPoint
      Caption = 'Passa Tutti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object pnlDoc: TPanel
    Left = 0
    Top = 40
    Width = 762
    Height = 225
    Align = alTop
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 16774636
    TabOrder = 1
    object dbgDoc: TDBGrid
      Left = 2
      Top = 2
      Width = 758
      Height = 221
      Hint = 'Doppio click sul documento per passarlo interamente'
      Align = alClient
      BorderStyle = bsNone
      Color = 16252912
      Ctl3D = False
      DataSource = dsDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgDocDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'DATA_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CliFor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 400
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SUBATTIVITA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Passato'
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
          Expanded = False
          FieldName = 'TIPO_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAUSALE_MAGAZZINO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          Expanded = False
          FieldName = 'SERIE_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'MESE_CONT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'TOTALE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'TOTALE_IVATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'TOTALE_EURO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Expanded = False
          FieldName = 'CLIFOR_ID'
          Visible = True
        end>
    end
  end
  object pnlDocDet: TPanel
    Left = 0
    Top = 265
    Width = 762
    Height = 251
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 16252912
    TabOrder = 2
    object dbgDocDet: TDBGrid
      Left = 2
      Top = 0
      Width = 758
      Height = 249
      Align = alBottom
      BorderStyle = bsNone
      Color = 16774636
      DataSource = dsDocDet
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgDocDetDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_RIGA_ID'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_RIGA'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODICE_ARTICOLO'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITA_MISURA'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTA_UM'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITA'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEP'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_PROVV'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_SERVIZIO'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RIF_A'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RIF_A_PRE'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RIF_A_ORD'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RIF_A_DDT'
          Title.Color = 14217622
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object dsDoc: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryPassDoc
    Left = 510
    Top = 114
  end
  object dsDocDet: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibtblPassDocDet
    Left = 542
    Top = 90
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from seriali')
    Left = 400
    Top = 72
    object IBQuery1ID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Origin = '"SERIALI"."ID_DOC"'
      Required = True
    end
    object IBQuery1CODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"SERIALI"."CODICE"'
    end
    object IBQuery1DESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = '"SERIALI"."DESCRIZIONE"'
      Size = 100
    end
    object IBQuery1SERIALE: TIBStringField
      FieldName = 'SERIALE'
      Origin = '"SERIALI"."SERIALE"'
      Required = True
      Size = 30
    end
    object IBQuery1ID_DET_DOC: TFloatField
      FieldName = 'ID_DET_DOC'
      Origin = '"SERIALI"."ID_DET_DOC"'
      Required = True
    end
  end
end
