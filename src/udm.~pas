 unit UDM;
 
interface

uses
  Windows, Variants , SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  DBLocalS, DBLocal, XmlRpcClient, XmlRpcTypes, xmldom, XMLIntf, msxmldom,
  XMLDoc, DateUtils;

type
  TDM = class(TDataModule)
    sds_Obitos: TSQLDataSet;
    dsp_Obitos: TDataSetProvider;
    cds_Obitos: TClientDataSet;
    cds_ObitosID: TIntegerField;
    cds_ObitosDATA_SISTEMA: TDateField;
    cds_ObitosVIA: TStringField;
    cds_ObitosFALECIDO: TStringField;
    cds_ObitosSEXO: TStringField;
    cds_ObitosCOR: TStringField;
    cds_ObitosDATA_NASC: TDateField;
    cds_ObitosIDADE: TStringField;
    cds_ObitosESTADO_CIVIL: TStringField;
    cds_ObitosPROFISSAO: TStringField;
    cds_ObitosNATURALIDADE: TStringField;
    cds_ObitosENDERECO_FAL: TStringField;
    cds_ObitosNUMERO: TStringField;
    cds_ObitosBAIRRO: TStringField;
    cds_ObitosCIDADE: TStringField;
    cds_ObitosUF: TStringField;
    cds_ObitosCEP: TStringField;
    cds_ObitosFONE_1: TStringField;
    cds_ObitosFONE_2: TStringField;
    cds_ObitosFONE_3: TStringField;
    cds_ObitosNOME_PAI: TStringField;
    cds_ObitosNOME_MAE: TStringField;
    cds_ObitosESTCIVIL_PAI: TStringField;
    cds_ObitosESTCIVIL_MAE: TStringField;
    cds_ObitosENDERECO_PAIS: TStringField;
    cds_ObitosNUMERO_PAIS: TStringField;
    cds_ObitosBAIRRO_PAIS: TStringField;
    cds_ObitosCIDADE_PAIS: TStringField;
    cds_ObitosUF_PAIS: TStringField;
    cds_ObitosCEP_PAIS: TStringField;
    cds_ObitosFONE1_PAIS: TStringField;
    cds_ObitosFONE2_PAIS: TStringField;
    cds_ObitosDEIXA_BENS: TStringField;
    cds_ObitosDEIXA_TESTAMENTO: TStringField;
    cds_ObitosELEITOR: TStringField;
    cds_ObitosCIDADE_ELEITORAL: TStringField;
    cds_ObitosCEMITERIO: TStringField;
    cds_ObitosDATA_SEP: TDateField;
    cds_ObitosHORA_SEP: TTimeField;
    cds_ObitosDATA_FAL: TDateField;
    cds_ObitosHORA_FAL: TTimeField;
    cds_ObitosMEDICO_1: TStringField;
    cds_ObitosMEDICO_2: TStringField;
    cds_ObitosCRM_1: TStringField;
    cds_ObitosCRM_2: TStringField;
    cds_ObitosOBS: TStringField;
    cds_ObitosNUPCIAS: TStringField;
    cds_ObitosDATA_CASAMENTO: TDateField;
    cds_ObitosCONJUGE: TStringField;
    cds_ObitosLIVRO: TStringField;
    cds_ObitosFOLHAS: TStringField;
    cds_ObitosREGISTRO: TStringField;
    cds_ObitosDECLARANTE: TStringField;
    cds_ObitosRG_CPF: TStringField;
    cds_ObitosPROFISSAO_DECL: TStringField;
    cds_ObitosGRAU_PARENTESCO: TStringField;
    cds_ObitosENDERECO_DECL: TStringField;
    sds_ObitosID: TIntegerField;
    sds_ObitosDATA_SISTEMA: TDateField;
    sds_ObitosVIA: TStringField;
    sds_ObitosFALECIDO: TStringField;
    sds_ObitosSEXO: TStringField;
    sds_ObitosCOR: TStringField;
    sds_ObitosDATA_NASC: TDateField;
    sds_ObitosIDADE: TStringField;
    sds_ObitosESTADO_CIVIL: TStringField;
    sds_ObitosPROFISSAO: TStringField;
    sds_ObitosNATURALIDADE: TStringField;
    sds_ObitosENDERECO_FAL: TStringField;
    sds_ObitosNUMERO: TStringField;
    sds_ObitosBAIRRO: TStringField;
    sds_ObitosCIDADE: TStringField;
    sds_ObitosUF: TStringField;
    sds_ObitosCEP: TStringField;
    sds_ObitosFONE_1: TStringField;
    sds_ObitosFONE_2: TStringField;
    sds_ObitosFONE_3: TStringField;
    sds_ObitosNOME_PAI: TStringField;
    sds_ObitosNOME_MAE: TStringField;
    sds_ObitosESTCIVIL_PAI: TStringField;
    sds_ObitosESTCIVIL_MAE: TStringField;
    sds_ObitosENDERECO_PAIS: TStringField;
    sds_ObitosNUMERO_PAIS: TStringField;
    sds_ObitosBAIRRO_PAIS: TStringField;
    sds_ObitosCIDADE_PAIS: TStringField;
    sds_ObitosUF_PAIS: TStringField;
    sds_ObitosCEP_PAIS: TStringField;
    sds_ObitosFONE1_PAIS: TStringField;
    sds_ObitosFONE2_PAIS: TStringField;
    sds_ObitosDEIXA_BENS: TStringField;
    sds_ObitosDEIXA_TESTAMENTO: TStringField;
    sds_ObitosELEITOR: TStringField;
    sds_ObitosCIDADE_ELEITORAL: TStringField;
    sds_ObitosCEMITERIO: TStringField;
    sds_ObitosDATA_SEP: TDateField;
    sds_ObitosHORA_SEP: TTimeField;
    sds_ObitosDATA_FAL: TDateField;
    sds_ObitosHORA_FAL: TTimeField;
    sds_ObitosMEDICO_1: TStringField;
    sds_ObitosMEDICO_2: TStringField;
    sds_ObitosCRM_1: TStringField;
    sds_ObitosCRM_2: TStringField;
    sds_ObitosOBS: TStringField;
    sds_ObitosNUPCIAS: TStringField;
    sds_ObitosDATA_CASAMENTO: TDateField;
    sds_ObitosCONJUGE: TStringField;
    sds_ObitosLIVRO: TStringField;
    sds_ObitosFOLHAS: TStringField;
    sds_ObitosREGISTRO: TStringField;
    sds_ObitosDECLARANTE: TStringField;
    sds_ObitosRG_CPF: TStringField;
    sds_ObitosPROFISSAO_DECL: TStringField;
    sds_ObitosGRAU_PARENTESCO: TStringField;
    sds_ObitosENDERECO_DECL: TStringField;
    dsSenha: TDataSource;
    CDSSenha: TSQLClientDataSet;
    CDSSenhaLogin: TStringField;
    CDSSenhaSenha: TStringField;
    CDSSenhaPerfil: TStringField;
    sds_acesso: TSQLDataSet;
    dsp_acesso: TDataSetProvider;
    cds_Senha: TClientDataSet;
    cds_SenhaLOGIN: TStringField;
    cds_SenhaSENHA: TStringField;
    cds_SenhaPERFIL: TStringField;
    cds_SenhaCODUSUARIO: TIntegerField;
    sds_acessoLOGIN: TStringField;
    sds_acessoSENHA: TStringField;
    sds_acessoPERFIL: TStringField;
    sds_acessoCODUSUARIO: TIntegerField;
    sds_ObitosCOD_FUNCIONARIO: TIntegerField;
    cds_ObitosCOD_FUNCIONARIO: TIntegerField;
    dst_funcionario: TSQLDataSet;
    dst_funcionarioCOD_FUNCIONARIO: TIntegerField;
    dst_funcionarioNOME: TStringField;
    dst_funcionarioENDERECO: TStringField;
    dst_funcionarioNR: TStringField;
    dst_funcionarioCOMPL: TStringField;
    dst_funcionarioBAIRRO: TStringField;
    dst_funcionarioCIDADE: TStringField;
    dst_funcionarioUF: TStringField;
    dst_funcionarioCEP: TStringField;
    dst_funcionarioTELEFONE: TStringField;
    dst_funcionarioCELULAR: TStringField;
    dst_funcionarioDATANASC: TDateField;
    dst_funcionarioCPF: TStringField;
    dst_funcionarioRG: TStringField;
    dst_funcionarioPAI: TStringField;
    dst_funcionarioMAE: TStringField;
    dst_funcionarioOBS: TStringField;
    dst_funcionarioCOMISSAO: TFloatField;
    dsp_funcionario: TDataSetProvider;
    cds_funcionario: TClientDataSet;
    cds_funcionarioCOD_FUNCIONARIO: TIntegerField;
    cds_funcionarioNOME: TStringField;
    cds_funcionarioENDERECO: TStringField;
    cds_funcionarioNR: TStringField;
    cds_funcionarioCOMPL: TStringField;
    cds_funcionarioBAIRRO: TStringField;
    cds_funcionarioCIDADE: TStringField;
    cds_funcionarioUF: TStringField;
    cds_funcionarioCEP: TStringField;
    cds_funcionarioTELEFONE: TStringField;
    cds_funcionarioCELULAR: TStringField;
    cds_funcionarioDATANASC: TDateField;
    cds_funcionarioCPF: TStringField;
    cds_funcionarioRG: TStringField;
    cds_funcionarioPAI: TStringField;
    cds_funcionarioMAE: TStringField;
    cds_funcionarioOBS: TStringField;
    cds_funcionarioCOMISSAO: TFloatField;
    proc_funcionario: TSQLClientDataSet;
    proc_funcionarioCOD_FUNCIONARIO: TIntegerField;
    proc_funcionarioNOME: TStringField;
    dst_empresa: TSQLDataSet;
    dst_empresaRAZAO_EMPRESA: TStringField;
    dst_empresaNCRECI: TStringField;
    dst_empresaENDERECO: TStringField;
    dst_empresaNR: TStringField;
    dst_empresaCOMPLEMENTO: TStringField;
    dst_empresaBAIRRO: TStringField;
    dst_empresaCIDADE: TStringField;
    dst_empresaESTADO: TStringField;
    dst_empresaCEP: TStringField;
    dst_empresaTELEFONE: TStringField;
    dst_empresaFAX: TStringField;
    dst_empresaEMAIL: TStringField;
    dst_empresaROME_PAGE: TStringField;
    dst_empresaLOGOTIPO: TBlobField;
    dst_empresaNOME_EMPRESA: TStringField;
    dst_empresaCOD_EMPRESA: TIntegerField;
    dst_empresaCELULAR: TStringField;
    dsp_empresa: TDataSetProvider;
    cds_empresa: TClientDataSet;
    cds_empresaCOD_EMPRESA: TIntegerField;
    cds_empresaNOME_EMPRESA: TStringField;
    cds_empresaRAZAO_EMPRESA: TStringField;
    cds_empresaNCRECI: TStringField;
    cds_empresaENDERECO: TStringField;
    cds_empresaNR: TStringField;
    cds_empresaCOMPLEMENTO: TStringField;
    cds_empresaBAIRRO: TStringField;
    cds_empresaCIDADE: TStringField;
    cds_empresaESTADO: TStringField;
    cds_empresaCEP: TStringField;
    cds_empresaTELEFONE: TStringField;
    cds_empresaFAX: TStringField;
    cds_empresaEMAIL: TStringField;
    cds_empresaROME_PAGE: TStringField;
    cds_empresaLOGOTIPO: TBlobField;
    cds_empresaCELULAR: TStringField;
    proc_obitos: TSQLClientDataSet;
    proc_obitosID: TIntegerField;
    proc_obitosFALECIDO: TStringField;
    dst_empresaCNPJ: TStringField;
    dst_empresaINSCESTADUAL: TStringField;
    cds_empresaCNPJ: TStringField;
    cds_empresaINSCESTADUAL: TStringField;
    dst_funcionarioCARGO: TStringField;
    cds_funcionarioCARGO: TStringField;
    sds_ObitosTIPO: TStringField;
    sds_ObitosTIPO_DOC: TStringField;
    cds_ObitosTIPO: TStringField;
    cds_ObitosTIPO_DOC: TStringField;
    sds_filhos: TSQLDataSet;
    dsp_filhos: TDataSetProvider;
    cds_filhos: TClientDataSet;
    cds_filhosID: TIntegerField;
    cds_filhosID_FILHOS: TIntegerField;
    cds_filhosNOME: TStringField;
    sds_filhosID: TIntegerField;
    sds_filhosID_FILHOS: TIntegerField;
    sds_filhosNOME: TStringField;
    sds_ObitosSITUACAO: TStringField;
    sds_ObitosOBS_GERAIS: TBlobField;
    sds_ObitosPRAZO_PG: TIntegerField;
    sds_ObitosVENCIMENTO: TDateField;
    sds_ObitosVALOR_SERVICO: TFloatField;
    sds_ObitosPARCELA: TFloatField;
    sds_ObitosENTRADA: TFloatField;
    cds_ObitosSITUACAO: TStringField;
    cds_ObitosOBS_GERAIS: TBlobField;
    cds_ObitosPRAZO_PG: TIntegerField;
    cds_ObitosVENCIMENTO: TDateField;
    cds_ObitosVALOR_SERVICO: TFloatField;
    cds_ObitosPARCELA: TFloatField;
    cds_ObitosENTRADA: TFloatField;
    sds_CR: TSQLDataSet;
    dsp_CR: TDataSetProvider;
    cds_CR: TClientDataSet;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    sds_CRID_RECEBIMENTOS: TIntegerField;
    sds_CRID: TIntegerField;
    sds_CRVALOR_NF: TFloatField;
    sds_CRVALOR_RECEBER: TFloatField;
    sds_CRPARCELA: TIntegerField;
    sds_CRVENCIMENTO: TDateField;
    sds_CRDATA_PAG: TDateField;
    sds_CRSTATUS: TStringField;
    sds_ObitosTIPO_OBITO: TStringField;
    sds_ObitosTIPO_URNA: TStringField;
    sds_ObitosSERIE: TStringField;
    sds_ObitosNOTAFISCAL: TSmallintField;
    sds_ObitosN_FICHA: TStringField;
    sds_ObitosID_GRUPO: TIntegerField;
    cds_ObitosTIPO_OBITO: TStringField;
    cds_ObitosTIPO_URNA: TStringField;
    cds_ObitosSERIE: TStringField;
    cds_ObitosNOTAFISCAL: TSmallintField;
    cds_ObitosN_FICHA: TStringField;
    cds_ObitosID_GRUPO: TIntegerField;
    sds_serie: TSQLDataSet;
    dsp_serie: TDataSetProvider;
    cds_serie: TClientDataSet;
    cds_serieSERIE: TStringField;
    cds_serieULTIMO_NUMERO: TIntegerField;
    sds_serieSERIE: TStringField;
    sds_serieULTIMO_NUMERO: TIntegerField;
    dsp_grupo: TDataSetProvider;
    cds_grupo: TClientDataSet;
    sds_grupo: TSQLDataSet;
    sds_grupoID_GRUPO: TIntegerField;
    sds_grupoINSCRICAO: TIntegerField;
    sds_grupoQTDE: TIntegerField;
    cds_grupoID_GRUPO: TIntegerField;
    cds_grupoINSCRICAO: TIntegerField;
    cds_grupoQTDE: TIntegerField;
    sds_clinica: TSQLDataSet;
    dsp_clinica: TDataSetProvider;
    cds_clinica: TClientDataSet;
    cds_clinicaID_CLINICA: TIntegerField;
    cds_clinicaNOME: TStringField;
    cds_clinicaENDERECO: TStringField;
    cds_clinicaNUMERO: TStringField;
    cds_clinicaBAIRRO: TStringField;
    cds_clinicaCIDADE: TStringField;
    cds_clinicaUF: TStringField;
    cds_clinicaCEP: TStringField;
    cds_clinicaFONE: TStringField;
    cds_clinicaFAX: TStringField;
    cds_clinicaCONTATO: TStringField;
    sds_clinicaID_CLINICA: TIntegerField;
    sds_clinicaNOME: TStringField;
    sds_clinicaENDERECO: TStringField;
    sds_clinicaNUMERO: TStringField;
    sds_clinicaBAIRRO: TStringField;
    sds_clinicaCIDADE: TStringField;
    sds_clinicaUF: TStringField;
    sds_clinicaCEP: TStringField;
    sds_clinicaFONE: TStringField;
    sds_clinicaFAX: TStringField;
    sds_clinicaCONTATO: TStringField;
    sds_grupoGRUPO: TStringField;
    cds_grupoGRUPO: TStringField;
    sds_ObitosGRUPO: TStringField;
    cds_ObitosGRUPO: TStringField;
    sds_ObitosINSCRICAO: TIntegerField;
    cds_ObitosINSCRICAO: TIntegerField;
    sds_ObitosCODIGO: TIntegerField;
    cds_ObitosCODIGO: TIntegerField;
    sds_CRVALOR_PAGO: TFloatField;
    sds_CRVALOR_DIF: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRMULTA: TFloatField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    sds_CREMISSAO: TDateField;
    cds_CREMISSAO: TDateField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRCAIXA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    sds_CRVALOR_A_REC: TFloatField;
    cds_CRVALOR_A_REC: TFloatField;
    sds_CRVALOR_1VIA: TFloatField;
    cds_CRVALOR_1VIA: TFloatField;
    sds_consulta: TSQLDataSet;
    dsp_consulta: TDataSetProvider;
    cds_consulta: TClientDataSet;
    cds_consultaID_CONSULTA: TIntegerField;
    cds_consultaDATA_CONSULTA: TDateField;
    cds_consultaID_CLINICA: TIntegerField;
    cds_consultaGRUPO: TStringField;
    cds_consultaINSCRICAO: TIntegerField;
    cds_consultaDEPENDENTE: TStringField;
    cds_consultaID_SOCIO: TIntegerField;
    cds_consultaSOCIO: TStringField;
    sds_consultaID_CONSULTA: TIntegerField;
    sds_consultaDATA_CONSULTA: TDateField;
    sds_consultaID_CLINICA: TIntegerField;
    sds_consultaGRUPO: TStringField;
    sds_consultaINSCRICAO: TIntegerField;
    sds_consultaDEPENDENTE: TStringField;
    sds_consultaID_SOCIO: TIntegerField;
    sds_consultaSOCIO: TStringField;
    proc_consulta: TSQLClientDataSet;
    proc_consultaSOCIO: TStringField;
    proc_consultaDEPENDENTE: TStringField;
    proc_consultaDATA_CONSULTA: TDateField;
    proc_clinica: TSQLClientDataSet;
    proc_clinicaID_CLINICA: TIntegerField;
    proc_clinicaNOME: TStringField;
    sds_socio: TSQLDataSet;
    cds_socio: TClientDataSet;
    dsp_socio: TDataSetProvider;
    dsp_end: TDataSetProvider;
    cds_end: TClientDataSet;
    cds_socioID_SOCIO: TIntegerField;
    cds_socioNOME_SOCIO: TStringField;
    cds_socioSOBRENOME: TStringField;
    cds_socioNAT: TStringField;
    cds_socioDTNASC: TDateField;
    cds_socioPROFISSAO: TStringField;
    cds_socioCPF_CGC: TStringField;
    cds_socioRG_IE: TStringField;
    cds_socioID_VEN: TIntegerField;
    cds_socioID_COB: TIntegerField;
    cds_socioN_INSCRICAO: TIntegerField;
    cds_socioGRUPO: TStringField;
    cds_socioDTACADASTRO: TDateField;
    cds_socioDTASISTEMA: TDateField;
    cds_socioSTATUS: TStringField;
    cds_socioOBS: TBlobField;
    sds_socioID_SOCIO: TIntegerField;
    sds_socioNOME_SOCIO: TStringField;
    sds_socioSOBRENOME: TStringField;
    sds_socioNAT: TStringField;
    sds_socioDTNASC: TDateField;
    sds_socioPROFISSAO: TStringField;
    sds_socioCPF_CGC: TStringField;
    sds_socioRG_IE: TStringField;
    sds_socioID_VEN: TIntegerField;
    sds_socioID_COB: TIntegerField;
    sds_socioN_INSCRICAO: TIntegerField;
    sds_socioGRUPO: TStringField;
    sds_socioDTACADASTRO: TDateField;
    sds_socioDTASISTEMA: TDateField;
    sds_socioSTATUS: TStringField;
    sds_socioOBS: TBlobField;
    proc_socio: TSQLClientDataSet;
    proc_socioNOME_SOCIO: TStringField;
    proc_socioID_SOCIO: TIntegerField;
    sds_socioTIPO_DOC: TStringField;
    cds_socioTIPO_DOC: TStringField;
    sds_end: TSQLDataSet;
    cds_endID_ENDERECO: TIntegerField;
    cds_endID_SOCIO: TIntegerField;
    cds_endENDERECO: TStringField;
    cds_endCOMPLEMENTO: TStringField;
    cds_endID_BAIRRO: TIntegerField;
    cds_endID_MUNICIPIO: TIntegerField;
    cds_endESTADO: TStringField;
    cds_endCEP: TStringField;
    cds_endDDD: TStringField;
    cds_endFONE: TStringField;
    cds_endFONE1: TStringField;
    cds_endFAX: TStringField;
    cds_endCXP: TStringField;
    cds_endTIPOEND: TSmallintField;
    sds_endID_ENDERECO: TIntegerField;
    sds_endID_SOCIO: TIntegerField;
    sds_endENDERECO: TStringField;
    sds_endCOMPLEMENTO: TStringField;
    sds_endID_BAIRRO: TIntegerField;
    sds_endID_MUNICIPIO: TIntegerField;
    sds_endESTADO: TStringField;
    sds_endCEP: TStringField;
    sds_endDDD: TStringField;
    sds_endFONE: TStringField;
    sds_endFONE1: TStringField;
    sds_endFAX: TStringField;
    sds_endCXP: TStringField;
    sds_endTIPOEND: TSmallintField;
    sds_vend: TSQLDataSet;
    dsp_vend: TDataSetProvider;
    cds_vend: TClientDataSet;
    sds_cob: TSQLDataSet;
    dsp_cob: TDataSetProvider;
    cds_cob: TClientDataSet;
    cds_vendID_VEN: TIntegerField;
    cds_vendVENDEDOR: TStringField;
    cds_vendENDERECO: TStringField;
    cds_vendCOMPLEMENTO: TStringField;
    cds_vendBAIRRO: TStringField;
    cds_vendMUNICIPIO: TStringField;
    cds_vendESTADO: TStringField;
    cds_vendCEP: TStringField;
    cds_vendDDD: TStringField;
    cds_vendFONE: TStringField;
    cds_vendFONE1: TStringField;
    cds_vendFAX: TStringField;
    cds_vendCXP: TStringField;
    cds_vendPORC: TFloatField;
    cds_vendPORCPRA: TFloatField;
    cds_vendEXTERNO: TStringField;
    cds_vendDTADM: TDateField;
    cds_vendDTRESC: TDateField;
    sds_vendID_VEN: TIntegerField;
    sds_vendVENDEDOR: TStringField;
    sds_vendENDERECO: TStringField;
    sds_vendCOMPLEMENTO: TStringField;
    sds_vendBAIRRO: TStringField;
    sds_vendMUNICIPIO: TStringField;
    sds_vendESTADO: TStringField;
    sds_vendCEP: TStringField;
    sds_vendDDD: TStringField;
    sds_vendFONE: TStringField;
    sds_vendFONE1: TStringField;
    sds_vendFAX: TStringField;
    sds_vendCXP: TStringField;
    sds_vendPORC: TFloatField;
    sds_vendPORCPRA: TFloatField;
    sds_vendEXTERNO: TStringField;
    sds_vendDTADM: TDateField;
    sds_vendDTRESC: TDateField;
    cds_cobID_COB: TIntegerField;
    cds_cobNOME: TStringField;
    cds_cobENDERECO: TStringField;
    cds_cobCOMPLEMENTO: TStringField;
    cds_cobBAIRRO: TStringField;
    cds_cobMUNICIPIO: TStringField;
    cds_cobESTADO: TStringField;
    cds_cobCEP: TStringField;
    cds_cobDDD: TStringField;
    cds_cobFONE: TStringField;
    cds_cobFONE1: TStringField;
    cds_cobFAX: TStringField;
    cds_cobCXP: TStringField;
    cds_cobPORC: TFloatField;
    cds_cobPORCOU: TFloatField;
    cds_cobDTADM: TDateField;
    cds_cobDTRESC: TDateField;
    sds_cobID_COB: TIntegerField;
    sds_cobNOME: TStringField;
    sds_cobENDERECO: TStringField;
    sds_cobCOMPLEMENTO: TStringField;
    sds_cobBAIRRO: TStringField;
    sds_cobMUNICIPIO: TStringField;
    sds_cobESTADO: TStringField;
    sds_cobCEP: TStringField;
    sds_cobDDD: TStringField;
    sds_cobFONE: TStringField;
    sds_cobFONE1: TStringField;
    sds_cobFAX: TStringField;
    sds_cobCXP: TStringField;
    sds_cobPORC: TFloatField;
    sds_cobPORCOU: TFloatField;
    sds_cobDTADM: TDateField;
    sds_cobDTRESC: TDateField;
    sds_bairro: TSQLDataSet;
    dsp_bairro: TDataSetProvider;
    cds_bairro: TClientDataSet;
    sds_munic: TSQLDataSet;
    dsp_munic: TDataSetProvider;
    cds_munic: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    sds_socioESTCIV: TIntegerField;
    cds_socioESTCIV: TIntegerField;
    proc_vend: TSQLClientDataSet;
    proc_cob: TSQLClientDataSet;
    proc_vendID_VEN: TIntegerField;
    proc_vendVENDEDOR: TStringField;
    proc_cobID_COB: TIntegerField;
    proc_cobNOME: TStringField;
    sds_grupoN_FALEC: TIntegerField;
    cds_grupoN_FALEC: TIntegerField;
    SQLObitos: TSQLConnection;
    proc_socioSOBRENOME: TStringField;
    proc_socioGRUPO: TStringField;
    proc_socioN_INSCRICAO: TIntegerField;
    sds_ObitosID_SOCIO: TIntegerField;
    cds_ObitosID_SOCIO: TIntegerField;
    sds_socio_Desl: TSQLDataSet;
    dsp_socio_desl: TDataSetProvider;
    cds_socio_desl: TClientDataSet;
    sds_dep_D: TSQLDataSet;
    dsp_dep_D: TDataSetProvider;
    cds_dep_D: TClientDataSet;
    sds_end_D: TSQLDataSet;
    dsp_end_D: TDataSetProvider;
    cds_end_D: TClientDataSet;
    cds_socio_deslID_SOCIO_DESL: TIntegerField;
    cds_socio_deslID_SOCIO: TIntegerField;
    cds_socio_deslNOME_SOCIO: TStringField;
    cds_socio_deslSOBRENOME: TStringField;
    cds_socio_deslNAT: TStringField;
    cds_socio_deslDTNASC: TDateField;
    cds_socio_deslPROFISSAO: TStringField;
    cds_socio_deslCPF_CGC: TStringField;
    cds_socio_deslRG_IE: TStringField;
    cds_socio_deslID_VEN: TIntegerField;
    cds_socio_deslID_COB: TIntegerField;
    cds_socio_deslN_INSCRICAO: TIntegerField;
    cds_socio_deslGRUPO: TStringField;
    cds_socio_deslDTACADASTRO: TDateField;
    cds_socio_deslDTASISTEMA: TDateField;
    cds_socio_deslSTATUS: TStringField;
    cds_socio_deslOBS: TBlobField;
    cds_socio_deslTIPO_DOC: TStringField;
    cds_socio_deslESTCIV: TIntegerField;
    sds_socio_DeslID_SOCIO_DESL: TIntegerField;
    sds_socio_DeslID_SOCIO: TIntegerField;
    sds_socio_DeslNOME_SOCIO: TStringField;
    sds_socio_DeslSOBRENOME: TStringField;
    sds_socio_DeslNAT: TStringField;
    sds_socio_DeslDTNASC: TDateField;
    sds_socio_DeslPROFISSAO: TStringField;
    sds_socio_DeslCPF_CGC: TStringField;
    sds_socio_DeslRG_IE: TStringField;
    sds_socio_DeslID_VEN: TIntegerField;
    sds_socio_DeslID_COB: TIntegerField;
    sds_socio_DeslN_INSCRICAO: TIntegerField;
    sds_socio_DeslGRUPO: TStringField;
    sds_socio_DeslDTACADASTRO: TDateField;
    sds_socio_DeslDTASISTEMA: TDateField;
    sds_socio_DeslSTATUS: TStringField;
    sds_socio_DeslOBS: TBlobField;
    sds_socio_DeslTIPO_DOC: TStringField;
    sds_socio_DeslESTCIV: TIntegerField;
    cds_dep_DID_DEP_DESL: TIntegerField;
    cds_dep_DID_SOCIO: TIntegerField;
    cds_dep_DNOME_DEP: TStringField;
    cds_dep_DFALECIDO: TStringField;
    cds_dep_DCODPAR: TFloatField;
    cds_dep_DDTNASC: TDateField;
    cds_dep_DDTFALEC: TDateField;
    cds_dep_DID_PAR: TIntegerField;
    cds_dep_DDESCRICAO: TStringField;
    sds_dep_DID_DEP_DESL: TIntegerField;
    sds_dep_DID_SOCIO: TIntegerField;
    sds_dep_DNOME_DEP: TStringField;
    sds_dep_DFALECIDO: TStringField;
    sds_dep_DCODPAR: TFloatField;
    sds_dep_DDTNASC: TDateField;
    sds_dep_DDTFALEC: TDateField;
    sds_dep_DID_PAR: TIntegerField;
    sds_dep_DDESCRICAO: TStringField;
    cds_end_DID_ENDERECO_DESL: TIntegerField;
    cds_end_DID_SOCIO_DESL: TIntegerField;
    cds_end_DENDERECO: TStringField;
    cds_end_DCOMPLEMENTO: TStringField;
    cds_end_DID_BAIRRO: TIntegerField;
    cds_end_DID_MUNICIPIO: TIntegerField;
    cds_end_DESTADO: TStringField;
    cds_end_DCEP: TStringField;
    cds_end_DDDD: TStringField;
    cds_end_DFONE: TStringField;
    cds_end_DFONE1: TStringField;
    cds_end_DFAX: TStringField;
    cds_end_DCXP: TStringField;
    cds_end_DTIPOEND: TSmallintField;
    sds_end_DID_ENDERECO_DESL: TIntegerField;
    sds_end_DID_SOCIO_DESL: TIntegerField;
    sds_end_DENDERECO: TStringField;
    sds_end_DCOMPLEMENTO: TStringField;
    sds_end_DID_BAIRRO: TIntegerField;
    sds_end_DID_MUNICIPIO: TIntegerField;
    sds_end_DESTADO: TStringField;
    sds_end_DCEP: TStringField;
    sds_end_DDDD: TStringField;
    sds_end_DFONE: TStringField;
    sds_end_DFONE1: TStringField;
    sds_end_DFAX: TStringField;
    sds_end_DCXP: TStringField;
    sds_end_DTIPOEND: TSmallintField;
    proc_socio_D: TSQLClientDataSet;
    proc_socio_DID_SOCIO_DESL: TIntegerField;
    proc_socio_DID_SOCIO: TIntegerField;
    proc_socio_DNOME_SOCIO: TStringField;
    proc_socio_DSOBRENOME: TStringField;
    proc_socio_DGRUPO: TStringField;
    proc_socio_DN_INSCRICAO: TIntegerField;
    sds_grupoTOT_FAL: TIntegerField;
    sds_grupoLOTE: TIntegerField;
    cds_grupoTOT_FAL: TIntegerField;
    cds_grupoLOTE: TIntegerField;
    sds_CRTIPO_DOC: TStringField;
    cds_CRTIPO_DOC: TStringField;
    s_6: TSQLDataSet;
    s_6CODIGO: TIntegerField;
    d_6: TDataSetProvider;
    c_6_genid: TClientDataSet;
    c_6_genidCODIGO: TIntegerField;
    cds_lote: TClientDataSet;
    cds_loteID_RECEBIMENTOS: TIntegerField;
    cds_loteID: TIntegerField;
    cds_loteVALOR_NF: TFloatField;
    cds_loteVALOR_RECEBER: TFloatField;
    cds_lotePARCELA: TIntegerField;
    cds_loteVENCIMENTO: TDateField;
    cds_loteDATA_PAG: TDateField;
    cds_loteSTATUS: TStringField;
    cds_loteVALOR_PAGO: TFloatField;
    cds_loteVALOR_DIF: TFloatField;
    cds_loteJUROS: TFloatField;
    cds_loteDESCONTO: TFloatField;
    cds_loteMULTA: TFloatField;
    cds_loteEMISSAO: TDateField;
    cds_loteN_DOCUMENTO: TStringField;
    cds_loteCAIXA: TStringField;
    cds_loteFORMARECEBIMENTO: TStringField;
    cds_loteVALOR_A_REC: TFloatField;
    cds_loteVALOR_1VIA: TFloatField;
    cds_loteID_SOCIO: TIntegerField;
    cds_loteLOTE: TIntegerField;
    cds_loteGEROU: TStringField;
    cds_loteDATA_DOC: TDateField;
    cds_loteGRUPO: TStringField;
    dsp_lote: TDataSetProvider;
    sds_lote: TSQLDataSet;
    sds_loteID_RECEBIMENTOS: TIntegerField;
    sds_loteID: TIntegerField;
    sds_loteVALOR_NF: TFloatField;
    sds_loteVALOR_RECEBER: TFloatField;
    sds_lotePARCELA: TIntegerField;
    sds_loteVENCIMENTO: TDateField;
    sds_loteDATA_PAG: TDateField;
    sds_loteSTATUS: TStringField;
    sds_loteVALOR_PAGO: TFloatField;
    sds_loteVALOR_DIF: TFloatField;
    sds_loteJUROS: TFloatField;
    sds_loteDESCONTO: TFloatField;
    sds_loteMULTA: TFloatField;
    sds_loteEMISSAO: TDateField;
    sds_loteN_DOCUMENTO: TStringField;
    sds_loteCAIXA: TStringField;
    sds_loteFORMARECEBIMENTO: TStringField;
    sds_loteVALOR_A_REC: TFloatField;
    sds_loteVALOR_1VIA: TFloatField;
    sds_loteID_SOCIO: TIntegerField;
    sds_loteLOTE: TIntegerField;
    sds_loteGEROU: TStringField;
    sds_loteDATA_DOC: TDateField;
    sds_loteGRUPO: TStringField;
    sds_filhosDATA_NASC: TIntegerField;
    cds_filhosDATA_NASC: TIntegerField;
    sds_socio_DeslPRAZO_PG: TIntegerField;
    sds_socio_DeslVENCIMENTO: TDateField;
    sds_socio_DeslVALOR_SERVICO: TFloatField;
    sds_socio_DeslPARCELA: TFloatField;
    sds_socio_DeslENTRADA: TFloatField;
    sds_socioVALOR_SERVICO: TFloatField;
    sds_socioVENCIMENTO: TDateField;
    cds_socioVALOR_SERVICO: TFloatField;
    cds_socioVENCIMENTO: TDateField;
    sds_socioPARCELA: TFloatField;
    sds_socioENTRADA: TFloatField;
    cds_socioPARCELA: TFloatField;
    cds_socioENTRADA: TFloatField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_socio_deslPRAZO_PG: TIntegerField;
    cds_socio_deslVENCIMENTO: TDateField;
    cds_socio_deslVALOR_SERVICO: TFloatField;
    cds_socio_deslPARCELA: TFloatField;
    cds_socio_deslENTRADA: TFloatField;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    sds_socioCARENCIA: TIntegerField;
    cds_socioCARENCIA: TIntegerField;
    sds_socio_DeslCARENCIA: TIntegerField;
    cds_socio_deslCARENCIA: TIntegerField;
    sds_dep_DCARENCIA: TIntegerField;
    cds_dep_DCARENCIA: TIntegerField;
    sds_dep_DDTACADASTRO: TDateField;
    cds_dep_DDTACADASTRO: TDateField;
    sds_parametro: TSQLDataSet;
    dsp_parametro: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroPARAMETRO1: TStringField;
    cds_parametroPARAMETRO2: TStringField;
    cds_parametroPARAMETRO3: TStringField;
    cds_parametroPARAMETRO4: TStringField;
    cds_parametroPARAMETRO5: TStringField;
    cds_parametroPARAMETRO6: TStringField;
    cds_parametroPARAMETRO7: TStringField;
    cds_parametroPARAMETRO8: TStringField;
    cds_parametroPARAMETRO9: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroPARAMETRO1: TStringField;
    sds_parametroPARAMETRO2: TStringField;
    sds_parametroPARAMETRO3: TStringField;
    sds_parametroPARAMETRO4: TStringField;
    sds_parametroPARAMETRO5: TStringField;
    sds_parametroPARAMETRO6: TStringField;
    sds_parametroPARAMETRO7: TStringField;
    sds_parametroPARAMETRO8: TStringField;
    sds_parametroPARAMETRO9: TStringField;
    sds_CRSELECIONOU: TStringField;
    cds_CRSELECIONOU: TStringField;
    sds_ObitosLOTE: TIntegerField;
    cds_ObitosLOTE: TIntegerField;
    sdsPermissao: TSQLDataSet;
    sdsPermissaoCHAVE: TStringField;
    sdsPermissaoTABELA: TStringField;
    sdsPermissaoLOGIN: TStringField;
    sdsPermissaoINCLUIR: TStringField;
    sdsPermissaoEXCLUIR: TStringField;
    sdsPermissaoALTERAR: TStringField;
    sdsPermissaoCONSULTAR: TStringField;
    dstPermissao: TDataSetProvider;
    cdsPermissao: TClientDataSet;
    cdsPermissaoCHAVE: TStringField;
    cdsPermissaoTABELA: TStringField;
    cdsPermissaoLOGIN: TStringField;
    cdsPermissaoINCLUIR: TStringField;
    cdsPermissaoEXCLUIR: TStringField;
    cdsPermissaoALTERAR: TStringField;
    cdsPermissaoCONSULTAR: TStringField;
    sds_ObitosID_DEP: TIntegerField;
    cds_ObitosID_DEP: TIntegerField;
    sds_socioCODIGO: TIntegerField;
    cds_socioCODIGO: TIntegerField;
    sds_socioTIPO_SOCIO: TStringField;
    cds_socioTIPO_SOCIO: TStringField;
    sds_socioMESES: TIntegerField;
    cds_socioMESES: TIntegerField;
    sds_socioDIAPGTO: TIntegerField;
    cds_socioDIAPGTO: TIntegerField;
    sds_socioDATAFIM: TDateField;
    cds_socioDATAFIM: TDateField;
    sds_socioDATAINICIO: TDateField;
    cds_socioDATAINICIO: TDateField;
    sds_socio_DeslTIPO_SOCIO: TStringField;
    sds_socio_DeslDIAPGTO: TIntegerField;
    sds_socio_DeslMESES: TIntegerField;
    sds_socio_DeslDATAINICIO: TDateField;
    sds_socio_DeslDATAFIM: TDateField;
    cds_socio_deslTIPO_SOCIO: TStringField;
    cds_socio_deslDIAPGTO: TIntegerField;
    cds_socio_deslMESES: TIntegerField;
    cds_socio_deslDATAINICIO: TDateField;
    cds_socio_deslDATAFIM: TDateField;
    sds_cartorio: TSQLDataSet;
    dsp_cartorio: TDataSetProvider;
    cds_cartorio: TClientDataSet;
    cds_cartorioID_CARTORIO: TIntegerField;
    cds_cartorioNOME: TStringField;
    cds_cartorioENDERECO: TStringField;
    cds_cartorioBAIRRO: TStringField;
    cds_cartorioCIDADE: TStringField;
    cds_cartorioESTADO: TStringField;
    cds_cartorioCEP: TStringField;
    cds_cartorioFONE: TStringField;
    cds_cartorioFONE1: TStringField;
    cds_cartorioFAX: TStringField;
    cds_cartorioCPF_CGC: TStringField;
    cds_cartorioRG_IE: TStringField;
    cds_cartorioCONTATO: TStringField;
    sds_cartorioID_CARTORIO: TIntegerField;
    sds_cartorioNOME: TStringField;
    sds_cartorioENDERECO: TStringField;
    sds_cartorioBAIRRO: TStringField;
    sds_cartorioCIDADE: TStringField;
    sds_cartorioESTADO: TStringField;
    sds_cartorioCEP: TStringField;
    sds_cartorioFONE: TStringField;
    sds_cartorioFONE1: TStringField;
    sds_cartorioFAX: TStringField;
    sds_cartorioCPF_CGC: TStringField;
    sds_cartorioRG_IE: TStringField;
    sds_cartorioCONTATO: TStringField;
    sds_ObitosESTOQUE: TStringField;
    cds_ObitosESTOQUE: TStringField;
    sds_titulo: TSQLDataSet;
    dsp_titulo: TDataSetProvider;
    cds_titulo: TClientDataSet;
    cds_tituloCHAVEBOLETO: TIntegerField;
    cds_tituloCHAVECONTACORRENTE: TIntegerField;
    cds_tituloNOMESACADO: TStringField;
    cds_tituloCNPJCPFSACADO: TStringField;
    cds_tituloENDERECOEMAILSACADO: TStringField;
    cds_tituloENDERECOSACADO: TStringField;
    cds_tituloBAIRROSACADO: TStringField;
    cds_tituloCIDADESACADO: TStringField;
    cds_tituloESTADOSACADO: TStringField;
    cds_tituloCEPSACADO: TStringField;
    cds_tituloDATAVENCIMENTO: TDateField;
    cds_tituloVALORBOLETO: TFloatField;
    cds_tituloPERCENTUALJUROS: TFloatField;
    cds_tituloPERCENTUALMULTA: TFloatField;
    cds_tituloPERCENTUALDESCONTO: TFloatField;
    cds_tituloVALOROUTROSACRESCIMOS: TFloatField;
    cds_tituloDEMONSTRATIVO: TStringField;
    cds_tituloINSTRUCOESCAIXA: TStringField;
    cds_tituloNOSSONUMERO: TStringField;
    cds_tituloDATAPAGAMENTO: TDateField;
    cds_tituloVALORPAGO: TFloatField;
    cds_tituloINSTRUCAO1: TStringField;
    cds_tituloINSTRUCAO2: TStringField;
    cds_tituloINSTRUCAO3: TStringField;
    cds_tituloPESSOA: TStringField;
    cds_tituloENDNUMERO: TStringField;
    cds_tituloCOMPLEMENTO: TStringField;
    cds_tituloTIPOIMPRESSAOCARNE: TIntegerField;
    cds_tituloACEITEDOCUMENTO: TStringField;
    cds_tituloESPECIEDOCUMENTO: TStringField;
    sds_cobranca: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    cds_cobCHAVECONTACORRENTE: TIntegerField;
    cds_cobBANCO: TStringField;
    cds_cobAGENCIACEDENTE: TStringField;
    cds_cobCONTACORRENTECEDENTE: TStringField;
    cds_cobCODIGOCEDENTE: TStringField;
    cds_cobNOMECEDENTE: TStringField;
    cds_cobCNPJCPFCEDENTE: TStringField;
    cds_cobINICIONOSSONUMERO: TStringField;
    cds_cobFIMNOSSONUMERO: TStringField;
    cds_cobPROXIMONOSSONUMERO: TStringField;
    cds_cobARQUIVOLICENCA: TStringField;
    cds_cobENDERECOEMAILCEDENTE: TStringField;
    cds_cobURLIMAGENSBOLETOEMAIL: TStringField;
    cds_cobURLLOGOTIPOBOLETOEMAIL: TStringField;
    cds_cobCAMINHOLOGOTIPOBOLETOIMPR: TStringField;
    cds_cobIDENTIFICACAOCEDENTEBOLET: TStringField;
    cds_cobIDENTIFICACAOCEDENTEBOL_1: TStringField;
    cds_cobDIGITOAGENCIA: TStringField;
    cds_cobDIGITOCONTA: TStringField;
    cds_cobVARIACAO: TStringField;
    cds_cobNUMEROCONVENIO: TStringField;
    cds_cobTIPOIMPRESSAOCARNE: TIntegerField;
    cds_cobTIPOCARNE: TStringField;
    dsp_firma: TDataSetProvider;
    cds_firma: TClientDataSet;
    cds_firmaRAZAO_EMPRESA: TStringField;
    cds_firmaNCRECI: TStringField;
    cds_firmaENDERECO: TStringField;
    cds_firmaNR: TStringField;
    cds_firmaCOMPLEMENTO: TStringField;
    cds_firmaBAIRRO: TStringField;
    cds_firmaCIDADE: TStringField;
    cds_firmaESTADO: TStringField;
    cds_firmaCEP: TStringField;
    cds_firmaTELEFONE: TStringField;
    cds_firmaFAX: TStringField;
    cds_firmaEMAIL: TStringField;
    cds_firmaROME_PAGE: TStringField;
    cds_firmaLOGOTIPO: TGraphicField;
    cds_firmaNOME_EMPRESA: TStringField;
    cds_firmaCOD_EMPRESA: TIntegerField;
    cds_firmaCELULAR: TStringField;
    cds_firmaCNPJ: TStringField;
    cds_firmaINSCESTADUAL: TStringField;
    sds_firma: TSQLDataSet;
    sds_socioPERCENTUALJUROS: TFloatField;
    sds_socioPERCENTUALMULTA: TFloatField;
    sds_socioPERCENTUALDESCONTO: TFloatField;
    sds_socioVALOROUTROSACRESCIMOS: TFloatField;
    sds_socioDEMONSTRATIVO: TStringField;
    sds_socioINSTRUCOESCAIXA: TStringField;
    sds_socioINSTRUCAO1: TStringField;
    sds_socioINSTRUCAO2: TStringField;
    sds_socioINSTRUCAO3: TStringField;
    sds_socioTIPOIMPRESSAOCARNE: TIntegerField;
    sds_socioACEITEDOCUMENTO: TStringField;
    sds_socioESPECIEDOCUMENTO: TStringField;
    cds_socioPERCENTUALJUROS: TFloatField;
    cds_socioPERCENTUALMULTA: TFloatField;
    cds_socioPERCENTUALDESCONTO: TFloatField;
    cds_socioVALOROUTROSACRESCIMOS: TFloatField;
    cds_socioDEMONSTRATIVO: TStringField;
    cds_socioINSTRUCOESCAIXA: TStringField;
    cds_socioINSTRUCAO1: TStringField;
    cds_socioINSTRUCAO2: TStringField;
    cds_socioINSTRUCAO3: TStringField;
    cds_socioTIPOIMPRESSAOCARNE: TIntegerField;
    cds_socioACEITEDOCUMENTO: TStringField;
    cds_socioESPECIEDOCUMENTO: TStringField;
    dst_empresaBANCO: TStringField;
    dst_empresaAGENCIACEDENTE: TStringField;
    dst_empresaCONTACORRENTECEDENTE: TStringField;
    dst_empresaCODIGOCEDENTE: TStringField;
    dst_empresaCNPJCPFCEDENTE: TStringField;
    dst_empresaINICIONOSSONUMERO: TStringField;
    dst_empresaFIMNOSSONUMERO: TStringField;
    dst_empresaPROXIMONOSSONUMERO: TStringField;
    dst_empresaIDENTIFICACAOCEDENTEBOLET: TStringField;
    dst_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField;
    dst_empresaDIGITOAGENCIA: TStringField;
    dst_empresaDIGITOCONTA: TStringField;
    dst_empresaVARIACAO: TStringField;
    dst_empresaNUMEROCONVENIO: TStringField;
    dst_empresaTIPOIMPRESSAOCARNE: TIntegerField;
    dst_empresaTIPOCARNE: TStringField;
    cds_empresaBANCO: TStringField;
    cds_empresaAGENCIACEDENTE: TStringField;
    cds_empresaCONTACORRENTECEDENTE: TStringField;
    cds_empresaCODIGOCEDENTE: TStringField;
    cds_empresaCNPJCPFCEDENTE: TStringField;
    cds_empresaINICIONOSSONUMERO: TStringField;
    cds_empresaFIMNOSSONUMERO: TStringField;
    cds_empresaPROXIMONOSSONUMERO: TStringField;
    cds_empresaIDENTIFICACAOCEDENTEBOLET: TStringField;
    cds_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField;
    cds_empresaDIGITOAGENCIA: TStringField;
    cds_empresaDIGITOCONTA: TStringField;
    cds_empresaVARIACAO: TStringField;
    cds_empresaNUMEROCONVENIO: TStringField;
    cds_empresaTIPOIMPRESSAOCARNE: TIntegerField;
    cds_empresaTIPOCARNE: TStringField;
    dst_empresaDEMONSTRATIVO: TStringField;
    dst_empresaINSTRUCOESCAIXA: TStringField;
    dst_empresaINSTRUCAO1: TStringField;
    dst_empresaINSTRUCAO2: TStringField;
    dst_empresaACEITEDOCUMENTO: TStringField;
    dst_empresaESPECIEDOCUMENTO: TStringField;
    cds_empresaDEMONSTRATIVO: TStringField;
    cds_empresaINSTRUCOESCAIXA: TStringField;
    cds_empresaINSTRUCAO1: TStringField;
    cds_empresaINSTRUCAO2: TStringField;
    cds_empresaACEITEDOCUMENTO: TStringField;
    cds_empresaESPECIEDOCUMENTO: TStringField;
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    dst_empresaINSTRUCAO3: TStringField;
    cds_empresaINSTRUCAO3: TStringField;
    sds_socioGEROU: TStringField;
    cds_socioGEROU: TStringField;
    sds_endMUNICIPIO: TStringField;
    sds_endBAIRRO: TStringField;
    cds_endMUNICIPIO: TStringField;
    cds_endBAIRRO: TStringField;
    sds_CRTITULO: TIntegerField;
    sds_CRSERIE: TStringField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    sds_ObitosNATURAL_PAI: TStringField;
    sds_ObitosPROFISSAO_PAI: TStringField;
    sds_ObitosNATURAL_MAE: TStringField;
    sds_ObitosPROFISSAO_MAE: TStringField;
    sds_ObitosZONA_ELEITORAL: TStringField;
    sds_ObitosRESERVISTA: TStringField;
    sds_ObitosCATEGORIA: TStringField;
    sds_ObitosCATEGORIA_NUM: TStringField;
    sds_ObitosSERIE_RESERV: TStringField;
    sds_ObitosCSM: TStringField;
    sds_ObitosRM: TStringField;
    sds_ObitosNUPCIAS_2: TStringField;
    sds_ObitosDATA_CASAMENTO_2: TDateField;
    sds_ObitosCONJUGE_2: TStringField;
    sds_ObitosLIVRO_2: TStringField;
    sds_ObitosFOLHAS_2: TStringField;
    sds_ObitosNUM_2: TStringField;
    sds_ObitosAGENCIA: TStringField;
    cds_ObitosNATURAL_PAI: TStringField;
    cds_ObitosPROFISSAO_PAI: TStringField;
    cds_ObitosNATURAL_MAE: TStringField;
    cds_ObitosPROFISSAO_MAE: TStringField;
    cds_ObitosZONA_ELEITORAL: TStringField;
    cds_ObitosRESERVISTA: TStringField;
    cds_ObitosCATEGORIA: TStringField;
    cds_ObitosCATEGORIA_NUM: TStringField;
    cds_ObitosSERIE_RESERV: TStringField;
    cds_ObitosCSM: TStringField;
    cds_ObitosRM: TStringField;
    cds_ObitosNUPCIAS_2: TStringField;
    cds_ObitosDATA_CASAMENTO_2: TDateField;
    cds_ObitosCONJUGE_2: TStringField;
    cds_ObitosLIVRO_2: TStringField;
    cds_ObitosFOLHAS_2: TStringField;
    cds_ObitosNUM_2: TStringField;
    cds_ObitosAGENCIA: TStringField;
    sds_ObitosID_CARTORIO: TIntegerField;
    cds_ObitosID_CARTORIO: TIntegerField;
    sds_ObitosNOME: TStringField;
    sds_ObitosENDERECO: TStringField;
    sds_ObitosBAIRRO_1: TStringField;
    sds_ObitosCIDADE_1: TStringField;
    sds_ObitosESTADO: TStringField;
    sds_ObitosCEP_1: TStringField;
    cds_ObitosNOME: TStringField;
    cds_ObitosENDERECO: TStringField;
    cds_ObitosBAIRRO_1: TStringField;
    cds_ObitosCIDADE_1: TStringField;
    cds_ObitosESTADO: TStringField;
    cds_ObitosCEP_1: TStringField;
    sds_ObitosFORMA_PGTO: TStringField;
    sds_ObitosHISTORICO: TStringField;
    sds_ObitosBANCO: TStringField;
    cds_ObitosFORMA_PGTO: TStringField;
    cds_ObitosHISTORICO: TStringField;
    cds_ObitosBANCO: TStringField;
    sds_ObitosVELORIO: TStringField;
    cds_ObitosVELORIO: TStringField;
    sds_socio_DeslID_SOCIO_CANCEL: TIntegerField;
    cds_socio_deslID_SOCIO_CANCEL: TIntegerField;
    cds_par: TSQLClientDataSet;
    cds_parPARAMETRO: TStringField;
    cds_parDESCRICAO: TStringField;
    cds_parCONFIGURADO: TStringField;
    cds_parPARAMETRO1: TStringField;
    cds_parPARAMETRO2: TStringField;
    cds_parPARAMETRO3: TStringField;
    cds_parPARAMETRO4: TStringField;
    cds_parPARAMETRO5: TStringField;
    cds_parPARAMETRO6: TStringField;
    cds_parPARAMETRO7: TStringField;
    cds_parPARAMETRO8: TStringField;
    cds_parPARAMETRO9: TStringField;
    sds_consultaCODIGO: TIntegerField;
    cds_consultaCODIGO: TIntegerField;
    sds_consultaID_MEDICO: TIntegerField;
    sds_consultaNOME_MEDICO: TStringField;
    cds_consultaID_MEDICO: TIntegerField;
    cds_consultaNOME_MEDICO: TStringField;
    sds_consultaCRM: TStringField;
    cds_consultaCRM: TStringField;
    sds_socioCODIGO_T: TIntegerField;
    cds_socioCODIGO_T: TIntegerField;
    sds_ObitosZONA_NUMERO: TStringField;
    sds_ObitosSECAO: TStringField;
    cds_ObitosZONA_NUMERO: TStringField;
    cds_ObitosSECAO: TStringField;
    sds_serieNOTAFISCAL: TStringField;
    cds_serieNOTAFISCAL: TStringField;
    proc_serie: TSQLClientDataSet;
    proc_serieSERIE: TStringField;
    proc_serieULTIMO_NUMERO: TIntegerField;
    proc_serieNOTAFISCAL: TStringField;
    sds_CP: TSQLDataSet;
    dsp_CP: TDataSetProvider;
    cds_CP: TClientDataSet;
    cds_CPID_PAGAMENTO: TIntegerField;
    cds_CPTITULO: TStringField;
    cds_CPEMISSAO: TDateField;
    cds_CPDATAVENCIMENTO: TDateField;
    cds_CPDATAPAGAMENTO: TDateField;
    cds_CPCAIXA: TSmallintField;
    cds_CPCONTADEBITO: TIntegerField;
    cds_CPCONTACREDITO: TIntegerField;
    cds_CPVIA: TStringField;
    cds_CPFORMAPAGAMENTO: TStringField;
    cds_CPDATABAIXA: TDateField;
    cds_CPHISTORICO: TStringField;
    cds_CPCODCOMPRA: TIntegerField;
    cds_CPCODALMOXARIFADO: TSmallintField;
    cds_CPCODCOMPRADOR: TSmallintField;
    cds_CPCODUSUARIO: TSmallintField;
    cds_CPN_DOCUMENTO: TStringField;
    cds_CPDATASISTEMA: TSQLTimeStampField;
    cds_CPVALORRECEBIDO: TFloatField;
    cds_CPJUROS: TFloatField;
    cds_CPDESCONTO: TFloatField;
    cds_CPPERDA: TFloatField;
    cds_CPTROCA: TFloatField;
    cds_CPFUNRURAL: TFloatField;
    cds_CPVALOR_PRIM_VIA: TFloatField;
    cds_CPVALOR_RESTO: TFloatField;
    cds_CPVALORTITULO: TFloatField;
    cds_CPOUTRO_CREDITO: TFloatField;
    cds_CPOUTRO_DEBITO: TFloatField;
    cds_CPPARCELAS: TIntegerField;
    cds_CPID_COMPRA: TIntegerField;
    cds_CPID_FORNECEDOR: TIntegerField;
    cds_CPSELECIONOU: TStringField;
    cds_CPOBS: TGraphicField;
    cds_CPENTRADA: TFloatField;
    cds_CPTIPO_DOC: TStringField;
    cds_CPID_DEPREC: TIntegerField;
    cds_CPSTATUS: TStringField;
    sds_CPID_PAGAMENTO: TIntegerField;
    sds_CPTITULO: TStringField;
    sds_CPEMISSAO: TDateField;
    sds_CPDATAVENCIMENTO: TDateField;
    sds_CPDATAPAGAMENTO: TDateField;
    sds_CPCAIXA: TSmallintField;
    sds_CPCONTADEBITO: TIntegerField;
    sds_CPCONTACREDITO: TIntegerField;
    sds_CPVIA: TStringField;
    sds_CPFORMAPAGAMENTO: TStringField;
    sds_CPDATABAIXA: TDateField;
    sds_CPHISTORICO: TStringField;
    sds_CPCODCOMPRA: TIntegerField;
    sds_CPCODALMOXARIFADO: TSmallintField;
    sds_CPCODCOMPRADOR: TSmallintField;
    sds_CPCODUSUARIO: TSmallintField;
    sds_CPN_DOCUMENTO: TStringField;
    sds_CPDATASISTEMA: TSQLTimeStampField;
    sds_CPVALORRECEBIDO: TFloatField;
    sds_CPJUROS: TFloatField;
    sds_CPDESCONTO: TFloatField;
    sds_CPPERDA: TFloatField;
    sds_CPTROCA: TFloatField;
    sds_CPFUNRURAL: TFloatField;
    sds_CPVALOR_PRIM_VIA: TFloatField;
    sds_CPVALOR_RESTO: TFloatField;
    sds_CPVALORTITULO: TFloatField;
    sds_CPOUTRO_CREDITO: TFloatField;
    sds_CPOUTRO_DEBITO: TFloatField;
    sds_CPPARCELAS: TIntegerField;
    sds_CPID_COMPRA: TIntegerField;
    sds_CPID_FORNECEDOR: TIntegerField;
    sds_CPSELECIONOU: TStringField;
    sds_CPOBS: TGraphicField;
    sds_CPENTRADA: TFloatField;
    sds_CPTIPO_DOC: TStringField;
    sds_CPID_DEPREC: TIntegerField;
    sds_CPSTATUS: TStringField;
    sds_ObitosCPF_FALECIDO: TStringField;
    sds_ObitosRG_FALECIDO: TStringField;
    sds_ObitosDTA_EXPDICAO: TDateField;
    cds_ObitosCPF_FALECIDO: TStringField;
    cds_ObitosRG_FALECIDO: TStringField;
    cds_ObitosDTA_EXPDICAO: TDateField;
    sds_ObitosSERIE_NF: TStringField;
    cds_ObitosSERIE_NF: TStringField;
    sds_socioPLANO: TStringField;
    cds_socioPLANO: TStringField;
    cds_pront: TClientDataSet;
    dsp_pront: TDataSetProvider;
    sds_pront: TSQLDataSet;
    cds_prontID_SOCIO: TIntegerField;
    cds_prontHISTORICO: TMemoField;
    sds_prontID_SOCIO: TIntegerField;
    sds_prontHISTORICO: TMemoField;
    sds_socioHISTORICO: TMemoField;
    cds_socioHISTORICO: TMemoField;
    sds_socioPLANO_ANT: TStringField;
    cds_socioPLANO_ANT: TStringField;
    sds_prontDTA_ALT_PLANO: TDateField;
    cds_prontDTA_ALT_PLANO: TDateField;
    sds_socioDTA_CONTRATO: TDateField;
    cds_socioDTA_CONTRATO: TDateField;
    sds_socioDTA_CONTRATO_ANT: TDateField;
    cds_socioDTA_CONTRATO_ANT: TDateField;
    sds_ObitosDOC_APRESENTADO: TStringField;
    cds_ObitosDOC_APRESENTADO: TStringField;
    cds_ContasR: TClientDataSet;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    IntegerField9: TIntegerField;
    DateField5: TDateField;
    DateField6: TDateField;
    StringField11: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    DateField7: TDateField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    StringField16: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField17: TStringField;
    DateField8: TDateField;
    StringField18: TStringField;
    IntegerField12: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    cds_ContasRTITULO: TIntegerField;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    dsp_CR1: TDataSetProvider;
    cds_CR1: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField1: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    DateField3: TDateField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField6: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField7: TStringField;
    DateField4: TDateField;
    StringField8: TStringField;
    IntegerField6: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_CR1TITULO: TIntegerField;
    cds_CR1CODIGO: TIntegerField;
    cds_ContasRCODIGO: TIntegerField;
    sds_ObitosIMSS: TStringField;
    sds_ObitosN_BENEFICIO: TStringField;
    sds_ObitosDECLA_ESTCIVIL: TStringField;
    cds_ObitosIMSS: TStringField;
    cds_ObitosN_BENEFICIO: TStringField;
    cds_ObitosDECLA_ESTCIVIL: TStringField;
    sds_ObitosAVO_PATERNO_PAI: TStringField;
    sds_ObitosAVO_MATERNO_PAI: TStringField;
    sds_ObitosNUPCIAS_PAI: TStringField;
    sds_ObitosDATA_CASAMENTO_PAI: TDateField;
    sds_ObitosLIVRO_PAI: TStringField;
    sds_ObitosFOLHAS_PAI: TStringField;
    sds_ObitosNUM_PAI: TStringField;
    sds_ObitosOBSERVACAO_PAI: TStringField;
    sds_ObitosAVO_PATERNO_PAI1: TStringField;
    sds_ObitosAVO_MATERNO_PAI1: TStringField;
    sds_ObitosLOCAL_NASCCTO: TStringField;
    cds_ObitosAVO_PATERNO_PAI: TStringField;
    cds_ObitosAVO_MATERNO_PAI: TStringField;
    cds_ObitosNUPCIAS_PAI: TStringField;
    cds_ObitosDATA_CASAMENTO_PAI: TDateField;
    cds_ObitosLIVRO_PAI: TStringField;
    cds_ObitosFOLHAS_PAI: TStringField;
    cds_ObitosNUM_PAI: TStringField;
    cds_ObitosOBSERVACAO_PAI: TStringField;
    cds_ObitosAVO_PATERNO_PAI1: TStringField;
    cds_ObitosAVO_MATERNO_PAI1: TStringField;
    cds_ObitosLOCAL_NASCCTO: TStringField;
    sds_ObitosGRUPO_LOTE: TStringField;
    cds_ObitosGRUPO_LOTE: TStringField;
    proc_obitosGRUPO: TStringField;
    proc_obitosINSCRICAO: TIntegerField;
    sdsLog: TSQLDataSet;
    cdsLog: TClientDataSet;
    dspLog: TDataSetProvider;
    cdsLogID_LOG: TIntegerField;
    cdsLogTABELA: TStringField;
    cdsLogDATA: TDateField;
    cdsLogUSUARIO: TStringField;
    cdsLogMICRO: TStringField;
    cdsLogHORA: TTimeField;
    cdsLogCAMPO1: TStringField;
    cdsLogCAMPO2: TStringField;
    cdsLogCAMPO3: TStringField;
    cdsLogCAMPO4: TStringField;
    cdsLogDATA_SET: TMemoField;
    sdsLogID_LOG: TIntegerField;
    sdsLogTABELA: TStringField;
    sdsLogDATA: TDateField;
    sdsLogUSUARIO: TStringField;
    sdsLogMICRO: TStringField;
    sdsLogHORA: TTimeField;
    sdsLogCAMPO1: TStringField;
    sdsLogCAMPO2: TStringField;
    sdsLogCAMPO3: TStringField;
    sdsLogCAMPO4: TStringField;
    sdsLogDATA_SET: TMemoField;
    proc_obitosSERIE: TStringField;
    sdsCircular: TSQLDataSet;
    dspCircular: TDataSetProvider;
    cdsCircular: TClientDataSet;
    cdsCircularID_LOTE: TIntegerField;
    cdsCircularLOTE: TIntegerField;
    cdsCircularGRUPO: TStringField;
    cdsCircularGEROU: TStringField;
    cdsCircularN_FALEC: TIntegerField;
    sdsCircularID_LOTE: TIntegerField;
    sdsCircularLOTE: TIntegerField;
    sdsCircularGRUPO: TStringField;
    sdsCircularGEROU: TStringField;
    sdsCircularN_FALEC: TIntegerField;
    sdsObito: TSQLDataSet;
    dspObito: TDataSetProvider;
    cdsObito: TClientDataSet;
    cdsObitoLOTE: TIntegerField;
    sdsObitoLOTE: TIntegerField;
    proc_obitosLOTE: TIntegerField;
    sdsObitoID: TIntegerField;
    cdsObitoID: TIntegerField;
    proc_obitosGRUPO_LOTE: TStringField;
    sds_socioSITUACAO: TStringField;
    cds_socioSITUACAO: TStringField;
    sds_socioDATAEXCLUSAO: TDateField;
    cds_socioDATAEXCLUSAO: TDateField;
    sds_CRCODIGO: TIntegerField;
    sds_CROBS: TGraphicField;
    sds_CRENTRADA: TFloatField;
    sds_CRCODCCUSTO: TSmallintField;
    sds_CRID_DEPREC: TIntegerField;
    sds_CRNOTAFISCAL: TIntegerField;
    sds_CRID_VENDA: TIntegerField;
    sds_CRID_ACORDO: TIntegerField;
    sds_CRN_BOLETO: TStringField;
    cds_CRCODIGO: TIntegerField;
    cds_CROBS: TGraphicField;
    cds_CRENTRADA: TFloatField;
    cds_CRCODCCUSTO: TSmallintField;
    cds_CRID_DEPREC: TIntegerField;
    cds_CRNOTAFISCAL: TIntegerField;
    cds_CRID_VENDA: TIntegerField;
    cds_CRID_ACORDO: TIntegerField;
    cds_CRN_BOLETO: TStringField;
    sds_itens: TSQLDataSet;
    sds_itensID_DETALHE: TIntegerField;
    sds_itensID_MOVIMENTO: TIntegerField;
    sds_itensID_PRODUTO: TIntegerField;
    sds_itensQUANTIDADE: TFloatField;
    sds_itensPRECO: TFloatField;
    sds_itensPRECO_REAL: TFloatField;
    sds_itensUN: TStringField;
    sds_itensVALTOTAL: TFloatField;
    sds_itensDESCRICAO: TStringField;
    dsp_itens: TDataSetProvider;
    cds_itens: TClientDataSet;
    cds_itensID_DETALHE: TIntegerField;
    cds_itensID_MOVIMENTO: TIntegerField;
    cds_itensID_PRODUTO: TIntegerField;
    cds_itensQUANTIDADE: TFloatField;
    cds_itensPRECO_REAL: TFloatField;
    cds_itensPRECO: TFloatField;
    cds_itensUN: TStringField;
    cds_itensVALTOTAL: TFloatField;
    cds_itensDESCRICAO: TStringField;
    sds_mov: TSQLDataSet;
    sds_movID_MOVIMENTO: TIntegerField;
    sds_movDATAMOVIMENTO: TDateField;
    sds_movSTATUS: TStringField;
    sds_movCOD_FUNCIONARIO: TIntegerField;
    sds_movID_FORNECEDOR: TIntegerField;
    sds_movDATA_SISTEMA: TSQLTimeStampField;
    sds_movVALOR_NF: TFloatField;
    sds_movNOME_FERNECEDOR: TStringField;
    sds_movNATUREZA: TStringField;
    sds_movNOME: TStringField;
    dsp_mov: TDataSetProvider;
    cds_mov: TClientDataSet;
    cds_movID_MOVIMENTO: TIntegerField;
    cds_movDATAMOVIMENTO: TDateField;
    cds_movSTATUS: TStringField;
    cds_movCOD_FUNCIONARIO: TIntegerField;
    cds_movID_FORNECEDOR: TIntegerField;
    cds_movDATA_SISTEMA: TSQLTimeStampField;
    cds_movVALOR_NF: TFloatField;
    cds_movNOME_FERNECEDOR: TStringField;
    cds_movNATUREZA: TStringField;
    cds_movNOME: TStringField;
    cds_compra: TClientDataSet;
    cds_compraID_COMPRA: TIntegerField;
    cds_compraID_MOVIMENTO: TIntegerField;
    cds_compraID_FORNECEDOR: TIntegerField;
    cds_compraDATACOMPRA: TDateField;
    cds_compraDATAVENCIMENTO: TDateField;
    cds_compraNUMEROBORDERO: TIntegerField;
    cds_compraBANCO: TSmallintField;
    cds_compraCODCOMPRADOR: TSmallintField;
    cds_compraSTATUS: TSmallintField;
    cds_compraCODUSUARIO: TSmallintField;
    cds_compraDATASISTEMA: TDateField;
    cds_compraVALOR: TFloatField;
    cds_compraNOTAFISCAL: TIntegerField;
    cds_compraSERIE: TStringField;
    cds_compraDESCONTO: TFloatField;
    cds_compraCODCCUSTO: TSmallintField;
    cds_compraN_PARCELA: TSmallintField;
    cds_compraOPERACAO: TStringField;
    cds_compraN_DOCUMENTO: TStringField;
    cds_compraCAIXA: TSmallintField;
    cds_compraMULTA_JUROS: TFloatField;
    cds_compraAPAGAR: TFloatField;
    cds_compraVALOR_PAGAR: TFloatField;
    cds_compraENTRADA: TFloatField;
    cds_compraN_BOLETO: TStringField;
    cds_compraSTATUS1: TStringField;
    cds_compraVALOR_ICMS: TFloatField;
    cds_compraVALOR_FRETE: TFloatField;
    cds_compraVALOR_SEGURO: TFloatField;
    cds_compraOUTRAS_DESP: TFloatField;
    cds_compraVALOR_IPI: TFloatField;
    cds_compraHISTORICO: TStringField;
    cds_compraFORMAPAGAMENTO: TStringField;
    cds_compraNOME: TStringField;
    dsp_compra: TDataSetProvider;
    sds_compra: TSQLDataSet;
    sds_compraID_COMPRA: TIntegerField;
    sds_compraID_MOVIMENTO: TIntegerField;
    sds_compraID_FORNECEDOR: TIntegerField;
    sds_compraDATACOMPRA: TDateField;
    sds_compraDATAVENCIMENTO: TDateField;
    sds_compraNUMEROBORDERO: TIntegerField;
    sds_compraBANCO: TSmallintField;
    sds_compraCODCOMPRADOR: TSmallintField;
    sds_compraSTATUS: TSmallintField;
    sds_compraCODUSUARIO: TSmallintField;
    sds_compraDATASISTEMA: TDateField;
    sds_compraVALOR: TFloatField;
    sds_compraNOTAFISCAL: TIntegerField;
    sds_compraSERIE: TStringField;
    sds_compraDESCONTO: TFloatField;
    sds_compraCODCCUSTO: TSmallintField;
    sds_compraN_PARCELA: TSmallintField;
    sds_compraOPERACAO: TStringField;
    sds_compraN_DOCUMENTO: TStringField;
    sds_compraCAIXA: TSmallintField;
    sds_compraMULTA_JUROS: TFloatField;
    sds_compraAPAGAR: TFloatField;
    sds_compraVALOR_PAGAR: TFloatField;
    sds_compraENTRADA: TFloatField;
    sds_compraN_BOLETO: TStringField;
    sds_compraSTATUS1: TStringField;
    sds_compraVALOR_ICMS: TFloatField;
    sds_compraVALOR_FRETE: TFloatField;
    sds_compraVALOR_SEGURO: TFloatField;
    sds_compraOUTRAS_DESP: TFloatField;
    sds_compraVALOR_IPI: TFloatField;
    sds_compraHISTORICO: TStringField;
    sds_compraFORMAPAGAMENTO: TStringField;
    sds_compraNOME: TStringField;
    cds_cpagar: TClientDataSet;
    cds_cpagarID_PAGAMENTO: TIntegerField;
    cds_cpagarTITULO: TStringField;
    cds_cpagarEMISSAO: TDateField;
    cds_cpagarDATAVENCIMENTO: TDateField;
    cds_cpagarDATAPAGAMENTO: TDateField;
    cds_cpagarCAIXA: TSmallintField;
    cds_cpagarCONTADEBITO: TIntegerField;
    cds_cpagarCONTACREDITO: TIntegerField;
    cds_cpagarVIA: TStringField;
    cds_cpagarDATABAIXA: TDateField;
    cds_cpagarHISTORICO: TStringField;
    cds_cpagarCODCOMPRA: TIntegerField;
    cds_cpagarCODALMOXARIFADO: TSmallintField;
    cds_cpagarCODCOMPRADOR: TSmallintField;
    cds_cpagarCODUSUARIO: TSmallintField;
    cds_cpagarN_DOCUMENTO: TStringField;
    cds_cpagarDATASISTEMA: TSQLTimeStampField;
    cds_cpagarVALORRECEBIDO: TFloatField;
    cds_cpagarJUROS: TFloatField;
    cds_cpagarDESCONTO: TFloatField;
    cds_cpagarPERDA: TFloatField;
    cds_cpagarTROCA: TFloatField;
    cds_cpagarFUNRURAL: TFloatField;
    cds_cpagarVALOR_PRIM_VIA: TFloatField;
    cds_cpagarVALOR_RESTO: TFloatField;
    cds_cpagarVALORTITULO: TFloatField;
    cds_cpagarOUTRO_CREDITO: TFloatField;
    cds_cpagarOUTRO_DEBITO: TFloatField;
    cds_cpagarPARCELAS: TIntegerField;
    cds_cpagarID_COMPRA: TIntegerField;
    cds_cpagarSTATUS: TStringField;
    cds_cpagarID_FORNECEDOR: TIntegerField;
    cds_cpagarTIPO_DOC: TStringField;
    cds_cpagarFORMAPAGAMENTO: TStringField;
    dsp_cpagar: TDataSetProvider;
    sds_cpagar: TSQLDataSet;
    IntegerField13: TIntegerField;
    StringField5: TStringField;
    DateField9: TDateField;
    DateField10: TDateField;
    DateField11: TDateField;
    SmallintField1: TSmallintField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    StringField15: TStringField;
    StringField21: TStringField;
    DateField12: TDateField;
    StringField22: TStringField;
    IntegerField16: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    StringField23: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    cds_mov_OB: TClientDataSet;
    cds_mov_OBID_MOVIMENTO: TIntegerField;
    cds_mov_OBDATAMOVIMENTO: TDateField;
    cds_mov_OBSTATUS: TStringField;
    cds_mov_OBCOD_FUNCIONARIO: TIntegerField;
    cds_mov_OBID_FORNECEDOR: TIntegerField;
    cds_mov_OBDATA_SISTEMA: TSQLTimeStampField;
    cds_mov_OBVALOR_NF: TFloatField;
    cds_mov_OBNATUREZA: TStringField;
    cds_mov_OBID_OBITO: TIntegerField;
    cds_mov_OBTIPO: TStringField;
    cds_mov_OBID_CLIENTE: TIntegerField;
    cds_mov_OBFALECIDO: TStringField;
    cds_mov_OBNOME: TStringField;
    dsp_mov_OB: TDataSetProvider;
    sds_mov_OB: TSQLDataSet;
    IntegerField20: TIntegerField;
    DateField13: TDateField;
    StringField26: TStringField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    SQLTimeStampField2: TSQLTimeStampField;
    FloatField30: TFloatField;
    StringField27: TStringField;
    sds_movID_OBITO: TIntegerField;
    sds_movTIPO: TStringField;
    sds_movID_CLIENTE: TIntegerField;
    sds_movFALECIDO: TStringField;
    StringField28: TStringField;
    sds_venda: TSQLDataSet;
    sds_vendaID_VENDA: TIntegerField;
    sds_vendaID_MOVIMENTO: TIntegerField;
    sds_vendaID_CLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaFORMAPAGAMENTO: TStringField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_RECE: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    sds_vendaHISTORICO: TStringField;
    sds_vendaNOME: TStringField;
    dsp_venda: TDataSetProvider;
    cds_venda: TClientDataSet;
    cds_vendaID_VENDA: TIntegerField;
    cds_vendaID_MOVIMENTO: TIntegerField;
    cds_vendaID_CLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaFORMAPAGAMENTO: TStringField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_RECE: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    cds_vendaHISTORICO: TStringField;
    cds_vendaNOME: TStringField;
    sds_ObitosD_NASC_PAI: TDateField;
    sds_ObitosD_NASC_MAE: TDateField;
    cds_ObitosD_NASC_PAI: TDateField;
    cds_ObitosD_NASC_MAE: TDateField;
    sds_socioEMAIL: TStringField;
    cds_socioEMAIL: TStringField;
    sds_ObitosDECLA_NACIONALIDADE: TStringField;
    sds_ObitosFALEC_ESTCIVIL: TStringField;
    cds_ObitosDECLA_NACIONALIDADE: TStringField;
    cds_ObitosFALEC_ESTCIVIL: TStringField;
    sds_socioDTA_ULTIMA_PARCELA: TDateField;
    cds_socioDTA_ULTIMA_PARCELA: TDateField;
    sds_CRCOBRADOR: TIntegerField;
    cds_CRCOBRADOR: TIntegerField;
    sds_socioFAIXA: TIntegerField;
    cds_socioFAIXA: TIntegerField;
    SQl: TSQLConnection;
    sds_ObitosCAUSA_MORTE: TStringField;
    cds_ObitosCAUSA_MORTE: TStringField;
    sds_socioDIAPARAPGTO: TIntegerField;
    cds_socioDIAPARAPGTO: TIntegerField;
    sds_socioQUTDE: TIntegerField;
    cds_socioQUTDE: TIntegerField;
    sds_ObitosSSP_FALECIDO: TStringField;
    cds_ObitosSSP_FALECIDO: TStringField;
    sds_ObitosNACIONALIDADE: TStringField;
    sds_ObitosCPF_DECLARANTE: TStringField;
    cds_ObitosNACIONALIDADE: TStringField;
    cds_ObitosCPF_DECLARANTE: TStringField;
    sds_ObitosID_CARTORIO_1: TIntegerField;
    sds_ObitosENDERECO_1: TStringField;
    sds_ObitosFONE: TStringField;
    sds_ObitosFONE1: TStringField;
    sds_ObitosFAX: TStringField;
    sds_ObitosCPF_CGC: TStringField;
    sds_ObitosRG_IE: TStringField;
    sds_ObitosCONTATO: TStringField;
    cds_ObitosID_CARTORIO_1: TIntegerField;
    cds_ObitosENDERECO_1: TStringField;
    cds_ObitosFONE: TStringField;
    cds_ObitosFONE1: TStringField;
    cds_ObitosFAX: TStringField;
    cds_ObitosCPF_CGC: TStringField;
    cds_ObitosRG_IE: TStringField;
    cds_ObitosCONTATO: TStringField;
    sds_CRORIGEM: TIntegerField;
    cds_CRORIGEM: TIntegerField;
    sds_ObitosSSP_DECLARANTE: TStringField;
    cds_ObitosSSP_DECLARANTE: TStringField;
    sds_consultaVALOR: TFloatField;
    cds_consultaVALOR: TFloatField;
    sds_consultaPARENTESCO: TStringField;
    cds_consultaPARENTESCO: TStringField;
    sds_ObitosNUM: TStringField;
    cds_ObitosNUM: TStringField;
    sds_itensSTATUS: TStringField;
    cds_itensSTATUS: TStringField;
    sds_ObitosFONE_DECL: TStringField;
    cds_ObitosFONE_DECL: TStringField;
    sds_dep: TSQLDataSet;
    sds_depID_DEP: TIntegerField;
    sds_depID_SOCIO: TIntegerField;
    sds_depNOME_DEP: TStringField;
    sds_depFALECIDO: TStringField;
    sds_depCODPAR: TFloatField;
    sds_depDTNASC: TDateField;
    sds_depDTFALEC: TDateField;
    sds_depID_PAR: TIntegerField;
    sds_depDESCRICAO: TStringField;
    sds_depCARENCIA: TIntegerField;
    sds_depDTACADASTRO: TDateField;
    sds_depRG: TStringField;
    sds_depCPF: TStringField;
    sds_depSEGSOCIO: TStringField;
    sds_depTELEFONE: TStringField;
    dsp_dep: TDataSetProvider;
    cds_dep: TClientDataSet;
    cds_depID_DEP: TIntegerField;
    cds_depID_SOCIO: TIntegerField;
    cds_depNOME_DEP: TStringField;
    cds_depFALECIDO: TStringField;
    cds_depCODPAR: TFloatField;
    cds_depDTNASC: TDateField;
    cds_depDTFALEC: TDateField;
    cds_depID_PAR: TIntegerField;
    cds_depDESCRICAO: TStringField;
    cds_depCARENCIA: TIntegerField;
    cds_depDTACADASTRO: TDateField;
    cds_depRG: TStringField;
    cds_depCPF: TStringField;
    cds_depSEGSOCIO: TStringField;
    cds_depTELEFONE: TStringField;
    sds_depVALOR_DEP: TStringField;
    sds_depCOBRA_DEP: TStringField;
    cds_depVALOR_DEP: TStringField;
    cds_depCOBRA_DEP: TStringField;
    sds_ObitosLOCAL_FAL: TStringField;
    cds_ObitosLOCAL_FAL: TStringField;
    XMLDocument1: TXMLDocument;
    proc_lic: TSQLClientDataSet;
    proc_licPARAMETRO4: TStringField;
    proc_licPARAMETRO1: TStringField;
    proc_licPARAMETRO3: TStringField;
    sds_ObitosPIS: TStringField;
    sds_ObitosCTPS: TStringField;
    sds_ObitosCTPS_SERIE: TStringField;
    sds_ObitosCTPS_UF: TStringField;
    sds_ObitosFAL_LIVRO: TStringField;
    sds_ObitosFAL_FOLHA: TStringField;
    sds_ObitosFAL_NUM: TStringField;
    sds_ObitosFAL_ID_CARTORIO: TIntegerField;
    sds_ObitosFAL_CARTORIO: TStringField;
    cds_ObitosPIS: TStringField;
    cds_ObitosCTPS: TStringField;
    cds_ObitosCTPS_SERIE: TStringField;
    cds_ObitosCTPS_UF: TStringField;
    cds_ObitosFAL_LIVRO: TStringField;
    cds_ObitosFAL_FOLHA: TStringField;
    cds_ObitosFAL_NUM: TStringField;
    cds_ObitosFAL_ID_CARTORIO: TIntegerField;
    cds_ObitosFAL_CARTORIO: TStringField;
    sds_ObitosFAL_CARTORIO_END: TStringField;
    sds_ObitosFAL_CARTORIO_CIDADE: TStringField;
    cds_ObitosFAL_CARTORIO_END: TStringField;
    cds_ObitosFAL_CARTORIO_CIDADE: TStringField;
    procedure cds_ObitosNewRecord(DataSet: TDataSet);
    procedure cds_ObitosBeforePost(DataSet: TDataSet);
    procedure cds_empresaBeforePost(DataSet: TDataSet);
    procedure cds_funcionarioBeforePost(DataSet: TDataSet);
    procedure cds_funcionarioNewRecord(DataSet: TDataSet);
    procedure cds_filhosBeforePost(DataSet: TDataSet);
    procedure cds_filhosNewRecord(DataSet: TDataSet);
    procedure cds_CRBeforePost(DataSet: TDataSet);
    procedure cds_grupoBeforePost(DataSet: TDataSet);
    procedure cds_clinicaBeforePost(DataSet: TDataSet);
    procedure cds_clinicaNewRecord(DataSet: TDataSet);
    procedure cds_consultaBeforePost(DataSet: TDataSet);
    procedure cds_socioBeforePost(DataSet: TDataSet);
    procedure cds_socioNewRecord(DataSet: TDataSet);
    procedure cds_endBeforePost(DataSet: TDataSet);
    procedure cds_depBeforePost(DataSet: TDataSet);
    procedure cds_vendBeforePost(DataSet: TDataSet);
    procedure cds_cobBeforePost(DataSet: TDataSet);
    procedure cds_bairroBeforePost(DataSet: TDataSet);
    procedure cds_municBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_grupoNewRecord(DataSet: TDataSet);
    procedure cds_socio_deslBeforePost(DataSet: TDataSet);
    procedure cds_socio_deslNewRecord(DataSet: TDataSet);
    procedure cds_dep_DNewRecord(DataSet: TDataSet);
    procedure cds_dep_DBeforePost(DataSet: TDataSet);
    procedure cds_end_DNewRecord(DataSet: TDataSet);
    procedure cds_end_DBeforePost(DataSet: TDataSet);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure cds_endNewRecord(DataSet: TDataSet);
    procedure cds_depNewRecord(DataSet: TDataSet);
    procedure cds_cartorioBeforePost(DataSet: TDataSet);
    procedure cds_cartorioNewRecord(DataSet: TDataSet);
    procedure cds_grupoAfterPost(DataSet: TDataSet);
    procedure cdsCircularBeforePost(DataSet: TDataSet);
    procedure cds_itensBeforePost(DataSet: TDataSet);
    procedure cds_compraNewRecord(DataSet: TDataSet);
    procedure cds_movNewRecord(DataSet: TDataSet);
    procedure cds_itensNewRecord(DataSet: TDataSet);
    procedure cds_mov_OBNewRecord(DataSet: TDataSet);
    procedure cds_filhosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    //memoLic : String; Mudei para pulblico
    FRpcCaller: TRpcCaller;
    FRpcFunction: IRpcFunction;
    procedure verificaMensagemInicial;
    procedure verificaNumeroDias(dia : Word; tipo: Word);
    procedure LicencaUso;
    procedure conexaoXmlRpc;
    procedure Incrementa(Chave_Primaria: TField);
    procedure BuscaChave(Chave_Primaria: TField);
    { Private declarations }
  public
    RESULTADO : string;
    memoLic : String;
    msg_cnx : String;
    { Public declarations }
    mensagemInicial, sistemaLiberado , empresa : string;
    dataComputador : TDateTime;
  end;

