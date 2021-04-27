object dmAcesso: TdmAcesso
  OldCreateOrder = False
  Left = 261
  Top = 186
  Height = 202
  Width = 290
  object dtsEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 5
  end
  object cdsEmpresa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dtsEmpresa'
    Left = 152
    Top = 5
    object cdsEmpresaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaPROCURAR: TStringField
      FieldName = 'PROCURAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaCANCELAR: TStringField
      FieldName = 'CANCELAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sdsEmpresa: TSQLDataSet
    SQLConnection = DM.scSge
    CommandText = 'select * from ACESSO_EMPRESA '#13#10'where CODUSUARIO = :Pcod'
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    Left = 24
    Top = 5
    object sdsEmpresaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEmpresaPROCURAR: TStringField
      FieldName = 'PROCURAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaCANCELAR: TStringField
      FieldName = 'CANCELAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dtsFun: TDataSetProvider
    DataSet = sdsFun
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 53
  end
  object cdsFun: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dtsFun'
    Left = 152
    Top = 53
    object cdsFunCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFunPROCURAR: TStringField
      FieldName = 'PROCURAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFunINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFunEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFunCANCELAR: TStringField
      FieldName = 'CANCELAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFunALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sdsFun: TSQLDataSet
    SQLConnection = DM.scSge
    CommandText = 'select * from ACESSO_FUN'#13#10'where CODUSUARIO = :Pcod'
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    Left = 24
    Top = 53
    object sdsFunCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFunPROCURAR: TStringField
      FieldName = 'PROCURAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFunINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFunEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFunCANCELAR: TStringField
      FieldName = 'CANCELAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFunALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dtsInquilino: TDataSetProvider
    DataSet = sdsInquilino
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 101
  end
  object cdsInquilino: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dtsInquilino'
    Left = 152
    Top = 101
    object cdsInquilinoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsInquilinoPROCURAR: TStringField
      FieldName = 'PROCURAR'
      FixedChar = True
      Size = 1
    end
    object cdsInquilinoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      FixedChar = True
      Size = 1
    end
    object cdsInquilinoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      FixedChar = True
      Size = 1
    end
    object cdsInquilinoCANCELAR: TStringField
      FieldName = 'CANCELAR'
      FixedChar = True
      Size = 1
    end
    object cdsInquilinoALTERAR: TStringField
      FieldName = 'ALTERAR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsInquilino: TSQLDataSet
    SQLConnection = DM.scSge
    CommandText = 'select *  from ACESSO_INQUILINO'#13#10'where CODUSUARIO = :Pcod'
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    Left = 24
    Top = 101
    object sdsInquilinoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsInquilinoPROCURAR: TStringField
      FieldName = 'PROCURAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsInquilinoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsInquilinoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsInquilinoCANCELAR: TStringField
      FieldName = 'CANCELAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsInquilinoALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
end
