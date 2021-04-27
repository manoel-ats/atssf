unit uGeraArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, SqlExpr, ImgList, XPMenu, DB, DBLocal,
  DBLocalS, DBClient, StdCtrls, TFlatGaugeUnit, Buttons, Grids, DBGrids,
  gbCobranca, Mask, DBXpress, ExtCtrls, ACBrBoleto,                            //ACBrBoletoFCQuickFr,
  ACBrBase, ACBrUtil, JvExMask, JvToolEdit, JvBaseEdits,
  ACBrBoletoFCFortesFr, MMJPanel,  RLPDFFilter, RLFilters;

type
  TfGeraArquivo = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    FlatGauge1: TFlatGauge;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    sds_CR: TSQLDataSet;
    dsp_CR: TDataSetProvider;
    cds_CR: TClientDataSet;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    scdsCp_proc: TSQLClientDataSet;
    DataSource1: TDataSource;
    XPMenu1: TXPMenu;
    proc_dep: TSQLClientDataSet;
    proc_depID_DEP: TIntegerField;
    proc_depID_SOCIO: TIntegerField;
    proc_depNOME_DEP: TStringField;
    proc_depFALECIDO: TStringField;
    proc_depCODPAR: TFloatField;
    proc_depDTNASC: TDateField;
    proc_depDTFALEC: TDateField;
    proc_depID_PAR: TIntegerField;
    proc_depDESCRICAO: TStringField;
    proc_depGRUPO: TStringField;
    proc_depN_INSCRICAO: TIntegerField;
    proc_depSOBRENOME: TStringField;
    dtsrc_serie: TDataSource;
    ImageList1: TImageList;
    scdsCp_procNOME_SOCIO: TStringField;
    scdsCp_procSELECIONOU: TStringField;
    dsp_bairro: TDataSetProvider;
    cds_bairro: TClientDataSet;
    cds_bairroID_BAIRRO: TIntegerField;
    cds_bairroBAIRRO: TStringField;
    sds_bairro: TSQLDataSet;
    sds_bairroID_BAIRRO: TIntegerField;
    sds_bairroBAIRRO: TStringField;
    DtSrc_bairro: TDataSource;
    DtSrc_munic: TDataSource;
    sds_munic: TSQLDataSet;
    sds_municID_MUNICIPIO: TIntegerField;
    sds_municMUNICIPIO: TStringField;
    cds_munic: TClientDataSet;
    cds_municID_MUNICIPIO: TIntegerField;
    cds_municMUNICIPIO: TStringField;
    dsp_munic: TDataSetProvider;
    remessa: TgbCobranca;
    remes: TgbTitulo;
    scdsCp_procID_SOCIO: TIntegerField;
    scdsCp_procGEROU: TStringField;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    conta_parcelas: TSQLDataSet;
    conta_parcelasCOUNT: TIntegerField;
    scdsCp_procDTA_ULTIMA_PARCELA: TDateField;
    proc_socio: TSQLDataSet;
    proc_socioID_SOCIO: TIntegerField;
    proc_receb: TSQLDataSet;
    proc_recebMAX: TDateField;
    sds: TSQLDataSet;
    sdsNOME_SOCIO: TStringField;
    sdsDTA_ULTIMA_PARCELA: TDateField;
    dts: TDataSetProvider;
    cds: TClientDataSet;
    cdsNOME_SOCIO: TStringField;
    cdsDTA_ULTIMA_PARCELA: TDateField;
    dtsrc_dta: TDataSource;
    BitBtn5: TBitBtn;
    sdsSELECIONOU: TStringField;
    sdsID_SOCIO: TIntegerField;
    sdsGEROU: TStringField;
    cdsSELECIONOU: TStringField;
    cdsID_SOCIO: TIntegerField;
    cdsGEROU: TStringField;
    DBGrid2: TDBGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    sdsSOBRENOME: TStringField;
    sdsNAT: TStringField;
    sdsDTNASC: TDateField;
    sdsPROFISSAO: TStringField;
    sdsCPF_CGC: TStringField;
    sdsRG_IE: TStringField;
    sdsID_VEN: TIntegerField;
    sdsID_COB: TIntegerField;
    sdsN_INSCRICAO: TIntegerField;
    sdsGRUPO: TStringField;
    sdsDTACADASTRO: TDateField;
    sdsDTASISTEMA: TDateField;
    sdsSTATUS: TStringField;
    sdsOBS: TGraphicField;
    sdsTIPO_DOC: TStringField;
    sdsESTCIV: TIntegerField;
    sdsPRAZO_PG: TIntegerField;
    sdsVENCIMENTO: TDateField;
    sdsVALOR_SERVICO: TFloatField;
    sdsPARCELA: TFloatField;
    sdsENTRADA: TFloatField;
    sdsCARENCIA: TIntegerField;
    sdsCODIGO: TIntegerField;
    sdsTIPO_SOCIO: TStringField;
    sdsDIAPGTO: TIntegerField;
    sdsMESES: TIntegerField;
    sdsDATAINICIO: TDateField;
    sdsDATAFIM: TDateField;
    sdsPERCENTUALJUROS: TFloatField;
    sdsPERCENTUALMULTA: TFloatField;
    sdsPERCENTUALDESCONTO: TFloatField;
    sdsVALOROUTROSACRESCIMOS: TFloatField;
    sdsDEMONSTRATIVO: TStringField;
    sdsINSTRUCOESCAIXA: TStringField;
    sdsINSTRUCAO1: TStringField;
    sdsINSTRUCAO2: TStringField;
    sdsINSTRUCAO3: TStringField;
    sdsTIPOIMPRESSAOCARNE: TIntegerField;
    sdsACEITEDOCUMENTO: TStringField;
    sdsESPECIEDOCUMENTO: TStringField;
    sdsCODIGO_T: TIntegerField;
    sdsCODIGO_C: TIntegerField;
    sdsPLANO: TStringField;
    sdsHISTORICO: TMemoField;
    sdsPLANO_ANT: TStringField;
    sdsDTA_CONTRATO: TDateField;
    sdsDTA_CONTRATO_ANT: TDateField;
    sdsSITUACAO: TStringField;
    sdsDATAEXCLUSAO: TDateField;
    sdsEMAIL: TStringField;
    cdsSOBRENOME: TStringField;
    cdsNAT: TStringField;
    cdsDTNASC: TDateField;
    cdsPROFISSAO: TStringField;
    cdsCPF_CGC: TStringField;
    cdsRG_IE: TStringField;
    cdsID_VEN: TIntegerField;
    cdsID_COB: TIntegerField;
    cdsN_INSCRICAO: TIntegerField;
    cdsGRUPO: TStringField;
    cdsDTACADASTRO: TDateField;
    cdsDTASISTEMA: TDateField;
    cdsSTATUS: TStringField;
    cdsOBS: TGraphicField;
    cdsTIPO_DOC: TStringField;
    cdsESTCIV: TIntegerField;
    cdsPRAZO_PG: TIntegerField;
    cdsVENCIMENTO: TDateField;
    cdsVALOR_SERVICO: TFloatField;
    cdsPARCELA: TFloatField;
    cdsENTRADA: TFloatField;
    cdsCARENCIA: TIntegerField;
    cdsCODIGO: TIntegerField;
    cdsTIPO_SOCIO: TStringField;
    cdsDIAPGTO: TIntegerField;
    cdsMESES: TIntegerField;
    cdsDATAINICIO: TDateField;
    cdsDATAFIM: TDateField;
    cdsPERCENTUALJUROS: TFloatField;
    cdsPERCENTUALMULTA: TFloatField;
    cdsPERCENTUALDESCONTO: TFloatField;
    cdsVALOROUTROSACRESCIMOS: TFloatField;
    cdsDEMONSTRATIVO: TStringField;
    cdsINSTRUCOESCAIXA: TStringField;
    cdsINSTRUCAO1: TStringField;
    cdsINSTRUCAO2: TStringField;
    cdsINSTRUCAO3: TStringField;
    cdsTIPOIMPRESSAOCARNE: TIntegerField;
    cdsACEITEDOCUMENTO: TStringField;
    cdsESPECIEDOCUMENTO: TStringField;
    cdsCODIGO_T: TIntegerField;
    cdsCODIGO_C: TIntegerField;
    cdsPLANO: TStringField;
    cdsHISTORICO: TMemoField;
    cdsPLANO_ANT: TStringField;
    cdsDTA_CONTRATO: TDateField;
    cdsDTA_CONTRATO_ANT: TDateField;
    cdsSITUACAO: TStringField;
    cdsDATAEXCLUSAO: TDateField;
    cdsEMAIL: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procN_INSCRICAO: TIntegerField;
    rg1: TRadioGroup;
    ACBrBoleto1: TACBrBoleto;
    btn1: TBitBtn;
    s_banco: TSQLDataSet;
    s_bancoID_BANCO: TIntegerField;
    s_bancoCONTA: TStringField;
    s_bancoBANCO: TStringField;
    s_bancoCIDADE: TStringField;
    s_bancoSALDO: TFloatField;
    s_bancoAGENCIA: TStringField;
    s_bancoDIGAGEN: TStringField;
    s_bancoCOD_CED: TStringField;
    s_bancoID_TITULO: TIntegerField;
    s_bancoN_DOC: TIntegerField;
    s_bancoJUROS: TFloatField;
    s_bancoVENCIMENTO: TStringField;
    s_bancoVENCIMENTO1: TStringField;
    s_bancoVENCIMENTO2: TStringField;
    s_bancoLOCAL_PGTO: TStringField;
    s_bancoVENCIMENTO3: TStringField;
    s_bancoCARTEIRA: TStringField;
    s_bancoCADBANCO: TStringField;
    s_bancoDESCBANCO: TStringField;
    s_bancoCONTACORRRENTE: TStringField;
    s_bancoDIGITOCONTACORRENTE: TStringField;
    s_bancoINICIONOSSONUMERO: TStringField;
    s_bancoFIMNOSSONUMERO: TStringField;
    s_bancoPROXIMONOSSONUMERO: TStringField;
    s_bancoVARIACAO: TStringField;
    s_bancoNUMEROCONVENIO: TStringField;
    s_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    s_bancoTIPOCARNE: TStringField;
    s_bancoDEMONSTRATIVO: TStringField;
    s_bancoINSTRUCOESCAIXA: TStringField;
    s_bancoINSTRUCAO1: TStringField;
    s_bancoINSTRUCAO2: TStringField;
    s_bancoACEITEDOCUMENTO: TStringField;
    s_bancoESPECIEDOCUMENTO: TStringField;
    s_bancoINSTRUCAO3: TStringField;
    sds_CRID_RECEBIMENTOS: TIntegerField;
    sds_CRID: TIntegerField;
    sds_CRVALOR_NF: TFloatField;
    sds_CRVALOR_RECEBER: TFloatField;
    sds_CRPARCELA: TIntegerField;
    sds_CRVENCIMENTO: TDateField;
    sds_CRDATA_PAG: TDateField;
    sds_CRSTATUS: TStringField;
    sds_CRVALOR_PAGO: TFloatField;
    sds_CRVALOR_DIF: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRMULTA: TFloatField;
    sds_CREMISSAO: TDateField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRCAIXA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    sds_CRVALOR_A_REC: TFloatField;
    sds_CRTITULO: TIntegerField;
    sds_CRVALOR_1VIA: TFloatField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    sds_CRTIPO_DOC: TStringField;
    sds_CRSELECIONOU: TStringField;
    sds_CRSERIE: TStringField;
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    sds_CRCODIGO: TIntegerField;
    sds_CROBS: TGraphicField;
    sds_CRENTRADA: TFloatField;
    sds_CRCODCCUSTO: TSmallintField;
    sds_CRID_DEPREC: TIntegerField;
    sds_CRNOTAFISCAL: TIntegerField;
    sds_CRID_VENDA: TIntegerField;
    sds_CRID_ACORDO: TIntegerField;
    sds_CRN_BOLETO: TStringField;
    sds_CRCOBRADOR: TIntegerField;
    sds_CRARQUIVORETORNO: TMemoField;
    sds_CRNOMEARQUIVORETORNO: TStringField;
    sds_CRMESANO: TStringField;
    cds_CRID_RECEBIMENTOS: TIntegerField;
    cds_CRID: TIntegerField;
    cds_CRVALOR_NF: TFloatField;
    cds_CRVALOR_RECEBER: TFloatField;
    cds_CRPARCELA: TIntegerField;
    cds_CRVENCIMENTO: TDateField;
    cds_CRDATA_PAG: TDateField;
    cds_CRSTATUS: TStringField;
    cds_CRVALOR_PAGO: TFloatField;
    cds_CRVALOR_DIF: TFloatField;
    cds_CRJUROS: TFloatField;
    cds_CRDESCONTO: TFloatField;
    cds_CRMULTA: TFloatField;
    cds_CREMISSAO: TDateField;
    cds_CRN_DOCUMENTO: TStringField;
    cds_CRCAIXA: TStringField;
    cds_CRFORMARECEBIMENTO: TStringField;
    cds_CRVALOR_A_REC: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRSERIE: TStringField;
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRCODIGO: TIntegerField;
    cds_CROBS: TGraphicField;
    cds_CRENTRADA: TFloatField;
    cds_CRCODCCUSTO: TSmallintField;
    cds_CRID_DEPREC: TIntegerField;
    cds_CRNOTAFISCAL: TIntegerField;
    cds_CRID_VENDA: TIntegerField;
    cds_CRID_ACORDO: TIntegerField;
    cds_CRN_BOLETO: TStringField;
    cds_CRCOBRADOR: TIntegerField;
    cds_CRARQUIVORETORNO: TMemoField;
    cds_CRNOMEARQUIVORETORNO: TStringField;
    cds_CRMESANO: TStringField;
    s_cr: TSQLDataSet;
    s_crID_RECEBIMENTOS: TIntegerField;
    s_crID: TIntegerField;
    s_crVALOR_NF: TFloatField;
    s_crVALOR_RECEBER: TFloatField;
    s_crPARCELA: TIntegerField;
    s_crVENCIMENTO: TDateField;
    s_crDATA_PAG: TDateField;
    s_crSTATUS: TStringField;
    s_crVALOR_PAGO: TFloatField;
    s_crVALOR_DIF: TFloatField;
    s_crJUROS: TFloatField;
    s_crDESCONTO: TFloatField;
    s_crMULTA: TFloatField;
    s_crEMISSAO: TDateField;
    s_crN_DOCUMENTO: TStringField;
    s_crCAIXA: TStringField;
    s_crFORMARECEBIMENTO: TStringField;
    s_crVALOR_A_REC: TFloatField;
    s_crTITULO: TIntegerField;
    s_crVALOR_1VIA: TFloatField;
    s_crID_SOCIO: TIntegerField;
    s_crLOTE: TIntegerField;
    s_crGEROU: TStringField;
    s_crDATA_DOC: TDateField;
    s_crGRUPO: TStringField;
    s_crID_BANCO: TIntegerField;
    s_crSITUACAO: TStringField;
    s_crTIPO_DOC: TStringField;
    s_crSELECIONOU: TStringField;
    s_crSERIE: TStringField;
    s_crPERCENTUALJUROS: TFloatField;
    s_crPERCENTUALMULTA: TFloatField;
    s_crPERCENTUALDESCONTO: TFloatField;
    s_crVALOROUTROSACRESCIMOS: TFloatField;
    s_crCODIGO: TIntegerField;
    s_crOBS: TGraphicField;
    s_crENTRADA: TFloatField;
    s_crCODCCUSTO: TSmallintField;
    s_crID_DEPREC: TIntegerField;
    s_crNOTAFISCAL: TIntegerField;
    s_crID_VENDA: TIntegerField;
    s_crID_ACORDO: TIntegerField;
    s_crN_BOLETO: TStringField;
    s_crCOBRADOR: TIntegerField;
    s_crARQUIVORETORNO: TMemoField;
    s_crNOMEARQUIVORETORNO: TStringField;
    s_crMESANO: TStringField;
    btn2: TBitBtn;
    scdsCp_procCPF_CGC: TStringField;
    scdsCp_procRG_IE: TStringField;
    scdsCp_procENDERECO: TStringField;
    scdsCp_procCOMPLEMENTO: TStringField;
    scdsCp_procESTADO: TStringField;
    scdsCp_procCEP: TStringField;
    scdsCp_procBAIRRO: TStringField;
    scdsCp_procMUNICIPIO: TStringField;
    p_cr: TDataSetProvider;
    ds_cr: TClientDataSet;
    ds_crID_RECEBIMENTOS: TIntegerField;
    ds_crID: TIntegerField;
    ds_crVALOR_NF: TFloatField;
    ds_crVALOR_RECEBER: TFloatField;
    ds_crPARCELA: TIntegerField;
    ds_crVENCIMENTO: TDateField;
    ds_crDATA_PAG: TDateField;
    ds_crSTATUS: TStringField;
    ds_crVALOR_PAGO: TFloatField;
    ds_crVALOR_DIF: TFloatField;
    ds_crJUROS: TFloatField;
    ds_crDESCONTO: TFloatField;
    ds_crMULTA: TFloatField;
    ds_crEMISSAO: TDateField;
    ds_crN_DOCUMENTO: TStringField;
    ds_crCAIXA: TStringField;
    ds_crFORMARECEBIMENTO: TStringField;
    ds_crVALOR_A_REC: TFloatField;
    ds_crTITULO: TIntegerField;
    ds_crVALOR_1VIA: TFloatField;
    ds_crID_SOCIO: TIntegerField;
    ds_crLOTE: TIntegerField;
    ds_crGEROU: TStringField;
    ds_crDATA_DOC: TDateField;
    ds_crGRUPO: TStringField;
    ds_crID_BANCO: TIntegerField;
    ds_crSITUACAO: TStringField;
    ds_crTIPO_DOC: TStringField;
    ds_crSELECIONOU: TStringField;
    ds_crSERIE: TStringField;
    ds_crPERCENTUALJUROS: TFloatField;
    ds_crPERCENTUALMULTA: TFloatField;
    ds_crPERCENTUALDESCONTO: TFloatField;
    ds_crVALOROUTROSACRESCIMOS: TFloatField;
    ds_crCODIGO: TIntegerField;
    ds_crOBS: TGraphicField;
    ds_crENTRADA: TFloatField;
    ds_crCODCCUSTO: TSmallintField;
    ds_crID_DEPREC: TIntegerField;
    ds_crNOTAFISCAL: TIntegerField;
    ds_crID_VENDA: TIntegerField;
    ds_crID_ACORDO: TIntegerField;
    ds_crN_BOLETO: TStringField;
    ds_crCOBRADOR: TIntegerField;
    ds_crARQUIVORETORNO: TMemoField;
    ds_crNOMEARQUIVORETORNO: TStringField;
    ds_crMESANO: TStringField;
    MMJPanel1: TMMJPanel;
    lbl2: TLabel;
    medt1: TMaskEdit;
    grp1: TGroupBox;
    medt_consulta: TMaskEdit;
    grp2: TGroupBox;
    medt_Vencimento: TMaskEdit;
    cbb_tipo: TComboBox;
    lbl1: TLabel;
    RLPDFFilter1: TRLPDFFilter;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