var
  DM: TDM;
  dbxconec: TStringList;
  str_relatorio, perfil : String;
  codmovdet : integer;


implementation

uses ufDlgLogin, uPrincipal, udm_sge, Dialogs, md5;

{$R *.dfm}

{ TDM }
{ Declare Windows no uses }
function NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TDM.BuscaChave(Chave_Primaria: TField);
 Var
  Qrys: TSQLClientDataSet;
begin
  //termina a execução caso não esteja em modo de inserção
  if Chave_Primaria.DataSet.State <> dsInsert then
      exit;    //termina a execução caso não esteja em modo de inserção
  Qrys:=TSQLClientDataSet.Create(nil); //cria uma instância do objeto
  try
    Qrys.DBConnection:=SQLObitos;  //componente de conexão
    Qrys.CommandText:='SELECT ('+Chave_Primaria.FieldName+') FROM INFORMATIVO';
    Qrys.Open;
    if Qrys.Fields[0].IsNull then    //se a tabela está vazia retornará nulo
       begin
       Chave_Primaria.AsInteger:=1;    //então este será o primeiro registro
       Qrys.Append;
       end
    else begin
     Qrys.Edit;
     Chave_Primaria.AsInteger:=Qrys.Fields[0].AsInteger+1;
    end;
     Qrys.Fields[0].AsInteger:=Chave_Primaria.AsInteger;
  finally
    FreeAndNil(Qrys);  //tira o objeto da memória
  end;

