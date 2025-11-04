inherited fZone: TfZone
  Left = 268
  Top = 178
  Caption = 'Zone'
  ClientHeight = 286
  ClientWidth = 439
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 439
    Height = 68
    Align = alTop
    object laID_Zone: TLabel
      Left = 16
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 88
      Top = 12
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeID_Codice_Zona: TDBEdit
      Left = 12
      Top = 28
      Width = 65
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CODICE_ZONA'
      DataSource = dsoZone
      TabOrder = 0
      OnChange = dbeID_Codice_ZonaChange
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 28
      Width = 337
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoZone
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 439
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object paSottoZone: TPanel
    Left = 0
    Top = 95
    Width = 439
    Height = 191
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 2
    object dsgSottoZone: TDBGrid
      Left = 2
      Top = 2
      Width = 431
      Height = 183
      Align = alClient
      DataSource = dsoShowSZone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCR'
          Title.Caption = 'Sottozone - Descrizione'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 395
          Visible = True
        end>
    end
  end
  object dsoZone: TDataSource
    AutoEdit = False
    DataSet = dmodAz.ibTab_Zone
    Left = 302
    Top = 2
  end
  object dsoShowSZone: TDataSource
    DataSet = dmodAz.ibqShowSZone
    Left = 256
    Top = 2
  end
end
