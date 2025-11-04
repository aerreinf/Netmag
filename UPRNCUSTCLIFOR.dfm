object fPrnCustCliFor: TfPrnCustCliFor
  Left = 178
  Top = 144
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Stampa personalizzata per Clienti o Fornitori'
  ClientHeight = 523
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paSeleziona: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 523
    Align = alClient
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object laAgente: TLabel
      Left = 82
      Top = 8
      Width = 39
      Height = 15
      Caption = 'Agente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 51
      Top = 28
      Width = 70
      Height = 15
      Caption = 'Capo Gruppo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 85
      Top = 48
      Width = 36
      Height = 15
      Caption = 'R.C.G.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 64
      Top = 68
      Width = 57
      Height = 15
      Caption = 'Capo Area'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCat: TLabel
      Left = 63
      Top = 90
      Width = 55
      Height = 13
      Caption = 'Categoria'
    end
    object gbCliFor: TGroupBox
      Left = 576
      Top = 192
      Width = 65
      Height = 17
      Caption = 'Cliente'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object shCliForBegin: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Brush.Color = clNavy
        Shape = stCircle
      end
      object Label1: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object laCntrSelCliFor: TLabel
        Left = 80
        Top = 72
        Width = 85
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object rbCliForTutti: TRadioButton
        Left = 8
        Top = 20
        Width = 53
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbCliForTuttiClick
      end
      object rbCliForNonTutti: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = rbCliForNonTuttiClick
      end
      object bbSelectCliFor: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = bbSelectCliForClick
      end
    end
    object gbZone: TGroupBox
      Left = 559
      Top = 148
      Width = 92
      Height = 17
      Caption = '&Zone'
      TabOrder = 1
      object shZoneOn: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Brush.Color = clNavy
        Shape = stCircle
      end
      object Label2: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object laCntrSelZone: TLabel
        Left = 72
        Top = 72
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object rbZoneTutti: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutte'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbZoneTuttiClick
      end
      object rbZoneNonTutti: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = rbZoneNonTuttiClick
      end
      object bbSelZone: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = bbSelZoneClick
      end
    end
    object gbAgenti: TGroupBox
      Left = 559
      Top = 168
      Width = 92
      Height = 21
      Caption = '&Agenti'
      TabOrder = 2
      object shAgentiOn: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Hint = 'Scegli'
        Brush.Color = clNavy
        ParentShowHint = False
        Shape = stCircle
        ShowHint = True
      end
      object Label3: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object laCntrSelAg: TLabel
        Left = 80
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object rbAgentiTutti: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbAgentiTuttiClick
      end
      object rbAgentiNonTutti: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = rbAgentiNonTuttiClick
      end
      object bbSelAgenti: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = bbSelAgentiClick
      end
    end
    object gbRaggrupp: TGroupBox
      Left = 559
      Top = 120
      Width = 92
      Height = 21
      Caption = 'Categorie'
      TabOrder = 3
      object shRaggruppOn: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Brush.Color = clNavy
        Shape = stCircle
      end
      object laCntrSelRag: TLabel
        Left = 80
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object Label7: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object rbRaggruppTutti: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutte'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbRaggruppTuttiClick
      end
      object rbRaggruppNonTutti: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = rbRaggruppNonTuttiClick
      end
      object bbSelRag: TBitBtn
        Left = 80
        Top = 40
        Width = 21
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = bbSelRagClick
      end
    end
    object bbRiepilogo: TBitBtn
      Left = 4
      Top = 188
      Width = 75
      Height = 25
      Caption = '&Riepilogo'
      TabOrder = 4
      OnClick = bbRiepilogoClick
    end
    object bbDettagliata: TBitBtn
      Left = 85
      Top = 188
      Width = 75
      Height = 25
      Caption = '&Dettagliata'
      TabOrder = 5
      OnClick = bbDettagliataClick
    end
    object bbEsci: TBitBtn
      Left = 468
      Top = 188
      Width = 75
      Height = 25
      Caption = 'E&sci'
      TabOrder = 6
      OnClick = bbEsciClick
    end
    object gbPagam: TGroupBox
      Left = 559
      Top = 100
      Width = 92
      Height = 17
      Caption = '&Pagamenti'
      TabOrder = 7
      object shPagamOn: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Brush.Color = clNavy
        Shape = stCircle
      end
      object laCntrSelPag: TLabel
        Left = 80
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object Label5: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object rbPagTutti: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbPagTuttiClick
      end
      object rbPagamNonTutti: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = rbPagamNonTuttiClick
      end
      object bbSelPag: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = bbSelPagClick
      end
    end
    object gbCApoArea: TGroupBox
      Left = 558
      Top = 68
      Width = 92
      Height = 17
      Caption = 'Capo Area'
      TabOrder = 8
      object Shape1: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Hint = 'Scegli'
        Brush.Color = clNavy
        ParentShowHint = False
        Shape = stCircle
        ShowHint = True
      end
      object Label4: TLabel
        Left = 32
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object Label6: TLabel
        Left = 80
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object RadioButton1: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = RadioButton2Click
      end
      object BitBtn1: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
        OnClick = BitBtn1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 558
      Top = 84
      Width = 92
      Height = 17
      Caption = 'Capo Gruppo'
      TabOrder = 9
      object Shape2: TShape
        Left = 8
        Top = 68
        Width = 13
        Height = 21
        Hint = 'Scegli'
        Brush.Color = clNavy
        ParentShowHint = False
        Shape = stCircle
        ShowHint = True
      end
      object Label8: TLabel
        Left = 24
        Top = 72
        Width = 39
        Height = 13
        Caption = 'scelto:'
      end
      object Label9: TLabel
        Left = 64
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object RadioButton3: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Tutti'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton4: TRadioButton
        Left = 8
        Top = 44
        Width = 61
        Height = 17
        Caption = 'Scegli'
        TabOrder = 1
        OnClick = RadioButton2Click
      end
      object BitBtn2: TBitBtn
        Left = 76
        Top = 40
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 2
        Visible = False
      end
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 142
      Top = 66
      Width = 89
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 10
    end
    object RxDBLookupCombo11: TRxDBLookupCombo
      Left = 142
      Top = 46
      Width = 89
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource4
      ParentFont = False
      TabOrder = 11
    end
    object RxDBLookupCombo9: TRxDBLookupCombo
      Left = 142
      Top = 26
      Width = 89
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 12
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 142
      Top = 6
      Width = 89
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'CODICE'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 13
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 246
      Top = 6
      Width = 307
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource3
      ParentFont = False
      TabOrder = 14
    end
    object RxDBLookupCombo10: TRxDBLookupCombo
      Left = 246
      Top = 26
      Width = 307
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource1
      ParentFont = False
      TabOrder = 15
    end
    object RxDBLookupCombo12: TRxDBLookupCombo
      Left = 246
      Top = 46
      Width = 307
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource4
      ParentFont = False
      TabOrder = 16
    end
    object RxDBLookupCombo8: TRxDBLookupCombo
      Left = 246
      Top = 66
      Width = 307
      Height = 19
      DropDownCount = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODICE'
      LookupDisplay = 'DESCR'
      LookupSource = DataSource2
      ParentFont = False
      TabOrder = 17
    end
    object LookCat: TDBLookupComboBox
      Left = 142
      Top = 87
      Width = 88
      Height = 21
      KeyField = 'CODICE'
      ListField = 'CODICE'
      ListSource = dsoCatCli
      TabOrder = 18
    end
    object LookCatDescr: TDBLookupComboBox
      Left = 246
      Top = 87
      Width = 307
      Height = 21
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoCatCli
      TabOrder = 19
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 653
      Height = 521
      Align = alClient
      BevelOuter = bvLowered
      Color = 13628881
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      object Label11: TLabel
        Left = 8
        Top = 422
        Width = 54
        Height = 13
        Caption = 'Oggetto :'
      end
      object Label13: TLabel
        Left = 8
        Top = 440
        Width = 41
        Height = 13
        Caption = 'Testo :'
      end
      object Label14: TLabel
        Left = 245
        Top = 486
        Width = 210
        Height = 13
        Caption = 'Utilizzare Client di posta predefinito :'
      end
      object Label16: TLabel
        Left = 376
        Top = 502
        Width = 79
        Height = 13
        Caption = 'Invio Diretto :'
      end
      object GroupBox2: TGroupBox
        Left = 576
        Top = 192
        Width = 65
        Height = 17
        Caption = 'Cliente'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
        object Shape3: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Brush.Color = clNavy
          Shape = stCircle
        end
        object Label18: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object Label19: TLabel
          Left = 80
          Top = 72
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object RadioButton5: TRadioButton
          Left = 8
          Top = 20
          Width = 53
          Height = 17
          Caption = 'Tutti'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbCliForTuttiClick
        end
        object RadioButton6: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = rbCliForNonTuttiClick
        end
        object BitBtn3: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = bbSelectCliForClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 559
        Top = 148
        Width = 92
        Height = 17
        Caption = '&Zone'
        TabOrder = 1
        Visible = False
        object Shape4: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Brush.Color = clNavy
          Shape = stCircle
        end
        object Label20: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object Label21: TLabel
          Left = 72
          Top = 72
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object RadioButton7: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutte'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbZoneTuttiClick
        end
        object RadioButton8: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = rbZoneNonTuttiClick
        end
        object BitBtn4: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = bbSelZoneClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 559
        Top = 168
        Width = 92
        Height = 21
        Caption = '&Agenti'
        TabOrder = 2
        Visible = False
        object Shape5: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Hint = 'Scegli'
          Brush.Color = clNavy
          ParentShowHint = False
          Shape = stCircle
          ShowHint = True
        end
        object Label22: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object Label23: TLabel
          Left = 80
          Top = 72
          Width = 33
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object RadioButton9: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutti'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbAgentiTuttiClick
        end
        object RadioButton10: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = rbAgentiNonTuttiClick
        end
        object BitBtn5: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = bbSelAgentiClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 559
        Top = 120
        Width = 92
        Height = 21
        Caption = 'Categorie'
        TabOrder = 3
        Visible = False
        object Shape6: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Brush.Color = clNavy
          Shape = stCircle
        end
        object Label24: TLabel
          Left = 80
          Top = 72
          Width = 33
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object Label25: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object RadioButton11: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutte'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbRaggruppTuttiClick
        end
        object RadioButton12: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = rbRaggruppNonTuttiClick
        end
        object BitBtn6: TBitBtn
          Left = 80
          Top = 40
          Width = 21
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = bbSelRagClick
        end
      end
      object BitBtn7: TBitBtn
        Left = 284
        Top = 76
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Riepilogo'
        PopupMenu = PopupMenu1
        TabOrder = 4
        OnClick = bbRiepilogoClick
      end
      object BitBtn8: TBitBtn
        Left = 285
        Top = 44
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Dettagliata'
        PopupMenu = PopupMenu1
        TabOrder = 5
        OnClick = bbDettagliataClick
      end
      object BitBtn9: TBitBtn
        Left = 284
        Top = 172
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'E&sci'
        TabOrder = 6
        OnClick = bbEsciClick
      end
      object GroupBox6: TGroupBox
        Left = 559
        Top = 100
        Width = 92
        Height = 17
        Caption = '&Pagamenti'
        TabOrder = 7
        Visible = False
        object Shape7: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Brush.Color = clNavy
          Shape = stCircle
        end
        object Label26: TLabel
          Left = 80
          Top = 72
          Width = 33
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object Label27: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object RadioButton13: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutti'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbPagTuttiClick
        end
        object RadioButton14: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = rbPagamNonTuttiClick
        end
        object BitBtn10: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = bbSelPagClick
        end
      end
      object GroupBox7: TGroupBox
        Left = 558
        Top = 68
        Width = 92
        Height = 17
        Caption = 'Capo Area'
        TabOrder = 8
        Visible = False
        object Shape8: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Hint = 'Scegli'
          Brush.Color = clNavy
          ParentShowHint = False
          Shape = stCircle
          ShowHint = True
        end
        object Label28: TLabel
          Left = 32
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object Label29: TLabel
          Left = 80
          Top = 72
          Width = 33
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object RadioButton15: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutti'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton16: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object BitBtn11: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = BitBtn1Click
        end
      end
      object GroupBox8: TGroupBox
        Left = 558
        Top = 84
        Width = 92
        Height = 17
        Caption = 'Capo Gruppo'
        TabOrder = 9
        Visible = False
        object Shape9: TShape
          Left = 8
          Top = 68
          Width = 13
          Height = 21
          Hint = 'Scegli'
          Brush.Color = clNavy
          ParentShowHint = False
          Shape = stCircle
          ShowHint = True
        end
        object Label30: TLabel
          Left = 24
          Top = 72
          Width = 39
          Height = 13
          Caption = 'scelto:'
        end
        object Label31: TLabel
          Left = 64
          Top = 72
          Width = 33
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
        object RadioButton17: TRadioButton
          Left = 8
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Tutti'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton18: TRadioButton
          Left = 8
          Top = 44
          Width = 61
          Height = 17
          Caption = 'Scegli'
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object BitBtn12: TBitBtn
          Left = 76
          Top = 40
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 2
          Visible = False
        end
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 373
        Top = 57
        Width = 73
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource2
        ParentFont = False
        TabOrder = 10
        OnChange = RxDBLookupCombo1Change
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 4
        Top = 58
        Width = 73
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource4
        ParentFont = False
        TabOrder = 11
        OnChange = RxDBLookupCombo2Change
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 373
        Top = 18
        Width = 73
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource1
        ParentFont = False
        TabOrder = 12
        OnChange = RxDBLookupCombo3Change
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 4
        Top = 19
        Width = 73
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'CODICE'
        LookupSource = DataSource3
        ParentFont = False
        TabOrder = 13
        OnChange = RxDBLookupCombo4Change
      end
      object RxDBLookupCombo13: TRxDBLookupCombo
        Left = 80
        Top = 19
        Width = 189
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource3
        ParentFont = False
        TabOrder = 14
        OnChange = RxDBLookupCombo13Change
      end
      object RxDBLookupCombo14: TRxDBLookupCombo
        Left = 453
        Top = 18
        Width = 189
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource1
        ParentFont = False
        TabOrder = 15
        OnChange = RxDBLookupCombo14Change
      end
      object RxDBLookupCombo15: TRxDBLookupCombo
        Left = 80
        Top = 58
        Width = 189
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource4
        ParentFont = False
        TabOrder = 16
        OnChange = RxDBLookupCombo15Change
      end
      object RxDBLookupCombo16: TRxDBLookupCombo
        Left = 453
        Top = 57
        Width = 189
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        LookupField = 'CODICE'
        LookupDisplay = 'DESCR'
        LookupSource = DataSource2
        ParentFont = False
        TabOrder = 17
        OnChange = RxDBLookupCombo16Change
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 4
        Top = 98
        Width = 72
        Height = 21
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoCatCli
        TabOrder = 18
        OnClick = DBLookupComboBox1Click
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 80
        Top = 98
        Width = 189
        Height = 21
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoCatCli
        TabOrder = 19
        OnClick = DBLookupComboBox2Click
      end
      object LookSottoZone: TDBLookupComboBox
        Left = 373
        Top = 95
        Width = 73
        Height = 21
        DataField = 'CODICE_SOTTO_ZONA_ID'
        KeyField = 'ID_CODICE_SOTTO_ZONE'
        ListField = 'ID_CODICE_SOTTO_ZONE'
        ListSource = dsoSottoZone
        TabOrder = 20
        OnClick = LookSottoZoneClick
      end
      object LookZone: TDBLookupComboBox
        Left = 4
        Top = 137
        Width = 72
        Height = 21
        DataField = 'CODICE_ZONA_ID'
        KeyField = 'ID_CODICE_ZONA'
        ListField = 'ID_CODICE_ZONA'
        ListSource = dsoZone
        TabOrder = 21
        OnClick = LookZoneClick
      end
      object LookZoneDescr: TDBLookupComboBox
        Left = 80
        Top = 137
        Width = 189
        Height = 21
        DataField = 'CODICE_ZONA_ID'
        KeyField = 'ID_CODICE_ZONA'
        ListField = 'DESCR'
        ListSource = dsoZone
        TabOrder = 22
        OnClick = LookZoneDescrClick
      end
      object LookSottoZoneDescr: TDBLookupComboBox
        Left = 453
        Top = 95
        Width = 189
        Height = 21
        DataField = 'CODICE_SOTTO_ZONA_ID'
        KeyField = 'ID_CODICE_SOTTO_ZONE'
        ListField = 'DESCR'
        ListSource = dsoSottoZone
        TabOrder = 23
        OnClick = LookSottoZoneDescrClick
      end
      object LookPaganebto: TDBLookupComboBox
        Left = 373
        Top = 133
        Width = 73
        Height = 21
        DataField = 'PAGAMENTO_ID'
        KeyField = 'ID_PAGAMENTO'
        ListField = 'ID_PAGAMENTO'
        ListSource = dsoPagamenti
        TabOrder = 24
        OnClick = LookPaganebtoClick
      end
      object LookPagamDescr: TDBLookupComboBox
        Left = 453
        Top = 133
        Width = 189
        Height = 21
        DataField = 'PAGAMENTO_ID'
        KeyField = 'ID_PAGAMENTO'
        ListField = 'DESCR'
        ListSource = dsoPagamenti
        TabOrder = 25
        OnClick = LookPagamDescrClick
      end
      object LookListino: TDBLookupComboBox
        Left = 4
        Top = 177
        Width = 71
        Height = 21
        DataField = 'CODICE_LISTINO'
        KeyField = 'CODICE'
        ListField = 'CODICE'
        ListSource = dsoListini
        TabOrder = 26
        OnClick = LookListinoClick
      end
      object LookListinoDescr: TDBLookupComboBox
        Left = 80
        Top = 177
        Width = 189
        Height = 21
        DataField = 'CODICE_LISTINO'
        KeyField = 'CODICE'
        ListField = 'DESCR'
        ListSource = dsoListini
        TabOrder = 27
        OnClick = LookListinoDescrClick
      end
      object CheckBox1: TCheckBox
        Left = 4
        Top = 1
        Width = 41
        Height = 17
        Caption = 'Ag.'
        TabOrder = 28
      end
      object CheckBox2: TCheckBox
        Left = 373
        Top = 1
        Width = 73
        Height = 17
        Caption = 'Capo Gr.'
        TabOrder = 29
      end
      object CheckBox3: TCheckBox
        Left = 4
        Top = 41
        Width = 62
        Height = 17
        Caption = 'R.C.G.'
        TabOrder = 30
      end
      object CheckBox4: TCheckBox
        Left = 373
        Top = 40
        Width = 97
        Height = 17
        Caption = 'Capo Area'
        TabOrder = 31
      end
      object CheckBox5: TCheckBox
        Left = 4
        Top = 80
        Width = 77
        Height = 17
        Caption = 'Categoria'
        TabOrder = 32
      end
      object CheckBox6: TCheckBox
        Left = 4
        Top = 119
        Width = 53
        Height = 17
        Caption = 'Zona'
        TabOrder = 33
      end
      object CheckBox7: TCheckBox
        Left = 373
        Top = 78
        Width = 97
        Height = 17
        Caption = 'Sottozona'
        TabOrder = 34
      end
      object CheckBox8: TCheckBox
        Left = 373
        Top = 116
        Width = 97
        Height = 17
        Caption = 'Pagamento'
        TabOrder = 35
      end
      object CheckBox9: TCheckBox
        Left = 4
        Top = 159
        Width = 62
        Height = 17
        Caption = 'Listino'
        TabOrder = 36
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 208
        Width = 645
        Height = 209
        Hint = 
          'Tenendo premuto il tasto CTRL si possono selezionare singoli cli' +
          'enti'
        DataSource = DataSource5
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 37
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLI_FOR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DENOMINAZIONE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDIRIZZO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMUNE_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARTITA_IVA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COGNOME'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ALTRO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FULL_NAME'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODICE_FISCALE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERSONA_FISICA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIANO_CONTI_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTO_CORRENTE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MONETA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGAMENTO_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODICE_ZONA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODICE_SOTTO_ZONA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA_CLIENTE_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROVVIGIONE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LINGUA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODICE_LISTINO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCONTO_TESTATA1'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCONTO_TESTATA2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEL1'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEL2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INTERNET'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_DI_NASCITA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SESSO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITOLO_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORTO_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIDO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABILITA_PARTITA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FATTURA_RIEPILOGATIVA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACCORPA_ARTICOLI'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IVA_SOSPESA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POS_RIF_BOLLE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODICE_IVA_ESENTE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RIP_RIF_BOLLE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESCLUDI_MESE1'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RIP_RIF_ORDINI'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESCLUDI_MESE2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_CONTO_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZIONE_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZIONE_DI_NASCITA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAGGRUPPAMENTO_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RISCHIO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GG_SCADENZA1'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GG_SCADENZA2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTROPARTITA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_CONTROPARTITA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERTIFICATO'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DENOMINAZIONE2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDIRIZZO2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALITA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMUNE_DI_NASCITA_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITOLO_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMNASC_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPNASC_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZNASC_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COM_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAP_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PR_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAB_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABI_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZ_DESCR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FASON'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTE'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CG'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CapoArea'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CapoGruppo'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Agente'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAB_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABI_ID'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD2'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CR'
            Title.Alignment = taCenter
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 64
        Top = 418
        Width = 585
        Height = 21
        TabOrder = 38
      end
      object Button1: TButton
        Left = 569
        Top = 501
        Width = 81
        Height = 15
        Cursor = crHandPoint
        Hint = 'Invio E-Mail a Clienti'
        Caption = 'Invia E- Mail'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 39
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 93
        Top = 498
        Width = 281
        Height = 21
        TabOrder = 40
      end
      object BitBtn14: TBitBtn
        Left = 284
        Top = 140
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Visualizza'
        PopupMenu = PopupMenu1
        TabOrder = 41
        OnClick = BitBtn14Click
      end
      object Button2: TButton
        Left = 124
        Top = 478
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = 'Invio E-Mail a Clienti Selezionati'
        Caption = 'Invia E- Mail Sel.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 42
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 460
        Top = 485
        Width = 105
        Height = 15
        Caption = 'Invia E- Mail Sel.'
        Enabled = False
        TabOrder = 43
      end
      object Button4: TButton
        Left = 569
        Top = 485
        Width = 81
        Height = 15
        Caption = 'Invia E- Mail'
        Enabled = False
        TabOrder = 44
      end
      object btnAttachment: TBitBtn
        Left = 2
        Top = 497
        Width = 89
        Height = 22
        Hint = 'Send a file as an attachment'
        Caption = 'Allega file'
        TabOrder = 45
        OnClick = btnAttachmentClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666660000006666668000866666660000006666680666086666660000006666
          6066666066666600000066666068086066666600000066666060606066666600
          0000666660606060666666000000666660606060666666000000666660606060
          6666660000006666606060606666660000006666606060606666660000006666
          6060606066666600000066666060606066666600000066666660666066666600
          0000666666606660666666000000666666606660666666000000666666660006
          666666000000666666666666666666000000}
      end
      object Memo1: TMemo
        Left = 64
        Top = 440
        Width = 585
        Height = 43
        TabOrder = 46
      end
      object Button5: TButton
        Left = 460
        Top = 501
        Width = 105
        Height = 15
        Cursor = crHandPoint
        Hint = 'Invio E-Mail a Clienti Selezionati'
        Caption = 'Invia E- Mail Sel.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 47
        OnClick = Button5Click
      end
      object Edit3: TEdit
        Left = 373
        Top = 168
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 48
        Text = 'EDIT3'
      end
      object CheckBox10: TCheckBox
        Left = 373
        Top = 150
        Width = 97
        Height = 17
        Caption = 'Comune'
        TabOrder = 49
      end
    end
  end
  object IBQuery3: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 0'
      'order by descr')
    Left = 560
    Top = 33
    object IBStringField1: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField2: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField4: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object FloatField1: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField2: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField2: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField3: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField3: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField4: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField5: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField6: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IntegerField2: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object IBQuery2: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 2'
      'order by descr')
    Left = 592
    Top = 33
    object IBQuery2CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery2DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery2CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery2PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery2IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery2TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery2CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery2TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery2TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery2TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery2TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery2CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery2CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery2TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object IBQuery4: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 3'
      'order by descr')
    Left = 528
    Top = 33
    object IBStringField7: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBStringField8: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBStringField9: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBStringField10: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object FloatField5: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object FloatField6: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object SmallintField4: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object SmallintField5: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object SmallintField6: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object FloatField7: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object FloatField8: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBStringField11: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBStringField12: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IntegerField4: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 528
    Top = 1
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 560
    Top = 1
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 624
    Top = 1
  end
  object IBQuery1: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'select * from tab_agenti'
      'where tipo_Ag = 1'
      'order by descr')
    Left = 624
    Top = 33
    object IBQuery1CODICE: TIBStringField
      FieldName = 'CODICE'
      Required = True
      Size = 4
    end
    object IBQuery1DESCR: TIBStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object IBQuery1CODICE_ZONA_ID: TIBStringField
      FieldName = 'CODICE_ZONA_ID'
      Size = 7
    end
    object IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField
      FieldName = 'CODICE_SOTTO_ZONA_ID'
      Size = 7
    end
    object IBQuery1PROVVIGIONE: TFloatField
      FieldName = 'PROVVIGIONE'
    end
    object IBQuery1IMPORTO_FISSO: TFloatField
      FieldName = 'IMPORTO_FISSO'
    end
    object IBQuery1TIPO_CLI_FOR: TSmallintField
      FieldName = 'TIPO_CLI_FOR'
    end
    object IBQuery1CLI_FOR_ID: TIntegerField
      FieldName = 'CLI_FOR_ID'
    end
    object IBQuery1TIPO_SOMMA_PRV: TSmallintField
      FieldName = 'TIPO_SOMMA_PRV'
    end
    object IBQuery1TIPO_PROVVIGIONE: TSmallintField
      FieldName = 'TIPO_PROVVIGIONE'
    end
    object IBQuery1TOTALE_FATTURATO: TFloatField
      FieldName = 'TOTALE_FATTURATO'
    end
    object IBQuery1TOTALE_PROVVIGIONE: TFloatField
      FieldName = 'TOTALE_PROVVIGIONE'
    end
    object IBQuery1CG: TIBStringField
      FieldName = 'CG'
      Size = 4
    end
    object IBQuery1CA: TIBStringField
      FieldName = 'CA'
      Size = 4
    end
    object IBQuery1TIPO_AG: TIntegerField
      FieldName = 'TIPO_AG'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 592
    Top = 1
  end
  object dsoCatCli: TDataSource
    DataSet = dmodAz.ibTab_Cat_Cli
    Left = 612
    Top = 58
  end
  object dsoZone: TDataSource
    DataSet = dmodAz.ibTab_Zone
    Left = 624
    Top = 74
  end
  object dsoSottoZone: TDataSource
    DataSet = dmodAz.ibTab_SottoZone
    Left = 588
    Top = 98
  end
  object dsoPagamenti: TDataSource
    DataSet = dmodAz.ibTab_Pagamenti
    Left = 612
    Top = 105
  end
  object dsoListini: TDataSource
    DataSet = dmodAz.ibTab_Listino
    Left = 584
    Top = 130
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 8
    object Stampe1: TMenuItem
      Caption = 'Stampe'
      OnClick = Stampe1Click
    end
  end
  object DataSource5: TDataSource
    DataSet = dmodAz.ibqStamCli
    Left = 433
    Top = 217
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = 'mail.libero.it'
    Port = 25
    AuthenticationType = atNone
    Left = 361
    Top = 369
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 393
    Top = 369
  end
  object IdMailBox1: TIdMailBox
    Left = 425
    Top = 369
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 457
    Top = 369
  end
  object OpenDialog1: TOpenDialog
    Left = 272
    Top = 368
  end
end