end;

procedure TDM.Incrementa(Chave_Primaria: TField);
 Var
  Qry: TSQLClientDataSet;
begin
  //termina a execução caso não esteja em modo de inserção
  if Chave_Primaria.DataSet.State <> dsInsert then
      exit;    //termina a execução caso não esteja em modo de inserção
  Qry:=TSQLClientDataSet.Create(nil); //cria uma instância do objeto
  try
    Qry.DBConnection:=SQLObitos;  //componente de conexão
    Qry.CommandText:='SELECT ('+Chave_Primaria.FieldName+') FROM INFORMATIVO';
    Qry.Open;
    if Qry.Fields[0].IsNull then    //se a tabela está vazia retornará nulo
       begin
       Chave_Primaria.AsInteger:=1;    //então este será o primeiro registro
       if Qry.IsEmpty then
       Qry.Append
       else
       Qry.Edit;
       end
    else begin
     Qry.Edit;
     Chave_Primaria.AsInteger:=Qry.Fields[0].AsInteger+1;
    end;
     Qry.Fields[0].AsInteger:=Chave_Primaria.AsInteger;
     Qry.ApplyUpdates(0);

  finally
    FreeAndNil(Qry);  //tira o objeto da memória
  end;
end;

procedure TDM.cds_ObitosNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_ObitosID);
end;

