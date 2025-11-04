object fGestCasse: TfGestCasse
  Left = 168
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Utility Gestione CASSE'
  ClientHeight = 546
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label20: TLabel
    Left = 213
    Top = 11
    Width = 17
    Height = 14
    Caption = 'del'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 174
    Top = 43
    Width = 56
    Height = 14
    Caption = 'CASSA nr.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 161
    Top = 64
    Width = 110
    Height = 17
    AutoSize = False
  end
  object Label14: TLabel
    Left = 9
    Top = 64
    Width = 152
    Height = 17
    AutoSize = False
  end
  object Edit1: TEdit
    Left = 655
    Top = 80
    Width = 96
    Height = 21
    TabOrder = 0
    Text = 'Port=1,CURDIR='#39'C:\Software\Delphi\Progetti\dcu'#39
    Visible = False
  end
  object Button1: TButton
    Left = 256
    Top = 64
    Width = 65
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 565
    Top = 3
    Width = 206
    Height = 20
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 328
    Top = 40
    Width = 103
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
    Visible = False
  end
  object Edit4: TEdit
    Left = 328
    Top = 64
    Width = 103
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
    Visible = False
  end
  object Edit5: TEdit
    Left = 565
    Top = 46
    Width = 207
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Button2: TButton
    Left = 456
    Top = 32
    Width = 65
    Height = 25
    Caption = 'iNTEST'
    TabOrder = 6
    Visible = False
    OnClick = Button2Click
  end
  object Edit6: TEdit
    Left = 565
    Top = 23
    Width = 207
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Button3: TButton
    Left = 388
    Top = 8
    Width = 60
    Height = 25
    Caption = 'Leggi Totali'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Edit7: TEdit
    Left = 482
    Top = 68
    Width = 108
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = 'LEGGI NF=20,FILE='#39'C:\MICROPOS\TESTS\TOT.DAT'#39
    Visible = False
  end
  object Edit8: TEdit
    Left = 442
    Top = 36
    Width = 85
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = 'LEGGI NF=22,FILE='#39'C:\MICROPOS\TESTS\TOTREP.DAT'#39',APPEND'
    Visible = False
  end
  object Button4: TButton
    Left = 8
    Top = 8
    Width = 151
    Height = 49
    Caption = 'Azzeramento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button4Click
  end
  object Edit9: TEdit
    Left = 496
    Top = 48
    Width = 47
    Height = 21
    TabOrder = 12
    Text = 'Edit9'
    Visible = False
  end
  object Button6: TButton
    Left = 520
    Top = 64
    Width = 65
    Height = 25
    Caption = 'Button6'
    TabOrder = 13
    Visible = False
    OnClick = Button6Click
  end
  object DateEdit1: TDateEdit
    Left = 230
    Top = 8
    Width = 89
    Height = 21
    DefaultToday = True
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 14
    Text = '17/08/2003'
  end
  object Panel1: TPanel
    Left = 6
    Top = 83
    Width = 768
    Height = 262
    TabOrder = 15
    object Label1: TLabel
      Left = 216
      Top = 13
      Width = 19
      Height = 14
      Caption = 'Da :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 336
      Top = 13
      Width = 12
      Height = 14
      Caption = 'a :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 2
      Width = 194
      Height = 24
      Caption = 'Azzeramenti Cassa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 22
      Top = 188
      Width = 61
      Height = 13
      Caption = 'Tot. Contanti'
    end
    object Label5: TLabel
      Left = 118
      Top = 188
      Width = 51
      Height = 13
      Caption = 'Tot. Crediti'
    end
    object Label6: TLabel
      Left = 204
      Top = 188
      Width = 59
      Height = 13
      Caption = 'Tot. Assegni'
    end
    object Label7: TLabel
      Left = 300
      Top = 188
      Width = 49
      Height = 13
      Caption = 'Tot. Buoni'
    end
    object Label8: TLabel
      Left = 377
      Top = 188
      Width = 75
      Height = 13
      Caption = 'Tot. Carta Cred.'
    end
    object Label9: TLabel
      Left = 476
      Top = 188
      Width = 63
      Height = 13
      Caption = 'Tot. Scontrini'
    end
    object Label10: TLabel
      Left = 563
      Top = 188
      Width = 68
      Height = 13
      Caption = 'Tot. Chip Card'
    end
    object Label11: TLabel
      Left = 707
      Top = 188
      Width = 50
      Height = 13
      Caption = 'Tot. Clienti'
    end
    object Label12: TLabel
      Left = 24
      Top = 224
      Width = 56
      Height = 13
      Caption = 'Tot. Prelievi'
    end
    object Label13: TLabel
      Left = 106
      Top = 224
      Width = 74
      Height = 13
      Caption = 'Tot. Versamenti'
    end
    object Label15: TLabel
      Left = 191
      Top = 224
      Width = 84
      Height = 13
      Caption = 'Tot. Fondo Cassa'
    end
    object Label17: TLabel
      Left = 303
      Top = 224
      Width = 43
      Height = 13
      Caption = 'Tot. Resi'
    end
    object Label18: TLabel
      Left = 388
      Top = 224
      Width = 52
      Height = 13
      Caption = 'Tot. Sconti'
    end
    object Label19: TLabel
      Left = 481
      Top = 224
      Width = 49
      Height = 13
      Caption = 'Tot. Storni'
    end
    object Label24: TLabel
      Left = 453
      Top = 13
      Width = 56
      Height = 14
      Caption = 'CASSA nr.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 5
      Top = 34
      Width = 763
      Height = 153
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PK_CODICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'NUMCASSA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'CASSA'
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'DATA_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CONTANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CREDITI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'ASSEGNI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'BUONI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CARTACRED'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'SCONTRINI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CHIP_CARD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'NETTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'LORDE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CONTANTI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CREDITO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'INASSEGNI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'INBUONI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CARTE_CREDITO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CLIENTI_SERVITI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'VALUTA1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'VALUTA2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'VALUTA3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'VALUTA4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'RICEVUTE_FISCALI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'FATTURE_RICEVUTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'FATTURE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PRELIEVI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'VERSAMENTI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'FONDO_CASSA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'ACC1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'ACC2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'ACC_CHIP_CARD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'RESI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'CORREZIONI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'SCONTI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'MAGGIORAZIONI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'TOTAL_VOIDS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'STORNI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'NON_RISCOSSI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'SC_ASS_ITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PERCA_SU_ITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PERCB_SU_ITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'SCONTI_SUBT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PERCA_SUBTOT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'PERCB_SUBTOT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'MAGG_ITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'MAGG_SUBT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'TOT_RESTI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'ENTRANCE_TICKETS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'UF7'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'TAVOLI_ANNULLATI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 12058623
          Expanded = False
          FieldName = 'TOT_COMM_OPERAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clBlack
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object DateEdit2: TDateEdit
      Left = 240
      Top = 10
      Width = 92
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 1
      Text = '18/08/2003'
    end
    object DateEdit3: TDateEdit
      Left = 352
      Top = 10
      Width = 93
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 2
      Text = '18/08/2003'
    end
    object Button5: TButton
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Filtra'
      TabOrder = 3
      OnClick = Button5Click
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 8
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 99
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 189
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 280
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 370
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 461
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object CurrencyEdit7: TCurrencyEdit
      Left = 553
      Top = 202
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object Edit10: TEdit
      Left = 704
      Top = 202
      Width = 57
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Text = 'Edit10'
    end
    object CurrencyEdit8: TCurrencyEdit
      Left = 8
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object CurrencyEdit9: TCurrencyEdit
      Left = 99
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object CurrencyEdit10: TCurrencyEdit
      Left = 189
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object CurrencyEdit11: TCurrencyEdit
      Left = 280
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object CurrencyEdit12: TCurrencyEdit
      Left = 370
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object CurrencyEdit13: TCurrencyEdit
      Left = 461
      Top = 238
      Width = 89
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object Button7: TButton
      Left = 688
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Stampa'
      TabOrder = 18
    end
    object ComboBox2: TComboBox
      Left = 511
      Top = 10
      Width = 50
      Height = 21
      ItemHeight = 13
      TabOrder = 19
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
    end
  end
  object ComboBox1: TComboBox
    Left = 232
    Top = 40
    Width = 85
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
  end
  object Button8: TButton
    Left = 320
    Top = 8
    Width = 66
    Height = 25
    Caption = 'Apri conn.'
    TabOrder = 17
    OnClick = Button8Click
  end
  object Edit11: TEdit
    Left = 592
    Top = 72
    Width = 45
    Height = 21
    TabOrder = 18
    Text = 'Edit11'
    Visible = False
  end
  object Panel2: TPanel
    Left = 6
    Top = 348
    Width = 771
    Height = 198
    Color = 13628158
    TabOrder = 19
    object Label22: TLabel
      Left = 8
      Top = 5
      Width = 19
      Height = 14
      Caption = 'Da :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 128
      Top = 5
      Width = 12
      Height = 14
      Caption = 'a :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 245
      Top = 5
      Width = 56
      Height = 14
      Caption = 'CASSA nr.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 3
      Top = 27
      Width = 766
      Height = 168
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Movimenti Analitici'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 753
          Height = 139
          DataSource = DataSource3
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'CODICE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'DESCR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 162
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'QTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'VALORE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'DATA_MOV'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'NUMCASSA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'PK_CODICE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PASSATO'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Movimenti Sintetici'
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 753
          Height = 139
          DataSource = DataSource4
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'CODICE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 137
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'F_1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Q.t'#224
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 113
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'F_2'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valore'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 115
              Visible = True
            end>
        end
      end
    end
    object DateEdit4: TDateEdit
      Left = 32
      Top = 2
      Width = 90
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 1
      Text = '18/08/2003'
    end
    object DateEdit5: TDateEdit
      Left = 144
      Top = 2
      Width = 93
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 2
      Text = '18/08/2003'
    end
    object Button9: TButton
      Left = 612
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Filtra'
      TabOrder = 3
    end
    object Button10: TButton
      Left = 692
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Stampa'
      TabOrder = 4
    end
    object ComboBox3: TComboBox
      Left = 303
      Top = 2
      Width = 50
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
    end
  end
  object CoEcrCom1: TCoEcrCom
    Left = 175
    Top = 6
    Width = 32
    Height = 32
    OnFileExtEnq = CoEcrCom1FileExtEnq
    OnFileExtUpd = CoEcrCom1FileExtUpd
    ControlData = {040001004F0300004F03000000000000}
  end
  object Button11: TButton
    Left = 464
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Prel. Info'
    TabOrder = 21
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 464
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Invia Info'
    TabOrder = 22
    OnClick = Button12Click
  end
  object ApdComPort1: TApdComPort
    ComNumber = 1
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_Articoli'
      'where codice_articolo =:CODART')
    Left = 752
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODART'
        ParamType = ptUnknown
      end>
  end
  object IBDataSet1: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from CASSA_TOT_AZZ'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into CASSA_TOT_AZZ'
      
        '  (ACC_CHIP_CARD, ACC1, ACC2, ASSEGNI, BUONI, CARTACRED, CARTE_C' +
        'REDITO, '
      
        '   CHIP_CARD, CLIENTI_SERVITI, CONTANTE, CONTANTI, CORREZIONI, C' +
        'REDITI, '
      
        '   CREDITO, DATA_MOV, ENTRANCE_TICKETS, FATTURE, FATTURE_RICEVUT' +
        'E, FONDO_CASSA, '
      
        '   INASSEGNI, INBUONI, LORDE, MAGG_ITEM, MAGG_SUBT, MAGGIORAZION' +
        'I, NETTE, '
      
        '   NON_RISCOSSI, NUMCASSA, PERCA_SU_ITEM, PERCA_SUBTOT, PERCB_SU' +
        '_ITEM, '
      
        '   PERCB_SUBTOT, PK_CODICE, PRELIEVI, RESI, RICEVUTE_FISCALI, SC' +
        '_ASS_ITEM, '
      
        '   SCONTI, SCONTI_SUBT, SCONTRINI, STORNI, TAVOLI_ANNULLATI, TOT' +
        '_COMM_OPERAT, '
      
        '   TOT_RESTI, TOTAL_VOIDS, UF1, UF2, UF3, UF4, UF5, UF6, UF7, VA' +
        'LUTA1, '
      '   VALUTA2, VALUTA3, VALUTA4, VERSAMENTI)'
      'values'
      
        '  (:ACC_CHIP_CARD, :ACC1, :ACC2, :ASSEGNI, :BUONI, :CARTACRED, :' +
        'CARTE_CREDITO, '
      
        '   :CHIP_CARD, :CLIENTI_SERVITI, :CONTANTE, :CONTANTI, :CORREZIO' +
        'NI, :CREDITI, '
      
        '   :CREDITO, :DATA_MOV, :ENTRANCE_TICKETS, :FATTURE, :FATTURE_RI' +
        'CEVUTE, '
      
        '   :FONDO_CASSA, :INASSEGNI, :INBUONI, :LORDE, :MAGG_ITEM, :MAGG' +
        '_SUBT, '
      
        '   :MAGGIORAZIONI, :NETTE, :NON_RISCOSSI, :NUMCASSA, :PERCA_SU_I' +
        'TEM, :PERCA_SUBTOT, '
      
        '   :PERCB_SU_ITEM, :PERCB_SUBTOT, :PK_CODICE, :PRELIEVI, :RESI, ' +
        ':RICEVUTE_FISCALI, '
      
        '   :SC_ASS_ITEM, :SCONTI, :SCONTI_SUBT, :SCONTRINI, :STORNI, :TA' +
        'VOLI_ANNULLATI, '
      
        '   :TOT_COMM_OPERAT, :TOT_RESTI, :TOTAL_VOIDS, :UF1, :UF2, :UF3,' +
        ' :UF4, '
      
        '   :UF5, :UF6, :UF7, :VALUTA1, :VALUTA2, :VALUTA3, :VALUTA4, :VE' +
        'RSAMENTI)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  DATA_MOV,'
      '  CONTANTE,'
      '  CREDITI,'
      '  ASSEGNI,'
      '  BUONI,'
      '  CARTACRED,'
      '  VALUTA1,'
      '  VALUTA2,'
      '  VALUTA3,'
      '  VALUTA4,'
      '  UF1,'
      '  UF2,'
      '  UF3,'
      '  CHIP_CARD,'
      '  NETTE,'
      '  LORDE,'
      '  CONTANTI,'
      '  CREDITO,'
      '  INASSEGNI,'
      '  INBUONI,'
      '  CARTE_CREDITO,'
      '  RICEVUTE_FISCALI,'
      '  FATTURE_RICEVUTE,'
      '  FATTURE,'
      '  PRELIEVI,'
      '  VERSAMENTI,'
      '  FONDO_CASSA,'
      '  ACC1,'
      '  ACC2,'
      '  ACC_CHIP_CARD,'
      '  UF4,'
      '  SCONTRINI,'
      '  CLIENTI_SERVITI,'
      '  RESI,'
      '  CORREZIONI,'
      '  SCONTI,'
      '  MAGGIORAZIONI,'
      '  TOTAL_VOIDS,'
      '  STORNI,'
      '  UF5,'
      '  NON_RISCOSSI,'
      '  SC_ASS_ITEM,'
      '  PERCA_SU_ITEM,'
      '  PERCB_SU_ITEM,'
      '  SCONTI_SUBT,'
      '  PERCA_SUBTOT,'
      '  PERCB_SUBTOT,'
      '  MAGG_ITEM,'
      '  MAGG_SUBT,'
      '  UF6,'
      '  TOT_RESTI,'
      '  ENTRANCE_TICKETS,'
      '  UF7,'
      '  TAVOLI_ANNULLATI,'
      '  TOT_COMM_OPERAT,'
      '  NUMCASSA'
      'from CASSA_TOT_AZZ '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select * from CASSA_TOT_AZZ '
      'order by pk_codice,DATA_MOV')
    ModifySQL.Strings = (
      'update CASSA_TOT_AZZ'
      'set'
      '  ACC_CHIP_CARD = :ACC_CHIP_CARD,'
      '  ACC1 = :ACC1,'
      '  ACC2 = :ACC2,'
      '  ASSEGNI = :ASSEGNI,'
      '  BUONI = :BUONI,'
      '  CARTACRED = :CARTACRED,'
      '  CARTE_CREDITO = :CARTE_CREDITO,'
      '  CHIP_CARD = :CHIP_CARD,'
      '  CLIENTI_SERVITI = :CLIENTI_SERVITI,'
      '  CONTANTE = :CONTANTE,'
      '  CONTANTI = :CONTANTI,'
      '  CORREZIONI = :CORREZIONI,'
      '  CREDITI = :CREDITI,'
      '  CREDITO = :CREDITO,'
      '  DATA_MOV = :DATA_MOV,'
      '  ENTRANCE_TICKETS = :ENTRANCE_TICKETS,'
      '  FATTURE = :FATTURE,'
      '  FATTURE_RICEVUTE = :FATTURE_RICEVUTE,'
      '  FONDO_CASSA = :FONDO_CASSA,'
      '  INASSEGNI = :INASSEGNI,'
      '  INBUONI = :INBUONI,'
      '  LORDE = :LORDE,'
      '  MAGG_ITEM = :MAGG_ITEM,'
      '  MAGG_SUBT = :MAGG_SUBT,'
      '  MAGGIORAZIONI = :MAGGIORAZIONI,'
      '  NETTE = :NETTE,'
      '  NON_RISCOSSI = :NON_RISCOSSI,'
      '  NUMCASSA = :NUMCASSA,'
      '  PERCA_SU_ITEM = :PERCA_SU_ITEM,'
      '  PERCA_SUBTOT = :PERCA_SUBTOT,'
      '  PERCB_SU_ITEM = :PERCB_SU_ITEM,'
      '  PERCB_SUBTOT = :PERCB_SUBTOT,'
      '  PK_CODICE = :PK_CODICE,'
      '  PRELIEVI = :PRELIEVI,'
      '  RESI = :RESI,'
      '  RICEVUTE_FISCALI = :RICEVUTE_FISCALI,'
      '  SC_ASS_ITEM = :SC_ASS_ITEM,'
      '  SCONTI = :SCONTI,'
      '  SCONTI_SUBT = :SCONTI_SUBT,'
      '  SCONTRINI = :SCONTRINI,'
      '  STORNI = :STORNI,'
      '  TAVOLI_ANNULLATI = :TAVOLI_ANNULLATI,'
      '  TOT_COMM_OPERAT = :TOT_COMM_OPERAT,'
      '  TOT_RESTI = :TOT_RESTI,'
      '  TOTAL_VOIDS = :TOTAL_VOIDS,'
      '  UF1 = :UF1,'
      '  UF2 = :UF2,'
      '  UF3 = :UF3,'
      '  UF4 = :UF4,'
      '  UF5 = :UF5,'
      '  UF6 = :UF6,'
      '  UF7 = :UF7,'
      '  VALUTA1 = :VALUTA1,'
      '  VALUTA2 = :VALUTA2,'
      '  VALUTA3 = :VALUTA3,'
      '  VALUTA4 = :VALUTA4,'
      '  VERSAMENTI = :VERSAMENTI'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_TOT_CASSA'
    Left = 720
    Top = 40
    object IBDataSet1PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"CASSA_TOT_AZZ"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet1DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"CASSA_TOT_AZZ"."DATA_MOV"'
    end
    object IBDataSet1CONTANTE: TFloatField
      FieldName = 'CONTANTE'
      Origin = '"CASSA_TOT_AZZ"."CONTANTE"'
      currency = True
    end
    object IBDataSet1CREDITI: TFloatField
      FieldName = 'CREDITI'
      Origin = '"CASSA_TOT_AZZ"."CREDITI"'
      currency = True
    end
    object IBDataSet1ASSEGNI: TFloatField
      FieldName = 'ASSEGNI'
      Origin = '"CASSA_TOT_AZZ"."ASSEGNI"'
      currency = True
    end
    object IBDataSet1BUONI: TFloatField
      FieldName = 'BUONI'
      Origin = '"CASSA_TOT_AZZ"."BUONI"'
      currency = True
    end
    object IBDataSet1CARTACRED: TFloatField
      FieldName = 'CARTACRED'
      Origin = '"CASSA_TOT_AZZ"."CARTACRED"'
      currency = True
    end
    object IBDataSet1VALUTA1: TFloatField
      FieldName = 'VALUTA1'
      Origin = '"CASSA_TOT_AZZ"."VALUTA1"'
      currency = True
    end
    object IBDataSet1VALUTA2: TFloatField
      FieldName = 'VALUTA2'
      Origin = '"CASSA_TOT_AZZ"."VALUTA2"'
      currency = True
    end
    object IBDataSet1VALUTA3: TFloatField
      FieldName = 'VALUTA3'
      Origin = '"CASSA_TOT_AZZ"."VALUTA3"'
      currency = True
    end
    object IBDataSet1VALUTA4: TFloatField
      FieldName = 'VALUTA4'
      Origin = '"CASSA_TOT_AZZ"."VALUTA4"'
      currency = True
    end
    object IBDataSet1UF1: TFloatField
      FieldName = 'UF1'
      Origin = '"CASSA_TOT_AZZ"."UF1"'
      currency = True
    end
    object IBDataSet1UF2: TFloatField
      FieldName = 'UF2'
      Origin = '"CASSA_TOT_AZZ"."UF2"'
      currency = True
    end
    object IBDataSet1UF3: TFloatField
      FieldName = 'UF3'
      Origin = '"CASSA_TOT_AZZ"."UF3"'
      currency = True
    end
    object IBDataSet1CHIP_CARD: TFloatField
      FieldName = 'CHIP_CARD'
      Origin = '"CASSA_TOT_AZZ"."CHIP_CARD"'
      currency = True
    end
    object IBDataSet1NETTE: TFloatField
      FieldName = 'NETTE'
      Origin = '"CASSA_TOT_AZZ"."NETTE"'
      currency = True
    end
    object IBDataSet1LORDE: TFloatField
      FieldName = 'LORDE'
      Origin = '"CASSA_TOT_AZZ"."LORDE"'
      currency = True
    end
    object IBDataSet1CONTANTI: TFloatField
      FieldName = 'CONTANTI'
      Origin = '"CASSA_TOT_AZZ"."CONTANTI"'
      currency = True
    end
    object IBDataSet1CREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = '"CASSA_TOT_AZZ"."CREDITO"'
      currency = True
    end
    object IBDataSet1INASSEGNI: TFloatField
      FieldName = 'INASSEGNI'
      Origin = '"CASSA_TOT_AZZ"."INASSEGNI"'
      currency = True
    end
    object IBDataSet1INBUONI: TFloatField
      FieldName = 'INBUONI'
      Origin = '"CASSA_TOT_AZZ"."INBUONI"'
      currency = True
    end
    object IBDataSet1CARTE_CREDITO: TFloatField
      FieldName = 'CARTE_CREDITO'
      Origin = '"CASSA_TOT_AZZ"."CARTE_CREDITO"'
      currency = True
    end
    object IBDataSet1RICEVUTE_FISCALI: TFloatField
      FieldName = 'RICEVUTE_FISCALI'
      Origin = '"CASSA_TOT_AZZ"."RICEVUTE_FISCALI"'
      currency = True
    end
    object IBDataSet1FATTURE_RICEVUTE: TFloatField
      FieldName = 'FATTURE_RICEVUTE'
      Origin = '"CASSA_TOT_AZZ"."FATTURE_RICEVUTE"'
      currency = True
    end
    object IBDataSet1FATTURE: TFloatField
      FieldName = 'FATTURE'
      Origin = '"CASSA_TOT_AZZ"."FATTURE"'
      currency = True
    end
    object IBDataSet1PRELIEVI: TFloatField
      FieldName = 'PRELIEVI'
      Origin = '"CASSA_TOT_AZZ"."PRELIEVI"'
      currency = True
    end
    object IBDataSet1VERSAMENTI: TFloatField
      FieldName = 'VERSAMENTI'
      Origin = '"CASSA_TOT_AZZ"."VERSAMENTI"'
      currency = True
    end
    object IBDataSet1FONDO_CASSA: TFloatField
      FieldName = 'FONDO_CASSA'
      Origin = '"CASSA_TOT_AZZ"."FONDO_CASSA"'
      currency = True
    end
    object IBDataSet1ACC1: TFloatField
      FieldName = 'ACC1'
      Origin = '"CASSA_TOT_AZZ"."ACC1"'
      currency = True
    end
    object IBDataSet1ACC2: TFloatField
      FieldName = 'ACC2'
      Origin = '"CASSA_TOT_AZZ"."ACC2"'
      currency = True
    end
    object IBDataSet1ACC_CHIP_CARD: TFloatField
      FieldName = 'ACC_CHIP_CARD'
      Origin = '"CASSA_TOT_AZZ"."ACC_CHIP_CARD"'
      currency = True
    end
    object IBDataSet1UF4: TFloatField
      FieldName = 'UF4'
      Origin = '"CASSA_TOT_AZZ"."UF4"'
      currency = True
    end
    object IBDataSet1SCONTRINI: TFloatField
      FieldName = 'SCONTRINI'
      Origin = '"CASSA_TOT_AZZ"."SCONTRINI"'
      currency = True
    end
    object IBDataSet1CLIENTI_SERVITI: TFloatField
      FieldName = 'CLIENTI_SERVITI'
      Origin = '"CASSA_TOT_AZZ"."CLIENTI_SERVITI"'
    end
    object IBDataSet1RESI: TFloatField
      FieldName = 'RESI'
      Origin = '"CASSA_TOT_AZZ"."RESI"'
      currency = True
    end
    object IBDataSet1CORREZIONI: TFloatField
      FieldName = 'CORREZIONI'
      Origin = '"CASSA_TOT_AZZ"."CORREZIONI"'
      currency = True
    end
    object IBDataSet1SCONTI: TFloatField
      FieldName = 'SCONTI'
      Origin = '"CASSA_TOT_AZZ"."SCONTI"'
      currency = True
    end
    object IBDataSet1MAGGIORAZIONI: TFloatField
      FieldName = 'MAGGIORAZIONI'
      Origin = '"CASSA_TOT_AZZ"."MAGGIORAZIONI"'
      currency = True
    end
    object IBDataSet1TOTAL_VOIDS: TFloatField
      FieldName = 'TOTAL_VOIDS'
      Origin = '"CASSA_TOT_AZZ"."TOTAL_VOIDS"'
      currency = True
    end
    object IBDataSet1STORNI: TFloatField
      FieldName = 'STORNI'
      Origin = '"CASSA_TOT_AZZ"."STORNI"'
      currency = True
    end
    object IBDataSet1UF5: TFloatField
      FieldName = 'UF5'
      Origin = '"CASSA_TOT_AZZ"."UF5"'
      currency = True
    end
    object IBDataSet1NON_RISCOSSI: TFloatField
      FieldName = 'NON_RISCOSSI'
      Origin = '"CASSA_TOT_AZZ"."NON_RISCOSSI"'
      currency = True
    end
    object IBDataSet1SC_ASS_ITEM: TFloatField
      FieldName = 'SC_ASS_ITEM'
      Origin = '"CASSA_TOT_AZZ"."SC_ASS_ITEM"'
      currency = True
    end
    object IBDataSet1PERCA_SU_ITEM: TFloatField
      FieldName = 'PERCA_SU_ITEM'
      Origin = '"CASSA_TOT_AZZ"."PERCA_SU_ITEM"'
      currency = True
    end
    object IBDataSet1PERCB_SU_ITEM: TFloatField
      FieldName = 'PERCB_SU_ITEM'
      Origin = '"CASSA_TOT_AZZ"."PERCB_SU_ITEM"'
      currency = True
    end
    object IBDataSet1SCONTI_SUBT: TFloatField
      FieldName = 'SCONTI_SUBT'
      Origin = '"CASSA_TOT_AZZ"."SCONTI_SUBT"'
      currency = True
    end
    object IBDataSet1PERCA_SUBTOT: TFloatField
      FieldName = 'PERCA_SUBTOT'
      Origin = '"CASSA_TOT_AZZ"."PERCA_SUBTOT"'
      currency = True
    end
    object IBDataSet1PERCB_SUBTOT: TFloatField
      FieldName = 'PERCB_SUBTOT'
      Origin = '"CASSA_TOT_AZZ"."PERCB_SUBTOT"'
      currency = True
    end
    object IBDataSet1MAGG_ITEM: TFloatField
      FieldName = 'MAGG_ITEM'
      Origin = '"CASSA_TOT_AZZ"."MAGG_ITEM"'
      currency = True
    end
    object IBDataSet1MAGG_SUBT: TFloatField
      FieldName = 'MAGG_SUBT'
      Origin = '"CASSA_TOT_AZZ"."MAGG_SUBT"'
      currency = True
    end
    object IBDataSet1UF6: TFloatField
      FieldName = 'UF6'
      Origin = '"CASSA_TOT_AZZ"."UF6"'
      currency = True
    end
    object IBDataSet1TOT_RESTI: TFloatField
      FieldName = 'TOT_RESTI'
      Origin = '"CASSA_TOT_AZZ"."TOT_RESTI"'
      currency = True
    end
    object IBDataSet1ENTRANCE_TICKETS: TFloatField
      FieldName = 'ENTRANCE_TICKETS'
      Origin = '"CASSA_TOT_AZZ"."ENTRANCE_TICKETS"'
      currency = True
    end
    object IBDataSet1UF7: TFloatField
      FieldName = 'UF7'
      Origin = '"CASSA_TOT_AZZ"."UF7"'
    end
    object IBDataSet1TAVOLI_ANNULLATI: TFloatField
      FieldName = 'TAVOLI_ANNULLATI'
      Origin = '"CASSA_TOT_AZZ"."TAVOLI_ANNULLATI"'
    end
    object IBDataSet1TOT_COMM_OPERAT: TFloatField
      FieldName = 'TOT_COMM_OPERAT'
      Origin = '"CASSA_TOT_AZZ"."TOT_COMM_OPERAT"'
    end
    object IBDataSet1NUMCASSA: TIntegerField
      FieldName = 'NUMCASSA'
      Origin = '"CASSA_TOT_AZZ"."NUMCASSA"'
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 408
    Top = 64
    object RxMemoryData1Field1: TStringField
      FieldName = '1'
    end
    object RxMemoryData1Field2: TFloatField
      FieldName = '2'
    end
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 440
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    Left = 688
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = IBDataSet1
    Left = 752
    Top = 40
  end
  object DBSumList1: TDBSumList
    SumCollection = <
      item
        GroupOperation = goSum
        FieldName = 'CONTANTE'
      end
      item
        GroupOperation = goSum
        FieldName = 'CREDITI'
      end
      item
        GroupOperation = goSum
        FieldName = 'ASSEGNI'
      end
      item
        GroupOperation = goSum
        FieldName = 'BUONI'
      end
      item
        GroupOperation = goSum
        FieldName = 'CARTACRED'
      end
      item
        GroupOperation = goSum
        FieldName = 'SCONTRINI'
      end
      item
        GroupOperation = goSum
        FieldName = 'CHIP_CARD'
      end
      item
        GroupOperation = goSum
        FieldName = 'CLIENTI_SERVITI'
      end
      item
        GroupOperation = goSum
        FieldName = 'PRELIEVI'
      end
      item
        GroupOperation = goSum
        FieldName = 'VERSAMENTI'
      end
      item
        GroupOperation = goSum
        FieldName = 'FONDO_CASSA'
      end
      item
        GroupOperation = goSum
        FieldName = 'RESI'
      end
      item
        GroupOperation = goSum
        FieldName = 'SCONTI'
      end
      item
        GroupOperation = goSum
        FieldName = 'STORNI'
      end>
    DataSet = IBDataSet1
    SumListChanged = DBSumList1SumListChanged
    Left = 216
    Top = 144
  end
  object IBDataSet2: TIBDataSet
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    DeleteSQL.Strings = (
      'delete from MOVIM_CASSA'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    InsertSQL.Strings = (
      'insert into MOVIM_CASSA'
      '  (CODICE, DATA_MOV, NUMCASSA, PK_CODICE, QTA, VALORE)'
      'values'
      '  (:CODICE, :DATA_MOV, :NUMCASSA, :PK_CODICE, :QTA, :VALORE)')
    RefreshSQL.Strings = (
      'Select '
      '  PK_CODICE,'
      '  DATA_MOV,'
      '  NUMCASSA,'
      '  QTA,'
      '  VALORE,'
      '  CODICE'
      'from MOVIM_CASSA '
      'where'
      '  PK_CODICE = :PK_CODICE')
    SelectSQL.Strings = (
      'select  * from MOVIM_CASSA'
      'join tab_Articoli on'
      'MOVIM_CASSA.codice=tab_articoli.codice_articolo'
      'order by PK_CODICE,DATA_MOV,NUMCASSA')
    ModifySQL.Strings = (
      'update MOVIM_CASSA'
      'set'
      '  CODICE = :CODICE,'
      '  DATA_MOV = :DATA_MOV,'
      '  NUMCASSA = :NUMCASSA,'
      '  PK_CODICE = :PK_CODICE,'
      '  QTA = :QTA,'
      '  VALORE = :VALORE'
      'where'
      '  PK_CODICE = :OLD_PK_CODICE')
    GeneratorField.Field = 'PK_CODICE'
    GeneratorField.Generator = 'GEN_MOVIM_CASSA'
    Left = 472
    Top = 48
    object IBDataSet2PK_CODICE: TIntegerField
      FieldName = 'PK_CODICE'
      Origin = '"MOVIM_CASSA"."PK_CODICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet2DATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"MOVIM_CASSA"."DATA_MOV"'
    end
    object IBDataSet2NUMCASSA: TIntegerField
      FieldName = 'NUMCASSA'
      Origin = '"MOVIM_CASSA"."NUMCASSA"'
    end
    object IBDataSet2QTA: TFloatField
      FieldName = 'QTA'
      Origin = '"MOVIM_CASSA"."QTA"'
    end
    object IBDataSet2VALORE: TFloatField
      FieldName = 'VALORE'
      Origin = '"MOVIM_CASSA"."VALORE"'
      currency = True
    end
    object IBDataSet2DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_ARTICOLI"."DESCR"'
      Size = 100
    end
    object IBDataSet2PASSATO: TIBStringField
      FieldName = 'PASSATO'
      Origin = '"MOVIM_CASSA"."PASSATO"'
      Size = 1
    end
    object IBDataSet2CODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = '"MOVIM_CASSA"."CODICE"'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBDataSet2
    Left = 504
    Top = 48
  end
  object DataSource4: TDataSource
    DataSet = IBQuery2
    Left = 192
    Top = 64
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      
        'select CODICE,SUM(QTA) as F_1 ,SUM(VALORE) as F_2  from MOVIM_CA' +
        'SSA'
      'GROUP BY CODICE'
      'order by CODICE')
    Left = 160
    Top = 64
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      ProviderFlags = []
    end
    object IBQuery2F_1: TFloatField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery2F_2: TFloatField
      FieldName = 'F_2'
      ProviderFlags = []
      currency = True
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from  movim_cassa'
      'order by PK_CODICE,DATA_MOV,NUMCASSA')
    Left = 64
    Top = 120
    object ADOQuery2PK_CODICE: TAutoIncField
      FieldName = 'PK_CODICE'
      ReadOnly = True
    end
    object ADOQuery2DATA_MOV: TDateTimeField
      FieldName = 'DATA_MOV'
    end
    object ADOQuery2NUMCASSA: TSmallintField
      FieldName = 'NUMCASSA'
    end
    object ADOQuery2QTA: TBCDField
      FieldName = 'QTA'
      Precision = 18
      Size = 0
    end
    object ADOQuery2VALORE: TBCDField
      FieldName = 'VALORE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery2CODICE: TWideStringField
      FieldName = 'CODICE'
    end
    object ADOQuery2PASSATO: TWideStringField
      FieldName = 'PASSATO'
      Size = 1
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from CASSA_TOT_AZZ '
      'order by pk_codice,DATA_MOV')
    Left = 32
    Top = 120
    object ADOQuery1PK_CODICE: TAutoIncField
      FieldName = 'PK_CODICE'
      ReadOnly = True
    end
    object ADOQuery1DATA_MOV: TDateTimeField
      FieldName = 'DATA_MOV'
    end
    object ADOQuery1CONTANTE: TBCDField
      FieldName = 'CONTANTE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CREDITI: TBCDField
      FieldName = 'CREDITI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1ASSEGNI: TBCDField
      FieldName = 'ASSEGNI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1BUONI: TBCDField
      FieldName = 'BUONI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CARTACRED: TBCDField
      FieldName = 'CARTACRED'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1VALUTA1: TBCDField
      FieldName = 'VALUTA1'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1VALUTA2: TBCDField
      FieldName = 'VALUTA2'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1VALUTA3: TBCDField
      FieldName = 'VALUTA3'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF1: TBCDField
      FieldName = 'UF1'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF2: TBCDField
      FieldName = 'UF2'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF3: TBCDField
      FieldName = 'UF3'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CHIP_CARD: TBCDField
      FieldName = 'CHIP_CARD'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1NETTE: TBCDField
      FieldName = 'NETTE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1LORDE: TBCDField
      FieldName = 'LORDE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CONTANTI: TBCDField
      FieldName = 'CONTANTI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CREDITO: TBCDField
      FieldName = 'CREDITO'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1INASSEGNI: TBCDField
      FieldName = 'INASSEGNI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1INBUONI: TBCDField
      FieldName = 'INBUONI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CARTE_CREDITO: TBCDField
      FieldName = 'CARTE_CREDITO'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1RICEVUTE_FISCALI: TBCDField
      FieldName = 'RICEVUTE_FISCALI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1FATTURE_RICEVUTE: TBCDField
      FieldName = 'FATTURE_RICEVUTE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1FATTURE: TBCDField
      FieldName = 'FATTURE'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1PRELIEVI: TBCDField
      FieldName = 'PRELIEVI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1VERSAMENTI: TBCDField
      FieldName = 'VERSAMENTI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1FONDO_CASSA: TBCDField
      FieldName = 'FONDO_CASSA'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1ACC1: TBCDField
      FieldName = 'ACC1'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1ACC2: TBCDField
      FieldName = 'ACC2'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1ACC_CHIP_CARD: TBCDField
      FieldName = 'ACC_CHIP_CARD'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF4: TBCDField
      FieldName = 'UF4'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1SCONTRINI: TBCDField
      FieldName = 'SCONTRINI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CLIENTI_SERVITI: TBCDField
      FieldName = 'CLIENTI_SERVITI'
      Precision = 18
      Size = 0
    end
    object ADOQuery1RESI: TBCDField
      FieldName = 'RESI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1CORREZIONI: TBCDField
      FieldName = 'CORREZIONI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1SCONTI: TBCDField
      FieldName = 'SCONTI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1MAGGIORAZIONI: TBCDField
      FieldName = 'MAGGIORAZIONI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1TOTAL_VOIDS: TBCDField
      FieldName = 'TOTAL_VOIDS'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1STORNI: TBCDField
      FieldName = 'STORNI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF5: TBCDField
      FieldName = 'UF5'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1NON_RISCOSSI: TBCDField
      FieldName = 'NON_RISCOSSI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1SC_ASS_ITEM: TBCDField
      FieldName = 'SC_ASS_ITEM'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1PERCA_SU_ITEM: TBCDField
      FieldName = 'PERCA_SU_ITEM'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1PERCB_SU_ITEM: TBCDField
      FieldName = 'PERCB_SU_ITEM'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1SCONTI_SUBT: TBCDField
      FieldName = 'SCONTI_SUBT'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1PERCA_SUBTOT: TBCDField
      FieldName = 'PERCA_SUBTOT'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1PERCB_SUBTOT: TBCDField
      FieldName = 'PERCB_SUBTOT'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1MAGG_ITEM: TBCDField
      FieldName = 'MAGG_ITEM'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1MAGG_SUBT: TBCDField
      FieldName = 'MAGG_SUBT'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF6: TBCDField
      FieldName = 'UF6'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1TOT_RESTI: TBCDField
      FieldName = 'TOT_RESTI'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1ENTRANCE_TICKETS: TBCDField
      FieldName = 'ENTRANCE_TICKETS'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1UF7: TBCDField
      FieldName = 'UF7'
      currency = True
      Precision = 18
      Size = 0
    end
    object ADOQuery1TAVOLI_ANNULLATI: TBCDField
      FieldName = 'TAVOLI_ANNULLATI'
      Precision = 18
      Size = 0
    end
    object ADOQuery1TOT_COMM_OPERAT: TBCDField
      FieldName = 'TOT_COMM_OPERAT'
      Precision = 18
      Size = 0
    end
    object ADOQuery1NUMCASSA: TBCDField
      FieldName = 'NUMCASSA'
      Precision = 18
      Size = 0
    end
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CODICE,SUM(QTA) as F_1,SUM(VALORE) as F_2 from MOVIM_CASS' +
        'A'
      'GROUP BY CODICE'
      'order by CODICE')
    Left = 96
    Top = 120
    object ADOQuery3CODICE: TWideStringField
      FieldName = 'CODICE'
    end
    object ADOQuery3Expr1001: TBCDField
      FieldName = 'F_1'
      Precision = 28
      Size = 0
    end
    object ADOQuery3Expr1002: TBCDField
      FieldName = 'F_2'
      currency = True
      Precision = 28
      Size = 0
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\projects\ar_inf\' +
      'geari\dcu\ECR_FILE_EXT\DB_CASSA.mdb;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 120
  end
  object IBQuery5: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from TAB_CODICI_AGGIUNTIVI'
      'where codice_Aggiuntivo=:a')
    Left = 688
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        ParamType = ptUnknown
      end>
    object IBQuery5CODICE_ARTICOLO: TIBStringField
      FieldName = 'CODICE_ARTICOLO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_ARTICOLO"'
    end
    object IBQuery5CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CLI_FOR_ID"'
    end
    object IBQuery5CODICE_AGGIUNTIVO: TIBStringField
      FieldName = 'CODICE_AGGIUNTIVO'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."CODICE_AGGIUNTIVO"'
      Size = 50
    end
    object IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField
      FieldName = 'TIPO_CODICE_AGGIUNTIVO_ID'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."TIPO_CODICE_AGGIUNTIVO_ID"'
    end
    object IBQuery5QUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."QUANTITA"'
    end
    object IBQuery5DESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CODICI_AGGIUNTIVI"."DESCR"'
      Size = 50
    end
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODART'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from tab_articoli'
      'where codice_articolo =:CODART')
    Left = 120
    Top = 136
    object WideStringField1: TWideStringField
      FieldName = 'CODICE'
    end
    object BCDField1: TBCDField
      FieldName = 'F_1'
      Precision = 28
      Size = 0
    end
    object BCDField2: TBCDField
      FieldName = 'F_2'
      currency = True
      Precision = 28
      Size = 0
    end
  end
end
