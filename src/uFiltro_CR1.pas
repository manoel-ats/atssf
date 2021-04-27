unit uFiltro_CR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, Grids, DBGrids,
  Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, ImgList,
  FMTBcd, rpcompobase, rpvclreport, comobj, DBCtrls, DBXpress, RXCtrls,rplabelitem,
  TFlatGaugeUnit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Menus;

type
  TFiltro_CR1 = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    scdsCp_proc1: TSQLClientDataSet;
    DataSource1: TDataSource;
    dtsrc_serie: TDataSource;
    Panel2: TPanel;
    BitBtn11: TBitBtn;
    scdsCp_proc1total: TAggregateField;
    scdsCp_proc1recebido: TAggregateField;
    scdsCp_proc1pendente: TAggregateField;
    BitBtn12: TBitBtn;
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
    scdsCountCOUNT: TSQLClientDataSet;
    scdsCountCOUNTCOUNT: TIntegerField;
    BtnBaixarTitulo: TBitBtn;
    ImageList1: TImageList;
    sds_CR: TSQLDataSet;
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
    sds_CRVALOR_1VIA: TFloatField;
    sds_CRTIPO_DOC: TStringField;
    sds_CRID_SOCIO: TIntegerField;
    sds_CRLOTE: TIntegerField;
    sds_CRGEROU: TStringField;
    sds_CRDATA_DOC: TDateField;
    sds_CRGRUPO: TStringField;
    sds_CRID_BANCO: TIntegerField;
    sds_CRSITUACAO: TStringField;
    sds_CRSELECIONOU: TStringField;
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
    cds_CRVALOR_1VIA: TFloatField;
    cds_CRTIPO_DOC: TStringField;
    cds_CRID_SOCIO: TIntegerField;
    cds_CRLOTE: TIntegerField;
    cds_CRGEROU: TStringField;
    cds_CRDATA_DOC: TDateField;
    cds_CRGRUPO: TStringField;
    cds_CRID_BANCO: TIntegerField;
    cds_CRSITUACAO: TStringField;
    cds_CRSELECIONOU: TStringField;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    Panel5: TPanel;
    BitBtn10: TBitBtn;
    Edit7: TEdit;
    Label14: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Panel7: TPanel;
    Label21: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Panel8: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    BitBtn9: TBitBtn;
    Data3: TDateEdit;
    Data4: TDateEdit;
    BitBtn99: TBitBtn;
    Panel9: TPanel;
    Label2: TLabel;
    edCodCliente: TEdit;
    BitBtn1: TBitBtn;
    sds_CRTITULO: TIntegerField;
    cds_CRTITULO: TIntegerField;
    Panel10: TPanel;
    Label22: TLabel;
    BitBtn13: TBitBtn;
    Edit8: TEdit;
    BitBtn14: TBitBtn;
    VCLReport1: TVCLReport;
    scdsCp_proc1TITULO: TIntegerField;
    scdsCp_proc1ID_RECEBIMENTOS: TIntegerField;
    scdsCp_proc1ID_SOCIO: TIntegerField;
    scdsCp_proc1VENCIMENTO: TDateField;
    scdsCp_proc1DATA_PAG: TDateField;
    scdsCp_proc1STATUS: TStringField;
    scdsCp_proc1VALOR_NF: TFloatField;
    scdsCp_proc1VALOR_RECEBER: TFloatField;
    scdsCp_proc1PARCELA: TIntegerField;
    scdsCp_proc1VALOR_1VIA: TFloatField;
    scdsCp_proc1SELECIONOU: TStringField;
    scdsCp_proc1VALOR_PAGO: TFloatField;
    scdsCp_proc1VALOR_DIF: TFloatField;
    scdsCp_proc1LOTE: TIntegerField;
    scdsCp_proc1SITUACAO: TStringField;
    scdsCp_proc1TIPO_DOC: TStringField;
    scdsCp_proc1NOME_SOCIO: TStringField;
    scdsCp_proc1GRUPO: TStringField;
    scdsCp_proc1N_INSCRICAO: TIntegerField;
    scdsCp_proc1NOME: TStringField;
    scdsCp_proc1CODIGO: TIntegerField;
    scdsCp_proc1MENSAL: TIntegerField;
    scdsCp_proc1TRIMESTRAL: TIntegerField;
    sdsC: TSQLDataSet;
    dspC: TDataSetProvider;
    scdsCp_procC: TClientDataSet;
    sds_pago: TSQLDataSet;
    sds_pagoPAGO: TFloatField;
    ds_pago: TDataSource;
    sds_pendente: TSQLDataSet;
    sds_pendentePENDENTE: TFloatField;
    ds_pendente: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    sds_registros: TSQLDataSet;
    ds_registros: TDataSource;
    sds_registrosTOTAL: TIntegerField;
    DBText1: TDBText;
    Label6: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    BitBtn8: TBitBtn;
    sds_CRCOBRADOR: TIntegerField;
    cds_CRCOBRADOR: TIntegerField;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    Label15: TLabel;
    BitBtn17: TBitBtn;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    pnl1: TPanel;
    btn1: TBitBtn;
    DatA5: TDateEdit;
    DatA6: TDateEdit;
    edt1: TEdit;
    lbl1: TLabel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    edt2: TEdit;
    lbl2: TLabel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Edit5: TEdit;
    rgSituacao: TRadioGroup;
    OpenDialog1: TOpenDialog;
    BitBtn5: TBitBtn;
    Edit6: TEdit;
    Label4: TLabel;
    BitBtn7: TBitBtn;
    BitBtn15: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1VALOR_NF: TFloatField;
    SQLDataSet1VALOR_RECEBER: TFloatField;
    SQLDataSet1VENCIMENTO: TDateField;
    SQLDataSet1DATA_PAG: TDateField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VALOR_PAGO: TFloatField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_A_REC: TFloatField;
    SQLDataSet1TITULO: TIntegerField;
    SQLDataSet1VALOR_1VIA: TFloatField;
    SQLDataSet1ID_SOCIO: TIntegerField;
    SQLDataSet1LOTE: TIntegerField;
    SQLDataSet1GEROU: TStringField;
    SQLDataSet1GRUPO: TStringField;
    SQLDataSet1COBRADOR: TIntegerField;
    SQLDataSet1NOMEARQUIVORETORNO: TStringField;
    SQLDataSet1NOME_SOCIO: TStringField;
    SQLDataSet1N_INSCRICAO: TIntegerField;
    SQLDataSet1GRUPO_1: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsRecS: TClientDataSet;
    cdsRecSVALOR_NF: TFloatField;
    cdsRecSVALOR_RECEBER: TFloatField;
    cdsRecSVENCIMENTO: TDateField;
    cdsRecSDATA_PAG: TDateField;
    cdsRecSSTATUS: TStringField;
    cdsRecSVALOR_PAGO: TFloatField;
    cdsRecSEMISSAO: TDateField;
    cdsRecSVALOR_A_REC: TFloatField;
    cdsRecSTITULO: TIntegerField;
    cdsRecSVALOR_1VIA: TFloatField;
    cdsRecSID_SOCIO: TIntegerField;
    cdsRecSLOTE: TIntegerField;
    cdsRecSGEROU: TStringField;
    cdsRecSGRUPO: TStringField;
    cdsRecSCOBRADOR: TIntegerField;
    cdsRecSNOMEARQUIVORETORNO: TStringField;
    cdsRecSNOME_SOCIO: TStringField;
    cdsRecSN_INSCRICAO: TIntegerField;
    cdsRecSGRUPO_1: TStringField;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    DBEdit3: TDBEdit;
    RxLabel4: TRxLabel;
    sds_emitidos: TSQLDataSet;
    FloatField1: TFloatField;
    ds_emitidos: TDataSource;
    ds_reneg: TDataSource;
    sds_reneg: TSQLDataSet;
    FloatField2: TFloatField;
    DBEdit4: TDBEdit;
    RxLabel5: TRxLabel;
    sds_acordo: TSQLDataSet;
    FloatField3: TFloatField;
    ds_acordo: TDataSource;
    DBEdit5: TDBEdit;
    RxLabel6: TRxLabel;
    BitBtn16: TBitBtn;
    sds_canc: TSQLDataSet;
    FloatField4: TFloatField;
    ds_canc: TDataSource;
    DBEdit6: TDBEdit;
    RxLabel7: TRxLabel;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField1: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField4: TIntegerField;
    FloatField7: TFloatField;
    StringField2: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField5: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField10: TFloatField;
    IntegerField10: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    DateField3: TDateField;
    SmallintField1: TSmallintField;
    StringField14: TStringField;
    IntegerField11: TIntegerField;
    DBEdit7: TDBEdit;
    RxLabel8: TRxLabel;
    ds_inativos: TDataSource;
    sds_inativos: TSQLDataSet;
    sds_inativosPENDENTE: TFloatField;
    scdsCp_procCTITULO: TIntegerField;
    scdsCp_procCID_RECEBIMENTOS: TIntegerField;
    scdsCp_procCID_SOCIO: TIntegerField;
    scdsCp_procCVENCIMENTO: TDateField;
    scdsCp_procCDATA_PAG: TDateField;
    scdsCp_procCSTATUS: TStringField;
    scdsCp_procCVALOR_NF: TFloatField;
    scdsCp_procCVALOR_RECEBER: TFloatField;
    scdsCp_procCPARCELA: TIntegerField;
    scdsCp_procCVALOR_1VIA: TFloatField;
    scdsCp_procCSELECIONOU: TStringField;
    scdsCp_procCVALOR_PAGO: TFloatField;
    scdsCp_procCVALOR_DIF: TFloatField;
    scdsCp_procCLOTE: TIntegerField;
    scdsCp_procCSITUACAO: TStringField;
    scdsCp_procCTIPO_DOC: TStringField;
    scdsCp_procCCOBRADOR: TIntegerField;
    scdsCp_procCEMISSAO: TDateField;
    scdsCp_procCNOME_SOCIO: TStringField;
    scdsCp_procCGRUPO: TStringField;
    scdsCp_procCN_INSCRICAO: TIntegerField;
    scdsCp_proc: TClientDataSet;
    scdsCp_procTITULO: TIntegerField;
    scdsCp_procID_RECEBIMENTOS: TIntegerField;
    scdsCp_procID_SOCIO: TIntegerField;
    scdsCp_procVENCIMENTO: TDateField;
    scdsCp_procDATA_PAG: TDateField;
    scdsCp_procSTATUS: TStringField;
    scdsCp_procVALOR_NF: TFloatField;
    scdsCp_procVALOR_RECEBER: TFloatField;
    scdsCp_procPARCELA: TIntegerField;
    scdsCp_procVALOR_1VIA: TFloatField;
    scdsCp_procSELECIONOU: TStringField;
    scdsCp_procVALOR_PAGO: TFloatField;
    scdsCp_procVALOR_DIF: TFloatField;
    scdsCp_procLOTE: TIntegerField;
    scdsCp_procSITUACAO: TStringField;
    scdsCp_procTIPO_DOC: TStringField;
    scdsCp_procNOME_SOCIO: TStringField;
    scdsCp_procGRUPO: TStringField;
    scdsCp_procN_INSCRICAO: TIntegerField;
    scdsCp_procNOME: TStringField;
    scdsCp_procCODIGO: TIntegerField;
    scdsCp_procMENSAL: TIntegerField;
    scdsCp_procTRIMESTRAL: TIntegerField;
    scdsCp_procPENDENTE: TFloatField;
    scdsCp_procCOBRADOR: TIntegerField;
    scdsCp_procENDERECO: TStringField;
    scdsCp_procFONE: TStringField;
    scdsCp_procCEP: TStringField;
    scdsCp_procESTADO: TStringField;
    scdsCp_procMUNICIPIO: TStringField;
    scdsCp_procBAIRRO: TStringField;
    scdsCp_procEMISSAO: TDateField;
    scdsCp_procTIPOEND: TSmallintField;
    scdsCp_procNOMEARQUIVORETORNO: TStringField;
    scdsCp_procID_COB: TIntegerField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    CheckConf: TCheckBox;
    FlatGauge1: TFlatGauge;
    Label5: TLabel;
    Timer1: TTimer;
    jdata: TJvDatePickerEdit;
    Edit10: TEdit;
    sdsParametro: TSQLDataSet;
    sdsParametroPARAMETRO: TStringField;
    sdsParametroDESCRICAO: TStringField;
    sdsParametroCONFIGURADO: TStringField;
    sdsParametroPARAMETRO1: TStringField;
    sdsParametroPARAMETRO2: TStringField;
    sdsParametroPARAMETRO3: TStringField;
    sdsParametroPARAMETRO4: TStringField;
    sdsParametroPARAMETRO5: TStringField;
    sdsParametroPARAMETRO6: TStringField;
    sdsParametroPARAMETRO7: TStringField;
    sdsParametroPARAMETRO8: TStringField;
    sdsParametroPARAMETRO9: TStringField;
    PopupMenu1: TPopupMenu;
    marcarTodos: TMenuItem;
    desmarcar: TMenuItem;
    Label10: TLabel;
    Label11: TLabel;
    cdsCaixa: TClientDataSet;
    dspCaixa: TDataSetProvider;
    sqlCaixa: TSQLDataSet;
    sqlCaixaLOGIN: TStringField;
    cdsCaixaLOGIN: TStringField;
    dsCaixa: TDataSource;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    sdsZ: TSQLDataSet;
    dspZ: TDataSetProvider;
    scdsCp_procZ: TClientDataSet;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    DateField4: TDateField;
    DateField5: TDateField;
    StringField15: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    IntegerField15: TIntegerField;
    FloatField13: TFloatField;
    StringField16: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    IntegerField16: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    FloatField16: TFloatField;
    StringField28: TStringField;
    DataSource2: TDataSource;
    scdsCp_procZEMISSAO: TDateField;
    btnCaixa: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnBaixarTituloClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn99Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn14Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure dspCUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure marcarTodosClick(Sender: TObject);
    procedure desmarcarClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_CR1: TFiltro_CR1;
  texto_relatorio : string;