//    function CalcularDigitoNossoNumero(NossoNumero,Carteira: String) : string;
    procedure  RegistroHeader(Tipo:String);
    procedure RegistroTrailerFinal;
    procedure RegistroTrailerLote;
    procedure CRIA_BOLETO_MEMORIA;
  public
    { Public declarations }
        gera_carne : string;
  end;

var
   fGeraArquivo: TfGeraArquivo;
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro, Inscricao, Instrucao1, Instrucao2, Instrucao3 : string;
   NumeroRegistro,NumeroDetalhe, NumeroLote,
   NumeroParcelas, LinhaDetalhe, IncLinha,ToLinha,
   NumeroInstrucao, NumeroDaParcela,NumeroDeParcelas: integer;
   AParcela1,AParcela2,AParcela3,AParcela4,AParcela5,AParcela6,
   AVencimento1,AVencimento2,AVencimento3,AVencimento4,AVencimento5,AVencimento6,
   ANossoNumero1,ANossoNumero2,ANossoNumero3,ANossoNumero4,ANossoNumero5,ANossoNumero6,
   AValor1,AValor2,AValor3,AValor4,AValor5,AValor6, Path, NomArquivo: string;
   arquivo: TextFile;
   numeroremessa, totalparcelas: integer;

   Titulo    : TACBrTitulo;
   I         : Integer;
   NrTitulos : Integer;
   NrTitulosStr :String;
   Convertido: Boolean;

