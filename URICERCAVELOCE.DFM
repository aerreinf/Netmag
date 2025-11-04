object fRicercaVeloceSQL: TfRicercaVeloceSQL
  Left = 206
  Top = 99
  Width = 350
  Height = 309
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Ricerca Veloce'
  Color = clBtnFace
  Constraints.MinHeight = 190
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object edTesto: TEdit
      Left = 12
      Top = 10
      Width = 229
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edTestoChange
    end
    object bbRefresh: TBitBtn
      Left = 252
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbRefreshClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 342
    Height = 241
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clNavy
    TabOrder = 1
    object dbgDati: TDBGrid
      Left = 2
      Top = 2
      Width = 338
      Height = 237
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = dsoDati
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgDatiDblClick
    end
  end
  object dsoDati: TDataSource
    DataSet = dmodPub.ibqRicerca
    Left = 12
    Top = 77
  end
end
