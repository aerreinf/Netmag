object frmTagliaColori: TfrmTagliaColori
  Left = 84
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Taglia e Colori'
  ClientHeight = 293
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbcgTaglia: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 222
    Height = 252
    Hint = 'Taglia'
    Align = alLeft
    ColCount = 3
    Color = 12317414
    DataSource = dsTaglia
    Orientation = goHorizontal
    PanelHeight = 33
    PanelWidth = 74
    ParentColor = False
    ParentShowHint = False
    TabOrder = 0
    RowCount = 7
    SelectedColor = 6808263
    ShowHint = True
    object dbeTagliaN: TDBEdit
      Left = 6
      Top = 6
      Width = 63
      Height = 24
      CharCase = ecUpperCase
      Color = clMaroon
      DataField = 'DESCR'
      DataSource = dsTaglia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object dbcgColore: TDBCtrlGrid
    Left = 222
    Top = 0
    Width = 469
    Height = 252
    Hint = 'Colori'
    Align = alClient
    ColCount = 2
    Color = 13820885
    DataSource = dsColori
    PanelHeight = 36
    PanelWidth = 226
    ParentColor = False
    ParentShowHint = False
    TabOrder = 1
    RowCount = 7
    SelectedColor = 10470566
    ShowHint = True
    object dbeColori: TDBEdit
      Left = 8
      Top = 6
      Width = 211
      Height = 24
      CharCase = ecUpperCase
      Color = 15532031
      Ctl3D = True
      DataField = 'COLORE'
      DataSource = dsColori
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 691
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 12762810
    TabOrder = 2
    object bbEsci: TBitBtn
      Left = 528
      Top = 8
      Width = 129
      Height = 25
      Caption = '&esci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bbEsciClick
    end
  end
  object dsTaglia: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryTaglia
    Left = 10
    Top = 22
  end
  object dsColori: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryColori
    Left = 78
    Top = 22
  end
end
