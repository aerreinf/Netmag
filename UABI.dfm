inherited fABI: TfABI
  Left = 284
  Top = 211
  Caption = 'ABI'
  ClientHeight = 301
  ClientWidth = 533
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 533
    Height = 71
    Align = alTop
    object laID_ABI: TLabel
      Left = 16
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 96
      Top = 12
      Width = 83
      Height = 16
      Caption = 'Descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeID_ABI: TDBEdit
      Left = 12
      Top = 28
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_ABI'
      DataSource = dsoABI
      TabOrder = 0
      OnChange = dbeID_ABIChange
    end
    object dbeDescr: TDBEdit
      Left = 92
      Top = 28
      Width = 337
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoABI
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 533
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object paSottoZone: TPanel
    Left = 0
    Top = 98
    Width = 533
    Height = 203
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 2
    object dsgSottoZone: TDBGrid
      Left = 2
      Top = 2
      Width = 525
      Height = 195
      Align = alClient
      DataSource = dsoShowCAB
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INDIRIZZO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALITA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ABI_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMUNE_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVINCIA_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAP_ID'
          Visible = True
        end>
    end
  end
  object dsoABI: TDataSource
    DataSet = dmodAz.ibTab_ABI
    Left = 254
  end
  object dsoShowCAB: TDataSource
    DataSet = dmodAz.ibqShowCAB
    Left = 282
    Top = 2
  end
end
