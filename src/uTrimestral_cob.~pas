unit uTrimestral_cob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatGaugeUnit, Grids, DBGrids, StdCtrls, Mask, ToolEdit,
  dxCore, dxButton, ExtCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider,
  XPMenu, Buttons, rpcompobase, rpvclreport, VDOBasePrinter, VDODmPrinter,
  DBLocal, DBLocalS, rplabelitem;

type
  TfTrimestral_cob = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    dxButton1: TdxButton;
    BitBtn1: TdxButton;
    DBGrid1: TDBGrid;
    dxButton2: TdxButton;
    FlatGauge1: TFlatGauge;
    Label8: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    DataSource1: TDataSource;
    scdsCp_proc: TSQLDataSet;
    sds_valor: TSQLDataSet;
    XPMenu1: TXPMenu;
    sdsID_SOCIO: TIntegerField;
    sdsULTIMOTRIM: TDateField;
    cdsID_SOCIO: TIntegerField;
    cdsULTIMOTRIM: TDateField;
    sdsTRIMANTERIOR: TDateField;
    sdsNOME_SOCIO: TStringField;
    cdsNOME_SOCIO: TStringField;
    cdsTRIMANTERIOR: TDateField;
    GroupBox4: TGroupBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    Label11: TLabel;
    dxButton4: TdxButton;
    sdsCODREC: TIntegerField;
    cdsCODREC: TIntegerField;
    sdsCODRECANT: TIntegerField;
    cdsCODRECANT: TIntegerField;
    sds_boleto: TSQLDataSet;
    dspboleto: TDataSetProvider;
    cds_boleto: TClientDataSet;
    cds_boletoIDREC: TIntegerField;
    cds_boletoID: TIntegerField;
    cds_boletoNOME: TStringField;
    cds_boletoRUA: TStringField;
    cds_boletoCEP: TStringField;
    cds_boletoUF: TStringField;
    cds_boletoBAIRRO: TStringField;
    cds_boletoMUNICIPIO: TStringField;
    cds_boletoEMISSAO: TDateField;
    cds_boletoVENCIMENTO: TDateField;
    cds_boletoVALOR: TFloatField;
    cds_boletoVALORPENDENTE: TFloatField;
    cds_boletoVALORDEVE: TFloatField;
    cds_boletoN_DOC: TStringField;
    cds_boletoINSTRUCOES: TStringField;
    cds_boletoINSCRICAO: TIntegerField;
    cds_boletoSTATUS: TStringField;
    cds_boletoVENCIDOS: TStringField;
    cds_boletoD_VENCIDO: TDateField;
    cds_boletoTOT_PENDENTE: TIntegerField;
    cds_boletoCOD_COBRADOR: TIntegerField;
    cds_boletoNOME_COBRADOR: TStringField;
    cds_boletoDOCUMENTO: TStringField;
    cds_boletoGEROU: TStringField;
    sds_boletoIDREC: TIntegerField;
    sds_boletoID: TIntegerField;
    sds_boletoNOME: TStringField;
    sds_boletoRUA: TStringField;
    sds_boletoCEP: TStringField;
    sds_boletoUF: TStringField;
    sds_boletoBAIRRO: TStringField;
    sds_boletoMUNICIPIO: TStringField;
    sds_boletoEMISSAO: TDateField;
    sds_boletoVENCIMENTO: TDateField;
    sds_boletoVALOR: TFloatField;
    sds_boletoVALORPENDENTE: TFloatField;
    sds_boletoVALORDEVE: TFloatField;
    sds_boletoN_DOC: TStringField;
    sds_boletoINSTRUCOES: TStringField;
    sds_boletoINSCRICAO: TIntegerField;
    sds_boletoSTATUS: TStringField;
    sds_boletoVENCIDOS: TStringField;
    sds_boletoD_VENCIDO: TDateField;
    sds_boletoTOT_PENDENTE: TIntegerField;
    sds_boletoCOD_COBRADOR: TIntegerField;
    sds_boletoNOME_COBRADOR: TStringField;
    sds_boletoDOCUMENTO: TStringField;
    sds_boletoGEROU: TStringField;
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
    cds_banco: TClientDataSet;
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
    sds_banco: TSQLDataSet;
    sds_bancoID_BANCO: TIntegerField;
    sds_bancoCONTA: TStringField;
    sds_bancoBANCO: TStringField;
    sds_bancoCIDADE: TStringField;
    sds_bancoSALDO: TFloatField;
    sds_bancoAGENCIA: TStringField;
    sds_bancoDIGAGEN: TStringField;
    sds_bancoCOD_CED: TStringField;
    sds_bancoID_TITULO: TIntegerField;
    sds_bancoCARTEIRA: TStringField;
    sds_bancoN_DOC: TIntegerField;
    sds_bancoJUROS: TFloatField;
    sds_bancoVENCIMENTO: TStringField;
    sds_bancoVENCIMENTO1: TStringField;
    sds_bancoVENCIMENTO2: TStringField;
    sds_bancoLOCAL_PGTO: TStringField;
    sds_bancoVENCIMENTO3: TStringField;
    dsp_banco: TDataSetProvider;
    sdsGRUPO: TStringField;
    sdsN_INSCRICAO: TIntegerField;
    cdsGRUPO: TStringField;
    cdsN_INSCRICAO: TIntegerField;
    dxButton5: TdxButton;
    VCLReport1: TVCLReport;
    dxButton6: TdxButton;
    sql_recibo: TSQLDataSet;
    dsp_recibo: TDataSetProvider;
    cds_recibo: TClientDataSet;
    cds_reciboIDREC: TIntegerField;
    cds_reciboID: TIntegerField;
    cds_reciboNOME: TStringField;
    cds_reciboRUA: TStringField;
    cds_reciboCEP: TStringField;
    cds_reciboUF: TStringField;
    cds_reciboBAIRRO: TStringField;
    cds_reciboMUNICIPIO: TStringField;
    cds_reciboEMISSAO: TDateField;
    cds_reciboVENCIMENTO: TDateField;
    cds_reciboVALOR: TFloatField;
    cds_reciboVALORPENDENTE: TFloatField;
    cds_reciboVALORDEVE: TFloatField;
    cds_reciboN_DOC: TStringField;
    cds_reciboINSTRUCOES: TStringField;
    cds_reciboINSCRICAO: TIntegerField;
    cds_reciboSTATUS: TStringField;
    cds_reciboVENCIDOS: TStringField;
    cds_reciboD_VENCIDO: TDateField;
    cds_reciboTOT_PENDENTE: TIntegerField;
    cds_reciboCOD_COBRADOR: TIntegerField;
    cds_reciboNOME_COBRADOR: TStringField;
    cds_reciboDOCUMENTO: TStringField;
    cds_reciboGEROU: TStringField;
    ComboBox1: TComboBox;
    Label12: TLabel;
    sdscob: TSQLDataSet;
    dspcob: TDataSetProvider;
    cdscob: TClientDataSet;
    cdscobID_COB: TIntegerField;
    cdscobNOME: TStringField;
    Label13: TLabel;
    Edit9: TEdit;
    sds_numero: TSQLDataSet;
    dsp_numero: TDataSetProvider;
    cds_numero: TClientDataSet;
    sds_numeroID_RECEBIMENTOS: TIntegerField;
    sds_numeroTITULO: TIntegerField;
    cds_numeroID_RECEBIMENTOS: TIntegerField;
    cds_numeroTITULO: TIntegerField;
    Label14: TLabel;
    RadioGroup1: TRadioGroup;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    dspValor: TDataSetProvider;
    cdsValor: TClientDataSet;
    sdsFAIXA: TIntegerField;
    cdsFAIXA: TIntegerField;
    cdsValorFAIXA: TSmallintField;
    cdsValorVALOR: TFloatField;
    sdsDIAS: TFloatField;
    cdsDIAS: TFloatField;
    cdsBanco: TClientDataSet;
    cdsBancoID_BANCO: TIntegerField;
    cdsBancoCONTA: TStringField;
    cdsBancoBANCO: TStringField;
    cdsBancoCIDADE: TStringField;
    cdsBancoSALDO: TFloatField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoDIGAGEN: TStringField;
    cdsBancoCOD_CED: TStringField;
    cdsBancoID_TITULO: TIntegerField;
    cdsBancoN_DOC: TIntegerField;
    cdsBancoJUROS: TFloatField;
    cdsBancoVENCIMENTO: TStringField;
    cdsBancoVENCIMENTO1: TStringField;
    cdsBancoVENCIMENTO2: TStringField;
    cdsBancoLOCAL_PGTO: TStringField;
    cdsBancoVENCIMENTO3: TStringField;
    cdsBancoCADBANCO: TStringField;
    cdsBancoDESCBANCO: TStringField;
    cdsBancoCONTACORRRENTE: TStringField;
    cdsBancoDIGITOCONTACORRENTE: TStringField;
    cdsBancoINICIONOSSONUMERO: TStringField;
    cdsBancoFIMNOSSONUMERO: TStringField;
    cdsBancoPROXIMONOSSONUMERO: TStringField;
    cdsBancoVARIACAO: TStringField;
    cdsBancoNUMEROCONVENIO: TStringField;
    cdsBancoTIPOIMPRESSAOCARNE: TIntegerField;
    cdsBancoTIPOCARNE: TStringField;
    cdsBancoDEMONSTRATIVO: TStringField;
    cdsBancoINSTRUCOESCAIXA: TStringField;
    cdsBancoINSTRUCAO1: TStringField;
    cdsBancoINSTRUCAO2: TStringField;
    cdsBancoACEITEDOCUMENTO: TStringField;
    cdsBancoESPECIEDOCUMENTO: TStringField;
    cdsBancoINSTRUCAO3: TStringField;
    cdsBancoCARTEIRA: TStringField;
    dspBanco: TDataSetProvider;
    sdsBanco: TSQLDataSet;
    sdsBancoID_BANCO: TIntegerField;
    sdsBancoCONTA: TStringField;
    sdsBancoBANCO: TStringField;
    sdsBancoCIDADE: TStringField;
    sdsBancoSALDO: TFloatField;
    sdsBancoAGENCIA: TStringField;
    sdsBancoDIGAGEN: TStringField;
    sdsBancoCOD_CED: TStringField;
    sdsBancoID_TITULO: TIntegerField;
    sdsBancoN_DOC: TIntegerField;
    sdsBancoJUROS: TFloatField;
    sdsBancoVENCIMENTO: TStringField;
    sdsBancoVENCIMENTO1: TStringField;
    sdsBancoVENCIMENTO2: TStringField;
    sdsBancoLOCAL_PGTO: TStringField;
    sdsBancoVENCIMENTO3: TStringField;
    sdsBancoCADBANCO: TStringField;
    sdsBancoDESCBANCO: TStringField;
    sdsBancoCONTACORRRENTE: TStringField;
    sdsBancoDIGITOCONTACORRENTE: TStringField;
    sdsBancoINICIONOSSONUMERO: TStringField;
    sdsBancoFIMNOSSONUMERO: TStringField;
    sdsBancoPROXIMONOSSONUMERO: TStringField;
    sdsBancoVARIACAO: TStringField;
    sdsBancoNUMEROCONVENIO: TStringField;
    sdsBancoTIPOIMPRESSAOCARNE: TIntegerField;
    sdsBancoTIPOCARNE: TStringField;
    sdsBancoDEMONSTRATIVO: TStringField;
    sdsBancoINSTRUCOESCAIXA: TStringField;
    sdsBancoINSTRUCAO1: TStringField;
    sdsBancoINSTRUCAO2: TStringField;
    sdsBancoACEITEDOCUMENTO: TStringField;
    sdsBancoESPECIEDOCUMENTO: TStringField;
    sdsBancoINSTRUCAO3: TStringField;
    sdsBancoCARTEIRA: TStringField;
    sdsVALOR: TFloatField;
    cdsVALOR2: TFloatField;
    Label16: TLabel;
    dxButton7: TdxButton;
    Label17: TLabel;
    sdsID_COB: TIntegerField;
    cdsID_COB: TIntegerField;
    Label18: TLabel;
    cdsTem: TClientDataSet;
    dspTem: TDataSetProvider;
    sqlTem: TSQLDataSet;
    sqlTemUDF_MONTH: TSmallintField;
    cdsTemUDF_MONTH: TSmallintField;
    cds_p: TSQLClientDataSet;
    cds_T: TSQLClientDataSet;
    cds_TVAL: TFloatField;
    cds_dep: TClientDataSet;
    dsp_dep: TDataSetProvider;
    sql_dep: TSQLDataSet;
    sql_depCOUNT: TIntegerField;
    cds_depCOUNT: TIntegerField;
    cds_pPARAMETRO: TStringField;
    cds_pDESCRICAO: TStringField;
    cds_pCONFIGURADO: TStringField;
    cds_pPARAMETRO1: TStringField;
    cds_pPARAMETRO2: TStringField;
    cds_pPARAMETRO3: TStringField;
    cds_pPARAMETRO4: TStringField;
    cds_pPARAMETRO5: TStringField;
    cds_pPARAMETRO6: TStringField;
    cds_pPARAMETRO7: TStringField;
    cds_pPARAMETRO8: TStringField;
    cds_pPARAMETRO9: TStringField;
    sdsVALOR_NF: TFloatField;
    cdsVALOR_NF: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
  private
      procedure BANCO_BRASIL;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTrimestral_cob: TfTrimestral_cob;
  l_pgto, texto, texto1, texto2, texto3 : string;
  label_pgto,label_text,label_text1,label_text2,label_text3:TRpLabel;
  contador : integer;

