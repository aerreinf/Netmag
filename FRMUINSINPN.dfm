object frmInsInPN: TfrmInsInPN
  Left = 213
  Top = 108
  ActiveControl = bbEsci
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inserimento in Prima Nota - '
  ClientHeight = 456
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContab: TPanel
    Left = 0
    Top = 185
    Width = 611
    Height = 271
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    Color = clYellow
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 3
      Width = 605
      Height = 218
      Align = alTop
      Color = 12058111
      DataSource = dsContab
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_CONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Conto'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOTTOCONTO_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descr.'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPONIBILE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Imponibile'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IVA_PERC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Iva%'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPOSTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Imposta'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Title.Alignment = taCenter
          Title.Caption = 'Totale'
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PROT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOC_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DARE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVERE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_CLIFOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCA_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCA_DESCR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SCADENZA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALE_PAGATO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SBILANCIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_ASS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PIANOCONTO_ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_DETT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_FATTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_FATTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ABBUONO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_SCADENZA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ASS_DATA_SCAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = 8421440
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object I1: TRxCalcEdit
      Left = 5
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object D1: TDateEdit
      Left = 5
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object D2: TDateEdit
      Left = 101
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object I2: TRxCalcEdit
      Left = 101
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object D3: TDateEdit
      Left = 197
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
    object I3: TRxCalcEdit
      Left = 197
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 6
    end
    object D4: TDateEdit
      Left = 293
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
    end
    object I4: TRxCalcEdit
      Left = 293
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
    end
    object D5: TDateEdit
      Left = 389
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
    end
    object I5: TRxCalcEdit
      Left = 389
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
    end
    object D6: TDateEdit
      Left = 485
      Top = 224
      Width = 88
      Height = 21
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 11
    end
    object I6: TRxCalcEdit
      Left = 485
      Top = 247
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 12
    end
    object Edit5: TEdit
      Left = 232
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 13
      Text = 'Edit5'
      Visible = False
    end
    object Edit6: TEdit
      Left = 232
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 14
      Text = 'Edit5'
      Visible = False
    end
  end
  object pnlBilancio: TPanel
    Left = 611
    Top = 185
    Width = 126
    Height = 271
    Align = alRight
    BevelInner = bvLowered
    BorderWidth = 1
    Color = 10473471
    TabOrder = 1
    object lblTotale: TLabel
      Left = 12
      Top = 6
      Width = 35
      Height = 13
      Caption = 'Totale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblSbilancio: TLabel
      Left = 12
      Top = 42
      Width = 49
      Height = 14
      Caption = 'Sbilancio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbNuovo: TBitBtn
      Left = 12
      Top = 177
      Width = 108
      Height = 19
      Cursor = crHandPoint
      Caption = '&Nuovo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbNuovoClick
    end
    object bbSalva: TBitBtn
      Left = 12
      Top = 197
      Width = 108
      Height = 19
      Cursor = crHandPoint
      Caption = '&Salva'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbSalvaClick
    end
    object bbAnnulla: TBitBtn
      Left = 12
      Top = 217
      Width = 108
      Height = 19
      Cursor = crHandPoint
      Caption = '&Annulla'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbAnnullaClick
    end
    object bbEsci: TBitBtn
      Left = 12
      Top = 247
      Width = 108
      Height = 19
      Cursor = crHandPoint
      Caption = '&Esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bbEsciClick
    end
    object stTotale: TStaticText
      Left = 12
      Top = 22
      Width = 109
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object stSbilancio: TStaticText
      Left = 12
      Top = 58
      Width = 109
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object bbSottoConti: TBitBtn
      Left = 12
      Top = 80
      Width = 108
      Height = 25
      Cursor = crHandPoint
      Caption = 'Crea Nuovo Conto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbSottoContiClick
    end
    object BitBtn2: TBitBtn
      Left = 13
      Top = 108
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Nuovo Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 13
      Top = 127
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Nuovo Fornitore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 13
      Top = 151
      Width = 105
      Height = 18
      Cursor = crHandPoint
      Caption = 'Scadenze'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object pnlDatiContab: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 185
    Align = alTop
    BevelInner = bvLowered
    Color = 15653740
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnExit = pnlDatiContabExit
    object lblDatMov: TLabel
      Left = 4
      Top = 2
      Width = 50
      Height = 14
      Caption = 'Data Reg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataDoc: TLabel
      Left = 147
      Top = 2
      Width = 67
      Height = 14
      Caption = 'Data docum.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumDoc: TLabel
      Left = 229
      Top = 2
      Width = 77
      Height = 14
      Caption = 'N'#176' Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotFattura: TLabel
      Left = 616
      Top = 54
      Width = 100
      Height = 14
      Caption = 'Totale Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescrMov: TLabel
      Left = 5
      Top = 54
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCliFor: TLabel
      Left = 389
      Top = 2
      Width = 51
      Height = 14
      Caption = 'Fornitore'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblContropartita: TLabel
      Left = 4
      Top = 126
      Width = 73
      Height = 14
      Caption = 'Contropartita'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImponibile: TLabel
      Left = 318
      Top = 126
      Width = 58
      Height = 14
      Caption = 'Imponibile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblIVAperc: TLabel
      Left = 409
      Top = 126
      Width = 28
      Height = 14
      Caption = 'IVA%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImposta: TLabel
      Left = 437
      Top = 126
      Width = 45
      Height = 14
      Caption = 'Imposta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNota: TLabel
      Left = 6
      Top = 91
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
    object SpeedButton1: TSpeedButton
      Left = 624
      Top = 140
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Inserisci'
      Caption = 'I'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 645
      Top = 140
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'M'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 666
      Top = 140
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Annulla'
      Caption = 'A'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 687
      Top = 140
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'S'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 708
      Top = 140
      Width = 20
      Height = 19
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'E'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object Label1: TLabel
      Left = 528
      Top = 126
      Width = 44
      Height = 14
      Caption = 'Importo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 91
      Width = 49
      Height = 14
      Caption = 'Deposito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 89
      Top = 2
      Width = 38
      Height = 14
      Caption = 'N'#176' Reg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 323
      Top = 2
      Width = 40
      Height = 14
      Caption = 'N'#176' Prot.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 297
      Top = 15
      Width = 4
      Height = 19
      Caption = '/'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 352
      Top = 54
      Width = 89
      Height = 14
      Caption = 'Tipo Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 500
      Top = 91
      Width = 42
      Height = 14
      Caption = 'Reg. Iva'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 593
      Top = 91
      Width = 104
      Height = 14
      Caption = 'Mese Competenza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rxdblcCliFor: TRxDBLookupCombo
      Left = 456
      Top = 15
      Width = 275
      Height = 19
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'DENOMINAZIONE'
      LookupSource = dsCliFor
      ParentFont = False
      TabOrder = 7
      OnChange = rxdblcCliForChange
      OnKeyPress = rxdblcCliForKeyPress
    end
    object dtedtDataMov: TDateEdit
      Left = 4
      Top = 15
      Width = 84
      Height = 19
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      Text = '21/02/2004'
      OnChange = dtedtDataMovChange
      OnKeyPress = dtedtDataMovKeyPress
    end
    object dtedtDataDoc: TDateEdit
      Left = 147
      Top = 15
      Width = 83
      Height = 19
      Color = clWhite
      DefaultToday = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      Text = '21/02/2004'
      OnChange = dtedtDataDocChange
      OnExit = dtedtDataDocExit
      OnKeyPress = dtedtDataDocKeyPress
    end
    object rxcalcedtTotalePagato: TRxCalcEdit
      Left = 616
      Top = 67
      Width = 115
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 9
      OnExit = rxcalcedtTotalePagatoExit
      OnKeyPress = rxcalcedtTotalePagatoKeyPress
    end
    object edtDescrMov: TEdit
      Left = 5
      Top = 66
      Width = 340
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edtDescrMovKeyPress
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 389
      Top = 15
      Width = 66
      Height = 19
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'ID_CLI_FOR'
      LookupSource = dsCliFor
      ParentFont = False
      TabOrder = 6
      OnChange = RxDBLookupCombo1Change
      OnKeyPress = RxDBLookupCombo1KeyPress
    end
    object edtNote: TEdit
      Left = 6
      Top = 105
      Width = 483
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 140
      Width = 233
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16773862
      DataField = 'SOTTOCONTO_DESCR'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 318
      Top = 140
      Width = 90
      Height = 19
      AutoSize = False
      Color = 16773862
      DataField = 'IMPONIBILE'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 409
      Top = 140
      Width = 27
      Height = 19
      AutoSize = False
      Color = 16773862
      DataField = 'IVA_PERC'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 437
      Top = 140
      Width = 90
      Height = 19
      AutoSize = False
      Color = 16773862
      DataField = 'IMPOSTA'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 4
      Top = 140
      Width = 77
      Height = 19
      Hint = 'Doppio Click per ricercare'
      AutoSize = False
      CharCase = ecUpperCase
      Color = 16773862
      DataField = 'NOME_CONTO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnDblClick = DBEdit5DblClick
      OnExit = DBEdit5Exit
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 528
      Top = 140
      Width = 90
      Height = 19
      AutoSize = False
      Color = 16773862
      DataField = 'IMPORTO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object rxdblcDeposito: TRxDBLookupCombo
      Left = 136
      Top = 89
      Width = 235
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsDeposito
      ParentFont = False
      TabOrder = 17
      Visible = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 161
      Width = 121
      Height = 22
      TabOrder = 18
      Text = 'Edit1'
      Visible = False
    end
    object Edit2: TEdit
      Left = 89
      Top = 15
      Width = 57
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object rxspedtNumDoc: TEdit
      Left = 230
      Top = 15
      Width = 67
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
    object Edit3: TEdit
      Left = 323
      Top = 15
      Width = 65
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = Edit3Exit
    end
    object Edit4: TEdit
      Left = 301
      Top = 15
      Width = 21
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object LookPagCod2: TRxDBLookupCombo
      Left = 352
      Top = 66
      Width = 65
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_PAGAMENTO'
      LookupDisplay = 'ID_PAGAMENTO'
      LookupSource = dsoPagamenti
      ParentFont = False
      TabOrder = 19
    end
    object LookPagDescr: TRxDBLookupCombo
      Left = 418
      Top = 66
      Width = 188
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_PAGAMENTO'
      LookupDisplay = 'DESCR'
      LookupSource = dsoPagamenti
      ParentFont = False
      TabOrder = 20
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 365
      Top = 161
      Width = 256
      Height = 19
      DropDownCount = 8
      DataField = 'COD_ESENZ'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dmodPub.dsoTab_Esente_IVA
      ParentFont = False
      TabOrder = 21
    end
    object CheckBox1: TCheckBox
      Left = 276
      Top = 162
      Width = 84
      Height = 17
      Caption = 'Esenzione'
      TabOrder = 22
      OnClick = CheckBox1Click
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 500
      Top = 103
      Width = 85
      Height = 22
      EnableValues = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
      ParentFont = False
      TabOrder = 23
    end
    object Edit7: TEdit
      Left = 593
      Top = 105
      Width = 65
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnExit = Edit3Exit
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 555
      Top = 35
      Width = 176
      Height = 19
      Hint = 'Ricerca x Partita Iva'
      DropDownCount = 10
      DataField = 'campo1'
      DataSource = DataSource1
      EmptyItemColor = 4210816
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'ID_CLI_FOR'
      LookupDisplay = 'PARTITA_IVA'
      LookupSource = DataSource2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
    end
    object DBEdit7: TDBEdit
      Left = 641
      Top = 165
      Width = 90
      Height = 16
      Hint = 'Saldo Conto'
      AutoSize = False
      DataField = 'SALDO'
      DataSource = DataSource3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 26
    end
  end
  object dsContab: TDataSource
    AutoEdit = False
    DataSet = rxmdPrimaNota
    Left = 66
    Top = 252
  end
  object dsPianoConti: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 658
    Top = 77
  end
  object dsCliFor: TDataSource
    DataSet = dmodAz.ibqTab_Cli
    Left = 474
    Top = 60
  end
  object rxmdPrimaNota: TRxMemoryData
    FieldDefs = <
      item
        Name = 'PK_CODICE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUM_PROT'
        DataType = ftInteger
      end
      item
        Name = 'DATA_MOV'
        DataType = ftDate
      end
      item
        Name = 'DATA_DOC'
        DataType = ftDate
      end
      item
        Name = 'NUM_DOC'
        DataType = ftInteger
      end
      item
        Name = 'DOC_ID'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_MOV'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SOTTOCONTO_DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DARE'
        DataType = ftFloat
      end
      item
        Name = 'AVERE'
        DataType = ftFloat
      end
      item
        Name = 'CLIFOR_ID'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CLIFOR'
        DataType = ftSmallint
      end
      item
        Name = 'BANCA_ID'
        DataType = ftInteger
      end
      item
        Name = 'BANCA_DESCR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOTE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DATA_SCADENZA'
        DataType = ftDate
      end
      item
        Name = 'TOTALE_PAGATO'
        DataType = ftFloat
      end
      item
        Name = 'SBILANCIO'
        DataType = ftFloat
      end
      item
        Name = 'NUM_ASS'
        DataType = ftInteger
      end
      item
        Name = 'PIANOCONTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CONTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CON_DETT'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'TIPO_MOV'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NUM_FATTURA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_FATTURA'
        DataType = ftDate
      end
      item
        Name = 'IMPORTO'
        DataType = ftFloat
      end
      item
        Name = 'ABBUONO'
        DataType = ftFloat
      end
      item
        Name = 'FK_SCADENZA'
        DataType = ftInteger
      end
      item
        Name = 'ASS_DATA_SCAD'
        DataType = ftDate
      end
      item
        Name = 'IMPOSTA'
        DataType = ftFloat
      end
      item
        Name = 'IVA_PERC'
        DataType = ftFloat
      end
      item
        Name = 'IMPONIBILE'
        DataType = ftFloat
      end>
    Left = 14
    Top = 215
    object rxmdPrimaNotaPAGAMENTO_ID: TIntegerField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
    end
    object rxmdPrimaNotaPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object rxmdPrimaNotaNUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object rxmdPrimaNotaDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object rxmdPrimaNotaDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object rxmdPrimaNotaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object rxmdPrimaNotaDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object rxmdPrimaNotaDESCR_MOV: TStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object rxmdPrimaNotaSOTTOCONTO_DESCR: TStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object rxmdPrimaNotaDARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object rxmdPrimaNotaAVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object rxmdPrimaNotaCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object rxmdPrimaNotaTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object rxmdPrimaNotaBANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
    end
    object rxmdPrimaNotaBANCA_DESCR: TStringField
      FieldName = 'BANCA_DESCR'
      Size = 100
    end
    object rxmdPrimaNotaNOTE: TStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object rxmdPrimaNotaDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object rxmdPrimaNotaTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      currency = True
    end
    object rxmdPrimaNotaSBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
      currency = True
    end
    object rxmdPrimaNotaPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object rxmdPrimaNotaNOME_CONTO: TStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object rxmdPrimaNotaCON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Required = True
    end
    object rxmdPrimaNotaTIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Required = True
    end
    object rxmdPrimaNotaNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object rxmdPrimaNotaDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object rxmdPrimaNotaIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      currency = True
    end
    object rxmdPrimaNotaABBUONO: TFloatField
      FieldName = 'ABBUONO'
      currency = True
    end
    object rxmdPrimaNotaFK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
    end
    object rxmdPrimaNotaASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
    end
    object rxmdPrimaNotaIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      currency = True
    end
    object rxmdPrimaNotaIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
    end
    object rxmdPrimaNotaIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      currency = True
    end
    object rxmdPrimaNotaNUM_ASS: TStringField
      FieldName = 'NUM_ASS'
      Size = 0
    end
    object rxmdPrimaNotaNUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
    end
    object rxmdPrimaNotaNUM_REG: TIntegerField
      FieldName = 'NUM_REG'
    end
    object rxmdPrimaNotaNUM_DOC_LETT: TStringField
      FieldName = 'NUM_DOC_LETT'
      Size = 4
    end
    object rxmdPrimaNotaCOD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
    end
    object rxmdPrimaNotaDESCR_ESENZ: TStringField
      DisplayWidth = 250
      FieldName = 'DESCR_ESENZ'
      Size = 250
    end
    object rxmdPrimaNotaREG_IVA: TIntegerField
      FieldName = 'REG_IVA'
    end
    object rxmdPrimaNotaMESE_COMP: TStringField
      FieldName = 'MESE_COMP'
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from  CONTABILITA'
      'where NUM_PROT=:N'
      'order by NUM_PROT')
    Left = 512
    Top = 63
    ParamData = <
      item
        DataType = ftInteger
        Name = 'N'
        ParamType = ptUnknown
      end>
    object IBQuery1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IBQuery1NUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object IBQuery1DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object IBQuery1DATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object IBQuery1NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IBQuery1DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IBQuery1DESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object IBQuery1SOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object IBQuery1DARE: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object IBQuery1AVERE: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object IBQuery1CLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object IBQuery1TIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBQuery1BANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
    end
    object IBQuery1BANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Size = 100
    end
    object IBQuery1NOTE: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object IBQuery1DATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object IBQuery1TOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      currency = True
    end
    object IBQuery1SBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
    end
    object IBQuery1PIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBQuery1NOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object IBQuery1CON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Required = True
    end
    object IBQuery1NUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object IBQuery1DATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object IBQuery1IMPORTO: TFloatField
      FieldName = 'IMPORTO'
      currency = True
    end
    object IBQuery1ABBUONO: TFloatField
      FieldName = 'ABBUONO'
      currency = True
    end
    object IBQuery1TIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
    end
    object IBQuery1IMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      currency = True
    end
    object IBQuery1IMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      currency = True
    end
    object IBQuery1IVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
    end
    object IBQuery1FK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
    end
    object IBQuery1ASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
    end
    object IBQuery1DEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Size = 3
    end
    object IBQuery1DEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Size = 50
    end
    object IBQuery1NUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object IBQuery1NUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object IBQuery1NUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object IBQuery1NUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object IBQuery1PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBQuery1COD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object IBQuery1DESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
  end
  object dsDeposito: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 272
    Top = 227
  end
  object dsVisContab: TDataSource
    DataSet = dmodAz.ibqryContab2
    Left = 44
    Top = 228
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from  CONTABILITA'
      'where NUM_PROT=:N'
      'order by NUM_PROT')
    Left = 408
    Top = 247
    ParamData = <
      item
        DataType = ftInteger
        Name = 'N'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'PK_CODICE'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUM_PROT'
    end
    object DateField1: TDateField
      FieldName = 'DATA_MOV'
    end
    object DateField2: TDateField
      FieldName = 'DATA_DOC'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DOC_ID'
    end
    object IBStringField1: TIBStringField
      FieldName = 'DESCR_MOV'
      Size = 100
    end
    object IBStringField2: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object FloatField1: TFloatField
      FieldName = 'DARE'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'AVERE'
      currency = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'CLIFOR_ID'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'BANCA_ID'
    end
    object IBStringField3: TIBStringField
      FieldName = 'BANCA_DESCR'
      Size = 100
    end
    object IBStringField4: TIBStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object DateField3: TDateField
      FieldName = 'DATA_SCADENZA'
    end
    object FloatField3: TFloatField
      FieldName = 'TOTALE_PAGATO'
      currency = True
    end
    object FloatField4: TFloatField
      FieldName = 'SBILANCIO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBStringField5: TIBStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object SmallintField2: TSmallintField
      FieldName = 'CON_DETT'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'NUM_FATTURA'
    end
    object DateField4: TDateField
      FieldName = 'DATA_FATTURA'
    end
    object FloatField5: TFloatField
      FieldName = 'IMPORTO'
      currency = True
    end
    object FloatField6: TFloatField
      FieldName = 'ABBUONO'
      currency = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'TIPO_MOV'
    end
    object FloatField7: TFloatField
      FieldName = 'IMPONIBILE'
      currency = True
    end
    object FloatField8: TFloatField
      FieldName = 'IMPOSTA'
      currency = True
    end
    object FloatField9: TFloatField
      FieldName = 'IVA_PERC'
    end
    object IntegerField10: TIntegerField
      FieldName = 'FK_SCADENZA'
    end
    object DateField5: TDateField
      FieldName = 'ASS_DATA_SCAD'
    end
    object IBStringField6: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Size = 3
    end
    object IBStringField7: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Size = 50
    end
    object IBQuery2NUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 52
    end
    object IBQuery2NUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object IBQuery2NUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object IBQuery2NUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object IBQuery2PAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object IBQuery2COD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object IBQuery2DESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
    object IBQuery2REG_IVA: TIntegerField
      FieldName = 'REG_IVA'
      Origin = '"CONTABILITA"."REG_IVA"'
    end
    object IBQuery2MESE_COMP: TIBStringField
      FieldName = 'MESE_COMP'
      Origin = '"CONTABILITA"."MESE_COMP"'
      Size = 2
    end
  end
  object ibProtAcq: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_ACQ'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_ACQ'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_ACQ '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select  * from NUM_PROT_ACQ'
      'order by numero,data')
    ModifySQL.Strings = (
      'update NUM_PROT_ACQ'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 136
    Top = 184
    object ibProtAcqNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_ACQ"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibProtAcqDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_ACQ"."DATA"'
    end
  end
  object ibProtVen: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_PROT_VEN'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_PROT_VEN'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_PROT_VEN '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select  * from NUM_PROT_VEN'
      'order by numero,data')
    ModifySQL.Strings = (
      'update NUM_PROT_VEN'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  NUMERO = :OLD_NUMERO')
    Left = 192
    Top = 184
    object ibProtVenNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_PROT_VEN"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibProtVenDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NUM_PROT_VEN"."DATA"'
    end
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from NUM_REG_DATA'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into NUM_REG_DATA'
      '  (DATA, NUMERO)'
      'values'
      '  (:DATA, :NUMERO)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  DATA'
      'from NUM_REG_DATA '
      'where'
      '  DATA = :DATA and'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select * from  NUM_REG_DATA'
      'where data=:dt'
      'order by numero,data')
    ModifySQL.Strings = (
      'update NUM_REG_DATA'
      'set'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO'
      'where'
      '  DATA = :OLD_DATA and'
      '  NUMERO = :OLD_NUMERO')
    Left = 144
    Top = 281
    object IBDataSet1NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"NUM_REG_DATA"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"NUM_REG_DATA"."DATA"'
    end
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 492
    Top = 332
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 160
    Top = 349
    object RxMemoryData1campo1: TIntegerField
      FieldName = 'campo1'
    end
    object RxMemoryData1campo2: TIntegerField
      FieldName = 'campo2'
    end
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 192
    Top = 349
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_piano_conti')
    Left = 536
    Top = 185
    object IBQuery2ID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Origin = '"TAB_PIANO_CONTI"."ID_PIANO_CONTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2GRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Origin = '"TAB_PIANO_CONTI"."GRUPPO"'
      Size = 2
    end
    object IBQuery2CONTO: TIBStringField
      FieldName = 'CONTO'
      Origin = '"TAB_PIANO_CONTI"."CONTO"'
      Size = 3
    end
    object IBQuery2SOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Origin = '"TAB_PIANO_CONTI"."SOTTOCONTO"'
      Size = 5
    end
    object IBQuery2NOME_CONTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO'
      Origin = '"TAB_PIANO_CONTI"."NOME_CONTO"'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object IBQuery2TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_PIANO_CONTI"."TIPO"'
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PIANO_CONTI"."DESCR"'
      Size = 50
    end
    object IBQuery2NATURA: TSmallintField
      FieldName = 'NATURA'
      Origin = '"TAB_PIANO_CONTI"."NATURA"'
    end
    object IBQuery2LIVELLO: TSmallintField
      FieldName = 'LIVELLO'
      Origin = '"TAB_PIANO_CONTI"."LIVELLO"'
    end
    object IBQuery2RIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
      Origin = '"TAB_PIANO_CONTI"."RIVENDITA"'
    end
    object IBQuery2STRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
      Origin = '"TAB_PIANO_CONTI"."STRUMENTALE"'
    end
    object IBQuery2INDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
      Origin = '"TAB_PIANO_CONTI"."INDEDUCIBILE"'
    end
    object IBQuery2STAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
      Origin = '"TAB_PIANO_CONTI"."STAMPA_IN_BILANCIO"'
    end
    object IBQuery2VARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
      Origin = '"TAB_PIANO_CONTI"."VARIAZIONE_FISCALE"'
    end
    object IBQuery2DICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Origin = '"TAB_PIANO_CONTI"."DICH_REDDITI_ID"'
      Size = 4
    end
    object IBQuery2RAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_PIANO_CONTI"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object IBQuery2CONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
      Origin = '"TAB_PIANO_CONTI"."CONTO_PERSONALIZZATO_ID"'
    end
    object IBQuery2CAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
      Origin = '"TAB_PIANO_CONTI"."CAPO_CONTO_CLI_FOR"'
    end
    object IBQuery2SPECIALE: TIntegerField
      FieldName = 'SPECIALE'
      Origin = '"TAB_PIANO_CONTI"."SPECIALE"'
    end
  end
  object ibqCliPIva: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_cli_for'
      'where tipo=1'
      'order by PARTITA_IVA')
    Left = 224
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ibqCliPIva
    Left = 296
    Top = 40
  end
  object ibqForPIva: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_cli_for'
      'where tipo=2'
      'order by PARTITA_IVA')
    Left = 264
    Top = 40
  end
  object ibqSaldo: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select PIANOCONTO_ID,(sum(dare)-sum(AVERE)) as SALDO from contab' +
        'ilita'
      'where PIANOCONTO_ID=:PCON'
      'group by PIANOCONTO_ID')
    Left = 496
    Top = 249
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCON'
        ParamType = ptUnknown
      end>
    object ibqSaldoPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      ProviderFlags = []
    end
    object ibqSaldoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
      currency = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ibqSaldo
    Left = 536
    Top = 249
  end
end
