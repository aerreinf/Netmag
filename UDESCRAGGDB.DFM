object fDescrAggDB: TfDescrAggDB
  Left = 212
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Descrizioni Aggiumtivi'
  ClientHeight = 335
  ClientWidth = 400
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
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Descr_Agg: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Descr_Agg
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnTab_Descr_AggClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 400
    Height = 294
    Align = alClient
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object laCod: TLabel
      Left = 100
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Codice'
    end
    object Label1: TLabel
      Left = 12
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Descrizioni'
    end
    object dbeCodice: TDBEdit
      Left = 152
      Top = 8
      Width = 89
      Height = 21
      DataField = 'CODICE'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 0
    end
    object D1: TDBMemo
      Left = 8
      Top = 60
      Width = 189
      Height = 49
      DataField = 'RIGA1'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 1
    end
    object d2: TDBMemo
      Left = 204
      Top = 60
      Width = 189
      Height = 49
      DataField = 'RIGA2'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 2
    end
    object d3: TDBMemo
      Left = 8
      Top = 116
      Width = 189
      Height = 45
      DataField = 'RIGA3'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 3
    end
    object d4: TDBMemo
      Left = 204
      Top = 116
      Width = 189
      Height = 45
      DataField = 'RIGA4'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 4
    end
    object d6: TDBMemo
      Left = 204
      Top = 164
      Width = 189
      Height = 41
      DataField = 'RIGA6'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 5
    end
    object d5: TDBMemo
      Left = 8
      Top = 164
      Width = 189
      Height = 41
      DataField = 'RIGA5'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 6
    end
    object d8: TDBMemo
      Left = 204
      Top = 208
      Width = 189
      Height = 37
      DataField = 'RIGA8'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 7
    end
    object d7: TDBMemo
      Left = 8
      Top = 208
      Width = 189
      Height = 37
      DataField = 'RIGA7'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 8
    end
    object d9: TDBMemo
      Left = 8
      Top = 248
      Width = 385
      Height = 37
      DataField = 'RIGA9'
      DataSource = dmodAz.dsoTab_Descr_Agg
      TabOrder = 9
    end
  end
end
