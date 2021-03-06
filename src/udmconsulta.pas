unit udmconsulta;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  Tdmconsulta = class(TDataModule)
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    sdsFaixa: TSQLDataSet;
    dspFaixa: TDataSetProvider;
    procFaixa: TClientDataSet;
    procFaixaID_VALORES: TIntegerField;
    procFaixaVALOR: TFloatField;
    procFaixaDATA: TDateField;
    procFaixaTX_FUNERARIA: TFloatField;
    procFaixaTX_ADMINISTRATIVA: TFloatField;
    procFaixaFAIXA: TIntegerField;
    sdsVend: TSQLDataSet;
    procVendedor: TClientDataSet;
    procVendedorID_VEN: TIntegerField;
    procVendedorVENDEDOR: TStringField;
    sdsCob: TSQLDataSet;
    dspCob: TDataSetProvider;
    procCobrador: TClientDataSet;
    procCobradorID_COB: TIntegerField;
    procCobradorNOME: TStringField;
    sdsVendID_VEN: TIntegerField;
    sdsVendVENDEDOR: TStringField;
    sdsFaixaID_VALORES: TIntegerField;
    sdsFaixaVALOR: TFloatField;
    sdsFaixaDATA: TDateField;
    sdsFaixaTX_FUNERARIA: TFloatField;
    sdsFaixaTX_ADMINISTRATIVA: TFloatField;
    sdsFaixaFAIXA: TIntegerField;
    sdsCobID_COB: TIntegerField;
    sdsCobNOME: TStringField;
    cds_est_civil: TClientDataSet;
    cds_est_civilID_ESTCIVIL: TIntegerField;
    cds_est_civilDESCRICAO: TStringField;
    dspEstCivil: TDataSetProvider;
    sdsEstCivil: TSQLDataSet;
    sdsEstCivilID_ESTCIVIL: TIntegerField;
    sdsEstCivilDESCRICAO: TStringField;
    total: TSQLDataSet;
    totalTITULOS: TFloatField;
    ds_total: TDataSource;
    pendente: TSQLDataSet;
    pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    pago: TSQLDataSet;
    pagoPAGO: TFloatField;
    ds_pago: TDataSource;
    dspVend: TDataSetProvider;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    dsp_munic: TDataSetProvider;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    dsp_bairro: TDataSetProvider;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    cds_parentesco: TClientDataSet;
    cds_parentescoID_PAR: TIntegerField;
    cds_parentescoDESCRICAO: TStringField;
    dsp_Par: TDataSetProvider;
    sds_Par: TSQLDataSet;
    sds_ParID_PAR: TIntegerField;
    sds_ParDESCRICAO: TStringField;
    cds_par: TSQLDataSet;
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
    cds_banco: TSQLDataSet;
    cds_bancoID_BANCO: TIntegerField;
    cds_bancoCONTA: TStringField;
    cds_bancoBANCO: TStringField;
    cds_bancoCIDADE: TStringField;
    cds_bancoSALDO: TFloatField;
    cds_bancoAGENCIA: TStringField;
    cds_bancoDIGAGEN: TStringField;
    cds_bancoCOD_CED: TStringField;
    cds_bancoID_TITULO: TIntegerField;
    cds_bancoCARTEIRA: TStringField;
    cds_bancoN_DOC: TIntegerField;
    cds_bancoJUROS: TFloatField;
    cds_bancoVENCIMENTO: TStringField;
    cds_bancoVENCIMENTO1: TStringField;
    cds_bancoVENCIMENTO2: TStringField;
    cds_bancoLOCAL_PGTO: TStringField;
    cds_bancoVENCIMENTO3: TStringField;
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
    dsp_dep: TDataSetProvider;
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
    outros: TSQLDataSet;
    FloatField1: TFloatField;
    dsoutros: TDataSource;
    acordo: TSQLDataSet;
    acordoACORDO: TFloatField;
    ds_acordo: TDataSource;
    sds_depRG: TStringField;
    sds_depCPF: TStringField;
    sds_depSEGSOCIO: TStringField;
    sds_depTELEFONE: TStringField;
    sds_depVALOR_DEP: TStringField;
    sds_depCOBRA_DEP: TStringField;
    cds_depRG: TStringField;
    cds_depCPF: TStringField;
    cds_depSEGSOCIO: TStringField;
    cds_depTELEFONE: TStringField;
    cds_depVALOR_DEP: TStringField;
    cds_depCOBRA_DEP: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmconsulta: Tdmconsulta;

implementation

uses UDM;

{$R *.dfm}

end.
