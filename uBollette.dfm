object fBolle: TfBolle
  Left = 222
  Top = 128
  Width = 767
  Height = 587
  Caption = 'Bollette'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 520
    Top = 92
    Width = 55
    Height = 13
    Caption = 'Descrizione'
  end
  object dbgRighe: TDBGrid
    Left = 0
    Top = 214
    Width = 759
    Height = 291
    Align = alTop
    DataSource = dsoRigheDoc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgRigheDblClick
    Columns = <
      item
        Alignment = taCenter
        Color = 13434879
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Riga'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Codice'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descriz.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 208
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UM'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'QTA_UM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Scat.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'TOTSCAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Imb.'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 49
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Q.t'#224
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Prezzo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Sc%'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 41
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO_SCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Importo'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DOC_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'FATTCONV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'OMAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'DEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO_EQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'PERC_PROVV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'TIPO_SERVIZIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_IVA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_PRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_ORD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_DDT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'PIANOCONTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'OP_QTA_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'OP_VAL_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'OP_QTA_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'OP_VAL_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'TOTCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Color = 13434879
        Expanded = False
        FieldName = 'ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'NUM_RIGA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'TIPO_RIGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
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
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'COSTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'FATTCONV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'QTA_UM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'QUANTITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO_SCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTOINVALUTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'OMAGGIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'SCONTO_EQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PERC_PROVV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'TIPO_SERVIZIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IVATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'IMPORTO_CON_IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'CODICE_IVA_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'DATA_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ID_DOC_DET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_ID_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_PRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_ORD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_A_DDT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'PIANOCONTO_ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_PRE_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_ORD_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'RIF_DDT_NUM_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'OP_QTA_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'OP_VAL_DISPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'OP_QTA_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'OP_VAL_GIACENZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'TOTCOLLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'TOTSCAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object tbarControl: TToolBar
    Left = 0
    Top = 0
    Width = 759
    Height = 27
    AutoSize = True
    ButtonHeight = 25
    ButtonWidth = 28
    Caption = 'tbarControl'
    Flat = True
    Images = dmodPub.iliPub
    Indent = 5
    TabOrder = 2
    object tbtnEsci: TToolButton
      Left = 5
      Top = 0
      Cursor = crHandPoint
      Hint = 'Esci'
      Caption = 'tbtnEsci'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEsciClick
    end
    object sep1: TToolButton
      Left = 33
      Top = 0
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
    object tbtnNuovo: TToolButton
      Left = 41
      Top = 0
      Cursor = crHandPoint
      Hint = 'Nuovo'
      Caption = 'tbtnNuovo'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNuovoClick
    end
    object tbtnModifica: TToolButton
      Left = 69
      Top = 0
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'tbtnModifica'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnModificaClick
    end
    object sep2: TToolButton
      Left = 97
      Top = 0
      Width = 8
      Caption = 'sep2'
      Style = tbsSeparator
    end
    object tbtnSalva: TToolButton
      Left = 105
      Top = 0
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'tbtnSalva'
      Enabled = False
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSalvaClick
    end
    object tbtnAnulla: TToolButton
      Left = 133
      Top = 0
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'tbtnAnulla'
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnAnullaClick
    end
    object sep3: TToolButton
      Left = 161
      Top = 0
      Width = 8
      Caption = 'sep3'
      Style = tbsSeparator
    end
    object tbtnElimina: TToolButton
      Left = 169
      Top = 0
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'tbtnElimina'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEliminaClick
    end
    object sep4: TToolButton
      Left = 197
      Top = 0
      Width = 8
      Caption = 'sep4'
      Style = tbsSeparator
    end
    object tbtnPrev: TToolButton
      Left = 205
      Top = 0
      Cursor = crHandPoint
      Hint = 'Precedente'
      Caption = 'Precedente'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnPrevClick
    end
    object tbtnNext: TToolButton
      Left = 233
      Top = 0
      Cursor = crHandPoint
      Hint = 'Successivo'
      Caption = 'Successivo'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNextClick
    end
    object sep5: TToolButton
      Left = 261
      Top = 0
      Width = 8
      Caption = 'sep5'
      Style = tbsSeparator
    end
    object tbtnNumDoc: TToolButton
      Left = 269
      Top = 0
      Cursor = crHandPoint
      Hint = 'Numero Documento'
      Caption = 'NumDoc'
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNumDocClick
    end
    object ToolButton1: TToolButton
      Left = 297
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 20
      Style = tbsSeparator
    end
    object tbtnPrint: TToolButton
      Left = 305
      Top = 0
      Cursor = crHandPoint
      Caption = 'tbtnPrint'
      ImageIndex = 25
      PopupMenu = PopupMenu1
      OnClick = tbtnPrintClick
    end
    object ToolButton3: TToolButton
      Left = 333
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 26
      Style = tbsSeparator
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 504
    Width = 745
    Height = 44
    Color = 16762508
    TabOrder = 3
    object Label39: TLabel
      Left = 651
      Top = 3
      Width = 35
      Height = 15
      Caption = 'Totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 29
      Top = 3
      Width = 74
      Height = 15
      Caption = 'Totale Sconti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 156
      Top = 3
      Width = 77
      Height = 15
      Caption = 'Totale Scatoli'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 300
      Top = 3
      Width = 61
      Height = 15
      Caption = 'Totale Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 477
      Top = 3
      Width = 54
      Height = 13
      Caption = 'Eccedenza'
    end
    object dbeDaPagare: TDBEdit
      Left = 608
      Top = 19
      Width = 121
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object dbeTotSconti: TDBEdit
      Left = 18
      Top = 19
      Width = 97
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTALE_SCONTI'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 146
      Top = 19
      Width = 97
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PESO_LORDO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 282
      Top = 19
      Width = 97
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PESO_NETTO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object RxCalcEdit1: TRxCalcEdit
      Left = 456
      Top = 16
      Width = 97
      Height = 21
      AutoSize = False
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
  end
  object dbeTotMerc: TDBEdit
    Left = 112
    Top = 352
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_MERCE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
  end
  object dbeTotServ: TDBEdit
    Left = 112
    Top = 376
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_SERVIZI'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
  end
  object dbeTotOmagg: TDBEdit
    Left = 112
    Top = 400
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
  end
  object dbeTotSpese: TDBEdit
    Left = 112
    Top = 424
    Width = 105
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOT_SPESE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 7
    Visible = False
  end
  object dbeImponibile: TDBEdit
    Left = 306
    Top = 376
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 8
    Visible = False
  end
  object dbeImposta: TDBEdit
    Left = 306
    Top = 400
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVA'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 9
    Visible = False
  end
  object dbeTotale: TDBEdit
    Left = 306
    Top = 424
    Width = 97
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVATO'
    DataSource = dsoDocumento
    ParentCtl3D = False
    TabOrder = 10
    Visible = False
  end
  object dbeResi: TDBEdit
    Left = 432
    Top = 424
    Width = 73
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 11
    Visible = False
  end
  object dbeAbbuoni: TDBEdit
    Left = 432
    Top = 400
    Width = 73
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 12
    Visible = False
  end
  object dbeDataAcconto: TDBEdit
    Left = 464
    Top = 352
    Width = 41
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataSource = dsoDocumento
    Enabled = False
    ParentCtl3D = False
    TabOrder = 13
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 136
    Width = 759
    Height = 78
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = clBlue
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 14
    object Label3: TLabel
      Left = 35
      Top = 3
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 209
      Top = 3
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 387
      Top = 3
      Width = 26
      Height = 14
      Caption = 'Scat.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 432
      Top = 3
      Width = 24
      Height = 14
      Caption = 'Imb.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 477
      Top = 3
      Width = 21
      Height = 14
      Caption = 'Q.t'#224
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 602
      Top = 3
      Width = 25
      Height = 14
      Caption = 'Sc.%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 539
      Top = 3
      Width = 38
      Height = 14
      Caption = 'Prezzo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 655
      Top = 3
      Width = 44
      Height = 14
      Caption = 'Importo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 51
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Nuovo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 70
      Top = 51
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Modifica'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 135
      Top = 51
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Elimina'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 200
      Top = 51
      Width = 65
      Height = 18
      Cursor = crHandPoint
      Caption = '&Annulla'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 270
      Top = 51
      Width = 102
      Height = 18
      Cursor = crHandPoint
      Caption = 'Carica da &Term.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object Label13: TLabel
      Left = 457
      Top = 37
      Width = 28
      Height = 14
      Caption = 'Taglia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 566
      Top = 37
      Width = 31
      Height = 14
      Caption = 'Colore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 675
      Top = 37
      Width = 38
      Height = 14
      Caption = 'Ferretto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 374
      Top = 51
      Width = 49
      Height = 18
      Cursor = crHandPoint
      Caption = 'File Ext.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 390
      Top = 32
      Width = 19
      Height = 16
      Cursor = crHandPoint
      Caption = 'File Ext.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = SpeedButton7Click
    end
    object dbeCodice: TDBEdit
      Tag = 10
      Left = 4
      Top = 17
      Width = 101
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'CODICE_ARTICOLO'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = dbeCodiceClick
      OnEnter = dbeCodiceEnter
      OnExit = dbeCodiceExit
      OnKeyPress = dbeCodiceKeyPress
    end
    object dbeDescr: TDBEdit
      Tag = 10
      Left = 124
      Top = 17
      Width = 237
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14674687
      DataField = 'DESCR'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dbeDescrKeyPress
    end
    object DBEdit3: TDBEdit
      Tag = 10
      Left = 379
      Top = 17
      Width = 45
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'QTA_UM'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = DBEdit3Click
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Tag = 10
      Left = 427
      Top = 17
      Width = 37
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'TOTSCAT'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DBEdit4Click
      OnEnter = DBEdit4Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEQtaCons: TDBEdit
      Tag = 10
      Left = 467
      Top = 17
      Width = 45
      Height = 19
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'QUANTITA'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = DBEdit3Exit
    end
    object DBEdit6: TDBEdit
      Tag = 10
      Left = 603
      Top = 17
      Width = 28
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'SCONTO1'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit6KeyPress
    end
    object bbCodice: TBitBtn
      Left = 107
      Top = 17
      Width = 15
      Height = 19
      Cursor = crHandPoint
      Hint = 'Ricerca Articolo'
      Caption = 'R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbCodiceClick
    end
    object bbDescr: TBitBtn
      Left = 363
      Top = 17
      Width = 15
      Height = 19
      Caption = '...'
      TabOrder = 7
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 722
      Top = 18
      Width = 15
      Height = 19
      Cursor = crHandPoint
      Caption = 'I'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
      OnKeyDown = BitBtn1KeyDown
      OnKeyPress = BitBtn1KeyPress
    end
    object dbedit7: TRxDBCalcEdit
      Left = 514
      Top = 17
      Width = 87
      Height = 19
      DataField = 'COSTO'
      DataSource = dsoRigheDoc
      Color = 16710887
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
      OnExit = DBEdit3Exit
      OnKeyPress = dbedit7KeyPress
    end
    object dbedit8: TRxDBCalcEdit
      Left = 632
      Top = 17
      Width = 87
      Height = 19
      DataField = 'IMPORTO_SCONTO'
      DataSource = dsoRigheDoc
      Color = 16710887
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
      OnExit = DBEdit3Exit
    end
    object DBEdit9: TDBEdit
      Tag = 10
      Left = 566
      Top = 51
      Width = 107
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'B'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnDblClick = DBEdit9DblClick
      OnKeyPress = DBEdit9KeyPress
    end
    object DBEdit10: TDBEdit
      Tag = 10
      Left = 675
      Top = 51
      Width = 43
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'C'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyPress = DBEdit10KeyPress
    end
    object DBEdit11: TDBEdit
      Tag = 10
      Left = 457
      Top = 51
      Width = 107
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16710887
      DataField = 'A'
      DataSource = dsoRigheDoc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnDblClick = DBEdit11DblClick
      OnKeyPress = DBEdit11KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 720
      Top = 51
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Caption = 'TG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 759
    Height = 109
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 16762508
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -96
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object laNote: TLabel
      Left = 375
      Top = 56
      Width = 25
      Height = 14
      Caption = 'Note'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laNumero: TLabel
      Left = 8
      Top = 3
      Width = 44
      Height = 14
      Caption = 'Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDataDoc: TLabel
      Left = 68
      Top = 3
      Width = 49
      Height = 14
      Caption = 'Data Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCliFor: TLabel
      Left = 375
      Top = 3
      Width = 35
      Height = 14
      Caption = 'Cli/For'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laNostroDeposito: TLabel
      Left = 8
      Top = 66
      Width = 49
      Height = 14
      Caption = 'Deposito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 33
      Width = 40
      Height = 14
      Caption = 'Agente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laNumRigaLocate: TLabel
      Left = 263
      Top = 66
      Width = 32
      Height = 14
      AutoSize = False
      Caption = ' Riga: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object laSconto: TLabel
      Left = 189
      Top = 3
      Width = 38
      Height = 14
      Caption = 'Sconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 351
      Top = 70
      Width = 13
      Height = 14
      Caption = 'S2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 383
      Top = 70
      Width = 10
      Height = 14
      Caption = 'M'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LookCliForCod: TRxDBLookupCombo
      Left = 375
      Top = 15
      Width = 73
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 8
      DataField = 'CLIFOR_ID'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dmodAz.dsoqTabCli
      ParentFont = False
      TabOrder = 2
      OnChange = LookCliForCodChange
    end
    object dbmNote: TDBMemo
      Left = 403
      Top = 55
      Width = 313
      Height = 47
      Ctl3D = False
      DataField = 'NOTA'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object dbeNumero: TDBEdit
      Left = 8
      Top = 16
      Width = 57
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14679807
      Ctl3D = False
      DataField = 'NUM_DOC'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = dbeNumeroExit
    end
    object dbeDataDoc: TDBEdit
      Left = 68
      Top = 16
      Width = 69
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA_DOC'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object LookCliForDescr: TRxDBLookupCombo
      Left = 447
      Top = 15
      Width = 269
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 15
      DataField = 'CLIFOR_ID'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dmodAz.dsoqTabCli
      ParentFont = False
      TabOrder = 3
      OnChange = LookCliForDescrChange
    end
    object dbeIndirizzo_cli_for: TDBEdit
      Left = 375
      Top = 38
      Width = 177
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = clSilver
      Ctl3D = False
      DataField = 'CLI_FOR_IND'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object dbeIndirizzo_cli_for2: TDBEdit
      Left = 555
      Top = 38
      Width = 161
      Height = 16
      AutoSize = False
      CharCase = ecUpperCase
      Color = clSilver
      Ctl3D = False
      DataField = 'CLI_FOR_IND2'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object LookNostrDepCod: TRxDBLookupCombo
      Left = 8
      Top = 80
      Width = 60
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 10
      DataField = 'DEPOSITO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = dsoDepositi
      ParentFont = False
      TabOrder = 6
    end
    object LookNostrDepDescr: TRxDBLookupCombo
      Left = 72
      Top = 80
      Width = 185
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 10
      DataField = 'DEPOSITO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsoDepositi
      ParentFont = False
      TabOrder = 7
    end
    object dbeListino: TDBEdit
      Left = 717
      Top = 15
      Width = 20
      Height = 20
      AutoSize = False
      CharCase = ecUpperCase
      Color = clBlue
      Ctl3D = False
      DataField = 'LISTINO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object dbeContropartita: TDBEdit
      Left = 257
      Top = 16
      Width = 23
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'PIANOCONTO_ID'
      DataSource = dsoDocumento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object LookAgCod: TDBLookupComboBox
      Left = 8
      Top = 47
      Width = 61
      Height = 20
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'AGENTE_ID'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoAgenti
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object LookAgDescr: TDBLookupComboBox
      Left = 72
      Top = 47
      Width = 185
      Height = 20
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'AGENTE_ID'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoAgenti
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object LookCauMagCod: TDBLookupComboBox
      Left = 286
      Top = 15
      Width = 61
      Height = 20
      Ctl3D = False
      DataField = 'CAUSALE_MAGAZZINO'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE_CAUSALE'
      ListField = 'CODICE_CAUSALE'
      ListSource = dsoCauMag
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit5: TDBEdit
      Left = 144
      Top = 16
      Width = 39
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'KINGUA_ID'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
    end
    object edNumRigaLocate: TEdit
      Left = 262
      Top = 83
      Width = 35
      Height = 18
      Hint = 'Doppio click - ricerca'
      AutoSize = False
      Color = 8454143
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      Text = '1'
      OnChange = edNumRigaLocateChange
      OnKeyPress = edNumRigaLocateKeyPress
    end
    object dbeSconto1: TDBEdit
      Left = 189
      Top = 16
      Width = 40
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'SCONTO1'
      DataSource = dsoDocumento
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      OnExit = dbeSconto1Exit
    end
    object Button1: TButton
      Left = 230
      Top = 17
      Width = 18
      Height = 17
      Hint = 'Impostare Sconto '
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 304
      Top = 40
      Width = 25
      Height = 17
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      Text = 'Edit1'
      Visible = False
    end
    object Edit2: TEdit
      Left = 377
      Top = 82
      Width = 24
      Height = 18
      Hint = 'Doppio click - ricerca'
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnChange = edNumRigaLocateChange
      OnKeyPress = edNumRigaLocateKeyPress
    end
    object Edit3: TEdit
      Left = 345
      Top = 82
      Width = 24
      Height = 18
      Hint = 'Doppio click - ricerca'
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnChange = edNumRigaLocateChange
      OnKeyPress = edNumRigaLocateKeyPress
    end
  end
  object Memo1: TMemo
    Left = 12
    Top = 304
    Width = 709
    Height = 177
    Lines.Strings = (
      'Memo1')
    TabOrder = 15
    Visible = False
  end
  object DBEdit12: TDBEdit
    Left = 106
    Top = 435
    Width = 97
    Height = 19
    AutoSize = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVA'
    DataSource = dsoDocumento
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
    Visible = False
  end
  object DBEdit13: TDBEdit
    Left = 242
    Top = 435
    Width = 97
    Height = 19
    AutoSize = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'TOTALE_IVATO'
    DataSource = dsoDocumento
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
    Visible = False
  end
  object dsoDocumento: TDataSource
    DataSet = dmodAz.ibqTab_Doc
    Left = 352
    Top = 2
  end
  object dsoRigheDoc: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 362
    Top = 26
  end
  object dsoMoneta: TDataSource
    DataSet = dmodPub.ibTab_Monete
    Left = 404
    Top = 4
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 436
    Top = 4
  end
  object dsoPorto: TDataSource
    DataSet = dmodAz.ibTab_Porto
    Left = 468
    Top = 4
  end
  object dsoCausSped: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 500
    Top = 4
  end
  object dsoBanca: TDataSource
    DataSet = dmodAz.ibTab_Banche
    Left = 530
    Top = 4
  end
  object dsoAgenti: TDataSource
    DataSet = dmodAz.ibTab_Agenti
    Left = 630
    Top = 6
  end
  object dsoListino: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 702
    Top = 104
  end
  object dsoDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 364
    Top = 273
  end
  object dsoAltreDest: TDataSource
    DataSet = dmodAz.ibqAltreSedi
    Left = 564
    Top = 2
  end
  object dsoFor: TDataSource
    DataSet = dmodAz.ibqTab_For
    Left = 248
    Top = 52
  end
  object dsPersAz: TDataSource
    DataSet = dmodAz.ibTabPersAz
    Left = 676
    Top = 4
  end
  object dsEsenteIVA: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
    Left = 110
    Top = 270
  end
  object dsoVettori: TDataSource
    DataSet = dmodAz.ibTab_Vettori
    Left = 176
    Top = 270
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 204
    Top = 272
  end
  object dsAspetto: TDataSource
    DataSet = dmodAz.ibTab_Aspetto_Esteriore
    Left = 236
    Top = 272
  end
  object dsoCauTrasp: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 266
    Top = 272
  end
  object dsoCODICEIVA: TDataSource
    DataSet = dmodAz.ibTab_Codici_IVA
    Left = 668
    Top = 232
  end
  object dsoAttivita: TDataSource
    DataSet = dmodPub.ibTab_Attivita
    Left = 300
    Top = 272
  end
  object dsPianoConto: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 332
    Top = 273
  end
  object dsoArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 40
    Top = 266
  end
  object dsoContArt: TDataSource
    DataSet = dmodAz.ibqCont_Art
    Left = 8
    Top = 264
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    CachedUpdates = True
    SQL.Strings = (
      'select A.*,B.RIC,B.SC'
      
        'from TAB_ARTICOLI A left JOIN TAB_GRUPPO B ON B.CODICE = A.CAT_A' +
        'RT_GRUPPO_ID'
      'Where  A.CODICE_ARTICOLO =:CA'
      'order by CODICE_ARTICOLO'
      ''
      ''
      '')
    Left = 192
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'CA'
        ParamType = ptUnknown
        Value = ''
      end>
    object IBQuery1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBQuery1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      DisplayFormat = '#,##.00'
      currency = True
    end
    object IBQuery1UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
    end
    object IBQuery1Gruppo: TStringField
      FieldKind = fkLookup
      FieldName = 'Gruppo'
      LookupDataSet = IBTable5
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_GRUPPO_ID'
      Lookup = True
    end
    object IBQuery1Marca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = IBTable1
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_MARCA_ID'
      Lookup = True
    end
    object IBQuery1Famiglia: TStringField
      FieldKind = fkLookup
      FieldName = 'Famiglia'
      LookupDataSet = IBTable4
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_FAMIGLIA_ID'
      Lookup = True
    end
    object IBQuery1Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = IBTable7
      LookupKeyFields = 'CODICE'
      LookupResultField = 'DESCR'
      KeyFields = 'CAT_ART_TIPO_ID'
      Lookup = True
    end
    object IBQuery1RIC: TFloatField
      FieldName = 'RIC'
      currency = True
    end
    object IBQuery1CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
    end
    object IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
    end
    object IBQuery1CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
    end
    object IBQuery1CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
    end
    object IBQuery1SC: TIBStringField
      FieldName = 'SC'
      Origin = '"TAB_GRUPPO"."SC"'
      Size = 4
    end
    object IBQuery1DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery1CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery1UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery1UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery1SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery1SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery1SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery1PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery1PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery1SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery1SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery1LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery1QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery1ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery1TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery1FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery1FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery1COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery1RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery1ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery1RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery1RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery1RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery1RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery1STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery1GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery1PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery1CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery1DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery1VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery1VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery1VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery1NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery1TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery1TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery1OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery1TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery1CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery1DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery1NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery1NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery1NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery1PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery1COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery1DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery1NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery1TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery1CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery1CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery1UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery1FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery1FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery1DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery1SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery1PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery1P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery1P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery1P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery1P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery1SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery1SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery1SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery1SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery1SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery1SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery1SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery1SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery1SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery1SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery1SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery1SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery1R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery1R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery1R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery1R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery1IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery1IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery1IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery1IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery1RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery1P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery1IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery1STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery1CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery1CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery1AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery1CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery1CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery1AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery1CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery1CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery1AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery1CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery1CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery1AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery1CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery1CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery1AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery1CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery1CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery1AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery1ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery1CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery1CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery1CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery1CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery1CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery1CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object IBTable5: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RIC'
        DataType = ftFloat
      end
      item
        Name = 'SC'
        DataType = ftString
        Size = 4
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_GRUPPO_ID'
    StoreDefs = True
    TableName = 'TAB_GRUPPO'
    Left = 256
    Top = 448
    object IBTable5DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable5CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
    object IBTable5RIC: TFloatField
      FieldName = 'RIC'
    end
  end
  object IBTable1: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_MARCA_ID'
    StoreDefs = True
    TableName = 'TAB_MARCA'
    Left = 456
    Top = 448
    object IBTable1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBTable1CODICE: TIntegerField
      FieldName = 'CODICE'
      Required = True
    end
  end
  object IBTable4: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_FAMIGLIA_ID'
    StoreDefs = True
    TableName = 'TAB_FAMIGLIA'
    Left = 568
    Top = 448
  end
  object IBTable7: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    FieldDefs = <
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexFieldNames = 'CODICE'
    MasterFields = 'CAT_ART_TIPO_ID'
    StoreDefs = True
    TableName = 'TAB_TIPO'
    Left = 680
    Top = 448
  end
  object DataSource1: TDataSource
    Tag = 1
    DataSet = dmodAz.ibtTabDet_Doc
    Left = 396
    Top = 275
  end
  object dsProvv: TDataSource
    DataSet = dmodAz.ibTab_Tipo_Provvigione
    Left = 142
    Top = 269
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a')
    Left = 456
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 584
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object IBQuery5CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object IBQuery5CODICE_AGGIUNTIVO: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object IBQuery5QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBQuery5DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 512
    Top = 305
    object RxMemoryData1CODICE: TStringField
      FieldName = 'CODICE'
      Size = 13
    end
    object RxMemoryData1QTA: TFloatField
      FieldName = 'QTA'
    end
    object RxMemoryData1PREZZO: TCurrencyField
      FieldName = 'PREZZO'
    end
    object RxMemoryData1A: TStringField
      FieldName = 'A'
    end
    object RxMemoryData1B: TStringField
      FieldName = 'B'
    end
    object RxMemoryData1C: TStringField
      FieldName = 'C'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 608
    Top = 305
  end
  object ApdComPort1: TApdComPort
    AutoOpen = False
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    OnTriggerAvail = ApdComPort1TriggerAvail
    Left = 128
    Top = 352
  end
  object IBqOrdini: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select costo,totscat from tab_det_doc'
      'join tab_documenti'
      'on tab_det_doc.doc_id=tab_documenti.id_documento'
      
        'where (tab_documenti.tipo_doc=201) and (tab_documenti.CLIfor_id=' +
        ':CF)'
      'and (tab_det_doc.codice_articolo =:CART)')
    Left = 688
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CART'
        ParamType = ptUnknown
      end>
    object IBqOrdiniCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"TAB_DET_DOC"."COSTO"'
      currency = True
    end
    object IBqOrdiniTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
      Origin = '"TAB_DET_DOC"."TOTSCAT"'
    end
  end
  object IBQueryS1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 304
    Top = 344
  end
  object IBQueryS2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 344
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 393
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
end
