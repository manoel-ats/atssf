unit udm_sge;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TDM_SGE = class(TDataModule)
    sge: TSQLConnection;
    sql_recebimento: TSQLDataSet;
    dsp_recebimento: TDataSetProvider;
    cds_recebimento: TClientDataSet;
    cds_recebimentoCODRECEBIMENTO: TIntegerField;
    cds_recebimentoTITULO: TStringField;
    cds_recebimentoEMISSAO: TDateField;
    cds_recebimentoCODCLIENTE: TIntegerField;
    cds_recebimentoDATAVENCIMENTO: TDateField;
    cds_recebimentoDATARECEBIMENTO: TDateField;
    cds_recebimentoCAIXA: TSmallintField;
    cds_recebimentoCONTADEBITO: TIntegerField;
    cds_recebimentoCONTACREDITO: TIntegerField;
    cds_recebimentoSTATUS: TStringField;
    cds_recebimentoVIA: TStringField;
    cds_recebimentoFORMARECEBIMENTO: TStringField;
    cds_recebimentoDATABAIXA: TDateField;
    cds_recebimentoHISTORICO: TStringField;
    cds_recebimentoCODVENDA: TIntegerField;
    cds_recebimentoCODALMOXARIFADO: TSmallintField;
    cds_recebimentoCODVENDEDOR: TSmallintField;
    cds_recebimentoCODUSUARIO: TSmallintField;
    cds_recebimentoN_DOCUMENTO: TStringField;
    cds_recebimentoDATASISTEMA: TSQLTimeStampField;
    cds_recebimentoVALORRECEBIDO: TFloatField;
    cds_recebimentoJUROS: TFloatField;
    cds_recebimentoDESCONTO: TFloatField;
    cds_recebimentoPERDA: TFloatField;
    cds_recebimentoTROCA: TFloatField;
    cds_recebimentoFUNRURAL: TFloatField;
    cds_recebimentoVALOR_PRIM_VIA: TFloatField;
    cds_recebimentoVALOR_RESTO: TFloatField;
    cds_recebimentoVALORTITULO: TFloatField;
    cds_recebimentoOUTRO_CREDITO: TFloatField;
    cds_recebimentoOUTRO_DEBITO: TFloatField;
    cds_recebimentoPARCELAS: TIntegerField;
    cds_recebimentoDUP_REC_NF: TStringField;
    cds_recebimentoNF: TIntegerField;
    cds_recebimentoDP: TIntegerField;
    cds_recebimentoBL: TIntegerField;
    sql_recebimentoCODRECEBIMENTO: TIntegerField;
    sql_recebimentoTITULO: TStringField;
    sql_recebimentoEMISSAO: TDateField;
    sql_recebimentoCODCLIENTE: TIntegerField;
    sql_recebimentoDATAVENCIMENTO: TDateField;
    sql_recebimentoDATARECEBIMENTO: TDateField;
    sql_recebimentoCAIXA: TSmallintField;
    sql_recebimentoCONTADEBITO: TIntegerField;
    sql_recebimentoCONTACREDITO: TIntegerField;
    sql_recebimentoSTATUS: TStringField;
    sql_recebimentoVIA: TStringField;
    sql_recebimentoFORMARECEBIMENTO: TStringField;
    sql_recebimentoDATABAIXA: TDateField;
    sql_recebimentoHISTORICO: TStringField;
    sql_recebimentoCODVENDA: TIntegerField;
    sql_recebimentoCODALMOXARIFADO: TSmallintField;
    sql_recebimentoCODVENDEDOR: TSmallintField;
    sql_recebimentoCODUSUARIO: TSmallintField;
    sql_recebimentoN_DOCUMENTO: TStringField;
    sql_recebimentoDATASISTEMA: TSQLTimeStampField;
    sql_recebimentoVALORRECEBIDO: TFloatField;
    sql_recebimentoJUROS: TFloatField;
    sql_recebimentoDESCONTO: TFloatField;
    sql_recebimentoPERDA: TFloatField;
    sql_recebimentoTROCA: TFloatField;
    sql_recebimentoFUNRURAL: TFloatField;
    sql_recebimentoVALOR_PRIM_VIA: TFloatField;
    sql_recebimentoVALOR_RESTO: TFloatField;
    sql_recebimentoVALORTITULO: TFloatField;
    sql_recebimentoOUTRO_CREDITO: TFloatField;
    sql_recebimentoOUTRO_DEBITO: TFloatField;
    sql_recebimentoPARCELAS: TIntegerField;
    sql_recebimentoDUP_REC_NF: TStringField;
    sql_recebimentoNF: TIntegerField;
    sql_recebimentoDP: TIntegerField;
    sql_recebimentoBL: TIntegerField;
    sql_cliente: TSQLDataSet;
    dsp_cliente: TDataSetProvider;
    cds_cliente: TClientDataSet;
    cds_clienteCODCLIENTE: TIntegerField;
    cds_clienteNOMECLIENTE: TStringField;
    cds_clienteRAZAOSOCIAL: TStringField;
    cds_clienteCONTATO: TStringField;
    cds_clienteTIPOFIRMA: TSmallintField;
    cds_clienteCPF: TStringField;
    cds_clienteCNPJ: TStringField;
    cds_clienteINSCESTADUAL: TStringField;
    cds_clienteRG: TStringField;
    cds_clienteSEGMENTO: TSmallintField;
    cds_clienteREGIAO: TSmallintField;
    cds_clienteLIMITECREDITO: TFloatField;
    cds_clienteDATACADASTRO: TDateField;
    cds_clienteCODUSUARIO: TIntegerField;
    cds_clienteSTATUS: TSmallintField;
    cds_clienteHOMEPAGE: TStringField;
    cds_clientePRAZORECEBIMENTO: TSmallintField;
    cds_clientePRAZOENTREGA: TSmallintField;
    cds_clienteCODBANCO: TSmallintField;
    cds_clienteBASE_ICMS: TSmallintField;
    cds_clienteDATANASC: TDateField;
    cds_clienteCONTA_CLIENTE: TStringField;
    cds_clienteOBS: TStringField;
    cds_clienteTEM_IE: TStringField;
    sql_clienteNOMECLIENTE: TStringField;
    sql_clienteRAZAOSOCIAL: TStringField;
    sql_clienteCONTATO: TStringField;
    sql_clienteTIPOFIRMA: TSmallintField;
    sql_clienteCPF: TStringField;
    sql_clienteCNPJ: TStringField;
    sql_clienteINSCESTADUAL: TStringField;
    sql_clienteRG: TStringField;
    sql_clienteSEGMENTO: TSmallintField;
    sql_clienteREGIAO: TSmallintField;
    sql_clienteLIMITECREDITO: TFloatField;
    sql_clienteDATACADASTRO: TDateField;
    sql_clienteCODUSUARIO: TIntegerField;
    sql_clienteSTATUS: TSmallintField;
    sql_clienteHOMEPAGE: TStringField;
    sql_clientePRAZORECEBIMENTO: TSmallintField;
    sql_clientePRAZOENTREGA: TSmallintField;
    sql_clienteCODBANCO: TSmallintField;
    sql_clienteBASE_ICMS: TSmallintField;
    sql_clienteDATANASC: TDateField;
    sql_clienteCONTA_CLIENTE: TStringField;
    sql_clienteOBS: TStringField;
    sql_clienteTEM_IE: TStringField;
    sql_clienteGRUPO: TStringField;
    sql_clienteID_SOCIO: TIntegerField;
    sql_clienteINSCRICAO: TIntegerField;
    sql_clientePLANO: TStringField;
    sql_clienteCARENCIA: TIntegerField;
    cds_clienteGRUPO: TStringField;
    cds_clienteID_SOCIO: TIntegerField;
    cds_clienteINSCRICAO: TIntegerField;
    cds_clientePLANO: TStringField;
    cds_clienteCARENCIA: TIntegerField;
    dsp_end: TDataSetProvider;
    cds_end: TClientDataSet;
    sql_end: TSQLDataSet;
    sql_for: TSQLDataSet;
    dsp_for: TDataSetProvider;
    cds_for: TClientDataSet;
    sql_endFor: TSQLDataSet;
    dsp_endfor: TDataSetProvider;
    cds_endfor: TClientDataSet;
    cds_endCODCLIENTE: TIntegerField;
    cds_endLOGRADOURO: TStringField;
    cds_endBAIRRO: TStringField;
    cds_endCOMPLEMENTO: TStringField;
    cds_endCIDADE: TStringField;
    cds_endUF: TStringField;
    cds_endCEP: TStringField;
    cds_endTELEFONE: TStringField;
    cds_endTELEFONE1: TStringField;
    cds_endTELEFONE2: TStringField;
    cds_endFAX: TStringField;
    cds_endE_MAIL: TStringField;
    cds_endRAMAL: TStringField;
    cds_endTIPOEND: TSmallintField;
    cds_endDADOSADICIONAIS: TStringField;
    cds_endDDD: TStringField;
    sql_endCODCLIENTE: TIntegerField;
    sql_endLOGRADOURO: TStringField;
    sql_endBAIRRO: TStringField;
    sql_endCOMPLEMENTO: TStringField;
    sql_endCIDADE: TStringField;
    sql_endUF: TStringField;
    sql_endCEP: TStringField;
    sql_endTELEFONE: TStringField;
    sql_endTELEFONE1: TStringField;
    sql_endTELEFONE2: TStringField;
    sql_endFAX: TStringField;
    sql_endE_MAIL: TStringField;
    sql_endRAMAL: TStringField;
    sql_endTIPOEND: TSmallintField;
    sql_endDADOSADICIONAIS: TStringField;
    sql_endDDD: TStringField;
    cds_forCODFORNECEDOR: TIntegerField;
    cds_forNOMEFORNECEDOR: TStringField;
    cds_forRAZAOSOCIAL: TStringField;
    cds_forCONTATO: TStringField;
    cds_forTIPOFIRMA: TSmallintField;
    cds_forCPF: TStringField;
    cds_forCNPJ: TStringField;
    cds_forINSCESTADUAL: TStringField;
    cds_forRG: TStringField;
    cds_forSEGMENTO: TSmallintField;
    cds_forREGIAO: TSmallintField;
    cds_forLIMITECREDITO: TFloatField;
    cds_forDATACADASTRO: TDateField;
    cds_forCODUSUARIO: TIntegerField;
    cds_forSTATUS: TSmallintField;
    cds_forHOMEPAGE: TStringField;
    cds_forPRAZOPAGAMENTO: TSmallintField;
    cds_forPRAZOENTREGA: TSmallintField;
    cds_forCONTA_FORNECEDOR: TStringField;
    sql_forNOMEFORNECEDOR: TStringField;
    sql_forRAZAOSOCIAL: TStringField;
    sql_forCONTATO: TStringField;
    sql_forTIPOFIRMA: TSmallintField;
    sql_forCPF: TStringField;
    sql_forCNPJ: TStringField;
    sql_forINSCESTADUAL: TStringField;
    sql_forRG: TStringField;
    sql_forSEGMENTO: TSmallintField;
    sql_forREGIAO: TSmallintField;
    sql_forLIMITECREDITO: TFloatField;
    sql_forDATACADASTRO: TDateField;
    sql_forCODUSUARIO: TIntegerField;
    sql_forSTATUS: TSmallintField;
    sql_forHOMEPAGE: TStringField;
    sql_forPRAZOPAGAMENTO: TSmallintField;
    sql_forPRAZOENTREGA: TSmallintField;
    sql_forCONTA_FORNECEDOR: TStringField;
    cds_endforCODENDERECO: TIntegerField;
    cds_endforCODFORNECEDOR: TIntegerField;
    cds_endforLOGRADOURO: TStringField;
    cds_endforBAIRRO: TStringField;
    cds_endforCOMPLEMENTO: TStringField;
    cds_endforCIDADE: TStringField;
    cds_endforUF: TStringField;
    cds_endforCEP: TStringField;
    cds_endforDDD: TSmallintField;
    cds_endforTELEFONE: TStringField;
    cds_endforTELEFONE1: TStringField;
    cds_endforTELEFONE2: TStringField;
    cds_endforFAX: TStringField;
    cds_endforE_MAIL: TStringField;
    cds_endforRAMAL: TStringField;
    cds_endforTIPOEND: TSmallintField;
    cds_endforDADOSADICIONAIS: TStringField;
    sql_endForCODENDERECO: TIntegerField;
    sql_endForCODFORNECEDOR: TIntegerField;
    sql_endForLOGRADOURO: TStringField;
    sql_endForBAIRRO: TStringField;
    sql_endForCOMPLEMENTO: TStringField;
    sql_endForCIDADE: TStringField;
    sql_endForUF: TStringField;
    sql_endForCEP: TStringField;
    sql_endForDDD: TSmallintField;
    sql_endForTELEFONE: TStringField;
    sql_endForTELEFONE1: TStringField;
    sql_endForTELEFONE2: TStringField;
    sql_endForFAX: TStringField;
    sql_endForE_MAIL: TStringField;
    sql_endForRAMAL: TStringField;
    sql_endForTIPOEND: TSmallintField;
    sql_endForDADOSADICIONAIS: TStringField;
    sql_prod: TSQLDataSet;
    dsp_prod: TDataSetProvider;
    cds_prod: TClientDataSet;
    cds_prodCODPRODUTO: TIntegerField;
    cds_prodFAMILIA: TStringField;
    cds_prodCATEGORIA: TStringField;
    cds_prodMARCA: TStringField;
    cds_prodUNIDADEMEDIDA: TStringField;
    cds_prodDATAULTIMACOMPRA: TDateField;
    cds_prodESTOQUEMAXIMO: TFloatField;
    cds_prodESTOQUEATUAL: TFloatField;
    cds_prodESTOQUEREPOSICAO: TFloatField;
    cds_prodESTOQUEMINIMO: TFloatField;
    cds_prodVALORUNITARIOATUAL: TFloatField;
    cds_prodVALORUNITARIOANTERIOR: TFloatField;
    cds_prodICMS: TFloatField;
    cds_prodCODALMOXARIFADO: TIntegerField;
    cds_prodIPI: TFloatField;
    cds_prodCLASSIFIC_FISCAL: TStringField;
    cds_prodCST: TStringField;
    cds_prodBASE_ICMS: TFloatField;
    cds_prodPRODUTO: TStringField;
    cds_prodPRECOMEDIO: TBCDField;
    cds_prodCOD_COMISSAO: TIntegerField;
    cds_prodMARGEM_LUCRO: TFloatField;
    cds_prodCOD_BARRA: TStringField;
    cds_prodVALOR_PRAZO: TFloatField;
    cds_prodTIPO: TStringField;
    cds_prodCONTA_DESPESA: TStringField;
    cds_prodCONTA_RECEITA: TStringField;
    cds_prodCONTA_ESTOQUE: TStringField;
    cds_prodRATEIO: TStringField;
    cds_prodCODPRO: TStringField;
    cds_prodQTDE_PCT: TFloatField;
    cds_prodPESO_QTDE: TFloatField;
    cds_prodDATACADASTRO: TSQLTimeStampField;
    cds_prodMARGEM: TFloatField;
    cds_prodPRO_COD: TStringField;
    cds_prodDATAGRAV: TDateField;
    cds_prodCODFORN: TStringField;
    cds_prodFOTOPRODUTO: TStringField;
    cds_prodUSA: TStringField;
    cds_prodLOTES: TStringField;
    cds_prodLOCALIZACAO: TStringField;
    sql_prodCODPRODUTO: TIntegerField;
    sql_prodFAMILIA: TStringField;
    sql_prodCATEGORIA: TStringField;
    sql_prodMARCA: TStringField;
    sql_prodUNIDADEMEDIDA: TStringField;
    sql_prodDATAULTIMACOMPRA: TDateField;
    sql_prodESTOQUEMAXIMO: TFloatField;
    sql_prodESTOQUEATUAL: TFloatField;
    sql_prodESTOQUEREPOSICAO: TFloatField;
    sql_prodESTOQUEMINIMO: TFloatField;
    sql_prodVALORUNITARIOATUAL: TFloatField;
    sql_prodVALORUNITARIOANTERIOR: TFloatField;
    sql_prodICMS: TFloatField;
    sql_prodCODALMOXARIFADO: TIntegerField;
    sql_prodIPI: TFloatField;
    sql_prodCLASSIFIC_FISCAL: TStringField;
    sql_prodCST: TStringField;
    sql_prodBASE_ICMS: TFloatField;
    sql_prodPRODUTO: TStringField;
    sql_prodPRECOMEDIO: TBCDField;
    sql_prodCOD_COMISSAO: TIntegerField;
    sql_prodMARGEM_LUCRO: TFloatField;
    sql_prodCOD_BARRA: TStringField;
    sql_prodVALOR_PRAZO: TFloatField;
    sql_prodTIPO: TStringField;
    sql_prodCONTA_DESPESA: TStringField;
    sql_prodCONTA_RECEITA: TStringField;
    sql_prodCONTA_ESTOQUE: TStringField;
    sql_prodRATEIO: TStringField;
    sql_prodCODPRO: TStringField;
    sql_prodQTDE_PCT: TFloatField;
    sql_prodPESO_QTDE: TFloatField;
    sql_prodDATACADASTRO: TSQLTimeStampField;
    sql_prodMARGEM: TFloatField;
    sql_prodPRO_COD: TStringField;
    sql_prodDATAGRAV: TDateField;
    sql_prodCODFORN: TStringField;
    sql_prodFOTOPRODUTO: TStringField;
    sql_prodUSA: TStringField;
    sql_prodLOTES: TStringField;
    sql_prodLOCALIZACAO: TStringField;
    sql_fun: TSQLDataSet;
    dsp_fun: TDataSetProvider;
    cds_fun: TClientDataSet;
    cds_cob: TClientDataSet;
    dsp_cob: TDataSetProvider;
    sql_cob: TSQLDataSet;
    cds_funSEXO: TStringField;
    cds_funESTADO_CIVIL: TStringField;
    cds_funDATA_NASC: TDateField;
    cds_funRUA: TStringField;
    cds_funN: TStringField;
    cds_funCOMPLEMENTO: TStringField;
    cds_funBAIRRO: TStringField;
    cds_funCIDADE: TStringField;
    cds_funUF: TStringField;
    cds_funCEP: TStringField;
    cds_funRG: TStringField;
    cds_funTELEFONE: TStringField;
    cds_funCELULAR: TStringField;
    cds_funRECEBE_COMISSAO: TStringField;
    cds_funVALOR_COMISSAO: TFloatField;
    cds_funESPOSA: TStringField;
    cds_funPAI: TStringField;
    cds_funMAE: TStringField;
    cds_funNOME_FUNCIONARIO: TStringField;
    cds_funFUNCAO_CARGO: TStringField;
    cds_funDATA_ADMISSAO: TDateField;
    cds_funDATA_DESLIGAMENTO: TDateField;
    cds_funREGIAO_VENDA: TStringField;
    cds_funCPF: TStringField;
    cds_funDDD: TStringField;
    cds_funCODUSUARIO: TIntegerField;
    sql_funSEXO: TStringField;
    sql_funESTADO_CIVIL: TStringField;
    sql_funDATA_NASC: TDateField;
    sql_funRUA: TStringField;
    sql_funN: TStringField;
    sql_funCOMPLEMENTO: TStringField;
    sql_funBAIRRO: TStringField;
    sql_funCIDADE: TStringField;
    sql_funUF: TStringField;
    sql_funCEP: TStringField;
    sql_funRG: TStringField;
    sql_funTELEFONE: TStringField;
    sql_funCELULAR: TStringField;
    sql_funRECEBE_COMISSAO: TStringField;
    sql_funVALOR_COMISSAO: TFloatField;
    sql_funESPOSA: TStringField;
    sql_funPAI: TStringField;
    sql_funMAE: TStringField;
    sql_funNOME_FUNCIONARIO: TStringField;
    sql_funFUNCAO_CARGO: TStringField;
    sql_funDATA_ADMISSAO: TDateField;
    sql_funDATA_DESLIGAMENTO: TDateField;
    sql_funREGIAO_VENDA: TStringField;
    sql_funCPF: TStringField;
    sql_funDDD: TStringField;
    sql_funCODUSUARIO: TIntegerField;
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
    sql_cobID_COB: TIntegerField;
    sql_cobNOME: TStringField;
    sql_cobENDERECO: TStringField;
    sql_cobCOMPLEMENTO: TStringField;
    sql_cobBAIRRO: TStringField;
    sql_cobMUNICIPIO: TStringField;
    sql_cobESTADO: TStringField;
    sql_cobCEP: TStringField;
    sql_cobDDD: TStringField;
    sql_cobFONE: TStringField;
    sql_cobFONE1: TStringField;
    sql_cobFAX: TStringField;
    sql_cobCXP: TStringField;
    sql_cobPORC: TFloatField;
    sql_cobPORCOU: TFloatField;
    sql_cobDTADM: TDateField;
    sql_cobDTRESC: TDateField;
    sql_clienteCODCLIENTE: TIntegerField;
    sql_forCODFORNECEDOR: TIntegerField;
    sql_recebimentoGRUPO: TStringField;
    sql_recebimentoLOTE: TIntegerField;
    sql_recebimentoGEROU: TStringField;
    sql_recebimentoINSCRICAO: TIntegerField;
    sql_recebimentoSITUACAO: TStringField;
    sql_recebimentoTIPO_DOC: TStringField;
    sql_recebimentoSELECIONOU: TStringField;
    cds_recebimentoGRUPO: TStringField;
    cds_recebimentoLOTE: TIntegerField;
    cds_recebimentoGEROU: TStringField;
    cds_recebimentoINSCRICAO: TIntegerField;
    cds_recebimentoSITUACAO: TStringField;
    cds_recebimentoTIPO_DOC: TStringField;
    cds_recebimentoSELECIONOU: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_SGE: TDM_SGE;

implementation

{$R *.dfm}

procedure TDM_SGE.DataModuleCreate(Sender: TObject);
begin
  sge.LoadParamsFromIniFile('dbxconnections.ini');

end;

end.
