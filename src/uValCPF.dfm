object fValCPF: TfValCPF
  Left = 380
  Top = 155
  Width = 550
  Height = 203
  BorderIcons = [biSystemMenu]
  Caption = 'Validar CPF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 537
    Height = 169
    DataSource = dsCPF
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 23
    Top = 16
    Width = 513
    Height = 65
    TabOrder = 3
    object Label1: TLabel
      Left = 232
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Socio'
    end
  end
  object BitBtn1: TBitBtn
    Left = 207
    Top = 45
    Width = 145
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 55
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    Visible = False
    OnClick = BitBtn2Click
  end
  object Panel2: TPanel
    Left = 23
    Top = 84
    Width = 513
    Height = 65
    TabOrder = 4
    object Label3: TLabel
      Left = 216
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Dependente'
    end
    object BitBtn3: TBitBtn
      Left = 40
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 0
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 174
      Top = 27
      Width = 161
      Height = 33
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object dsCPF: TDataSource
    DataSet = cdsCPF
    Left = 208
    Top = 65528
  end
  object cdsCPF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCPF'
    Left = 128
    Top = 16
    object cdsCPFOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object cdsCPFGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 10
    end
    object cdsCPFN_INSCRICAO: TStringField
      FieldName = 'N_INSCRICAO'
      Size = 10
    end
    object cdsCPFNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
  end
  object dspCPF: TDataSetProvider
    DataSet = sqlCPF
    Left = 72
    Top = 16
  end
  object sqlCPF: TSQLDataSet
    CommandText = 'select * from validar_CPF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 24
    Top = 16
    object sqlCPFOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object sqlCPFGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 10
    end
    object sqlCPFN_INSCRICAO: TStringField
      FieldName = 'N_INSCRICAO'
      Size = 10
    end
    object sqlCPFNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 184
    Top = 16
  end
end
