object DM_SGE: TDM_SGE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 207
  Top = 97
  Height = 519
  Width = 318
  object sge: TSQLConnection
    ConnectionName = 'sisadmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\home\sisAdmin\sge_serra.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 32
    Top = 8
  end
  object sql_recebimento: TSQLDataSet
    CommandText = 'select * from RECEBIMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 62
    object sql_recebimentoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object sql_recebimentoTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sql_recebimentoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_recebimentoDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sql_recebimentoVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sql_recebimentoFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sql_recebimentoDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sql_recebimentoCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_recebimentoNF: TIntegerField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoBL: TIntegerField
      FieldName = 'BL'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_recebimentoLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sql_recebimentoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_recebimentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_recebimentoTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sql_recebimentoSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp_recebimento: TDataSetProvider
    DataSet = sql_recebimento
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 62
  end
  object cds_recebimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_recebimento'
    Left = 199
    Top = 63
    object cds_recebimentoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recebimentoTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cds_recebimentoEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cds_recebimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cds_recebimentoDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cds_recebimentoDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object cds_recebimentoCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cds_recebimentoCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object cds_recebimentoCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object cds_recebimentoSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cds_recebimentoVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cds_recebimentoFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_recebimentoDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_recebimentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_recebimentoCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cds_recebimentoCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_recebimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cds_recebimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cds_recebimentoN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cds_recebimentoDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object cds_recebimentoVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object cds_recebimentoJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cds_recebimentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cds_recebimentoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object cds_recebimentoTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object cds_recebimentoFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object cds_recebimentoVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object cds_recebimentoVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object cds_recebimentoVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object cds_recebimentoOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object cds_recebimentoOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object cds_recebimentoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cds_recebimentoDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object cds_recebimentoNF: TIntegerField
      FieldName = 'NF'
    end
    object cds_recebimentoDP: TIntegerField
      FieldName = 'DP'
    end
    object cds_recebimentoBL: TIntegerField
      FieldName = 'BL'
    end
    object cds_recebimentoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_recebimentoLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recebimentoGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_recebimentoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recebimentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_recebimentoTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_recebimentoSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sql_cliente: TSQLDataSet
    CommandText = 'select * from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 110
    object sql_clienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sql_clienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sql_clienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_clienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sql_clienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sql_clienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sql_clienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sql_clienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_clienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_clientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_clienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sql_clienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sql_clienteGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_clienteID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clientePLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_clienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_cliente: TDataSetProvider
    DataSet = sql_cliente
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 110
  end
  object cds_cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cliente'
    Left = 200
    Top = 110
    object cds_clienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_clienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cds_clienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_clienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_clienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_clienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_clienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_clienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_clienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_clienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_clienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_clienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_clienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_clienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_clienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_clienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_clientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cds_clientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_clienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cds_clienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cds_clienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cds_clienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cds_clienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cds_clienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cds_clienteGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_clienteID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_clienteINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_clientePLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_clienteCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_end: TDataSetProvider
    DataSet = sql_end
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 158
  end
  object cds_end: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_end'
    Left = 200
    Top = 158
    object cds_endCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cds_endLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cds_endBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_endCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_endCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_endUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cds_endCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cds_endTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cds_endTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cds_endTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cds_endFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cds_endE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object cds_endRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cds_endTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cds_endDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cds_endDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
  end
  object sql_end: TSQLDataSet
    CommandText = 'select * from ENDERECOCLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 158
    object sql_endCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_endLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sql_endBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_endUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sql_endCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_endTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sql_endTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_endDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sql_endDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object sql_for: TSQLDataSet
    CommandText = 'select * from FORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 203
    object sql_forNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sql_forRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sql_forCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_forTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sql_forCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sql_forINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sql_forRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sql_forSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_forDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_forHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_forPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_forPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_forCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_forCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
  end
  object dsp_for: TDataSetProvider
    DataSet = sql_for
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 203
  end
  object cds_for: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_for'
    Left = 200
    Top = 203
    object cds_forCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cds_forNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cds_forRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_forCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_forTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_forCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_forCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_forINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_forRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_forSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_forREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_forLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_forDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_forCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_forSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_forHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_forPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object cds_forPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_forCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      Size = 15
    end
  end
  object sql_endFor: TSQLDataSet
    CommandText = 'select * from ENDERECOFORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 250
    object sql_endForCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_endForCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_endForLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sql_endForBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endForCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endForCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_endForUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sql_endForCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_endForDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object sql_endForTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endForTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endForTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endForFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sql_endForE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_endForRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sql_endForTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sql_endForDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_endfor: TDataSetProvider
    DataSet = sql_endFor
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 250
  end
  object cds_endfor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_endfor'
    Left = 200
    Top = 250
    object cds_endforCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_endforCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endforLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_endforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_endforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_endforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_endforDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_endforTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endforDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object sql_prod: TSQLDataSet
    CommandText = 'select * from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 302
    object sql_prodCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_prodFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_prodCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_prodMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_prodUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sql_prodDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_prodCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_prodBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object sql_prodPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sql_prodCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_prodCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_prodCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_prodCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_prodRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sql_prodCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_prodQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_prodDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object sql_prodCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_prodFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sql_prodUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_prodLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sql_prodLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsp_prod: TDataSetProvider
    DataSet = sql_prod
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 302
  end
  object cds_prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_prod'
    Left = 200
    Top = 302
    object cds_prodCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_prodFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_prodDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object cds_prodPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_prodCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_prodCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_prodCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_prodFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_prodUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_prodLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_prodLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sql_fun: TSQLDataSet
    CommandText = 'select * from FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 352
    object sql_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sql_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sql_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sql_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sql_funCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object sql_funDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sql_funCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_fun: TDataSetProvider
    DataSet = sql_fun
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 352
  end
  object cds_fun: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_fun'
    Left = 200
    Top = 352
    object cds_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_funCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cds_funDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_funCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_cob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cob'
    Left = 200
    Top = 400
    object cds_cobID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cobNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cds_cobENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cds_cobCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_cobBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cds_cobMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object cds_cobESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cds_cobCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cds_cobDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cds_cobFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cds_cobFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cds_cobFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_cobCXP: TStringField
      FieldName = 'CXP'
      Size = 15
    end
    object cds_cobPORC: TFloatField
      FieldName = 'PORC'
    end
    object cds_cobPORCOU: TFloatField
      FieldName = 'PORCOU'
    end
    object cds_cobDTADM: TDateField
      FieldName = 'DTADM'
    end
    object cds_cobDTRESC: TDateField
      FieldName = 'DTRESC'
    end
  end
  object dsp_cob: TDataSetProvider
    DataSet = sql_cob
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 400
  end
  object sql_cob: TSQLDataSet
    CommandText = 'select * from COBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sge
    Left = 32
    Top = 400
    object sql_cobID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sql_cobNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sql_cobENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sql_cobCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_cobBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_cobMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sql_cobESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sql_cobCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sql_cobDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_cobFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_cobFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_cobFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_cobCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_cobPORC: TFloatField
      FieldName = 'PORC'
      ProviderFlags = [pfInUpdate]
    end
    object sql_cobPORCOU: TFloatField
      FieldName = 'PORCOU'
      ProviderFlags = [pfInUpdate]
    end
    object sql_cobDTADM: TDateField
      FieldName = 'DTADM'
      ProviderFlags = [pfInUpdate]
    end
    object sql_cobDTRESC: TDateField
      FieldName = 'DTRESC'
      ProviderFlags = [pfInUpdate]
    end
  end
end
