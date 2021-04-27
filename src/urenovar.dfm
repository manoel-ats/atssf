object fRenovar: TfRenovar
  Left = 262
  Top = 272
  Width = 303
  Height = 163
  BorderIcons = [biSystemMenu]
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
  object Label44: TLabel
    Left = 167
    Top = 23
    Width = 108
    Height = 13
    Caption = 'Valor da Mensalidade :'
  end
  object Label45: TLabel
    Left = 91
    Top = 22
    Width = 37
    Height = 13
    Caption = 'Mezes :'
  end
  object Label47: TLabel
    Left = 14
    Top = 21
    Width = 47
    Height = 13
    Caption = 'Dia Pgto :'
  end
  object DBEdit29: TDBEdit
    Left = 167
    Top = 38
    Width = 109
    Height = 21
    DataField = 'VALOR_SERVICO'
    DataSource = DtSrc
    TabOrder = 0
  end
  object DBEdit30: TDBEdit
    Left = 91
    Top = 37
    Width = 61
    Height = 21
    DataField = 'MESES'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBEdit32: TDBEdit
    Left = 13
    Top = 36
    Width = 61
    Height = 21
    DataField = 'DIAPGTO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object dxButton1: TdxButton
    Left = 97
    Top = 88
    Width = 101
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Renovar'
    TabOrder = 3
  end
  object DtSrc: TDataSource
    DataSet = DM.cds_socio
    Left = 209
    Top = 81
  end
end