procedure TDM.cds_ObitosBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_ObitosID);
end;

procedure TDM.cds_empresaBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_empresaCOD_EMPRESA);
end;

procedure TDM.cds_funcionarioBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_funcionarioCOD_FUNCIONARIO);
end;

procedure TDM.cds_funcionarioNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_funcionarioCOD_FUNCIONARIO);
end;

procedure TDM.cds_filhosBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_filhosID_FILHOS);
end;

procedure TDM.cds_filhosNewRecord(DataSet: TDataSet);
begin
  cds_filhosID.AsInteger := cds_ObitosID.AsInteger;
end;

procedure TDM.cds_CRBeforePost(DataSet: TDataSet);
begin
//  Incrementa(cds_CRID_RECEBIMENTOS);
end;

procedure TDM.cds_grupoBeforePost(DataSet: TDataSet);
begin
     Incrementa(cds_grupoID_GRUPO);
end;

procedure TDM.cds_clinicaBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_clinicaID_CLINICA);
end;

procedure TDM.cds_clinicaNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_clinicaID_CLINICA);
end;

procedure TDM.cds_consultaBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_consultaID_CONSULTA);
end;

procedure TDM.cds_socioBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_socioID_SOCIO);
end;

procedure TDM.cds_socioNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_socioID_SOCIO);
//  cds_socioFAIXA.AsInteger := 1;  
end;

