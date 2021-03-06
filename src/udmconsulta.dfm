object dmconsulta: Tdmconsulta
  OldCreateOrder = False
  Left = 486
  Top = 198
  Height = 418
  Width = 437
  object SQLDataSet1: TSQLDataSet
    Params = <>
    Left = 24
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    Left = 72
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 133
    Top = 24
  end
  object sdsFaixa: TSQLDataSet
    CommandText = 'select * from VALORES '#13#10'where FAIXA like :fx'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 24
    Top = 72
    object sdsFaixaID_VALORES: TIntegerField
      FieldName = 'ID_VALORES'
      Required = True
    end
    object sdsFaixaVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object sdsFaixaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sdsFaixaTX_FUNERARIA: TFloatField
      FieldName = 'TX_FUNERARIA'
    end
    object sdsFaixaTX_ADMINISTRATIVA: TFloatField
      FieldName = 'TX_ADMINISTRATIVA'
    end
    object sdsFaixaFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
  end
  object dspFaixa: TDataSetProvider
    DataSet = sdsFaixa
    Left = 72
    Top = 72
  end
  object procFaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end>
    ProviderName = 'dspFaixa'
    Left = 134
    Top = 72
    object procFaixaFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object procFaixaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object procFaixaVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = ',##0.00'
    end
    object procFaixaTX_FUNERARIA: TFloatField
      FieldName = 'TX_FUNERARIA'
      Visible = False
    end
    object procFaixaID_VALORES: TIntegerField
      FieldName = 'ID_VALORES'
      Required = True
      Visible = False
    end
    object procFaixaTX_ADMINISTRATIVA: TFloatField
      FieldName = 'TX_ADMINISTRATIVA'
      Visible = False
    end
  end
  object sdsVend: TSQLDataSet
    CommandText = 
      'select ID_VEN, VENDEDOR from VENDEDOR '#13#10'where VENDEDOR like :pno' +
      'm'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pnom'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 23
    Top = 120
    object sdsVendID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      Required = True
    end
    object sdsVendVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 80
    end
  end
  object procVendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pnom'
        ParamType = ptInput
      end>
    ProviderName = 'dspVend'
    Left = 134
    Top = 120
    object procVendedorID_VEN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_VEN'
      Required = True
    end
    object procVendedorVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 80
    end
  end
  object sdsCob: TSQLDataSet
    CommandText = 'select ID_COB, NOME from COBRANCA '#13#10'where NOME like :pnome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 24
    Top = 168
    object sdsCobID_COB: TIntegerField
      FieldName = 'ID_COB'
      Required = True
    end
    object sdsCobNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object dspCob: TDataSetProvider
    DataSet = sdsCob
    Left = 72
    Top = 168
  end
  object procCobrador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    ProviderName = 'dspCob'
    Left = 136
    Top = 168
    object procCobradorID_COB: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_COB'
      Required = True
    end
    object procCobradorNOME: TStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME'
      Size = 80
    end
  end
  object cds_est_civil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstCivil'
    Left = 344
    Top = 27
    object cds_est_civilID_ESTCIVIL: TIntegerField
      FieldName = 'ID_ESTCIVIL'
      Required = True
    end
    object cds_est_civilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dspEstCivil: TDataSetProvider
    DataSet = sdsEstCivil
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 27
  end
  object sdsEstCivil: TSQLDataSet
    CommandText = 'select * from EST_CIVIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 208
    Top = 27
    object sdsEstCivilID_ESTCIVIL: TIntegerField
      FieldName = 'ID_ESTCIVIL'
      Required = True
    end
    object sdsEstCivilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object total: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_NF) as titulos  '#13#10'from RECEBIMENTOS '#13#10'where ID ' +
      '= :pcod '#13#10'and ((status = :pstatus) or (:pstatus = '#39'todostitulos'#39 +
      '))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 18
    Top = 311
    object totalTITULOS: TFloatField
      FieldName = 'TITULOS'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
  end
  object ds_total: TDataSource
    DataSet = total
    Left = 70
    Top = 311
  end
  object pendente: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_RECEBER) as pendente'#13#10'from RECEBIMENTOS'#13#10'where ' +
      'ID_SOCIO = :pcod'#13#10'and ((status = :pstatus) or (:pstatus = '#39'todos' +
      'titulos'#39'))'#13#10'and situacao = '#39'Ativo'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 18
    Top = 215
    object pendentePENDENTE: TFloatField
      FieldName = 'PENDENTE'
      ReadOnly = True
      DisplayFormat = ',#0.00'
    end
  end
  object ds_pendente: TDataSource
    DataSet = pendente
    Left = 88
    Top = 215
  end
  object pago: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_PAGO) as pago '#13#10'from RECEBIMENTOS '#13#10'where ID = ' +
      ':pcod '#13#10'and ((status = :pstatus) or (:pstatus = '#39'todostitulos'#39'))' +
      #13#10'and situacao = '#39'Ativo'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 19
    Top = 264
    object pagoPAGO: TFloatField
      FieldName = 'PAGO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
    end
  end
  object ds_pago: TDataSource
    DataSet = pago
    Left = 72
    Top = 266
  end
  object dspVend: TDataSetProvider
    DataSet = sdsVend
    Left = 74
    Top = 121
  end
  object cds_munic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_munic'
    Left = 341
    Top = 120
    object cds_municID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_municMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_munic: TDataSetProvider
    DataSet = sds_munic
    UpdateMode = upWhereKeyOnly
    Left = 270
    Top = 120
  end
  object sds_munic: TSQLDataSet
    CommandText = 'select * from MUNICIPIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 206
    Top = 120
    object sds_municID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_municMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object sds_bairro: TSQLDataSet
    CommandText = 'select * from BAIRRO order by bairro'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 208
    Top = 72
    object sds_bairroID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_bairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_bairro: TDataSetProvider
    DataSet = sds_bairro
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 72
  end
  object cds_bairro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_bairro'
    Left = 342
    Top = 72
    object cds_bairroID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_bairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object cds_parentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Par'
    Left = 340
    Top = 168
    object cds_parentescoID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      Required = True
    end
    object cds_parentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsp_Par: TDataSetProvider
    DataSet = sds_Par
    Left = 272
    Top = 168
  end
  object sds_Par: TSQLDataSet
    CommandText = 'select *  from PARENTESCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 208
    Top = 168
    object sds_ParID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      Required = True
    end
    object sds_ParDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object cds_par: TSQLDataSet
    CommandText = 'select * from PARAMETROS '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 147
    Top = 313
    object cds_parPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 60
    end
    object cds_parDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cds_parCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object cds_parPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      Size = 40
    end
    object cds_parPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      Size = 40
    end
    object cds_parPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      Size = 40
    end
    object cds_parPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      Size = 40
    end
    object cds_parPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      Size = 40
    end
    object cds_parPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      Size = 40
    end
    object cds_parPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      Size = 40
    end
    object cds_parPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      Size = 40
    end
    object cds_parPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      Size = 40
    end
  end
  object cds_banco: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 147
    Top = 265
    object cds_bancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_bancoCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object cds_bancoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_bancoDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_bancoCOD_CED: TStringField
      FieldName = 'COD_CED'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_bancoN_DOC: TIntegerField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object cds_bancoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_bancoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      ProviderFlags = [pfInUpdate]
      Size = 58
    end
    object cds_bancoLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object cds_bancoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object cds_dep: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pdes'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_dep'
    Left = 344
    Top = 219
    object cds_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_depCODPAR: TFloatField
      FieldName = 'CODPAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_depDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_depDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 30
    end
    object cds_depCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_depDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_depRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object cds_depCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cds_depSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      FixedChar = True
      Size = 1
    end
    object cds_depTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cds_depVALOR_DEP: TStringField
      FieldName = 'VALOR_DEP'
      FixedChar = True
      Size = 1
    end
    object cds_depCOBRA_DEP: TStringField
      FieldName = 'COBRA_DEP'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_dep: TDataSetProvider
    DataSet = sds_dep
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 219
  end
  object sds_dep: TSQLDataSet
    CommandText = 
      'select  d.*'#13#10'           ,p.DESCRICAO     '#13#10'from DEPENDENTE d '#13#10'l' +
      'eft outer join PARENTESCO p '#13#10'on p.ID_PAR=d.ID_PAR '#13#10'where d.ID_' +
      'SOCIO = :pid and p.DESCRICAO = :pdes'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pdes'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 216
    Top = 219
    object sds_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_depCODPAR: TFloatField
      FieldName = 'CODPAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 30
    end
    object sds_depCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object sds_depCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object sds_depSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      FixedChar = True
      Size = 1
    end
    object sds_depTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sds_depVALOR_DEP: TStringField
      FieldName = 'VALOR_DEP'
      FixedChar = True
      Size = 1
    end
    object sds_depCOBRA_DEP: TStringField
      FieldName = 'COBRA_DEP'
      FixedChar = True
      Size = 1
    end
  end
  object outros: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_RECEBER) as pendente '#13#10'from RECEBIMENTOS '#13#10'wher' +
      'e ID_SOCIO = :pcod '#13#10'and ((status = :pstatus) or (:pstatus = '#39'to' +
      'dostitulos'#39'))'#13#10'and situacao = '#39'Outros'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 234
    Top = 279
    object FloatField1: TFloatField
      FieldName = 'PENDENTE'
      ReadOnly = True
      DisplayFormat = ',#0.00'
    end
  end
  object dsoutros: TDataSource
    DataSet = outros
    Left = 288
    Top = 271
  end
  object acordo: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_RECEBER) as acordo'#13#10'from RECEBIMENTOS'#13#10'where ID' +
      '_SOCIO = :pcod'#13#10'and ((status = :pstatus) or (:pstatus = '#39'todosti' +
      'tulos'#39'))'#13#10'and situacao = '#39'Ativo'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pstatus'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 234
    Top = 327
    object acordoACORDO: TFloatField
      FieldName = 'ACORDO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
    end
  end
  object ds_acordo: TDataSource
    DataSet = acordo
    Left = 296
    Top = 328
  end
end