implementation

uses uFiltro_CR1, UDM, uPrincipal;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

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

procedure TfGeraArquivo.BitBtn2Click(Sender: TObject);
Var
 SqlTexto : String;
begin
  inherited;

  if (rg1.ItemIndex = 2) then     // BANCO SANTANDEr
  begin
  if (s_banco.Active) then
    s_banco.Close;
  s_banco.Params[0].AsString := '033'; //
  s_banco.Open;

   ACBrBoleto1.Cedente.Agencia := s_bancoAGENCIA.AsString;
   ACBrBoleto1.Cedente.AgenciaDigito := s_bancoDIGAGEN.AsString;
   ACBrBoleto1.Cedente.CodigoCedente := s_bancoCOD_CED.AsString;
   ACBrBoleto1.Cedente.Conta :=  s_bancoCONTACORRRENTE.AsString;
   ACBrBoleto1.Cedente.ContaDigito := s_bancoDIGITOCONTACORRENTE.AsString;
   end;

  ACBrBoleto1.ListadeBoletos.Clear;
  if DBGrid1.Visible = False then
  begin
     DBGrid1.Visible := True;
     DBGrid2.Visible := False;
  end;

  if scdsCp_proc.Active then
     scdsCp_proc.Close;
   scdsCp_proc.CommandText:='select distinct ob.GRUPO, ob.N_INSCRICAO, ob.NOME_SOCIO, ' +
   ' ob.SELECIONOU, ob.ID_SOCIO, ob.GEROU, ob.DTA_ULTIMA_PARCELA, r.EMISSAO,  ' +
   ' ob.CPF_CGC, ob.RG_IE, ' +
   ' ed.ENDERECO, ed.COMPLEMENTO, ed.ESTADO, ed.CEP, ba.BAIRRO, ci.MUNICIPIO ' +
   ' from SOCIOS ob inner join RECEBIMENTOS r on r.ID_SOCIO = ob.ID_SOCIO' +
   ' left outer join ENDERECO ed on ed.ID_SOCIO = ob.ID_SOCIO ' +
   ' left outer join MUNICIPIO ci on ci.ID_MUNICIPIO = ed.ID_MUNICIPIO ' +
   ' left outer join BAIRRO ba on ba.ID_BAIRRO = ed.ID_BAIRRO ' +
   ' where ob.PLANO = ' + QuotedStr('MENSAL') +
   ' and ob.GEROU = ' + QuotedStr('SIM') +
   ' and r.EMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medt_consulta.Text))) +
   ' and ed.TIPOEND = 0 ';
    sqlTexto := sqlTexto + ' order by ob.NOME_SOCIO ';
  //==============================================================================
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sqlTexto;
    scdsCp_proc.Open;

end;

{function TfGeraArquivo.CalcularDigitoNossoNumero(NossoNumero,
  Carteira: String): string;
var
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';
   ACarteira := Formatar(Carteira,2,false,'0');
   ANossoNumero := Formatar(NossoNumero,11,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9,true);
   Case StrToInt(ADigitoNossoNumero) of
      0: ADigitoNossoNumero := '0';
      1: ADigitoNossoNumero := 'X';
   else
      ADigitoNossoNumero := IntToStr(11-StrToInt(ADigitoNossoNumero));
   end;

   Result := ADigitoNossoNumero;
end;
 }