implementation

uses UDM, uProcurar, uReceber, uProc_socio, Rel_obitos, uReceber_MS,
  uFiltroProcura, uProcGrupo, uProcura_Trimestral, uPrincipal, uRecibo,
  uSocio_Procura, sCtrlResize, uMov ;


{$R *.dfm}

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


procedure TFiltro_CR1.BitBtn2Click(Sender: TObject);
begin
  ComboBox1.Text := '';
end;

procedure TFiltro_CR1.BitBtn4Click(Sender: TObject);
begin
  scdscp_proc.Close;
//  cbStatus.Text:='';
  edcodcliente.Text:='';
  edit3.Text:='';
  data1.Text:='  /  /  ';
  data2.Text:='  /  /  ';
//  ComboBox1.Text := '';
//  ComboBox2.Text := '';
//  ComboBox3.Text := '';
//  Edit1.Text := '';
  Edit2.Text := '';
  Edit7.Text := '';    
end;

procedure TFiltro_CR1.BitBtn1Click(Sender: TObject);
begin
   varonde := 3;
   fSocio_Procura.ShowModal;
end;

procedure TFiltro_CR1.BitBtn8Click(Sender: TObject);
begin
  Edit2.Text := '';
  Edit3.Text := '';
  edCodCliente.Text := '';
end;

procedure TFiltro_CR1.BitBtn3Click(Sender: TObject);
begin
 Edit1.Text := '';
end;

procedure TFiltro_CR1.BitBtn10Click(Sender: TObject);
begin
  Edit7.Text := '';
end;

procedure TFiltro_CR1.BitBtn11Click(Sender: TObject);
begin
  Close;
end;

procedure TFiltro_CR1.DBGrid1TitleClick(Column: TColumn);
begin
 scdsCp_proc.IndexFieldNames := Column.FieldName;
end;

procedure TFiltro_CR1.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
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

   if scdsCp_procSITUACAO.AsString = 'Inativo' then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := clYellow;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCp_procSTATUS then
   if scdsCp_procSTATUS.AsString = 'Pendente' then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCp_procSTATUS then
   if scdsCp_procSTATUS.AsString = 'Pago' then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCp_procVALOR_RECEBER then
  begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
  if Column.Field = scdsCp_procVALOR_PAGO then
  begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;

    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);

end;

