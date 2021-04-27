object fAtualiza_Mensais: TfAtualiza_Mensais
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Color = 11189162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGauge1: TFlatGauge
    Left = 3
    Top = 187
    Width = 326
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object Label1: TLabel
    Left = 4
    Top = 168
    Width = 9
    Height = 13
    Caption = '...'
  end
  object Label44: TLabel
    Left = 4
    Top = 75
    Width = 108
    Height = 13
    Caption = 'Valor da Mensalidade :'
  end
  object DBGrid1: TDBGrid
    Left = 333
    Top = 4
    Width = 353
    Height = 417
    DataSource = dtsrc_dta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_SOCIO'
        Title.Caption = 'S'#243'cio'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTA_ULTIMA_PARCELA'
        Title.Caption = 'Ultima Parc.'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 210
    Top = 71
    Width = 105
    Height = 33
    Caption = 'GERA PAERCELAS'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 7
    Top = 288
    Width = 242
    Height = 25
    Caption = 'Atualiza Campo DTA_ULTIMA_PARCELA'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 116
    Top = 101
    Width = 83
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object MaskEdit2: TMaskEdit
    Left = 116
    Top = 75
    Width = 84
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object MaskEdit3: TMaskEdit
    Left = 116
    Top = 127
    Width = 83
    Height = 24
    EditMask = '!99/99/00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 5
    Text = '  /  /  '
  end
  object proc_socio: TSQLDataSet
    CommandText = 'select ID_SOCIO  from SOCIOS '#13#10'where PLANO = '#39'MENSAL'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 408
    Top = 136
    object proc_socioID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
  end
  object dtsrc_dta: TDataSource
    DataSet = cds
    Left = 530
    Top = 176
  end
  object proc_receb: TSQLDataSet
    CommandText = 'select  MAX(VENCIMENTO) from RECEBIMENTOS '#13#10'where ID_SOCIO = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 448
    Top = 136
    object proc_recebMAX: TDateField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'select NOME_SOCIO, DTA_ULTIMA_PARCELA from SOCIOS '#13#10'where DTA_UL' +
      'TIMA_PARCELA < :pdta '#13#10'and PLANO = '#39'MENSAL'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pdta'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 408
    Top = 176
    object sdsNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object sdsDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
    end
  end
  object dts: TDataSetProvider
    DataSet = sds
    Left = 456
    Top = 176
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'pdta'
        ParamType = ptInput
      end>
    ProviderName = 'dts'
    Left = 496
    Top = 176
    object cdsNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object cdsDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
    end
  end
end
