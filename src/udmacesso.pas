unit udmAcesso;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TdmAcesso = class(TDataModule)
    dtsEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    sdsEmpresa: TSQLDataSet;
    cdsEmpresaCODUSUARIO: TIntegerField;
    cdsEmpresaPROCURAR: TStringField;
    cdsEmpresaINCLUIR: TStringField;
    cdsEmpresaEXCLUIR: TStringField;
    cdsEmpresaCANCELAR: TStringField;
    sdsEmpresaCODUSUARIO: TIntegerField;
    sdsEmpresaPROCURAR: TStringField;
    sdsEmpresaINCLUIR: TStringField;
    sdsEmpresaEXCLUIR: TStringField;
    sdsEmpresaCANCELAR: TStringField;
    dtsFun: TDataSetProvider;
    cdsFun: TClientDataSet;
    sdsFun: TSQLDataSet;
    cdsFunCODUSUARIO: TIntegerField;
    cdsFunPROCURAR: TStringField;
    cdsFunINCLUIR: TStringField;
    cdsFunEXCLUIR: TStringField;
    cdsFunCANCELAR: TStringField;
    sdsFunCODUSUARIO: TIntegerField;
    sdsFunPROCURAR: TStringField;
    sdsFunINCLUIR: TStringField;
    sdsFunEXCLUIR: TStringField;
    sdsFunCANCELAR: TStringField;
    sdsFunALTERAR: TStringField;
    cdsFunALTERAR: TStringField;
    sdsEmpresaALTERAR: TStringField;
    cdsEmpresaALTERAR: TStringField;
    dtsInquilino: TDataSetProvider;
    cdsInquilino: TClientDataSet;
    sdsInquilino: TSQLDataSet;
    cdsInquilinoCODUSUARIO: TIntegerField;
    cdsInquilinoPROCURAR: TStringField;
    cdsInquilinoINCLUIR: TStringField;
    cdsInquilinoEXCLUIR: TStringField;
    cdsInquilinoCANCELAR: TStringField;
    cdsInquilinoALTERAR: TStringField;
    sdsInquilinoCODUSUARIO: TIntegerField;
    sdsInquilinoPROCURAR: TStringField;
    sdsInquilinoINCLUIR: TStringField;
    sdsInquilinoEXCLUIR: TStringField;
    sdsInquilinoCANCELAR: TStringField;
    sdsInquilinoALTERAR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcesso: TdmAcesso;

implementation

uses UDM;

{$R *.dfm}

end.
