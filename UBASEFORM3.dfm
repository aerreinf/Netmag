object fBaseForm3: TfBaseForm3
  Tag = 3
  Left = 288
  Top = 267
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'BaseForm3'
  ClientHeight = 246
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object paView: TPanel
    Left = 0
    Top = 27
    Width = 368
    Height = 219
    Align = alClient
    BevelOuter = bvLowered
    Color = 16762508
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object tbarControl: TToolBar
    Left = 0
    Top = 0
    Width = 368
    Height = 27
    AutoSize = True
    ButtonHeight = 25
    ButtonWidth = 25
    Caption = 'tbarControl'
    Flat = True
    Images = dmodPub.iliPub
    Indent = 5
    TabOrder = 1
    object tbtnEsci: TToolButton
      Left = 5
      Top = 0
      Cursor = crHandPoint
      Hint = 'Esci'
      Caption = 'tbtnEsci'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEsciClick
    end
    object sep1: TToolButton
      Left = 30
      Top = 0
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
    object tbtnNuovo: TToolButton
      Left = 38
      Top = 0
      Cursor = crHandPoint
      Hint = 'Nuovo'
      Caption = 'tbtnNuovo'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNuovoClick
    end
    object tbtnModifica: TToolButton
      Left = 63
      Top = 0
      Cursor = crHandPoint
      Hint = 'Modifica'
      Caption = 'tbtnModifica'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnModificaClick
    end
    object sep2: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'sep2'
      Style = tbsSeparator
    end
    object tbtnSalva: TToolButton
      Left = 96
      Top = 0
      Cursor = crHandPoint
      Hint = 'Salva'
      Caption = 'tbtnSalva'
      Enabled = False
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSalvaClick
    end
    object tbtnAnulla: TToolButton
      Left = 121
      Top = 0
      Cursor = crHandPoint
      Hint = 'Anulla'
      Caption = 'tbtnAnulla'
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnAnullaClick
    end
    object sep3: TToolButton
      Left = 146
      Top = 0
      Width = 8
      Caption = 'sep3'
      Style = tbsSeparator
    end
    object tbtnElimina: TToolButton
      Left = 154
      Top = 0
      Cursor = crHandPoint
      Hint = 'Elimina'
      Caption = 'tbtnElimina'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnEliminaClick
    end
    object sep4: TToolButton
      Left = 179
      Top = 0
      Width = 8
      Caption = 'sep4'
      Style = tbsSeparator
    end
    object tbtnPrev: TToolButton
      Left = 187
      Top = 0
      Cursor = crHandPoint
      Hint = 'Precedente'
      Caption = 'Precedente'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
    end
    object tbtnNext: TToolButton
      Left = 212
      Top = 0
      Cursor = crHandPoint
      Hint = 'Successivo'
      Caption = 'Successivo'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
    end
    object sep5: TToolButton
      Left = 237
      Top = 0
      Width = 8
      Caption = 'sep5'
      Style = tbsSeparator
    end
  end
end