procedure TDM.cds_endBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_endID_ENDERECO);
end;

procedure TDM.cds_depBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_depID_DEP);
end;

procedure TDM.cds_vendBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_vendID_VEN);
end;

procedure TDM.cds_cobBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_cobID_COB);
end;

procedure TDM.cds_bairroBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_bairroID_BAIRRO);
end;

procedure TDM.cds_municBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_municID_MUNICIPIO);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var s : String;
    I : integer;
begin
  SQl.LoadParamsFromIniFile('dbxconnections.ini');
  SQLObitos.LoadParamsFromIniFile('dbxconnections.ini');
  dbxconec := TStringList.Create;
  try
     dbxconec.LoadFromFile('dbxconnections.ini');
     str_relatorio := dbxconec[14];
     str_relatorio := copy(str_relatorio,16,length(str_relatorio));
  finally
    dbxconec.Free;
  end;

  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  mensagemInicial := dm.cds_empresaDEMONSTRATIVO.AsString;
 // anoativo := TableNomeEscolaANOLETIVO.AsInteger;

  S := '';
 { antes no wordpress
  for I := 1 To Length(dm.cds_empresaCNPJ.AsString) Do
  begin
    if (dm.cds_empresaCNPJ.AsString[I] in ['0'..'9']) then
    begin
     S := S + Copy(dm.cds_empresaCNPJ.AsString, I, 1);
    end;
  end;
  }
  empresa := dm.cds_empresaCNPJ.AsString;

  dm.cds_empresa.Close;

  //empresa := S;

  LicencaUso;

  verificaMensagemInicial;