procedure TfGeraArquivo.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
  begin
    Field := Column.Field;
    if DBGrid1.Visible = true then
    begin
      if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') and Field.CanModify and not Column.ReadOnly then
       with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (scdsCp_procSELECIONOU.AsString = '') then
          scdsCp_procSELECIONOU.AsString := 'S'
        else
          scdsCp_procSELECIONOU.AsString := '';
      end;
    end;
    if DBGrid2.Visible = true then
    begin
      if (Field <> nil) and (Field.Name = 'cdsSELECIONOU') and Field.CanModify and not Column.ReadOnly then
       with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (cdsSELECIONOU.AsString = '') then
          cdsSELECIONOU.AsString := 'S'
        else
          cdsSELECIONOU.AsString := '';
      end;
    end;

end;

procedure TfGeraArquivo.ChkDBGridColEnter(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    if DBGrid1.Visible = true then
    begin
      Field := DBGrid.SelectedField;
      if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
        DBGrid.Options := DBGrid.Options - [dgEditing];
    end;
    if DBGrid2.Visible = true then
    begin
      Field := DBGrid.SelectedField;
      if (Field <> nil) and (Field.Name = 'cdsSELECIONOU') then
        DBGrid.Options := DBGrid.Options - [dgEditing];
    end;
end;

procedure TfGeraArquivo.ChkDBGridColExit(DBGrid: TDBGrid);
  var
    Field: TField;
begin
  if DBGrid1.Visible = True then
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];
  end;
  if DBGrid2.Visible = True then
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'cdsSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];
  end;
end;

procedure TfGeraArquivo.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
 if DBGrid1.Visible = true then
 begin
  if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
//    if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCp_procSELECIONOU.AsString = '' then Index := 1 else Index := 0;
    // Draw the graphic
      fGeraArquivo.ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
    end
    else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
 if DBGrid2.Visible = true then
 begin
  if (Field <> nil) and (Field.Name = 'cdsSELECIONOU') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
//    if Field.AsBoolean then Index := 1 else Index := 0;
    if cdsSELECIONOU.AsString = '' then Index := 1 else Index := 0;
    // Draw the graphic
      fGeraArquivo.ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
    end
    else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TfGeraArquivo.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
   if DBGrid1.Visible = True then
   begin
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      if (Key = ' ') and Field.CanModify and
          not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
        with Field.Dataset do begin
          if State = dsBrowse then
            Edit;
//          Field.AsBoolean := not Field.AsBoolean;
        if (scdsCp_procSELECIONOU.AsString = '') then
          scdsCp_procSELECIONOU.AsString := 'S'
        else
          scdsCp_procSELECIONOU.AsString := '';
        end;
   end;
   if DBGrid2.Visible = True then
   begin
    if (Field <> nil) and (Field.Name = 'cdsSELECIONOU') then
      if (Key = ' ') and Field.CanModify and
          not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
        with Field.Dataset do begin
          if State = dsBrowse then
            Edit;
//          Field.AsBoolean := not Field.AsBoolean;
        if (cdsSELECIONOU.AsString = '') then
          cdsSELECIONOU.AsString := 'S'
        else
          cdsSELECIONOU.AsString := '';
        end;
   end;
end;

procedure TfGeraArquivo.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfGeraArquivo.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfGeraArquivo.DBGrid1ColExit(Sender: TObject);
begin
ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfGeraArquivo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
 if DBGrid1.Visible = True then
 begin
  if not odd(DataSource1.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
 end;
 if DBGrid2.Visible = True then
 begin
  if not odd(dtsrc_dta.dataset.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid2.Canvas.Brush.Color := $00FFEFDF;
    DBGrid2.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
 end;
 ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect, DataCol, Column, State);

end;

procedure TfGeraArquivo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfGeraArquivo.DBGrid1TitleClick(Column: TColumn);
begin
  scdsCp_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfGeraArquivo.RegistroHeader(Tipo: String);
Begin
   { GERAR REGISTRO-HEADER DO ARQUIVO }
  with dm, cds_empresa do
   begin
      ACedenteTipoInscricao := '2';  //pessoa jurídica

      Registro := Tipo; //1 a 2 00 ou 01 Tipo de registro
      Registro := Registro + Formatar(FieldbyName('AGENCIACEDENTE').asString,4,false,'0'); //3 a 6 - Código da agência do cedente
      Registro := Registro + Formatar(FieldbyName('DIGITOAGENCIA').asString,1,false,'0'); //7 - Dígito da agência do cedente
      Registro := Registro + Formatar(FieldbyName('CONTACORRENTECEDENTE').asString,9,false,'0'); //8 a 16 - Número da conta do cedente
      Registro := Registro + Formatar(FieldbyName('DIGITOCONTA').asString,1,false,'0'); //9 - Dígito da conta do cedente
      Registro := Registro + Formatar(FieldbyName('CODIGOCEDENTE').asString,3,false,'0');//18 a 20 carteira
      Registro := Registro + Formatar(FieldbyName('VARIACAO').asString,3,false,'0');//21 a 23 variação
      Registro := Registro + Formatar('0',6,false,'0'); //24 a 29 - Código do convênio no banco
      Registro := Registro + Formatar(cds_empresaRAZAO_EMPRESA.asString,45,true,' '); //30 a 74 - Nome do cedente
      Registro := Registro + Formatar('Fun. Serra',10); //75 a 84  sigla do cedente
      Registro := Registro + Formatar(IntTOSTR(FieldbyName('TipoImpressaoCarne').AsInteger),2,false,'0');//85 a 86 Tipo de impressão( tipo de carnê)
      Registro := Registro + Formatar(Concat(cds_empresaENDERECO.asString,' ',cds_empresaNr.asString,' ',cds_empresaBairro.asString),60,true,' ');//87 a 146 Endereço para devolução

      Registro := Registro + Formatar(cds_empresa.FieldbyName('CEP').asString,8,true,'0');//147 a 154 CEP para devolução
      Registro := Registro + Formatar(Concat(cds_empresa.FieldbyName('Cidade').asString,' ',cds_empresa.FieldbyName('ESTADO').asString),20,true,' ');//155 a 174 Praça para devolução

      dm.cds_empresa.Edit;
      NumeroRemessa := StrToInt(dm.cds_empresaPROXIMONOSSONUMERO.AsString) + 1;
      dm.cds_empresaPROXIMONOSSONUMERO.AsString := IntToStr(NumeroRemessa);
      dm.cds_empresa.ApplyUpdates(0);

      Registro := Registro + Formatar(IntToStr(NumeroRemessa),7,false,'0');//175 a 181 Sequencial da remessa   {falta implementar}
      Registro := Registro + 'N';//182  Indicador de comferencia do sequencial de remessa
      Case FieldbyName('TipoImpressaoCarne').asInteger of
        6,7,8,9,10,11 :
                 begin
                   Registro := Registro + Formatar(IntToStr(totalparcelas),2,false,'0');//183 a 184 Números de parcelas para carnes tipos 05 a 11
                   Registro := Registro + Formatar(' ',2);//185 a 186 espaços
                 end;
        1,2,3,4,5 :Registro := Registro + Formatar(' ',4);//183 a 186 espaços
      end;

      Registro := Registro + Formatar('CBR454',8,true,' ');//187 a 194 Identificador do arquivo CBR454
      Registro := Registro + Formatar(' ',3);//195 a 197 Reservado para o banco
      Registro := Registro + Formatar(' ',38);//198 a 235 espaços
      Registro := Registro + Formatar(' ',5);//236 a 240 espaços
      Registro := Registro + Formatar(FieldbyName('NUMEROCONVENIO').asString,7,false,'0');//241 a 247
      Registro := Registro + Formatar(' ',3);//248 a 250 espaços
      writeln(Arquivo, Registro);
      //Remessa.Add(Registro);
      Inc(NumeroRegistro);
      Registro := '';
  end;

end;

procedure TfGeraArquivo.RegistroTrailerFinal;
begin
   {GERAR REGISTRO TRAILER DO ARQUIVO}
   Registro := '99'; //1 a 2 Tipo de resistro
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); {Quantidade de registros do arquivo}
   Registro := Registro + Formatar('',233); {Espaços em braco}
   Registro := Registro + #13#10;
   write(Arquivo, Registro);
   //Remessa.Add(Registro);
   NumeroRegistro := 0;
end;

