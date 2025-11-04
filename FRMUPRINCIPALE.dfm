object frmPrincipale: TfrmPrincipale
  Left = 205
  Top = 153
  Width = 681
  Height = 537
  AlphaBlendValue = 245
  BorderWidth = 1
  Caption = 'N e t m @ g'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = mmMenuPrincipale
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ctrlbarGeneralCtrl: TControlBar
    Left = 0
    Top = 0
    Width = 671
    Height = 57
    Align = alTop
    AutoDock = False
    BevelInner = bvLowered
    BevelOuter = bvRaised
    Color = clMenuBar
    DockSite = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object tbarMenuBtns: TToolBar
      Left = 11
      Top = 2
      Width = 654
      Height = 20
      AutoSize = True
      ButtonHeight = 20
      ButtonWidth = 79
      Color = clWhite
      EdgeBorders = []
      EdgeInner = esLowered
      EdgeOuter = esRaised
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      List = True
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = False
      TabOrder = 0
      Wrapable = False
      object tbtnFile: TToolButton
        Left = 0
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&File'
        DropdownMenu = popFile
        Grouped = True
        ImageIndex = 0
      end
      object tbtnAnag: TToolButton
        Left = 35
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Anagrafica'
        DropdownMenu = popAnag
        Grouped = True
        ImageIndex = 1
      end
      object tbtnMagazzino: TToolButton
        Left = 109
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Magazzino'
        DropdownMenu = popMagazzino
        Grouped = True
        ImageIndex = 3
      end
      object tbtnDocumenti: TToolButton
        Left = 183
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Documenti'
        DropdownMenu = popDocumenti
        Grouped = True
        ImageIndex = 3
      end
      object tbtnContab: TToolButton
        Left = 258
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Contabilita'
        DropdownMenu = popContab
        Grouped = True
        ImageIndex = 3
      end
      object tbtnIVA: TToolButton
        Left = 332
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&IVA'
        DropdownMenu = popIVA
        Grouped = True
        ImageIndex = 3
      end
      object tbtnSpampe: TToolButton
        Left = 367
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Stampe'
        DropdownMenu = pmStampe
        Grouped = True
        ImageIndex = 3
      end
      object tbtnAltre: TToolButton
        Left = 425
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Alt&re'
        DropdownMenu = popAltre
        Grouped = True
        ImageIndex = 3
      end
      object tbtnOptions: TToolButton
        Left = 468
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '&Utility'
        DropdownMenu = popOptions
        Grouped = True
        ImageIndex = 2
      end
      object ToolButton4: TToolButton
        Left = 514
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Gest.Int.'
        DropdownMenu = PopupMenu1
        ImageIndex = 3
      end
      object ToolButton1: TToolButton
        Left = 576
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = 'Casse'
        DropdownMenu = PopCasse
        ImageIndex = 5
      end
      object ToolButton5: TToolButton
        Left = 627
        Top = 0
        Cursor = crHandPoint
        AutoSize = True
        Caption = '?'
        DropdownMenu = popInfo
        Grouped = True
        ImageIndex = 4
      end
    end
    inline frmBarNED1: TfrmBarNED
      Left = 11
      Top = 28
      Width = 85
      Height = 22
      Align = alLeft
      AutoSize = True
      TabOrder = 1
      inherited tbarNED: TToolBar
        Left = 0
        Width = 85
        DragKind = dkDock
        Flat = True
        inherited sep0: TToolButton
          Top = 0
        end
        inherited tbtnNew: TToolButton
          Top = 0
          Cursor = crHandPoint
          Hint = 'Inserire / Modificare'
          Action = actToolBar_Nuovo
          Enabled = False
          ParentShowHint = False
          ShowHint = True
        end
        inherited tbtnEdit: TToolButton
          Top = 0
          Cursor = crHandPoint
          Action = actToolBar_Modifica
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
        end
        inherited sep1: TToolButton
          Top = 0
          Width = 5
        end
        inherited tbtnRefresh: TToolButton
          Left = 59
          Top = 0
          Cursor = crHandPoint
          Action = actToolBar_Update
          Enabled = False
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    inline frmBarMove1: TfrmBarMove
      Left = 109
      Top = 28
      Width = 109
      Height = 22
      Align = alLeft
      AutoSize = True
      TabOrder = 2
      inherited tbarMOVE: TToolBar
        Left = 0
        Width = 109
        Flat = True
        inherited sep0: TToolButton
          Top = 0
        end
        inherited tbtnFirst: TToolButton
          Top = 0
          Cursor = crHandPoint
          Enabled = False
          OnClick = frmBarMove1tbtnFirstClick
        end
        inherited tbtnPrior: TToolButton
          Top = 0
          Cursor = crHandPoint
          Enabled = False
          OnClick = frmBarMove1tbtnPriorClick
        end
        inherited tbtnNext: TToolButton
          Top = 0
          Cursor = crHandPoint
          Enabled = False
          OnClick = frmBarMove1tbtnNextClick
        end
        inherited tbtnLast: TToolButton
          Top = 0
          Cursor = crHandPoint
          Enabled = False
          OnClick = frmBarMove1tbtnLastClick
        end
        inherited sep1: TToolButton
          Top = 0
          Width = 4
        end
      end
    end
    object Edit1: TEdit
      Left = 231
      Top = 28
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
  end
  object sbarGeneral: TStatusBar
    Left = 0
    Top = 482
    Width = 671
    Height = 19
    Hint = 'V i s i t a  i l  n o s t r o   S i t o'
    BiDiMode = bdLeftToRight
    Color = clWhite
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Text = 'AERRE'
        Width = 120
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 300
      end
      item
        Alignment = taCenter
        Text = 'F9-Inserire / Modificare'
        Width = 150
      end>
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    SimpleText = '0000'
    OnClick = sbarGeneralClick
  end
  object paLeft: TPanel
    Left = 0
    Top = 57
    Width = 54
    Height = 411
    Align = alLeft
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 16744448
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 22
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Acq_Prev_Forn
      Caption = 'Prev.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton2: TSpeedButton
      Left = 3
      Top = 44
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Acq_Ord_Forn
      Caption = 'Ord.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 3
      Top = 178
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Acq_Fatt_Imm
      Caption = 'Imm.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton4: TSpeedButton
      Left = 3
      Top = 153
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'D.D.T. Fornitori'
      Action = actDoc_Acq_DDT_Forn
      Caption = 'D.D.T.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton7: TSpeedButton
      Left = 3
      Top = 234
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Nota Debito (NDFO)'
      Action = actDoc_Acq_Nota_Debito
      Caption = 'N.D.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton8: TSpeedButton
      Left = 3
      Top = 200
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Fattura Differita'
      Action = actDoc_Acq_Fatt_Dif
      Caption = 'Diff.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton6: TSpeedButton
      Left = 3
      Top = 260
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Nota Credito (NCRF)'
      Caption = 'N.C.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton6Click
    end
    object SpeedButton10: TSpeedButton
      Left = 3
      Top = 316
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Reso da Cliente'
      Caption = 'Reso C.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton12: TSpeedButton
      Left = 3
      Top = 340
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Bolla Carico'
      Caption = 'Bolla C.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object SpeedButton15: TSpeedButton
      Left = 3
      Top = 370
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Creazione Articoli'
      Caption = 'Produz.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton15Click
    end
    object SpeedButton17: TSpeedButton
      Left = 3
      Top = 122
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'D.D.T. Esterni (Rientri) (DDEF)'
      Caption = 'DDT Ext'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton17Click
    end
    object SpeedButton25: TSpeedButton
      Left = 3
      Top = 97
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Rientro D.D.T. Conto Lavoro (DDCF)'
      Caption = 'DDT C/L'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton25Click
    end
    object StaticText1: TStaticText
      Left = 2
      Top = 2
      Width = 50
      Height = 17
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Acq.'
      Color = 12058623
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object paRight: TPanel
    Left = 617
    Top = 57
    Width = 54
    Height = 411
    Align = alRight
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 16744448
    TabOrder = 3
    object SpeedButton18: TSpeedButton
      Left = 3
      Top = 289
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Vendita al Banco'
      Caption = '&Banco'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton18Click
    end
    object SpeedButton19: TSpeedButton
      Left = 3
      Top = 235
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Nota Credito (NCRE)'
      Caption = 'N.C.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton19Click
    end
    object SpeedButton20: TSpeedButton
      Left = 3
      Top = 200
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Fattura Differita'
      Action = actDoc_Vend_Fatt_Dif
      Caption = 'Diff.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton21: TSpeedButton
      Left = 3
      Top = 178
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Vend_Fatt_Imm
      Caption = 'Imm.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton22: TSpeedButton
      Left = 3
      Top = 153
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Vend_DDT_Cli
      Caption = 'D.D.T.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton23: TSpeedButton
      Left = 3
      Top = 44
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Vend_Ord_Cli
      Caption = 'Ord.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton24: TSpeedButton
      Left = 3
      Top = 22
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Action = actDoc_Vend_Prev_Cli
      Caption = 'Prev.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton5: TSpeedButton
      Left = 3
      Top = 260
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Nota Debito (NDRE)'
      Caption = 'N.D.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton9: TSpeedButton
      Left = 3
      Top = 316
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Reso a Fornitore'
      Caption = 'Reso F.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton9Click
    end
    object SpeedButton11: TSpeedButton
      Left = 3
      Top = 340
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Bolla Scarico'
      Caption = 'Bolla S.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton11Click
    end
    object SpeedButton13: TSpeedButton
      Left = 3
      Top = 66
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Ordini Clienti da WEB'
      Caption = 'Ord.W'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton13Click
    end
    object SpeedButton14: TSpeedButton
      Left = 3
      Top = 97
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Invio D.D.T. Conto Lavoro (DDCL)'
      Caption = 'DDT C/L'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton14Click
    end
    object SpeedButton16: TSpeedButton
      Left = 3
      Top = 122
      Width = 48
      Height = 21
      Cursor = crHandPoint
      Hint = 'Invio DDT Conto Lavoro Esterno (DDEI)'
      Caption = 'DDT Ext'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton16Click
    end
    object StaticText2: TStaticText
      Left = 2
      Top = 2
      Width = 50
      Height = 17
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Vend.'
      Color = 9671679
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object paDataView: TPanel
    Left = 54
    Top = 57
    Width = 563
    Height = 411
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    Caption = 'Netm@g '
    Color = 16207646
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -173
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
    object dbgMainDataGrid: TDBGrid
      Left = 4
      Top = 4
      Width = 555
      Height = 403
      Align = alClient
      BorderStyle = bsNone
      Color = 15794160
      Ctl3D = False
      DataSource = dsoMainLook
      FixedColor = 16739436
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Visible = False
      OnDblClick = actGrid_Vis_Rec_SelExecute
    end
    object Button1: TButton
      Left = 336
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
  end
  object paDataCtrl: TPanel
    Left = 0
    Top = 468
    Width = 671
    Height = 14
    Align = alBottom
    BevelOuter = bvLowered
    Caption = 
      'ETICENTER : Sistemi di lettura e stampa BARCODE - Sviluppo softw' +
      'are personalizzato - Sviluppo impianti a R.F. - Sviluppo softwar' +
      'e per Palmari'
    Color = clBlack
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object popFile: TPopupMenu
    Images = dmodPub.iliPub
    MenuAnimation = [maBottomToTop]
    Left = 46
    Top = 226
    object mi0PrinterSetup: TMenuItem
      Action = actPrinterSetup
    end
    object miEnableErrMsg: TMenuItem
      Caption = 'Abilita messaggi di errori'
      Checked = True
      Visible = False
      OnClick = miEnableErrMsgClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object mi0Esci: TMenuItem
      Action = actEsci
    end
  end
  object popAnag: TPopupMenu
    Images = dmodPub.iliPub
    MenuAnimation = [maBottomToTop]
    Left = 102
    Top = 68
    object mi1AnagAz: TMenuItem
      Tag = 101
      Action = actAnagrafica_AnagraficaAzienda
      ImageIndex = 4
    end
    object mi1PersAz: TMenuItem
      Tag = 102
      Caption = 'Personalizzazioni Azienda'
      ImageIndex = 4
      OnClick = mi1PersAzClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object mi1Clienti: TMenuItem
      Tag = 103
      Caption = 'Clienti'
      ImageIndex = 4
      OnClick = mi1ClientiClick
    end
    object mi1Fornitori: TMenuItem
      Tag = 104
      Caption = 'Fornitori'
      ImageIndex = 4
      OnClick = mi1FornitoriClick
    end
    object mi1Agenti: TMenuItem
      Tag = 105
      Caption = 'Agenti'
      ImageIndex = 4
      OnClick = mi1AgentiClick
    end
    object mi1Vettori: TMenuItem
      Tag = 116
      Caption = 'Vettori'
      ImageIndex = 4
      OnClick = mi1VettoriClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object mi1CatCli: TMenuItem
      Tag = 120
      Caption = 'Categorie Clienti'
      ImageIndex = 4
      OnClick = mi1CatCliClick
    end
    object EsenzioniIva1: TMenuItem
      Caption = 'Esenzioni Iva'
      ImageIndex = 4
      OnClick = EsenzioniIva1Click
    end
    object mi1CodiceIVA: TMenuItem
      Tag = 106
      Caption = 'Codici IVA'
      ImageIndex = 4
      OnClick = mi1CodiceIVAClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object mi1CodiceISO: TMenuItem
      Tag = 107
      Caption = 'Codici ISO'
      ImageIndex = 4
      OnClick = mi1CodiceISOClick
    end
    object mi1Nazioni: TMenuItem
      Tag = 117
      Caption = 'Nazioni'
      ImageIndex = 4
      OnClick = mi1NazioniClick
    end
    object mi1Comuni: TMenuItem
      Tag = 108
      Caption = 'Comuni'
      ImageIndex = 4
      OnClick = mi1ComuniClick
    end
    object mi1Province: TMenuItem
      Tag = 109
      Caption = 'Province'
      ImageIndex = 4
      OnClick = mi1ProvinceClick
    end
    object mi1Regioni: TMenuItem
      Tag = 110
      Caption = 'Regioni'
      ImageIndex = 4
      OnClick = mi1RegioniClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object mi1Banche: TMenuItem
      Tag = 111
      Caption = 'Banche'
      ImageIndex = 4
      OnClick = mi1BancheClick
    end
    object mi1CAB: TMenuItem
      Tag = 112
      Caption = 'CAB'
      ImageIndex = 4
      OnClick = mi1CABClick
    end
    object mi1ABI: TMenuItem
      Tag = 113
      Caption = 'ABI'
      ImageIndex = 4
      OnClick = mi1ABIClick
    end
    object mi1Monete: TMenuItem
      Tag = 114
      Caption = 'Monete'
      ImageIndex = 4
      OnClick = mi1MoneteClick
    end
    object mi1CamMon: TMenuItem
      Tag = 120
      Caption = 'Cambi Monete'
      ImageIndex = 4
      OnClick = mi1CamMonClick
    end
    object mi1Pagamenti: TMenuItem
      Tag = 115
      Caption = 'Pagamenti'
      ImageIndex = 4
      OnClick = mi1PagamentiClick
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object mi1Zone: TMenuItem
      Tag = 118
      Caption = 'Zone'
      ImageIndex = 4
      OnClick = mi1ZoneClick
    end
    object mi1Sottozone: TMenuItem
      Tag = 119
      Caption = 'Sottozone'
      ImageIndex = 4
      OnClick = mi1SottozoneClick
    end
  end
  object popOptions: TPopupMenu
    Images = dmodPub.iliPub
    MenuAnimation = [maBottomToTop]
    Left = 478
    Top = 66
    object mi0DBOpts: TMenuItem
      Caption = 'Database...'
      OnClick = mi0DBOptsClick
    end
    object BackUp1: TMenuItem
      Caption = 'BackUp / Restore'
      OnClick = BackUp1Click
    end
    object Prezzi1: TMenuItem
      Caption = 'Prezzi'
      OnClick = Prezzi1Click
    end
  end
  object popMagazzino: TPopupMenu
    Images = dmodPub.iliPub
    MenuAnimation = [maTopToBottom]
    Left = 140
    Top = 68
    object mi2Articoli: TMenuItem
      Tag = 202
      Caption = 'Articoli'
      ImageIndex = 4
      object miArtVendita: TMenuItem
        Caption = 'Vendita'
        ImageIndex = 4
        OnClick = miArtVenditaClick
      end
      object miArtAccessorie: TMenuItem
        Caption = 'Accessori'
        ImageIndex = 4
        OnClick = miArtAccessorieClick
      end
      object CodiciAggiuntivi1: TMenuItem
        Caption = 'Codici Aggiuntivi'
        ImageIndex = 4
        OnClick = CodiciAggiuntivi1Click
      end
      object Casse1: TMenuItem
        Caption = 'Esporta'
        object InviaArticoli1: TMenuItem
          Caption = 'Invia Articoli'
          ImageIndex = 4
          OnClick = InviaArticoli1Click
        end
      end
      object RicercaSeriali1: TMenuItem
        Caption = 'Ricerca Seriali'
        ImageIndex = 4
        OnClick = RicercaSeriali1Click
      end
      object Distinte2: TMenuItem
        Caption = 'Distinte'
        ImageIndex = 4
        OnClick = Distinte2Click
      end
    end
    object miCaricoScaricoMagazzino: TMenuItem
      Caption = 'Ricerca Codice'
      ImageIndex = 5
      OnClick = miCaricoScaricoMagazzinoClick
    end
    object Categoria1: TMenuItem
      Caption = 'Categoria'
      ImageIndex = 4
      object mi2Marca: TMenuItem
        Tag = 203
        Caption = 'Marca'
        ImageIndex = 4
        OnClick = mi2MarcaClick
      end
      object mi2Famiglia: TMenuItem
        Tag = 204
        Caption = 'Famiglia'
        ImageIndex = 4
        OnClick = mi2FamigliaClick
      end
      object mi2Gruppo: TMenuItem
        Tag = 205
        Caption = 'Gruppo'
        ImageIndex = 4
        OnClick = mi2GruppoClick
      end
      object mi2Tipo: TMenuItem
        Tag = 206
        Caption = 'Tipo'
        ImageIndex = 4
        OnClick = mi2TipoClick
      end
    end
    object AbbC1: TMenuItem
      Caption = 'Abb. Blu.'
      Enabled = False
      object Produzione1: TMenuItem
        Caption = 'Produzione'
        object Distinte1: TMenuItem
          Caption = 'Distinte'
          OnClick = actMagazzino_DistinteExecute
        end
        object N26: TMenuItem
          Caption = '-'
        end
        object Pretaglio1: TMenuItem
          Caption = 'Pretaglio'
          OnClick = miProd_PretaglioClick
        end
        object aglio1: TMenuItem
          Caption = 'Taglio'
          OnClick = miProd_TaglioClick
        end
      end
      object CaricoAccessori1: TMenuItem
        Caption = 'Accessori'
        object OrdiniFornitori2: TMenuItem
          Caption = 'Ordini Fornitori'
          OnClick = OrdiniFornitori1Click
        end
        object ArrivoFornitori2: TMenuItem
          Caption = 'Arrivo Fornitori'
          OnClick = ArrivoFornitori1Click
        end
        object N35: TMenuItem
          Caption = '-'
        end
        object Scarico1: TMenuItem
          Caption = 'Scarico'
        end
      end
      object MovimentazioniCapi1: TMenuItem
        Caption = 'Movimentazioni Capi'
        object CaricoRacam1: TMenuItem
          Caption = 'Carico da Racam'
          ImageIndex = 5
          OnClick = CaricoRacam1Click
        end
        object CaricodaRacam21: TMenuItem
          Caption = 'Carico Bolle da Racam'
          ImageIndex = 6
          OnClick = CaricodaRacam21Click
        end
        object N27: TMenuItem
          Caption = '-'
        end
        object InvioinCLInt1: TMenuItem
          Caption = 'Invio in C./L. Int.'
          ImageIndex = 5
          OnClick = InvioinCLInt1Click
        end
        object InvioaFason1: TMenuItem
          Caption = 'Invio in C./L. Ext.'
          ImageIndex = 5
          OnClick = InvioaFason1Click
        end
        object InvioinCLExtMan1: TMenuItem
          Caption = 'Invio in C./L. Ext. Man.'
          ImageIndex = 15
          OnClick = InvioinCLExtMan1Click
        end
        object InvioinCLBolle1: TMenuItem
          Caption = 'Invio in C/L. Bolle'
          ImageIndex = 6
          OnClick = InvioinCLBolle1Click
        end
        object N28: TMenuItem
          Caption = '-'
        end
        object RientrodaCL1: TMenuItem
          Caption = 'Rientro da C./L.'
          ImageIndex = 5
          OnClick = RientrodaCL1Click
        end
        object RientrodaCLBolle1: TMenuItem
          Caption = 'Rientro da C/L. Bolle'
          ImageIndex = 6
          OnClick = RientrodaCLBolle1Click
        end
        object N29: TMenuItem
          Caption = '-'
        end
        object CapiPronti1: TMenuItem
          Caption = 'Capi Pronti '
          ImageIndex = 5
          OnClick = CapiPronti1Click
        end
        object CapiProntiBolle1: TMenuItem
          Caption = 'Capi Pronti Bolle'
          ImageIndex = 6
          OnClick = CapiProntiBolle1Click
        end
        object N30: TMenuItem
          Caption = '-'
        end
        object InvioaRacam1: TMenuItem
          Caption = 'Invio a Racam'
          ImageIndex = 5
          OnClick = InvioaRacam1Click
        end
        object InvioaRacamMan1: TMenuItem
          Caption = 'Invio a Racam Man.'
          ImageIndex = 15
          OnClick = InvioaRacamMan1Click
        end
        object InvioaRacamBolle1: TMenuItem
          Caption = 'Invio a Racam Bolle'
          ImageIndex = 6
          OnClick = InvioaRacamBolle1Click
        end
        object N34: TMenuItem
          Caption = '-'
        end
        object ScaricoMeteriePrime1: TMenuItem
          Caption = 'Scarico Meterie Prime'
          OnClick = ScaricoMeteriePrime1Click
        end
      end
      object VisSitAccessori1: TMenuItem
        Caption = 'Vis.Sit. Accessori'
        OnClick = Dettaglio1Click
      end
      object VisSitCapi1: TMenuItem
        Caption = 'Vis.Sit. Capi'
        OnClick = VisSitCapi1Click
      end
      object Previsione1: TMenuItem
        Caption = 'Previsione'
        Enabled = False
        OnClick = Previsione1Click
      end
      object BolladiProduzione1: TMenuItem
        Caption = 'Bolla di Produzione'
        Enabled = False
        OnClick = BolladiProduzione1Click
      end
    end
    object AbbR1: TMenuItem
      Caption = 'Abb. R'
      Enabled = False
      object smProduzione: TMenuItem
        Caption = 'Produzione'
        ImageIndex = 5
        object pmiMag_Distinte: TMenuItem
          Action = actMagazzino_Distinte
          ImageIndex = 5
        end
        object N23: TMenuItem
          Caption = '-'
        end
        object PretaglioFittizio1: TMenuItem
          Caption = 'Pretaglio Fittizio'
          ImageIndex = 5
          OnClick = PretaglioFittizio1Click
        end
        object miProd_Pretaglio: TMenuItem
          Caption = 'Pretaglio'
          ImageIndex = 5
          OnClick = miProd_PretaglioClick
        end
        object miProd_Taglio: TMenuItem
          Caption = 'Taglio'
          ImageIndex = 5
          OnClick = miProd_TaglioClick
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object TagliEsterni1: TMenuItem
          Caption = 'Tagli Esterni'
          ImageIndex = 5
          OnClick = TagliEsterni1Click
        end
        object N40: TMenuItem
          Caption = '-'
        end
        object BolleRicam1: TMenuItem
          Caption = 'Bolle Ricam. Usc.'
          OnClick = BolleRicam1Click
        end
        object BolleRicamRientr1: TMenuItem
          Caption = 'Bolle Ricam. Rientr.'
          OnClick = BolleRicamRientr1Click
        end
        object N24: TMenuItem
          Caption = '-'
        end
        object miProd_Contolavoro: TMenuItem
          Caption = 'Conto lavoro'
          ImageIndex = 5
          OnClick = miProd_ContolavoroClick
        end
        object N21: TMenuItem
          Caption = '-'
          Enabled = False
        end
        object miProd_Deposito: TMenuItem
          Caption = 'Deposito'
          ImageIndex = 5
          OnClick = miProd_DepositoClick
        end
        object Passaggidirettiinmagaz1: TMenuItem
          Caption = 'Passaggi diretti in magaz.'
          OnClick = Passaggidirettiinmagaz1Click
        end
        object miProd_Magazzino: TMenuItem
          Caption = 'Magazzino'
          ImageIndex = 5
          OnClick = miProd_MagazzinoClick
        end
      end
      object Bolle1: TMenuItem
        Caption = 'Bolle'
        object SubaCategoria1: TMenuItem
          Caption = 'SubCategoria'
          OnClick = SubaCategoria1Click
        end
        object N31: TMenuItem
          Caption = '-'
        end
        object OrdiniFornitori1: TMenuItem
          Caption = 'Ordini Fornitori'
          OnClick = OrdiniFornitori1Click
        end
        object ArrivoFornitori1: TMenuItem
          Caption = 'Arrivo Fornitori'
          OnClick = ArrivoFornitori1Click
        end
        object Campionario1: TMenuItem
          Caption = 'Campionario'
          OnClick = Campionario1Click
        end
        object PreventiviVendita1: TMenuItem
          Caption = 'Preventivi Vendita'
          OnClick = PreventiviVendita1Click
        end
        object OrdineCliente1: TMenuItem
          Caption = 'Ordini Vendita'
          OnClick = OrdineCliente1Click
        end
        object BolleVend1: TMenuItem
          Caption = 'Bolle Vend.'
          OnClick = BolleVend1Click
        end
        object ResoClienti1: TMenuItem
          Caption = 'Resi Vendita'
          OnClick = ResoClienti1Click
        end
        object N33: TMenuItem
          Caption = '-'
        end
        object ScaricoAccessori1: TMenuItem
          Caption = 'Scarico Materie Prime'
          OnClick = ScaricoAccessori1Click
        end
      end
      object VisualizAccessori1: TMenuItem
        Caption = 'Visualiz. Accessori'
        object Dettaglio1: TMenuItem
          Caption = 'Sit. Magaz.'
          OnClick = Dettaglio1Click
        end
      end
      object VisualizRicami1: TMenuItem
        Caption = 'Visualiz. Ricami'
        OnClick = VisualizRicami1Click
      end
      object VisualizzVendita1: TMenuItem
        Caption = 'Visualizz. Vendita'
        object SitGen: TMenuItem
          Caption = 'Situaz. Generale'
          OnClick = SitGenClick
        end
        object Ordini1: TMenuItem
          Caption = 'Ordini'
          OnClick = Ordini1Click
        end
        object Bolle2: TMenuItem
          Caption = 'Bolle'
          OnClick = Bolle2Click
        end
        object Contabilit1: TMenuItem
          Caption = 'Contabilit'#224
          OnClick = Contabilit1Click
        end
      end
    end
    object Pelle1: TMenuItem
      Caption = 'Pelle'
      object InserimentoschedeTagliatori1: TMenuItem
        Caption = 'Inserimento schede Tagliatori'
        OnClick = InserimentoschedeTagliatori1Click
      end
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object mi2DescrAgg: TMenuItem
      Tag = 207
      Caption = 'Causali Interne'
      ImageIndex = 4
      OnClick = mi2DescrAggClick
    end
    object mi2CauMag: TMenuItem
      Tag = 201
      Caption = 'Causali magazzino'
      ImageIndex = 4
      OnClick = mi2CauMagClick
    end
    object mi2CauTras: TMenuItem
      Tag = 208
      Caption = 'Causali di trasporto'
      ImageIndex = 4
      OnClick = mi2CauTrasClick
    end
    object mi2Listini: TMenuItem
      Caption = 'Listini'
      ImageIndex = 5
      OnClick = mi2ListiniClick
    end
    object mi2TipiOferte: TMenuItem
      Tag = 221
      Caption = 'Offerte'
      ImageIndex = 4
      OnClick = mi2TipiOferteClick
    end
    object mi2Porto: TMenuItem
      Tag = 209
      Caption = 'Porto'
      ImageIndex = 4
      OnClick = mi2PortoClick
    end
    object mi2Imballi: TMenuItem
      Tag = 210
      Caption = 'Imballi'
      ImageIndex = 4
      OnClick = mi2ImballiClick
    end
    object mi2Produttori: TMenuItem
      Tag = 211
      Caption = 'Produttori'
      ImageIndex = 4
      OnClick = mi2ProduttoriClick
    end
    object mi2Stagioni: TMenuItem
      Tag = 215
      Caption = 'Stagioni'
      ImageIndex = 4
      OnClick = mi2StagioniClick
    end
    object mi2Depositi: TMenuItem
      Tag = 213
      Caption = 'Depositi'
      ImageIndex = 4
      OnClick = mi2DepositiClick
    end
    object mi2RagDep: TMenuItem
      Tag = 212
      Caption = 'Raggruppamenti depositi'
      ImageIndex = 4
      OnClick = mi2RagDepClick
    end
    object mi2Ubicazioni: TMenuItem
      Tag = 216
      Caption = 'Ubicazioni'
      ImageIndex = 4
      OnClick = mi2UbicazioniClick
    end
    object mi2UnDiMis: TMenuItem
      Tag = 217
      Caption = 'Unit'#224' di misura'
      ImageIndex = 4
      OnClick = mi2UnDiMisClick
    end
    object mi2Commessi: TMenuItem
      Tag = 219
      Caption = 'Dipendenti'
      ImageIndex = 4
      OnClick = mi2CommessiClick
    end
    object mi2Arrotondamenti: TMenuItem
      Tag = 220
      Caption = 'Gestione Listini'
      ImageIndex = 4
      OnClick = mi2ArrotondamentiClick
    end
    object mi2AspEst: TMenuItem
      Tag = 223
      Caption = 'Aspetto esteriore'
      ImageIndex = 4
      OnClick = mi2AspEstClick
    end
    object sm2Listinism: TMenuItem
      Tag = 222
      Caption = 'Listini'
      Enabled = False
      ImageIndex = 5
      Visible = False
      object mi2NuovoListino: TMenuItem
        Caption = 'Nuovo Listino'
        OnClick = mi2NuovoListinoClick
      end
    end
    object Taglie1: TMenuItem
      Caption = 'Taglie'
      ImageIndex = 4
      OnClick = Taglie1Click
    end
    object Colori1: TMenuItem
      Caption = 'Colori'
      ImageIndex = 4
      OnClick = Colori1Click
    end
  end
  object popDocumenti: TPopupMenu
    Images = dmodPub.iliPub
    MenuAnimation = [maLeftToRight]
    Left = 206
    Top = 74
    object mi5Acquisti: TMenuItem
      Tag = 510
      Caption = 'Acquisti'
      Enabled = False
      ImageIndex = 5
      object mi5PrevFor: TMenuItem
        Tag = 511
        Action = actDoc_Acq_Prev_Forn
      end
      object mi5OrdFor: TMenuItem
        Tag = 512
        Action = actDoc_Acq_Ord_Forn
      end
      object mi5DDTFor: TMenuItem
        Tag = 513
        Action = actDoc_Acq_DDT_Forn
      end
      object miDAFF: TMenuItem
        Caption = 'Fatture Fornitori'
        ImageIndex = 5
        object mi5FattFor: TMenuItem
          Tag = 514
          Action = actDoc_Acq_Fatt_Imm
        end
        object smiFattDifer: TMenuItem
          Action = actDoc_Acq_Fatt_Dif
          Caption = 'Differita'
        end
      end
      object mi5NotaDebito: TMenuItem
        Tag = 515
        Action = actDoc_Acq_Nota_Debito
      end
    end
    object mi5Vendite: TMenuItem
      Tag = 520
      Caption = 'Vendite'
      Enabled = False
      ImageIndex = 5
      object mi5PrevCli: TMenuItem
        Tag = 521
        Action = actDoc_Vend_Prev_Cli
      end
      object mi5OrdCli: TMenuItem
        Tag = 522
        Action = actDoc_Vend_Ord_Cli
      end
      object mi5DDTCli: TMenuItem
        Tag = 523
        Action = actDoc_Vend_DDT_Cli
      end
      object miDVFattCli: TMenuItem
        Caption = 'Fatture Clienti'
        ImageIndex = 5
        object mi5FattCli: TMenuItem
          Tag = 524
          Action = actDoc_Vend_Fatt_Imm
        end
        object smiDVFDiferita: TMenuItem
          Action = actDoc_Vend_Fatt_Dif
          Caption = 'Differita'
        end
      end
      object mi5NotaCredito: TMenuItem
        Tag = 525
        Action = actDoc_Vend_Nota_Credito
      end
      object mi5VendBanc: TMenuItem
        Tag = 526
        Action = actDoc_Vend_Vend_Al_Banco
      end
    end
    object Bollettwe1: TMenuItem
      Caption = 'Bollette'
      Enabled = False
      object Vendita1: TMenuItem
        Caption = 'Vendita'
        OnClick = Vendita1Click
      end
      object VenditaalBanco2: TMenuItem
        Caption = 'Vendita al Banco'
        OnClick = VenditaalBanco2Click
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object smOrdini: TMenuItem
      Caption = 'Ordini'
      ImageIndex = 5
      object pmiInsMod: TMenuItem
        Caption = 'Inserimento/Modifica'
        ImageIndex = 5
        OnClick = pmiInsModClick
      end
      object pmiVisStam: TMenuItem
        Caption = 'Visualizzazione/Stampe'
        ImageIndex = 5
        OnClick = pmiVisStamClick
      end
      object CaricoFattture1: TMenuItem
        Caption = 'Carico Fattture'
        OnClick = CaricoFattture1Click
      end
    end
  end
  object popEdit: TPopupMenu
    Images = dmodPub.iliPub
    Left = 52
    Top = 60
  end
  object popAltre: TPopupMenu
    Images = dmodPub.iliPub
    Left = 435
    Top = 71
    object Attivit: TMenuItem
      Caption = 'Attivit'#224
      ImageIndex = 4
      OnClick = AttivitClick
    end
    object Sesso: TMenuItem
      Caption = 'Sesso'
      ImageIndex = 4
      OnClick = SessoClick
    end
    object TitpoTitolo: TMenuItem
      Caption = 'Tipo Titolo'
      ImageIndex = 4
      OnClick = TipoTitoloClick
    end
    object INPS: TMenuItem
      Caption = 'INPS'
      ImageIndex = 4
      OnClick = INPSClick
    end
    object NaturaGiuridica: TMenuItem
      Caption = 'Natura Giuridica'
      ImageIndex = 4
      OnClick = NaturaGiuridicaClick
    end
    object TipoArrot: TMenuItem
      Caption = 'Tipo Arrotondamento'
      ImageIndex = 4
      OnClick = TipoArrotClick
    end
    object Lingue: TMenuItem
      Caption = 'Lingue'
      ImageIndex = 4
      OnClick = LingueClick
    end
    object Mododiconsegna1: TMenuItem
      Caption = 'Modo di Consegna'
      ImageIndex = 4
      OnClick = Mododiconsegna1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object mi0NonimponibileIVA1: TMenuItem
      Caption = 'Non Imponibile IVA'
      ImageIndex = 4
      OnClick = mi0NonimponibileIVA1Click
    end
    object mi0NonsoggettoIVA1: TMenuItem
      Caption = 'Non Soggetto IVA'
      ImageIndex = 4
      OnClick = mi0NonsoggettoIVA1Click
    end
    object mi0TipoPagamento: TMenuItem
      Caption = 'Tipo Pagamento'
      ImageIndex = 4
      OnClick = mi0TipoPagamentoClick
    end
    object mi0TipoProvvigione: TMenuItem
      Caption = 'Tipo Provvigione'
      ImageIndex = 4
      OnClick = mi0TipoProvvigioneClick
    end
    object mi0TipoSommaProvv: TMenuItem
      Caption = 'Tipo Somma Provvigione'
      ImageIndex = 4
      OnClick = mi0TipoSommaProvvClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mi0Baud: TMenuItem
      Caption = 'Baud'
      ImageIndex = 4
      OnClick = mi0BaudClick
    end
    object mi0BitdiDati: TMenuItem
      Caption = 'Bit di Dati'
      ImageIndex = 4
      OnClick = mi0BitdiDatiClick
    end
    object mi0BitdiStop: TMenuItem
      Caption = 'Bit di Stop'
      ImageIndex = 4
      OnClick = mi0BitdiStopClick
    end
    object mi0Parit: TMenuItem
      Caption = 'Parit'#224
      ImageIndex = 4
      OnClick = mi0ParitClick
    end
    object mi0Porta: TMenuItem
      Caption = 'Porta'
      ImageIndex = 4
      OnClick = mi0PortaClick
    end
    object mi0ModelloECR: TMenuItem
      Caption = 'Modello ECR'
      ImageIndex = 4
      OnClick = mi0ModelloECRClick
    end
    object N14: TMenuItem
      Caption = '-'
      ImageIndex = 17
    end
  end
  object dlgPrinterSetup: TPrinterSetupDialog
    Left = 46
    Top = 190
  end
  object dsoMainLook: TDataSource
    Left = 182
    Top = 296
  end
  object pmStampe: TPopupMenu
    Images = dmodPub.iliPub
    Left = 383
    Top = 75
    object smStampeCliFor: TMenuItem
      Caption = 'Clienti e Fornitori'
      ImageIndex = 4
      object ssmiClienti: TMenuItem
        Caption = 'Clienti'
        ImageIndex = 4
        object misAnagCli: TMenuItem
          Caption = 'Anagrafica Clienti'
          ImageIndex = 4
          OnClick = misAnagCliClick
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object StampaPersonalizzata1: TMenuItem
          Caption = 'Stampa Personalizzata'
          ImageIndex = 4
          OnClick = StampaPersonalizzata1Click
        end
        object StampaSelezionato1: TMenuItem
          Caption = 'Stampa Selezionato'
          ImageIndex = 4
          OnClick = StampaSelezionato1Click
        end
      end
      object ssmiFornitori: TMenuItem
        Caption = 'Fornitori'
        ImageIndex = 4
        object AnagraficaFornitori1: TMenuItem
          Caption = 'Anagrafica Fornitori'
          ImageIndex = 4
          OnClick = AnagraficaFornitori1Click
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object StampaPersonalizzata2: TMenuItem
          Caption = 'Stampa Personalizzata'
          ImageIndex = 4
          OnClick = StampaPersonalizzata2Click
        end
        object StampaSelezionato2: TMenuItem
          Caption = 'Stampa Selezionato'
          ImageIndex = 4
          OnClick = StampaSelezionato2Click
        end
      end
    end
    object N36: TMenuItem
      Caption = '-'
    end
    object miBrogliaccio: TMenuItem
      Action = actStampe_Doc_Brogliaccio
      Caption = 'Brogliaccio Magazz.'
    end
    object pmiDocVis: TMenuItem
      Caption = 'Visualizzazione Docum.'
      ImageIndex = 4
      OnClick = pmiDocVisClick
    end
    object DDTdaFatt1: TMenuItem
      Caption = 'D.D.T. da Fatt.'
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object pmiStampaCauMag: TMenuItem
      Caption = 'Causali Magazzino'
      ImageIndex = 4
      OnClick = pmiStampaCauMagClick
    end
    object miSchContArt: TMenuItem
      Caption = 'Scheda Contabile Articolo'
      ImageIndex = 4
      OnClick = miSchContArtClick
    end
    object miArticoli: TMenuItem
      Action = actStampe_Articoli
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object smiPianodeiConti: TMenuItem
      Caption = 'Piano dei Conti'
      ImageIndex = 4
      object miSt_PianCont_ord_cod: TMenuItem
        Caption = 'ordine di codice'
        ImageIndex = 4
        OnClick = miSt_PianCont_ord_codClick
      end
      object miSta_PianoCont_ord_descr: TMenuItem
        Caption = 'ordine di descr.'
        ImageIndex = 4
        OnClick = miSta_PianoCont_ord_descrClick
      end
    end
    object smiStampe_Distinte: TMenuItem
      Caption = 'Distinte'
      ImageIndex = 4
      object miStampe_Distinte_Riepilogo: TMenuItem
        Action = actStampe_Distinte_Riepilogo
      end
      object miStampe_Distinte_Dettaglio: TMenuItem
        Action = actStampe_Distinte_Dettaglio
      end
      object miStampe_Distinte_RiepScateAst: TMenuItem
        Action = actStampe_Distinte_RiepScatEAst
      end
      object miStampe_Distinte_Riepilogomagazzino: TMenuItem
        Action = actStampe_Distinte_Riep_Mag
      end
      object miStampe_Distinte_riepilogoprezzi: TMenuItem
        Caption = 'Riepilogo prezzi'
        Enabled = False
        ImageIndex = 7
      end
      object miStampe_Distinte_Riepilogoprezziecc: TMenuItem
        Caption = 'Riepilogo prezzi ecc.'
        Enabled = False
        ImageIndex = 7
      end
      object miStampe_Distinte_RiepilogoDaCodiceAcc: TMenuItem
        Action = actStampe_Distinte_RiepDaCodAcc
      end
      object mpDist_Stampafiltrata: TMenuItem
        Caption = 'Stampa filtrata'
        ImageIndex = 5
        OnClick = mpDist_StampafiltrataClick
      end
    end
  end
  object popContab: TPopupMenu
    Images = dmodPub.iliPub
    Left = 261
    Top = 72
    object pmiContPianoDiConti: TMenuItem
      Action = actContab_PianoConti
    end
    object Causalicontabili1: TMenuItem
      Caption = 'Causali contabili'
      ImageIndex = 4
      OnClick = Causalicontabili1Click
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object NumeriProtVendita1: TMenuItem
      Caption = 'Numeri Prot. Vendita'
      ImageIndex = 4
      OnClick = NumeriProtVendita1Click
    end
    object NumeriProtAcquisto1: TMenuItem
      Caption = 'Numeri Prot. Acquisto'
      ImageIndex = 4
      OnClick = NumeriProtAcquisto1Click
    end
    object pmiContab_CauContab: TMenuItem
      Caption = 'Numeri Registrazione'
      ImageIndex = 4
      OnClick = pmiContab_CauContabClick
    end
    object N37: TMenuItem
      Caption = '-'
    end
    object PrimaNota1: TMenuItem
      Caption = 'Prima Nota'
      ImageIndex = 4
      object pmiPrimaNota_Ins: TMenuItem
        Caption = 'Inserimento'
        ImageIndex = 5
        object miPN_Ins_MovGen: TMenuItem
          Action = actContab_PN_Ins_MovGen
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object pmiPN_ins_PagFatAcq: TMenuItem
          Caption = 'Pagamento Fattura Acquisto'
          ImageIndex = 5
          OnClick = pmiPN_ins_PagFatAcqClick
        end
        object pmiPN_ins_PagFatVend: TMenuItem
          Caption = 'Incasso Fattura Vendita'
          ImageIndex = 5
          OnClick = pmiPN_ins_PagFatVendClick
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object pmiPN_ins_FattAcq: TMenuItem
          Caption = 'Fattura Acquisto'
          ImageIndex = 5
          OnClick = pmiPN_ins_FattAcqClick
        end
        object FatturaAcquistoINTRA1: TMenuItem
          Caption = 'Fattura Acquisto INTRA'
          OnClick = FatturaAcquistoINTRA1Click
        end
        object NoteAcquisti1: TMenuItem
          Caption = 'Note Acquisti'
        end
        object pmiPN_ins_FattVend: TMenuItem
          Caption = 'Fattura Vendita'
          ImageIndex = 5
          OnClick = pmiPN_ins_FattVendClick
        end
      end
      object InserimentoeModifiche1: TMenuItem
        Caption = 'Inserimento e Modifiche'
        ImageIndex = 5
        Visible = False
      end
    end
    object N38: TMenuItem
      Caption = '-'
    end
    object miVisPrimaNota: TMenuItem
      Caption = 'Visualizzazione e Stampe'
      ImageIndex = 5
      OnClick = miVisPrimaNotaClick
    end
    object N39: TMenuItem
      Caption = '-'
    end
    object pmiContab_Scad: TMenuItem
      Caption = 'Scadenze'
      ImageIndex = 4
      OnClick = pmiContab_ScadClick
    end
    object EmissioneRiBa1: TMenuItem
      Caption = 'Emissione Ri.Ba.'
      Enabled = False
      ImageIndex = 4
      OnClick = EmissioneRiBa1Click
    end
    object DareAvere1: TMenuItem
      Caption = 'Dare/Avere'
      OnClick = DareAvere1Click
    end
  end
  object popIVA: TPopupMenu
    Images = dmodPub.iliPub
    Left = 323
    Top = 69
    object LiquidazioneMensile1: TMenuItem
      Caption = 'Registro Vendite'
      ImageIndex = 6
      OnClick = LiquidazioneMensile1Click
    end
    object LiquidazioneTrimestrale1: TMenuItem
      Caption = 'Registro Acquisti'
      ImageIndex = 6
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Pagamento1: TMenuItem
      Caption = 'Liquidazione'
      ImageIndex = 6
    end
    object RiepilogoIva1: TMenuItem
      Caption = 'Riepilogo Iva'
    end
    object DichiarazioneIva1: TMenuItem
      Caption = 'Dichiarazione Iva'
    end
    object RegistroCorrispettivi1: TMenuItem
      Caption = 'Registro Corrispettivi'
    end
  end
  object mmMenuPrincipale: TMainMenu
    Left = 198
    Top = 180
    object File1: TMenuItem
      Caption = 'File'
      Visible = False
      object miReport: TMenuItem
        Action = actReportDesigner
      end
    end
  end
  object pmPerGriglia: TPopupMenu
    Left = 75
    Top = 309
    object pmiDelete_Selected: TMenuItem
      Caption = 'Eliminare record selezionato'
    end
  end
  object ActionList1: TActionList
    Images = dmodPub.iliPub
    Left = 267
    Top = 241
    object actPrinterSetup: TAction
      Category = 'File'
      Caption = 'Printer setup'
      OnExecute = actPrinterSetupExecute
    end
    object actReportDesigner: TAction
      Category = 'File'
      Caption = 'Report Designer...'
      ImageIndex = 30
      ShortCut = 49234
      OnExecute = actReportDesignerExecute
    end
    object actEsci: TAction
      Category = 'File'
      Caption = '&Esci'
      ImageIndex = 0
      OnExecute = actEsciExecute
    end
    object actAnagrafica_AnagraficaAzienda: TAction
      Category = 'Anagrafica'
      Caption = 'Anagrafica azienda'
      ImageIndex = 5
      OnExecute = actAnagrafica_AnagraficaAziendaExecute
    end
    object actMagazzino_Distinte: TAction
      Category = 'Magazzino'
      Caption = 'Distinte'
      ImageIndex = 4
      OnExecute = actMagazzino_DistinteExecute
    end
    object actToolBar_Nuovo: TAction
      Category = 'ToolBars'
      Caption = 'Nuovo...'
      Hint = 'Nuovo'
      ImageIndex = 1
      ShortCut = 16462
      OnExecute = actToolBar_NuovoExecute
    end
    object actToolBar_Modifica: TAction
      Category = 'ToolBars'
      Caption = 'Modifica...'
      Hint = 'Modifica'
      ImageIndex = 2
      ShortCut = 16461
      OnExecute = actToolBar_ModificaExecute
    end
    object actToolBar_Update: TAction
      Category = 'ToolBars'
      Caption = 'Aggiorna...'
      Hint = 'Aggiorna'
      ImageIndex = 18
      ShortCut = 16449
      OnExecute = actToolBar_UpdateExecute
    end
    object actDoc_Acq_Prev_Forn: TAction
      Category = 'Documenti'
      Caption = 'Preventivi fornitori'
      Hint = 'Preventivi fornitori'
      OnExecute = actDoc_Acq_Prev_FornExecute
    end
    object actContab_PianoConti: TAction
      Category = 'Contabilita'
      Caption = 'Piano dei Conti'
      ImageIndex = 4
      OnExecute = actContab_PianoContiExecute
    end
    object actStampe_Articoli: TAction
      Category = 'Stampe'
      Caption = 'Articoli'
      ImageIndex = 36
      OnExecute = actStampe_ArticoliExecute
    end
    object actGrid_Vis_Rec_Sel: TAction
      Category = 'Grid'
      Caption = 'Visualizza record selezoinato'
      ImageIndex = 36
      OnExecute = actGrid_Vis_Rec_SelExecute
    end
    object actStampe_Distinte_Riepilogo: TAction
      Category = 'Stampe'
      Caption = 'Riepilogo'
      ImageIndex = 36
      OnExecute = actStampe_Distinte_RiepilogoExecute
    end
    object actStampe_Distinte_Dettaglio: TAction
      Category = 'Stampe'
      Caption = 'Dettaglio'
      ImageIndex = 36
      OnExecute = actStampe_Distinte_DettaglioExecute
    end
    object actStampe_Distinte_RiepScatEAst: TAction
      Category = 'Stampe'
      Caption = 'Riep. Scat. e Ast.'
      ImageIndex = 36
      OnExecute = actStampe_Distinte_RiepScatEAstExecute
    end
    object actStampe_Distinte_Riep_Mag: TAction
      Category = 'Stampe'
      Caption = 'Riepilogo magazzino'
      ImageIndex = 36
      OnExecute = actStampe_Distinte_Riep_MagExecute
    end
    object actStampe_Distinte_RiepDaCodAcc: TAction
      Category = 'Stampe'
      Caption = 'Riepilogo da codice acc.'
      ImageIndex = 36
      OnExecute = actStampe_Distinte_RiepDaCodAccExecute
    end
    object actStampe_Doc_Brogliaccio: TAction
      Category = 'Stampe'
      Caption = 'Brogliaccio'
      ImageIndex = 36
      OnExecute = actStampe_Doc_BrogliaccioExecute
    end
    object actContab_PN_Ins_MovGen: TAction
      Category = 'Contabilita'
      Caption = 'Movimento generico'
      ImageIndex = 4
      OnExecute = actContab_PN_Ins_MovGenExecute
    end
    object actDoc_Acq_Ord_Forn: TAction
      Category = 'Documenti'
      Caption = 'Ordini fornitori'
      Hint = 'Ordini fornitori'
      OnExecute = actDoc_Acq_Ord_FornExecute
    end
    object actDoc_Acq_DDT_Forn: TAction
      Category = 'Documenti'
      Caption = 'D.D.T. Fornotiri'
      Hint = 'D.D.T. Fornotiri'
      OnExecute = actDoc_Acq_DDT_FornExecute
    end
    object actDoc_Acq_Fatt_Imm: TAction
      Category = 'Documenti'
      Caption = 'Immediata'
      Hint = 'Fattura Immediata'
      OnExecute = actDoc_Acq_Fatt_ImmExecute
    end
    object actDoc_Acq_Fatt_Dif: TAction
      Category = 'Documenti'
      Caption = 'Diferita'
      Hint = 'Fattura Diferita'
      OnExecute = actDoc_Acq_Fatt_DifExecute
    end
    object actDoc_Acq_Nota_Debito: TAction
      Category = 'Documenti'
      Caption = 'Nota Debito'
      Hint = 'Nota Debito'
      OnExecute = actDoc_Acq_Nota_DebitoExecute
    end
    object actDoc_Vend_Prev_Cli: TAction
      Category = 'Documenti'
      Caption = 'Preventivi clienti'
      Hint = 'Preventivi clienti'
      OnExecute = actDoc_Vend_Prev_CliExecute
    end
    object actDoc_Vend_Ord_Cli: TAction
      Category = 'Documenti'
      Caption = 'Ordini Clienti'
      Hint = 'Ordini Clienti'
      OnExecute = actDoc_Vend_Ord_CliExecute
    end
    object actDoc_Vend_DDT_Cli: TAction
      Category = 'Documenti'
      Caption = 'D.D.T. Clienti'
      Hint = 'D.D.T. Clienti'
      OnExecute = actDoc_Vend_DDT_CliExecute
    end
    object actDoc_Vend_Fatt_Imm: TAction
      Category = 'Documenti'
      Caption = 'Immediata'
      Hint = 'Fattura Immediata'
      OnExecute = actDoc_Vend_Fatt_ImmExecute
    end
    object actDoc_Vend_Fatt_Dif: TAction
      Category = 'Documenti'
      Caption = 'Diferita'
      Hint = 'Fattura Diferita'
      OnExecute = actDoc_Vend_Fatt_DifExecute
    end
    object actDoc_Vend_Nota_Credito: TAction
      Category = 'Documenti'
      Caption = 'Nota Credito'
      Hint = 'Nota Credito'
    end
    object actDoc_Vend_Vend_Al_Banco: TAction
      Category = 'Documenti'
      Caption = 'Vendita al Banco'
      Enabled = False
      Hint = 'Vendita al Banco'
    end
    object actTry_Close: TAction
      Category = 'Try'
      Caption = 'Esci'
      OnExecute = actTry_CloseExecute
    end
  end
  object rxfrmStore: TFormStorage
    Options = [fpPosition]
    UseRegistry = True
    Version = 1
    StoredValues = <>
    Left = 117
    Top = 255
  end
  object rxtricoGeAri: TRxTrayIcon
    Hint = 'Netm@g Gestione Aziendale'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
      999999999999999999999999999994444F00F40F444444444444444444499C44
      4F00F40F444444444444444444499CC44F0F0F0F444444440000004444499CCC
      4F0F0F0F444440008888880044499CCCCF04F00F444008888888888804499CCC
      CF00000F4008F8F8F8F8888804499CCCCF04F00F0F8F88888888800004499CCC
      CF0F0040F8F8F8F8F800078804499CCCCCF0040F8F888F880077787804499CCC
      CCCFC0F8F8F8F8F00787878044499CCCCCCC0F8F8F8F80070878788044499CCC
      CCC0F8F8F8F807770787880444499CCCCCC0FFFF8F8077780878780444499CCC
      CC08F8F8F80F77870787804444499CCCCC0FFF8F80F0F7780878044444499CCC
      C0F8F8F8078F0F870787044444499CCCC0FF8FF07777F0F80880444444499CCC
      C0F8F8F077878F0F0804444444499CCC0FFFFF07777878F00044444444499CCC
      0FF8F000000000000F4F444444499CCC0FFFF07778787880F0F0F44444499CCC
      0FF807878787870CCF00F44444499CCC0FFF0778787870CCF000F44444499CCC
      0FF8078787800CCCCFFF0F4444499CCC0FF07878780CCCCCCCCCFF4444499CCC
      C0F0777700CCCCCCCCCCCC4444499CCCC0F07700CCCCCCCCCCCCCCC444499CCC
      CC0000CCCCCCCCCCCCCCCCCC44499CCCCCCCCCCCCCCCCCCCCCCCCCCCC4499CCC
      CCCCCCCCCCCCCCCCCCCCCCCCCC49999999999999999999999999999999990000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    PopupMenu = rxpopTrayMenu
    Left = 231
    Top = 393
  end
  object rxpopTrayMenu: TRxPopupMenu
    MenuAnimation = [maRightToLeft, maBottomToTop]
    Style = msBtnLowered
    Left = 144
    Top = 237
    object N22: TMenuItem
      Caption = '-'
    end
    object Info1: TMenuItem
      Caption = 'Info'
      OnClick = Contattaci1Click
    end
    object miTry_Esci: TMenuItem
      Action = actTry_Close
      Caption = 'Esci da Netm@g'
    end
  end
  object IBTable1: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    TableName = 'TAB_DET_MOV_MAG'
    Left = 493
    Top = 289
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'delete from tab_articoli')
    Left = 557
    Top = 217
  end
  object PopupMenu1: TPopupMenu
    Images = dmodPub.iliPub
    Left = 509
    Top = 65
    object GestSchedeCarburante1: TMenuItem
      Caption = 'Gest. Spese Interne'
      SubMenuImages = dmodPub.iliPub
      ImageIndex = 5
      OnClick = GestSchedeCarburante1Click
    end
    object GestAutomezzi1: TMenuItem
      Caption = 'Gestione Assegni'
      SubMenuImages = dmodPub.iliPub
      ImageIndex = 5
      OnClick = GestAutomezzi1Click
    end
    object GestAttrezziedUtensili1: TMenuItem
      Caption = 'Costi Generali di Gestione'
      SubMenuImages = dmodPub.iliPub
      ImageIndex = 5
      OnClick = GestAttrezziedUtensili1Click
    end
    object GestAbbigliamento6261: TMenuItem
      Caption = '----'
      SubMenuImages = dmodPub.iliPub
      ImageIndex = 5
    end
    object GestBeniStrumentaliUfficio1: TMenuItem
      Caption = '--'
      SubMenuImages = dmodPub.iliPub
      ImageIndex = 5
    end
    object Statistiche1: TMenuItem
      Caption = 'Statistiche'
      OnClick = Statistiche1Click
    end
  end
  object IBTable2: TIBTable
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    TableName = 'TAB_DESCR_AGG'
    Left = 397
    Top = 313
    object IBTable2CODICE: TIntegerField
      FieldName = 'CODICE'
    end
    object IBTable2RIGA1: TIBStringField
      FieldName = 'RIGA1'
      Size = 100
    end
    object IBTable2RIGA2: TIBStringField
      FieldName = 'RIGA2'
      Size = 100
    end
    object IBTable2RIGA3: TIBStringField
      FieldName = 'RIGA3'
      Size = 100
    end
    object IBTable2RIGA4: TIBStringField
      FieldName = 'RIGA4'
      Size = 100
    end
    object IBTable2RIGA5: TIBStringField
      FieldName = 'RIGA5'
      Size = 100
    end
    object IBTable2RIGA6: TIBStringField
      FieldName = 'RIGA6'
      Size = 100
    end
    object IBTable2RIGA7: TIBStringField
      FieldName = 'RIGA7'
      Size = 100
    end
    object IBTable2RIGA8: TIBStringField
      FieldName = 'RIGA8'
      Size = 100
    end
    object IBTable2RIGA9: TIBStringField
      FieldName = 'RIGA9'
      Size = 100
    end
  end
  object popInfo: TPopupMenu
    Left = 541
    Top = 65
    object Help1: TMenuItem
      Caption = 'Help'
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object Contattaci1: TMenuItem
      Caption = 'Contattaci'
      Visible = False
      OnClick = Contattaci1Click
    end
  end
  object PopCasse: TPopupMenu
    Images = dmodPub.iliPub
    Left = 573
    Top = 65
    object MenuItem2: TMenuItem
      Caption = 'Casse'
      OnClick = MenuItem2Click
    end
    object Reparti1: TMenuItem
      Caption = 'Reparti'
      OnClick = Reparti1Click
    end
    object N32: TMenuItem
      Caption = '-'
    end
    object GestioneCasseCASIOINDESIT1: TMenuItem
      Caption = 'Gestione Casse CASIO/INDESIT'
      OnClick = GestioneCasseCASIOINDESIT1Click
    end
  end
end
