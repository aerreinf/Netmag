object fConte2: TfConte2
  Left = 201
  Top = 141
  Width = 783
  Height = 586
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gestione Spese interne'
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 3
    Top = 9
    Width = 769
    Height = 541
    ActivePage = TabSheet7
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 6
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&1 Schede Carburante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object Label1: TLabel
        Left = 27
        Top = 29
        Width = 54
        Height = 14
        Caption = 'Codice Id.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 158
        Top = 29
        Width = 87
        Height = 14
        Caption = 'Descriz. Scheda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 506
        Top = 29
        Width = 61
        Height = 14
        Caption = 'Nominativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 674
        Top = 68
        Width = 66
        Height = 14
        Caption = 'Data Rientro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 472
        Top = 68
        Width = 22
        Height = 14
        Caption = 'Litri'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 565
        Top = 68
        Width = 29
        Height = 14
        Caption = 'Costi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 187
        Top = 68
        Width = 101
        Height = 14
        Caption = 'Descr. Automezzo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 678
        Top = 29
        Width = 59
        Height = 14
        Caption = 'Data Uscita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 2
        Top = 68
        Width = 65
        Height = 14
        Caption = 'Cod.Autom.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 338
        Top = 29
        Width = 44
        Height = 14
        Caption = 'ID. Nom.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 667
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Stampa 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 588
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Stampa 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object BitBtn13: TBitBtn
        Left = 4
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Uscita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = BitBtn13Click
      end
      object BitBtn14: TBitBtn
        Left = 81
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Rientro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = BitBtn14Click
      end
      object BitBtn15: TBitBtn
        Left = 159
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Modifica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object BitBtn16: TBitBtn
        Left = 237
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Elimina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = BitBtn16Click
      end
      object BitBtn17: TBitBtn
        Left = 413
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Salva'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = BitBtn17Click
      end
      object BitBtn18: TBitBtn
        Left = 333
        Top = 2
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Annulla'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = BitBtn18Click
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 305
        Top = 43
        Width = 111
        Height = 22
        DropDownCount = 8
        Color = clWhite
        DataField = 'ID_DIP'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 3
        OnChange = RxDBLookupCombo1Change
        OnKeyPress = RxDBLookupCombo1KeyPress
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 424
        Top = 43
        Width = 225
        Height = 22
        DropDownCount = 8
        Color = clWhite
        DataField = 'DESCR_DIP'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 4
        OnChange = RxDBLookupCombo2Change
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 136
        Width = 759
        Height = 375
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 18
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold, fsItalic]
        Columns = <
          item
            Color = 11599871
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Color = 11599871
            Expanded = False
            FieldName = 'DESCR_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 213
            Visible = True
          end
          item
            Color = 11599871
            Expanded = False
            FieldName = 'DATA_USCITA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Uscita'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Color = 11599871
            Expanded = False
            FieldName = 'DATA_ENTRATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrata'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Color = 11599871
            Expanded = False
            FieldName = 'ID_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Dip.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 11599871
            Expanded = False
            FieldName = 'DESCR_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Dip.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Color = 11599871
            Expanded = False
            FieldName = 'COSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Alignment = taLeftJustify
            Color = 11599871
            Expanded = False
            FieldName = 'IMPORTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'COD_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'DESCR_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Alignment = taLeftJustify
            Color = 11599871
            Expanded = False
            FieldName = 'PK_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'NUM_PROT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'TIPO_DOC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'NOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'DEPOSITO_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Color = 11599871
            Expanded = False
            FieldName = 'DEPOSITO_DESCR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
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
            Alignment = taLeftJustify
            Color = 11599871
            Expanded = False
            FieldName = 'QTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
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
      object DBEdit9: TDBEdit
        Left = 2
        Top = 42
        Width = 113
        Height = 23
        DataField = 'CODICE_ARTICOLO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnDblClick = DBEdit9DblClick
        OnExit = DBEdit9Exit
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 42
        Width = 181
        Height = 23
        DataField = 'DESCR_ARTICOLO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnDblClick = DBEdit1DblClick
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 82
        Width = 329
        Height = 23
        DataField = 'DESCR_AUTOMEZZO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnDblClick = DBEdit2DblClick
      end
      object DBEdit10: TDBEdit
        Left = 0
        Top = 82
        Width = 77
        Height = 23
        DataField = 'COD_AUTOMEZZO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnDblClick = DBEdit10DblClick
        OnExit = DBEdit10Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 442
        Top = 82
        Width = 89
        Height = 23
        DataField = 'QTA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 538
        Top = 82
        Width = 89
        Height = 23
        DataField = 'IMPORTO'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 655
        Top = 43
        Width = 105
        Height = 23
        DataField = 'DATA_USCITA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 655
        Top = 82
        Width = 105
        Height = 23
        DataField = 'DATA_ENTRATA'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 109
        Width = 225
        Height = 25
        Cursor = crHandPoint
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Flat = True
        Hints.Strings = (
          'Primo record'
          'Precedente record'
          'Prossimo record'
          'Ultimo record'
          'Refresh data')
        TabOrder = 19
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&2 Automezzi'
      ImageIndex = 1
      object Label10: TLabel
        Left = 170
        Top = 67
        Width = 61
        Height = 14
        Caption = 'Nominativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 666
        Top = 67
        Width = 66
        Height = 14
        Caption = 'Data Rientro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 36
        Top = 105
        Width = 21
        Height = 14
        Caption = 'Km.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 105
        Top = 105
        Width = 75
        Height = 14
        Caption = 'Costi Riparaz.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 266
        Top = 29
        Width = 101
        Height = 14
        Caption = 'Descr. Automezzo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 670
        Top = 29
        Width = 59
        Height = 14
        Caption = 'Data Uscita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 0
        Top = 29
        Width = 65
        Height = 14
        Caption = 'Cod.Autom.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 0
        Top = 67
        Width = 44
        Height = 14
        Caption = 'ID. Nom.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 378
        Top = 67
        Width = 163
        Height = 14
        Caption = 'Descriz. Manut.,Riparaz.,Danni'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 635
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Stampa 2'
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 540
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Stampa 1'
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 4
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Uscita'
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 81
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Rientro'
        TabOrder = 3
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 159
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Modifica'
        TabOrder = 4
      end
      object BitBtn8: TBitBtn
        Left = 237
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Elimina'
        TabOrder = 5
        OnClick = BitBtn8Click
      end
      object BitBtn9: TBitBtn
        Left = 413
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Salva'
        Enabled = False
        TabOrder = 6
        OnClick = BitBtn9Click
      end
      object BitBtn10: TBitBtn
        Left = 333
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Annulla'
        Enabled = False
        TabOrder = 7
        OnClick = BitBtn10Click
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 0
        Top = 82
        Width = 89
        Height = 23
        DropDownCount = 8
        Color = clWhite
        DataField = 'ID_DIP'
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        LookupField = 'CODICE'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 8
        OnChange = RxDBLookupCombo3Change
        OnKeyPress = RxDBLookupCombo3KeyPress
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 88
        Top = 82
        Width = 225
        Height = 23
        DropDownCount = 8
        Color = clWhite
        DataField = 'DESCR_DIP'
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 9
        OnChange = RxDBLookupCombo4Change
      end
      object DBEdit11: TDBEdit
        Left = 152
        Top = 43
        Width = 329
        Height = 22
        DataField = 'DESCR_AUTOMEZZO'
        DataSource = DataSource2
        TabOrder = 10
        OnDblClick = DBEdit11DblClick
      end
      object DBEdit12: TDBEdit
        Left = 0
        Top = 43
        Width = 145
        Height = 22
        DataField = 'COD_AUTOMEZZO'
        DataSource = DataSource2
        TabOrder = 11
        OnExit = DBEdit12Exit
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 655
        Top = 43
        Width = 89
        Height = 22
        DataField = 'DATA_USCITA'
        DataSource = DataSource2
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 655
        Top = 82
        Width = 89
        Height = 22
        DataField = 'DATA_ENTRATA'
        DataSource = DataSource2
        TabOrder = 13
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 144
        Width = 746
        Height = 353
        DataSource = DataSource2
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 14
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold, fsItalic]
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO_DOC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 213
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_USCITA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Uscita'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ENTRATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrata'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Dip.'
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
            FieldName = 'DESCR_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Dip.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'IMPORTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'COD_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'DESCR_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'PK_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'NUM_PROT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'NOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'DEPOSITO_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'DEPOSITO_DESCR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
            FieldName = 'QTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
          end>
      end
      object DBEdit15: TDBEdit
        Left = 312
        Top = 82
        Width = 329
        Height = 22
        DataField = 'NOTE'
        DataSource = DataSource2
        TabOrder = 15
      end
      object DBEdit4: TDBEdit
        Left = 2
        Top = 119
        Width = 89
        Height = 22
        DataField = 'QTA'
        DataSource = DataSource2
        TabOrder = 16
      end
      object DBEdit8: TDBEdit
        Left = 98
        Top = 119
        Width = 89
        Height = 22
        DataField = 'COSTO'
        DataSource = DataSource2
        TabOrder = 17
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&3 Attrezz. ed Utensili'
      ImageIndex = 2
      object Label8: TLabel
        Left = 172
        Top = 67
        Width = 63
        Height = 15
        Caption = 'Nominativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 664
        Top = 67
        Width = 70
        Height = 15
        Caption = 'Data Rientro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 506
        Top = 29
        Width = 78
        Height = 15
        Caption = 'Costi Riparaz.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 293
        Top = 29
        Width = 46
        Height = 15
        Caption = 'Utensile'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 667
        Top = 29
        Width = 65
        Height = 15
        Caption = 'Data Uscita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 2
        Top = 29
        Width = 71
        Height = 15
        Caption = 'Cod.Utensile'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 2
        Top = 67
        Width = 46
        Height = 15
        Caption = 'ID. Nom.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 398
        Top = 67
        Width = 171
        Height = 15
        Caption = 'Descriz. Manut.,Riparaz.,Danni'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn11: TBitBtn
        Left = 635
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Stampa 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn12: TBitBtn
        Left = 540
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Stampa 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn19: TBitBtn
        Left = 4
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Uscita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn19Click
      end
      object BitBtn20: TBitBtn
        Left = 81
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Rientro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn20Click
      end
      object BitBtn21: TBitBtn
        Left = 159
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Modifica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object BitBtn22: TBitBtn
        Left = 237
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Elimina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn22Click
      end
      object BitBtn23: TBitBtn
        Left = 413
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Salva'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn23Click
      end
      object BitBtn24: TBitBtn
        Left = 333
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Annulla'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn24Click
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 2
        Top = 82
        Width = 89
        Height = 21
        DropDownCount = 8
        Color = clWhite
        DataField = 'ID_DIP'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 8
        OnChange = RxDBLookupCombo3Change
        OnKeyPress = RxDBLookupCombo3KeyPress
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 92
        Top = 82
        Width = 223
        Height = 21
        DropDownCount = 8
        Color = clWhite
        DataField = 'DESCR_DIP'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Commessi
        ParentFont = False
        TabOrder = 9
        OnChange = RxDBLookupCombo4Change
      end
      object DBEdit16: TDBEdit
        Left = 152
        Top = 43
        Width = 329
        Height = 22
        DataField = 'DESCR_AUTOMEZZO'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnDblClick = DBEdit11DblClick
      end
      object DBEdit17: TDBEdit
        Left = 2
        Top = 43
        Width = 145
        Height = 22
        DataField = 'COD_AUTOMEZZO'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit12Exit
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 655
        Top = 43
        Width = 89
        Height = 22
        DataField = 'DATA_USCITA'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit19: TDBEdit
        Left = 655
        Top = 82
        Width = 89
        Height = 22
        DataField = 'DATA_ENTRATA'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBGrid3: TDBGrid
        Left = 2
        Top = 112
        Width = 757
        Height = 399
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 14
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold, fsItalic]
        Columns = <
          item
            Color = 12582911
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DESCR_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Scheda'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 213
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DATA_USCITA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Uscita'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DATA_ENTRATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrata'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'ID_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Dip.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DESCR_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descr.Dip.'
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'COSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'IMPORTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'COD_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DESCR_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'PK_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'NUM_PROT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'TIPO_DOC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'NOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DEPOSITO_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'DEPOSITO_DESCR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'QTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Color = clBlack
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object DBEdit20: TDBEdit
        Left = 319
        Top = 82
        Width = 329
        Height = 22
        DataField = 'NOTE'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit22: TDBEdit
        Left = 506
        Top = 43
        Width = 89
        Height = 22
        DataField = 'COSTO'
        DataSource = DataSource3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&4 Abbigl. 626'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = '&5 Strumentazioni'
      ImageIndex = 4
    end
    object TabSheet6: TTabSheet
      Caption = '&6 Beni Strumentali ufficio'
      ImageIndex = 5
    end
    object TabSheet7: TTabSheet
      Caption = '&7 Riepiloghi'
      ImageIndex = 6
      OnShow = TabSheet7Show
      object Label19: TLabel
        Left = 496
        Top = 0
        Width = 39
        Height = 14
        Caption = 'Da Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 592
        Top = 0
        Width = 34
        Height = 14
        Caption = 'A Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 712
        Top = 1
        Width = 49
        Height = 22
        Caption = '&Filtra'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = -1
        Width = 135
        Height = 17
        Caption = 'Tipo Movimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 152
        Top = -1
        Width = 97
        Height = 17
        Caption = 'Dipendente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object DateEdit1: TDateEdit
        Left = 496
        Top = 16
        Width = 89
        Height = 21
        DefaultToday = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
      object DateEdit2: TDateEdit
        Left = 592
        Top = 16
        Width = 89
        Height = 21
        DefaultToday = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
      end
      object CheckBox3: TCheckBox
        Left = 344
        Top = -1
        Width = 97
        Height = 17
        Caption = 'Articolo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox3Click
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 64
        Width = 759
        Height = 445
        DataSource = DataSource5
        TabOrder = 5
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Color = 11796479
            Expanded = False
            FieldName = 'TIPO_DOC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'CODICE_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'DESCR_ARTICOLO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Width = 227
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 11796479
            Expanded = False
            FieldName = 'DATA_USCITA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'USCITA'
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
            Color = 11796479
            Expanded = False
            FieldName = 'DATA_ENTRATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ENTRATA'
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
            Color = 11796479
            Expanded = False
            FieldName = 'ID_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 11796479
            Expanded = False
            FieldName = 'DESCR_DIP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'NOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'COSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'IMPORTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'DEPOSITO_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'DEPOSITO_DESCR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'COD_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'DESCR_AUTOMEZZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'QTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'PK_CODICE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Color = 11796479
            Expanded = False
            FieldName = 'NUM_PROT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end>
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 0
        Top = 16
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'TIPO_DOC'
        LookupDisplay = 'TIPO_DOC'
        LookupSource = DataSource6
        TabOrder = 6
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 152
        Top = 16
        Width = 153
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = dmodAz.dsoTab_Commessi
        TabOrder = 7
        OnChange = RxDBLookupCombo8Change
      end
      object RxDBLookupCombo9: TRxDBLookupCombo
        Left = 344
        Top = 16
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'CODICE_ARTICOLO'
        LookupSource = dmodAz.dsoTab_Articoli
        TabOrder = 8
        OnChange = RxDBLookupCombo9Change
      end
      object RxDBLookupCombo10: TRxDBLookupCombo
        Left = 344
        Top = 40
        Width = 241
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Articoli
        TabOrder = 9
        OnChange = RxDBLookupCombo10Change
      end
      object RxDBLookupCombo11: TRxDBLookupCombo
        Left = 152
        Top = 40
        Width = 185
        Height = 21
        DropDownCount = 8
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = dmodAz.dsoTab_Commessi
        TabOrder = 10
        OnChange = RxDBLookupCombo11Change
      end
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IbqCarb
    Left = 681
    Top = 487
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = ibdAutom
    Left = 681
    Top = 455
  end
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = IbdUtens
    Left = 681
    Top = 423
  end
  object DataSource4: TDataSource
    Left = 681
    Top = 391
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 321
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object IbqCarb: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from speseint'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into speseint'
      '  (PK_CODICE, NUM_PROT, DATA_USCITA, DATA_ENTRATA, '
      'CODICE_ARTICOLO, DESCR_ARTICOLO, '
      '   ID_DIP, DESCR_DIP, TIPO_DOC, NOTE, COSTO, IMPORTO, '
      'DEPOSITO_CODICE, '
      '   DEPOSITO_DESCR, COD_AUTOMEZZO, DESCR_AUTOMEZZO, QTA)'
      'values'
      '  (:PK_CODICE, :NUM_PROT, :DATA_USCITA, :DATA_ENTRATA, '
      ':CODICE_ARTICOLO, '
      
        '   :DESCR_ARTICOLO, :ID_DIP, :DESCR_DIP, :TIPO_DOC, :NOTE, :COST' +
        'O, '
      ':IMPORTO, '
      '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :COD_AUTOMEZZO, '
      ':DESCR_AUTOMEZZO, '
      '   :QTA)')
    RefreshSQL.Strings = (
      'Select *'
      'from speseint '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from speseint'
      'where TIPO_DOC = '#39'CARBUR'#39)
    ModifySQL.Strings = (
      'update speseint'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  NUM_PROT = :NUM_PROT,'
      '  DATA_USCITA = :DATA_USCITA,'
      '  DATA_ENTRATA = :DATA_ENTRATA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  ID_DIP = :ID_DIP,'
      '  DESCR_DIP = :DESCR_DIP,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  NOTE = :NOTE,'
      '  COSTO = :COSTO,'
      '  IMPORTO = :IMPORTO,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  COD_AUTOMEZZO = :COD_AUTOMEZZO,'
      '  DESCR_AUTOMEZZO = :DESCR_AUTOMEZZO,'
      '  QTA = :QTA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_SPESEINT'
    Left = 648
    Top = 488
    object IbqCarbPK_CODICE: TFloatField
      FieldName = 'PK_CODICE'
      Origin = '"SPESEINT"."PK_CODICE"'
      Required = True
    end
    object IbqCarbNUM_PROT: TIBStringField
      FieldName = 'NUM_PROT'
      Origin = '"SPESEINT"."NUM_PROT"'
      Size = 10
    end
    object IbqCarbDATA_USCITA: TDateTimeField
      FieldName = 'DATA_USCITA'
      Origin = '"SPESEINT"."DATA_USCITA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object IbqCarbDATA_ENTRATA: TDateTimeField
      FieldName = 'DATA_ENTRATA'
      Origin = '"SPESEINT"."DATA_ENTRATA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object IbqCarbCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"SPESEINT"."CODICE_ARTICOLO"'
    end
    object IbqCarbDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"SPESEINT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object IbqCarbID_DIP: TFloatField
      FieldName = 'ID_DIP'
      Origin = '"SPESEINT"."ID_DIP"'
    end
    object IbqCarbDESCR_DIP: TIBStringField
      FieldName = 'DESCR_DIP'
      Origin = '"SPESEINT"."DESCR_DIP"'
      Size = 100
    end
    object IbqCarbTIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"SPESEINT"."TIPO_DOC"'
      Size = 10
    end
    object IbqCarbNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"SPESEINT"."NOTE"'
      Size = 255
    end
    object IbqCarbCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"SPESEINT"."COSTO"'
      currency = True
    end
    object IbqCarbIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"SPESEINT"."IMPORTO"'
      currency = True
    end
    object IbqCarbDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"SPESEINT"."DEPOSITO_CODICE"'
      Size = 3
    end
    object IbqCarbDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"SPESEINT"."DEPOSITO_DESCR"'
      Size = 50
    end
    object IbqCarbCOD_AUTOMEZZO: TIBStringField
      FieldName = 'COD_AUTOMEZZO'
      Origin = '"SPESEINT"."COD_AUTOMEZZO"'
    end
    object IbqCarbDESCR_AUTOMEZZO: TIBStringField
      FieldName = 'DESCR_AUTOMEZZO'
      Origin = '"SPESEINT"."DESCR_AUTOMEZZO"'
      Size = 100
    end
    object IbqCarbQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"SPESEINT"."QTA"'
    end
  end
  object ibdRiep: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from speseint')
    Left = 56
    Top = 400
  end
  object DataSource5: TDataSource
    DataSet = ibdRiep
    Left = 88
    Top = 400
  end
  object ibdAutom: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from speseint'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into speseint'
      '  (PK_CODICE, NUM_PROT, DATA_USCITA, DATA_ENTRATA, '
      'CODICE_ARTICOLO, DESCR_ARTICOLO, '
      '   ID_DIP, DESCR_DIP, TIPO_DOC, NOTE, COSTO, IMPORTO, '
      'DEPOSITO_CODICE, '
      '   DEPOSITO_DESCR, COD_AUTOMEZZO, DESCR_AUTOMEZZO, QTA)'
      'values'
      '  (:PK_CODICE, :NUM_PROT, :DATA_USCITA, :DATA_ENTRATA, '
      ':CODICE_ARTICOLO, '
      
        '   :DESCR_ARTICOLO, :ID_DIP, :DESCR_DIP, :TIPO_DOC, :NOTE, :COST' +
        'O, '
      ':IMPORTO, '
      '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :COD_AUTOMEZZO, '
      ':DESCR_AUTOMEZZO, '
      '   :QTA)')
    RefreshSQL.Strings = (
      'Select *'
      'from speseint '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from speseint'
      'where TIPO_DOC = '#39'AUTOM'#39)
    ModifySQL.Strings = (
      'update speseint'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  NUM_PROT = :NUM_PROT,'
      '  DATA_USCITA = :DATA_USCITA,'
      '  DATA_ENTRATA = :DATA_ENTRATA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  ID_DIP = :ID_DIP,'
      '  DESCR_DIP = :DESCR_DIP,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  NOTE = :NOTE,'
      '  COSTO = :COSTO,'
      '  IMPORTO = :IMPORTO,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  COD_AUTOMEZZO = :COD_AUTOMEZZO,'
      '  DESCR_AUTOMEZZO = :DESCR_AUTOMEZZO,'
      '  QTA = :QTA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_SPESEINT'
    Left = 648
    Top = 456
    object ibdAutomPK_CODICE: TFloatField
      FieldName = 'PK_CODICE'
      Origin = '"SPESEINT"."PK_CODICE"'
      Required = True
    end
    object ibdAutomNUM_PROT: TIBStringField
      FieldName = 'NUM_PROT'
      Origin = '"SPESEINT"."NUM_PROT"'
      Size = 10
    end
    object ibdAutomDATA_USCITA: TDateTimeField
      FieldName = 'DATA_USCITA'
      Origin = '"SPESEINT"."DATA_USCITA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object ibdAutomDATA_ENTRATA: TDateTimeField
      FieldName = 'DATA_ENTRATA'
      Origin = '"SPESEINT"."DATA_ENTRATA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object ibdAutomCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"SPESEINT"."CODICE_ARTICOLO"'
    end
    object ibdAutomDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"SPESEINT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibdAutomID_DIP: TFloatField
      FieldName = 'ID_DIP'
      Origin = '"SPESEINT"."ID_DIP"'
    end
    object ibdAutomDESCR_DIP: TIBStringField
      FieldName = 'DESCR_DIP'
      Origin = '"SPESEINT"."DESCR_DIP"'
      Size = 100
    end
    object ibdAutomTIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"SPESEINT"."TIPO_DOC"'
      Size = 10
    end
    object ibdAutomNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"SPESEINT"."NOTE"'
      Size = 255
    end
    object ibdAutomCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"SPESEINT"."COSTO"'
      currency = True
    end
    object ibdAutomIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"SPESEINT"."IMPORTO"'
      currency = True
    end
    object ibdAutomDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"SPESEINT"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibdAutomDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"SPESEINT"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibdAutomCOD_AUTOMEZZO: TIBStringField
      FieldName = 'COD_AUTOMEZZO'
      Origin = '"SPESEINT"."COD_AUTOMEZZO"'
    end
    object ibdAutomDESCR_AUTOMEZZO: TIBStringField
      FieldName = 'DESCR_AUTOMEZZO'
      Origin = '"SPESEINT"."DESCR_AUTOMEZZO"'
      Size = 100
    end
    object ibdAutomQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"SPESEINT"."QTA"'
    end
  end
  object IbdUtens: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from speseint'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into speseint'
      '  (PK_CODICE, NUM_PROT, DATA_USCITA, DATA_ENTRATA, '
      'CODICE_ARTICOLO, DESCR_ARTICOLO, '
      '   ID_DIP, DESCR_DIP, TIPO_DOC, NOTE, COSTO, IMPORTO, '
      'DEPOSITO_CODICE, '
      '   DEPOSITO_DESCR, COD_AUTOMEZZO, DESCR_AUTOMEZZO, QTA)'
      'values'
      '  (:PK_CODICE, :NUM_PROT, :DATA_USCITA, :DATA_ENTRATA, '
      ':CODICE_ARTICOLO, '
      
        '   :DESCR_ARTICOLO, :ID_DIP, :DESCR_DIP, :TIPO_DOC, :NOTE, :COST' +
        'O, '
      ':IMPORTO, '
      '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :COD_AUTOMEZZO, '
      ':DESCR_AUTOMEZZO, '
      '   :QTA)')
    RefreshSQL.Strings = (
      'Select *'
      'from speseint '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from speseint'
      'where TIPO_DOC = '#39'UTENS'#39)
    ModifySQL.Strings = (
      'update speseint'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  NUM_PROT = :NUM_PROT,'
      '  DATA_USCITA = :DATA_USCITA,'
      '  DATA_ENTRATA = :DATA_ENTRATA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  ID_DIP = :ID_DIP,'
      '  DESCR_DIP = :DESCR_DIP,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  NOTE = :NOTE,'
      '  COSTO = :COSTO,'
      '  IMPORTO = :IMPORTO,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  COD_AUTOMEZZO = :COD_AUTOMEZZO,'
      '  DESCR_AUTOMEZZO = :DESCR_AUTOMEZZO,'
      '  QTA = :QTA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_SPESEINT'
    Left = 648
    Top = 424
    object IbdUtensPK_CODICE: TFloatField
      FieldName = 'PK_CODICE'
      Origin = '"SPESEINT"."PK_CODICE"'
      Required = True
    end
    object IbdUtensNUM_PROT: TIBStringField
      FieldName = 'NUM_PROT'
      Origin = '"SPESEINT"."NUM_PROT"'
      Size = 10
    end
    object IbdUtensDATA_USCITA: TDateTimeField
      FieldName = 'DATA_USCITA'
      Origin = '"SPESEINT"."DATA_USCITA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object IbdUtensDATA_ENTRATA: TDateTimeField
      FieldName = 'DATA_ENTRATA'
      Origin = '"SPESEINT"."DATA_ENTRATA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object IbdUtensCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"SPESEINT"."CODICE_ARTICOLO"'
    end
    object IbdUtensDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"SPESEINT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object IbdUtensID_DIP: TFloatField
      FieldName = 'ID_DIP'
      Origin = '"SPESEINT"."ID_DIP"'
    end
    object IbdUtensDESCR_DIP: TIBStringField
      FieldName = 'DESCR_DIP'
      Origin = '"SPESEINT"."DESCR_DIP"'
      Size = 100
    end
    object IbdUtensTIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"SPESEINT"."TIPO_DOC"'
      Size = 10
    end
    object IbdUtensNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"SPESEINT"."NOTE"'
      Size = 255
    end
    object IbdUtensCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"SPESEINT"."COSTO"'
    end
    object IbdUtensIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"SPESEINT"."IMPORTO"'
    end
    object IbdUtensDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"SPESEINT"."DEPOSITO_CODICE"'
      Size = 3
    end
    object IbdUtensDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"SPESEINT"."DEPOSITO_DESCR"'
      Size = 50
    end
    object IbdUtensCOD_AUTOMEZZO: TIBStringField
      FieldName = 'COD_AUTOMEZZO'
      Origin = '"SPESEINT"."COD_AUTOMEZZO"'
    end
    object IbdUtensDESCR_AUTOMEZZO: TIBStringField
      FieldName = 'DESCR_AUTOMEZZO'
      Origin = '"SPESEINT"."DESCR_AUTOMEZZO"'
      Size = 100
    end
    object IbdUtensQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"SPESEINT"."QTA"'
    end
  end
  object IbdAbbigl: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from speseint'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into speseint'
      '  (PK_CODICE, NUM_PROT, DATA_USCITA, DATA_ENTRATA, '
      'CODICE_ARTICOLO, DESCR_ARTICOLO, '
      '   ID_DIP, DESCR_DIP, TIPO_DOC, NOTE, COSTO, IMPORTO, '
      'DEPOSITO_CODICE, '
      '   DEPOSITO_DESCR, COD_AUTOMEZZO, DESCR_AUTOMEZZO, QTA)'
      'values'
      '  (:PK_CODICE, :NUM_PROT, :DATA_USCITA, :DATA_ENTRATA, '
      ':CODICE_ARTICOLO, '
      
        '   :DESCR_ARTICOLO, :ID_DIP, :DESCR_DIP, :TIPO_DOC, :NOTE, :COST' +
        'O, '
      ':IMPORTO, '
      '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :COD_AUTOMEZZO, '
      ':DESCR_AUTOMEZZO, '
      '   :QTA)')
    RefreshSQL.Strings = (
      'Select *'
      'from speseint '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from speseint'
      'where TIPO_DOC = '#39'ABBIGL'#39)
    ModifySQL.Strings = (
      'update speseint'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  NUM_PROT = :NUM_PROT,'
      '  DATA_USCITA = :DATA_USCITA,'
      '  DATA_ENTRATA = :DATA_ENTRATA,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  ID_DIP = :ID_DIP,'
      '  DESCR_DIP = :DESCR_DIP,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  NOTE = :NOTE,'
      '  COSTO = :COSTO,'
      '  IMPORTO = :IMPORTO,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  COD_AUTOMEZZO = :COD_AUTOMEZZO,'
      '  DESCR_AUTOMEZZO = :DESCR_AUTOMEZZO,'
      '  QTA = :QTA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_SPESEINT'
    Left = 648
    Top = 392
    object FloatField1: TFloatField
      FieldName = 'PK_CODICE'
      Origin = '"SPESEINT"."PK_CODICE"'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NUM_PROT'
      Origin = '"SPESEINT"."NUM_PROT"'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_USCITA'
      Origin = '"SPESEINT"."DATA_USCITA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA_ENTRATA'
      Origin = '"SPESEINT"."DATA_ENTRATA"'
      EditMask = '!99/99/\2\000;1;_'
    end
    object IBStringField2: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"SPESEINT"."CODICE_ARTICOLO"'
    end
    object IBStringField3: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"SPESEINT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'ID_DIP'
      Origin = '"SPESEINT"."ID_DIP"'
    end
    object IBStringField4: TIBStringField
      FieldName = 'DESCR_DIP'
      Origin = '"SPESEINT"."DESCR_DIP"'
      Size = 100
    end
    object IBStringField5: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"SPESEINT"."TIPO_DOC"'
      Size = 10
    end
    object IBStringField6: TIBStringField
      FieldName = 'NOTE'
      Origin = '"SPESEINT"."NOTE"'
      Size = 255
    end
    object FloatField3: TFloatField
      FieldName = 'COSTO'
      Origin = '"SPESEINT"."COSTO"'
      currency = True
    end
    object FloatField4: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"SPESEINT"."IMPORTO"'
      currency = True
    end
    object IBStringField7: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"SPESEINT"."DEPOSITO_CODICE"'
      Size = 3
    end
    object IBStringField8: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"SPESEINT"."DEPOSITO_DESCR"'
      Size = 50
    end
    object IBStringField9: TIBStringField
      FieldName = 'COD_AUTOMEZZO'
      Origin = '"SPESEINT"."COD_AUTOMEZZO"'
    end
    object IBStringField10: TIBStringField
      FieldName = 'DESCR_AUTOMEZZO'
      Origin = '"SPESEINT"."DESCR_AUTOMEZZO"'
      Size = 100
    end
    object FloatField5: TFloatField
      FieldName = 'QTA'
      Origin = '"SPESEINT"."QTA"'
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct tipo_doc from speseint'
      'order by tipo_doc')
    Left = 56
    Top = 64
  end
  object DataSource6: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 64
  end
end
