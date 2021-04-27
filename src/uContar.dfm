object fContar: TfContar
  Left = 305
  Top = 150
  Width = 589
  Height = 358
  Caption = 'Socios'
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
  object Label1: TLabel
    Left = 72
    Top = 88
    Width = 198
    Height = 13
    Caption = 'SOCIOS MENSAIS PLANO ECONOMICO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 74
    Top = 144
    Width = 166
    Height = 13
    Caption = 'SOCIOS PLANO 7 FALECIMENTO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 76
    Top = 193
    Width = 130
    Height = 13
    Caption = 'SOCIOS PLANO MENSAIS'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 64
    Top = 296
    Width = 187
    Height = 13
    Caption = 'OBS. Plano Economico socios Faixa 11'
  end
  object Label5: TLabel
    Left = 232
    Top = 32
    Width = 99
    Height = 20
    Caption = 'Socios Ativos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 296
    Top = 88
    Width = 89
    Height = 21
    DataField = 'SOCIOS_MENSAIS_ECONOMICO'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 296
    Top = 144
    Width = 89
    Height = 21
    DataField = 'SOCIOS_7FALECIMENTO'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 296
    Top = 192
    Width = 81
    Height = 21
    DataField = 'SOCIOS_MENSAIS'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 2
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 416
    Top = 112
    object cdsSOCIOS_MENSAIS_ECONOMICO: TIntegerField
      FieldName = 'SOCIOS_MENSAIS_ECONOMICO'
    end
    object cdsSOCIOS_7FALECIMENTO: TIntegerField
      FieldName = 'SOCIOS_7FALECIMENTO'
    end
    object cdsSOCIOS_MENSAIS: TIntegerField
      FieldName = 'SOCIOS_MENSAIS'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 368
    Top = 112
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from contar_socios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 320
    Top = 112
    object SQLDataSet1SOCIOS_MENSAIS_ECONOMICO: TIntegerField
      FieldName = 'SOCIOS_MENSAIS_ECONOMICO'
    end
    object SQLDataSet1SOCIOS_7FALECIMENTO: TIntegerField
      FieldName = 'SOCIOS_7FALECIMENTO'
    end
    object SQLDataSet1SOCIOS_MENSAIS: TIntegerField
      FieldName = 'SOCIOS_MENSAIS'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 448
    Top = 224
  end
end
