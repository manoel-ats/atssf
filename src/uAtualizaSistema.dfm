object fAtualizaSistema: TfAtualizaSistema
  Left = 192
  Top = 109
  Width = 544
  Height = 405
  Caption = 'fAtualizaSistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 128
    Height = 13
    Caption = 'Stored Procedures/Trigges'
  end
  object Label2: TLabel
    Left = 280
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Campos/Tabelas'
  end
  object lblAtualizacoes: TLabel
    Left = 8
    Top = 352
    Width = 3
    Height = 13
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
  end
  object flbPatches: TFileListBox
    Left = 16
    Top = 24
    Width = 257
    Height = 329
    ItemHeight = 13
    TabOrder = 1
  end
  object flbLogs: TFileListBox
    Left = 304
    Top = 32
    Width = 217
    Height = 329
    ItemHeight = 13
    TabOrder = 2
  end
  object sds: TSQLDataSet
    CommandText = 
      'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields'#13#10'       ' +
      '   WHERE RDB$RELATION_NAME = '#39'TABINSTITUICAO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 48
    Top = 176
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 80
    Top = 176
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 120
    Top = 176
  end
end
