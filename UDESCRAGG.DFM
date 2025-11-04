inherited fDescrAgg: TfDescrAgg
  Caption = 'Descrizioni Aggiuntivi'
  ClientHeight = 322
  ClientWidth = 402
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 402
    Height = 293
    object laCod: TLabel
      Left = 100
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object Label1: TLabel
      Left = 12
      Top = 40
      Width = 78
      Height = 16
      Caption = 'Descrizioni'
    end
    object dbeCodice: TDBEdit
      Left = 152
      Top = 8
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoDescrAgg
      TabOrder = 0
    end
    object D1: TDBMemo
      Left = 8
      Top = 60
      Width = 189
      Height = 49
      DataField = 'RIGA1'
      DataSource = dsoDescrAgg
      TabOrder = 1
    end
    object d2: TDBMemo
      Left = 204
      Top = 60
      Width = 189
      Height = 49
      DataField = 'RIGA2'
      DataSource = dsoDescrAgg
      TabOrder = 2
    end
    object d4: TDBMemo
      Left = 204
      Top = 116
      Width = 189
      Height = 45
      DataField = 'RIGA4'
      DataSource = dsoDescrAgg
      TabOrder = 3
    end
    object d3: TDBMemo
      Left = 8
      Top = 116
      Width = 189
      Height = 45
      DataField = 'RIGA3'
      DataSource = dsoDescrAgg
      TabOrder = 4
    end
    object d5: TDBMemo
      Left = 8
      Top = 164
      Width = 189
      Height = 41
      DataField = 'RIGA5'
      DataSource = dsoDescrAgg
      TabOrder = 5
    end
    object d6: TDBMemo
      Left = 204
      Top = 164
      Width = 189
      Height = 41
      DataField = 'RIGA6'
      DataSource = dsoDescrAgg
      TabOrder = 6
    end
    object d8: TDBMemo
      Left = 204
      Top = 208
      Width = 189
      Height = 37
      DataField = 'RIGA8'
      DataSource = dsoDescrAgg
      TabOrder = 7
    end
    object d7: TDBMemo
      Left = 8
      Top = 208
      Width = 189
      Height = 37
      DataField = 'RIGA7'
      DataSource = dsoDescrAgg
      TabOrder = 8
    end
    object d9: TDBMemo
      Left = 8
      Top = 248
      Width = 385
      Height = 37
      DataField = 'RIGA9'
      DataSource = dsoDescrAgg
      TabOrder = 9
    end
  end
  inherited tbarControl: TToolBar
    Width = 402
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoDescrAgg: TDataSource
    DataSet = dmodAz.ibTab_Descr_agg
    Left = 268
    Top = 2
  end
end
