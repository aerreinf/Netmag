object fPiaContiDB: TfPiaContiDB
  Left = 146
  Top = 96
  BorderStyle = bsDialog
  Caption = 'Piano dei Conti'
  ClientHeight = 233
  ClientWidth = 581
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
    Width = 581
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnPianoDeiConti: TDBNavigator
      Left = 8
      Top = 8
      Width = 224
      Height = 25
      DataSource = dmodAz.dsoTab_Piano_Conti
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
      OnClick = dbnPianoDeiContiClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 581
    Height = 192
    Align = alClient
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object laDescr: TLabel
      Left = 200
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Descrizione'
    end
    object Label1: TLabel
      Left = 100
      Top = 28
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label2: TLabel
      Left = 48
      Top = 28
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label3: TLabel
      Left = 172
      Top = 28
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 20
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Grp.'
    end
    object Label5: TLabel
      Left = 68
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Conto'
    end
    object Label6: TLabel
      Left = 124
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Sott.'
    end
    object laIndeduc: TLabel
      Left = 28
      Top = 156
      Width = 132
      Height = 13
      Caption = 'Percentuale di indeducibilità'
    end
    object dbeDescr: TDBEdit
      Left = 196
      Top = 24
      Width = 369
      Height = 21
      DataField = 'DESCR'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 4
      OnKeyPress = dbeDescrKeyPress
    end
    object dbeGruppo: TDBEdit
      Left = 20
      Top = 24
      Width = 21
      Height = 21
      DataField = 'GRUPPO'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 1
      OnKeyPress = dbeGruppoKeyPress
    end
    object dbeConto: TDBEdit
      Left = 68
      Top = 24
      Width = 25
      Height = 21
      DataField = 'CONTO'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 2
      OnKeyPress = dbeContoKeyPress
    end
    object dbeSottoConto: TDBEdit
      Left = 120
      Top = 24
      Width = 37
      Height = 21
      DataField = 'SOTTOCONTO'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 3
      OnKeyPress = dbeSottoContoKeyPress
    end
    object dbragNatura: TDBRadioGroup
      Left = 20
      Top = 56
      Width = 273
      Height = 37
      Caption = 'Natura'
      Columns = 3
      DataField = 'NATURA'
      DataSource = dmodAz.dsoTab_Piano_Conti
      Items.Strings = (
        'Patrimoniale'
        'Economico'
        'D'#39'Ordine')
      TabOrder = 5
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object dbeID_Piano_Conti: TDBEdit
      Left = 4
      Top = 4
      Width = 13
      Height = 21
      DataField = 'ID_PIANO_CONTO'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 0
      Visible = False
    end
    object dbragVarFiscale: TDBRadioGroup
      Left = 296
      Top = 56
      Width = 273
      Height = 37
      Caption = 'Variazione fiscale'
      Columns = 3
      DataField = 'VARIAZIONE_FISCALE'
      DataSource = dmodAz.dsoTab_Piano_Conti
      Items.Strings = (
        'Nessuna'
        'In aumento'
        'In diminuzione')
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object dbragCapoconto: TDBRadioGroup
      Left = 20
      Top = 100
      Width = 549
      Height = 37
      Caption = 'Capoconto'
      Columns = 4
      DataField = 'CAPO_CONTO_CLI_FOR'
      DataSource = dmodAz.dsoTab_Piano_Conti
      Items.Strings = (
        'Cliente'
        'Fornitore'
        'Entrambi'
        'Conto')
      TabOrder = 7
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
    object dbePercIndeduc: TDBEdit
      Left = 172
      Top = 152
      Width = 49
      Height = 21
      DataField = 'INDEDUCIBILE'
      DataSource = dmodAz.dsoTab_Piano_Conti
      TabOrder = 8
    end
  end
end
