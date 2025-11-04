object frmInsDistinte: TfrmInsDistinte
  Left = 242
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Distinte - Inserimento...'
  ClientHeight = 312
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDati: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 280
    Align = alClient
    BevelOuter = bvLowered
    Color = 15916242
    TabOrder = 0
    object shback: TShape
      Left = 1
      Top = 1
      Width = 512
      Height = 278
      Align = alClient
      Brush.Color = 8454143
      Brush.Style = bsDiagCross
    end
    object lblCodArt: TLabel
      Left = 10
      Top = 4
      Width = 97
      Height = 16
      Caption = 'Articolo Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblDescr: TLabel
      Left = 186
      Top = 2
      Width = 74
      Height = 16
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object rxdblcCodArt: TRxDBLookupCombo
      Left = 10
      Top = 20
      Width = 169
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      EmptyItemColor = clSilver
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = dsArticoli_Vend
      ParentCtl3D = False
      TabOrder = 1
      OnExit = rxdblcCodArtExit
    end
    object rxdblcDescrArt: TRxDBLookupCombo
      Left = 186
      Top = 20
      Width = 317
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      EmptyItemColor = clSilver
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = dsArticoli_Vend
      ParentCtl3D = False
      TabOrder = 2
      OnExit = rxdblcDescrArtExit
    end
    object dbgArticoliVend: TDBGrid
      Left = 10
      Top = 43
      Width = 493
      Height = 233
      Ctl3D = False
      DataSource = dsArticoli_Vend
      FixedColor = 8421440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Times New Roman'
      TitleFont.Style = [fsBold]
      OnCellClick = dbgArticoliVendCellClick
      OnDblClick = dbgArticoliVendDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODICE_ARTICOLO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'codice articolo'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'descrizione'
          Title.Color = clSilver
          Width = 344
          Visible = True
        end>
    end
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 280
    Width = 514
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    Color = 12370629
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 351
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 435
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Annulla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbCancelClick
    end
  end
  object dsArticoli_Vend: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 163
    Top = 48
  end
end
