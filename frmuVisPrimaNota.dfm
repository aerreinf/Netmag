object frmVisPrimaNota: TfrmVisPrimaNota
  Left = 190
  Top = 129
  Width = 768
  Height = 577
  Anchors = [akLeft, akTop, akBottom]
  Caption = 'Visualizzazione Prima Nota'
  Color = clBtnFace
  Constraints.MaxWidth = 768
  Constraints.MinHeight = 400
  Constraints.MinWidth = 768
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlCtrl: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 155
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    Color = 15653740
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 60
      Width = 42
      Height = 14
      Caption = 'Da Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 80
      Width = 40
      Height = 14
      Caption = ' A Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 121
      Top = 60
      Width = 42
      Height = 14
      Caption = 'Da Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 123
      Top = 80
      Width = 40
      Height = 14
      Caption = ' A Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 706
      Top = 101
      Width = 47
      Height = 20
      Cursor = crHandPoint
      Caption = 'Filtra'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 706
      Top = 125
      Width = 47
      Height = 20
      Cursor = crHandPoint
      Caption = 'Tutto'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 569
      Top = 101
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Caption = 'Stampa 1'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 569
      Top = 125
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Caption = 'Stampa 2'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 636
      Top = 101
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Mastrino'
      Caption = 'Mastrino'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 636
      Top = 125
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Caption = 'Elimina'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 77
      Top = 108
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Caption = 'Riep.Dep.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 143
      Top = 108
      Width = 82
      Height = 20
      Cursor = crHandPoint
      Hint = 'Bilancio di Verifica'
      Caption = 'Riep.Conti'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 225
      Top = 108
      Width = 44
      Height = 20
      Cursor = crHandPoint
      Caption = 'Riep.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton11: TSpeedButton
      Left = 439
      Top = 101
      Width = 62
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Estratto Conto Clienti'
      Caption = 'E/C Cli.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton11Click
    end
    object SpeedButton12: TSpeedButton
      Left = 439
      Top = 125
      Width = 62
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Estratto Conto Fornitori'
      Caption = 'E/C For.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object SpeedButton13: TSpeedButton
      Left = 503
      Top = 101
      Width = 62
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Estratto Conto Clienti'
      Caption = 'Tot.Cli.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton13Click
    end
    object SpeedButton14: TSpeedButton
      Left = 503
      Top = 125
      Width = 62
      Height = 20
      Cursor = crHandPoint
      Hint = 'Stampa Estratto Conto Fornitori'
      Caption = 'Tot.For.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton14Click
    end
    object SpeedButton15: TSpeedButton
      Left = 273
      Top = 108
      Width = 65
      Height = 20
      Cursor = crHandPoint
      Caption = 'Reg.IVA'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object meDataDa: TMaskEdit
      Left = 52
      Top = 58
      Width = 63
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = meDataDaExit
    end
    object meDataA: TMaskEdit
      Left = 52
      Top = 78
      Width = 63
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = meDataAExit
    end
    object rxdblcPianoConto: TRxDBLookupCombo
      Left = 489
      Top = 78
      Width = 265
      Height = 19
      DropDownCount = 8
      Color = 15794126
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NOME_CONTO'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = rxdblcPianoContoChange
    end
    object Button2: TButton
      Left = 601
      Top = 56
      Width = 17
      Height = 21
      Cursor = crHandPoint
      Hint = 'Scegli il Conto'
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button2Click
    end
    object RadioGroup2: TRadioGroup
      Left = 8
      Top = 5
      Width = 108
      Height = 49
      Caption = 'Data Registrazione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutte'
        'Scegli')
      ParentFont = False
      TabOrder = 4
    end
    object RadioGroup3: TRadioGroup
      Left = 119
      Top = 5
      Width = 107
      Height = 49
      Caption = 'Data Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutte'
        'Scegli')
      ParentFont = False
      TabOrder = 5
    end
    object DD1: TMaskEdit
      Left = 163
      Top = 58
      Width = 63
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '  /  /    '
      OnExit = meDataDaExit
    end
    object DD2: TMaskEdit
      Left = 163
      Top = 78
      Width = 63
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '!90/90/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = '  /  /    '
      OnExit = meDataAExit
    end
    object RadioGroup4: TRadioGroup
      Left = 229
      Top = 5
      Width = 78
      Height = 49
      Caption = 'Num.Prot.Int.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Scegli')
      ParentFont = False
      TabOrder = 8
    end
    object NumProt: TEdit
      Left = 229
      Top = 58
      Width = 78
      Height = 18
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object RadioGroup5: TRadioGroup
      Left = 309
      Top = 5
      Width = 79
      Height = 49
      Caption = 'Numero Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Scegli')
      ParentFont = False
      TabOrder = 10
    end
    object edNumDoc: TEdit
      Left = 309
      Top = 58
      Width = 78
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnChange = edNumDocChange
    end
    object RadioGroup6: TRadioGroup
      Left = 488
      Top = 5
      Width = 79
      Height = 49
      Caption = 'Conto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Scegli')
      ParentFont = False
      TabOrder = 12
      OnClick = RadioGroup6Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 489
      Top = 58
      Width = 110
      Height = 19
      DropDownCount = 8
      Color = 15794126
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NOME_CONTO'
      LookupDisplay = 'NOME_CONTO'
      LookupSource = dsPianoConto
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnChange = RxDBLookupCombo2Change
    end
    object RadioGroup7: TRadioGroup
      Left = 390
      Top = 5
      Width = 79
      Height = 49
      Caption = 'Numero Ass.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Scegli')
      ParentFont = False
      TabOrder = 14
    end
    object Edit1: TEdit
      Left = 390
      Top = 58
      Width = 78
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnChange = edNumDocChange
    end
    object RadioGroup8: TRadioGroup
      Left = 8
      Top = 101
      Width = 65
      Height = 49
      Caption = 'Deposito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutte'
        'Scegli')
      ParentFont = False
      TabOrder = 16
    end
    object RadioGroup1: TRadioGroup
      Left = 344
      Top = 104
      Width = 89
      Height = 46
      Caption = 'Ordine'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Descr.'
        'Nome Conto')
      ParentFont = False
      TabOrder = 17
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 75
      Top = 131
      Width = 265
      Height = 19
      DropDownCount = 8
      Color = 15794126
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = dsDepositi
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 622
      Top = 48
      Width = 121
      Height = 29
      Caption = 'Tipo Conto'
      Columns = 3
      DataField = 'CAPO_CONTO_CLI_FOR'
      DataSource = dsPianoConto
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
      TabOrder = 19
      Values.Strings = (
        '1'
        '2'
        '4')
    end
    object RadioGroup9: TRadioGroup
      Left = 595
      Top = 1
      Width = 79
      Height = 45
      Caption = 'Numero Reg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Tutti'
        'Scegli')
      ParentFont = False
      TabOrder = 20
    end
    object Edit2: TEdit
      Left = 676
      Top = 28
      Width = 78
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object RadioGroup10: TRadioGroup
      Left = 232
      Top = 75
      Width = 209
      Height = 31
      Caption = 'Ordine'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Data Reg.'
        'Data Doc.'
        'Prot.Int')
      ParentFont = False
      TabOrder = 22
    end
  end
  object dbgContab: TDBGrid
    Left = 0
    Top = 155
    Width = 760
    Height = 334
    Hint = 'Doppio Click per modificare una registrazione contabile'
    Align = alClient
    Color = 15794160
    DataSource = dsVisContab
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu2
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgContabDblClick
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'NUM_PROT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Prot.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -9
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MOV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Reg.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Color = 10930928
        Expanded = False
        FieldName = 'NUM_REG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N.Reg.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Doc.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
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
        Title.Caption = 'N'#176' doc.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 10930928
        Expanded = False
        FieldName = 'NUM_DOC_LETT'
        Title.Caption = 'Lett.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR_MOV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descr. Mov.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Conto'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOTTOCONTO_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Sottoconto'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DARE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Dare'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVERE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Avere'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITO_DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPONIBILE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = clBlue
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
        FieldName = 'SBILANCIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Prot.Int.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 10930928
        Expanded = False
        FieldName = 'NUM_PROT2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N.Prot.A.'
        Title.Color = clBlue
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_ESENZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR_ESENZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REG_IVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MESE_COMP'
        Visible = True
      end>
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 489
    Width = 760
    Height = 54
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 1
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    object Label3: TLabel
      Left = 209
      Top = 4
      Width = 65
      Height = 14
      Caption = 'Totale Dare:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 337
      Top = 4
      Width = 73
      Height = 14
      Caption = 'Totale Avere:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 465
      Top = 4
      Width = 33
      Height = 14
      Caption = 'Saldo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton10: TSpeedButton
      Left = 706
      Top = 17
      Width = 47
      Height = 20
      Cursor = crHandPoint
      Caption = '&Esci'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object dbnContab: TDBNavigator
      Left = 5
      Top = 18
      Width = 82
      Height = 20
      Cursor = crHandPoint
      DataSource = dsVisContab
      VisibleButtons = [nbFirst, nbLast]
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'Primo record'
        'Ultimo record')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object stTot_Dare: TRxCalcEdit
      Left = 209
      Top = 18
      Width = 121
      Height = 20
      AutoSize = False
      DisplayFormat = '#,##.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object stTot_Avere: TRxCalcEdit
      Left = 337
      Top = 18
      Width = 121
      Height = 20
      AutoSize = False
      DisplayFormat = '#,##.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object stSaldo: TRxCalcEdit
      Left = 465
      Top = 18
      Width = 121
      Height = 20
      AutoSize = False
      DisplayFormat = '#,##.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DateEdit1: TDateEdit
      Left = 96
      Top = 16
      Width = 57
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
      Visible = False
    end
  end
  object dsVisContab: TDataSource
    DataSet = dmodAz.ibqryContab2
    Left = 668
    Top = 340
  end
  object dsPianoConto: TDataSource
    DataSet = dmodAz.ibTab_Piano_Conti
    Left = 206
    Top = 276
  end
  object dsDepositi: TDataSource
    DataSet = dmodAz.IBQDepositi
    Left = 344
    Top = 424
  end
  object ibqRiepilogo: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select distinct sottoconto_descr,nome_conto,SUM(dare) as totdare' +
        ',SUM(AVERE) as totavere'
      'from contabilita'
      'group by sottoconto_descr,nome_conto'
      'order by nome_conto')
    Left = 128
    Top = 408
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 288
    object Stampa1: TMenuItem
      Caption = 'Stampa'
      OnClick = Stampa1Click
    end
    object StMastrino1: TMenuItem
      Caption = 'St.Mastrino'
      OnClick = StMastrino1Click
    end
    object StBilancio1: TMenuItem
      Caption = 'St.Bilancio'
      OnClick = StBilancio1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 576
    Top = 288
    object MenuItem1: TMenuItem
      Caption = 'Cambia Conto'
      OnClick = MenuItem1Click
    end
  end
  object ibECC: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'Select * From CONTABILITA'
      'left join tab_piano_conti'
      'on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto'
      
        'WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_c' +
        'li_for=1)')
    Left = 40
    Top = 200
    object ibECCPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTABILITA"."PK_CODICE"'
      Required = True
    end
    object ibECCNUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
      Origin = '"CONTABILITA"."NUM_PROT"'
    end
    object ibECCDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CONTABILITA"."DATA_MOV"'
    end
    object ibECCDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"CONTABILITA"."DATA_DOC"'
    end
    object ibECCNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"CONTABILITA"."NUM_DOC"'
    end
    object ibECCDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"CONTABILITA"."DOC_ID"'
    end
    object ibECCDESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"CONTABILITA"."DESCR_MOV"'
      Size = 100
    end
    object ibECCSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Origin = '"CONTABILITA"."SOTTOCONTO_DESCR"'
      Size = 100
    end
    object ibECCDARE: TFloatField
      FieldName = 'DARE'
      Origin = '"CONTABILITA"."DARE"'
    end
    object ibECCAVERE: TFloatField
      FieldName = 'AVERE'
      Origin = '"CONTABILITA"."AVERE"'
    end
    object ibECCCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTABILITA"."CLIFOR_ID"'
    end
    object ibECCTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"CONTABILITA"."TIPO_CLIFOR"'
    end
    object ibECCBANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
      Origin = '"CONTABILITA"."BANCA_ID"'
    end
    object ibECCBANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Origin = '"CONTABILITA"."BANCA_DESCR"'
      Size = 100
    end
    object ibECCNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"CONTABILITA"."NOTE"'
      Size = 255
    end
    object ibECCDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"CONTABILITA"."DATA_SCADENZA"'
    end
    object ibECCTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      Origin = '"CONTABILITA"."TOTALE_PAGATO"'
    end
    object ibECCSBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
      Origin = '"CONTABILITA"."SBILANCIO"'
    end
    object ibECCPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"CONTABILITA"."PIANOCONTO_ID"'
    end
    object ibECCNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Origin = '"CONTABILITA"."NOME_CONTO"'
      Size = 12
    end
    object ibECCCON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Origin = '"CONTABILITA"."CON_DETT"'
      Required = True
    end
    object ibECCNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
      Origin = '"CONTABILITA"."NUM_FATTURA"'
    end
    object ibECCDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
      Origin = '"CONTABILITA"."DATA_FATTURA"'
    end
    object ibECCIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"CONTABILITA"."IMPORTO"'
    end
    object ibECCABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITA"."ABBUONO"'
    end
    object ibECCTIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Origin = '"CONTABILITA"."TIPO_MOV"'
    end
    object ibECCIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      Origin = '"CONTABILITA"."IMPONIBILE"'
    end
    object ibECCIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = '"CONTABILITA"."IMPOSTA"'
    end
    object ibECCIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
      Origin = '"CONTABILITA"."IVA_PERC"'
    end
    object ibECCFK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
      Origin = '"CONTABILITA"."FK_SCADENZA"'
    end
    object ibECCASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
      Origin = '"CONTABILITA"."ASS_DATA_SCAD"'
    end
    object ibECCDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"CONTABILITA"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibECCDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"CONTABILITA"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibECCNUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 50
    end
    object ibECCID_PIANO_CONTO: TIntegerField
      FieldName = 'ID_PIANO_CONTO'
      Origin = '"TAB_PIANO_CONTI"."ID_PIANO_CONTO"'
    end
    object ibECCGRUPPO: TIBStringField
      FieldName = 'GRUPPO'
      Origin = '"TAB_PIANO_CONTI"."GRUPPO"'
      Size = 2
    end
    object ibECCCONTO: TIBStringField
      FieldName = 'CONTO'
      Origin = '"TAB_PIANO_CONTI"."CONTO"'
      Size = 3
    end
    object ibECCSOTTOCONTO: TIBStringField
      FieldName = 'SOTTOCONTO'
      Origin = '"TAB_PIANO_CONTI"."SOTTOCONTO"'
      Size = 5
    end
    object ibECCNOME_CONTO1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CONTO1'
      Origin = '"TAB_PIANO_CONTI"."NOME_CONTO"'
      ReadOnly = True
      Size = 12
    end
    object ibECCTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"TAB_PIANO_CONTI"."TIPO"'
    end
    object ibECCDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_PIANO_CONTI"."DESCR"'
      Size = 50
    end
    object ibECCNATURA: TSmallintField
      FieldName = 'NATURA'
      Origin = '"TAB_PIANO_CONTI"."NATURA"'
    end
    object ibECCLIVELLO: TSmallintField
      FieldName = 'LIVELLO'
      Origin = '"TAB_PIANO_CONTI"."LIVELLO"'
    end
    object ibECCRIVENDITA: TSmallintField
      FieldName = 'RIVENDITA'
      Origin = '"TAB_PIANO_CONTI"."RIVENDITA"'
    end
    object ibECCSTRUMENTALE: TSmallintField
      FieldName = 'STRUMENTALE'
      Origin = '"TAB_PIANO_CONTI"."STRUMENTALE"'
    end
    object ibECCINDEDUCIBILE: TFloatField
      FieldName = 'INDEDUCIBILE'
      Origin = '"TAB_PIANO_CONTI"."INDEDUCIBILE"'
    end
    object ibECCSTAMPA_IN_BILANCIO: TSmallintField
      FieldName = 'STAMPA_IN_BILANCIO'
      Origin = '"TAB_PIANO_CONTI"."STAMPA_IN_BILANCIO"'
    end
    object ibECCVARIAZIONE_FISCALE: TSmallintField
      FieldName = 'VARIAZIONE_FISCALE'
      Origin = '"TAB_PIANO_CONTI"."VARIAZIONE_FISCALE"'
    end
    object ibECCDICH_REDDITI_ID: TIBStringField
      FieldName = 'DICH_REDDITI_ID'
      Origin = '"TAB_PIANO_CONTI"."DICH_REDDITI_ID"'
      Size = 4
    end
    object ibECCRAGGRUPPAMENTO_ID: TIBStringField
      FieldName = 'RAGGRUPPAMENTO_ID'
      Origin = '"TAB_PIANO_CONTI"."RAGGRUPPAMENTO_ID"'
      Size = 4
    end
    object ibECCCONTO_PERSONALIZZATO_ID: TIntegerField
      FieldName = 'CONTO_PERSONALIZZATO_ID'
      Origin = '"TAB_PIANO_CONTI"."CONTO_PERSONALIZZATO_ID"'
    end
    object ibECCCAPO_CONTO_CLI_FOR: TSmallintField
      FieldName = 'CAPO_CONTO_CLI_FOR'
      Origin = '"TAB_PIANO_CONTI"."CAPO_CONTO_CLI_FOR"'
    end
    object ibECCSPECIALE: TIntegerField
      FieldName = 'SPECIALE'
      Origin = '"TAB_PIANO_CONTI"."SPECIALE"'
    end
    object ibECCNUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object ibECCNUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object ibECCNUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object ibECCFAX: TStringField
      FieldKind = fkLookup
      FieldName = 'FAX'
      LookupDataSet = dmodAz.ibqTab_Cli
      LookupKeyFields = 'ID_CLI_FOR'
      LookupResultField = 'FAX'
      KeyFields = 'CLIFOR_ID'
      Lookup = True
    end
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'Select sum(dare) as totdare,sum(avere) as totavere From CONTABIL' +
        'ITA'
      'left join tab_piano_conti'
      'on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto'
      
        'WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_c' +
        'li_for=1)')
    Left = 88
    Top = 200
  end
  object ibtotCli: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'Select nome_conto,sottoconto_descr,PIANOCONTO_ID, sum(dare) as t' +
        'otdare, sum(avere) as totavere From CONTABILITA'
      'left join tab_piano_conti'
      'on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto'
      
        'WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_c' +
        'li_for=1)'
      'group by nome_conto,sottoconto_descr,PIANOCONTO_ID'
      'Order By sottoconto_descr')
    Left = 416
    Top = 208
    object ibtotCliNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Size = 12
    end
    object ibtotCliSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Size = 100
    end
    object ibtotCliTOTDARE: TFloatField
      FieldName = 'TOTDARE'
      currency = True
    end
    object ibtotCliTOTAVERE: TFloatField
      FieldName = 'TOTAVERE'
      currency = True
    end
    object ibtotCliPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      ProviderFlags = []
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 688
    Top = 256
  end
  object ibContrAnal: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from contabilita'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into contabilita'
      
        '  (ABBUONO, ASS_DATA_SCAD, AVERE, BANCA_DESCR, BANCA_ID, CLIFOR_' +
        'ID, COD_ESENZ, '
      
        '   CON_DETT, DARE, DATA_DOC, DATA_FATTURA, DATA_MOV, DATA_SCADEN' +
        'ZA, DEPOSITO_CODICE, '
      
        '   DEPOSITO_DESCR, DESCR_ESENZ, DESCR_MOV, DOC_ID, FK_SCADENZA, ' +
        'IMPONIBILE, '
      
        '   IMPORTO, IMPOSTA, IVA_PERC, MESE_COMP, NOME_CONTO, NOTE, NUM_' +
        'ASS, NUM_DOC, '
      
        '   NUM_DOC_LETT, NUM_FATTURA, NUM_PROT, NUM_PROT2, NUM_REG, PAGA' +
        'MENTO_ID, '
      
        '   PIANOCONTO_ID, PK_CODICE, REG_IVA, SBILANCIO, SOTTOCONTO_DESC' +
        'R, TIPO_CLIFOR, '
      '   TIPO_MOV, TOTALE_PAGATO)'
      'values'
      
        '  (:ABBUONO, :ASS_DATA_SCAD, :AVERE, :BANCA_DESCR, :BANCA_ID, :C' +
        'LIFOR_ID, '
      
        '   :COD_ESENZ, :CON_DETT, :DARE, :DATA_DOC, :DATA_FATTURA, :DATA' +
        '_MOV, :DATA_SCADENZA, '
      
        '   :DEPOSITO_CODICE, :DEPOSITO_DESCR, :DESCR_ESENZ, :DESCR_MOV, ' +
        ':DOC_ID, '
      
        '   :FK_SCADENZA, :IMPONIBILE, :IMPORTO, :IMPOSTA, :IVA_PERC, :ME' +
        'SE_COMP, '
      
        '   :NOME_CONTO, :NOTE, :NUM_ASS, :NUM_DOC, :NUM_DOC_LETT, :NUM_F' +
        'ATTURA, '
      
        '   :NUM_PROT, :NUM_PROT2, :NUM_REG, :PAGAMENTO_ID, :PIANOCONTO_I' +
        'D, :PK_CODICE, '
      
        '   :REG_IVA, :SBILANCIO, :SOTTOCONTO_DESCR, :TIPO_CLIFOR, :TIPO_' +
        'MOV, :TOTALE_PAGATO)')
    RefreshSQL.Strings = (
      'Select *'
      'from contabilita '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from contabilita'
      
        'where num_prot in (select num_prot from contabilita where pianoc' +
        'onto_id=:pc)')
    ModifySQL.Strings = (
      'update contabilita'
      'set'
      '  ABBUONO = :ABBUONO,'
      '  ASS_DATA_SCAD = :ASS_DATA_SCAD,'
      '  AVERE = :AVERE,'
      '  BANCA_DESCR = :BANCA_DESCR,'
      '  BANCA_ID = :BANCA_ID,'
      '  CLIFOR_ID = :CLIFOR_ID,'
      '  COD_ESENZ = :COD_ESENZ,'
      '  CON_DETT = :CON_DETT,'
      '  DARE = :DARE,'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_FATTURA = :DATA_FATTURA,'
      '  DATA_MOV = :DATA_MOV,'
      '  DATA_SCADENZA = :DATA_SCADENZA,'
      '  DEPOSITO_CODICE = :DEPOSITO_CODICE,'
      '  DEPOSITO_DESCR = :DEPOSITO_DESCR,'
      '  DESCR_ESENZ = :DESCR_ESENZ,'
      '  DESCR_MOV = :DESCR_MOV,'
      '  DOC_ID = :DOC_ID,'
      '  FK_SCADENZA = :FK_SCADENZA,'
      '  IMPONIBILE = :IMPONIBILE,'
      '  IMPORTO = :IMPORTO,'
      '  IMPOSTA = :IMPOSTA,'
      '  IVA_PERC = :IVA_PERC,'
      '  MESE_COMP = :MESE_COMP,'
      '  NOME_CONTO = :NOME_CONTO,'
      '  NOTE = :NOTE,'
      '  NUM_ASS = :NUM_ASS,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_DOC_LETT = :NUM_DOC_LETT,'
      '  NUM_FATTURA = :NUM_FATTURA,'
      '  NUM_PROT = :NUM_PROT,'
      '  NUM_PROT2 = :NUM_PROT2,'
      '  NUM_REG = :NUM_REG,'
      '  PAGAMENTO_ID = :PAGAMENTO_ID,'
      '  PIANOCONTO_ID = :PIANOCONTO_ID,'
      '  PK_CODICE = :PK_CODICE,'
      '  REG_IVA = :REG_IVA,'
      '  SBILANCIO = :SBILANCIO,'
      '  SOTTOCONTO_DESCR = :SOTTOCONTO_DESCR,'
      '  TIPO_CLIFOR = :TIPO_CLIFOR,'
      '  TIPO_MOV = :TIPO_MOV,'
      '  TOTALE_PAGATO = :TOTALE_PAGATO'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    Left = 584
    Top = 176
    object ibContrAnalPK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CONTABILITA"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibContrAnalNUM_PROT: TIntegerField
      FieldName = 'NUM_PROT'
      Origin = '"CONTABILITA"."NUM_PROT"'
    end
    object ibContrAnalDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CONTABILITA"."DATA_MOV"'
    end
    object ibContrAnalDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"CONTABILITA"."DATA_DOC"'
    end
    object ibContrAnalNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = '"CONTABILITA"."NUM_DOC"'
    end
    object ibContrAnalDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"CONTABILITA"."DOC_ID"'
    end
    object ibContrAnalDESCR_MOV: TIBStringField
      FieldName = 'DESCR_MOV'
      Origin = '"CONTABILITA"."DESCR_MOV"'
      Size = 100
    end
    object ibContrAnalSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      Origin = '"CONTABILITA"."SOTTOCONTO_DESCR"'
      Size = 100
    end
    object ibContrAnalDARE: TFloatField
      FieldName = 'DARE'
      Origin = '"CONTABILITA"."DARE"'
      currency = True
    end
    object ibContrAnalAVERE: TFloatField
      FieldName = 'AVERE'
      Origin = '"CONTABILITA"."AVERE"'
      currency = True
    end
    object ibContrAnalCLIFOR_ID: TIntegerField
      FieldName = 'CLIFOR_ID'
      Origin = '"CONTABILITA"."CLIFOR_ID"'
    end
    object ibContrAnalTIPO_CLIFOR: TSmallintField
      FieldName = 'TIPO_CLIFOR'
      Origin = '"CONTABILITA"."TIPO_CLIFOR"'
    end
    object ibContrAnalBANCA_ID: TIntegerField
      FieldName = 'BANCA_ID'
      Origin = '"CONTABILITA"."BANCA_ID"'
    end
    object ibContrAnalBANCA_DESCR: TIBStringField
      FieldName = 'BANCA_DESCR'
      Origin = '"CONTABILITA"."BANCA_DESCR"'
      Size = 100
    end
    object ibContrAnalNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"CONTABILITA"."NOTE"'
      Size = 255
    end
    object ibContrAnalDATA_SCADENZA: TDateField
      FieldName = 'DATA_SCADENZA'
      Origin = '"CONTABILITA"."DATA_SCADENZA"'
    end
    object ibContrAnalTOTALE_PAGATO: TFloatField
      FieldName = 'TOTALE_PAGATO'
      Origin = '"CONTABILITA"."TOTALE_PAGATO"'
    end
    object ibContrAnalSBILANCIO: TFloatField
      FieldName = 'SBILANCIO'
      Origin = '"CONTABILITA"."SBILANCIO"'
    end
    object ibContrAnalPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      Origin = '"CONTABILITA"."PIANOCONTO_ID"'
    end
    object ibContrAnalNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      Origin = '"CONTABILITA"."NOME_CONTO"'
      Size = 12
    end
    object ibContrAnalCON_DETT: TSmallintField
      FieldName = 'CON_DETT'
      Origin = '"CONTABILITA"."CON_DETT"'
      Required = True
    end
    object ibContrAnalNUM_FATTURA: TIntegerField
      FieldName = 'NUM_FATTURA'
      Origin = '"CONTABILITA"."NUM_FATTURA"'
    end
    object ibContrAnalDATA_FATTURA: TDateField
      FieldName = 'DATA_FATTURA'
      Origin = '"CONTABILITA"."DATA_FATTURA"'
    end
    object ibContrAnalIMPORTO: TFloatField
      FieldName = 'IMPORTO'
      Origin = '"CONTABILITA"."IMPORTO"'
    end
    object ibContrAnalABBUONO: TFloatField
      FieldName = 'ABBUONO'
      Origin = '"CONTABILITA"."ABBUONO"'
    end
    object ibContrAnalTIPO_MOV: TSmallintField
      FieldName = 'TIPO_MOV'
      Origin = '"CONTABILITA"."TIPO_MOV"'
    end
    object ibContrAnalIMPONIBILE: TFloatField
      FieldName = 'IMPONIBILE'
      Origin = '"CONTABILITA"."IMPONIBILE"'
    end
    object ibContrAnalIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = '"CONTABILITA"."IMPOSTA"'
    end
    object ibContrAnalIVA_PERC: TFloatField
      FieldName = 'IVA_PERC'
      Origin = '"CONTABILITA"."IVA_PERC"'
    end
    object ibContrAnalFK_SCADENZA: TIntegerField
      FieldName = 'FK_SCADENZA'
      Origin = '"CONTABILITA"."FK_SCADENZA"'
    end
    object ibContrAnalASS_DATA_SCAD: TDateField
      FieldName = 'ASS_DATA_SCAD'
      Origin = '"CONTABILITA"."ASS_DATA_SCAD"'
    end
    object ibContrAnalDEPOSITO_CODICE: TIBStringField
      FieldName = 'DEPOSITO_CODICE'
      Origin = '"CONTABILITA"."DEPOSITO_CODICE"'
      Size = 3
    end
    object ibContrAnalDEPOSITO_DESCR: TIBStringField
      FieldName = 'DEPOSITO_DESCR'
      Origin = '"CONTABILITA"."DEPOSITO_DESCR"'
      Size = 50
    end
    object ibContrAnalNUM_ASS: TIBStringField
      FieldName = 'NUM_ASS'
      Origin = '"CONTABILITA"."NUM_ASS"'
      Size = 50
    end
    object ibContrAnalNUM_PROT2: TIntegerField
      FieldName = 'NUM_PROT2'
      Origin = '"CONTABILITA"."NUM_PROT2"'
    end
    object ibContrAnalNUM_REG: TIntegerField
      FieldName = 'NUM_REG'
      Origin = '"CONTABILITA"."NUM_REG"'
    end
    object ibContrAnalNUM_DOC_LETT: TIBStringField
      FieldName = 'NUM_DOC_LETT'
      Origin = '"CONTABILITA"."NUM_DOC_LETT"'
      Size = 4
    end
    object ibContrAnalPAGAMENTO_ID: TIBStringField
      FieldName = 'PAGAMENTO_ID'
      Origin = '"CONTABILITA"."PAGAMENTO_ID"'
      Size = 4
    end
    object ibContrAnalCOD_ESENZ: TIntegerField
      FieldName = 'COD_ESENZ'
      Origin = '"CONTABILITA"."COD_ESENZ"'
    end
    object ibContrAnalDESCR_ESENZ: TIBStringField
      FieldName = 'DESCR_ESENZ'
      Origin = '"CONTABILITA"."DESCR_ESENZ"'
      Size = 250
    end
    object ibContrAnalREG_IVA: TIntegerField
      FieldName = 'REG_IVA'
      Origin = '"CONTABILITA"."REG_IVA"'
    end
    object ibContrAnalMESE_COMP: TIBStringField
      FieldName = 'MESE_COMP'
      Origin = '"CONTABILITA"."MESE_COMP"'
      Size = 2
    end
  end
  object ibContrSint: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SelectSQL.Strings = (
      
        'select distinct pianoconto_id,sottoconto_descr,nome_conto,sum(da' +
        're) as TOTDARE,sum(avere) as TOTAVERE from contabilita'
      
        'where num_prot in (select num_prot from contabilita where pianoc' +
        'onto_id=:pc)'
      'group by pianoconto_id,sottoconto_descr,nome_conto'
      'order by sottoconto_descr')
    Left = 656
    Top = 176
    object ibContrSintPIANOCONTO_ID: TIntegerField
      FieldName = 'PIANOCONTO_ID'
      ProviderFlags = []
    end
    object ibContrSintSOTTOCONTO_DESCR: TIBStringField
      FieldName = 'SOTTOCONTO_DESCR'
      ProviderFlags = []
      Size = 100
    end
    object ibContrSintNOME_CONTO: TIBStringField
      FieldName = 'NOME_CONTO'
      ProviderFlags = []
      Size = 12
    end
    object ibContrSintTOTDARE: TFloatField
      FieldName = 'TOTDARE'
      ProviderFlags = []
      currency = True
    end
    object ibContrSintTOTAVERE: TFloatField
      FieldName = 'TOTAVERE'
      ProviderFlags = []
      currency = True
    end
  end
  object frReport1: TfrReport
    OnDataSetWork = frReport1DataSetWork
    OnGetValue = frReport1GetValue
    Left = 168
    Top = 184
    PixelsPerInch = 96
  end
  object frDesigner1: TfrDesigner
    Left = 208
    Top = 184
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    Left = 304
    Top = 200
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_PIANO_CONTI'
      'Order By descr')
    Left = 464
    Top = 394
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
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 496
    Top = 394
  end
  object frReport2: TfrReport
    Values.Data = {
      02000000000000000000000A444553435F434F4E544F000000000000000B4445
      53435F434F4E544F32}
    OnDataSetWork = frReport2DataSetWork
    OnGetValue = frReport2GetValue
    Left = 168
    Top = 216
    Data = {
      030000000A43617465676F726961310B20444553435F434F4E544F0C20444553
      435F434F4E544F32}
    PixelsPerInch = 96
  end
  object frDesigner2: TfrDesigner
    Left = 208
    Top = 216
  end
end