procedure TfGeraArquivo.RegistroTrailerLote;
begin
   {GERAR REGISTRO TRAILER DO LOTE}
   Registro := '98'; //1 a 2 Tipo de resistro
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); {Quantidade de registros do arquivo}
   Registro := Registro + Formatar('',233); {Espaços em braco}

   write(Arquivo, Registro);
   //Remessa.Add(Registro);
   NumeroRegistro := 0;
end;

procedure TfGeraArquivo.BitBtn1Click(Sender: TObject);
var
  totalp : integer;
  vHeader : string;
begin
  vHeader := 'NAO';
  if (conta_parcelas.Active) then
     conta_parcelas.Close;
  conta_parcelas.Params[0].AsInteger :=  scdsCp_procID_SOCIO.AsInteger;
  conta_parcelas.Params[1].AsDateTime :=  scdsCp_procDTA_ULTIMA_PARCELA.AsDateTime;
  conta_parcelas.Open;

  if (conta_parcelasCOUNT.AsInteger > 12) then
  begin
    MessageDlg('á mais de 12 parcelas pendentes desse sócio, o carne só é gerado com 12 parcela.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (medt_Vencimento.Text = '  /  /  ') then
  begin
    MessageDlg('Informe a data para gerar arquivo.', mtWarning, [mbOK], 0);
    exit;
  end;

  NomArquivo := Edit1.Text;
  Try
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);
  // arquivo
   NumeroRegistro := 0;
   NumeroDetalhe := 0;
   LinhaDetalhe := 0;
   IncLinha     := 0;
   ToLinha      := 0;
   NumeroLote := 1;
   Registro := '';
   Instrucao1 := '';
   Instrucao2 := '';
   Instrucao3 := '';
   { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
   //***********************  ****************************
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
   Append(Arquivo);
   Rewrite(arquivo);
   Label1.Caption := '';
   Label1.Caption := 'Gerando Arquivo...';
   Refresh;
   FlatGauge1.MaxValue := scdsCp_proc.RecordCount;
   scdsCp_proc.First;
   while not scdsCp_proc.Eof do
   begin
     if scdsCp_procSELECIONOU.AsString <> '' then
     begin
       if (vHeader = 'NAO') then
       begin
         if dm.cds_ContasR.Active then
           dm.cds_ContasR.Close;
         dm.cds_ContasR.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
         //dm.cds_ContasR.Params[1].AsDateTime := scdsCp_procDTA_ULTIMA_PARCELA.AsDateTime;
         dm.cds_ContasR.Params[1].AsDateTime := StrToDateTime(medt_Vencimento.Text);
         dm.cds_ContasR.Open;
         if (dm.cds_ContasR.IsEmpty) then
           totalparcelas := 12
         else
           totalparcelas := dm.cds_ContasR.RecordCount;
          vHeader := 'SIM';
          RegistroHeader('01'); //Registro de cabeçalho do arquivo
       end;
      {--------------AQUI ABRO AS TABELAS-------------------}
      //SOCIO
      if dm.cds_socio.Active then
         dm.cds_socio.Close;
      dm.cds_socio.Params[0].Clear;
      dm.cds_socio.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
      dm.cds_socio.Open;
      dm.cds_socio.Edit;
      dm.cds_socioGEROU.AsString := 'SIM';
      dm.cds_socio.ApplyUpdates(0);
      //ENDEREÇO
      if dm.cds_end.Active then
         dm.cds_end.Close;
      dm.cds_end.Params[0].Clear;
      dm.cds_end.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
      dm.cds_end.Open;
      //BAIRRO
      if not cds_bairro.Active then
         cds_bairro.Open;
      //MUNICIPIO
      if not cds_munic.Active then
         cds_munic.Open;

      //RECEBIMENTO
      if dm.cds_ContasR.Active then
        dm.cds_ContasR.Close;
      dm.cds_ContasR.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
      //dm.cds_ContasR.Params[1].AsDateTime := scdsCp_procDTA_ULTIMA_PARCELA.AsDateTime;
      dm.cds_ContasR.Params[1].AsDateTime := StrToDateTime(medt_Vencimento.Text);
      dm.cds_ContasR.Open;
      totalp := dm.cds_ContasR.RecordCount;
      if (totalp <> totalparcelas) then
      begin
         ShowMessage('Parcelas difere do Registro Header');
         exit;
      end;
      //totalparcelas := dm.cds_ContasR.RecordCount;
      //RegistroHeader('01'); //Registro de cabeçalho do arquivo
      with dm do
      begin
        cds_ContasR.First;
        while not cds_ContasR.eof  do
        begin
          if NumeroParcelas <> cds_ContasR.RecordCount then
          begin
            if Remessa.Titulos.Count <> 0 then
            begin
               RegistroTrailerLote; //Regisro de final de lote
               RegistroHeader('00'); //Registro de cabeçalho do lote
            end
            else
               //RegistroHeader('01'); //Registro de cabeçalho do arquivo
          end;
          {REGISTRO TIPO 4 -  MENSAGENS ESPECIFICAS PARA O VERSO DA VIA RECIBO DO SACADO/QUADRO DE MENSAGENS DO CARNÊ}
          Registro := '04'; //1 a 2 - 04 Tipo do registro
          Registro := Registro + '0'; //3 Tipo de fonte para a mensagem 1
          Registro := Registro + '0'; //4 Tipo de fonte para a mensagem 2
          Registro := Registro + '0'; //5 Tipo de fonte para a mensagem 3
          Registro := Registro + Formatar(cds_empresa.FieldByName('Instrucao1').AsString,80);
          Registro := Registro + Formatar(cds_empresa.FieldByName('Instrucao2').AsString,80);
          Registro := Registro + Formatar(cds_empresa.FieldByName('Instrucao3').AsString,80);
          Registro := Registro + Formatar(' ',5); //246 a 250  Espaços
          writeln(Arquivo, Registro);
          Inc(NumeroRegistro);
          Registro := '';
          {**********************************************************}
          {REGISTRO TIPO 10 - DADOS DO TÍTULO PARA EMISSÃO DE FICHAMENTOS OU CARNÊS COM NOSSO NUMERO DE 11 POSIÇÕES}
         // Mudei para tipo 11 pq segundo o manoel esse é o correto
          NumeroParcelas := cds_ContasR.RecordCount;
          if cds_socio.FieldByName('TIPO_DOC').AsString = 'F' then
            ASacadoTipoInscricao := '1';
          if cds_socio.FieldByName('TIPO_DOC').AsString = 'J' then
            ASacadoTipoInscricao := '2';
          if cds_socio.FieldByName('TIPO_DOC').AsString = '' then
            ASacadoTipoInscricao := '3';
         Registro := '11'; //1 a 2 - 10 Tipo do registro
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0'); //3 - Tipo de inscrição do sacado 1= CPF 2=CNPJ 3= Isento
         Registro := Registro + Formatar(Formatar(RemoveChar(cds_socio.FieldByName('CPF_CGC').AsString),15),15, false, '0');
         Registro := Registro + Formatar(Formatar(cds_socio.fieldByName('NOME_SOCIO').AsString,37),60); //19 78
         Registro := Registro + Formatar(Formatar(cds_end.fieldByName('ENDERECO').AsString+' '+
                                         cds_end.fieldByName('COMPLEMENTO').AsString+' '+
                                         cds_end.fieldByName('BAIRRO').AsString,37),60); //79  138
         Registro := Registro + Formatar(RemoveChar(cds_end.fieldByName('CEP').AsString),8,true,'0'); //139 a 146 CEP para devolução
         Registro := Registro + Formatar(cds_end.fieldByName('MUNICIPIO').AsString,18,true);   //147 164
         Registro := Registro + Formatar(cds_end.fieldByName('ESTADO').AsString,2,false);   //165 166
         Registro := Registro + FormatDateTime('ddmmyy',cds_ContasR.fieldByName('DATA_PAG').AsDateTime); //167 a 172 - Data processamento (emissão)
         Case cds_empresa.FieldbyName('TIPOIMPRESSAOCARNE').asInteger of
         6,7,8,9,10,11 : Registro := Registro + Formatar('',6,false,'0'); //173 a 178 - Data Vencimento
         1,2,3,4,5 :
         begin
            if cds_CR.fieldByName('VENCIMENTO').AsDateTime <> NULL then
              Registro := Registro + FormatDateTime('ddmmyy',cds_ContasR.fieldByName('VENCIMENTO').AsDateTime) //173 a 178 - Data Vencimento
            else
              Registro := Registro + Formatar('',6,false,'0'); //173 a 178 - Data Vencimento
            end;
         end;

         if (cds_empresa.fieldByName('ACEITEDOCUMENTO').AsString = 'A') then  //179 - Identificação de título Aceito / Não aceito
             Registro := Registro + 'S'
         else
             Registro := Registro + 'N';

         Registro := Registro + cds_empresa.fieldByName('ESPECIEDOCUMENTO').asString; //180 a 181 - Espécie do documento
         Registro := Registro + Formatar('0',17,false,'0'); //182 a 198 - Nosso número - identificação do título no banco
         Registro := Registro + Formatar(Formatar(IntToSTR(cds_ContasR.fieldByName('CODIGO').AsInteger),10,false,'0'),10,true,' '); //199 a 208 - Número que identifica o título na empresa
         Registro := Registro + '09'; //209 a 210 - Tipo da moeda: 09 Real
         Registro := Registro + Formatar('0',10,false,'0');//211 a 225 Quantidade de moeda variavel
         Registro := Registro + Formatar('0',20,false,'0');; //226 a 240 - Valor nominal do título
         Registro := Registro + '00'; //241 a 242 - Prazo para protesto (em dias corridos)
         Registro := Registro + Formatar('',6,false,' ');//243 a 248 Espaços para uso do banco
         Registro := Registro + Formatar(IntToStr(NumeroParcelas),2,false,'0');//249 a 250 Total de parcelas
         writeln(Arquivo, Registro);
         Inc(NumeroRegistro);
         Registro := '';

         //REGISTRO TIPO 12 - DADOS DAS PARCELAS PARA EMISSÃO DO CARNÊ
         NumeroDeParcelas := cds_ContasR.RecordCount;
         IncLinha := 0;
         NumeroDaParcela := 1;
         cds_ContasR.First;
       // começa a escrever as parcelas
         while not cds_ContasR.eof do
         begin
            AParcela1 := ''; AParcela2:='';AParcela3:='';AParcela4:='';AParcela5:='';AParcela6:='';
            AVencimento1:='';AVencimento2:='';AVencimento3:='';AVencimento4:='';AVencimento5:='';AVencimento6:='';
            ANossoNumero1:='';ANossoNumero2:='';ANossoNumero3:='';ANossoNumero4:='';ANossoNumero5:='';ANossoNumero6:='';
            AValor1:='';AValor1:='';AValor2:='';AValor1:='';AValor3:='';AValor4:='';
            Registro := '12'; //1 a 2 - Tipo de registro
            AParcela1     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
            AVencimento1  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
            ANossoNumero1 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
            AValor1       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
            cds_ContasR.Next;
            inc(NumeroDaParcela);
            AParcela2     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
            AVencimento2  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
            ANossoNumero2 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
            AValor2       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
            cds_ContasR.Next;
            inc(NumeroDaParcela);
            AParcela3     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
           AVencimento3  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
           ANossoNumero3 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
           AValor3       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
           cds_ContasR.Next;
           inc(NumeroDaParcela);
           AParcela4     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
           AVencimento4  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
           ANossoNumero4 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
           AValor4       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
           cds_ContasR.Next;
           inc(NumeroDaParcela);
           AParcela5     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
           AVencimento5  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
           ANossoNumero5 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
           AValor5       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
           cds_ContasR.Next;
           inc(NumeroDaParcela);
           AParcela6     := Formatar(Formatar(IntToStr(NumeroDaParcela),2,false,'0') + '/' + Formatar(IntToStr(NumeroDeParcelas),2,false,'0'),5,true,' ');
           AVencimento6  := FormatDateTime('ddmmyy',cds_ContasR.FieldByName('VENCIMENTO').AsDateTime); //194; //8 a 13 - Vencimento parcela
           ANossoNumero6 := Formatar(Concat(cds_empresa.FieldByName('NUMEROCONVENIO').AsString,Formatar(IntToStr(cds_ContasR.FieldByName('CODIGO').AsInteger),10,false,'0')),17,false,'0'); //182 a 192 - Nosso número - identificação do título no banco'; //14 a 30 - Nosso numero com 11 ou 17 posiçoes
           AValor6       := FormatCurr('0000000000000',cds_ContasR.FieldByName('VALOR_NF').asCurrency * 100);; //31 a 43 Valor do titulo
           cds_ContasR.Next;
           inc(NumeroDaParcela);
           Registro := Registro + AParcela1;
           Registro := Registro + AVencimento1;
           Registro := Registro + ANossoNumero1;
           Registro := Registro + AValor1;
           if ANossoNumero2 <> ANossoNumero1 then
           begin
              Registro := Registro + AParcela2;
              Registro := Registro + AVencimento2;
              Registro := Registro + ANossoNumero2;
              Registro := Registro + AValor2;
           end;
           if ANossoNumero3 <> ANossoNumero2 then
           begin
              Registro := Registro + AParcela3;
              Registro := Registro + AVencimento3;
              Registro := Registro + ANossoNumero3;
              Registro := Registro + AValor3;
           end;
           if ANossoNumero4 <> ANossoNumero3 then
           begin
              Registro := Registro + AParcela4;
              Registro := Registro + AVencimento4;
              Registro := Registro + ANossoNumero4;
              Registro := Registro + AValor4;
           end;
           if ANossoNumero5 <> ANossoNumero4 then
           begin
              Registro := Registro + AParcela5;
              Registro := Registro + AVencimento5;
              Registro := Registro + ANossoNumero5;
              Registro := Registro + AValor5;
           end;
           if ANossoNumero6 <> ANossoNumero5 then
           begin
              Registro := Registro + AParcela6;
              Registro := Registro + AVencimento6;
              Registro := Registro + ANossoNumero6;
              Registro := Registro + AValor6;
           end;
           Registro := Registro + Formatar('',2); //249 a 250 - Espaços
           if length(Registro) < 250 then
             Registro := Registro + Formatar(' ',(250-length(Registro)));
           writeln(Arquivo, Registro);
           Inc(NumeroRegistro);
           Registro := '';
         end; // end do 3 while
         cds_ContasR.next;
      end; //end do 2 while
      {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
    end;
   end; //end do primeiro while
   FlatGauge1.Progress := FlatGauge1.Progress + 1;
   scdsCp_proc.Next;
  end;
   Label1.Caption := '';
   Label1.Caption := 'Arquivo Gerado com sucesso...';
   Refresh;
   FlatGauge1.Progress :=0;
       {GERAR REGISTRO TRAILER DO ARQUIVO}
  RegistroTrailerFinal;
  finally
   CloseFile(arquivo);
  end;
  scdsCp_proc.First;
  BitBtn6.Click;
end;

procedure TfGeraArquivo.BitBtn4Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Edit1.Text := SaveDialog1.FileName;
end;

procedure TfGeraArquivo.FormShow(Sender: TObject);
begin
//  Edit1.Text := 'C:\BancoBrasil\BBTransf\Remessa\Remessa' + '_' + FormatDateTime('dd_mm_yy', now) + '.txt';
  medt_consulta.Text := DateToStr(Now);
end;

procedure TfGeraArquivo.FormCreate(Sender: TObject);
begin
 if not dm.cds_par.Active then
   dm.cds_par.Open;
 //pega os parametros da tela do windows
 // label3.caption := '' +inttostr(screen.width);
  //label4.caption :='' +inttostr(screen.Height);

{   DBGrid1.Columns[0].Width := 240;
   ScreenWidth := 800;
   ScreenHeight := 600;

 if dm.cds_parPARAMETRO1.AsString <> 'Padrão' then
 begin
    scaled := true;
    if (screen.width <> ScreenWidth) then
    begin
      height := longint(height) * longint(screen.height) DIV ScreenHeight;
      width := longint(width) * longint(screen.width) DIV ScreenWidth;
      scaleBy(screen.width, ScreenWidth);
    end;
 end
 else
 begin
  fGeraArquivo.Position := poDesktopCenter;
  fGeraArquivo.WindowState := wsNormal;
 end;
 }
end;

procedure TfGeraArquivo.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TfGeraArquivo.DSPGetProproperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  { Declare Variants no uses }
  Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TfGeraArquivo.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA, data_set)';
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
      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+ #13+#10;
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
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
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
            str_for := '----Adicionado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.SQLObitos.ExecuteDirect(str);
  end;
end;

procedure TfGeraArquivo.BitBtn5Click(Sender: TObject);
begin
  if (medt_consulta.Text = '  /  /  ') then
  begin
     MessageDlg('Informe a data da Consulta.', mtWarning, [mbOK], 0);
     exit;
  end;
  if (cds.Active) then
    cds.Close;
  cds.Params[0].AsDate := StrToDate(medt_consulta.Text);
  cds.Open;
  DBGrid1.Visible := False;
  DBGrid2.Visible := True;
end;

procedure TfGeraArquivo.BitBtn6Click(Sender: TObject);
begin
  if not proc_socio.Active then
     proc_socio.Open;
   Label1.Caption := '';
   Label1.Caption := 'Aguarde Atualizando Datas...';
   Refresh;
   FlatGauge1.MaxValue := proc_socio.RecordCount;
   proc_socio.First;
   while not proc_socio.Eof do
   begin
     if scdsCp_procSELECIONOU.AsString <> '' then
     begin
        if proc_receb.Active then
           proc_receb.Close;
        proc_receb.Params[0].AsInteger := proc_socioID_SOCIO.AsInteger;
        proc_receb.Open;
        if not proc_receb.IsEmpty then
        begin
          if dm.cds_socio.Active then
             dm.cds_socio.Close;
          dm.cds_socio.Params[0].AsInteger := proc_socioID_SOCIO.AsInteger;
          dm.cds_socio.Open;
          dm.cds_socio.Edit;
          dm.cds_socioDTA_ULTIMA_PARCELA.AsDateTime := proc_recebMAX.AsDateTime;
          dm.cds_socio.ApplyUpdates(0);
          dm.cds_socio.Close;
          proc_receb.Close;
        end;
     end;
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
     proc_socio.Next;
   end;
   if proc_receb.Active then
      proc_receb.Close;
   proc_socio.Close;
   Label1.Caption := '';
   Label1.Caption := 'Data Atualizada com sucesso...';
   Refresh;
   FlatGauge1.Progress :=0;
    // desmarca os campos
    if (scdsCp_proc.Active) then
    begin
        scdsCp_proc.First;
        scdsCp_proc.DisableControls;
        while not scdsCp_proc.Eof do
        begin
          if scdsCp_proc.State in [dsBrowse] then
             scdsCp_proc.Edit;
          scdsCp_procSELECIONOU.AsString := '';
          scdsCp_proc.Next;
        end;
        scdsCp_proc.First;
        scdsCp_proc.EnableControls;
    end;
end;

procedure TfGeraArquivo.BitBtn7Click(Sender: TObject);
var
 a,c1,c2,c3,c4,c5,c6,c7,c8,c9, data, emissao :String;
 dia1 :integer;
 valor : double;
 dia, mes, ano :word;
 TD: TTransactionDesc;
begin
   valor := 0;
   {  if (medt_valor.Text = '') then
     begin
        MessageDlg('Informe o valor', mtWarning, [mbOK], 0);
        medt_valor.SetFocus;
        exit;
     end;
     }
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     if cds.State in [dsInactive] then
       Exit;
     Label1.Caption := '';
     Label1.Caption := 'Aguarde...';
     Refresh;
     FlatGauge1.MaxValue := cds.RecordCount;
     cds.First;
     while not cds.Eof do
     begin
       if cdsSELECIONOU.AsString <> '' then
       begin
         if (cdsDTA_ULTIMA_PARCELA.IsNull) then
           decodedate(StrToDate(medt_consulta.Text), Ano, mes, dia)
         else
           decodedate(cdsDTA_ULTIMA_PARCELA.AsDateTime, Ano, mes, dia);
         mes := mes + 1;
         if mes > 12 then
         begin
           mes := 1;
           ano := ano + 1;
         end;
         if dia >= 30 then
          if mes = 2 then
             dia := 28;
         data := DateToStr(encodedate(ano, mes, dia));
         dia1 := dia;
         //valor := StrToFloat(medt_valor.Text);
         // gera codigo
         if dm.c_6_genid.Active then
           dm.c_6_genid.Close;
         dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODIGO_BANCO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
         dm.c_6_genid.Open;
         c9 := IntToStr(dm.c_6_genidCODIGO.AsInteger);
         dm.c_6_genid.Close;

         a := 'Execute Procedure SP_CARNE(';
         c1 :=  formatDateTime('mm/dd/yyyy',StrToDate(data));
         c2 := IntToStr(dia1);
         c3 := '12';
         c4 := '0';
         DecimalSeparator := '.';
         c5 := FloatToStr(valor);
         c6 := IntToStr (cdsID_SOCIO.AsInteger);
         c7 := IntToStr (cdsCODIGO.AsInteger);
         c8 := IntToStr (cdsID_COB.AsInteger);
         a := a + '''' + c1 + '''' + ',' + c2 + ',' + c3 + ',' + c4 + ',' + c5 + ',' +
           '''' + c6 + ''','  + '''' + c7 + ''',' + '''' + c8 + ''',' + c9 + ',' +
           QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medt_consulta.Text))) + ')';
         dm.SQLObitos.StartTransaction(TD);
         DM.SQLObitos.ExecuteDirect(a);
         dm.SQLObitos.Commit(TD);
         DecimalSeparator := ',';
        { if (DM.cds_socio.Active) then
             DM.cds_socio.Close;
         DM.cds_socio.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
         DM.cds_socio.Open;
         dm.cds_socio.Edit;
         dm.cds_socioGEROU.AsString := 'NÃO';
         DM.cds_socio.ApplyUpdates(0);}
       end;
       FlatGauge1.Progress := FlatGauge1.Progress + 1;
       cds.Next;
     end;
     Label1.Caption := '';
     Label1.Caption := 'Mensalidades Geradas com sucesso...';
     Refresh;
     FlatGauge1.Progress :=0;
