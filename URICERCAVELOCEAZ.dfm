object fRicercaVeloceAZSQL: TfRicercaVeloceAZSQL
  Left = 289
  Top = 146
  Width = 600
  Height = 401
  Caption = 'Ricerca Veloce'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Color = 16753994
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object edTesto: TEdit
      Left = 4
      Top = 10
      Width = 341
      Height = 20
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = edTestoChange
      OnKeyPress = edTestoKeyPress
    end
    object bbRefresh: TBitBtn
      Left = 436
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Refresh'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbRefreshClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 592
    Height = 326
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clTeal
    TabOrder = 1
    object dbgDati: TDBGrid
      Left = 2
      Top = 2
      Width = 588
      Height = 322
      Align = alClient
      Color = 13828095
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
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgDatiDblClick
    end
  end
  object dsoDati: TDataSource
    DataSet = dmodAz.ibqRicerca
    Left = 12
    Top = 77
  end
end