end;

procedure TDM.cds_grupoNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_grupoID_GRUPO);
end;

procedure TDM.cds_socio_deslBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_socio_deslID_SOCIO_DESL);
end;

procedure TDM.cds_socio_deslNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_socio_deslID_SOCIO_DESL)
end;

procedure TDM.cds_dep_DNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_dep_DID_DEP_DESL);
end;

procedure TDM.cds_dep_DBeforePost(DataSet: TDataSet);
begin
   Incrementa(cds_dep_DID_DEP_DESL) 
end;

procedure TDM.cds_end_DNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_end_DID_ENDERECO_DESL);
end;

procedure TDM.cds_end_DBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_end_DID_ENDERECO_DESL);
end;

procedure TDM.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TDM.DSPGetProproperties(Sender: TObject; DataSet: TDataSet;
  out Properties: OleVariant);
begin
  { Declare Variants no uses }
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TDM.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
//const
//  DirLog = 'Logs\';
var
   str, str_For, strOriginal , id_rec , pTitulo :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  id_rec := '' ;

 // id_rec := dm.cds_CRID_RECEBIMENTOS.AsString ;

 // if(id_rec <> '') then
  id_rec := dataset.Fields[0].AsString;

  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
    if(GetOptionalParam('TABELA') <> 'RECEBIMENTOS') then
    begin
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA,CAMPO1, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      str := str + '''' + id_rec + '''';
      str := str + ', ';
    end;

    if(GetOptionalParam('TABELA') = 'RECEBIMENTOS') then
    begin
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA,CAMPO1,CAMPO2, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      str := str + '''' + id_rec + '''';
      str := str + ', ';
      str := str + '''' + pTitulo + '''';
      str := str + ', ';
    end;

      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+   ' '
                                                 +  dataset.Fields[0].AsString + #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then

                                    if(GetOptionalParam('TABELA') <> 'RECEBIMENTOS') then
    begin
                str_for := '----Modificado----' +  dataset.Fields[i].AsString  +  ' ' ;
    end;
                                      if(GetOptionalParam('TABELA') = 'RECEBIMENTOS') then
    begin
    str_for := '----Modificado----' +  dataset.Fields[i].AsString  +  ' '
                                                 +  dataset.Fields[7].AsString + ' ' + #13+#10;
    end;

            strOriginal := strOriginal + dataset.FieldDefList[i].Name;
            id_rec := dataset.Fields[i].AsString ;

             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + dataset.Fields[i].AsString
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+  ' '
                                                 +  dataset.Fields[0].AsString + #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      SQLObitos.ExecuteDirect(str);
  end;