end;

procedure TfGeraArquivo.SpeedButton1Click(Sender: TObject);
begin
//marca todos
 if DBGrid1.Visible =True then
 begin
  if (scdsCp_proc.Active) then
  begin
      scdsCp_proc.First;
      scdsCp_proc.DisableControls;
      while not scdsCp_proc.Eof do
      begin
        if scdsCp_proc.State in [dsBrowse] then
           scdsCp_proc.Edit;
        scdsCp_procSELECIONOU.AsString := 'S';
        scdsCp_proc.Next;
      end;
      scdsCp_proc.First;
      scdsCp_proc.EnableControls;
  end;
 end;
 if DBGrid2.Visible =True then
 begin
  if (cds.Active) then
  begin
      cds.First;
      cds.DisableControls;
      while not cds.Eof do
      begin
        if cds.State in [dsBrowse] then
           cds.Edit;
        cdsSELECIONOU.AsString := 'S';
        cds.Next;
      end;
      cds.First;
      cds.EnableControls;
  end;
 end;
end;

procedure TfGeraArquivo.SpeedButton2Click(Sender: TObject);
begin
  // DESMARCA TODOS
 if DBGrid1.Visible =True then
 begin
  if (scdsCp_proc.Active) then
  begin
      scdsCp_proc.First;
      scdsCp_proc.DisableControls;
      while not scdsCp_proc.Eof do
      begin
        if scdsCp_proc.State in [dsBrowse] then
           scdsCp_proc.Edit;
        scdsCp_procSELECIONOU.AsString := '';
        scdsCp_proc.Next;
      end;
      scdsCp_proc.First;
      scdsCp_proc.EnableControls;
  end;
 end;
 if DBGrid2.Visible =True then
 begin
  if (cds.Active) then
  begin
      cds.First;
      cds.DisableControls;
      while not cds.Eof do
      begin
        if cds.State in [dsBrowse] then
           cds.Edit;
        cdsSELECIONOU.AsString := '';
        cds.Next;
      end;
      cds.First;
      cds.EnableControls;
  end;
 end;