procedure TFiltro_CR1.BitBtn6Click(Sender: TObject);
begin
  fReceber := TfReceber.Create(Application);
  try
    receber := 'GRUPO';
    fReceber.Edit1.Text := scdsCp_procGRUPO.AsString;
    fReceber.Edit2.Text := IntToStr(scdsCp_procN_INSCRICAO.AsInteger);
    fReceber.Edit3.Text := scdsCp_procNOME_SOCIO.AsString;
       // precisar corrigir para fazer essa buscar
   // fReceber.Edit4.Text := scdsCp_procNOME.AsString;

    fReceber.ShowModal;
  finally
    fReceber.Free;
    BitBtn12.Click;
  end;
end;

procedure TFiltro_CR1.BitBtn9Click(Sender: TObject);
begin
//  cbStatus.Text :='';
  data1.Text:='  /  /    ';
  data2.Text:='  /  /    ';
end;

procedure TFiltro_CR1.BitBtn12Click(Sender: TObject);
Var
  SqlTexto, DataStr, DataStr1,total_Str, Val_recebido , sql_reneg , mostrar : String;
  Pago, Pendente,Emitidos,Renegociado,Acordo,Cancelado,Inativo, SqlTexto1,sqlTextoEn ,SqlTexto2, registros: String;
  total : integer;
  valor_titulo, valor_recebido,valor_resto , pend :Double;
  Save_Cursor:TCursor;
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
  DBEdit4.Text := '';
  DBEdit5.Text := '';
  DBEdit6.Text := '';
  DBEdit7.Text := '';
  texto_relatorio := '';
  label5.Caption := '...';
  FlatGauge1.MinValue := 0;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    inherited;

  if(CheckConf.Checked = False) then
  begin

    DataSource1.DataSet := scdsCp_proc;

    if sds.Active then
       sds.Close;
    sds.CommandText:='';

    if scdsCp_proc.Active then
       scdsCp_proc.Close;

     sds.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.ID_SOCIO, cr.VENCIMENTO, ' +
     'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, ' +
     'cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, ob.situacao, cr.TIPO_DOC, cr.COBRADOR,cr.EMISSAO , ' +
     'ob.NOME_SOCIO, ob.GRUPO, ob.N_INSCRICAO,co.NOME, cr.CODIGO, ob.CODIGO as mensal,  ' +      //
     'ob.CODIGO_T as trimestral, cr.VALOR_RECEBER as Pendente ,en.ENDERECO , en.tipoend , ' +
     'en.FONE , en.CEP, en.ESTADO, mu.municipio, ba.bairro ,ob.ID_COB , cr.NOMEARQUIVORETORNO , ob.CPF_CGC ,cr.CAIXA ' +  //
     'from RECEBIMENTOS cr inner join SOCIOS ob ' +
     'on ob.ID_SOCIO = cr.ID_SOCIO  ' +
     'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ' +
     'left outer join ENDERECO en on en.ID_SOCIO = ob.ID_SOCIO  left outer join BAIRRO ba ' +
     'on ba.ID_BAIRRO = en.ID_BAIRRO left outer join MUNICIPIO mu on mu.ID_MUNICIPIO = en.ID_MUNICIPIO ';
 {

 sds.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.ID_SOCIO, cr.VENCIMENTO, ' +
     'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, ' +
     'cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, ob.situacao, cr.TIPO_DOC, cr.COBRADOR,cr.EMISSAO , ' +
     'ob.NOME_SOCIO, ob.GRUPO, ob.N_INSCRICAO ,co.NOME ,cr.NOMEARQUIVORETORNO ,ob.CPF_CGC ' +
     ' from RECEBIMENTOS cr inner join SOCIOS ob ' +
     'on ob.ID_SOCIO = cr.ID_SOCIO ' +
     ' left outer join COBRANCA co on co.ID_COB = ob.ID_COB ' ;

  }

   //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de vencimento foi preenchido
    //------------------------------------------------------------------------------
    try
    if (data1.Text<>datastr) then
    StrToDate(data1.Text);
    if (data2.Text<>datastr) then
    StrToDate(data2.Text);
    if (data1.Text<>datastr) then
    if (data2.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.VENCIMENTO between '
      else
        sqlTexto := sqlTexto + ' and cr.VENCIMENTO between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data1.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       data1.SetFocus;
    end;
    end;
    //==============================================================================
    datastr1:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de Pagamento foi preenchido
    //------------------------------------------------------------------------------
    try
    if (Data3.Text<>datastr1) then
    StrToDate(data3.Text);
    if (Data4.Text<>datastr1) then
    StrToDate(data4.Text);
    if (Data3.Text<>datastr1) then
    if (Data4.Text<>datastr1) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.DATA_PAG between '
      else
        sqlTexto := sqlTexto + ' and cr.DATA_PAG between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data3.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data4.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data3.SetFocus;
    end;
    end;

   //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de Emissão foi preenchido
    //------------------------------------------------------------------------------
    try
    if (data5.Text<>datastr) then
    StrToDate(data5.Text);
    if (data6.Text<>datastr) then
    StrToDate(data6.Text);
    if (data5.Text<>datastr) then
    if (data6.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.EMISSAO between '
      else
        sqlTexto := sqlTexto + ' and cr.EMISSAO between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data5.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data6.Text)) + '''';

    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       data5.SetFocus;
    end;
    end;

    sql_reneg := sqlTexto  ;
    //==============================================================================
    //Arquivo Retorno
    //------------------------------------------------------------------------------
    if Edit6.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.NOMEARQUIVORETORNO = '
      else
        sqlTexto := sqlTexto + ' and cr.NOMEARQUIVORETORNO = ';
        sqlTexto := sqlTexto + '''' + Edit6.Text + '''';
    end;

   //==============================================================================

    //==============================================================================
    //------------------------------------------------------------------------------
    //Sócio
    //------------------------------------------------------------------------------
    if edCodCliente.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.NOME_SOCIO = '
      else
        sqlTexto := sqlTexto + ' and ob.NOME_SOCIO = ';
        sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //GRUPO
   //------------------------------------------------------------------------------
    if Edit2.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.GRUPO = '
      else
        sqlTexto := sqlTexto + ' and ob.GRUPO = ';
        sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //Inscrição
   //------------------------------------------------------------------------------
    if Edit3.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.N_INSCRICAO = '
      else
        sqlTexto := sqlTexto + ' and ob.N_INSCRICAO = ';
        sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //Lote
   //------------------------------------------------------------------------------
    if Edit7.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.LOTE = '
      else
        sqlTexto := sqlTexto + ' and cr.LOTE = ';
        sqlTexto := sqlTexto + '' + Edit7.Text + '';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //Título
   //------------------------------------------------------------------------------

    if Edit1.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.TITULO = '
      else
        sqlTexto := sqlTexto + ' and cr.TITULO = ';
        sqlTexto := sqlTexto + '''' + Edit1.Text + '''';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //Título
   //------------------------------------------------------------------------------

    if Edit8.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.CODIGO = '
      else
        sqlTexto := sqlTexto + ' and cr.CODIGO = ';
        sqlTexto := sqlTexto + '''' + Edit8.Text + '''';
    end;


   //==============================================================================
   //------------------------------------------------------------------------------
   //Cobrador
   //------------------------------------------------------------------------------
    if Edit4.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.ID_COB = '
      else
        sqlTexto := sqlTexto + ' and ob.ID_COB = ';
        sqlTexto := sqlTexto + '' + Edit4.Text + '';
    end;

      SqlTexto2 := SqlTexto;

   //==============================================================================
   //------------------------------------------------------------------------------
   //Status
   //------------------------------------------------------------------------------
    if ComboBox1.Text<>'' then
    begin
      if ComboBox1.Text <> 'Todos' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS = '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
      end
      else
      begin
     {   if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''';
      end;
    end;
    }



        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and ( cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pendente' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Acordo' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Cancelado' + ''')';

      //  sqlTexto := sqlTexto + QuotedStr('Renegociado');
     //   sqlTexto := sqlTexto + QuotedStr(')') ;

      end;
    end;
      SqlTexto1 := SqlTexto;
   //==============================================================================


    if DBComboBox1.Text <> '' then
    begin
      if DBComboBox1.Text <> 'd' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.CAIXA = '
        else
          sqlTexto := sqlTexto + ' and cr.CAIXA = ';
        sqlTexto := sqlTexto + '''' + DBComboBox1.Text + '''';
      end
      else
      begin
     {   if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' and cr.STATUS <> ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''';
     }
      end;

    end;




   //------------------------------------------------------------------------------
   //Quem Recebeu
   //------------------------------------------------------------------------------
    if edt2.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.COBRADOR = '
      else
        sqlTexto := sqlTexto + ' and cr.COBRADOR = ';
        sqlTexto := sqlTexto + '''' + edt2.Text + '''';
    end;

    if ComboBox2.Text <> '' then
    begin
        sqlTexto := sqlTexto + ' and ob.PLANO = ';
        sqlTexto := sqlTexto + '''' + ComboBox2.Text + '''';
    end;

      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.SITUACAO <> '
      else
        sqlTexto := sqlTexto + ' and cr.SITUACAO = ';
      sqlTexto := sqlTexto + '''' + 'Ativo' + '''';


 // 15/02/16 voltei dia 31/10/2016
   sqlTextoEn := ' and(en.TIPOEND = 0)';

    if ComboBox1.Text <> 'Acordo' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ((cr.TIPO_DOC <> '
      else
        sqlTexto := sqlTexto + ' and ((cr.TIPO_DOC <> ';
      sqlTexto := sqlTexto + QuotedStr('OB');
      sqlTexto := sqlTexto + ') or (cr.TIPO_DOC is null)) ';
    end;
       // 22/01/2016

   if (rgSituacao.ItemIndex = 0) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Ativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Ativo');
   end;

   if (rgSituacao.ItemIndex = 1) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Inativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Inativo');
   end;

   if (rgSituacao.ItemIndex = 2) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Outros')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Outros');
   end;


 {

   if (rgSituacao.ItemIndex = 0) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Inativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Inativo');
   end;

   if (rgSituacao.ItemIndex = 1) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Ativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Ativo');
   end;


    if (rgSituacao.ItemIndex =2) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Outros')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Outros');
   end;
  }
 //  sqlTexto := sqlTexto + ' and cr.SITUACAO = ''Ativo''';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Group By
    //------------------------------------------------------------------------------

    {  sqlTexto2 := ' Group by ob.NOME_SOCIO, cr.VENCIMENTO, cr.TITULO, cr.ID_RECEBIMENTOS, '+
      'cr.ID_SOCIO, cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, '+
      'cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE,cr.EMISSAO, ' +
      'cr.situacao, cr.TIPO_DOC, cr.COBRADOR, ob.GRUPO, ob.N_INSCRICAO, co.NOME, cr.CODIGO, ' +
      'ob.CODIGO, ob.CODIGO_T ,en.ENDERECO ,en.tipoend, en.FONE, en.ESTADO, en.CEP, ba.bairro, mu.municipio';
      }
      sqlTexto2 := ' order by ob.SITUACAO, ob.NOME_SOCIO, cr.VENCIMENTO ';
    //==============================================================================
    //------------------------------------------------------------------------------
      texto_relatorio := sds.CommandText + (sqlTexto + sqltextoen ) + sqlTexto2;
      sds.CommandText := sds.CommandText + (sqlTexto + sqltextoen ) + sqlTexto2;
   //    sds.CommandText := sds.CommandText + sqlTexto + sqlTexto2;
       scdsCp_proc.Open;
  end;
                                    //// começa conf
  /////////////////////////////////

   if(CheckConf.Checked = True) then
   begin
    if sdsC.Active then
       sdsC.Close;
    sdsC.CommandText:='';

    DataSource1.DataSet := scdsCp_procC;

    Label5.Caption := ' Aguarde , consultando ......';

    if scdsCp_procC.Active then
       scdsCp_procC.Close;



 sdsC.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.ID_SOCIO, cr.VENCIMENTO, ' +
     'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, ' +
     'cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, ob.situacao, cr.TIPO_DOC, cr.COBRADOR,cr.EMISSAO , ' +
     'ob.NOME_SOCIO, ob.GRUPO, ob.N_INSCRICAO ' +
     ' from RECEBIMENTOS cr inner join SOCIOS ob ' +
     'on ob.ID_SOCIO = cr.ID_SOCIO ' ;

   //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de vencimento foi preenchido
    //------------------------------------------------------------------------------
    try
    if (data1.Text<>datastr) then
    StrToDate(data1.Text);
    if (data2.Text<>datastr) then
    StrToDate(data2.Text);
    if (data1.Text<>datastr) then
    if (data2.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.VENCIMENTO between '
      else
        sqlTexto := sqlTexto + ' and cr.VENCIMENTO between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data1.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       data1.SetFocus;
    end;
    end;
    //==============================================================================
    datastr1:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de Pagamento foi preenchido
    //------------------------------------------------------------------------------
    try
    if (Data3.Text<>datastr1) then
    StrToDate(data3.Text);
    if (Data4.Text<>datastr1) then
    StrToDate(data4.Text);
    if (Data3.Text<>datastr1) then
    if (Data4.Text<>datastr1) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.DATA_PAG between '
      else
        sqlTexto := sqlTexto + ' and cr.DATA_PAG between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data3.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data4.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data3.SetFocus;
    end;
    end;

   //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de Emissão foi preenchido
    //------------------------------------------------------------------------------
    try
    if (data5.Text<>datastr) then
    StrToDate(data5.Text);
    if (data6.Text<>datastr) then
    StrToDate(data6.Text);
    if (data5.Text<>datastr) then
    if (data6.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.EMISSAO between '
      else
        sqlTexto := sqlTexto + ' and cr.EMISSAO between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data5.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data6.Text)) + '''';

    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       data5.SetFocus;
    end;
    end;

   sql_reneg := sqlTexto  ;
    //==============================================================================



  ///////   SqlTexto2 := SqlTexto;
   //==============================================================================
   //------------------------------------------------------------------------------
   //Status
    if (ComboBox1.Text = 'Todos') then
    begin
      ComboBox1.Text := '';
    end;

   //------------------------------------------------------------------------------
    if ((ComboBox1.Text <> '') or(ComboBox1.Text = 'Todos')) then
    begin
      if (ComboBox1.Text <> 'Todos') then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS = '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
      end
      else
      begin

        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and ( cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pendente' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Acordo' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Cancelado' + ''')';



      end;
    end;

   //==============================================================================


       // 22/01/2016

   if (rgSituacao.ItemIndex = 0) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Ativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Ativo');
   end;

   if (rgSituacao.ItemIndex = 1) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Inativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Inativo');
   end;

   if (rgSituacao.ItemIndex = 2) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Outros')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Outros');
   end;

    //------------------------------------------------------------------------------
    //Order By

      sqlTexto2 := ' order by ob.SITUACAO, ob.NOME_SOCIO, cr.VENCIMENTO ';
    //==============================================================================
    //------------------------------------------------------------------------------

       sds.CommandText := sdsC.CommandText + sqltexto + sqlTexto2;
       scdsCp_procC.Open;
       FlatGauge1.MaxValue := 100;
       FlatGauge1.Progress := FlatGauge1.Progress + 30;
       Label5.Caption := ' Consulta realizada ......';
  end;



  //////////////////////////////////

                                  ///// termina o conf

    //------------------------------------------------------------------------------
    //Totais
    //------------------------------------------------------------------------------
          //emitidos
    if (ComboBox1.Text = '') then
    begin
      ComboBox1.Text := 'Todos';
    end;

    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_emitidos.Active) then
       sds_emitidos.Close;
      Emitidos := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
                  'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Emitidos := Emitidos + SqlTexto ;
      sds_emitidos.CommandText := Emitidos;
      sds_emitidos.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
          // renegociado
    Label5.Caption := ' Consultando  Renegociado ......';
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_reneg.Active) then
       sds_reneg.Close;
      Renegociado := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Renegociado := Renegociado + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Renegociado') ;
      sds_reneg.CommandText := Renegociado;
      sds_reneg.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
      Label5.Caption := ' Consultando  Renegociado ......';
               // renegociado
    end;
    if (ComboBox1.Text = 'Renegociado') then
    begin
    if (sds_reneg.Active) then
       sds_reneg.Close;
      Renegociado := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Renegociado := Renegociado + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Renegociado') ;
      sds_reneg.CommandText := Renegociado;
      sds_reneg.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
          // acordo
    Label5.Caption := ' Consultando  Acordo ......';
    if (ComboBox1.Text = 'Acordo') then
    begin
    if (sds_acordo.Active) then
       sds_acordo.Close;
      Acordo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ; //+
      //  'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
      Acordo := Acordo + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Acordo') ;
      sds_acordo.CommandText := Acordo;
      sds_acordo.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
           // acordo
    end;
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_acordo.Active) then
       sds_acordo.Close;
      Acordo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ; //+
      //  'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
      Acordo := Acordo + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Acordo') ;
      sds_acordo.CommandText := Acordo;
      sds_acordo.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;


                      // pendente
    if(rgSituacao.ItemIndex = 0)then
    mostrar := 'Ativo';
    if(rgSituacao.ItemIndex = 1)then
    mostrar := 'Inativo';
    if(rgSituacao.ItemIndex = 2)then
    mostrar := 'Outros';

    Label5.Caption := ' Consultando  Pendentes ......';
    if (ComboBox1.Text = 'Pendente')  then
    begin
      if (sds_pendente.Active) then
      sds_pendente.Close;
      Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pendente := Pendente + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr(mostrar) ;
      sds_pendente.CommandText := Pendente;
      sds_pendente.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
                          // pendente
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_pendente.Active) then
      sds_pendente.Close;
      Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pendente := Pendente + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr(mostrar) ;
      sds_pendente.CommandText := Pendente;
      sds_pendente.Open;
      pend := sds_pendentePENDENTE.Value;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;



    end;               // pago
    Label5.Caption := ' Consultando  Pago ......';
     if (ComboBox1.Text = 'Pago') then
    begin
    if (sds_pago.Active) then
        sds_pago.Close;
      Pago := 'SELECT SUM(VALOR_PAGO) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pago := Pago + SqlTexto;
      sds_pago.CommandText := Pago;
      sds_pago.Open;
    end;
                           // pago
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_pago.Active) then
        sds_pago.Close;
      Pago := 'SELECT SUM(VALOR_PAGO) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pago := Pago + SqlTexto ;
      sds_pago.CommandText := Pago;
      sds_pago.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;

                          // Cancelado
    Label5.Caption := ' Consultando  Cancelado ......';
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_canc.Active) then
      sds_canc.Close;
      Cancelado := 'SELECT SUM(VALOR_RECEBER) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Cancelado := Cancelado + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Cancelado') ;
      sds_canc.CommandText := Cancelado;
      sds_canc.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
    if (ComboBox1.Text = 'Cancelado')  then
    begin
      if (sds_canc.Active) then
      sds_canc.Close;
      Cancelado := 'SELECT SUM(VALOR_RECEBER) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Cancelado := Cancelado + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Cancelado') ;
      sds_canc.CommandText := Cancelado;
      sds_canc.Open;

    end;

                          // Inativo
     Label5.Caption := ' Consultando  Inativo ......';
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_inativos.Active) then
      sds_inativos.Close;
      Inativo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Inativo := Inativo + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Inativo') ;
      sds_inativos.CommandText := Inativo;
      sds_inativos.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
    if (ComboBox1.Text = 'Inativo')  then
    begin
      if (sds_inativos.Active) then
      sds_inativos.Close;
      Inativo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Inativo := Inativo + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Inativo') ;
      sds_inativos.CommandText := Inativo;
      sds_inativos.Open;
    end;





                //contar registros
    Label5.Caption := ' Contando Registros ......';

    if (sds_registros.Active) then
        sds_registros.Close;
    registros := 'SELECT Count(ID_RECEBIMENTOS) as total from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
    registros := registros + SqlTexto  ;
    sds_registros.CommandText := registros;
    sds_registros.Open;


  finally
    Screen.Cursor := Save_Cursor;
     Label5.Caption := ' Busca Finalizada ......';
  end;
    FlatGauge1.Progress := 100 ;
    Label5.Caption := ' Busca Finalizada ......';