end;

procedure TDM.cds_endNewRecord(DataSet: TDataSet);
begin
  cds_endID_SOCIO.AsInteger := cds_socioID_SOCIO.AsInteger;
end;

procedure TDM.cds_depNewRecord(DataSet: TDataSet);
begin
  cds_depID_SOCIO.AsInteger := cds_socioID_SOCIO.AsInteger;
end;

procedure TDM.cds_cartorioBeforePost(DataSet: TDataSet);
begin
  Incrementa(cds_cartorioID_CARTORIO);
end;

procedure TDM.cds_cartorioNewRecord(DataSet: TDataSet);
begin
  BuscaChave(cds_cartorioID_CARTORIO);
end;

procedure TDM.cds_grupoAfterPost(DataSet: TDataSet);
//var
  //sql_texto : string;
begin
  // if cds_grupoN_FALEC.AsInteger = 7 then
//   begin
      {Executo procedure insere_mensalidade}
   //   sql_texto := 'EXECUTE PROCEDURE INSERE_MESALIDADES ( ';
     // sql_texto := sql_texto + '''' + cds_grupoGRUPO.AsString + '''';
    //  sql_texto := sql_texto + ' )';
  //    DM_SGE.sge.ExecuteDirect(sql_texto);
//   end;
end;

procedure TDM.cdsCircularBeforePost(DataSet: TDataSet);
begin
     Incrementa(cdsCircularID_LOTE);
end;

