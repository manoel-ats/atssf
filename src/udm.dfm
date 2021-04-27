object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 317
  Top = 1
  Height = 739
  Width = 964
  object sds_Obitos: TSQLDataSet
    CommandText = 
      'select o.*'#13#10'          ,c.*'#13#10' from OBITOS o '#13#10' left outer join CA' +
      'RTORIO c on c.ID_CARTORIO = o.ID_CARTORIO  '#13#10' where ID = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 56
    object sds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosNATURAL_PAI: TStringField
      FieldName = 'NATURAL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosPROFISSAO_PAI: TStringField
      FieldName = 'PROFISSAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosNATURAL_MAE: TStringField
      FieldName = 'NATURAL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosPROFISSAO_MAE: TStringField
      FieldName = 'PROFISSAO_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosZONA_ELEITORAL: TStringField
      FieldName = 'ZONA_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosRESERVISTA: TStringField
      FieldName = 'RESERVISTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosCATEGORIA_NUM: TStringField
      FieldName = 'CATEGORIA_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosSERIE_RESERV: TStringField
      FieldName = 'SERIE_RESERV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosCSM: TStringField
      FieldName = 'CSM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosRM: TStringField
      FieldName = 'RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosNUPCIAS_2: TStringField
      FieldName = 'NUPCIAS_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_CASAMENTO_2: TDateField
      FieldName = 'DATA_CASAMENTO_2'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCONJUGE_2: TStringField
      FieldName = 'CONJUGE_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosLIVRO_2: TStringField
      FieldName = 'LIVRO_2'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosFOLHAS_2: TStringField
      FieldName = 'FOLHAS_2'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosNUM_2: TStringField
      FieldName = 'NUM_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sds_ObitosID_CARTORIO: TIntegerField
      FieldName = 'ID_CARTORIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 80
    end
    object sds_ObitosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 80
    end
    object sds_ObitosBAIRRO_1: TStringField
      FieldName = 'BAIRRO_1'
      ProviderFlags = []
      Size = 60
    end
    object sds_ObitosCIDADE_1: TStringField
      FieldName = 'CIDADE_1'
      ProviderFlags = []
      Size = 60
    end
    object sds_ObitosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP_1: TStringField
      FieldName = 'CEP_1'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object sds_ObitosFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sds_ObitosVELORIO: TStringField
      FieldName = 'VELORIO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosZONA_NUMERO: TStringField
      FieldName = 'ZONA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosSECAO: TStringField
      FieldName = 'SECAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCPF_FALECIDO: TStringField
      FieldName = 'CPF_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosRG_FALECIDO: TStringField
      FieldName = 'RG_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosDTA_EXPDICAO: TDateField
      FieldName = 'DTA_EXPDICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object sds_ObitosIMSS: TStringField
      FieldName = 'IMSS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosN_BENEFICIO: TStringField
      FieldName = 'N_BENEFICIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosDECLA_ESTCIVIL: TStringField
      FieldName = 'DECLA_ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosAVO_PATERNO_PAI: TStringField
      FieldName = 'AVO_PATERNO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosAVO_MATERNO_PAI: TStringField
      FieldName = 'AVO_MATERNO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosNUPCIAS_PAI: TStringField
      FieldName = 'NUPCIAS_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_CASAMENTO_PAI: TDateField
      FieldName = 'DATA_CASAMENTO_PAI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosLIVRO_PAI: TStringField
      FieldName = 'LIVRO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosFOLHAS_PAI: TStringField
      FieldName = 'FOLHAS_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosNUM_PAI: TStringField
      FieldName = 'NUM_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosOBSERVACAO_PAI: TStringField
      FieldName = 'OBSERVACAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosAVO_PATERNO_PAI1: TStringField
      FieldName = 'AVO_PATERNO_PAI1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosAVO_MATERNO_PAI1: TStringField
      FieldName = 'AVO_MATERNO_PAI1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosLOCAL_NASCCTO: TStringField
      FieldName = 'LOCAL_NASCCTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosGRUPO_LOTE: TStringField
      FieldName = 'GRUPO_LOTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosD_NASC_PAI: TDateField
      FieldName = 'D_NASC_PAI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosD_NASC_MAE: TDateField
      FieldName = 'D_NASC_MAE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosDECLA_NACIONALIDADE: TStringField
      FieldName = 'DECLA_NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosFALEC_ESTCIVIL: TStringField
      FieldName = 'FALEC_ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_ObitosSSP_FALECIDO: TStringField
      FieldName = 'SSP_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 30
    end
    object sds_ObitosCPF_DECLARANTE: TStringField
      FieldName = 'CPF_DECLARANTE'
      Size = 14
    end
    object sds_ObitosID_CARTORIO_1: TIntegerField
      FieldName = 'ID_CARTORIO_1'
    end
    object sds_ObitosENDERECO_1: TStringField
      FieldName = 'ENDERECO_1'
      Size = 80
    end
    object sds_ObitosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sds_ObitosFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sds_ObitosFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sds_ObitosCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object sds_ObitosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object sds_ObitosCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 25
    end
    object sds_ObitosSSP_DECLARANTE: TStringField
      FieldName = 'SSP_DECLARANTE'
      Size = 15
    end
    object sds_ObitosNUM: TStringField
      FieldName = 'NUM'
      Size = 10
    end
    object sds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      Size = 14
    end
    object sds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      Size = 160
    end
    object sds_ObitosPIS: TStringField
      FieldName = 'PIS'
      Size = 14
    end
    object sds_ObitosCTPS: TStringField
      FieldName = 'CTPS'
      Size = 7
    end
    object sds_ObitosCTPS_SERIE: TStringField
      FieldName = 'CTPS_SERIE'
      Size = 5
    end
    object sds_ObitosCTPS_UF: TStringField
      FieldName = 'CTPS_UF'
      Size = 2
    end
    object sds_ObitosFAL_LIVRO: TStringField
      FieldName = 'FAL_LIVRO'
      Size = 5
    end
    object sds_ObitosFAL_FOLHA: TStringField
      FieldName = 'FAL_FOLHA'
      Size = 5
    end
    object sds_ObitosFAL_NUM: TStringField
      FieldName = 'FAL_NUM'
      Size = 10
    end
    object sds_ObitosFAL_ID_CARTORIO: TIntegerField
      FieldName = 'FAL_ID_CARTORIO'
    end
    object sds_ObitosFAL_CARTORIO: TStringField
      FieldName = 'FAL_CARTORIO'
      Size = 100
    end
    object sds_ObitosFAL_CARTORIO_END: TStringField
      FieldName = 'FAL_CARTORIO_END'
      Size = 100
    end
    object sds_ObitosFAL_CARTORIO_CIDADE: TStringField
      FieldName = 'FAL_CARTORIO_CIDADE'
      Size = 100
    end
  end
  object dsp_Obitos: TDataSetProvider
    DataSet = sds_Obitos
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 56
  end
  object cds_Obitos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Obitos'
    BeforePost = cds_ObitosBeforePost
    OnNewRecord = cds_ObitosNewRecord
    Left = 168
    Top = 56
    object cds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1;_'
    end
    object cds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosGRUPO: TStringField
      Alignment = taCenter
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_ObitosID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosNATURAL_PAI: TStringField
      FieldName = 'NATURAL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosPROFISSAO_PAI: TStringField
      FieldName = 'PROFISSAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosNATURAL_MAE: TStringField
      FieldName = 'NATURAL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosPROFISSAO_MAE: TStringField
      FieldName = 'PROFISSAO_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosZONA_ELEITORAL: TStringField
      FieldName = 'ZONA_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosRESERVISTA: TStringField
      FieldName = 'RESERVISTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosCATEGORIA_NUM: TStringField
      FieldName = 'CATEGORIA_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosSERIE_RESERV: TStringField
      FieldName = 'SERIE_RESERV'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosCSM: TStringField
      FieldName = 'CSM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosRM: TStringField
      FieldName = 'RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosNUPCIAS_2: TStringField
      FieldName = 'NUPCIAS_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_CASAMENTO_2: TDateField
      FieldName = 'DATA_CASAMENTO_2'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosCONJUGE_2: TStringField
      FieldName = 'CONJUGE_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosLIVRO_2: TStringField
      FieldName = 'LIVRO_2'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosFOLHAS_2: TStringField
      FieldName = 'FOLHAS_2'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosNUM_2: TStringField
      FieldName = 'NUM_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cds_ObitosID_CARTORIO: TIntegerField
      FieldName = 'ID_CARTORIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 80
    end
    object cds_ObitosENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 80
    end
    object cds_ObitosBAIRRO_1: TStringField
      DisplayWidth = 60
      FieldName = 'BAIRRO_1'
      ProviderFlags = []
      Size = 60
    end
    object cds_ObitosCIDADE_1: TStringField
      FieldName = 'CIDADE_1'
      ProviderFlags = []
      Size = 60
    end
    object cds_ObitosESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP_1: TStringField
      FieldName = 'CEP_1'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object cds_ObitosFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cds_ObitosVELORIO: TStringField
      FieldName = 'VELORIO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosZONA_NUMERO: TStringField
      FieldName = 'ZONA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosSECAO: TStringField
      FieldName = 'SECAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosCPF_FALECIDO: TStringField
      FieldName = 'CPF_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosRG_FALECIDO: TStringField
      FieldName = 'RG_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosDTA_EXPDICAO: TDateField
      FieldName = 'DTA_EXPDICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object cds_ObitosIMSS: TStringField
      FieldName = 'IMSS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosN_BENEFICIO: TStringField
      FieldName = 'N_BENEFICIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosDECLA_ESTCIVIL: TStringField
      FieldName = 'DECLA_ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosAVO_PATERNO_PAI: TStringField
      FieldName = 'AVO_PATERNO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosAVO_MATERNO_PAI: TStringField
      FieldName = 'AVO_MATERNO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosNUPCIAS_PAI: TStringField
      FieldName = 'NUPCIAS_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_CASAMENTO_PAI: TDateField
      FieldName = 'DATA_CASAMENTO_PAI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosLIVRO_PAI: TStringField
      FieldName = 'LIVRO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosFOLHAS_PAI: TStringField
      FieldName = 'FOLHAS_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosNUM_PAI: TStringField
      FieldName = 'NUM_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosOBSERVACAO_PAI: TStringField
      FieldName = 'OBSERVACAO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosAVO_PATERNO_PAI1: TStringField
      FieldName = 'AVO_PATERNO_PAI1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosAVO_MATERNO_PAI1: TStringField
      FieldName = 'AVO_MATERNO_PAI1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosLOCAL_NASCCTO: TStringField
      FieldName = 'LOCAL_NASCCTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosGRUPO_LOTE: TStringField
      FieldName = 'GRUPO_LOTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosD_NASC_PAI: TDateField
      FieldName = 'D_NASC_PAI'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1;_'
    end
    object cds_ObitosD_NASC_MAE: TDateField
      FieldName = 'D_NASC_MAE'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1;_'
    end
    object cds_ObitosDECLA_NACIONALIDADE: TStringField
      FieldName = 'DECLA_NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosFALEC_ESTCIVIL: TStringField
      FieldName = 'FALEC_ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cds_ObitosSSP_FALECIDO: TStringField
      FieldName = 'SSP_FALECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 30
    end
    object cds_ObitosCPF_DECLARANTE: TStringField
      FieldName = 'CPF_DECLARANTE'
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object cds_ObitosID_CARTORIO_1: TIntegerField
      FieldName = 'ID_CARTORIO_1'
    end
    object cds_ObitosENDERECO_1: TStringField
      FieldName = 'ENDERECO_1'
      Size = 80
    end
    object cds_ObitosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cds_ObitosFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cds_ObitosFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_ObitosCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object cds_ObitosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object cds_ObitosCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 25
    end
    object cds_ObitosSSP_DECLARANTE: TStringField
      FieldName = 'SSP_DECLARANTE'
      Size = 15
    end
    object cds_ObitosNUM: TStringField
      FieldName = 'NUM'
      Size = 10
    end
    object cds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 14
    end
    object cds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      Size = 160
    end
    object cds_ObitosPIS: TStringField
      FieldName = 'PIS'
      EditMask = '000\.00000\.00\-0;1;_'
      Size = 14
    end
    object cds_ObitosCTPS: TStringField
      FieldName = 'CTPS'
      Size = 7
    end
    object cds_ObitosCTPS_SERIE: TStringField
      FieldName = 'CTPS_SERIE'
      Size = 5
    end
    object cds_ObitosCTPS_UF: TStringField
      FieldName = 'CTPS_UF'
      Size = 2
    end
    object cds_ObitosFAL_LIVRO: TStringField
      FieldName = 'FAL_LIVRO'
      Size = 5
    end
    object cds_ObitosFAL_FOLHA: TStringField
      FieldName = 'FAL_FOLHA'
      Size = 5
    end
    object cds_ObitosFAL_NUM: TStringField
      FieldName = 'FAL_NUM'
      Size = 10
    end
    object cds_ObitosFAL_ID_CARTORIO: TIntegerField
      FieldName = 'FAL_ID_CARTORIO'
    end
    object cds_ObitosFAL_CARTORIO: TStringField
      FieldName = 'FAL_CARTORIO'
      Size = 100
    end
    object cds_ObitosFAL_CARTORIO_END: TStringField
      FieldName = 'FAL_CARTORIO_END'
      Size = 100
    end
    object cds_ObitosFAL_CARTORIO_CIDADE: TStringField
      FieldName = 'FAL_CARTORIO_CIDADE'
      Size = 100
    end
  end
  object dsSenha: TDataSource
    DataSet = CDSSenha
    Left = 110
    Top = 3
  end
  object CDSSenha: TSQLClientDataSet
    CommandText = 'TABSENHAS'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    CommandType = ctTable
    Left = 44
    Top = 3
    object CDSSenhaLogin: TStringField
      FieldName = 'Login'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSenhaSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object CDSSenhaPerfil: TStringField
      FieldName = 'Perfil'
      Size = 15
    end
  end
  object sds_acesso: TSQLDataSet
    CommandText = 'select * from TABSENHAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 32
    Top = 104
    object sds_acessoLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object sds_acessoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sds_acessoPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object sds_acessoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object dsp_acesso: TDataSetProvider
    DataSet = sds_acesso
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 104
  end
  object cds_Senha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_acesso'
    Left = 168
    Top = 104
    object cds_SenhaLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object cds_SenhaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cds_SenhaPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object cds_SenhaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object dst_funcionario: TSQLDataSet
    CommandText = 
      'select * from FUNCIONARIOS '#13#10'where ((COD_FUNCIONARIO = :pcod) or' +
      ' (:pcod = 9999999))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 28
    Top = 153
    object dst_funcionarioCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dst_funcionarioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_funcionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_funcionarioNR: TStringField
      FieldName = 'NR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dst_funcionarioCOMPL: TStringField
      FieldName = 'COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dst_funcionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object dst_funcionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object dst_funcionarioUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dst_funcionarioCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dst_funcionarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dst_funcionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dst_funcionarioDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object dst_funcionarioCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dst_funcionarioRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object dst_funcionarioPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_funcionarioMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_funcionarioOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dst_funcionarioCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_funcionarioCARGO: TStringField
      FieldName = 'CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
  end
  object dsp_funcionario: TDataSetProvider
    DataSet = dst_funcionario
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 153
  end
  object cds_funcionario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_funcionario'
    BeforePost = cds_funcionarioBeforePost
    OnNewRecord = cds_funcionarioNewRecord
    Left = 172
    Top = 153
    object cds_funcionarioCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '000'
    end
    object cds_funcionarioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_funcionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_funcionarioNR: TStringField
      FieldName = 'NR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funcionarioCOMPL: TStringField
      FieldName = 'COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funcionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cds_funcionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cds_funcionarioUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_funcionarioCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funcionarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(00\)0000-0000;1;_'
      Size = 13
    end
    object cds_funcionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(00\)0000-0000;1;_'
      Size = 13
    end
    object cds_funcionarioDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_funcionarioCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object cds_funcionarioRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cds_funcionarioPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_funcionarioMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_funcionarioOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_funcionarioCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funcionarioCARGO: TStringField
      FieldName = 'CARGO'
      Size = 70
    end
  end
  object proc_funcionario: TSQLClientDataSet
    CommandText = 
      'select COD_FUNCIONARIO, NOME '#13#10'from FUNCIONARIOS '#13#10'where NOME li' +
      'ke :nome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 255
    Top = 113
    object proc_funcionarioCOD_FUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_FUNCIONARIO'
      Required = True
    end
    object proc_funcionarioNOME: TStringField
      DisplayLabel = 'Nome do funcion'#225'rio'
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dst_empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 32
    Top = 200
    object dst_empresaRAZAO_EMPRESA: TStringField
      FieldName = 'RAZAO_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_empresaNCRECI: TStringField
      FieldName = 'NCRECI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dst_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dst_empresaNR: TStringField
      FieldName = 'NR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dst_empresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dst_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dst_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dst_empresaESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dst_empresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dst_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dst_empresaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dst_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dst_empresaROME_PAGE: TStringField
      FieldName = 'ROME_PAGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dst_empresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dst_empresaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dst_empresaCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dst_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object dst_empresaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object dst_empresaBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dst_empresaAGENCIACEDENTE: TStringField
      FieldName = 'AGENCIACEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaCONTACORRENTECEDENTE: TStringField
      FieldName = 'CONTACORRENTECEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaCNPJCPFCEDENTE: TStringField
      FieldName = 'CNPJCPFCEDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 19
    end
    object dst_empresaINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaIDENTIFICACAOCEDENTEBOLET: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOLET'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dst_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOL_1'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dst_empresaDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dst_empresaDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dst_empresaVARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dst_empresaNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object dst_empresaTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dst_empresaDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dst_empresaINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dst_empresaINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dst_empresaINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dst_empresaACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dst_empresaESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dst_empresaINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_empresa: TDataSetProvider
    DataSet = dst_empresa
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 200
  end
  object cds_empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_empresa'
    BeforePost = cds_empresaBeforePost
    Left = 174
    Top = 200
    object cds_empresaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_empresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaRAZAO_EMPRESA: TStringField
      FieldName = 'RAZAO_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaNCRECI: TStringField
      FieldName = 'NCRECI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_empresaNR: TStringField
      FieldName = 'NR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_empresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_empresaESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_empresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-0000;1;_'
      Size = 13
    end
    object cds_empresaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-0000;1;_'
      Size = 13
    end
    object cds_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaROME_PAGE: TStringField
      FieldName = 'ROME_PAGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_empresaCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-0000;1;_'
      Size = 13
    end
    object cds_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 18
    end
    object cds_empresaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_empresaBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_empresaAGENCIACEDENTE: TStringField
      FieldName = 'AGENCIACEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaCONTACORRENTECEDENTE: TStringField
      FieldName = 'CONTACORRENTECEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaCNPJCPFCEDENTE: TStringField
      FieldName = 'CNPJCPFCEDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 19
    end
    object cds_empresaINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaIDENTIFICACAOCEDENTEBOLET: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOLET'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOL_1'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_empresaDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_empresaDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_empresaVARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_empresaNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_empresaINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_empresaINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_empresaINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_empresaACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_empresaESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object proc_obitos: TSQLClientDataSet
    CommandText = 
      'select ID, FALECIDO, GRUPO, GRUPO_LOTE, INSCRICAO,  LOTE, SERIE'#13 +
      #10'from OBITOS '#13#10'where FALECIDO like :nome and STATUS is null'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 256
    Top = 61
    object proc_obitosID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object proc_obitosFALECIDO: TStringField
      DisplayWidth = 30
      FieldName = 'FALECIDO'
      Required = True
      Size = 100
    end
    object proc_obitosGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_obitosINSCRICAO: TIntegerField
      DisplayLabel = 'Insc.'
      DisplayWidth = 5
      FieldName = 'INSCRICAO'
    end
    object proc_obitosGRUPO_LOTE: TStringField
      DisplayLabel = 'GP Altera'
      FieldName = 'GRUPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object proc_obitosLOTE: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
    end
    object proc_obitosSERIE: TStringField
      FieldName = 'SERIE'
      Visible = False
    end
  end
  object sds_filhos: TSQLDataSet
    CommandText = 'select * from FILHOS '#13#10'where ID = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 256
    object sds_filhosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sds_filhosID_FILHOS: TIntegerField
      FieldName = 'ID_FILHOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_filhosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_filhosDATA_NASC: TIntegerField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_filhos: TDataSetProvider
    DataSet = sds_filhos
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 256
  end
  object cds_filhos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_filhos'
    BeforePost = cds_filhosBeforePost
    OnNewRecord = cds_filhosNewRecord
    OnReconcileError = cds_filhosReconcileError
    Left = 168
    Top = 256
    object cds_filhosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object cds_filhosID_FILHOS: TIntegerField
      FieldName = 'ID_FILHOS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cds_filhosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_filhosDATA_NASC: TIntegerField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds_CR: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTOS '#13#10' where ((ID_SOCIO = :pcod) or (ID_R' +
      'ECEBIMENTOS = :pid))  '#13#10#13#10' order by  VENCIMENTO, LOTE, TITULO '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 304
    object sds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/00;1;_'
    end
    object sds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_CRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CROBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sds_CRENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_CR: TDataSetProvider
    DataSet = sds_CR
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 305
  end
  object cds_CR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CR'
    Left = 168
    Top = 305
    object cds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object cds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_CRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CROBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cds_CRENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRtotal_titulo: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_titulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'Sum(VALOR_RECEBER)'
    end
    object cds_CRtotal_pago: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_pago'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'Sum(VALOR_PAGO)'
    end
  end
  object sds_serie: TSQLDataSet
    CommandText = 
      'select * from SERIES '#13#10'where ((SERIE = :pcod) or (:pcod = '#39'todos' +
      #39'))'#13#10'and ((NOTAFISCAL = :tipo) or (:tipo = '#39'td'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 376
    Top = 8
    object sds_serieSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_serieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_serieNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object dsp_serie: TDataSetProvider
    DataSet = sds_serie
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 424
    Top = 8
  end
  object cds_serie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_serie'
    Left = 480
    Top = 8
    object cds_serieSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_serieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_serieNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object dsp_grupo: TDataSetProvider
    DataSet = sds_grupo
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 94
    Top = 407
  end
  object cds_grupo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pgrupo'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_grupo'
    BeforePost = cds_grupoBeforePost
    AfterPost = cds_grupoAfterPost
    OnNewRecord = cds_grupoNewRecord
    Left = 171
    Top = 407
    object cds_grupoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_grupoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_grupoQTDE: TIntegerField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_grupoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_grupoN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_grupoTOT_FAL: TIntegerField
      FieldName = 'TOT_FAL'
    end
    object cds_grupoLOTE: TIntegerField
      FieldName = 'LOTE'
    end
  end
  object sds_grupo: TSQLDataSet
    CommandText = 
      'select * from GRUPO '#13#10'where (ID_GRUPO = :pcod) or (:pcod = 99999' +
      '99) or'#13#10'GRUPO = :pgrupo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pgrupo'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 33
    Top = 407
    object sds_grupoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_grupoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_grupoQTDE: TIntegerField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_grupoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_grupoN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_grupoTOT_FAL: TIntegerField
      FieldName = 'TOT_FAL'
    end
    object sds_grupoLOTE: TIntegerField
      FieldName = 'LOTE'
    end
  end
  object sds_clinica: TSQLDataSet
    CommandText = 
      'select * from CLINICA '#13#10'where (ID_CLINICA = :pcod) or (:pcod = 9' +
      '999999) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 376
    Top = 56
    object sds_clinicaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_clinicaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_clinicaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_clinicaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object sds_clinicaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_clinicaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_clinicaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_clinicaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_clinicaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_clinicaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_clinicaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dsp_clinica: TDataSetProvider
    DataSet = sds_clinica
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 424
    Top = 56
  end
  object cds_clinica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_clinica'
    BeforePost = cds_clinicaBeforePost
    OnNewRecord = cds_clinicaNewRecord
    Left = 480
    Top = 56
    object cds_clinicaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_clinicaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_clinicaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_clinicaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cds_clinicaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_clinicaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_clinicaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_clinicaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_clinicaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_clinicaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_clinicaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object sds_consulta: TSQLDataSet
    CommandText = 
      'select c.*, s.codigo, m.NOME_MEDICO, m.CRM   '#13#10'from CONSULTAS c ' +
      #13#10'left outer join socios s on '#13#10's.ID_SOCIO = c.ID_SOCIO '#13#10'left o' +
      'uter join medico m on '#13#10'm.ID_MEDICO = c.ID_MEDICO '#13#10'where ((c.ID' +
      '_CONSULTA = :pcod) or (:pcod = 9999999))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 376
    Top = 104
    object sds_consultaID_CONSULTA: TIntegerField
      FieldName = 'ID_CONSULTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_consultaDATA_CONSULTA: TDateField
      FieldName = 'DATA_CONSULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_consultaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_consultaGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_consultaINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_consultaDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_consultaID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_consultaSOCIO: TStringField
      FieldName = 'SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_consultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object sds_consultaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_consultaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      ProviderFlags = []
      Size = 100
    end
    object sds_consultaCRM: TStringField
      FieldName = 'CRM'
      ProviderFlags = []
      Size = 10
    end
    object sds_consultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sds_consultaPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 30
    end
  end
  object dsp_consulta: TDataSetProvider
    DataSet = sds_consulta
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 432
    Top = 104
  end
  object cds_consulta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_consulta'
    BeforePost = cds_consultaBeforePost
    Left = 488
    Top = 104
    object cds_consultaID_CONSULTA: TIntegerField
      FieldName = 'ID_CONSULTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_consultaDATA_CONSULTA: TDateField
      FieldName = 'DATA_CONSULTA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_consultaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_consultaGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_consultaINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_consultaDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_consultaID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_consultaSOCIO: TStringField
      FieldName = 'SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_consultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object cds_consultaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_consultaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      ProviderFlags = []
      Size = 100
    end
    object cds_consultaCRM: TStringField
      FieldName = 'CRM'
      ProviderFlags = []
      Size = 10
    end
    object cds_consultaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_consultaPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 30
    end
  end
  object proc_consulta: TSQLClientDataSet
    CommandText = 
      'select SOCIO, DEPENDENTE, DATA_CONSULTA'#13#10'from CONSULTAS'#13#10'where S' +
      'OCIO like :nome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 565
    Top = 104
    object proc_consultaSOCIO: TStringField
      DisplayLabel = 'S'#243'cio'
      FieldName = 'SOCIO'
      Size = 80
    end
    object proc_consultaDEPENDENTE: TStringField
      DisplayLabel = 'Dependente'
      FieldName = 'DEPENDENTE'
      Size = 80
    end
    object proc_consultaDATA_CONSULTA: TDateField
      DisplayLabel = 'Data Consulta'
      FieldName = 'DATA_CONSULTA'
    end
  end
  object proc_clinica: TSQLClientDataSet
    CommandText = 'select ID_CLINICA, NOME '#13#10'from CLINICA '#13#10'where NOME like :pnome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 562
    Top = 56
    object proc_clinicaID_CLINICA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLINICA'
      Required = True
    end
    object proc_clinicaNOME: TStringField
      DisplayLabel = 'Nome da Clinica'
      FieldName = 'NOME'
      Size = 80
    end
  end
  object sds_socio: TSQLDataSet
    CommandText = 
      'SELECT CPF_CGC'#13#10'             , DTACADASTRO'#13#10'             , DTASI' +
      'STEMA'#13#10'             , DTNASC'#13#10'             , ESTCIV'#13#10'           ' +
      '  , GRUPO'#13#10'             , ID_COB'#13#10'             , ID_SOCIO'#13#10'     ' +
      '        , ID_VEN'#13#10'             , NAT'#13#10'             , NOME_SOCIO'#13 +
      #10'             , N_INSCRICAO'#13#10'             , OBS'#13#10'             , ' +
      'PROFISSAO'#13#10'             , RG_IE'#13#10'             , SOBRENOME'#13#10'     ' +
      '        , STATUS'#13#10'             , TIPO_DOC'#13#10'             , VALOR_' +
      'SERVICO '#13#10'             , VENCIMENTO '#13#10'             , PARCELA '#13#10' ' +
      '            , ENTRADA  '#13#10'             , CARENCIA   '#13#10'           ' +
      '  , CODIGO  '#13#10'             , TIPO_SOCIO  '#13#10'             , MESES ' +
      #13#10'             , DIAPGTO  '#13#10'             , DATAINICIO   '#13#10'      ' +
      '       , DATAFIM  '#13#10'             , PERCENTUALJUROS'#13#10'            ' +
      ' , PERCENTUALMULTA'#13#10'             , PERCENTUALDESCONTO'#13#10'         ' +
      '    , VALOROUTROSACRESCIMOS'#13#10'             , DEMONSTRATIVO'#13#10'     ' +
      '        , INSTRUCOESCAIXA'#13#10'             , INSTRUCAO1'#13#10'          ' +
      '   , INSTRUCAO2'#13#10'             , INSTRUCAO3'#13#10'             , TIPOI' +
      'MPRESSAOCARNE'#13#10'             , ACEITEDOCUMENTO'#13#10'             , ES' +
      'PECIEDOCUMENTO'#13#10'             , GEROU '#13#10'             , CODIGO_T '#13 +
      #10'             , PLANO  '#13#10'             , HISTORICO '#13#10'            ' +
      ' , PLANO_ANT'#13#10'             , DTA_CONTRATO '#13#10'             , DTA_C' +
      'ONTRATO_ANT '#13#10'             , SITUACAO '#13#10'             , DATAEXCLU' +
      'SAO '#13#10'             , EMAIL  '#13#10'             , DTA_ULTIMA_PARCELA ' +
      #13#10'             , FAIXA '#13#10'             , DIAPARAPGTO '#13#10'          ' +
      '   , QUTDE '#13#10'FROM'#13#10'SOCIOS '#13#10'where ID_SOCIO = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 377
    Top = 149
    object sds_socioID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_socioNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_socioSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socioNAT: TStringField
      FieldName = 'NAT'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socioDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socioCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_socioRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_socioID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socioDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socioOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socioESTCIV: TIntegerField
      FieldName = 'ESTCIV'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socioMESES: TIntegerField
      FieldName = 'MESES'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDATAFIM: TDateField
      FieldName = 'DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sds_socioINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sds_socioINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_socioINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_socioINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_socioTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socioESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_socioGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sds_socioCODIGO_T: TIntegerField
      FieldName = 'CODIGO_T'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sds_socioPLANO_ANT: TStringField
      FieldName = 'PLANO_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDTA_CONTRATO_ANT: TDateField
      FieldName = 'DTA_CONTRATO_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_socioDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_socioFAIXA: TIntegerField
      FieldName = 'FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socioQUTDE: TIntegerField
      FieldName = 'QUTDE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_socio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_socio'
    BeforePost = cds_socioBeforePost
    OnNewRecord = cds_socioNewRecord
    Left = 489
    Top = 149
    object cds_socioID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000'
    end
    object cds_socioNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_socioSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socioDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;'
    end
    object cds_socioNAT: TStringField
      FieldName = 'NAT'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socioPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socioCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_socioRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_socioID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioN_INSCRICAO: TIntegerField
      Alignment = taCenter
      FieldName = 'N_INSCRICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_socioGRUPO: TStringField
      Alignment = taCenter
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socioDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socioOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socioESTCIV: TIntegerField
      FieldName = 'ESTCIV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
    end
    object cds_socioTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socioMESES: TIntegerField
      FieldName = 'MESES'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDATAFIM: TDateField
      FieldName = 'DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_socioPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_socioINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_socioINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_socioINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_socioINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_socioTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socioESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_socioGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cds_socioCODIGO_T: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_T'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
    end
    object cds_socioPLANO: TStringField
      FieldName = 'PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_socioPLANO_ANT: TStringField
      FieldName = 'PLANO_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDTA_CONTRATO_ANT: TDateField
      FieldName = 'DTA_CONTRATO_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_socioDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_socioDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioFAIXA: TIntegerField
      FieldName = 'FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socioQUTDE: TIntegerField
      FieldName = 'QUTDE'
    end
  end
  object dsp_socio: TDataSetProvider
    DataSet = sds_socio
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 433
    Top = 149
  end
  object sds_end: TSQLDataSet
    CommandText = 
      'select e.*'#13#10'        , m.MUNICIPIO'#13#10'        , b.BAIRRO '#13#10'from END' +
      'ERECO e '#13#10'left outer join MUNICIPIO m on '#13#10'm.ID_MUNICIPIO = e.ID' +
      '_MUNICIPIO '#13#10'left outer join BAIRRO b on '#13#10'b.ID_BAIRRO = e.ID_BA' +
      'IRRO '#13#10'where ID_SOCIO = :pid'#13#10'order by e.TIPOEND'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 377
    Top = 193
    object sds_endID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_endID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sds_endCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_endID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_endESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_endCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sds_endDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_endFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_endFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_endFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_endCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_endTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = []
      Size = 60
    end
    object sds_endBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsp_end: TDataSetProvider
    DataSet = sds_end
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 433
    Top = 193
  end
  object cds_end: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_end'
    BeforePost = cds_endBeforePost
    OnNewRecord = cds_endNewRecord
    Left = 489
    Top = 193
    object cds_endID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_endID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_endCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_endCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_endDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_endFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_endFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_endFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_endCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_endTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = []
      Size = 60
    end
    object cds_endBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 60
    end
  end
  object proc_socio: TSQLClientDataSet
    CommandText = 
      'select ID_SOCIO'#13#10'        , NOME_SOCIO'#13#10'        , SOBRENOME '#13#10'   ' +
      '     , GRUPO'#13#10'        , N_INSCRICAO '#13#10'from SOCIOS '#13#10'where NOME_S' +
      'OCIO like :pnome '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 569
    Top = 149
    object proc_socioID_SOCIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object proc_socioNOME_SOCIO: TStringField
      DisplayLabel = 'Nome do S'#243'cio'
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object proc_socioSOBRENOME: TStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_socioGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_socioN_INSCRICAO: TIntegerField
      DisplayLabel = 'Inscri'#231#227'o'
      FieldName = 'N_INSCRICAO'
      DisplayFormat = '0000'
    end
  end
  object sds_vend: TSQLDataSet
    CommandText = 'select * from VENDEDOR '#13#10'where ID_VEN = :pid'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 379
    Top = 280
    object sds_vendID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_vendENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_vendCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_vendBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_vendMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_vendESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_vendCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sds_vendDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_vendFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendPORC: TFloatField
      FieldName = 'PORC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendPORCPRA: TFloatField
      FieldName = 'PORCPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendEXTERNO: TStringField
      FieldName = 'EXTERNO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendDTADM: TDateField
      FieldName = 'DTADM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendDTRESC: TDateField
      FieldName = 'DTRESC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_vend: TDataSetProvider
    DataSet = sds_vend
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 437
    Top = 281
  end
  object cds_vend: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_vend'
    BeforePost = cds_vendBeforePost
    Left = 488
    Top = 280
    object cds_vendID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_vendVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_vendENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_vendCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_vendBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_vendMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_vendESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_vendCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_vendDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_vendFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendPORC: TFloatField
      FieldName = 'PORC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendPORCPRA: TFloatField
      FieldName = 'PORCPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendEXTERNO: TStringField
      FieldName = 'EXTERNO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendDTADM: TDateField
      FieldName = 'DTADM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendDTRESC: TDateField
      FieldName = 'DTRESC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds_cob: TSQLDataSet
    CommandText = 'select  * from COBRANCA '#13#10'where  ID_COB = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 380
    Top = 324
    object sds_cobID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cobNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cobENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cobCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cobBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cobMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cobESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_cobCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sds_cobDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_cobFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cobFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cobFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cobCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cobPORC: TFloatField
      FieldName = 'PORC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cobPORCOU: TFloatField
      FieldName = 'PORCOU'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cobDTADM: TDateField
      FieldName = 'DTADM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cobDTRESC: TDateField
      FieldName = 'DTRESC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_cob: TDataSetProvider
    DataSet = sds_cob
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 438
    Top = 325
  end
  object cds_cob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cob'
    BeforePost = cds_cobBeforePost
    Left = 489
    Top = 324
    object cds_cobID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cobNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cobENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cobCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cobBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cobMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cobESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_cobCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_cobDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_cobFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cobFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cobFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cobCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cobPORC: TFloatField
      FieldName = 'PORC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cobPORCOU: TFloatField
      FieldName = 'PORCOU'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cobDTADM: TDateField
      FieldName = 'DTADM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cobDTRESC: TDateField
      FieldName = 'DTRESC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds_bairro: TSQLDataSet
    CommandText = 
      'select * from BAIRRO '#13#10'where ((ID_BAIRRO = :pid) or (:pid = 9999' +
      '999)) '#13#10'order by BAIRRO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 376
    Top = 368
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
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 440
    Top = 368
  end
  object cds_bairro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_bairro'
    BeforePost = cds_bairroBeforePost
    Left = 496
    Top = 368
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
  object sds_munic: TSQLDataSet
    CommandText = 
      'select * from MUNICIPIO '#13#10'where ((ID_MUNICIPIO = :pid) or (:pid ' +
      '= 9999999)) '#13#10'order by MUNICIPIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 576
    Top = 368
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
  object dsp_munic: TDataSetProvider
    DataSet = sds_munic
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 632
    Top = 368
  end
  object cds_munic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_munic'
    BeforePost = cds_municBeforePost
    Left = 688
    Top = 368
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
  object proc_vend: TSQLClientDataSet
    CommandText = 
      'select ID_VEN, VENDEDOR from VENDEDOR '#13#10'where VENDEDOR like :pno' +
      'me'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 568
    Top = 280
    object proc_vendID_VEN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_VEN'
      Required = True
    end
    object proc_vendVENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'VENDEDOR'
      Size = 80
    end
  end
  object proc_cob: TSQLClientDataSet
    CommandText = 'select ID_COB, NOME from COBRANCA '#13#10'where NOME like :pnome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 568
    Top = 324
    object proc_cobID_COB: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_COB'
      Required = True
    end
    object proc_cobNOME: TStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME'
      Size = 80
    end
  end
  object SQLObitos: TSQLConnection
    ConnectionName = 'obitos'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\home\bd\OBITOS_ARTUR.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 248
    Top = 8
  end
  object sds_socio_Desl: TSQLDataSet
    CommandText = 'select * from SOCIOS_CANCELADOS '#13#10'where ID_SOCIO_DESL = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 465
    object sds_socio_DeslID_SOCIO_DESL: TIntegerField
      FieldName = 'ID_SOCIO_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_socio_DeslID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_socio_DeslSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socio_DeslNAT: TStringField
      FieldName = 'NAT'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socio_DeslDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_socio_DeslCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_socio_DeslRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_socio_DeslID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socio_DeslDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socio_DeslOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socio_DeslESTCIV: TIntegerField
      FieldName = 'ESTCIV'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_socio_DeslDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslMESES: TIntegerField
      FieldName = 'MESES'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslDATAFIM: TDateField
      FieldName = 'DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_socio_DeslID_SOCIO_CANCEL: TIntegerField
      FieldName = 'ID_SOCIO_CANCEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_socio_desl: TDataSetProvider
    DataSet = sds_socio_Desl
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 465
  end
  object cds_socio_desl: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_socio_desl'
    BeforePost = cds_socio_deslBeforePost
    OnNewRecord = cds_socio_deslNewRecord
    Left = 176
    Top = 465
    object cds_socio_deslID_SOCIO_DESL: TIntegerField
      FieldName = 'ID_SOCIO_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_socio_deslID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_socio_deslSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socio_deslNAT: TStringField
      FieldName = 'NAT'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socio_deslDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_socio_deslCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_socio_deslRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_socio_deslID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socio_deslDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socio_deslOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_socio_deslTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_socio_deslESTCIV: TIntegerField
      FieldName = 'ESTCIV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_socio_deslCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object cds_socio_deslTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object cds_socio_deslDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
    end
    object cds_socio_deslMESES: TIntegerField
      FieldName = 'MESES'
    end
    object cds_socio_deslDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object cds_socio_deslDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object cds_socio_deslID_SOCIO_CANCEL: TIntegerField
      FieldName = 'ID_SOCIO_CANCEL'
    end
  end
  object sds_dep_D: TSQLDataSet
    CommandText = 
      'select  d.*'#13#10'           ,p.DESCRICAO     '#13#10'from DEPENDENTE_DESL ' +
      'd '#13#10'left outer join PARENTESCO p '#13#10'on p.ID_PAR=d.ID_PAR '#13#10'where ' +
      'd.ID_SOCIO = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 376
    Top = 416
    object sds_dep_DID_DEP_DESL: TIntegerField
      FieldName = 'ID_DEP_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_dep_DID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_dep_DNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_dep_DFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_dep_DCODPAR: TFloatField
      FieldName = 'CODPAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_dep_DDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_dep_DDTFALEC: TDateField
      FieldName = 'DTFALEC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_dep_DID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_dep_DDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_dep_DCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_dep_DDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_dep_D: TDataSetProvider
    DataSet = sds_dep_D
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 440
    Top = 416
  end
  object cds_dep_D: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_dep_D'
    BeforePost = cds_dep_DBeforePost
    OnNewRecord = cds_dep_DNewRecord
    Left = 496
    Top = 416
    object cds_dep_DID_DEP_DESL: TIntegerField
      FieldName = 'ID_DEP_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_dep_DID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_dep_DNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_dep_DFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_dep_DCODPAR: TFloatField
      FieldName = 'CODPAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_dep_DDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_dep_DDTFALEC: TDateField
      FieldName = 'DTFALEC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_dep_DID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_dep_DDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_dep_DCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object cds_dep_DDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
  end
  object sds_end_D: TSQLDataSet
    CommandText = 'select * from ENDERECO_DESL '#13#10'where ID_SOCIO_DESL = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 576
    Top = 416
    object sds_end_DID_ENDERECO_DESL: TIntegerField
      FieldName = 'ID_ENDERECO_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_end_DID_SOCIO_DESL: TIntegerField
      FieldName = 'ID_SOCIO_DESL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_end_DENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sds_end_DCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_end_DID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_end_DID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_end_DESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_end_DCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sds_end_DDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_end_DFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_end_DFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_end_DFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_end_DCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_end_DTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp_end_D: TDataSetProvider
    DataSet = sds_end_D
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 640
    Top = 416
  end
  object cds_end_D: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_end_D'
    BeforePost = cds_end_DBeforePost
    OnNewRecord = cds_end_DNewRecord
    Left = 704
    Top = 416
    object cds_end_DID_ENDERECO_DESL: TIntegerField
      FieldName = 'ID_ENDERECO_DESL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_end_DID_SOCIO_DESL: TIntegerField
      FieldName = 'ID_SOCIO_DESL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_end_DENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_end_DCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_end_DID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_end_DID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_end_DESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_end_DCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_end_DDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_end_DFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_end_DFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_end_DFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_end_DCXP: TStringField
      FieldName = 'CXP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_end_DTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object proc_socio_D: TSQLClientDataSet
    CommandText = 
      'select ID_SOCIO_DESL'#13#10'        , ID_SOCIO'#13#10'        , NOME_SOCIO'#13#10 +
      '        , SOBRENOME '#13#10'        , GRUPO'#13#10'        , N_INSCRICAO '#13#10'f' +
      'rom SOCIOS_CANCELADOS '#13#10'where NOME_SOCIO like :pnome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 264
    Top = 417
    object proc_socio_DID_SOCIO_DESL: TIntegerField
      FieldName = 'ID_SOCIO_DESL'
      Required = True
    end
    object proc_socio_DID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object proc_socio_DNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object proc_socio_DSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_socio_DGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_socio_DN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
  end
  object s_6: TSQLDataSet
    CommandText = 
      'SELECT CAST(GEN_ID(GEN_RC_ID, 1) AS INTEGER) AS CODIGO FROM RDB$' +
      'DATABASE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 560
    Top = 216
    object s_6CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object d_6: TDataSetProvider
    DataSet = s_6
    Options = [poAllowCommandText]
    Left = 592
    Top = 216
  end
  object c_6_genid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_6'
    Left = 640
    Top = 216
    object c_6_genidCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object cds_lote: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'plote'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_lote'
    Left = 784
    Top = 8
    object cds_loteID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_loteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cds_lotePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_loteVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_loteCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_loteFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_loteVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_loteDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_loteGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp_lote: TDataSetProvider
    DataSet = sds_lote
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 8
  end
  object sds_lote: TSQLDataSet
    CommandText = 
      'select * '#13#10'from RECEBIMENTOS '#13#10'where LOTE = :plote and grupo = :' +
      'pgrupo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'plote'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 680
    Top = 8
    object sds_loteID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_loteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sds_lotePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_loteVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_loteCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_loteFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_loteVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_loteDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_loteGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sds_parametro: TSQLDataSet
    CommandText = 
      'select * from PARAMETROS '#13#10'where ((PARAMETRO = :ppar) or (:ppar ' +
      '= '#39'todos'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ppar'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ppar'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 680
    Top = 56
    object sds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object sds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_parametroPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dsp_parametro: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 744
    Top = 56
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ppar'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ppar'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_parametro'
    Left = 801
    Top = 56
    object cds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_parametroPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object sdsPermissao: TSQLDataSet
    CommandText = 
      'select * from PERMISSAO '#13#10'where LOGIN = :Plogin and TABELA = :Pt' +
      'abela'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ptabela'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 264
    Top = 464
    object sdsPermissaoCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sdsPermissaoTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsPermissaoLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsPermissaoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoCONSULTAR: TStringField
      FieldName = 'CONSULTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dstPermissao: TDataSetProvider
    DataSet = sdsPermissao
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 336
    Top = 464
  end
  object cdsPermissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ptabela'
        ParamType = ptInput
      end>
    ProviderName = 'dstPermissao'
    Left = 408
    Top = 464
    object cdsPermissaoCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPermissaoTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPermissaoLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPermissaoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoCONSULTAR: TStringField
      FieldName = 'CONSULTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sds_cartorio: TSQLDataSet
    CommandText = 'select * from CARTORIO '#13#10'where ID_CARTORIO = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 576
    Top = 480
    object sds_cartorioID_CARTORIO: TIntegerField
      FieldName = 'ID_CARTORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cartorioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cartorioENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cartorioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cartorioCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cartorioESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_cartorioCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sds_cartorioFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cartorioFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cartorioFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cartorioCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cartorioRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cartorioCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
  end
  object dsp_cartorio: TDataSetProvider
    DataSet = sds_cartorio
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 640
    Top = 480
  end
  object cds_cartorio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cartorio'
    BeforePost = cds_cartorioBeforePost
    OnNewRecord = cds_cartorioNewRecord
    Left = 712
    Top = 480
    object cds_cartorioID_CARTORIO: TIntegerField
      FieldName = 'ID_CARTORIO'
    end
    object cds_cartorioNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cds_cartorioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cds_cartorioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cds_cartorioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cds_cartorioESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cds_cartorioCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cds_cartorioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cds_cartorioFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cds_cartorioFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_cartorioCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object cds_cartorioRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object cds_cartorioCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 25
    end
  end
  object sds_titulo: TSQLDataSet
    CommandText = 'select * from BOLETOS order by CHAVEBOLETO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 240
    Top = 208
  end
  object dsp_titulo: TDataSetProvider
    DataSet = sds_titulo
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 280
    Top = 208
  end
  object cds_titulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_titulo'
    Left = 320
    Top = 208
    object cds_tituloCHAVEBOLETO: TIntegerField
      FieldName = 'CHAVEBOLETO'
    end
    object cds_tituloCHAVECONTACORRENTE: TIntegerField
      FieldName = 'CHAVECONTACORRENTE'
    end
    object cds_tituloNOMESACADO: TStringField
      FieldName = 'NOMESACADO'
      Size = 50
    end
    object cds_tituloCNPJCPFSACADO: TStringField
      FieldName = 'CNPJCPFSACADO'
      Size = 19
    end
    object cds_tituloENDERECOEMAILSACADO: TStringField
      FieldName = 'ENDERECOEMAILSACADO'
      Size = 64
    end
    object cds_tituloENDERECOSACADO: TStringField
      FieldName = 'ENDERECOSACADO'
      Size = 60
    end
    object cds_tituloBAIRROSACADO: TStringField
      FieldName = 'BAIRROSACADO'
      Size = 30
    end
    object cds_tituloCIDADESACADO: TStringField
      FieldName = 'CIDADESACADO'
      Size = 30
    end
    object cds_tituloESTADOSACADO: TStringField
      FieldName = 'ESTADOSACADO'
      Size = 2
    end
    object cds_tituloCEPSACADO: TStringField
      FieldName = 'CEPSACADO'
      Size = 10
    end
    object cds_tituloDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cds_tituloVALORBOLETO: TFloatField
      FieldName = 'VALORBOLETO'
    end
    object cds_tituloPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object cds_tituloPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object cds_tituloPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object cds_tituloVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object cds_tituloDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object cds_tituloINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object cds_tituloNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cds_tituloDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object cds_tituloVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
    object cds_tituloINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object cds_tituloINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object cds_tituloINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object cds_tituloPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cds_tituloENDNUMERO: TStringField
      FieldName = 'ENDNUMERO'
      Size = 10
    end
    object cds_tituloCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cds_tituloTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object cds_tituloACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object cds_tituloESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
  end
  object sds_cobranca: TSQLDataSet
    CommandText = 'select * from CONTASCORRENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 240
    Top = 256
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sds_cobranca
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 280
    Top = 256
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cob'
    Left = 320
    Top = 256
    object cds_cobCHAVECONTACORRENTE: TIntegerField
      FieldName = 'CHAVECONTACORRENTE'
    end
    object cds_cobBANCO: TStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object cds_cobAGENCIACEDENTE: TStringField
      FieldName = 'AGENCIACEDENTE'
    end
    object cds_cobCONTACORRENTECEDENTE: TStringField
      FieldName = 'CONTACORRENTECEDENTE'
    end
    object cds_cobCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
    end
    object cds_cobNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 100
    end
    object cds_cobCNPJCPFCEDENTE: TStringField
      FieldName = 'CNPJCPFCEDENTE'
      Size = 19
    end
    object cds_cobINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object cds_cobFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object cds_cobPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object cds_cobARQUIVOLICENCA: TStringField
      FieldName = 'ARQUIVOLICENCA'
      Size = 250
    end
    object cds_cobENDERECOEMAILCEDENTE: TStringField
      FieldName = 'ENDERECOEMAILCEDENTE'
      Size = 64
    end
    object cds_cobURLIMAGENSBOLETOEMAIL: TStringField
      FieldName = 'URLIMAGENSBOLETOEMAIL'
      Size = 250
    end
    object cds_cobURLLOGOTIPOBOLETOEMAIL: TStringField
      FieldName = 'URLLOGOTIPOBOLETOEMAIL'
      Size = 250
    end
    object cds_cobCAMINHOLOGOTIPOBOLETOIMPR: TStringField
      FieldName = 'CAMINHOLOGOTIPOBOLETOIMPR'
      Size = 250
    end
    object cds_cobIDENTIFICACAOCEDENTEBOLET: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOLET'
      Size = 250
    end
    object cds_cobIDENTIFICACAOCEDENTEBOL_1: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOL_1'
      Size = 250
    end
    object cds_cobDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cds_cobDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cds_cobVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object cds_cobNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object cds_cobTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object cds_cobTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
  end
  object dsp_firma: TDataSetProvider
    DataSet = sds_firma
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 280
    Top = 304
  end
  object cds_firma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_firma'
    Left = 320
    Top = 304
    object cds_firmaRAZAO_EMPRESA: TStringField
      FieldName = 'RAZAO_EMPRESA'
      Size = 50
    end
    object cds_firmaNCRECI: TStringField
      FieldName = 'NCRECI'
      Size = 15
    end
    object cds_firmaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cds_firmaNR: TStringField
      FieldName = 'NR'
      Size = 10
    end
    object cds_firmaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_firmaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_firmaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cds_firmaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cds_firmaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cds_firmaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cds_firmaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cds_firmaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cds_firmaROME_PAGE: TStringField
      FieldName = 'ROME_PAGE'
      Size = 80
    end
    object cds_firmaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object cds_firmaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 50
    end
    object cds_firmaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cds_firmaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cds_firmaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_firmaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
  end
  object sds_firma: TSQLDataSet
    CommandText = 'select * from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 240
    Top = 304
  end
  object cds_par: TSQLClientDataSet
    CommandText = 'select * from PARAMETROS '#13#10'where PARAMETRO = '#39'Video'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = SQLObitos
    Left = 128
    Top = 512
    object cds_parPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object cds_parDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_parCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_parPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object proc_serie: TSQLClientDataSet
    CommandText = 
      'select SERIE'#13#10'        , ULTIMO_NUMERO '#13#10'        , NOTAFISCAL '#13#10'f' +
      'rom SERIES '#13#10'where  SERIE like :pserie '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pserie'
        ParamType = ptInput
      end>
    DBConnection = SQLObitos
    Left = 552
    Top = 8
    object proc_serieSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Required = True
    end
    object proc_serieULTIMO_NUMERO: TIntegerField
      DisplayLabel = 'Ultimo N'#250'mero'
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object proc_serieNOTAFISCAL: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOTAFISCAL'
      FixedChar = True
      Size = 2
    end
  end
  object sds_CP: TSQLDataSet
    CommandText = 'select * from PAGAMENTO  '#13#10'where ID_PAGAMENTO = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 357
    object sds_CPID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_CPTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sds_CPEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sds_CPFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_CPDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sds_CPCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CPOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sds_CPENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_CPID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CPSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dsp_CP: TDataSetProvider
    DataSet = sds_CP
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 96
    Top = 358
  end
  object cds_CP: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CP'
    Left = 168
    Top = 358
    object cds_CPID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
    end
    object cds_CPTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cds_CPEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cds_CPDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cds_CPDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object cds_CPCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cds_CPCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object cds_CPCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object cds_CPVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_CPFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Size = 40
    end
    object cds_CPDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_CPHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_CPCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object cds_CPCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_CPCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object cds_CPCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cds_CPN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cds_CPDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object cds_CPVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object cds_CPJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = ',#0.00'
    end
    object cds_CPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',#0.00'
    end
    object cds_CPPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object cds_CPTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object cds_CPFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object cds_CPVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      DisplayFormat = ',#0.00'
    end
    object cds_CPVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      DisplayFormat = ',#0.00'
    end
    object cds_CPVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      DisplayFormat = ',#0.00'
    end
    object cds_CPOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object cds_CPOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object cds_CPPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cds_CPID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
    end
    object cds_CPID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cds_CPSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cds_CPOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object cds_CPENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cds_CPTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 2
    end
    object cds_CPID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
    end
    object cds_CPSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
  end
  object cds_pront: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Phist'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_pront'
    Left = 640
    Top = 536
    object cds_prontID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object cds_prontHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
    object cds_prontDTA_ALT_PLANO: TDateField
      FieldName = 'DTA_ALT_PLANO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_pront: TDataSetProvider
    DataSet = sds_pront
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 552
    Top = 536
  end
  object sds_pront: TSQLDataSet
    CommandText = 'select *  from HISTORICO '#13#10'WHERE ID_SOCIO = :Phist'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Phist'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 480
    Top = 536
    object sds_prontID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_prontHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sds_prontDTA_ALT_PLANO: TDateField
      FieldName = 'DTA_ALT_PLANO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_ContasR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pdta'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CR1'
    Left = 144
    Top = 562
    object IntegerField7: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object IntegerField9: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object DateField5: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object DateField6: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object StringField11: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object FloatField12: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField13: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField14: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object DateField7: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object StringField12: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField13: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object FloatField17: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object StringField16: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField11: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField17: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object DateField8: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object StringField18: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField19: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object StringField20: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ContasRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ContasRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object AggregateField1: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_titulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'Sum(VALOR_NF)'
    end
    object AggregateField2: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_pago'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'Sum(VALOR_PAGO)'
    end
  end
  object dsp_CR1: TDataSetProvider
    DataSet = cds_CR1
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 88
    Top = 562
  end
  object cds_CR1: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTOS '#13#10'where ID_SOCIO = :pid '#13#10'and VENCIME' +
      'NTO > :pdta '#13#10'and TIPO_DOC = '#39'MS'#39' '#13#10'and STATUS = '#39'Pendente'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pdta'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 32
    Top = 561
    object IntegerField1: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object DateField1: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField2: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField4: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField5: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField6: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField7: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object DateField3: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/00;1;_'
    end
    object StringField2: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField9: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField6: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField5: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField7: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object DateField4: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object StringField8: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField9: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CR1TITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CR1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsLog: TSQLDataSet
    CommandText = 'select * from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLObitos
    Left = 328
    Top = 520
    object sdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object sdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object sdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object sdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object sdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object sdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object sdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object sdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLog'
    Left = 424
    Top = 520
    object cdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object cdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object cdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object cdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object cdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object cdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object cdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object cdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object dspLog: TDataSetProvider
    DataSet = sdsLog
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 520
  end
  object sdsCircular: TSQLDataSet
    CommandText = 
      'select * from LOTES '#13#10' where ((LOTE = :lt) and (GRUPO = :gp)) '#13#10 +
      ' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'lt'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'gp'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 688
    Top = 104
    object sdsCircularID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCircularLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCircularGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCircularGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsCircularN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCircular: TDataSetProvider
    DataSet = sdsCircular
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 744
    Top = 104
  end
  object cdsCircular: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'lt'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'gp'
        ParamType = ptInput
      end>
    ProviderName = 'dspCircular'
    BeforePost = cdsCircularBeforePost
    Left = 800
    Top = 104
    object cdsCircularID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCircularLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cdsCircularGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsCircularGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object cdsCircularN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
    end
  end
  object sdsObito: TSQLDataSet
    CommandText = 
      'select ID, LOTE from OBITOS  '#13#10' where Lote = :lt '#13#10' and GRUPO = ' +
      ':gp'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'lt'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'gp'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 688
    Top = 160
    object sdsObitoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsObitoLOTE: TIntegerField
      FieldName = 'LOTE'
    end
  end
  object dspObito: TDataSetProvider
    DataSet = sdsObito
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 752
    Top = 160
  end
  object cdsObito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'lt'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'gp'
        ParamType = ptInput
      end>
    ProviderName = 'dspObito'
    BeforePost = cds_ObitosBeforePost
    OnNewRecord = cds_ObitosNewRecord
    Left = 824
    Top = 160
    object cdsObitoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsObitoLOTE: TIntegerField
      FieldName = 'LOTE'
    end
  end
  object sds_itens: TSQLDataSet
    CommandText = 
      'select it.* '#13#10'        , prod.DESCRICAO '#13#10'from MOVIMENTODETALHE i' +
      't '#13#10'left outer join PRODUTOS prod on '#13#10'prod.ID_PRODUTO = it.ID_P' +
      'RODUTO'#13#10'where ID_MOVIMENTO = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 725
    Top = 216
    object sds_itensID_DETALHE: TIntegerField
      FieldName = 'ID_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_itensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_itensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensPRECO_REAL: TFloatField
      FieldName = 'PRECO_REAL'
    end
    object sds_itensUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_itensVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object sds_itensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_itens: TDataSetProvider
    DataSet = sds_itens
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 773
    Top = 216
  end
  object cds_itens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_itens'
    BeforePost = cds_itensBeforePost
    OnNewRecord = cds_itensNewRecord
    Left = 824
    Top = 216
    object cds_itensID_DETALHE: TIntegerField
      FieldName = 'ID_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_itensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_itensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
    end
    object cds_itensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_itensPRECO_REAL: TFloatField
      FieldName = 'PRECO_REAL'
      DisplayFormat = ',##0.00'
    end
    object cds_itensPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_itensUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_itensVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cds_itensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object sds_mov: TSQLDataSet
    CommandText = 
      'select  mov.* '#13#10'         , forn.NOME_FERNECEDOR '#13#10'         , fun' +
      'c.NOME '#13#10'from MOVIMENTO mov '#13#10'left outer join FORNECEDORES forn ' +
      #13#10'on forn.ID_FORNECEDOR = mov.ID_FORNECEDOR '#13#10'left outer join FU' +
      'NCIONARIOS func  '#13#10'on func.COD_FUNCIONARIO = mov.COD_FUNCIONARIO' +
      '  '#13#10'where mov.ID_MOVIMENTO = :pid '#13#10'and NATUREZA = '#39'Compra'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 736
    Top = 264
    object sds_movID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_movDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_movSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_movCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_movID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_movDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_movVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_movNOME_FERNECEDOR: TStringField
      FieldName = 'NOME_FERNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sds_movNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_movNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp_mov: TDataSetProvider
    DataSet = sds_mov
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 783
    Top = 264
  end
  object cds_mov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_mov'
    OnNewRecord = cds_movNewRecord
    Left = 831
    Top = 264
    object cds_movID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000'
    end
    object cds_movDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_movSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_movCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_movID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_movDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_movVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_movNOME_FERNECEDOR: TStringField
      FieldName = 'NOME_FERNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cds_movNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_movNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object cds_compra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_compra'
    OnNewRecord = cds_compraNewRecord
    Left = 824
    Top = 528
    object cds_compraID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_compraID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_compraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_compraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_compraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_compraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_compraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_compraSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_compraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_compraHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_compraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Size = 40
    end
    object cds_compraNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp_compra: TDataSetProvider
    DataSet = sds_compra
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 764
    Top = 528
  end
  object sds_compra: TSQLDataSet
    CommandText = 
      'select c.* '#13#10'         , func.NOME '#13#10'from COMPRA  c '#13#10'left outer ' +
      'join FUNCIONARIOS func  '#13#10'on func.COD_FUNCIONARIO = c.CODCOMPRAD' +
      'OR '#13#10'where ID_MOVIMENTO = :pid '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 703
    Top = 528
    object sds_compraID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_compraID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_compraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_compraSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_compraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_compraHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_compraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_compraNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object cds_cpagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cpagar'
    Left = 826
    Top = 576
    object cds_cpagarID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cpagarTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object cds_cpagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cpagarDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cpagarDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cpagarCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_cpagarDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cds_cpagarCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_cpagarOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cpagarSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cds_cpagarID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cpagarTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_cpagarFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dsp_cpagar: TDataSetProvider
    DataSet = sds_cpagar
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 762
    Top = 576
  end
  object sds_cpagar: TSQLDataSet
    CommandText = 'select * from PAGAMENTO '#13#10'where ID_COMPRA = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 706
    Top = 576
    object IntegerField13: TIntegerField
      FieldName = 'ID_PAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object DateField9: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField10: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField11: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField1: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField15: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField15: TStringField
      DisplayWidth = 30
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object StringField21: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object DateField12: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField22: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object IntegerField16: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField2: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField3: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField4: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField23: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField19: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField20: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField21: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField22: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField23: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField24: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField25: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField26: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField27: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField28: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField29: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField17: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField18: TIntegerField
      FieldName = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField19: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object StringField24: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object StringField25: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object cds_mov_OB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_mov_OB'
    OnNewRecord = cds_mov_OBNewRecord
    Left = 818
    Top = 308
    object cds_mov_OBID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_mov_OBDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_mov_OBSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_mov_OBCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_mov_OBID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mov_OBDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mov_OBVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mov_OBNATUREZA: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_mov_OBID_OBITO: TIntegerField
      FieldName = 'ID_OBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mov_OBTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_mov_OBID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_mov_OBFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = []
      Size = 100
    end
    object cds_mov_OBNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp_mov_OB: TDataSetProvider
    DataSet = sds_mov_OB
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 746
    Top = 308
  end
  object sds_mov_OB: TSQLDataSet
    CommandText = 
      'select  mov.* '#13#10'         , ob.FALECIDO'#13#10'         , func.NOME '#13#10'f' +
      'rom MOVIMENTO mov '#13#10'left outer join OBITOS ob  '#13#10'on ob.ID = mov.' +
      'ID_OBITO'#13#10'left outer join FUNCIONARIOS func  '#13#10'on func.COD_FUNCI' +
      'ONARIO = mov.COD_FUNCIONARIO  '#13#10'where mov.ID_OBITO = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 674
    Top = 308
    object IntegerField20: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DateField13: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object StringField26: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object IntegerField21: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField22: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField30: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object StringField27: TStringField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_movID_OBITO: TIntegerField
      FieldName = 'ID_OBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_movTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_movID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_movFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = []
      Size = 100
    end
    object StringField28: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object sds_venda: TSQLDataSet
    CommandText = 
      'select v.* '#13#10'         , func.NOME '#13#10'from VENDA v '#13#10'left outer jo' +
      'in FUNCIONARIOS func  '#13#10'on func.COD_FUNCIONARIO = v.CODVENDEDOR'#13 +
      #10'where ID_MOVIMENTO = :pid '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 480
    Top = 591
    object sds_vendaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOUTRAS_RECE: TFloatField
      FieldName = 'OUTRAS_RECE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_vendaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp_venda: TDataSetProvider
    DataSet = sds_venda
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 591
  end
  object cds_venda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_venda'
    Left = 600
    Top = 591
    object cds_vendaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_vendaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOUTRAS_RECE: TFloatField
      FieldName = 'OUTRAS_RECE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_vendaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object SQl: TSQLConnection
    ConnectionName = 'obitos'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost/3050:C:\home\bd\OBITOS_ARTUR.fdb'
      
        'ErrorResourceFile=localhost/3051:C:\home\bd\2\OBITOS_SCF_PINHEIR' +
        'O.fdb'
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\atsscf\relatorios\')
    VendorLib = 'fbclient.dll'
    Left = 312
    Top = 8
  end
  object sds_dep: TSQLDataSet
    CommandText = 
      'select  d.*'#13#10'           ,p.DESCRICAO     '#13#10' from DEPENDENTE d '#13#10 +
      ' left outer join PARENTESCO p  on p.ID_PAR=d.ID_PAR '#13#10' where d.I' +
      'D_SOCIO = :pid '#13#10' or NOME_DEP = :pnome '#13#10' or ID_DEP = :piddep'#13#10'o' +
      'rder by d.ID_PAR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'piddep'
        ParamType = ptInput
      end>
    SQLConnection = SQLObitos
    Left = 377
    Top = 237
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
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_depCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_depSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_depTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99)9999-9999;1;_'
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
  object dsp_dep: TDataSetProvider
    DataSet = sds_dep
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 433
    Top = 237
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
        Name = 'pnome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'piddep'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_dep'
    BeforePost = cds_depBeforePost
    OnNewRecord = cds_depNewRecord
    Left = 489
    Top = 237
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
      EditMask = '!99/99/0000;1;_'
    end
    object cds_depRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_depCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_depSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_depTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
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
  object XMLDocument1: TXMLDocument
    Left = 232
    Top = 592
    DOMVendorDesc = 'MSXML'
  end
  object proc_lic: TSQLClientDataSet
    CommandText = 
      'select PARAMETRO1, PARAMETRO3,PARAMETRO4 from PARAMETROS '#13#10'where' +
      ' PARAMETRO = '#39'EMPRESA'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = SQLObitos
    Left = 624
    Top = 276
    object proc_licPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      Size = 40
    end
    object proc_licPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      Size = 40
    end
    object proc_licPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      Size = 40
    end
  end
end