end;

procedure TFiltro_CR1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TFiltro_CR1.BtnBaixarTituloClick(Sender: TObject);
var
  Save_Cursor:TCursor;
  mensa: string;
begin
  mensa := '';
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    scdsCp_proc.DisableControls;
    scdsCp_proc.First;
    while not scdsCp_proc.Eof do
    begin
      if (scdsCp_procSELECIONOU.AsString = 'S') then
        mensa := mensa + IntToStr(scdsCp_procTITULO.AsInteger)+ #10#13;
      scdsCp_proc.Next;
    end;
    if MessageDlg('Deseja realmente Baixar este título(s) : ' + #10#13 + mensa ,mtConfirmation, [mbYes,mbNo],0) = mrNo then
       exit;
    scdsCp_proc.First;
    while not scdsCp_proc.Eof do
    begin
      if scdsCp_procSELECIONOU.AsString = 'S' then
      begin
        if scdsCp_procSTATUS.AsString = 'Pago' then
        begin
          MessageDlg('só é permitida baixa de titulos que ainda não forão pagos.', mtWarning, [mbOK], 0);
          scdsCp_proc.Edit;
          scdsCp_procSELECIONOU.AsString := '';
          scdsCp_proc.ApplyUpdates(0);
          scdsCp_proc.EnableControls;
          exit;
        end;
        if cds_CR.Active then
          cds_cr.Close;
        cds_CR.Params[0].AsInteger := scdsCp_procID_RECEBIMENTOS.AsInteger;
        cds_CR.Open;
        cds_cr.Edit;
        cds_CRDATA_PAG.AsDateTime := now;
        cds_CRSTATUS.AsString := 'Pago';
        cds_CRVALOR_A_REC.AsFloat := cds_CRVALOR_RECEBER.AsFloat;
        cds_CRVALOR_PAGO.AsFloat := cds_CRVALOR_RECEBER.AsFloat;
        if edt2.Text <> '' then
         cds_CRCOBRADOR.AsInteger := StrToInt(edt2.Text);

        cds_CR.ApplyUpdates(0);
      end;
      scdsCp_proc.Next;
    end;
    scdsCp_proc.EnableControls;
    cds_CR.Close;
    BitBtn12.Click;
    MessageDlg('Título baixado com sucesso.', mtInformation, [mbOK], 0);
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TFiltro_CR1.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
  begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU')
        and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (scdsCp_procSELECIONOU.AsString = '') then
          scdsCp_procSELECIONOU.AsString := 'S'
        else
          scdsCp_procSELECIONOU.AsString := '';
      end;
end;

procedure TFiltro_CR1.ChkDBGridColEnter(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      DBGrid.Options := DBGrid.Options - [dgEditing];

end;

procedure TFiltro_CR1.ChkDBGridColExit(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then
      DBGrid.Options := DBGrid.Options + [dgEditing];

end;

procedure TFiltro_CR1.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCp_procSELECIONOU') then begin
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

//    if Field.AsBoolean then Index := 1 else Index := 0;
  if scdsCp_procSELECIONOU.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    Filtro_CR1.ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFiltro_CR1.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
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

procedure TFiltro_CR1.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TFiltro_CR1.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TFiltro_CR1.DBGrid1ColExit(Sender: TObject);
begin
ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TFiltro_CR1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TFiltro_CR1.BitBtn99Click(Sender: TObject);
begin
  data3.Text:='  /  /    ';
  data4.Text:='  /  /    ';
end;

procedure TFiltro_CR1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  atualizar : string;
  TD: TTransactionDesc;
begin

{   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   dm.SQLObitos.StartTransaction(TD);
   atualizar := '';
   atualizar := 'update recebimentos set selecionou = ';
   atualizar := atualizar + '''' + '' + '''';
   dm.SQLObitos.ExecuteDirect(atualizar);
   dm.SQLObitos.Commit(TD);
 }
  if dm.cds_socio.Active then
     dm.cds_socio.Close;
end;

procedure TFiltro_CR1.BitBtn14Click(Sender: TObject);
 var data1,data2  :TRpLabel;
begin
  if(CheckBox1.Checked = True) then
  VCLReport1.FileName := str_relatorio + 'CRS.rep'
  else
  VCLReport1.FileName := str_relatorio + 'CR.rep';

  if(CheckBox1.Checked = True) then
  VCLReport1.Title := str_relatorio + 'CRS.rep'
  else
  VCLReport1.Title := str_relatorio + 'CR.rep';

  VCLReport1.Report.DataInfo.Items[0].SQL := texto_relatorio;
  data1:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel8'));
  data2:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel10'));

  if(CheckBox1.Checked = True) then
  begin
    if (Data3.text <> '  /  /  ') then
    begin
      data1.Text := Data3.Text;
      data2.Text := Data4.Text;
    end;
  end;
  VCLReport1.Execute;

end;

procedure TFiltro_CR1.SpeedButton2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      edt1.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;

end;

procedure TFiltro_CR1.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TFiltro_CR1.DSPGetProproperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TFiltro_CR1.dspCUpdateData(Sender: TObject;
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

procedure TFiltro_CR1.SpeedButton1Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      edt2.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit5.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;

end;

procedure TFiltro_CR1.BitBtn13Click(Sender: TObject);
begin
 Edit8.Text := '';
end;

procedure TFiltro_CR1.SpeedButton3Click(Sender: TObject);
begin
 edt2.Text := '';
 Edit5.Text := '';
end;

procedure TFiltro_CR1.SpeedButton4Click(Sender: TObject);
begin
 edt1.Text := '';
 Edit4.Text := '';
end;

procedure TFiltro_CR1.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(Filtro_CR1));


  if cdsCaixa.Active then
    cdsCaixa.Close;
  cdsCaixa.Open;
  While not cdsCaixa.Eof do
  begin
    DBComboBox1.Items.Add(cdsCaixaLOGIN.AsString);
    cdsCaixa.Next;
  end;
  DBComboBox1.Text := '';


  sdsParametro.Open;
  sdsParametro.Locate('PARAMETRO', 'FUNERARIA',[loCaseInsensitive]);
  if (sdsParametroPARAMETRO1.AsString = 'MOGIANA1') then
  begin
    BitBtn6.Enabled := True;
    BtnBaixarTitulo.Enabled := True;
  end;

end;

procedure TFiltro_CR1.btn3Click(Sender: TObject);
begin
 edt1.Text := '';
 Edit4.Text := '';
end;

procedure TFiltro_CR1.btn2Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      edt1.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TFiltro_CR1.btn4Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      edt2.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit5.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
   end;
end;

procedure TFiltro_CR1.btn5Click(Sender: TObject);
begin
 edt2.Text := '';
 Edit5.Text := '';
end;

procedure TFiltro_CR1.BitBtn17Click(Sender: TObject);
var
  Save_Cursor:TCursor;
  mensa: string;
  MSWord , Doc,Docs: Variant;
  finallinha:boolean;
  i ,n  :Integer;
begin

  if (scdsCp_procSELECIONOU.AsString = '')then
  begin
    MessageDlg('Selecione qual etiquetas a Gerar', mtWarning, [mbOK], 0);
    exit;
  end;

  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:=False;

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '6080.doc');
  Docs:=MSWord.Documents;

  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  Doc := Docs.Open(Edit10.Text);
  MSWord.Visible:=False;
  CopyFile(Pchar(Edit10.Text),Pchar(Edit10.Text),True);

 // Doc:= MSWord.Documents;

  mensa := '';
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    scdsCp_proc.DisableControls;
    scdsCp_proc.First;
    while not scdsCp_proc.Eof do
    begin
     // if (scdsCp_procSELECIONOU.AsString = 'S') then
     //   mensa := mensa + scdsCp_procNOME_SOCIO.AsString+ #10#13;
      scdsCp_proc.Next;
    end;
    if MessageDlg('Deseja realmente Gerar esta(s) Etiqueta(s) : ' + #10#13 + mensa ,mtConfirmation, [mbYes,mbNo],0) = mrNo then
       exit;
    scdsCp_proc.First;
                           //15/08/13
  if finallinha=false then
  begin
    for i := 0 to (StrToInt(Edit9.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;
                          //           \\\



    while not scdsCp_proc.Eof do
    begin
      if scdsCp_procSELECIONOU.AsString = 'S' then
      begin
      { Escreve na  célula }
       MSWord.Selection.TypeText(Text :=trim('Grupo: ' + scdsCp_procGRUPO.Value + ' - Iscr. : ' + IntToStr(scdsCp_procN_INSCRICAO.Value))+
       #13+trim( scdsCp_procNOME_SOCIO.Value)+
       #13+trim(scdsCp_procENDERECO.Value + ' - ' + scdsCp_procBAIRRO.Value)//+
       //#13+trim('CEP: ' + scdsCp_procCEP.Value) //+
      // #13+trim(scdsCp_procMUNICIPIO.Value + ' - ' + scdsCp_procESTADO.Value)
       );

       if finallinha=false then
         begin
           { Pula 1 celula}
           MSWord.Selection.MoveRight(12);
         //  MSWord.Selection.MoveRight(12);
           finallinha:=true;
         end
       else
         begin
           { vai para a proxima celula }
           MSWord.Selection.MoveRight(12);
           finallinha:=false;
           end;
      end;
      scdsCp_proc.Next;
    end;
    scdsCp_proc.EnableControls;
    cds_CR.Close;
    //BitBtn12.Click;
   // MSWord.Visible:=true;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
    MSWord.Visible:=true;
    Doc.SaveAs('C:\home\atsscf\Etiquetas Geradas\' + Formatdatetime('ddmmyyyy',StrToDate(jdata.Text))+'.doc');

end;

procedure TFiltro_CR1.btn1Click(Sender: TObject);
begin
  DatA5.Text:='  /  /    ';
  DatA6.Text:='  /  /    ';
end;

procedure TFiltro_CR1.BitBtn5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
     Edit6.Text:= ExtractFileName(OpenDialog1.FileName);
    end;
    ComboBox1.Text := 'Pago';
end;

procedure TFiltro_CR1.BitBtn7Click(Sender: TObject);
begin
 Edit6.Text := '';
end;

procedure TFiltro_CR1.BitBtn15Click(Sender: TObject);
var nomearq : TRpLabel;
     sqlR : string;
begin
  if cdsRecS.Active then
    cdsRecS.Close;
   sqlR := 'SELECT rec.valor_nf,rec.valor_receber,rec.vencimento,rec.data_pag,rec.status,rec.valor_pago,rec.emissao,'+
    'rec.valor_a_rec,rec.titulo,rec.valor_1via, rec.id_socio,rec.lote,rec.gerou,rec.grupo,'+
    'rec.cobrador,rec.nomearquivoretorno, socios.nome_socio,socios.n_inscricao, socios.grupo '+
   'from socios  inner join recebimentos rec on (socios.id_socio = rec.id_socio)where rec.NOMEARQUIVORETORNO = ';
   sqlR := sqlR + QuotedStr(Edit6.Text) ;
   cdsRecS.CommandText := sqlR ;
  cdsRecS.Open;
 // Edit6.Text := Label7.Caption;
  VCLReport1.FileName := str_relatorio + 'rec_santander.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
  VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;
  nomearq:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
  // Arquivo
  if((Edit6.Text <> '')or(Edit6.Text = '') ) then
  begin
    nomearq.Text := Edit6.Text;
  end;
  VCLReport1.Execute;

end;

procedure TFiltro_CR1.BitBtn16Click(Sender: TObject);
begin
   fMov:=TfMov.Create(Application);
  try
    fMov.btnEcon.Visible := False;
    fMov.btnMensal.Visible := False;
    fMov.btnTri.Visible := False;
    fMov.btnSete.Visible := False;
    fMov.ShowModal;
  finally
    fMov.Free;
  end;
end;

procedure TFiltro_CR1.Timer1Timer(Sender: TObject);
begin
  label5.Visible := not label5.Visible
end;

procedure TFiltro_CR1.marcarTodosClick(Sender: TObject);
begin
  if (scdsCp_proc.Active) then
  begin
      scdsCp_proc.First;
      scdsCp_proc.DisableControls;
      while not scdsCp_proc.Eof do
      begin
        if scdsCp_proc.State = dsBrowse then
           scdsCp_proc.Edit;
        scdsCp_procSELECIONOU.AsString := 'S';
        scdsCp_proc.Post;
        scdsCp_proc.Next;
      end;
      scdsCp_proc.First;
      scdsCp_proc.EnableControls;
  end;
end;

procedure TFiltro_CR1.desmarcarClick(Sender: TObject);
begin
  if (scdsCp_proc.Active) then
  begin
      scdsCp_proc.First;
      scdsCp_proc.DisableControls;
      while not scdsCp_proc.Eof do
      begin
        if scdsCp_proc.State = dsBrowse then
           scdsCp_proc.Edit;
        scdsCp_procSELECIONOU.AsString := '';
        scdsCp_proc.Post;
        scdsCp_proc.Next;
      end;
      scdsCp_proc.First;
      scdsCp_proc.EnableControls;
  end;
end;

procedure TFiltro_CR1.btnCaixaClick(Sender: TObject);
var
  SqlTexto, DataStr, DataStr1,total_Str, Val_recebido , sql_reneg , mostrar : String;
  Pago, Pendente,Emitidos,Renegociado,Acordo,Cancelado,Inativo, SqlTexto1,sqlTextoEn ,SqlTexto2, registros: String;
  total : integer;
  valor_titulo, valor_recebido,valor_resto , pend :Double;
  Save_Cursor:TCursor;
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
  DBEdit4.Text := '';
  DBEdit5.Text := '';
  DBEdit6.Text := '';
  DBEdit7.Text := '';
  texto_relatorio := '';
  label5.Caption := '...';
  FlatGauge1.MinValue := 0;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    inherited;

  if(CheckConf.Checked = False) then
  begin
    DataSource1.DataSet := scdsCp_procZ;

    if sdsZ.Active then
      sdsZ.Close;
    sdsZ.CommandText:='';

    if scdsCp_procZ.Active then
      scdsCp_procZ.Close;
      sdsZ.CommandText:='select cr.TITULO, cr.ID_RECEBIMENTOS, cr.ID_SOCIO, cr.VENCIMENTO, ' +
      'cr.DATA_PAG, cr.STATUS, cr.VALOR_NF, cr.VALOR_RECEBER, cr.PARCELA, cr.VALOR_1VIA, cr.SELECIONOU, ' +
      'cr.VALOR_PAGO, cr.VALOR_DIF, cr.LOTE, ob.situacao, cr.TIPO_DOC, cr.COBRADOR,cr.EMISSAO , ' +
      'ob.NOME_SOCIO, ob.GRUPO, ob.N_INSCRICAO, cr.CODIGO, ob.CODIGO as mensal,  ' +      //
      'ob.CODIGO_T as trimestral, cr.VALOR_RECEBER as Pendente , ' +
      'cr.NOMEARQUIVORETORNO , ob.CPF_CGC ,cr.CAIXA ' +  //
      'from RECEBIMENTOS cr inner join SOCIOS ob ' +
      'on ob.ID_SOCIO = cr.ID_SOCIO ';


      datastr:='  /  /    ';

      //------------------------------------------------------------------------------
      //Verifica se a data de vencimento foi preenchido
      //------------------------------------------------------------------------------
  try
    if (data1.Text<>datastr) then
    StrToDate(data1.Text);
    if (data2.Text<>datastr) then
    StrToDate(data2.Text);
    if (data1.Text<>datastr) then
    if (data2.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cr.VENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and cr.VENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
  end;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      data1.SetFocus;
    end;
  end;


   datastr1:='  /  /    ';

    //------------------------------------------------------------------------------
    //Verifica se a data de Pagamento foi preenchido
    //------------------------------------------------------------------------------
    try
    if (Data3.Text<>datastr1) then
    StrToDate(data3.Text);
    if (Data4.Text<>datastr1) then
    StrToDate(data4.Text);
    if (Data3.Text<>datastr1) then
    if (Data4.Text<>datastr1) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.DATA_PAG between '
      else
        sqlTexto := sqlTexto + ' and cr.DATA_PAG between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data3.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(Data4.Text)) + '''';
    end;
    except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data3.SetFocus;
    end;
    end;

    //==============================================================================
    datastr:='  /  /    ';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Verifica se a data de Emissão foi preenchido
    //------------------------------------------------------------------------------
    try
    if (data5.Text<>datastr) then
    StrToDate(data5.Text);
    if (data6.Text<>datastr) then
    StrToDate(data6.Text);
    if (data5.Text<>datastr) then
    if (data6.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.EMISSAO between '
      else
        sqlTexto := sqlTexto + ' and cr.EMISSAO between ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data5.Text)) + '''';
        sqlTexto := sqlTexto + ' and ';
        sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(data6.Text)) + '''';

      end;
      except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         data5.SetFocus;
      end;
    end;

    sql_reneg := sqlTexto  ;
    //==============================================================================
    //Arquivo Retorno
    //------------------------------------------------------------------------------
    if Edit6.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.NOMEARQUIVORETORNO = '
      else
        sqlTexto := sqlTexto + ' and cr.NOMEARQUIVORETORNO = ';
        sqlTexto := sqlTexto + '''' + Edit6.Text + '''';
    end;

   //==============================================================================

    //==============================================================================
    //------------------------------------------------------------------------------
    //Sócio
    //------------------------------------------------------------------------------
    if edCodCliente.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.NOME_SOCIO = '
      else
        sqlTexto := sqlTexto + ' and ob.NOME_SOCIO = ';
        sqlTexto := sqlTexto + '''' + edCodCliente.Text + '''';
    end;

   //==============================================================================
   //------------------------------------------------------------------------------
   //GRUPO
   //------------------------------------------------------------------------------
    if Edit2.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.GRUPO = '
      else
        sqlTexto := sqlTexto + ' and ob.GRUPO = ';
        sqlTexto := sqlTexto + '''' + Edit2.Text + '''';
    end;

    //==============================================================================
    //------------------------------------------------------------------------------
    //Inscrição
    //------------------------------------------------------------------------------
    if Edit3.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.N_INSCRICAO = '
      else
        sqlTexto := sqlTexto + ' and ob.N_INSCRICAO = ';
        sqlTexto := sqlTexto + '''' + Edit3.Text + '''';
    end;

    //==============================================================================
    //------------------------------------------------------------------------------
    //Lote
    //------------------------------------------------------------------------------
    if Edit7.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.LOTE = '
      else
        sqlTexto := sqlTexto + ' and cr.LOTE = ';
        sqlTexto := sqlTexto + '' + Edit7.Text + '';
    end;

    //==============================================================================
    //------------------------------------------------------------------------------
    //Título
    //------------------------------------------------------------------------------

    if Edit1.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.TITULO = '
      else
        sqlTexto := sqlTexto + ' and cr.TITULO = ';
        sqlTexto := sqlTexto + '''' + Edit1.Text + '''';
    end;

    //==============================================================================
    //------------------------------------------------------------------------------
    //Título
    //------------------------------------------------------------------------------

    if Edit8.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.CODIGO = '
      else
        sqlTexto := sqlTexto + ' and cr.CODIGO = ';
        sqlTexto := sqlTexto + '''' + Edit8.Text + '''';
    end;


    //------------------------------------------------------------------------------
    //Cobrador
    //------------------------------------------------------------------------------
    if Edit4.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ob.ID_COB = '
      else
        sqlTexto := sqlTexto + ' and ob.ID_COB = ';
        sqlTexto := sqlTexto + '' + Edit4.Text + '';
    end;

    SqlTexto2 := SqlTexto;

    //------------------------------------------------------------------------------
    //Status
    //------------------------------------------------------------------------------
    if ComboBox1.Text<>'' then
    begin
      if ComboBox1.Text <> 'Todos' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS = '
        else
          sqlTexto := sqlTexto + ' and cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + ComboBox1.Text + '''';
      end
      else
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.STATUS <> '
        else
          sqlTexto := sqlTexto + ' and ( cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pago' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Pendente' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Acordo' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Renegociado' + '''' + ' or cr.STATUS = ';
        sqlTexto := sqlTexto + '''' + 'Cancelado' + ''')';

       end;
    end;
      SqlTexto1 := SqlTexto;
    //==============================================================================


    if DBComboBox1.Text <> '' then
    begin
      if DBComboBox1.Text <> 'd' then
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' where cr.CAIXA = '
        else
          sqlTexto := sqlTexto + ' and cr.CAIXA = ';
        sqlTexto := sqlTexto + '''' + DBComboBox1.Text + '''';
      end
      else
      begin
     {      }
      end;

    end;




    //------------------------------------------------------------------------------
    //Quem Recebeu
    //------------------------------------------------------------------------------
    if edt2.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where cr.COBRADOR = '
      else
        sqlTexto := sqlTexto + ' and cr.COBRADOR = ';
        sqlTexto := sqlTexto + '''' + edt2.Text + '''';
    end;

    if ComboBox2.Text <> '' then
    begin
        sqlTexto := sqlTexto + ' and ob.PLANO = ';
        sqlTexto := sqlTexto + '''' + ComboBox2.Text + '''';
    end;

    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cr.SITUACAO <> '
    else
      sqlTexto := sqlTexto + ' and cr.SITUACAO = ';
    sqlTexto := sqlTexto + '''' + 'Ativo' + '''';



    sqlTextoEn := ' and(en.TIPOEND = 0)';

    if ComboBox1.Text <> 'Acordo' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ((cr.TIPO_DOC <> '
      else
        sqlTexto := sqlTexto + ' and ((cr.TIPO_DOC <> ';
      sqlTexto := sqlTexto + QuotedStr('OB');
      sqlTexto := sqlTexto + ') or (cr.TIPO_DOC is null)) ';
    end;
       // 22/01/2016

   if (rgSituacao.ItemIndex = 0) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Ativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Ativo');
   end;

   if (rgSituacao.ItemIndex = 1) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Inativo')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Inativo');
   end;

   if (rgSituacao.ItemIndex = 2) then
   begin
     if sqlTexto='' then
       sqlTexto := sqlTexto + ' where ob.situacao = ' + QuotedStr('Outros')
     else
       sqlTexto := sqlTexto + ' and ob.situacao = ' + QuotedStr('Outros');
   end;


     //==============================================================================
    //------------------------------------------------------------------------------
    //Group By
    //------------------------------------------------------------------------------
      sqlTexto2 := ' order by ob.SITUACAO, ob.NOME_SOCIO, cr.VENCIMENTO ';
    //==============================================================================
    //------------------------------------------------------------------------------

      texto_relatorio := sdsZ.CommandText + sqlTexto  + sqlTexto2;
      sdsZ.CommandText := sdsZ.CommandText + sqlTexto + sqlTexto2;
      scdsCp_procZ.CommandText := sdsZ.CommandText ;
      scdsCp_procZ.Open;
  end;




    //------------------------------------------------------------------------------
    //Totais
    //------------------------------------------------------------------------------
          //emitidos
    if (ComboBox1.Text = '') then
    begin
      ComboBox1.Text := 'Todos';
    end;

    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_emitidos.Active) then
       sds_emitidos.Close;
      Emitidos := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
                  'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Emitidos := Emitidos + SqlTexto ;
      sds_emitidos.CommandText := Emitidos;
      sds_emitidos.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
          // renegociado
    Label5.Caption := ' Consultando  Renegociado ......';
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_reneg.Active) then
       sds_reneg.Close;
      Renegociado := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Renegociado := Renegociado + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Renegociado') ;
      sds_reneg.CommandText := Renegociado;
      sds_reneg.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
      Label5.Caption := ' Consultando  Renegociado ......';
               // renegociado
    end;
    if (ComboBox1.Text = 'Renegociado') then
    begin
    if (sds_reneg.Active) then
       sds_reneg.Close;
      Renegociado := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Renegociado := Renegociado + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Renegociado') ;
      sds_reneg.CommandText := Renegociado;
      sds_reneg.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
          // acordo
    Label5.Caption := ' Consultando  Acordo ......';
    if (ComboBox1.Text = 'Acordo') then
    begin
    if (sds_acordo.Active) then
       sds_acordo.Close;
      Acordo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ; //+
      //  'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
      Acordo := Acordo + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Acordo') ;
      sds_acordo.CommandText := Acordo;
      sds_acordo.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
           // acordo
    end;
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_acordo.Active) then
       sds_acordo.Close;
      Acordo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ; //+
      //  'left outer join COBRANCA co on co.ID_COB = ob.ID_COB ';
      Acordo := Acordo + sql_reneg + 'and cr.STATUS = ' + QuotedStr('Acordo') ;
      sds_acordo.CommandText := Acordo;
      sds_acordo.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;


                      // pendente
    if(rgSituacao.ItemIndex = 0)then
    mostrar := 'Ativo';
    if(rgSituacao.ItemIndex = 1)then
    mostrar := 'Inativo';
    if(rgSituacao.ItemIndex = 2)then
    mostrar := 'Outros';

    Label5.Caption := ' Consultando  Pendentes ......';
    if (ComboBox1.Text = 'Pendente')  then
    begin
      if (sds_pendente.Active) then
      sds_pendente.Close;
      Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pendente := Pendente + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr(mostrar) ;
      sds_pendente.CommandText := Pendente;
      sds_pendente.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
                          // pendente
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_pendente.Active) then
      sds_pendente.Close;
      Pendente := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pendente := Pendente + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr(mostrar) ;
      sds_pendente.CommandText := Pendente;
      sds_pendente.Open;
      pend := sds_pendentePENDENTE.Value;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;



    end;               // pago
    Label5.Caption := ' Consultando  Pago ......';
     if (ComboBox1.Text = 'Pago') then
    begin
    if (sds_pago.Active) then
        sds_pago.Close;
      Pago := 'SELECT SUM(VALOR_PAGO) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pago := Pago + SqlTexto;
      sds_pago.CommandText := Pago;
      sds_pago.Open;
    end;
                           // pago
    if (ComboBox1.Text = 'Todos') then
    begin
    if (sds_pago.Active) then
        sds_pago.Close;
      Pago := 'SELECT SUM(VALOR_PAGO) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Pago := Pago + SqlTexto ;
      sds_pago.CommandText := Pago;
      sds_pago.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;

                          // Cancelado
    Label5.Caption := ' Consultando  Cancelado ......';
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_canc.Active) then
      sds_canc.Close;
      Cancelado := 'SELECT SUM(VALOR_RECEBER) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Cancelado := Cancelado + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Cancelado') ;
      sds_canc.CommandText := Cancelado;
      sds_canc.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
    if (ComboBox1.Text = 'Cancelado')  then
    begin
      if (sds_canc.Active) then
      sds_canc.Close;
      Cancelado := 'SELECT SUM(VALOR_RECEBER) as pago from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Cancelado := Cancelado + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Cancelado') ;
      sds_canc.CommandText := Cancelado;
      sds_canc.Open;

    end;

                          // Inativo
     Label5.Caption := ' Consultando  Inativo ......';
    if (ComboBox1.Text = 'Todos')  then
    begin
      if (sds_inativos.Active) then
      sds_inativos.Close;
      Inativo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Inativo := Inativo + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Inativo') ;
      sds_inativos.CommandText := Inativo;
      sds_inativos.Open;
      FlatGauge1.Progress := FlatGauge1.Progress + 10;
    end;
    if (ComboBox1.Text = 'Inativo')  then
    begin
      if (sds_inativos.Active) then
      sds_inativos.Close;
      Inativo := 'SELECT SUM(VALOR_RECEBER) as pendente from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
      Inativo := Inativo + sql_reneg + ' and cr.STATUS = ' + QuotedStr('Pendente') +  ' and cr.SITUACAO = ' + QuotedStr('Inativo') ;
      sds_inativos.CommandText := Inativo;
      sds_inativos.Open;
    end;





                //contar registros
    Label5.Caption := ' Contando Registros ......';

    if (sds_registros.Active) then
        sds_registros.Close;
    registros := 'SELECT Count(ID_RECEBIMENTOS) as total from RECEBIMENTOS cr ' +
        'inner join SOCIOS ob on ob.ID_SOCIO = cr.ID_SOCIO ' ;
    registros := registros + SqlTexto  ;
    sds_registros.CommandText := registros;
    sds_registros.Open;


  finally
    Screen.Cursor := Save_Cursor;
     Label5.Caption := ' Busca Finalizada ......';
  end;
    FlatGauge1.Progress := 100 ;
    Label5.Caption := ' Busca Finalizada ......';
end;
end.


