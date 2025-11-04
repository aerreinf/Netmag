object prnForm: TprnForm
  Left = 277
  Top = 99
  Width = 335
  Height = 339
  Caption = 'Print Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 156
    Top = 30
    Width = 5
    Height = 205
    Brush.Color = 16744576
  end
  object Label1: TLabel
    Left = 28
    Top = 230
    Width = 285
    Height = 71
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '                                                          Quando' +
      ' fai OpenFromFile usa:  ExtractFilePath( Application.ExeName )'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object frShapeObject1: TfrShapeObject
    Left = 76
    Top = 36
  end
  object frTextExportObject1: TfrTextExportObject
    Left = 76
    Top = 108
  end
  object frRichExportObject1: TfrRichExportObject
    Left = 76
    Top = 140
  end
  object rePRN: TfrReport
    Values.Data = {02000000000000000000000653636F6E7469000000000000000553414C444F}
    DisableDataSetControls = False
    OnGetValue = rePRNGetValue
    Left = 146
    Top = 4
    Data = {
      040000000A43617465676F72696131072053636F6E74690A43617465676F7269
      6132062053414C444F}
    PixelsPerInch = 96
  end
  object frGraphObject1: TfrGraphObject
    Left = 76
    Top = 72
  end
  object frCodeBarreObject1: TfrCodeBarreObject
    Left = 76
    Top = 174
  end
  object reDes: TfrDesigner
    Left = 192
    Top = 62
  end
  object frFramedMemoObject1: TfrFramedMemoObject
    Left = 192
    Top = 100
  end
  object frRichObject1: TfrRichObject
    Left = 192
    Top = 134
  end
  object frOLEObject1: TfrOLEObject
    Left = 192
    Top = 168
  end
end
