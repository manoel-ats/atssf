object ftipoend: Tftipoend
  Left = 305
  Top = 129
  Width = 827
  Height = 498
  BorderIcons = [biSystemMenu]
  Caption = 'Tipo de Endere'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 801
    Height = 441
    DataSource = dsCK
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Title.Caption = 'INSCRI.'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SOCIO'
        Title.Caption = 'SOCIO'
        Width = 361
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end>
  end
  object sqlCK: TSQLDataSet
    CommandText = 'SELECT * FROM CHECA_ENDERECO_DUPLO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 68
    Top = 48
    object sqlCKID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object sqlCKNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object sqlCKN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object sqlCKGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object sqlCKTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object sqlCKTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
    end
    object sqlCKENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
  end
  object dspCK: TDataSetProvider
    DataSet = sqlCK
    Left = 116
    Top = 48
  end
  object cdsCk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCK'
    Left = 164
    Top = 48
    object cdsCkID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object cdsCkNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object cdsCkN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object cdsCkGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsCkTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
    end
    object cdsCkENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsCkTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
  end
  object dsCK: TDataSource
    DataSet = cdsCk
    Left = 256
    Top = 40
  end
end
