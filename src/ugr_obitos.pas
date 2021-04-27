unit uGr_obitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, TeEngine, Series,
  StdCtrls, Mask, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TfGr_obitos = class(TForm)
    DBChart1: TDBChart;
    MaskEdit1: TMaskEdit;
    Series1: TPieSeries;
    sds_Obitos: TSQLDataSet;
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
    sds_ObitosLOCAL_FAL: TStringField;
    sds_ObitosDATA_FAL: TDateField;
    sds_ObitosHORA_FAL: TTimeField;
    sds_ObitosMEDICO_1: TStringField;
    sds_ObitosMEDICO_2: TStringField;
    sds_ObitosCRM_1: TStringField;
    sds_ObitosCRM_2: TStringField;
    sds_ObitosCAUSA_MORTE: TStringField;
    sds_ObitosOBS: TStringField;
    sds_ObitosNUPCIAS: TStringField;
    sds_ObitosDATA_CASAMENTO: TDateField;
    sds_ObitosCONJUGE: TStringField;
    sds_ObitosLIVRO: TStringField;
    sds_ObitosFOLHAS: TStringField;
    sds_ObitosNUM: TStringField;
    sds_ObitosDOC_APRESENTADO: TStringField;
    sds_ObitosREGISTRO: TStringField;
    sds_ObitosDECLARANTE: TStringField;
    sds_ObitosRG_CPF: TStringField;
    sds_ObitosPROFISSAO_DECL: TStringField;
    sds_ObitosGRAU_PARENTESCO: TStringField;
    sds_ObitosFONE_DECL: TStringField;
    sds_ObitosENDERECO_DECL: TStringField;
    sds_ObitosCOD_FUNCIONARIO: TIntegerField;
    sds_ObitosTIPO: TStringField;
    sds_ObitosTIPO_DOC: TStringField;
    sds_ObitosSITUACAO: TStringField;
    sds_ObitosOBS_GERAIS: TBlobField;
    sds_ObitosPRAZO_PG: TIntegerField;
    sds_ObitosVENCIMENTO: TDateField;
    sds_ObitosVALOR_SERVICO: TFloatField;
    sds_ObitosPARCELA: TFloatField;
    sds_ObitosENTRADA: TFloatField;
    sds_ObitosTIPO_OBITO: TStringField;
    sds_ObitosTIPO_URNA: TStringField;
    sds_ObitosSERIE: TStringField;
    sds_ObitosNOTAFISCAL: TSmallintField;
    sds_ObitosN_FICHA: TStringField;
    sds_ObitosID_GRUPO: TIntegerField;
    sds_ObitosGRUPO: TStringField;
    sds_ObitosINSCRICAO: TIntegerField;
    sds_ObitosCODIGO: TIntegerField;
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
    cds_ObitosLOCAL_FAL: TStringField;
    cds_ObitosDATA_FAL: TDateField;
    cds_ObitosHORA_FAL: TTimeField;
    cds_ObitosMEDICO_1: TStringField;
    cds_ObitosMEDICO_2: TStringField;
    cds_ObitosCRM_1: TStringField;
    cds_ObitosCRM_2: TStringField;
    cds_ObitosCAUSA_MORTE: TStringField;
    cds_ObitosOBS: TStringField;
    cds_ObitosNUPCIAS: TStringField;
    cds_ObitosDATA_CASAMENTO: TDateField;
    cds_ObitosCONJUGE: TStringField;
    cds_ObitosLIVRO: TStringField;
    cds_ObitosFOLHAS: TStringField;
    cds_ObitosNUM: TStringField;
    cds_ObitosDOC_APRESENTADO: TStringField;
    cds_ObitosREGISTRO: TStringField;
    cds_ObitosDECLARANTE: TStringField;
    cds_ObitosRG_CPF: TStringField;
    cds_ObitosPROFISSAO_DECL: TStringField;
    cds_ObitosGRAU_PARENTESCO: TStringField;
    cds_ObitosFONE_DECL: TStringField;
    cds_ObitosENDERECO_DECL: TStringField;
    cds_ObitosCOD_FUNCIONARIO: TIntegerField;
    cds_ObitosTIPO: TStringField;
    cds_ObitosTIPO_DOC: TStringField;
    cds_ObitosSITUACAO: TStringField;
    cds_ObitosOBS_GERAIS: TBlobField;
    cds_ObitosPRAZO_PG: TIntegerField;
    cds_ObitosVENCIMENTO: TDateField;
    cds_ObitosVALOR_SERVICO: TFloatField;
    cds_ObitosPARCELA: TFloatField;
    cds_ObitosENTRADA: TFloatField;
    cds_ObitosTIPO_OBITO: TStringField;
    cds_ObitosTIPO_URNA: TStringField;
    cds_ObitosSERIE: TStringField;
    cds_ObitosNOTAFISCAL: TSmallintField;
    cds_ObitosN_FICHA: TStringField;
    cds_ObitosID_GRUPO: TIntegerField;
    cds_ObitosGRUPO: TStringField;
    cds_ObitosINSCRICAO: TIntegerField;
    cds_ObitosCODIGO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGr_obitos: TfGr_obitos;

implementation

uses UDM;

{$R *.dfm}

end.