procedure TDM.cds_itensBeforePost(DataSet: TDataSet);
begin
  cds_itensVALTOTAL.AsFloat := cds_itensQUANTIDADE.AsFloat *
     cds_itensPRECO_REAL.AsFloat;
end;

procedure TDM.cds_compraNewRecord(DataSet: TDataSet);
begin
  cds_compraID_MOVIMENTO.AsInteger := cds_movID_MOVIMENTO.AsInteger;
end;

procedure TDM.cds_movNewRecord(DataSet: TDataSet);
begin
   dm.cds_movID_MOVIMENTO.asInteger := 1999999;
end;

procedure TDM.cds_itensNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_itensID_DETALHE.AsInteger := codmovdet;
  if cds_mov.Active then
    cds_itensID_MOVIMENTO.AsInteger :=  cds_movID_MOVIMENTO.AsInteger;
  if cds_mov_OB.Active then
    cds_itensID_MOVIMENTO.AsInteger :=  cds_mov_OBID_MOVIMENTO.AsInteger;
end;

procedure TDM.cds_mov_OBNewRecord(DataSet: TDataSet);
begin
  cds_mov_OBID_OBITO.AsInteger := cds_ObitosID.AsInteger;
  cds_mov_OBID_MOVIMENTO.asInteger := 1999999;
end;

procedure TDM.cds_filhosReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg('Mensagem: '+E.Message,mtInformation,[mbok],0);
end;

procedure TDM.verificaMensagemInicial;
var chave, chaveBd: String;
    dia, mes, ano: word;
    hj : TDateTime;

begin
  chaveBd := mensagemInicial;
  mensagemInicial := '';
  decodedate(now, ano, mes, dia);
   hj := now;

  if (hj < Dm.dataComputador) then
  begin
    MessageDlg('A data do computador esta errada.', mtWarning, [mbOK], 0);
    sistemaLiberado := 'N';
    mensagemInicial := 'A data do computador esta errada.';
    exit;
  end;


  sistemaLiberado := 'N';

 // if((empresa = '67993030000117') or (empresa = '50084805000139') or (empresa ='71753198000122'))then
 // begin
  // Testo a chave gravada se esta CNPJ-00
  chave := MD5Print(MD5String(empresa + '-00'));
  if (chave = chaveBd) then
  begin
    sistemaLiberado := 'S';
    exit;
  end;
  chave := MD5Print(MD5String(empresa + '-10'));
  if (chave = chaveBd) then
  begin
    sistemaLiberado := 'S';
    verificaNumeroDias(dia, 10);
    if (mensagemInicial <> 'N') then
      MessageDlg(mensagemInicial , mtWarning, [mbOK], 0);
    exit;
  end;

  chave := MD5Print(MD5String(empresa + '-20'));
  if (chave = chaveBd) then
  begin
    sistemaLiberado := 'S';
    verificaNumeroDias(dia, 20);
    if (mensagemInicial <> 'N') then
      MessageDlg(mensagemInicial , mtWarning, [mbOK], 0);
    exit;
  end;

  chave := MD5Print(MD5String(empresa + '-30'));
  if (chave = chaveBd) then
  begin
    sistemaLiberado := 'S';
    verificaNumeroDias(dia, 30);
    if (mensagemInicial <> 'N') then
      MessageDlg(mensagemInicial , mtWarning, [mbOK], 0);
    exit;
  end;

end;

procedure TDM.verificaNumeroDias(dia, tipo: Word);
begin
  if (tipo = 10) then
  begin
    Case dia of
      1 : mensagemInicial := 'A Licença de uso expirará em 9 dias.';
      2 : mensagemInicial := 'A Licença de uso expirará em 8 dias.';
      3 : mensagemInicial := 'A Licença de uso expirará em 7 dias.';
      4 : mensagemInicial := 'A Licença de uso expirará em 6 dias.';
      5 : mensagemInicial := 'A Licença de uso expirará em 5 dias.';
      6 : mensagemInicial := 'A Licença de uso expirará em 4 dias.';
      7 : mensagemInicial := 'A Licença de uso expirará em 3 dias.';
      8 : mensagemInicial := 'A Licença de uso expirará em 2 dias.';
      9 : mensagemInicial := 'A Licença de uso expirará em 1 dia.';
      10 : mensagemInicial := 'A Licença de uso expirará hoje.';
      11 : begin
             mensagemInicial := 'A Licença de uso expirada.';
             sistemaLiberado := 'N';
           end;
      else mensagemInicial := 'N';
    end;
  end;
  if (tipo = 20) then
  begin
    Case dia of
      11 : mensagemInicial := 'A Licença de uso expirará em 9 dias.';
      12 : mensagemInicial := 'A Licença de uso expirará em 8 dias.';
      13 : mensagemInicial := 'A Licença de uso expirará em 7 dias.';
      14 : mensagemInicial := 'A Licença de uso expirará em 6 dias.';
      15 : mensagemInicial := 'A Licença de uso expirará em 5 dias.';
      16 : mensagemInicial := 'A Licença de uso expirará em 4 dias.';
      17 : mensagemInicial := 'A Licença de uso expirará em 3 dias.';
      18 : mensagemInicial := 'A Licença de uso expirará em 2 dias.';
      19 : mensagemInicial := 'A Licença de uso expirará em 1 dia.';
      20 : mensagemInicial := 'A Licença de uso expira hoje.';
      21 : begin
             mensagemInicial := 'A Licença de uso expirada.';
             sistemaLiberado := 'N';
           end;
      else mensagemInicial := 'N';
    end;
  end;

  if (tipo = 30) then
  begin
    Case dia of
      22 : mensagemInicial := 'A Licença de uso expirará em 8 dias.';
      23 : mensagemInicial := 'A Licença de uso expirará em 7 dias.';
      24 : mensagemInicial := 'A Licença de uso expirará em 6 dias.';
      25 : mensagemInicial := 'A Licença de uso expirará em 5 dias.';
      26 : mensagemInicial := 'A Licença de uso expirará em 4 dias.';
      27 : mensagemInicial := 'A Licença de uso expirará em 3 dias.';
      28 : mensagemInicial := 'A Licença de uso expirará em 2 dias.';
      29 : mensagemInicial := 'A Licença de uso expirará em 1 dias.';
      30 : mensagemInicial := 'A Licença de uso expira hoje.';
      31 : begin
             mensagemInicial := 'A Licença de uso expirada.';
             sistemaLiberado := 'N';
           end;
      else mensagemInicial := 'N';
    end;
  end;


end;

procedure TDM.conexaoXmlRpc;
{
var
  RpcCaller: TRpcCaller;
  RpcResult: IRpcResult;
  RpcFunction: IRpcFunction;
  RpcArray: IRpcArray;
  RpcStruct: IRpcStruct;
  I: Integer;
begin

  RpcCaller := TRpcCaller.Create;
  try
    RpcCaller.HostName := Trim('www.atsti.com.br');
    RpcCaller.HostPort := StrToInt(Trim('80'));
    RpcCaller.EndPoint := Trim('/xmlrpc.php');

    RpcFunction := TRpcFunction.Create;
    RpcFunction.ObjectMethod := 'wp.getPost';

    RpcFunction.AddItem(2470);  // Numero do Post

    RpcFunction.AddItem('admin');

    RpcFunction.AddItem('a2t00s7');

    RpcResult := RpcCaller.Execute(RpcFunction);

    if RpcResult.IsError then
    begin
    //  ShowMessageFmt('Error: (%d) %s', [RpcResult.ErrorCode,   acertear com o novo
    //      RpcResult.ErrorMsg]);
    //  Exit;
    end;

    //if (RpcResult.IsString) then
    //  memHelp.Text := RpcResult.AsString;

    if (RpcResult.IsStruct) then
    begin
      RpcStruct := RpcResult.AsStruct;
      memoLic := RpcStruct.Items[2].AsString;
    end;

    if RpcResult.IsArray then
    begin
      RpcArray := RpcResult.AsArray;
      //for I := 0 to RpcArray.Count - 1 do
      //  lbMethod.Items.Add(RpcArray[I].AsString);
    end;
  finally
    RpcCaller.Free;
  end;
}
var

  RpcResult: IRpcResult;
  busca,busca2 : String;
  ///lista : TStringList;
  I : Integer;
  r: IXmlNode;
  node, no: IXMLNode;
  meuArray, arr2, fields : TRpcArray;
  dif : integer;
  data1,data2 : TDateTime;
  libera : string;
begin
  FRpcFunction := TRpcFunction.Create;
  FRpcCaller := TRpcCaller.Create;

  FRpcCaller.HostName := 'ats.atsti.com.br';
  FRpcCaller.HostPort := 49069;
  FRpcCaller.EndPoint := '/xmlrpc/2/object';

  meuArray := TRpcArray.Create;
  Arr2 := TRpcArray.Create;
  fields := TRpcArray.Create;
  meuArray.AddItem('cnpj_cpf');
  meuArray.AddItem('=');
  meuArray.AddItem(empresa);
  Arr2.AddItem(meuArray);
  fields.AddItem('ref');

  FRpcFunction.Clear;
  FRpcFunction.ObjectMethod := 'execute';
  FRpcFunction.AddItem('ats_atsti_com_br');
  FRpcFunction.AddItem('1');
  FRpcFunction.AddItem('a2t00s7');
  FRpcFunction.AddItem('res.partner');
  FRpcFunction.AddItem('search_read');
  FRpcFunction.AddItem(Arr2);
  FRpcFunction.AddItem(fields);

  try
    RpcResult := FRpcCaller.Execute(FRpcFunction);
    if RpcResult.IsError then
      msg_cnx := Format('Error: (%d) %s',
          [RpcResult.ErrorCode, RpcResult.ErrorMsg])
    else
      if RpcResult.IsArray then
         busca := '<?xml version="1.0" encoding="ISo-8859-1"?>' + RpcResult.AsArray.GetAsXML;
         XMLDocument1.XML.Text := busca;
         XMLDocument1.Active := True;

         r := XMLDocument1.DocumentElement.ChildNodes.FindNode('array');
         no := r.ChildNodes.FindNode('data');
         no := no.ChildNodes.FindNode('value');
     		 no := no.ChildNodes.FindNode('struct');

         for I := 0 to no.ChildNodes.Count -1 do
         begin
            node := no.ChildNodes[I];
            //msg_cnx := node.ChildNodes['name'].Text;
            if node.ChildNodes['name'].text = 'id' then
            begin
              node := node.ChildNodes.FindNode('value');
              if node <> nil then
              begin
                Msg_cnx := node.ChildNodes['int'].Text;
              end;
            end
            else
            begin
              node := node.ChildNodes.FindNode('value');
              if node <> nil then
              begin
                memoLic := node.ChildNodes['string'].Text;
              end;
            end;
         end;
  except
    on E: Exception do
      Msg_cnx := StringReplace(E.Message, #13#10, ': ', [rfReplaceAll]);
  end;

 {
              // Com Internet
  if(dm.msg_cnx <> 'Socket Error # 11004: ') then
  begin
    DM.SQLObitos.ExecuteDirect('UPDATE PARAMETROS SET PARAMETRO3 = ' +
    QuotedStr(FormatDateTime('dd/mm/yyyy', today))  +
    ' , PARAMETRO1 = ' + QuotedStr('') +
    ' , PARAMETRO2 = ' + QuotedStr('BOLETO') +
    ' , PARAMETRO4 = ' + QuotedStr(dm.memoLic) +
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
  end;

               // Sem Internet
  if(dm.msg_cnx = 'Socket Error # 11004: ') then
  begin
    DM.SQLObitos.ExecuteDirect('UPDATE PARAMETROS SET PARAMETRO1 = ' +
    QuotedStr(FormatDateTime('dd/mm/yyyy', today))  +
    ' , PARAMETRO2 = ' + QuotedStr('BOLETO') +
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
  end;


  if (not dm.proc_lic.Active) then
    dm.proc_lic.Open;
  if(dm.proc_licPARAMETRO1.AsString <> '')then
  data1 := StrToDate(dm.proc_licPARAMETRO1.AsString);
  data2 := StrToDate(dm.proc_licPARAMETRO3.AsString);
  dm.proc_lic.Close;

  dif := DaysBetween(data1,data2);

 }
  {
  if( dif > 2) then
  begin
    MessageDlg('conecta na net ', mtInformation, [mbOK], 0);
  end;
  }
   // pegar o valor 20 que ta gravado
 {
  libera := DateToStr(data1);

  //if((memoLic = '') and (libera <> '30/12/1899'))then
  if((memoLic = '') and (dif > 2))then
  begin
    if (not dm.proc_lic.Active) then
      dm.proc_lic.Open;
    memoLic := dm.proc_licPARAMETRO4.AsString;
    dm.proc_lic.Close;
  end;
  }
end;

procedure TDM.LicencaUso;
var
  s, localizar, achei, valor: String;
  i1, i2: Integer;
begin
  achei := '0';
  i2 := -1;
  conexaoXmlRpc;
  s := memoLic;
  ///i1 := Pos(LowerCase(dm.empresa), LowerCase(s));
  ///if (i1 > 0) then
  if s <> '' then
  begin
    ///achei := Copy(s, i1, 17);
    achei := dm.empresa + '-' + s;
    valor := MD5Print(MD5String(achei));
    DM.SQLObitos.ExecuteDirect('UPDATE EMPRESA SET DEMONSTRATIVO = ' +
      QuotedStr(valor)) ; //+ ' WHERE TIPOIMPRESSAOCARNE = 0');
  end
  else begin
    valor := MD5Print(MD5String(Dm.empresa + '-00'));
    if (Dm.mensagemInicial <> valor) then
    begin
      Dm.SQLObitos.ExecuteDirect('UPDATE EMPRESA SET DEMONSTRATIVO = ' +
      QuotedStr(valor)) ; //+ ' WHERE TIPOIMPRESSAOCARNE = 0');
      Dm.mensagemInicial := valor;
    end;
  end

end;

end.
