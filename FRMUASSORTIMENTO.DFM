object frmAssortimento: TfrmAssortimento
  Left = 61
  Top = 159
  Width = 723
  Height = 314
  BorderIcons = [biSystemMenu]
  Caption = 'Assortimento'
  Color = clBtnFace
  Constraints.MinWidth = 723
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgAssort: TDBGrid
    Left = 0
    Top = 0
    Width = 715
    Height = 246
    Align = alClient
    Color = 15791615
    DataSource = dsAssort
    FixedColor = 14803425
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = 4210816
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Color = 15400959
        Expanded = False
        FieldName = 'colore_'
        Title.Caption = 'colore'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA01'
        Title.Caption = '/'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA02'
        Title.Caption = '/'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA03'
        Title.Caption = '/'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA04'
        Title.Caption = '/'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA05'
        Title.Caption = '/'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA06'
        Title.Caption = '/'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA07'
        Title.Caption = '/'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA08'
        Title.Caption = '/'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA09'
        Title.Caption = '/'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA10'
        Title.Caption = '/'
        Width = 45
        Visible = True
      end>
  end
  object pnlCtrl: TPanel
    Left = 0
    Top = 246
    Width = 715
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 12762810
    TabOrder = 1
    object bbEsci: TBitBtn
      Left = 562
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
    object bbRiempi: TBitBtn
      Left = 4
      Top = 8
      Width = 77
      Height = 25
      Caption = '&riempi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbRiempiClick
    end
    object stAssortQta: TStaticText
      Left = 330
      Top = 14
      Width = 55
      Height = 17
      Alignment = taRightJustify
      Caption = 'Totale: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salva'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object dsAssort: TDataSource
    DataSet = dmodAz.ibqryAssort
    Left = 28
    Top = 64
  end
  object dsColori: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryColori
    Left = 80
    Top = 110
  end
  object dsTaglia: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibqryTaglia
    Left = 12
    Top = 110
  end
end
