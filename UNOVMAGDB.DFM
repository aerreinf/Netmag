object Form1: TForm1
  Left = 98
  Top = 121
  Width = 710
  Height = 442
  Caption = 'Movimenti di Magazzino'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 702
    Height = 374
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 698
      Height = 131
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 224
        Top = 8
        Width = 85
        Height = 13
        Caption = 'Data registrazione'
      end
      object Label2: TLabel
        Left = 12
        Top = 36
        Width = 33
        Height = 13
        Caption = 'Codice'
      end
      object Label3: TLabel
        Left = 12
        Top = 60
        Width = 42
        Height = 13
        Caption = 'Deposito'
      end
      object Label4: TLabel
        Left = 16
        Top = 84
        Width = 31
        Height = 13
        Caption = 'Cli/For'
      end
      object Label5: TLabel
        Left = 348
        Top = 84
        Width = 31
        Height = 13
        Caption = 'Cli/For'
      end
      object Label6: TLabel
        Left = 344
        Top = 60
        Width = 42
        Height = 13
        Caption = 'Deposito'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 316
        Top = 4
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 36809.2142293866
        Time = 36809.2142293866
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 60
        Top = 32
        Width = 257
        Height = 21
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 60
        Top = 56
        Width = 61
        Height = 21
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 124
        Top = 56
        Width = 193
        Height = 21
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 60
        Top = 80
        Width = 257
        Height = 21
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 60
        Top = 104
        Width = 257
        Height = 21
        Color = clBtnFace
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 456
        Top = 56
        Width = 185
        Height = 21
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 392
        Top = 80
        Width = 249
        Height = 21
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 392
        Top = 104
        Width = 249
        Height = 21
        Color = clBtnFace
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 392
        Top = 56
        Width = 61
        Height = 21
        TabOrder = 9
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 133
      Width = 698
      Height = 80
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object Label7: TLabel
        Left = 12
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Num. Doc'
      end
      object Label8: TLabel
        Left = 196
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Bollettario'
      end
      object Label9: TLabel
        Left = 388
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Moneta'
      end
      object Label10: TLabel
        Left = 16
        Top = 32
        Width = 49
        Height = 13
        Caption = 'Data Doc.'
      end
      object Label11: TLabel
        Left = 152
        Top = 32
        Width = 93
        Height = 13
        Caption = 'Attività / Subattività'
      end
      object Label12: TLabel
        Left = 16
        Top = 52
        Width = 30
        Height = 13
        Caption = 'Scordi'
      end
      object Label13: TLabel
        Left = 196
        Top = 56
        Width = 75
        Height = 13
        Caption = 'Umporto sconto'
      end
      object DBEdit9: TDBEdit
        Left = 68
        Top = 4
        Width = 81
        Height = 21
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 156
        Top = 4
        Width = 33
        Height = 21
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 248
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 432
        Top = 4
        Width = 65
        Height = 21
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 500
        Top = 4
        Width = 145
        Height = 21
        TabOrder = 4
      end
      object DateTimePicker2: TDateTimePicker
        Left = 68
        Top = 28
        Width = 81
        Height = 21
        CalAlignment = dtaLeft
        Date = 36809.2194577431
        Time = 36809.2194577431
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 248
        Top = 28
        Width = 81
        Height = 21
        TabOrder = 6
      end
      object DBEdit13: TDBEdit
        Left = 336
        Top = 28
        Width = 33
        Height = 21
        TabOrder = 7
      end
      object DBEdit14: TDBEdit
        Left = 68
        Top = 52
        Width = 57
        Height = 21
        TabOrder = 8
      end
      object DBEdit15: TDBEdit
        Left = 132
        Top = 52
        Width = 57
        Height = 21
        TabOrder = 9
      end
      object DBEdit16: TDBEdit
        Left = 276
        Top = 52
        Width = 93
        Height = 21
        TabOrder = 10
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 213
      Width = 698
      Height = 159
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 696
        Height = 157
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
