object fSeguro: TfSeguro
  Left = 427
  Top = 210
  Width = 666
  Height = 384
  BorderIcons = [biSystemMenu]
  Caption = 'fSeguro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 16
    Width = 609
    Height = 249
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 296
    Width = 121
    Height = 25
    Caption = 'Exporta para Excel'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    Grid = DBGrid1
    AutoFit = False
    Left = 72
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = cdsEX
    Left = 288
    Top = 112
  end
  object dspEX: TDataSetProvider
    DataSet = sqlEX
    Left = 256
    Top = 40
  end
  object sqlEX: TSQLDataSet
    CommandText = 'select * from seguro'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 192
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Left = 232
    Top = 256
  end
  object cdsEX: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEX'
    Left = 312
    Top = 40
  end
end
