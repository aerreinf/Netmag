object frmVisDistinta: TfrmVisDistinta
  Left = 185
  Top = 135
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Visualizzazione Distinta'
  ClientHeight = 491
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDati: TPanel
    Left = 0
    Top = 27
    Width = 535
    Height = 445
    Align = alLeft
    Caption = 'pnlDati'
    TabOrder = 2
    object pnlMain: TPanel
      Left = 1
      Top = 1
      Width = 533
      Height = 168
      Align = alTop
      BevelOuter = bvLowered
      Color = 16744448
      Enabled = False
      TabOrder = 0
      object lblCodArt: TLabel
        Left = 4
        Top = 4
        Width = 97
        Height = 16
        Caption = 'Codice Articolo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 111
        Top = 4
        Width = 74
        Height = 16
        Caption = 'Descrizione'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 4
        Top = 40
        Width = 109
        Height = 14
        Caption = 'Descrizione Distinta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 256
        Top = 40
        Width = 39
        Height = 14
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 452
        Top = 6
        Width = 12
        Height = 11
        Caption = 'Id.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcgTaglia: TDBCtrlGrid
        Left = 4
        Top = 77
        Width = 521
        Height = 44
        Hint = 'Taglia'
        AllowDelete = False
        AllowInsert = False
        ColCount = 7
        Color = 14280447
        DataSource = dsTaglia
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        PanelHeight = 22
        PanelWidth = 72
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        RowCount = 2
        SelectedColor = clSilver
        ShowHint = True
        object dbeTaglia: TDBEdit
          Left = 12
          Top = 1
          Width = 45
          Height = 20
          CharCase = ecUpperCase
          Color = clBlue
          Ctl3D = False
          DataField = 'DESCR'
          DataSource = dsTaglia
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object dbnDist_Dett: TDBNavigator
        Left = 4
        Top = 123
        Width = 120
        Height = 19
        Cursor = crHandPoint
        DataSource = dsDistinte_Det
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Flat = True
        TabOrder = 3
        BeforeAction = dbnDist_DettBeforeAction
        OnClick = dbnDist_DettClick
      end
      object rxdblcDistDett_CodArt: TRxDBLookupCombo
        Left = 4
        Top = 144
        Width = 87
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        DataField = 'CODICE_ARTICOLO'
        DataSource = dsDistinte_Det
        EmptyItemColor = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'CODICE_ARTICOLO'
        LookupSource = dsArticoli_Acc
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnChange = rxdblcDistDett_CodArtChange
      end
      object rxdblcDistDett_DescrArt: TRxDBLookupCombo
        Left = 90
        Top = 144
        Width = 189
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        DataField = 'CODICE_ARTICOLO'
        DataSource = dsDistinte_Det
        EmptyItemColor = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'CODICE_ARTICOLO'
        LookupDisplay = 'DESCR'
        LookupSource = dsArticoli_Acc
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object dbeDett_Qta: TDBEdit
        Left = 282
        Top = 144
        Width = 53
        Height = 21
        AutoSize = False
        Ctl3D = False
        DataField = 'QTA'
        DataSource = dsDistinte_Det
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnClick = dbeDett_QtaClick
        OnEnter = dbeDett_QtaEnter
        OnExit = dbeDett_QtaExit
      end
      object dbeDett_Costo: TDBEdit
        Left = 338
        Top = 144
        Width = 75
        Height = 21
        AutoSize = False
        Ctl3D = False
        DataField = 'COSTO'
        DataSource = dsDistinte_Det
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnClick = dbeDett_CostoClick
        OnEnter = dbeDett_CostoEnter
      end
      object dbeDist_CodArt: TDBEdit
        Left = 4
        Top = 20
        Width = 105
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CODICE_ARTICOLO'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = dbeDist_CodArtChange
      end
      object dbeDist_Descr: TDBEdit
        Left = 111
        Top = 20
        Width = 319
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DESCR_ARTICOLO'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbeDett_Prezzo: TDBEdit
        Left = 416
        Top = 144
        Width = 75
        Height = 21
        AutoSize = False
        Ctl3D = False
        DataField = 'PREZZO'
        DataSource = dsDistinte_Det
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object dbchbxSc: TDBComboBox
        Left = 492
        Top = 143
        Width = 37
        Height = 22
        Style = csDropDownList
        Ctl3D = False
        DataField = 'FLAG_SCATOLO'
        DataSource = dsDistinte_Det
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        Items.Strings = (
          'S'
          'F'
          'N'
          'A')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 436
        Top = 20
        Width = 89
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'DATA_CREAZIONE'
        DataSource = dsDistinte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit2: TDBEdit
        Left = 200
        Top = 121
        Width = 45
        Height = 21
        DataField = 'PK_CODICE'
        DataSource = dsDistinte
        TabOrder = 11
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 4
        Top = 56
        Width = 242
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataSource = dsDistinte
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object LookCliForDescr: TRxDBLookupCombo
        Left = 256
        Top = 54
        Width = 269
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'CODCLI'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'ID_CLI_FOR'
        LookupDisplay = 'DENOMINAZIONE'
        LookupSource = dmodAz.dsoqTabCli
        ParentFont = False
        TabOrder = 13
      end
      object CheckBox1: TCheckBox
        Left = 144
        Top = 124
        Width = 49
        Height = 17
        Caption = 'Tutti'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = CheckBox1Click
      end
      object RxCalcEdit1: TRxCalcEdit
        Left = 438
        Top = 122
        Width = 89
        Height = 20
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBEdit4: TDBEdit
        Left = 464
        Top = 4
        Width = 61
        Height = 15
        AutoSize = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PK_CODICE'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        OnChange = dbeDist_CodArtChange
      end
      object BitBtn1: TBitBtn
        Left = 352
        Top = 123
        Width = 75
        Height = 20
        Cursor = crHandPoint
        Hint = 'Duplica Distinta'
        Caption = 'Copia Da..'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
    end
    object dbgDett: TDBGrid
      Left = 1
      Top = 169
      Width = 533
      Height = 275
      Align = alClient
      DataSource = dsDistinte_Det
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = 12713983
          Expanded = False
          FieldName = 'CODICE_ARTICOLO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cod.articolo'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Color = 12713983
          Expanded = False
          FieldName = 'DESCR_ARTICOLO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descrizione'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 194
          Visible = True
        end
        item
          Color = 12713983
          Expanded = False
          FieldName = 'QTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
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
          Width = 55
          Visible = True
        end
        item
          Color = 12713983
          Expanded = False
          FieldName = 'COSTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Costo UM'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Color = 12713983
          Expanded = False
          FieldName = 'PREZZO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Imp.'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Color = 12713983
          Expanded = False
          FieldName = 'FLAG_SCATOLO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          PickList.Strings = (
            'S'
            'N')
          Title.Alignment = taCenter
          Title.Caption = 'sc.'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = 12713983
          Expanded = False
          FieldName = 'FK_DISTINTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
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
          Color = 12713983
          Expanded = False
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
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
  end
  object tbCtrl: TToolBar
    Left = 0
    Top = 0
    Width = 790
    Height = 27
    AutoSize = True
    ButtonHeight = 25
    EdgeBorders = [ebBottom]
    Flat = True
    Images = dmodPub.iliPub
    Indent = 4
    TabOrder = 0
    object tbtnEsci: TToolButton
      Left = 4
      Top = 0
      Cursor = crHandPoint
      Action = actEsci
      ParentShowHint = False
      ShowHint = True
    end
    object sep1: TToolButton
      Left = 27
      Top = 0
      Width = 12
      Caption = 'sep1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tbtnNuovo: TToolButton
      Left = 39
      Top = 0
      Cursor = crHandPoint
      Hint = 'Crea nuova distinta'
      Action = actNuovo
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 62
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 70
      Top = 0
      Cursor = crHandPoint
      Hint = 
        'Scegli Articolo per creare una nuova Distinta di uno stesso Arti' +
        'colo'
      Caption = 'ToolButton3'
      ImageIndex = 47
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 93
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object tbtnModifica: TToolButton
      Left = 101
      Top = 0
      Cursor = crHandPoint
      Hint = 'Modifica Distinta'
      Action = actModifica
      ParentShowHint = False
      ShowHint = True
    end
    object sep2: TToolButton
      Left = 124
      Top = 0
      Width = 8
      Caption = 'sep2'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object tbtnSalva: TToolButton
      Left = 132
      Top = 0
      Cursor = crHandPoint
      Hint = 'Salva Distinta'
      Action = actSalva
      ParentShowHint = False
      ShowHint = True
    end
    object tbtnAnnulla: TToolButton
      Left = 155
      Top = 0
      Cursor = crHandPoint
      Hint = 'Annulla'
      Action = actAnnulla
      ParentShowHint = False
      ShowHint = True
    end
    object sep3: TToolButton
      Left = 178
      Top = 0
      Width = 8
      Caption = 'sep3'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnElimina: TToolButton
      Left = 186
      Top = 0
      Cursor = crHandPoint
      Hint = 'Elimina Distinta'
      Action = actElimina
      ParentShowHint = False
      ShowHint = True
    end
    object sep4: TToolButton
      Left = 209
      Top = 0
      Width = 8
      Caption = 'sep4'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbtnStampa: TToolButton
      Left = 217
      Top = 0
      Cursor = crHandPoint
      Hint = 'Stampa'
      Action = actStampa_corrente
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton1: TToolButton
      Left = 240
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 25
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 248
      Top = 0
      Cursor = crHandPoint
      Hint = 'Anteprima Accessori'
      Caption = 'ToolButton5'
      ImageIndex = 50
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton6: TToolButton
      Left = 271
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object DBNavigator1: TDBNavigator
      Left = 279
      Top = 0
      Width = 180
      Height = 25
      DataSource = dsDistinte
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Flat = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object ToolButton7: TToolButton
      Left = 459
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 467
      Top = 0
      Cursor = crHandPoint
      Hint = 'Scarico da Distinta Articolo Selezionato'
      Caption = 'Scarico da Distinta Articolo Selezionato'
      ImageIndex = 27
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton8Click
    end
    object ToolButton9: TToolButton
      Left = 490
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 28
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 498
      Top = 0
      Cursor = crHandPoint
      Hint = 'Ricalcola accessori scalati'
      Caption = 'ToolButton10'
      Enabled = False
      ImageIndex = 48
      OnClick = ToolButton10Click
    end
    object ToolButton11: TToolButton
      Left = 521
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 49
      Style = tbsSeparator
    end
    object ToolButton12: TToolButton
      Left = 529
      Top = 0
      Cursor = crHandPoint
      Hint = 'Scarica da distinta tutti gli Articoli'
      Caption = 'Scarica da distinta tutti gli Articoli'
      ImageIndex = 49
      ParentShowHint = False
      ShowHint = True
    end
  end
  object pnlTagliaColori: TPanel
    Left = 535
    Top = 27
    Width = 255
    Height = 445
    Align = alClient
    BevelOuter = bvLowered
    Color = 16744576
    Constraints.MinHeight = 425
    Constraints.MinWidth = 253
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 55
      Top = 33
      Width = 69
      Height = 15
      Caption = 'Manodopera'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 81
      Top = 59
      Width = 43
      Height = 15
      Caption = 'Ricamo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 69
      Top = 84
      Width = 55
      Height = 15
      Caption = 'Fasonista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 67
      Top = 110
      Width = 57
      Height = 15
      Caption = 'Situazione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 87
      Top = 135
      Width = 37
      Height = 15
      Caption = 'Coppe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 70
      Top = 161
      Width = 54
      Height = 15
      Caption = 'Accessori'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 100
      Top = 186
      Width = 24
      Height = 15
      Caption = 'Altro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 100
      Top = 212
      Width = 24
      Height = 15
      Caption = 'Altro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 100
      Top = 237
      Width = 24
      Height = 15
      Caption = 'Altro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 100
      Top = 263
      Width = 24
      Height = 15
      Caption = 'Altro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblSubtotaleCosto: TLabel
      Left = 63
      Top = 7
      Width = 61
      Height = 16
      Caption = 'Subtotale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeManodopera: TDBEdit
      Left = 126
      Top = 30
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'MANODOPERA'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = dbeRicarLireExit
    end
    object dbeRicamo: TDBEdit
      Left = 126
      Top = 56
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'RICAMO'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = dbeRicarLireExit
    end
    object dbeFasonista: TDBEdit
      Left = 126
      Top = 81
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'FASONISTA'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = dbeRicarLireExit
    end
    object dbeSituazione: TDBEdit
      Left = 126
      Top = 107
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'SITUAZIONE'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = dbeRicarLireExit
    end
    object dbeCoppe: TDBEdit
      Left = 126
      Top = 132
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'COPPE'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = dbeRicarLireExit
    end
    object dbeAccessori: TDBEdit
      Left = 126
      Top = 158
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'ACCESSORI'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnExit = dbeRicarLireExit
    end
    object dbeAltro1: TDBEdit
      Left = 126
      Top = 183
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'ALTRO1'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnExit = dbeRicarLireExit
    end
    object dbeAltro2: TDBEdit
      Left = 126
      Top = 209
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'ALTRO2'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnExit = dbeRicarLireExit
    end
    object dbeAltro3: TDBEdit
      Left = 126
      Top = 234
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'ALTRO3'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnExit = dbeRicarLireExit
    end
    object dbeAltro4: TDBEdit
      Left = 126
      Top = 260
      Width = 121
      Height = 20
      AutoSize = False
      DataField = 'ALTRO4'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnExit = dbeRicarLireExit
    end
    object dbeSubtotaleCosto: TDBEdit
      Left = 126
      Top = 4
      Width = 121
      Height = 22
      DataField = 'COSTO_ACCESS_TOTALE'
      DataSource = dsDistinte
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 11
      Top = 282
      Width = 238
      Height = 154
      Color = clBlue
      TabOrder = 11
      object Label12: TLabel
        Left = 70
        Top = 36
        Width = 42
        Height = 15
        Caption = '1'#176' rc. %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 70
        Top = 62
        Width = 42
        Height = 15
        Caption = '2'#176' rc. %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 88
        Top = 87
        Width = 24
        Height = 15
        Caption = '3'#176' R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 77
        Top = 8
        Width = 35
        Height = 16
        Caption = 'Costo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 15
        Top = 131
        Width = 97
        Height = 16
        Caption = 'Prezzo Vendita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 88
        Top = 109
        Width = 24
        Height = 15
        Caption = '4'#176' R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbeRicar1perc: TDBEdit
        Left = 114
        Top = 33
        Width = 51
        Height = 21
        DataField = 'RICAR1PERC'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = dbeRicarLireExit
      end
      object dbeRicar2perc: TDBEdit
        Left = 114
        Top = 59
        Width = 51
        Height = 21
        DataField = 'RICAR2PERC'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = dbeRicarLireExit
      end
      object dbeRicarLire: TDBEdit
        Left = 114
        Top = 84
        Width = 117
        Height = 21
        DataField = 'RICAR_LIRE'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = dbeRicarLireExit
      end
      object dbeCosto: TDBEdit
        Left = 114
        Top = 6
        Width = 117
        Height = 21
        DataField = 'COSTO'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnExit = dbeRicarLireExit
      end
      object dbePrezzoVendita: TDBEdit
        Left = 114
        Top = 129
        Width = 117
        Height = 22
        TabStop = False
        DataField = 'PREZZO_VENDITA'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object dbeRicarLire2: TDBEdit
        Left = 114
        Top = 106
        Width = 117
        Height = 21
        DataField = 'RICAR_LIRE2'
        DataSource = dsDistinte
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = dbeRicarLireExit
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 472
    Width = 790
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Dettagli : F5-Nuovo;F6-Modifica;F7-Salva;F8-Elimina'
        Width = 380
      end
      item
        Alignment = taCenter
        Text = 'Distinta : F9-Nuovo;F10-Modifica;F11-Salva;F12-Elimina'
        Width = 50
      end>
  end
  object alVisDistinte: TActionList
    Images = dmodPub.iliPub
    Left = 616
    Top = 65530
    object actEsci: TAction
      Category = 'ToolBar'
      Caption = '&Esci'
      Hint = 'Esci'
      ImageIndex = 0
      OnExecute = actEsciExecute
    end
    object actNuovo: TAction
      Category = 'ToolBar'
      Caption = 'Nuovo'
      ImageIndex = 1
      OnExecute = actNuovoExecute
    end
    object actModifica: TAction
      Category = 'ToolBar'
      Caption = 'Modifica'
      ImageIndex = 2
      OnExecute = actModificaExecute
    end
    object actElimina: TAction
      Category = 'ToolBar'
      Caption = 'actElimina'
      ImageIndex = 3
      OnExecute = actEliminaExecute
    end
    object actSalva: TAction
      Category = 'ToolBar'
      Caption = 'actSalva'
      ImageIndex = 5
      OnExecute = actSalvaExecute
    end
    object actAnnulla: TAction
      Category = 'ToolBar'
      Caption = 'actAnnulla'
      ImageIndex = 7
      OnExecute = actAnnullaExecute
    end
    object actStampa_corrente: TAction
      Category = 'ToolBar'
      Caption = 'Stampa distinta'
      ImageIndex = 24
      OnExecute = actStampa_correnteExecute
    end
    object acrRicercaDistinta: TAction
      Category = 'ToolBar'
      Caption = 'Ricerca Distinta'
      ImageIndex = 20
    end
  end
  object dsDistinte: TDataSource
    DataSet = dmodAz.ibqryDistinte
    Left = 220
    Top = 103
  end
  object dsDistinte_Det: TDataSource
    DataSet = dmodAz.ibtblDistinte_Dett
    Left = 36
    Top = 308
  end
  object dsTaglia: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqRicerca2
    Left = 99
    Top = 99
  end
  object dsArticoli_Acc: TDataSource
    DataSet = dmodAz.ibqryArt_Acc_per_Distinte
    Left = 435
    Top = 148
  end
  object dsArticoli_Vend: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 283
    Top = 112
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from tab_articoli'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    InsertSQL.Strings = (
      'insert into tab_articoli'
      '  (CODICE_ARTICOLO, PREZZO_BASE, COSTO_STANDART)'
      'values'
      '  (:CODICE_ARTICOLO, :PREZZO_BASE, :COSTO_STANDART)')
    RefreshSQL.Strings = (
      'Select *'
      'from tab_articoli '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select codice_articolo,prezzo_base, COSTO_STANDART'
      'from tab_articoli'
      'where codice_Articolo=:parcodart')
    ModifySQL.Strings = (
      'update tab_articoli'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  PREZZO_BASE = :PREZZO_BASE,'
      '  COSTO_STANDART = :COSTO_STANDART'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO')
    Left = 368
    Top = 216
    object IBDataSet1CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBDataSet1PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBDataSet1COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
  end
  object IBStoredProc1: TIBStoredProc
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    StoredProcName = 'PRO_NEXT_DISTINTE_DETT'
    Left = 256
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODICE'
        ParamType = ptOutput
      end>
    object IBStoredProc1CODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = '"PRO_NEXT_DISTINTE_DETT"."CODICE"'
    end
  end
  object IBDocumenti: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT tab_det_doc.*,'
      'tab_documenti.causale_magazzino,tab_documenti.DATA_DOC,'
      
        'tab_documenti.TIPO_CLIFOR,tab_documenti.CODICE_BOLL,tab_document' +
        'i.CONTRO_DEPOSITO,tab_documenti.TIPO_DOC,tab_documenti.CONTRO_CA' +
        'US_MAG'
      
        'FROM tab_det_doc inner join tab_documenti on tab_det_doc.doc_id ' +
        '= tab_documenti.id_documento'
      
        'where (tab_documenti.CAUSALE_MAGAZZINO='#39'TRAD'#39' or tab_documenti.C' +
        'AUSALE_MAGAZZINO='#39'DDCL'#39' OR tab_documenti.CAUSALE_MAGAZZINO='#39'PROD' +
        #39') and tab_det_doc.codice_articolo=:cdart'
      'order by tab_det_doc.codice_articolo descending'
      '')
    Left = 296
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cdart'
        ParamType = ptUnknown
      end>
    object IBDocumentiCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object IBDocumentiQUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBDocumentiCAUSALE_MAGAZZINO: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBDocumentiDEP: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBDocumentiTIPO_SERVIZIO: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object IBDocumentiID_DOC_DET: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IBDocumentiNUM_RIGA_ID: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IBDocumentiTIPO_RIGA: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBDocumentiDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object IBDocumentiCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object IBDocumentiCOSTOINVALUTA: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object IBDocumentiUNITA_MISURA: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object IBDocumentiFATTCONV: TFloatField
      FieldName = 'FATTCONV'
    end
    object IBDocumentiQTA_UM: TFloatField
      FieldName = 'QTA_UM'
    end
    object IBDocumentiSCONTO1: TFloatField
      FieldName = 'SCONTO1'
    end
    object IBDocumentiSCONTO2: TFloatField
      FieldName = 'SCONTO2'
    end
    object IBDocumentiSCONTO3: TFloatField
      FieldName = 'SCONTO3'
    end
    object IBDocumentiSCONTO4: TFloatField
      FieldName = 'SCONTO4'
    end
    object IBDocumentiIMPORTO_SCONTO: TFloatField
      FieldName = 'IMPORTO_SCONTO'
    end
    object IBDocumentiIMPORTO: TFloatField
      FieldName = 'IMPORTO'
    end
    object IBDocumentiIMPORTOINVALUTA: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object IBDocumentiOMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object IBDocumentiSCONTO_EQ: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object IBDocumentiPERC_PROVV: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object IBDocumentiIVATO: TFloatField
      FieldName = 'IVATO'
    end
    object IBDocumentiIMPORTO_CON_IVA: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
    end
    object IBDocumentiCODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object IBDocumentiDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object IBDocumentiRIF_A: TSmallintField
      FieldName = 'RIF_A'
    end
    object IBDocumentiRIF_A_PRE: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object IBDocumentiRIF_A_ORD: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object IBDocumentiRIF_A_DDT: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IBDocumentiRIF_ID_DOC_DET: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IBDocumentiRIF_DDT_ID_DOC: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object IBDocumentiRIF_DDT_DATA_DOC: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IBDocumentiRIF_ORD_ID_DOC: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object IBDocumentiRIF_ORD_DATA_DOC: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IBDocumentiRIF_PRE_ID_DOC: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object IBDocumentiRIF_PRE_DATA_DOC: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IBDocumentiPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IBDocumentiRIF_PRE_NUM_DOC: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IBDocumentiRIF_ORD_NUM_DOC: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IBDocumentiRIF_DDT_NUM_DOC: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object IBDocumentiOP_QTA_DISPONIBILE: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object IBDocumentiOP_VAL_DISPONIBILE: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object IBDocumentiOP_QTA_GIACENZA: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object IBDocumentiOP_VAL_GIACENZA: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IBDocumentiDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBDocumentiTOTCOLLI: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object IBDocumentiTOTSCAT: TFloatField
      FieldName = 'TOTSCAT'
    end
    object IBDocumentiPREZZOLIST: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object IBDocumentiSCHEDA: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBDocumentiPASSATA: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBDocumentiCOL: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object IBDocumentiDATA_DOC: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object IBDocumentiTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBDocumentiA: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBDocumentiB: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBDocumentiC: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBDocumentiCODICE_BOLL: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object IBDocumentiCONTRO_DEPOSITO: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IBDocumentiTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object IBDocumentiCONTRO_CAUS_MAG: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
  end
  object ibqryDistinte: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from DISTINTE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into DISTINTE'
      '  (PK_CODICE, CODICE_ARTICOLO, DESCR_ARTICOLO, MANODOPERA, '
      'RICAMO, FASONISTA, '
      
        '   SITUAZIONE, COPPE, ACCESSORI, ALTRO1, ALTRO2, ALTRO3, ALTRO4,' +
        ' '
      'COSTO, '
      '   RICAR1PERC, RICAR2PERC, RICAR_LIRE, PREZZO_VENDITA, '
      'COSTO_ACCESS_TOTALE, '
      '   COSTO_TOTALE, DATA_CREAZIONE, CODCLI, RICAR_LIRE2)'
      'values'
      '  (:PK_CODICE, :CODICE_ARTICOLO, :DESCR_ARTICOLO, :MANODOPERA, '
      ':RICAMO, '
      
        '   :FASONISTA, :SITUAZIONE, :COPPE, :ACCESSORI, :ALTRO1, :ALTRO2' +
        ', '
      ':ALTRO3, '
      '   :ALTRO4, :COSTO, :RICAR1PERC, :RICAR2PERC, :RICAR_LIRE, '
      ':PREZZO_VENDITA, '
      
        '   :COSTO_ACCESS_TOTALE, :COSTO_TOTALE, :DATA_CREAZIONE, :CODCLI' +
        ', '
      ':RICAR_LIRE2)')
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
      'Select * FROM DISTINTE'
      'where codice_Articolo=:cdart'
      'Order By CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update DISTINTE'
      'set'
      '  PK_CODICE = :PK_CODICE,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  MANODOPERA = :MANODOPERA,'
      '  RICAMO = :RICAMO,'
      '  FASONISTA = :FASONISTA,'
      '  SITUAZIONE = :SITUAZIONE,'
      '  COPPE = :COPPE,'
      '  ACCESSORI = :ACCESSORI,'
      '  ALTRO1 = :ALTRO1,'
      '  ALTRO2 = :ALTRO2,'
      '  ALTRO3 = :ALTRO3,'
      '  ALTRO4 = :ALTRO4,'
      '  COSTO = :COSTO,'
      '  RICAR1PERC = :RICAR1PERC,'
      '  RICAR2PERC = :RICAR2PERC,'
      '  RICAR_LIRE = :RICAR_LIRE,'
      '  PREZZO_VENDITA = :PREZZO_VENDITA,'
      '  COSTO_ACCESS_TOTALE = :COSTO_ACCESS_TOTALE,'
      '  COSTO_TOTALE = :COSTO_TOTALE,'
      '  DATA_CREAZIONE = :DATA_CREAZIONE,'
      '  CODCLI = :CODCLI,'
      '  RICAR_LIRE2 = :RICAR_LIRE2'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_DISTINTE'
    Left = 120
    Top = 344
    object ibqryDistinteCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibqryDistinteDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibqryDistinteMANODOPERA: TFloatField
      FieldName = 'MANODOPERA'
      Origin = '"DISTINTE"."MANODOPERA"'
      currency = True
    end
    object ibqryDistinteRICAMO: TFloatField
      FieldName = 'RICAMO'
      Origin = '"DISTINTE"."RICAMO"'
      currency = True
    end
    object ibqryDistinteFASONISTA: TFloatField
      FieldName = 'FASONISTA'
      Origin = '"DISTINTE"."FASONISTA"'
      currency = True
    end
    object ibqryDistinteSITUAZIONE: TFloatField
      FieldName = 'SITUAZIONE'
      Origin = '"DISTINTE"."SITUAZIONE"'
      currency = True
    end
    object ibqryDistinteCOPPE: TFloatField
      FieldName = 'COPPE'
      Origin = '"DISTINTE"."COPPE"'
      currency = True
    end
    object ibqryDistinteACCESSORI: TFloatField
      FieldName = 'ACCESSORI'
      Origin = '"DISTINTE"."ACCESSORI"'
      currency = True
    end
    object ibqryDistinteALTRO1: TFloatField
      FieldName = 'ALTRO1'
      Origin = '"DISTINTE"."ALTRO1"'
      currency = True
    end
    object ibqryDistinteALTRO2: TFloatField
      FieldName = 'ALTRO2'
      Origin = '"DISTINTE"."ALTRO2"'
      currency = True
    end
    object ibqryDistinteALTRO3: TFloatField
      FieldName = 'ALTRO3'
      Origin = '"DISTINTE"."ALTRO3"'
      currency = True
    end
    object ibqryDistinteALTRO4: TFloatField
      FieldName = 'ALTRO4'
      Origin = '"DISTINTE"."ALTRO4"'
      currency = True
    end
    object ibqryDistinteCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE"."COSTO"'
      currency = True
    end
    object ibqryDistinteRICAR1PERC: TFloatField
      FieldName = 'RICAR1PERC'
      Origin = '"DISTINTE"."RICAR1PERC"'
    end
    object ibqryDistintePK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE"."PK_CODICE"'
      Required = True
    end
    object ibqryDistinteRICAR2PERC: TFloatField
      FieldName = 'RICAR2PERC'
      Origin = '"DISTINTE"."RICAR2PERC"'
    end
    object ibqryDistinteRICAR_LIRE: TFloatField
      FieldName = 'RICAR_LIRE'
      Origin = '"DISTINTE"."RICAR_LIRE"'
      currency = True
    end
    object ibqryDistintePREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = '"DISTINTE"."PREZZO_VENDITA"'
      currency = True
    end
    object ibqryDistinteCOSTO_ACCESS_TOTALE: TFloatField
      FieldName = 'COSTO_ACCESS_TOTALE'
      Origin = '"DISTINTE"."COSTO_ACCESS_TOTALE"'
      currency = True
    end
    object ibqryDistinteCOSTO_TOTALE: TFloatField
      FieldName = 'COSTO_TOTALE'
      Origin = '"DISTINTE"."COSTO_TOTALE"'
      currency = True
    end
    object ibqryDistinteDATA_CREAZIONE: TDateTimeField
      FieldName = 'DATA_CREAZIONE'
      Origin = '"DISTINTE"."DATA_CREAZIONE"'
    end
    object ibqryDistinteCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"DISTINTE"."CODCLI"'
    end
    object ibqryDistinteRICAR_LIRE2: TFloatField
      FieldName = 'RICAR_LIRE2'
      Origin = '"DISTINTE"."RICAR_LIRE2"'
      currency = True
    end
  end
  object ibtblDistinte_Dett: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from DISTINTE_DETT'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into DISTINTE_DETT'
      '  (FK_DISTINTE, CODICE_ARTICOLO, DESCR_ARTICOLO, QTA, COSTO, '
      'PREZZO, FLAG_SCATOLO, '
      '   PK_CODICE)'
      'values'
      
        '  (:FK_DISTINTE, :CODICE_ARTICOLO, :DESCR_ARTICOLO, :QTA, :COSTO' +
        ', '
      ':PREZZO, '
      '   :FLAG_SCATOLO, :PK_CODICE)')
    RefreshSQL.Strings = (
      'Select '
      '  FK_DISTINTE,'
      '  CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO,'
      '  QTA,'
      '  COSTO,'
      '  PREZZO,'
      '  FLAG_SCATOLO,'
      '  PK_CODICE'
      'from DISTINTE_DETT '
      'where'
      '  PK_CODICE = :PK_CODICE'
      'order by FK_DISTINTE,CODICE_ARTICOLO')
    SelectSQL.Strings = (
      'select * from DISTINTE_DETT'
      'where fk_distinte=:pk_codice'
      'order by FK_DISTINTE,CODICE_ARTICOLO')
    ModifySQL.Strings = (
      'update DISTINTE_DETT'
      'set'
      '  FK_DISTINTE = :FK_DISTINTE,'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DESCR_ARTICOLO = :DESCR_ARTICOLO,'
      '  QTA = :QTA,'
      '  COSTO = :COSTO,'
      '  PREZZO = :PREZZO,'
      '  FLAG_SCATOLO = :FLAG_SCATOLO,'
      '  PK_CODICE = :PK_CODICE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_DISTINTE_DETT'
    DataSource = dmodAz.dsDistinte_dm
    Left = 160
    Top = 344
    object ibtblDistinte_DettFK_DISTINTE: TIntegerField
      FieldName = 'FK_DISTINTE'
      Origin = '"DISTINTE_DETT"."FK_DISTINTE"'
      Required = True
    end
    object ibtblDistinte_DettCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"DISTINTE_DETT"."CODICE_ARTICOLO"'
      Required = True
    end
    object ibtblDistinte_DettDESCR_ARTICOLO: TIBStringField
      FieldName = 'DESCR_ARTICOLO'
      Origin = '"DISTINTE_DETT"."DESCR_ARTICOLO"'
      Size = 50
    end
    object ibtblDistinte_DettQTA: TFloatField
      FieldName = 'QTA'
      Origin = '"DISTINTE_DETT"."QTA"'
    end
    object ibtblDistinte_DettCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = '"DISTINTE_DETT"."COSTO"'
    end
    object ibtblDistinte_DettPREZZO: TFloatField
      FieldName = 'PREZZO'
      Origin = '"DISTINTE_DETT"."PREZZO"'
    end
    object ibtblDistinte_DettFLAG_SCATOLO: TIBStringField
      FieldName = 'FLAG_SCATOLO'
      Origin = '"DISTINTE_DETT"."FLAG_SCATOLO"'
      Size = 1
    end
    object ibtblDistinte_DettPK_CODICE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PK_CODICE'
      Origin = '"DISTINTE_DETT"."PK_CODICE"'
      Required = True
    end
  end
  object dsDistinte_dm: TDataSource
    DataSet = ibqryDistinte
    Left = 120
    Top = 304
  end
  object IBQuery22: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a'
      'AND TIPO_ARTICOLO_ID=1')
    Left = 240
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery2CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBQuery2DESCR2: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBQuery2CODICE_IVA_ID: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBQuery2UNITA_DI_MISURA1_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA2_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBQuery2UNITA_DI_MISURA3_ID: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object IBQuery2SCONTO1: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object IBQuery2SCONTO2: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object IBQuery2SCONTO3: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object IBQuery2PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object IBQuery2PESO_NETTO_KG: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object IBQuery2PESO_LORDO_KG: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object IBQuery2SCORTA_MIN: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object IBQuery2SCORTA_MAX: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object IBQuery2LOTTO_RIORDINO: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IBQuery2GG_APPROVVIGIONAMENTO: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IBQuery2QTA_X_CONFEZIONE: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IBQuery2ANNO: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBQuery2DESCR_AGGIUNTIVA_ID: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object IBQuery2PREZZO_BASE: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object IBQuery2COSTO_STANDART: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object IBQuery2TIPO_ARTICOLO_ID: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object IBQuery2FATT_CONV1: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object IBQuery2FATT_CONV2: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IBQuery2COSTO_ID: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IBQuery2RICAVO_ID: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IBQuery2GIORNI_MAX_INVENDUTO: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBQuery2ASPETTO_ID: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object IBQuery2RIORDINO_MESE_DA: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object IBQuery2RIORDINO_MESE_A: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object IBQuery2RIORDINO_GIORNO_DA: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object IBQuery2RIORDINO_GIORNO_A: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBQuery2STAGIONE_ID: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBQuery2GRUPPO_ALTERNATIVO: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBQuery2PRODUTTORE_ID: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBQuery2CATEGORIA_ARTICOLO_ID: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IBQuery2CATEGORIA_MERCEOLOGICA_ID: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBQuery2CODICE_BASE: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object IBQuery2DERIVATO: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBQuery2VARIANTE1_ID: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE2_ID: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBQuery2VARIANTE3_ID: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IBQuery2NUM_VARIANTI: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object IBQuery2TIPO_COSTO_ID: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object IBQuery2TIPO_RICAVO_ID: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object IBQuery2OMAGGIO: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object IBQuery2TIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IBQuery2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBQuery2CODE_BAR: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBQuery2DESCR_CODE_BAR: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object IBQuery2NON_STAMPA_INVENTARIO: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object IBQuery2NON_STAMPA_REGISTRO: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IBQuery2NOMENCLATURA: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV1_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object IBQuery2FATT_CONV2_NOMENCLATURA: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IBQuery2PROV_ORDINE: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object IBQuery2COSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object IBQuery2DATA_COSTO_ULTIMO: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IBQuery2NUM_REPARTO: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object IBQuery2TIPO_CODE_BAR_ID: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IBQuery2CONTO_ACQUISTO: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IBQuery2CONTO_VENDITA: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IBQuery2UN_MIS2_VAL: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IBQuery2UN_MIS3_VAL: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IBQuery2CAT_ART_FAMIGLIA_ID: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IBQuery2CAT_ART_GRUPPO_ID: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IBQuery2CAT_ART_MARCA_ID: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBQuery2FOTO_PERCORSO: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IBQuery2CAT_ART_TIPO_ID: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBQuery2FLAG_ACCESSORIE: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object IBQuery2DATAMOD: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object IBQuery2SCONTO4: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object IBQuery2PREZZO_IVATO: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object IBQuery2P2IVATO: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object IBQuery2P3IVATO: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object IBQuery2P4IVATO: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object IBQuery2P5IVATO: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object IBQuery2SC21: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object IBQuery2SC22: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object IBQuery2SC23: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object IBQuery2SC31: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object IBQuery2SC32: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object IBQuery2SC33: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object IBQuery2SC41: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object IBQuery2SC42: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object IBQuery2SC43: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object IBQuery2SC51: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object IBQuery2SC52: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object IBQuery2SC53: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object IBQuery2R2: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object IBQuery2R3: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object IBQuery2R4: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object IBQuery2R5: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object IBQuery2IMP2: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object IBQuery2IMP3: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object IBQuery2IMP4: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object IBQuery2IMP5: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object IBQuery2RICARPREC: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object IBQuery2P6IVATO: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object IBQuery2IMP6: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object IBQuery2STRUTT: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object IBQuery2CA: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object IBQuery2CG: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object IBQuery2AG: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object IBQuery2CA2: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object IBQuery2CG2: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object IBQuery2AG2: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object IBQuery2CA3: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object IBQuery2CG3: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object IBQuery2AG3: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object IBQuery2CA4: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object IBQuery2CG4: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object IBQuery2AG4: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object IBQuery2CA5: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object IBQuery2CG5: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object IBQuery2AG5: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object IBQuery2CA6: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object IBQuery2CG6: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object IBQuery2AG6: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IBQuery2ID_OFFERTA: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object IBQuery2CR: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object IBQuery2CR2: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object IBQuery2CR3: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object IBQuery2CR4: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object IBQuery2CR5: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object IBQuery2CR6: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object ibqCont_Art: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CONTABILE_ARTICOLO'
      
        'where CODICE_ARTICOLO=:parCod_Art And DEPOSITO_ID like :parCod_D' +
        'ep'
      '')
    UpdateObject = IBUpdateSQL1
    Left = 400
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parCod_Art'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parCod_Dep'
        ParamType = ptUnknown
      end>
    object ibqCont_ArtCODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Required = True
    end
    object ibqCont_ArtDEPOSITO_ID: TIBStringField
      FieldName = 'DEPOSITO_ID'
      Required = True
      Size = 3
    end
    object ibqCont_ArtCLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object ibqCont_ArtTIPO_CLI_FOR_ID: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
    end
    object ibqCont_ArtDESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object ibqCont_ArtQTA_ACQUISTI: TFloatField
      FieldName = 'QTA_ACQUISTI'
    end
    object ibqCont_ArtVAL_ACQUISTI: TFloatField
      FieldName = 'VAL_ACQUISTI'
    end
    object ibqCont_ArtQTA_VENDITA: TFloatField
      FieldName = 'QTA_VENDITA'
    end
    object ibqCont_ArtVAL_VENDITA: TFloatField
      FieldName = 'VAL_VENDITA'
    end
    object ibqCont_ArtQTA_ALTRE_ENTRATE: TFloatField
      FieldName = 'QTA_ALTRE_ENTRATE'
    end
    object ibqCont_ArtVAL_ALTRE_ENTRATE: TFloatField
      FieldName = 'VAL_ALTRE_ENTRATE'
    end
    object ibqCont_ArtQTA_ALTRE_USCITE: TFloatField
      FieldName = 'QTA_ALTRE_USCITE'
    end
    object ibqCont_ArtVAL_ALTRE_USCITA: TFloatField
      FieldName = 'VAL_ALTRE_USCITA'
    end
    object ibqCont_ArtQTA_RESO_CLIENTE: TFloatField
      FieldName = 'QTA_RESO_CLIENTE'
    end
    object ibqCont_ArtVAL_RESO_CLIENTE: TFloatField
      FieldName = 'VAL_RESO_CLIENTE'
    end
    object ibqCont_ArtQTA_RESO_FORNITORE: TFloatField
      FieldName = 'QTA_RESO_FORNITORE'
    end
    object ibqCont_ArtVAL_RESO_FORNITORE: TFloatField
      FieldName = 'VAL_RESO_FORNITORE'
    end
    object ibqCont_ArtQTA_ORDINATO: TFloatField
      FieldName = 'QTA_ORDINATO'
    end
    object ibqCont_ArtVAL_ORDINATO: TFloatField
      FieldName = 'VAL_ORDINATO'
    end
    object ibqCont_ArtQTA_IMPEGNATO: TFloatField
      FieldName = 'QTA_IMPEGNATO'
    end
    object ibqCont_ArtVAL_QTA_IMPEGNATO: TFloatField
      FieldName = 'VAL_QTA_IMPEGNATO'
    end
    object ibqCont_ArtQTA_EVASA_CLIENTE: TFloatField
      FieldName = 'QTA_EVASA_CLIENTE'
    end
    object ibqCont_ArtVAL_EVASO_CLIENTE: TFloatField
      FieldName = 'VAL_EVASO_CLIENTE'
    end
    object ibqCont_ArtQTA_EVASA_FORNITORE: TFloatField
      FieldName = 'QTA_EVASA_FORNITORE'
    end
    object ibqCont_ArtVAL_EVASO_FORNITORE: TFloatField
      FieldName = 'VAL_EVASO_FORNITORE'
    end
    object ibqCont_ArtQTA_GIACENZA_INIZIALE: TFloatField
      FieldName = 'QTA_GIACENZA_INIZIALE'
    end
    object ibqCont_ArtCOSTO_GIACENZA_INIZIALE: TFloatField
      FieldName = 'COSTO_GIACENZA_INIZIALE'
    end
    object ibqCont_ArtVAL_GIACENZA_INIZIALE: TFloatField
      FieldName = 'VAL_GIACENZA_INIZIALE'
    end
    object ibqCont_ArtGIACENZA_ATTUALE: TFloatField
      FieldName = 'GIACENZA_ATTUALE'
    end
    object ibqCont_ArtDISPONIBILITA: TFloatField
      FieldName = 'DISPONIBILITA'
    end
    object ibqCont_ArtCOSTO_ULTIMO: TFloatField
      FieldName = 'COSTO_ULTIMO'
    end
    object ibqCont_ArtMED_PREZZO_VEND: TFloatField
      FieldName = 'MED_PREZZO_VEND'
    end
    object ibqCont_ArtULT_COSTO_ACQ: TFloatField
      FieldName = 'ULT_COSTO_ACQ'
    end
    object ibqCont_ArtMEDIO_COSTO_ACQ: TFloatField
      FieldName = 'MEDIO_COSTO_ACQ'
    end
    object ibqCont_ArtULT_PREZZO_VEND: TFloatField
      FieldName = 'ULT_PREZZO_VEND'
    end
    object ibqCont_ArtDATA_ULTIMO_ACQUISTO: TDateTimeField
      FieldName = 'DATA_ULTIMO_ACQUISTO'
    end
    object ibqCont_ArtDATA_ULTIMA_VENDITA: TDateTimeField
      FieldName = 'DATA_ULTIMA_VENDITA'
    end
    object ibqCont_ArtPRETAGLIO: TFloatField
      FieldName = 'PRETAGLIO'
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODICE_ARTICOLO,'
      '  DEPOSITO_ID,'
      '  CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID,'
      '  DESCR,'
      '  QTA_ACQUISTI,'
      '  VAL_ACQUISTI,'
      '  QTA_VENDITA,'
      '  VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO,'
      '  VAL_ORDINATO,'
      '  QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE,'
      '  DISPONIBILITA,'
      '  COSTO_ULTIMO,'
      '  MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO'
      'from TAB_CONTABILE_ARTICOLO '
      'where'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :DEPOSITO_ID')
    ModifySQL.Strings = (
      'update TAB_CONTABILE_ARTICOLO'
      'set'
      '  CODICE_ARTICOLO = :CODICE_ARTICOLO,'
      '  DEPOSITO_ID = :DEPOSITO_ID,'
      '  CLI_FOR_ID = :CLI_FOR_ID,'
      '  TIPO_CLI_FOR_ID = :TIPO_CLI_FOR_ID,'
      '  DESCR = :DESCR,'
      '  QTA_ACQUISTI = :QTA_ACQUISTI,'
      '  VAL_ACQUISTI = :VAL_ACQUISTI,'
      '  QTA_VENDITA = :QTA_VENDITA,'
      '  VAL_VENDITA = :VAL_VENDITA,'
      '  QTA_ALTRE_ENTRATE = :QTA_ALTRE_ENTRATE,'
      '  VAL_ALTRE_ENTRATE = :VAL_ALTRE_ENTRATE,'
      '  QTA_ALTRE_USCITE = :QTA_ALTRE_USCITE,'
      '  VAL_ALTRE_USCITA = :VAL_ALTRE_USCITA,'
      '  QTA_RESO_CLIENTE = :QTA_RESO_CLIENTE,'
      '  VAL_RESO_CLIENTE = :VAL_RESO_CLIENTE,'
      '  QTA_RESO_FORNITORE = :QTA_RESO_FORNITORE,'
      '  VAL_RESO_FORNITORE = :VAL_RESO_FORNITORE,'
      '  QTA_ORDINATO = :QTA_ORDINATO,'
      '  VAL_ORDINATO = :VAL_ORDINATO,'
      '  QTA_IMPEGNATO = :QTA_IMPEGNATO,'
      '  VAL_QTA_IMPEGNATO = :VAL_QTA_IMPEGNATO,'
      '  QTA_EVASA_CLIENTE = :QTA_EVASA_CLIENTE,'
      '  VAL_EVASO_CLIENTE = :VAL_EVASO_CLIENTE,'
      '  QTA_EVASA_FORNITORE = :QTA_EVASA_FORNITORE,'
      '  VAL_EVASO_FORNITORE = :VAL_EVASO_FORNITORE,'
      '  QTA_GIACENZA_INIZIALE = :QTA_GIACENZA_INIZIALE,'
      '  COSTO_GIACENZA_INIZIALE = :COSTO_GIACENZA_INIZIALE,'
      '  VAL_GIACENZA_INIZIALE = :VAL_GIACENZA_INIZIALE,'
      '  GIACENZA_ATTUALE = :GIACENZA_ATTUALE,'
      '  DISPONIBILITA = :DISPONIBILITA,'
      '  COSTO_ULTIMO = :COSTO_ULTIMO,'
      '  MED_PREZZO_VEND = :MED_PREZZO_VEND,'
      '  ULT_COSTO_ACQ = :ULT_COSTO_ACQ,'
      '  MEDIO_COSTO_ACQ = :MEDIO_COSTO_ACQ,'
      '  ULT_PREZZO_VEND = :ULT_PREZZO_VEND,'
      '  DATA_ULTIMO_ACQUISTO = :DATA_ULTIMO_ACQUISTO,'
      '  DATA_ULTIMA_VENDITA = :DATA_ULTIMA_VENDITA,'
      '  PRETAGLIO = :PRETAGLIO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    InsertSQL.Strings = (
      'insert into TAB_CONTABILE_ARTICOLO'
      
        '  (CODICE_ARTICOLO, DEPOSITO_ID, CLI_FOR_ID, TIPO_CLI_FOR_ID, DE' +
        'SCR, '
      'QTA_ACQUISTI, '
      '   VAL_ACQUISTI, QTA_VENDITA, VAL_VENDITA, QTA_ALTRE_ENTRATE, '
      'VAL_ALTRE_ENTRATE, '
      '   QTA_ALTRE_USCITE, VAL_ALTRE_USCITA, QTA_RESO_CLIENTE, '
      'VAL_RESO_CLIENTE, '
      '   QTA_RESO_FORNITORE, VAL_RESO_FORNITORE, QTA_ORDINATO, '
      'VAL_ORDINATO, '
      '   QTA_IMPEGNATO, VAL_QTA_IMPEGNATO, QTA_EVASA_CLIENTE, '
      'VAL_EVASO_CLIENTE, '
      '   QTA_EVASA_FORNITORE, VAL_EVASO_FORNITORE, '
      'QTA_GIACENZA_INIZIALE, COSTO_GIACENZA_INIZIALE, '
      '   VAL_GIACENZA_INIZIALE, GIACENZA_ATTUALE, DISPONIBILITA, '
      'COSTO_ULTIMO, '
      '   MED_PREZZO_VEND, ULT_COSTO_ACQ, MEDIO_COSTO_ACQ, '
      'ULT_PREZZO_VEND, DATA_ULTIMO_ACQUISTO, '
      '   DATA_ULTIMA_VENDITA, PRETAGLIO)'
      'values'
      
        '  (:CODICE_ARTICOLO, :DEPOSITO_ID, :CLI_FOR_ID, :TIPO_CLI_FOR_ID' +
        ', '
      ':DESCR, '
      '   :QTA_ACQUISTI, :VAL_ACQUISTI, :QTA_VENDITA, :VAL_VENDITA, '
      ':QTA_ALTRE_ENTRATE, '
      '   :VAL_ALTRE_ENTRATE, :QTA_ALTRE_USCITE, :VAL_ALTRE_USCITA, '
      ':QTA_RESO_CLIENTE, '
      '   :VAL_RESO_CLIENTE, :QTA_RESO_FORNITORE, :VAL_RESO_FORNITORE, '
      ':QTA_ORDINATO, '
      '   :VAL_ORDINATO, :QTA_IMPEGNATO, :VAL_QTA_IMPEGNATO, '
      ':QTA_EVASA_CLIENTE, '
      
        '   :VAL_EVASO_CLIENTE, :QTA_EVASA_FORNITORE, :VAL_EVASO_FORNITOR' +
        'E, '
      ':QTA_GIACENZA_INIZIALE, '
      '   :COSTO_GIACENZA_INIZIALE, :VAL_GIACENZA_INIZIALE, '
      ':GIACENZA_ATTUALE, '
      
        '   :DISPONIBILITA, :COSTO_ULTIMO, :MED_PREZZO_VEND, :ULT_COSTO_A' +
        'CQ, '
      ':MEDIO_COSTO_ACQ, '
      
        '   :ULT_PREZZO_VEND, :DATA_ULTIMO_ACQUISTO, :DATA_ULTIMA_VENDITA' +
        ', '
      ':PRETAGLIO)')
    DeleteSQL.Strings = (
      'delete from TAB_CONTABILE_ARTICOLO'
      'where'
      '  CODICE_ARTICOLO = :OLD_CODICE_ARTICOLO and'
      '  DEPOSITO_ID = :OLD_DEPOSITO_ID')
    Left = 432
    Top = 328
  end
  object IBDocumenti2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT tab_det_doc.*,'
      'tab_documenti.causale_magazzino,tab_documenti.DATA_DOC,'
      
        'tab_documenti.TIPO_CLIFOR,tab_documenti.CODICE_BOLL,tab_document' +
        'i.CONTRO_DEPOSITO,tab_documenti.TIPO_DOC,tab_documenti.CONTRO_CA' +
        'US_MAG'
      
        'FROM tab_det_doc inner join tab_documenti on tab_det_doc.doc_id ' +
        '= tab_documenti.id_documento'
      
        'where (tab_documenti.CAUSALE_MAGAZZINO='#39'DDCF'#39' or tab_documenti.C' +
        'AUSALE_MAGAZZINO='#39'RCLI'#39' OR tab_documenti.CAUSALE_MAGAZZINO='#39'TRA2' +
        #39') and tab_det_doc.codice_articolo=:cdart'
      'order by tab_det_doc.codice_articolo descending'
      '')
    Left = 296
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cdart'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object FloatField1: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBStringField2: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBStringField3: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBStringField4: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBStringField5: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object FloatField2: TFloatField
      FieldName = 'COSTO'
    end
    object FloatField3: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object IBStringField6: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object FloatField4: TFloatField
      FieldName = 'FATTCONV'
    end
    object FloatField5: TFloatField
      FieldName = 'QTA_UM'
    end
    object FloatField6: TFloatField
      FieldName = 'SCONTO1'
    end
    object FloatField7: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField8: TFloatField
      FieldName = 'SCONTO3'
    end
    object FloatField9: TFloatField
      FieldName = 'SCONTO4'
    end
    object FloatField10: TFloatField
      FieldName = 'IMPORTO_SCONTO'
    end
    object FloatField11: TFloatField
      FieldName = 'IMPORTO'
    end
    object FloatField12: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object SmallintField1: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object FloatField13: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object FloatField14: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object FloatField15: TFloatField
      FieldName = 'IVATO'
    end
    object FloatField16: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
    end
    object IBStringField7: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object SmallintField2: TSmallintField
      FieldName = 'RIF_A'
    end
    object SmallintField3: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object SmallintField4: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object SmallintField5: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IntegerField4: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IntegerField5: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IntegerField6: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IntegerField7: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IntegerField8: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IntegerField10: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IntegerField11: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object FloatField17: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object FloatField18: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object FloatField19: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object FloatField20: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBStringField8: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object FloatField21: TFloatField
      FieldName = 'TOTSCAT'
    end
    object FloatField22: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object FloatField23: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBStringField9: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBStringField10: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object SmallintField6: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBStringField11: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBStringField12: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBStringField13: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBStringField14: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object IBStringField15: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IntegerField13: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object IBStringField16: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
  end
  object IBDocumenti3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT tab_det_doc.*,'
      'tab_documenti.causale_magazzino,tab_documenti.DATA_DOC,'
      
        'tab_documenti.TIPO_CLIFOR,tab_documenti.CODICE_BOLL,tab_document' +
        'i.CONTRO_DEPOSITO,tab_documenti.TIPO_DOC,tab_documenti.CONTRO_CA' +
        'US_MAG'
      
        'FROM tab_det_doc inner join tab_documenti on tab_det_doc.doc_id ' +
        '= tab_documenti.id_documento'
      
        'where (tab_documenti.CAUSALE_MAGAZZINO='#39'DDTC'#39' or tab_documenti.C' +
        'AUSALE_MAGAZZINO='#39'FTIV'#39') and tab_det_doc.codice_articolo=:cdart'
      'order by tab_det_doc.codice_articolo descending'
      '')
    Left = 296
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cdart'
        ParamType = ptUnknown
      end>
    object IBStringField17: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
    end
    object FloatField24: TFloatField
      FieldName = 'QUANTITA'
    end
    object IBStringField18: TIBStringField
      FieldName = 'CAUSALE_MAGAZZINO'
      Size = 4
    end
    object IBStringField19: TIBStringField
      FieldName = 'DEP'
      Size = 4
    end
    object IBStringField20: TIBStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 25
    end
    object IntegerField14: TIntegerField
      FieldName = 'ID_DOC_DET'
    end
    object IntegerField15: TIntegerField
      FieldName = 'NUM_RIGA_ID'
    end
    object IntegerField16: TIntegerField
      FieldName = 'TIPO_RIGA'
    end
    object IBStringField21: TIBStringField
      FieldName = 'DESCR'
      Size = 102
    end
    object FloatField25: TFloatField
      FieldName = 'COSTO'
    end
    object FloatField26: TFloatField
      FieldName = 'COSTOINVALUTA'
    end
    object IBStringField22: TIBStringField
      FieldName = 'UNITA_MISURA'
      Size = 3
    end
    object FloatField27: TFloatField
      FieldName = 'FATTCONV'
    end
    object FloatField28: TFloatField
      FieldName = 'QTA_UM'
    end
    object FloatField29: TFloatField
      FieldName = 'SCONTO1'
    end
    object FloatField30: TFloatField
      FieldName = 'SCONTO2'
    end
    object FloatField31: TFloatField
      FieldName = 'SCONTO3'
    end
    object FloatField32: TFloatField
      FieldName = 'SCONTO4'
    end
    object FloatField33: TFloatField
      FieldName = 'IMPORTO_SCONTO'
    end
    object FloatField34: TFloatField
      FieldName = 'IMPORTO'
    end
    object FloatField35: TFloatField
      FieldName = 'IMPORTOINVALUTA'
    end
    object SmallintField7: TSmallintField
      FieldName = 'OMAGGIO'
    end
    object FloatField36: TFloatField
      FieldName = 'SCONTO_EQ'
    end
    object FloatField37: TFloatField
      FieldName = 'PERC_PROVV'
    end
    object FloatField38: TFloatField
      FieldName = 'IVATO'
    end
    object FloatField39: TFloatField
      FieldName = 'IMPORTO_CON_IVA'
    end
    object IBStringField23: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Size = 4
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object SmallintField8: TSmallintField
      FieldName = 'RIF_A'
    end
    object SmallintField9: TSmallintField
      FieldName = 'RIF_A_PRE'
    end
    object SmallintField10: TSmallintField
      FieldName = 'RIF_A_ORD'
    end
    object SmallintField11: TSmallintField
      FieldName = 'RIF_A_DDT'
    end
    object IntegerField17: TIntegerField
      FieldName = 'RIF_ID_DOC_DET'
    end
    object IntegerField18: TIntegerField
      FieldName = 'RIF_DDT_ID_DOC'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'RIF_DDT_DATA_DOC'
    end
    object IntegerField19: TIntegerField
      FieldName = 'RIF_ORD_ID_DOC'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'RIF_ORD_DATA_DOC'
    end
    object IntegerField20: TIntegerField
      FieldName = 'RIF_PRE_ID_DOC'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'RIF_PRE_DATA_DOC'
    end
    object IntegerField21: TIntegerField
      FieldName = 'PIANOCONTO_ID'
    end
    object IntegerField22: TIntegerField
      FieldName = 'RIF_PRE_NUM_DOC'
    end
    object IntegerField23: TIntegerField
      FieldName = 'RIF_ORD_NUM_DOC'
    end
    object IntegerField24: TIntegerField
      FieldName = 'RIF_DDT_NUM_DOC'
    end
    object FloatField40: TFloatField
      FieldName = 'OP_QTA_DISPONIBILE'
    end
    object FloatField41: TFloatField
      FieldName = 'OP_VAL_DISPONIBILE'
    end
    object FloatField42: TFloatField
      FieldName = 'OP_QTA_GIACENZA'
    end
    object FloatField43: TFloatField
      FieldName = 'OP_VAL_GIACENZA'
    end
    object IntegerField25: TIntegerField
      FieldName = 'DOC_ID'
      Required = True
    end
    object IBStringField24: TIBStringField
      FieldName = 'TOTCOLLI'
      Size = 3
    end
    object FloatField44: TFloatField
      FieldName = 'TOTSCAT'
    end
    object FloatField45: TFloatField
      FieldName = 'PREZZOLIST'
    end
    object FloatField46: TFloatField
      FieldName = 'SCHEDA'
    end
    object IBStringField25: TIBStringField
      FieldName = 'PASSATA'
      Size = 1
    end
    object IBStringField26: TIBStringField
      FieldName = 'COL'
      Size = 50
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'DATA_DOC'
    end
    object SmallintField12: TSmallintField
      FieldName = 'TIPO_CLIFOR'
    end
    object IBStringField27: TIBStringField
      FieldName = 'A'
      Origin = '"TAB_DET_DOC"."A"'
      Size = 30
    end
    object IBStringField28: TIBStringField
      FieldName = 'B'
      Origin = '"TAB_DET_DOC"."B"'
      Size = 30
    end
    object IBStringField29: TIBStringField
      FieldName = 'C'
      Origin = '"TAB_DET_DOC"."C"'
      Size = 30
    end
    object IBStringField30: TIBStringField
      FieldName = 'CODICE_BOLL'
      Origin = '"TAB_DOCUMENTI"."CODICE_BOLL"'
      Size = 10
    end
    object IBStringField31: TIBStringField
      FieldName = 'CONTRO_DEPOSITO'
      Origin = '"TAB_DOCUMENTI"."CONTRO_DEPOSITO"'
      Size = 3
    end
    object IntegerField26: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"TAB_DOCUMENTI"."TIPO_DOC"'
    end
    object IBStringField32: TIBStringField
      FieldName = 'CONTRO_CAUS_MAG'
      Origin = '"TAB_DOCUMENTI"."CONTRO_CAUS_MAG"'
      Size = 4
    end
  end
  object IBQuery23: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a'
      'AND TIPO_ARTICOLO_ID=3')
    Left = 280
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField33: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField34: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField35: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBStringField36: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField37: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField38: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField39: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField47: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField48: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField49: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField50: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField51: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField52: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField53: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField54: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField55: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField27: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField28: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField29: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField40: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField56: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField57: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField13: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField58: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField59: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField30: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField31: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField32: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField41: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField14: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField15: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField16: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField17: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField42: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField43: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField44: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField45: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField33: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField46: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField18: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField47: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField48: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField49: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField34: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField19: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField20: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField21: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField22: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField35: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField50: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField51: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField23: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField24: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField36: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField60: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField61: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField37: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField62: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField38: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField25: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField39: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField40: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField41: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField42: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField43: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField44: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField45: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField52: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField46: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField53: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField63: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField64: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField65: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField66: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField67: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField68: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField69: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField70: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField71: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField72: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField73: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField74: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField75: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField76: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField77: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField78: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField79: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField80: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField81: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField82: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField83: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField84: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField85: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField86: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField87: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField88: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField89: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField90: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField91: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField92: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField93: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField94: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField95: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField96: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField97: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField98: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField99: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField100: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField101: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField102: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField103: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField104: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField105: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField106: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField107: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField108: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField109: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField110: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField47: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField111: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField112: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField113: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField114: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField115: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField116: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
  object IBQuery24: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_Articolo=:a'
      'AND TIPO_ARTICOLO_ID=2')
    Left = 312
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBStringField54: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_ARTICOLI"."CODICE_ARTICOLO"'
      Required = True
    end
    object IBStringField55: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBStringField56: TIBStringField
      DisplayWidth = 1000
      FieldName = 'DESCR2'
      Origin = '"TAB_ARTICOLI"."DESCR2"'
      Size = 1000
    end
    object IBStringField57: TIBStringField
      FieldName = 'CODICE_IVA_ID'
      Origin = '"TAB_ARTICOLI"."CODICE_IVA_ID"'
      Size = 4
    end
    object IBStringField58: TIBStringField
      FieldName = 'UNITA_DI_MISURA1_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA1_ID"'
      Size = 3
    end
    object IBStringField59: TIBStringField
      FieldName = 'UNITA_DI_MISURA2_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA2_ID"'
      Size = 3
    end
    object IBStringField60: TIBStringField
      FieldName = 'UNITA_DI_MISURA3_ID'
      Origin = '"TAB_ARTICOLI"."UNITA_DI_MISURA3_ID"'
      Size = 3
    end
    object FloatField117: TFloatField
      FieldName = 'SCONTO1'
      Origin = '"TAB_ARTICOLI"."SCONTO1"'
    end
    object FloatField118: TFloatField
      FieldName = 'SCONTO2'
      Origin = '"TAB_ARTICOLI"."SCONTO2"'
    end
    object FloatField119: TFloatField
      FieldName = 'SCONTO3'
      Origin = '"TAB_ARTICOLI"."SCONTO3"'
    end
    object FloatField120: TFloatField
      FieldName = 'PROVVIGIONE'
      Origin = '"TAB_ARTICOLI"."PROVVIGIONE"'
    end
    object FloatField121: TFloatField
      FieldName = 'PESO_NETTO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_NETTO_KG"'
    end
    object FloatField122: TFloatField
      FieldName = 'PESO_LORDO_KG'
      Origin = '"TAB_ARTICOLI"."PESO_LORDO_KG"'
    end
    object FloatField123: TFloatField
      FieldName = 'SCORTA_MIN'
      Origin = '"TAB_ARTICOLI"."SCORTA_MIN"'
    end
    object FloatField124: TFloatField
      FieldName = 'SCORTA_MAX'
      Origin = '"TAB_ARTICOLI"."SCORTA_MAX"'
    end
    object FloatField125: TFloatField
      FieldName = 'LOTTO_RIORDINO'
      Origin = '"TAB_ARTICOLI"."LOTTO_RIORDINO"'
    end
    object IntegerField48: TIntegerField
      FieldName = 'GG_APPROVVIGIONAMENTO'
      Origin = '"TAB_ARTICOLI"."GG_APPROVVIGIONAMENTO"'
    end
    object IntegerField49: TIntegerField
      FieldName = 'QTA_X_CONFEZIONE'
      Origin = '"TAB_ARTICOLI"."QTA_X_CONFEZIONE"'
    end
    object IntegerField50: TIntegerField
      FieldName = 'ANNO'
      Origin = '"TAB_ARTICOLI"."ANNO"'
    end
    object IBStringField61: TIBStringField
      FieldName = 'DESCR_AGGIUNTIVA_ID'
      Origin = '"TAB_ARTICOLI"."DESCR_AGGIUNTIVA_ID"'
      Size = 4
    end
    object FloatField126: TFloatField
      FieldName = 'PREZZO_BASE'
      Origin = '"TAB_ARTICOLI"."PREZZO_BASE"'
    end
    object FloatField127: TFloatField
      FieldName = 'COSTO_STANDART'
      Origin = '"TAB_ARTICOLI"."COSTO_STANDART"'
    end
    object SmallintField26: TSmallintField
      FieldName = 'TIPO_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_ARTICOLO_ID"'
    end
    object FloatField128: TFloatField
      FieldName = 'FATT_CONV1'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1"'
    end
    object FloatField129: TFloatField
      FieldName = 'FATT_CONV2'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2"'
    end
    object IntegerField51: TIntegerField
      FieldName = 'COSTO_ID'
      Origin = '"TAB_ARTICOLI"."COSTO_ID"'
    end
    object IntegerField52: TIntegerField
      FieldName = 'RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."RICAVO_ID"'
    end
    object IntegerField53: TIntegerField
      FieldName = 'GIORNI_MAX_INVENDUTO'
      Origin = '"TAB_ARTICOLI"."GIORNI_MAX_INVENDUTO"'
    end
    object IBStringField62: TIBStringField
      FieldName = 'ASPETTO_ID'
      Origin = '"TAB_ARTICOLI"."ASPETTO_ID"'
      Size = 4
    end
    object SmallintField27: TSmallintField
      FieldName = 'RIORDINO_MESE_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_DA"'
    end
    object SmallintField28: TSmallintField
      FieldName = 'RIORDINO_MESE_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_MESE_A"'
    end
    object SmallintField29: TSmallintField
      FieldName = 'RIORDINO_GIORNO_DA'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_DA"'
    end
    object SmallintField30: TSmallintField
      FieldName = 'RIORDINO_GIORNO_A'
      Origin = '"TAB_ARTICOLI"."RIORDINO_GIORNO_A"'
    end
    object IBStringField63: TIBStringField
      FieldName = 'STAGIONE_ID'
      Origin = '"TAB_ARTICOLI"."STAGIONE_ID"'
      Size = 4
    end
    object IBStringField64: TIBStringField
      FieldName = 'GRUPPO_ALTERNATIVO'
      Origin = '"TAB_ARTICOLI"."GRUPPO_ALTERNATIVO"'
      Size = 4
    end
    object IBStringField65: TIBStringField
      FieldName = 'PRODUTTORE_ID'
      Origin = '"TAB_ARTICOLI"."PRODUTTORE_ID"'
      Size = 10
    end
    object IBStringField66: TIBStringField
      FieldName = 'CATEGORIA_ARTICOLO_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_ARTICOLO_ID"'
      Size = 4
    end
    object IntegerField54: TIntegerField
      FieldName = 'CATEGORIA_MERCEOLOGICA_ID'
      Origin = '"TAB_ARTICOLI"."CATEGORIA_MERCEOLOGICA_ID"'
    end
    object IBStringField67: TIBStringField
      FieldName = 'CODICE_BASE'
      Origin = '"TAB_ARTICOLI"."CODICE_BASE"'
    end
    object SmallintField31: TSmallintField
      FieldName = 'DERIVATO'
      Origin = '"TAB_ARTICOLI"."DERIVATO"'
    end
    object IBStringField68: TIBStringField
      FieldName = 'VARIANTE1_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE1_ID"'
      Size = 3
    end
    object IBStringField69: TIBStringField
      FieldName = 'VARIANTE2_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE2_ID"'
      Size = 3
    end
    object IBStringField70: TIBStringField
      FieldName = 'VARIANTE3_ID'
      Origin = '"TAB_ARTICOLI"."VARIANTE3_ID"'
      Size = 3
    end
    object IntegerField55: TIntegerField
      FieldName = 'NUM_VARIANTI'
      Origin = '"TAB_ARTICOLI"."NUM_VARIANTI"'
    end
    object SmallintField32: TSmallintField
      FieldName = 'TIPO_COSTO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_COSTO_ID"'
    end
    object SmallintField33: TSmallintField
      FieldName = 'TIPO_RICAVO_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_RICAVO_ID"'
    end
    object SmallintField34: TSmallintField
      FieldName = 'OMAGGIO'
      Origin = '"TAB_ARTICOLI"."OMAGGIO"'
    end
    object SmallintField35: TSmallintField
      FieldName = 'TIPO_CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CLI_FOR_ID"'
    end
    object IntegerField56: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_ARTICOLI"."CLI_FOR_ID"'
    end
    object IBStringField71: TIBStringField
      FieldName = 'CODE_BAR'
      Origin = '"TAB_ARTICOLI"."CODE_BAR"'
      Size = 50
    end
    object IBStringField72: TIBStringField
      FieldName = 'DESCR_CODE_BAR'
      Origin = '"TAB_ARTICOLI"."DESCR_CODE_BAR"'
      Size = 50
    end
    object SmallintField36: TSmallintField
      FieldName = 'NON_STAMPA_INVENTARIO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_INVENTARIO"'
    end
    object SmallintField37: TSmallintField
      FieldName = 'NON_STAMPA_REGISTRO'
      Origin = '"TAB_ARTICOLI"."NON_STAMPA_REGISTRO"'
    end
    object IntegerField57: TIntegerField
      FieldName = 'NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."NOMENCLATURA"'
    end
    object FloatField130: TFloatField
      FieldName = 'FATT_CONV1_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV1_NOMENCLATURA"'
    end
    object FloatField131: TFloatField
      FieldName = 'FATT_CONV2_NOMENCLATURA'
      Origin = '"TAB_ARTICOLI"."FATT_CONV2_NOMENCLATURA"'
    end
    object IntegerField58: TIntegerField
      FieldName = 'PROV_ORDINE'
      Origin = '"TAB_ARTICOLI"."PROV_ORDINE"'
    end
    object FloatField132: TFloatField
      FieldName = 'COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."COSTO_ULTIMO"'
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'DATA_COSTO_ULTIMO'
      Origin = '"TAB_ARTICOLI"."DATA_COSTO_ULTIMO"'
    end
    object IntegerField59: TIntegerField
      FieldName = 'NUM_REPARTO'
      Origin = '"TAB_ARTICOLI"."NUM_REPARTO"'
    end
    object SmallintField38: TSmallintField
      FieldName = 'TIPO_CODE_BAR_ID'
      Origin = '"TAB_ARTICOLI"."TIPO_CODE_BAR_ID"'
    end
    object IntegerField60: TIntegerField
      FieldName = 'CONTO_ACQUISTO'
      Origin = '"TAB_ARTICOLI"."CONTO_ACQUISTO"'
    end
    object IntegerField61: TIntegerField
      FieldName = 'CONTO_VENDITA'
      Origin = '"TAB_ARTICOLI"."CONTO_VENDITA"'
    end
    object IntegerField62: TIntegerField
      FieldName = 'UN_MIS2_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS2_VAL"'
    end
    object IntegerField63: TIntegerField
      FieldName = 'UN_MIS3_VAL'
      Origin = '"TAB_ARTICOLI"."UN_MIS3_VAL"'
    end
    object IntegerField64: TIntegerField
      FieldName = 'CAT_ART_FAMIGLIA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_FAMIGLIA_ID"'
    end
    object IntegerField65: TIntegerField
      FieldName = 'CAT_ART_GRUPPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_GRUPPO_ID"'
    end
    object IntegerField66: TIntegerField
      FieldName = 'CAT_ART_MARCA_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_MARCA_ID"'
    end
    object IBStringField73: TIBStringField
      FieldName = 'FOTO_PERCORSO'
      Origin = '"TAB_ARTICOLI"."FOTO_PERCORSO"'
      Size = 255
    end
    object IntegerField67: TIntegerField
      FieldName = 'CAT_ART_TIPO_ID'
      Origin = '"TAB_ARTICOLI"."CAT_ART_TIPO_ID"'
    end
    object IBStringField74: TIBStringField
      FieldName = 'FLAG_ACCESSORIE'
      Origin = '"TAB_ARTICOLI"."FLAG_ACCESSORIE"'
      Size = 1
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'DATAMOD'
      Origin = '"TAB_ARTICOLI"."DATAMOD"'
    end
    object FloatField133: TFloatField
      FieldName = 'SCONTO4'
      Origin = '"TAB_ARTICOLI"."SCONTO4"'
    end
    object FloatField134: TFloatField
      FieldName = 'PREZZO_IVATO'
      Origin = '"TAB_ARTICOLI"."PREZZO_IVATO"'
    end
    object FloatField135: TFloatField
      FieldName = 'P2IVATO'
      Origin = '"TAB_ARTICOLI"."P2IVATO"'
    end
    object FloatField136: TFloatField
      FieldName = 'P3IVATO'
      Origin = '"TAB_ARTICOLI"."P3IVATO"'
    end
    object FloatField137: TFloatField
      FieldName = 'P4IVATO'
      Origin = '"TAB_ARTICOLI"."P4IVATO"'
    end
    object FloatField138: TFloatField
      FieldName = 'P5IVATO'
      Origin = '"TAB_ARTICOLI"."P5IVATO"'
    end
    object FloatField139: TFloatField
      FieldName = 'SC21'
      Origin = '"TAB_ARTICOLI"."SC21"'
    end
    object FloatField140: TFloatField
      FieldName = 'SC22'
      Origin = '"TAB_ARTICOLI"."SC22"'
    end
    object FloatField141: TFloatField
      FieldName = 'SC23'
      Origin = '"TAB_ARTICOLI"."SC23"'
    end
    object FloatField142: TFloatField
      FieldName = 'SC31'
      Origin = '"TAB_ARTICOLI"."SC31"'
    end
    object FloatField143: TFloatField
      FieldName = 'SC32'
      Origin = '"TAB_ARTICOLI"."SC32"'
    end
    object FloatField144: TFloatField
      FieldName = 'SC33'
      Origin = '"TAB_ARTICOLI"."SC33"'
    end
    object FloatField145: TFloatField
      FieldName = 'SC41'
      Origin = '"TAB_ARTICOLI"."SC41"'
    end
    object FloatField146: TFloatField
      FieldName = 'SC42'
      Origin = '"TAB_ARTICOLI"."SC42"'
    end
    object FloatField147: TFloatField
      FieldName = 'SC43'
      Origin = '"TAB_ARTICOLI"."SC43"'
    end
    object FloatField148: TFloatField
      FieldName = 'SC51'
      Origin = '"TAB_ARTICOLI"."SC51"'
    end
    object FloatField149: TFloatField
      FieldName = 'SC52'
      Origin = '"TAB_ARTICOLI"."SC52"'
    end
    object FloatField150: TFloatField
      FieldName = 'SC53'
      Origin = '"TAB_ARTICOLI"."SC53"'
    end
    object FloatField151: TFloatField
      FieldName = 'R2'
      Origin = '"TAB_ARTICOLI"."R2"'
    end
    object FloatField152: TFloatField
      FieldName = 'R3'
      Origin = '"TAB_ARTICOLI"."R3"'
    end
    object FloatField153: TFloatField
      FieldName = 'R4'
      Origin = '"TAB_ARTICOLI"."R4"'
    end
    object FloatField154: TFloatField
      FieldName = 'R5'
      Origin = '"TAB_ARTICOLI"."R5"'
    end
    object FloatField155: TFloatField
      FieldName = 'IMP2'
      Origin = '"TAB_ARTICOLI"."IMP2"'
    end
    object FloatField156: TFloatField
      FieldName = 'IMP3'
      Origin = '"TAB_ARTICOLI"."IMP3"'
    end
    object FloatField157: TFloatField
      FieldName = 'IMP4'
      Origin = '"TAB_ARTICOLI"."IMP4"'
    end
    object FloatField158: TFloatField
      FieldName = 'IMP5'
      Origin = '"TAB_ARTICOLI"."IMP5"'
    end
    object FloatField159: TFloatField
      FieldName = 'RICARPREC'
      Origin = '"TAB_ARTICOLI"."RICARPREC"'
    end
    object FloatField160: TFloatField
      FieldName = 'P6IVATO'
      Origin = '"TAB_ARTICOLI"."P6IVATO"'
    end
    object FloatField161: TFloatField
      FieldName = 'IMP6'
      Origin = '"TAB_ARTICOLI"."IMP6"'
    end
    object FloatField162: TFloatField
      FieldName = 'STRUTT'
      Origin = '"TAB_ARTICOLI"."STRUTT"'
    end
    object FloatField163: TFloatField
      FieldName = 'CA'
      Origin = '"TAB_ARTICOLI"."CA"'
    end
    object FloatField164: TFloatField
      FieldName = 'CG'
      Origin = '"TAB_ARTICOLI"."CG"'
    end
    object FloatField165: TFloatField
      FieldName = 'AG'
      Origin = '"TAB_ARTICOLI"."AG"'
    end
    object FloatField166: TFloatField
      FieldName = 'CA2'
      Origin = '"TAB_ARTICOLI"."CA2"'
    end
    object FloatField167: TFloatField
      FieldName = 'CG2'
      Origin = '"TAB_ARTICOLI"."CG2"'
    end
    object FloatField168: TFloatField
      FieldName = 'AG2'
      Origin = '"TAB_ARTICOLI"."AG2"'
    end
    object FloatField169: TFloatField
      FieldName = 'CA3'
      Origin = '"TAB_ARTICOLI"."CA3"'
    end
    object FloatField170: TFloatField
      FieldName = 'CG3'
      Origin = '"TAB_ARTICOLI"."CG3"'
    end
    object FloatField171: TFloatField
      FieldName = 'AG3'
      Origin = '"TAB_ARTICOLI"."AG3"'
    end
    object FloatField172: TFloatField
      FieldName = 'CA4'
      Origin = '"TAB_ARTICOLI"."CA4"'
    end
    object FloatField173: TFloatField
      FieldName = 'CG4'
      Origin = '"TAB_ARTICOLI"."CG4"'
    end
    object FloatField174: TFloatField
      FieldName = 'AG4'
      Origin = '"TAB_ARTICOLI"."AG4"'
    end
    object FloatField175: TFloatField
      FieldName = 'CA5'
      Origin = '"TAB_ARTICOLI"."CA5"'
    end
    object FloatField176: TFloatField
      FieldName = 'CG5'
      Origin = '"TAB_ARTICOLI"."CG5"'
    end
    object FloatField177: TFloatField
      FieldName = 'AG5'
      Origin = '"TAB_ARTICOLI"."AG5"'
    end
    object FloatField178: TFloatField
      FieldName = 'CA6'
      Origin = '"TAB_ARTICOLI"."CA6"'
    end
    object FloatField179: TFloatField
      FieldName = 'CG6'
      Origin = '"TAB_ARTICOLI"."CG6"'
    end
    object FloatField180: TFloatField
      FieldName = 'AG6'
      Origin = '"TAB_ARTICOLI"."AG6"'
    end
    object IntegerField68: TIntegerField
      FieldName = 'ID_OFFERTA'
      Origin = '"TAB_ARTICOLI"."ID_OFFERTA"'
    end
    object FloatField181: TFloatField
      FieldName = 'CR'
      Origin = '"TAB_ARTICOLI"."CR"'
    end
    object FloatField182: TFloatField
      FieldName = 'CR2'
      Origin = '"TAB_ARTICOLI"."CR2"'
    end
    object FloatField183: TFloatField
      FieldName = 'CR3'
      Origin = '"TAB_ARTICOLI"."CR3"'
    end
    object FloatField184: TFloatField
      FieldName = 'CR4'
      Origin = '"TAB_ARTICOLI"."CR4"'
    end
    object FloatField185: TFloatField
      FieldName = 'CR5'
      Origin = '"TAB_ARTICOLI"."CR5"'
    end
    object FloatField186: TFloatField
      FieldName = 'CR6'
      Origin = '"TAB_ARTICOLI"."CR6"'
    end
  end
end
