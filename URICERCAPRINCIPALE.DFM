object fRicercaPrincipale: TfRicercaPrincipale
  Left = 211
  Top = 137
  Width = 474
  Height = 313
  BorderIcons = [biSystemMenu]
  Caption = 'Risultati'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 279
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clRed
    TabOrder = 0
    object dbgDati: TDBGrid
      Left = 2
      Top = 2
      Width = 462
      Height = 275
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = dsoRicercaPrincipale
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
  object dsoRicercaPrincipale: TDataSource
    DataSet = dmodPub.ibqRicerca
    Left = 20
    Top = 36
  end
end
