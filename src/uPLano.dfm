inherited fPlano: TfPlano
  Left = 403
  Top = 233
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 40
    Top = 20
    Width = 27
    Height = 13
    Caption = 'Plano'
  end
  object lbl2: TLabel [1]
    Left = 264
    Top = 88
    Width = 118
    Height = 13
    Caption = 'N'#250'mero dias/falecimento'
  end
  object dbedtPLANO: TDBEdit [3]
    Left = 40
    Top = 36
    Width = 265
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PLANO'
    DataSource = DtSrc
    TabOrder = 1
  end
  object dbrgrpDIA_FALEC: TDBRadioGroup [4]
    Left = 40
    Top = 72
    Width = 217
    Height = 57
    Caption = 'Tipo Plano'
    Columns = 2
    DataField = 'DIA_FALEC'
    DataSource = DtSrc
    Items.Strings = (
      'por Dia'
      'por Falecimento')
    TabOrder = 2
    Values.Strings = (
      'D'
      'F')
  end
  object JvDBSpinEdit1: TJvDBSpinEdit [5]
    Left = 264
    Top = 104
    Width = 121
    Height = 21
    BorderStyle = bsNone
    TabOrder = 3
    BevelKind = bkFlat
    DataField = 'QUANTIDADE'
    DataSource = DtSrc
  end
  object JvDBGrid1: TJvDBGrid [6]
    Left = 40
    Top = 136
    Width = 513
    Height = 193
    DataSource = DtSrc
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  inherited PopupMenu1: TPopupMenu
    Left = 48
    Top = 336
  end
  inherited DtSrc: TDataSource
    DataSet = DM.dsPlano
    Left = 17
    Top = 337
  end
end
