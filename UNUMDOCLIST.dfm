object fNumDoc_All: TfNumDoc_All
  Left = 231
  Top = 153
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Num. Doc.'
  ClientHeight = 352
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paND: TPanel
    Left = 0
    Top = 41
    Width = 641
    Height = 311
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clMaroon
    TabOrder = 0
    object dbcgNumeriFatt: TDBCtrlGrid
      Left = 2
      Top = 2
      Width = 637
      Height = 307
      Align = alClient
      ColCount = 5
      Color = 7311742
      DataSource = dsoNumDoc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      PanelHeight = 51
      PanelWidth = 124
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      RowCount = 6
      SelectedColor = 28416
      object dbeNumero: TDBEdit
        Left = 6
        Top = 6
        Width = 111
        Height = 40
        CharCase = ecUpperCase
        Color = 16384
        DataField = 'NUMERO'
        DataSource = dsoNumDoc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454143
        Font.Height = -32
        Font.Name = 'Lucida Console'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bbExit: TBitBtn
      Left = 12
      Top = 8
      Width = 117
      Height = 25
      Caption = '&Esci '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Garamond'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      OnClick = bbExitClick
    end
    object DBNavigator1: TDBNavigator
      Left = 136
      Top = 8
      Width = 224
      Height = 25
      DataSource = dsoNumDoc
      VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Flat = True
      TabOrder = 1
    end
  end
  object dsoNumDoc: TDataSource
    DataSet = dmodAz.ibtNUM_DOC
    Left = 8
    Top = 179
  end
end
