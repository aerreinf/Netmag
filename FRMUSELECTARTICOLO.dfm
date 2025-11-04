object frmSelectArticolo: TfrmSelectArticolo
  Left = 187
  Top = 138
  Width = 540
  Height = 375
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Scegli Articolo'
  Color = clBtnFace
  Constraints.MinWidth = 540
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object dbgArticoli: TDBGrid
    Left = 0
    Top = 49
    Width = 532
    Height = 292
    Align = alClient
    Ctl3D = True
    DataSource = dsArticoli
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = bbOKClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODICE_ARTICOLO'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO_BASE'
        Title.Caption = 'Prezzo base'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO_STANDART'
        Title.Caption = 'Costo standard'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTO_ACQUISTO'
        Title.Caption = 'Conto Acq.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTO_VENDITA'
        Title.Caption = 'Conto Vend.'
        Visible = True
      end>
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object rxdblcCodice: TRxDBLookupCombo
      Left = 16
      Top = 12
      Width = 153
      Height = 23
      DropDownCount = 8
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'CODICE_ARTICOLO'
      LookupSource = dsArticoli
      TabOrder = 0
    end
    object rxdblcDescr: TRxDBLookupCombo
      Left = 172
      Top = 12
      Width = 301
      Height = 23
      DropDownCount = 8
      LookupField = 'CODICE_ARTICOLO'
      LookupDisplay = 'DESCR'
      LookupSource = dsArticoli
      TabOrder = 1
    end
    object bbOK: TBitBtn
      Left = 480
      Top = 12
      Width = 45
      Height = 21
      Caption = 'OK'
      TabOrder = 2
      OnClick = bbOKClick
    end
  end
  object dsArticoli: TDataSource
    DataSet = dmodAz.ibTab_Articoli
    Left = 76
    Top = 128
  end
end