end;

procedure TfGeraArquivo.DBGrid2TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfGeraArquivo.btn1Click(Sender: TObject);
begin
  if (cbb_tipo.Text = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (cbb_tipo.Text = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (cbb_tipo.Text = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;
  ACBrBoleto1.ListadeBoletos.Clear;
  if (rg1.ItemIndex = 0) then   // BANCO DO BRASIL
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 001;
    ACBrBoleto1.Banco.Digito := 9;
    ACBrBoleto1.Banco.Nome := 'Banco Brasil';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '237'; // Está Bradesco para teste
    s_banco.Open;
    // Cria Boleto na memoria
    CRIA_BOLETO_MEMORIA;
    ACBrBoleto1.Imprimir;
  end;

  if (rg1.ItemIndex = 1) then     // BANCO DO BRADESCO
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 237;
    ACBrBoleto1.Banco.Digito := 2;
    ACBrBoleto1.Banco.Nome := 'Bradesco';
    ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '237';
    s_banco.Open;
    // Cria Boleto na memoria
    CRIA_BOLETO_MEMORIA;
    ACBrBoleto1.Imprimir;
  end;

  if (rg1.ItemIndex = 2) then     // BANCO SANTANDEr
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 008;
    ACBrBoleto1.Banco.Digito := 7;
    ACBrBoleto1.Banco.Nome := 'Santander';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '033'; //
    s_banco.Open;
    ACBrBoleto1.Cedente.Conta := s_bancoCONTACORRRENTE.AsString;
    // Cria Boleto na memoria
    CRIA_BOLETO_MEMORIA;
    ACBrBoleto1.Imprimir;
    
  end;

  if (rg1.ItemIndex = 3) then     // BANCO ITAÚ
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 341;
    ACBrBoleto1.Banco.Digito := 7;
    ACBrBoleto1.Banco.Nome := 'Banco Itau';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '237'; // Está Bradesco para teste
    s_banco.Open;
    // Cria Boleto na memoria
    CRIA_BOLETO_MEMORIA;
    ACBrBoleto1.Imprimir;
  end;

  if (rg1.ItemIndex = 4) then     // BANCO SICREDI
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 748;
    ACBrBoleto1.Banco.Digito := 10;
    ACBrBoleto1.Banco.Nome := 'Sicredi';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '237'; // Está Bradesco para teste
    s_banco.Open;
    // Cria Boleto na memoria
    CRIA_BOLETO_MEMORIA;
    ACBrBoleto1.Imprimir;
  end;

end;

procedure TfGeraArquivo.btn2Click(Sender: TObject);
begin
  if (cbb_tipo.Text = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (cbb_tipo.Text = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (cbb_tipo.Text = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;

   ACBrBoleto1.ListadeBoletos.Clear;
   CRIA_BOLETO_MEMORIA;
   ACBrBoleto1.GerarRemessa( 1 );
end;

procedure TfGeraArquivo.btn3Click(Sender: TObject);
begin
  ACBrBoleto1.ListadeBoletos.Clear;
end;

procedure TfGeraArquivo.CRIA_BOLETO_MEMORIA;
var
   var_nosso_numero :string;
   totalParcela, I : integer;
begin
   ACBrBoleto1.Cedente.Agencia := s_bancoAGENCIA.AsString;
   ACBrBoleto1.Cedente.AgenciaDigito := s_bancoDIGAGEN.AsString;
   ACBrBoleto1.Cedente.CodigoCedente := s_bancoCOD_CED.AsString;
   ACBrBoleto1.Cedente.Conta := s_bancoCONTACORRRENTE.AsString;
   ACBrBoleto1.Cedente.ContaDigito := s_bancoDIGITOCONTACORRENTE.AsString;


   ACBrBoleto1.Cedente.Nome := 'Consoni Serviços Funerários Ltda - ME';
   // Inclui Boletos no Componente
   Label1.Caption := '';
   Label1.Caption := 'Aguarde...';
   Refresh;
   FlatGauge1.MaxValue := scdsCp_proc.RecordCount;
   scdsCp_proc.First;
   I := 1;
   while not scdsCp_proc.Eof do
   begin
     if scdsCp_procSELECIONOU.AsString <> '' then
     begin
        if (ds_cr.Active) then
            ds_cr.Close;
        ds_cr.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
        ds_cr.Params[1].AsDate := StrToDate(medt_consulta.Text);
        ds_cr.Open;
        while (not ds_cr.Eof) do
        begin
           Titulo:= ACBrBoleto1.CriarTituloNaLista;
           with Titulo do
           begin
              Titulo.TotalParcelas := ds_cr.RecordCount;
              Titulo.Parcela := ds_cr.RecNo; //I;
              if(ACBrBoleto1.Banco.Nome = 'Bradesco') then
              LocalPagamento    := 'Pagar preferêncialmente nas agências do Bradesco' //MEnsagem exigida pelo bradesco
              else
              LocalPagamento    := 'Pagar preferêncialmente nas agências do Santander';
              Vencimento        :=  ds_crVENCIMENTO.AsDateTime; //IncMonth(EncodeDate(2010,05,10),I);
              DataDocumento     :=  StrToDate(medt_consulta.Text); //EncodeDate(2010,04,10);
      // até 15/15/2016
      //        NumeroDocumento   := padL(ds_crTITULO.AsString,6,'0');
      // depois
              NumeroDocumento   := ds_crTITULO.AsString;
              EspecieDoc        := 'RC';
              Aceite            := atSim;
              DataProcessamento := Now;
//              NossoNumero       := IntToStrZero(s_crTITULO.AsInteger,11);
              case rg1.ItemIndex of
                0: NossoNumero := IntToStrZero(ds_crTITULO.AsInteger,10);// BRASIL
                1: NossoNumero := IntToStrZero(ds_crTITULO.AsInteger,10);// BRADESCO
                2: NossoNumero := IntToStrZero(ds_crTITULO.AsInteger,10);// SANTANDER
                3: NossoNumero := IntToStrZero(ds_crTITULO.AsInteger,8);// ITAÚ
                4: NossoNumero := IntToStrZero(ds_crTITULO.AsInteger,8);// SICREDI
              end;

                // DADOS DO BANCO

                with ACBrBoleto1.Banco do
                begin
                   case rg1.ItemIndex of
                      1: TipoCobranca := cobBradesco;
                      0: TipoCobranca := cobBancoDoBrasil;
                      2: TipoCobranca := cobSantander;
                      3: TipoCobranca := cobItau;
                      4: TipoCobranca := cobSicred;
                   else
                      TipoCobranca := cobNenhum;
                   end;
                end;

              Carteira          := s_bancoCARTEIRA.AsString; //'09';
              if(ACBrBoleto1.Banco.Nome = 'Santander') then
              ACBrBoleto1.Cedente.Modalidade := s_bancoCARTEIRA.AsString;
              ValorDocumento    := ds_crVALOR_RECEBER.AsFloat; //100.35 * (I+0.5);
              Sacado.NomeSacado := scdsCp_procNOME_SOCIO.AsString; //'Jose Luiz Pedroso';
              Sacado.CNPJCPF    := scdsCp_procCPF_CGC.AsString;//'12345678901';
              Sacado.Logradouro := scdsCp_procENDERECO.AsString; //'Rua da Consolacao';
              //Sacado.Numero     := '100';
              Sacado.Bairro     := scdsCp_procBAIRRO.AsString; //'Vila Esperanca';
              Sacado.Cidade     := scdsCp_procMUNICIPIO.AsString; //'Tatui';
              Sacado.UF         := scdsCp_procESTADO.AsString; //'SP';
              Sacado.CEP        := scdsCp_procCEP.AsString; //'18270000';
              ValorAbatimento   := 0;
              DataAbatimento    := Vencimento-5;
              Titulo.Mensagem.Text  := s_bancoVENCIMENTO.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoVENCIMENTO1.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoVENCIMENTO2.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoVENCIMENTO3.AsString;

              //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
           end;
           I := I + 1;
           ds_cr.Next;
        end;
     end;
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
     scdsCp_proc.Next;
   end;
   FlatGauge1.Progress :=0;
end;

procedure TfGeraArquivo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
