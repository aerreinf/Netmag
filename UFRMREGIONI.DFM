object frmRegioni: TfrmRegioni
  Left = 0
  Top = 0
  Width = 465
  Height = 411
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object paView: TPanel
    Left = 0
    Top = 144
    Width = 465
    Height = 267
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 0
    object dbgRegioni: TDBGrid
      Left = 8
      Top = 8
      Width = 449
      Height = 251
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dmodAnag.dsoTab_Regioni
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_REGIONE'
          Title.Caption = 'Codice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Title.Caption = 'Descrizione'
          Width = 341
          Visible = True
        end>
    end
  end
end
