inherited fDocs: TfDocs
  Left = 54
  Top = 11
  Height = 555
  BorderStyle = bsSizeable
  Caption = 'Documenti...'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pctrlMain: TPageControl
      inherited tabs1: TTabSheet
        inherited pa1: TPanel
          inherited laDataReg: TLabel
            Width = 69
            Caption = 'Mese comp.'
          end
          inherited dbeOra: TDBEdit
            Left = 68
            Width = 53
          end
          inherited dbeMese: TDBEdit
            Left = 68
            Width = 53
          end
          inherited dbeNumero: TDBEdit
            Left = 68
            Width = 53
          end
        end
      end
    end
  end
  inherited paGrid: TPanel
    Height = 320
    inherited pctrlRighe: TPageControl
      Height = 270
      inherited tabs21: TTabSheet
        inherited dbgRighe: TDBGrid
          Height = 214
          Columns = <
            item
              Color = 8454143
              Expanded = False
              FieldName = 'NUM_RIGA_ID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Riga'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_SERVIZIO'
              Title.Caption = 'tipo'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODICE_ARTICOLO'
              Title.Caption = 'Codice'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCR'
              Title.Caption = 'Decsrizione'
              Width = 189
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITA_MISURA'
              Title.Caption = 'UM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO'
              Title.Caption = 'Prezzo Unitario'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTITA'
              Title.Caption = 'Q.t'#224
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCONTO1'
              Title.Caption = 'Sc. 1'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCONTO2'
              Title.Caption = 'Sc. 2'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCONTO_EQ'
              Title.Caption = 'Sc. Moneta'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTO_SCONTO'
              Title.Caption = 'Importo'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTO_CON_IVA'
              Title.Caption = 'Importo+IVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RIF_A_DDT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RIF_DDT_DATA_DOC'
              Visible = True
            end>
        end
      end
      inherited tabs22: TTabSheet
        inherited paCastIVA: TPanel
          Height = 239
        end
      end
      inherited tabs23: TTabSheet
        inherited paContabili: TPanel
          Height = 241
        end
      end
      inherited tabs24: TTabSheet
        inherited paAltro: TPanel
          Height = 241
        end
      end
    end
  end
  inherited paAdds: TPanel
    Top = 458
  end
  inherited StatusBar1: TStatusBar
    Top = 502
  end
  inherited dsoAltreDest: TDataSource
    Left = 570
    Top = 12
  end
  inherited dsoCauMag: TDataSource
    Top = 280
  end
  inherited dsoVettori: TDataSource
    Top = 262
  end
  inherited dsEsenteIVA: TDataSource
    Top = 270
  end
  inherited dsPersAz: TDataSource
    Left = 300
    Top = 140
  end
  inherited rePRN: TfrReport
    PixelsPerInch = 96
  end
end