implementation

uses UDM, uProcura_Trimestral, uPrincipal, U_Autoriza;

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


procedure TfTrimestral_cob.BitBtn1Click(Sender: TObject);
var
  str :string;
begin
  if cds.Active then
    cds.Close;

  cds.CommandText := '';
  str := 'select max(v.VALOR) as VALOR ,rc.valor_nf, t.id_socio, t.ultimotrim, t.TRIMANTERIOR , t.CODREC, t.CODRECANT, UDF_DAYSPAN(''now'', t.ultimotrim) as dias, ' +
         's.NOME_SOCIO, s.GRUPO, s.N_INSCRICAO, s.FAIXA ,s.ID_COB from TRIMESTRAL  t ' +
         'left outer join SOCIOS s on s.ID_SOCIO = t.id_socio ' +
         'LEFT OUTER JOIN cobranca CB ON CB.id_cob = s.id_cob ' +
         'left outer join VALORES v on v.FAIXA = s.FAIXA ' +
         'LEFT OUTER JOIN recebimentos rc on id_recebimentos =  t.CODREC ' +
         'where s.PLANO = ' + QuotedStr('TRIMESTRAL') +
         ' and s.SITUACAO = ' +  QuotedStr('Ativo');

  if (DateEdit1.Text = '  /  /    ') then
    str := str + 'and UDF_DAYSPAN(''today'', ultimotrim) > ' + Edit1.Text
  else
  begin
    str := str + 'and t.ultimotrim = ';
    str := str + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit1.Text)) + '''';
  end;

  //------------------------------------------------------------------------------
  //Código
  //------------------------------------------------------------------------------
  if Edit2.Text <> '' then
    if Edit3.Text <> '' then
    begin
      str := str + ' and s.N_INSCRICAO between ';
      str := str + '''' + Edit2.Text + '''';
      str := str + ' and ';
      str := str + '''' + Edit3.Text + '''';
    end;

  //------------------------------------------------------------------------------
  //Cobrador
  //------------------------------------------------------------------------------
  if ComboBox1.Text <> '' then
  begin
    if ComboBox1.Text <> 'Todos' then
      if (cdscob.Locate('NOME',ComboBox1.Text, [loCaseInsensitive])) then
         str := str + ' and cb.id_cob = ' + IntToStr(cdscobID_COB.asInteger);
  end;
  str := str + ' group by s.GRUPO,s.N_INSCRICAO, s.NOME_SOCIO, t.id_socio, t.ultimotrim, t.TRIMANTERIOR , t.CODREC, t.CODRECANT, ' +
         '  s.FAIXA , s.ID_COB ,rc.valor_nf ';
  //str := str + ' order by s.ID_SOCIO ';
  cds.CommandText := str;
  cds.Open;
  dxButton2.Enabled := True;
  dxButton1.Enabled := True;

  Label16.Caption := IntToStr(cds.RecordCount);


end;

procedure TfTrimestral_cob.dxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfTrimestral_cob.dxButton2Click(Sender: TObject);
var sql_texto, total , total_dep : string;
    val_dep , t : double;
    x : integer;
begin
 if (DateEdit2.Text = '  /  /    ') then
 begin
  MessageDlg('preencha o campo Emissão', mtError, [mbOK], 0);
  exit;
 end;

 if (DateEdit3.Text = '  /  /    ') then
 begin
  MessageDlg('preencha o campo Vencimento', mtError, [mbOK], 0);
  exit;
 end;

  if (not cdsValor.Active) then
    cdsValor.Open;
  Label8.Caption := '';
  Label8.Caption := 'Gerando Cobranças...';
  Refresh;
  FlatGauge1.MaxValue := cds.RecordCount;
  cds.First;
  while not cds.Eof do
  begin

    cds_dep.Close;
    cds_dep.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
    cds_dep.Open;
    x := cds_depCOUNT.AsInteger;


    DecimalSeparator := '.';
    total := '0';
    if (cdsValor.Locate('FAIXA', cdsFAIXA.AsInteger, [loCaseInsensitive])) then
      total := FloatToStr(cdsValorVALOR.AsFloat)
    else begin
      cdsValor.Locate('FAIXA', 1, [loCaseInsensitive]);
      total := FloatToStr(cdsValorVALOR.AsFloat);
    end;


   if (not cds_T.Active) then
   begin
     cds_T.Open;
     val_dep :=  cds_TVAL.AsFloat;
   end;

    if( x <> 0) then
    begin
      val_dep := (x * val_dep) ;
    end;

    if( x = 0) then
    begin
      val_dep := 0 ;
    end;

    if( x = null) then
    begin
      val_dep := 0 ;
    end;

   t :=  ((StrToFloat(total)) + (val_dep));

   total :=  FloatToStr(t) ;

   if not( cdsTem.Active) then
   begin

    cdsTem.Close;
    cdsTem.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
    cdsTem.Params[1].AsDate := StrToDate(DateEdit3.Text);
    cdsTem.Params[2].AsDate := StrToDate(DateEdit3.Text);
    cdsTem.Open;

  {           //////////
   if not ( cds_dep.Active) then
   begin
    cds_dep.Close;
    cds_dep.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
    cds_dep.Open;
    x := cds_depCOUNT.AsInteger;

    if( x <> 0) then
    begin
      val_dep := (x * val_dep) ;
    end;

    if( x = 0) then
    begin
      val_dep := 0 ;
    end;

   t :=  ((StrToFloat(total)) + (val_dep));

   total :=  FloatToStr(t) ;
   }
   end;

   if (cdsTemUDF_MONTH.IsNull) then
   begin

    sql_texto := 'INSERT into recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, ' +
    'STATUS, GEROU, VALOR_1VIA, VALOR_PAGO, VALOR_RECEBER, ' +
    'SITUACAO, TIPO_DOC, SERIE, COBRADOR , VENCIMENTO)';
    sql_texto := sql_texto +  ' VALUES(';
    sql_texto := sql_texto + IntToStr(cdsID_SOCIO.AsInteger);
    DecimalSeparator := '.';
    sql_texto := sql_texto + ',' + (total) + ', ';
    DecimalSeparator := ',';
    sql_texto := sql_texto + IntToStr(cdsID_SOCIO.AsInteger);
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit2.Text)) + '''';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + 'Pendente' + '''';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + 'S' + '''';
    DecimalSeparator := '.';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '' + (total ) + '';
    DecimalSeparator := ',';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '0';
    sql_texto :=  sql_texto + ',' + (total );
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + 'Ativo' + '''';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + 'TM' + '''';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + 'T' + '''';
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + IntToStr(cdsID_COB.AsInteger);
    sql_texto := sql_texto + ',';
    sql_texto := sql_texto + '''' + formatdatetime('mm/dd/yy', StrToDate(DateEdit3.Text)) + '''';
    sql_texto := sql_texto +  ')';
    scdsCp_proc.CommandText := scdsCp_proc.CommandText + sql_Texto;
    scdsCp_proc.ExecSQL;
    sql_texto := '';
    scdsCp_proc.CommandText := '';
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;

    cds.Next;
    x := 0;
    t := 0;
    val_dep := 0 ;

//  end;
  end;
  FlatGauge1.Progress := 0;
  Label18.Caption := '';
   if (cdsTemUDF_MONTH.IsNull) then
   Label18.Caption := 'Cobranças geradas com SUCESSO...'
   else Label18.Caption := 'Cobranças já geradas nesta Data...';
  dxButton2.Enabled := False;
  BitBtn1.Enabled := False;
  Refresh;
end;

procedure TfTrimestral_cob.FormShow(Sender: TObject);
begin
  Label11.Caption := 'Hoje é ' + '( ' + FormatDateTime('dd/mm/yyyy',Now) + ' )';
  cdscob.Open;
  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('Todos');
  while (not cdscob.Eof) do
  begin
    ComboBox1.Items.Add(cdscobNOME.AsString);
    cdscob.Next;
  end;
end;

procedure TfTrimestral_cob.dxButton4Click(Sender: TObject);
var
vardeleta :string;
begin
    F_autoriza := TF_autoriza.Create(Application);
    try
      F_autoriza.ShowModal;
    finally
      F_autoriza.Free;
    end;

    if (DM.RESULTADO = 'CANCEL') then
       exit;

    if (DM.RESULTADO = 'FALSE') then
    begin
       ShowMessage('Usuario não tem autorização para executar essa operação!');
       exit;
    end;


  Label18.Caption := '';
  Label18.Caption := 'Excluindo Cobranças (Cancelando)...';
  Refresh;
  FlatGauge1.MaxValue := cds.RecordCount;
  cds.First;
  while not cds.Eof do
  begin
      vardeleta := 'Update RECEBIMENTOS set SITUACAO =' + QuotedStr('Cancelado');
      vardeleta  := vardeleta  + ' , AUTORIZADO = ';
      vardeleta  := vardeleta  + QuotedStr(DM.cds_SenhaLOGIN.AsString);
      vardeleta := vardeleta + ' WHERE ID_RECEBIMENTOS = ';
      vardeleta := vardeleta + '''' + IntToStr(cdsCODREC.AsInteger) + '''';
      dm.SQLObitos.ExecuteDirect(vardeleta);
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
      cds.Next;
  end;
  FlatGauge1.Progress := 0;
  Label18.Caption := '';
  Label18.Caption := 'Cobranças Alteradas para Canceladas com SUCESSO...';
  Refresh;
  BitBtn1.Enabled := False;
  dxButton2.Enabled := False;
  dxButton4.Enabled := False;
  dxButton1.Enabled := False;
  dxButton6.Enabled := False;
  dxButton5.Enabled := False;
end;

procedure TfTrimestral_cob.dxButton1Click(Sender: TObject);
var l_pgto, texto, texto1, texto2, texto3 : string;
    label_pgto,label_text,label_text1,label_text2,label_text3:TRpLabel;
begin
  //===========================================================================
  //   Aqui altero o Número do Boleto
   contador := 0;
   if MessageDlg('Alterar numero desses Boletos ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
      if Edit9.Text = '' Then
      begin
         MessageDlg('Informe o numero do Boleto Inicial', mtWarning, [mbOK], 0);
         exit;
      end;
      Label14.Caption := '';
      Label14.Caption := 'Atualizando Nº do Boleto...';
      Refresh;
      FlatGauge1.MaxValue := cds.RecordCount;
      contador := StrToInt(Edit9.Text);
      cds.First;
      while not cds.Eof do
      begin
        if cds_numero.Active then
         cds_numero.Close;
        cds_numero.Params[0].Clear;
        cds_numero.Params[1].Clear;
        cds_numero.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
        cds_numero.Params[1].AsDateTime := cdsULTIMOTRIM.AsDateTime;
        cds_numero.Open;
        cds_numero.Edit;
        cds_numeroTITULO.AsString := IntToStr(contador);
        contador := contador + 1;
        cds_numero.ApplyUpdates(0);
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
        cds.Next;
      end;
      FlatGauge1.Progress := 0;
      Label14.Caption := '';
      Label14.Caption := 'Nº do Boleto atualizados com SUCESSO...';
      Refresh;
   end;
  //****************************************************************************
  // vejo de qual banco é o Boleto
   if (not cds_par.Active) then
     cds_par.Open;

   if ( not cds_par.Locate('PARAMETRO','Banco Trimestral', [loPartialKey])) then
   begin
    MessageDlg('insira o parâmetro "Banco Trimestral"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

   if (not cds_banco.Active) then
     cds_banco.Open;

   if ( not cds_banco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
    MessageDlg('Banco não Cadastrado.', mtWarning, [mbOK], 0);
    exit;
   end
   else
   begin
     l_pgto := cds_bancoLOCAL_PGTO.AsString;
     texto  := cds_bancoVENCIMENTO.AsString;
     texto1 := cds_bancoVENCIMENTO1.AsString;
     texto2 := cds_bancoVENCIMENTO2.AsString;
     texto3 := cds_bancoVENCIMENTO3.AsString;
   end;
   //***************************************************************************
   //Imprimo o Boleto
   VCLReport1.FileName := str_relatorio + 'boleto_TM.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
   label_pgto:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel0'));
   label_text:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel1'));
   label_text1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel2'));
   label_text2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
   label_text3:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel4'));

   if Assigned(label_pgto) then
     label_pgto.Text := l_pgto;
   if Assigned(label_text) then
     label_text.Text := texto;
   if Assigned(label_text1) then
     label_text1.Text := texto1;
   if Assigned(label_text2) then
     label_text2.Text := texto2;
   if Assigned(label_text3) then
     label_text3.Text := texto3;

   VCLReport1.Report.Params.ParamByName('DATA_DOC').Value := StrToDate(DateEdit1.Text); //Cobrador
   if Edit2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSC').Value := 1; //inscrição
   if fTrimestral_cob.Edit3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit3.Text) //inscrição
   else
     VCLReport1.Report.Params.ParamByName('INSC1').Value := 500; //inscrição

  if ComboBox1.Text <> '' then
  begin
    if ComboBox1.Text <> 'Todos' then
      if (cdscob.Locate('NOME',fTrimestral_cob.ComboBox1.Text, [loCaseInsensitive])) then
        VCLReport1.Report.Params.ParamByName('COB').Value := cdscobID_COB.asInteger;
    if ComboBox1.Text = 'Todos' then
      VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;
  end
  else
    VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;

  VCLReport1.Execute;

end;

procedure TfTrimestral_cob.dxButton5Click(Sender: TObject);
begin
     VCLReport1.FileName := str_relatorio + 'lita_trimastral.rep';
     VCLReport1.Report.Params.ParamByName('PDATA').Value := StrToDate(DateEdit1.Text);
     VCLReport1.Execute;
end;

procedure TfTrimestral_cob.dxButton6Click(Sender: TObject);
var  I: Byte;
begin
  //===========================================================================
  //   Aqui altero o Número do Recibo
   contador := 0;
   if MessageDlg('Alterar numero dos Recibos ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
      if Edit9.Text = '' Then
      begin
         MessageDlg('Informe o numero do Recibo Inicial', mtWarning, [mbOK], 0);
         exit;
      end;
      Label14.Caption := '';
      Label14.Caption := 'Atualizando Nº do Recibo...';
      Refresh;
      FlatGauge1.MaxValue := cds.RecordCount;
      contador := StrToInt(Edit9.Text);
      cds.First;
      while not cds.Eof do
      begin
        if cds_numero.Active then
         cds_numero.Close;
        cds_numero.Params[0].Clear;
        cds_numero.Params[1].Clear;
        cds_numero.Params[0].AsInteger := cdsID_SOCIO.AsInteger;
        cds_numero.Params[1].AsDateTime := cdsULTIMOTRIM.AsDateTime;
        cds_numero.Open;
        cds_numero.Edit;
        cds_numeroTITULO.AsString := IntToStr(contador);
        contador := contador + 1;
        cds_numero.ApplyUpdates(0);
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
        cds.Next;
      end;
      FlatGauge1.Progress := 0;
      Label14.Caption := '';
      Label14.Caption := 'Nº dos Recibos atualizados com SUCESSO...';
      Refresh;
   end;
   //****************************************************************************
   //===========================================================================
   // vejo qual Recibo Imprimir
   if (not cds_par.Active) then
     cds_par.Open;

   if ( not cds_par.Locate('PARAMETRO','recibo', [loPartialKey])) then
   begin
    MessageDlg('insira o parâmetro "recibo"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

   //if cds_parPARAMETRO1.AsString = 'serra1' then
   //  VCLReport1.FileName := str_relatorio + 'recibo_artur.rep';
   //if cds_parPARAMETRO1.AsString = 'serra2' then
   if RadioGroup1.ItemIndex = 0 then
     VCLReport1.FileName := str_relatorio + 'recibo_valinhos_TM.rep';

   if RadioGroup1.ItemIndex = 1 then
     VCLReport1.FileName := str_relatorio + 'recibo_valinhos_TM_soma.rep';

   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;

   VCLReport1.Report.Params.ParamByName('DATA_DOC').Value := StrToDate(DateEdit1.Text); //Cobrador
   if Edit2.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit2.Text)
   else
     VCLReport1.Report.Params.ParamByName('INSC').Value := 1; //inscrição
   if fTrimestral_cob.Edit3.Text <> '' then
     VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit3.Text) //inscrição
   else
     VCLReport1.Report.Params.ParamByName('INSC1').Value := 500; //inscrição

  if ComboBox1.Text <> '' then
  begin
    if ComboBox1.Text <> 'Todos' then
      if (cdscob.Locate('NOME',fTrimestral_cob.ComboBox1.Text, [loCaseInsensitive])) then
        VCLReport1.Report.Params.ParamByName('COB').Value := cdscobID_COB.asInteger;
    if ComboBox1.Text = 'Todos' then
      VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;
  end
  else
    VCLReport1.Report.Params.ParamByName('COB').Value := 9999999;

  VCLReport1.Execute;
   Label8.Caption := '...';

end;

procedure TfTrimestral_cob.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdscob.Close;
end;

procedure TfTrimestral_cob.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varUsuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TfTrimestral_cob.DSPGetProproperties(Sender: TObject;
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

procedure TfTrimestral_cob.DSPUpdateData(Sender: TObject;
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

procedure TfTrimestral_cob.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfTrimestral_cob.BANCO_BRASIL;
begin

end;

procedure TfTrimestral_cob.dxButton7Click(Sender: TObject);
begin
DateEdit1.Clear;
end;

end.
