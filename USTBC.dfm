object fStBC: TfStBC
  Left = 170
  Top = 191
  Width = 760
  Height = 490
  Caption = 'Stampa Bar code'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 1
    Top = 1
    Width = 748
    Height = 417
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descrizione'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrezzoLire'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrezzoEuro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PVLire'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PVEuro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLORE'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 424
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 672
    Top = 424
    Width = 75
    Height = 25
    Caption = '&Esci'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = dmodAz.RxBarCode
    Left = 696
    Top = 16
  end
end
