inherited fBaseFormGrid1: TfBaseFormGrid1
  Left = 214
  Top = 112
  Caption = 'fBaseFormGrid1'
  ClientWidth = 420
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 420
    BorderWidth = 1
    BorderStyle = bsSingle
    object dbgData: TDBGrid
      Left = 2
      Top = 2
      Width = 414
      Height = 261
      Align = alClient
      DataSource = dsoDataLink
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  inherited tbarControl: TToolBar
    Width = 420
  end
  object dsoDataLink: TDataSource
    Left = 192
    Top = 6
  end
end
