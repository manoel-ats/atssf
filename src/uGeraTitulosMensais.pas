unit uGeraTitulosMensais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExStdCtrls, JvEdit, JvValidateEdit, StdCtrls,
  JvCombobox, JvDBSearchComboBox, Mask, ToolEdit, Buttons, ExtCtrls, DBXpress,
  TFlatGaugeUnit, gbCobranca, DBLocal, DBLocalS,
  rpcompobase, rpvclreport, rplabelitem, JvExMask, JvSpin;

type
  TfGeraTitulosMensais = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    DateEdit1: TDateEdit;
    Edit2: TEdit;
    Edit3: TJvValidateEdit;
    Edit1: TJvValidateEdit;
    JvDBGrid1: TJvDBGrid;
    dspGerar: TDataSetProvider;
    cdsGerar: TClientDataSet;
    cdsGerarID_RECEBIMENTOS: TIntegerField;
    cdsGerarSTATUS: TStringField;
    cdsGerarEMISSAO: TDateField;
    cdsGerarVENCIMENTO: TDateField;
    cdsGerarVALOR_NF: TFloatField;
    cdsGerarLOTE: TIntegerField;
    cdsGerarGRUPO: TStringField;
    cdsGerarNOME_SOCIO: TStringField;
    cdsGerarN_INSCRICAO: TIntegerField;
    cdsGerarCPF_CGC: TStringField;
    cdsGerarNOME: TStringField;
    cdsGerarN_BOLETO: TStringField;
    cdsGerarTITULO: TIntegerField;
    cdsGerarID_SOCIO: TIntegerField;
    cdsGerarID: TIntegerField;
    cdsGerarMESANO: TStringField;
    dtsCR: TDataSource;
    BitBtn3: TBitBtn;
    Edit8: TEdit;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Edit10: TEdit;
    Label15: TLabel;
    SpeedButton2: TSpeedButton;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    SpeedButton3: TSpeedButton;
    Edit4: TEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel2: TPanel;
    FlatGauge1: TFlatGauge;
    Label8: TLabel;
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
    TotalPendente: TSQLDataSet;
    TotalPendenteCOUNT: TIntegerField;
    sqlEndereco: TSQLDataSet;
    sqlEnderecoID_ENDERECO: TIntegerField;
    sqlEnderecoID_SOCIO: TIntegerField;
    sqlEnderecoENDERECO: TStringField;
    sqlEnderecoCOMPLEMENTO: TStringField;
    sqlEnderecoID_BAIRRO: TIntegerField;
    sqlEnderecoID_MUNICIPIO: TIntegerField;
    sqlEnderecoESTADO: TStringField;
    sqlEnderecoCEP: TStringField;
    sqlEnderecoDDD: TStringField;
    sqlEnderecoFONE: TStringField;
    sqlEnderecoFONE1: TStringField;
    sqlEnderecoFAX: TStringField;
    sqlEnderecoCXP: TStringField;
    sqlEnderecoTIPOEND: TSmallintField;
    sqlEnderecoBAIRRO: TStringField;
    sqlEnderecoMUNICIPIO: TStringField;
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
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    cds_CRCODIGO: TIntegerField;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    dsp_CR: TDataSetProvider;
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
    sds_CRPERCENTUALJUROS: TFloatField;
    sds_CRPERCENTUALMULTA: TFloatField;
    sds_CRPERCENTUALDESCONTO: TFloatField;
    sds_CRVALOROUTROSACRESCIMOS: TFloatField;
    sds_CRTITULO: TIntegerField;
    sds_CRSERIE: TStringField;
    sds_CRCODIGO: TIntegerField;
    ValorPendente: TSQLDataSet;
    gbCobranca1: TgbCobranca;
    gbTitulo1: TgbTitulo;
    proc_banco: TSQLClientDataSet;
    proc_bancoAGENCIA: TStringField;
    proc_bancoBANCO: TStringField;
    BitBtn5: TBitBtn;
    Label11: TLabel;
    Label12: TLabel;
    RadioGroup1: TRadioGroup;
    Edit9: TEdit;
    VCLReport1: TVCLReport;
    sds_numero: TSQLDataSet;
    sds_numeroID_RECEBIMENTOS: TIntegerField;
    sds_numeroTITULO: TIntegerField;
    dsp_numero: TDataSetProvider;
    cds_numero: TClientDataSet;
    cds_numeroID_RECEBIMENTOS: TIntegerField;
    cds_numeroTITULO: TIntegerField;
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
    cds_bancoCADBANCO: TStringField;
    cds_bancoDESCBANCO: TStringField;
    cds_bancoCONTACORRRENTE: TStringField;
    cds_bancoDIGITOCONTACORRENTE: TStringField;
    cds_bancoINICIONOSSONUMERO: TStringField;
    cds_bancoFIMNOSSONUMERO: TStringField;
    cds_bancoPROXIMONOSSONUMERO: TStringField;
    cds_bancoVARIACAO: TStringField;
    cds_bancoNUMEROCONVENIO: TStringField;
    cds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    cds_bancoTIPOCARNE: TStringField;
    cds_bancoDEMONSTRATIVO: TStringField;
    cds_bancoINSTRUCOESCAIXA: TStringField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoACEITEDOCUMENTO: TStringField;
    cds_bancoESPECIEDOCUMENTO: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    dsp_banco: TDataSetProvider;
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
    sds_bancoCADBANCO: TStringField;
    sds_bancoDESCBANCO: TStringField;
    sds_bancoCONTACORRRENTE: TStringField;
    sds_bancoDIGITOCONTACORRENTE: TStringField;
    sds_bancoINICIONOSSONUMERO: TStringField;
    sds_bancoFIMNOSSONUMERO: TStringField;
    sds_bancoPROXIMONOSSONUMERO: TStringField;
    sds_bancoVARIACAO: TStringField;
    sds_bancoNUMEROCONVENIO: TStringField;
    sds_bancoTIPOIMPRESSAOCARNE: TIntegerField;
    sds_bancoTIPOCARNE: TStringField;
    sds_bancoDEMONSTRATIVO: TStringField;
    sds_bancoINSTRUCOESCAIXA: TStringField;
    sds_bancoINSTRUCAO1: TStringField;
    sds_bancoINSTRUCAO2: TStringField;
    sds_bancoACEITEDOCUMENTO: TStringField;
    sds_bancoESPECIEDOCUMENTO: TStringField;
    sds_bancoINSTRUCAO3: TStringField;
    BitBtn7: TBitBtn;
    sdsGerar: TSQLDataSet;
    sdsGerarID_RECEBIMENTOS: TIntegerField;
    sdsGerarSTATUS: TStringField;
    sdsGerarEMISSAO: TDateField;
    sdsGerarVENCIMENTO: TDateField;
    sdsGerarVALOR_NF: TFloatField;
    sdsGerarLOTE: TIntegerField;
    sdsGerarGRUPO: TStringField;
    sdsGerarNOME_SOCIO: TStringField;
    sdsGerarN_INSCRICAO: TIntegerField;
    sdsGerarCPF_CGC: TStringField;
    sdsGerarNOME: TStringField;
    sdsGerarMESANO: TStringField;
    sdsGerarN_BOLETO: TStringField;
    sdsGerarTITULO: TIntegerField;
    sdsGerarID_SOCIO: TIntegerField;
    sdsGerarID: TIntegerField;
    sdsGerarTOT_PENDENTE: TIntegerField;
    sdsGerarRUA: TStringField;
    sdsGerarCEP: TStringField;
    sdsGerarUF: TStringField;
    sdsGerarBAIRRO: TStringField;
    sdsGerarMUNICIPIO: TStringField;
    cdsGerarTOT_PENDENTE: TIntegerField;
    cdsGerarRUA: TStringField;
    cdsGerarCEP: TStringField;
    cdsGerarUF: TStringField;
    cdsGerarBAIRRO: TStringField;
    cdsGerarMUNICIPIO: TStringField;
    edtParcelas: TJvSpinEdit;
    Label3: TLabel;
    Proc_Titulos: TSQLDataSet;
    Proc_TitulosGRUPO: TStringField;
    Proc_TitulosN_INSCRICAO: TIntegerField;
    Proc_TitulosID_SOCIO: TIntegerField;
    sds_faixa: TSQLDataSet;
    sds_faixaMAX: TFloatField;
    Proc_TitulosFAIXA: TIntegerField;
    Proc_TitulosID_COB: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    cds_faixa: TClientDataSet;
    cds_faixaMAX: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    sdsGerarVALOR_RECEBER: TFloatField;
    cdsGerarVALOR_RECEBER: TFloatField;
    sdsGerarTIPO_DOC: TStringField;
    cdsGerarTIPO_DOC: TStringField;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
     procedure remessaBB;
     procedure remessaSANTANDER;
  public
    { Public declarations }
  end;

var
  fGeraTitulosMensais: TfGeraTitulosMensais;

implementation

uses uSocio_Procura, UDM, uProcurar;

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

procedure TfGeraTitulosMensais.BitBtn6Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;
   sql_texto, mesano : string;
   TD: TTransactionDesc;
begin
  {** Verifico se os campos referentes a Lote e Grupo for?o preenchidos se ? cancelo a opera??o}
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do T?tilo que deseja Localizar.', mtWarning, [mbOK], 0);
    exit;
  end
  else
    decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);

  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);

  if (Edit3.Text = '') then
  begin
      MessageDlg('Informe a Inscri??o.', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      exit;
  end;

  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscri??o.', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;

  if (cdsGerar.Active) then
    cdsGerar.Close;
  cdsGerar.Params[0].AsString := mesano;

  if((dia = 28)or(dia = 29)) then
  dia := 30 ;
  if(dia = 11)then
  dia := 10;
  cdsGerar.Params[1].AsInteger := dia;

  if (Edit2.Text <> '') then
    cdsGerar.Params[2].AsString := Edit2.Text      // Grupo
  else
    cdsGerar.Params[2].AsString := 't';
  cdsGerar.Params[3].AsInteger := StrToInt(Edit3.Text); //Inscr
  cdsGerar.Params[4].AsInteger := StrToInt(Edit1.Text); //Inscr1
  if (Edit4.Text <> '') then
    cdsGerar.Params[5].AsInteger := StrToInt(Edit4.Text)
  else
    cdsGerar.Params[5].AsInteger := 9999999;

  cdsGerar.Params[6].AsDate := StrToDate(DateEdit2.Text);
  cdsGerar.Open;

  Label4.Caption := IntToStr(cdsGerar.RecordCount);

  if (cdsGerar.IsEmpty) then
  begin
    MessageDlg('N?o ? T?tulos nesse per?odo', mtWarning, [mbOK], 0);
    cdsGerar.Close;
    DateEdit2.SetFocus;
  end;
   Edit8.Text := '';
end;

procedure TfGeraTitulosMensais.BitBtn5Click(Sender: TObject);
var
  banco, banco_lote , l_pgto, texto, texto1, texto2, texto3 : string;
  label_pgto,label_text,label_text1,label_text2,label_text3:TRpLabel;
  contador : integer;
  ano, mes, dia, dia1: word;
  mesano, diaPgto : string;
begin

  decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);
  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);


   {** verifico se foi selecionado o cobrador para impress?o do boleto}
   if Edit4.Text = '' then
   begin
     MessageDlg('Escolha um Cobrador', mtWarning, [mbOK], 0);
     exit;
   end;

   //*************************************************************************
   contador := 0;
   if MessageDlg('Alterar numero desses Boletos ?',mtConfirmation,
              [mbYes,mbNo],0) = mrYes then
   begin
     if Edit9.Text = '' Then
     begin
        MessageDlg('Informe o numero do Boleto Inicial', mtWarning, [mbOK], 0);
        exit;
     end;
       {** Altero o N?mero do T?tulo na tabela recebimentos}
       Label8.Caption := '';
       Label8.Caption := 'Atualizando N? do Boletos...';
       Refresh;
       FlatGauge1.MaxValue := cdsGerar.RecordCount;
       contador := StrToInt(Edit9.Text);
       cdsGerar.First;
       while not cdsGerar.Eof do
        begin
           if cds_numero.Active then
             cds_numero.Close;
           cds_numero.Params[0].AsInteger := cdsGerarID_RECEBIMENTOS.AsInteger;
           cds_numero.Open;
           cds_numero.Edit;
           cds_numeroTITULO.AsString := IntToStr(contador);
           contador := contador + 1;
           cds_numero.ApplyUpdates(0);
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsGerar.Next;
        end;
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'N? do Boletos atualizados com SUCESSO...';
        Refresh;
   end;
   //*************************************************************************
   {** Abro a tabela parametros pra ver qual o banco que ele usa para imprimir os boletos}
   if (not cds_par.Active) then
     cds_par.Open;
   if ( not cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
    MessageDlg('insira o par?metro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;
   {** Busco os dados do bamco para impress?o}
   if (not cds_banco.Active) then
     cds_banco.Open;
   if ( not cds_banco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
    MessageDlg('Banco n?o Cadastrado.', mtWarning, [mbOK], 0);
    exit;
   end
   else
   begin
     {** alimento as variaveis com os dados do banco}
     banco_lote := cds_bancoBANCO.AsString;
     l_pgto := cds_bancoLOCAL_PGTO.AsString;
     texto  := cds_bancoVENCIMENTO.AsString;
     texto1 := cds_bancoVENCIMENTO1.AsString;
     texto2 := cds_bancoVENCIMENTO2.AsString;
     texto3 := cds_bancoVENCIMENTO3.AsString;
   end;
   //***************************************************************************
   {** Existem dois tipos de boletos pequei da tabela parametro o tipo que ele usa
   e guardei na variavel banco_lote aqui eu testo pra ver qual relatorio imprimir}
  { if (banco_lote = 'HSBC') then
     VCLReport1.FileName := str_relatorio + 'boleto_hsbc.rep';
   if (banco_lote = 'BANESPA') then
     VCLReport1.FileName := str_relatorio + 'boleto_banespa.rep';}
   //if (banco_lote = 'BRASIL') then
   VCLReport1.FileName := str_relatorio + 'boleto_brasil_mensal.rep';

   {** configuro a conec??o do reportmanager para o sisObitos}
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;
   {** Alimento alguns Labels do relat?rio(boleto) ref. a dados do banco }
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
   {** entro com os parametros para impress?o do boleto.}
   VCLReport1.Report.Params.ParamByName('ST').Value := mesano; //lote
   VCLReport1.Report.Params.ParamByName('DIA').Value := dia; //lote
   VCLReport1.Report.Params.ParamByName('GP').Value := 't';
   if (Edit2.Text <> '') then
     VCLReport1.Report.Params.ParamByName('GP').Value := Edit2.Text; //grupo
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text); //inscri??o
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text); //inscri??o
   VCLReport1.Report.Params.ParamByName('COB').Value := 9999999; //Cobrador
   if (Edit4.Text <> '') then
      VCLReport1.Report.Params.ParamByName('COB').Value := StrToInt(Edit4.Text); //Cobrador
   if (RadioGroup1.ItemIndex = 0) then
     VCLReport1.Report.Params.ParamByName('SOMAR').Value := 'sim'
   else
     VCLReport1.Report.Params.ParamByName('SOMAR').Value := 'nao';
      
   VCLReport1.Execute;

end;

procedure TfGeraTitulosMensais.BitBtn1Click(Sender: TObject);
var
   I, Parcela : Integer;
   ano, mes, dia, dia1: word;
   sql_texto, mesano, diaPgto : string;
   TD: TTransactionDesc;
begin
  {** Verifico se os campos referentes a Grupo for?o preenchidos se ? cancelo a opera??o}
  if DateEdit1.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Emiss?o do T?tilo.', mtWarning, [mbOK], 0);
    exit;
  end;
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do T?tilo.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (Edit3.Text = '') then
  begin
    MessageDlg('Informe a Inscri??o.', mtWarning, [mbOK], 0);
    edit3.SetFocus;
    exit;
  end;
  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscri??o.', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;
  decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);
  diaPgto := IntToStr(dia);
  if((diaPgto = '28')or(diaPgto = '29')) then
  diaPgto := '30' ;

  mesano := IntToStr(mes) + IntToStr(ano);
  Parcela := StrToInt(edtParcelas.Text);
 // DateEdit2.Text := diaPgto + '/' + IntToStr(mes) + '/' + IntToStr(ano);
  sql_texto := '';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.SQLObitos.StartTransaction(TD);
  try
    sql_texto := 'Execute procedure SP_Plano_Mensal(';
    sql_texto := sql_texto + '''' + diaPgto + ''',';
    sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit1.Text)) + ''','; //Emiss?o
    sql_texto := sql_texto + '''' + FormatDateTime('mm/dd/yy',StrToDate(DateEdit2.Text)) + ''','; //Vencimento
    sql_texto := sql_texto + QuotedStr(mesano) + ','; // M?s da Cobran?a
    sql_texto := sql_texto + IntToStr(Parcela) + ')';  // ID_SOCIO
    DM.SQLObitos.ExecuteDirect(sql_texto);
    dm.SQLObitos.Commit(TD);
  except
    dm.SQLObitos.Rollback(TD);
    MessageDlg('Erro ao gerar a cobran?a...', mtError, [mbOK], 0);
    exit;
  end;
  MessageDlg('T?tulos Gerados com Suscesso', mtWarning, [mbOK], 0);
  BitBtn6.Click;
end;

procedure TfGeraTitulosMensais.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraTitulosMensais.SpeedButton3Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.Create(self,dm.proc_cob);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit4.Text := IntToStr(dm.proc_cobID_COB.AsInteger);
      Edit6.Text := dm.proc_cobNOME.AsString;
    end;
   finally
    dm.proc_cob.Close;
    fProcurar.Free;
    BitBtn6.Click;
   end;
end;

procedure TfGeraTitulosMensais.SpeedButton2Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Edit5.Text := SaveDialog1.FileName;
end;

procedure TfGeraTitulosMensais.BitBtn3Click(Sender: TObject);
begin
 if Edit8.Text = '' then
  begin
    MessageDlg('Escolha o Banco Para Gerar a Remessa', mtInformation, [mbOK], 0);
  end;

 if Edit8.Text = 'BRASIL' then
  begin
    remessaBB;
  end;

  if Edit8.Text = 'BANCO SANTANDER' then
  begin
    remessaSANTANDER;
  end;

end;

procedure TfGeraTitulosMensais.remessaBB;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, NomArquivo, Registro : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc : integer;
   valorpendente : double;
   arquivo : TextFile;
begin
   // BANCO DO BRASIL //
   if (cdsbanco.Active) then
    cdsbanco.Close;
   cdsbanco.Params[0].AsString := Edit8.Text;
   cdsbanco.Open;
   {** Verifico se o Banco excolhido existe}
   if (cdsbanco.IsEmpty) then
   begin
     MessageDlg('Banco Inexistente.', mtWarning, [mbOK], 0);
    exit;
   end;
   {** Alimento a variavel para depois us?la no campo nosso numero}
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   //numerodoc := cdsBancoN_DOC.AsInteger;

   {** gero o arquivo remassa para enviar para o Banco Brasil}
   {** verifico se o a tabela recebimentos est? aberta }
   if not cdsGerar.Active then
   begin
      MessageDlg('antes de gerar Remessa, ? preciso fazer a procura e gerar os titulos.', mtWarning, [mbOK], 0);
      exit;
   end;
   {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
   if cdsBanco.Active then
     cdsBanco.Close;
   cdsBanco.Params[0].AsString := Edit8.Text;
   cdsBanco.Open;
   if cdsBanco.IsEmpty then
   begin
     MessageDlg('p?r favor selecione o banco', mtWarning, [mbOK], 0);
     exit;
   end;
   {** daqui pra baixo gero o arquivo remessa}
   NomArquivo := Edit5.Text;
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);
   Registro := '';
  { NomArquivo1 := 'C:\BancoBrasil\LISTA' + Edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt' ;
   AssignFile(arquivo1, NomArquivo1);
   Rewrite(Arquivo1);
   Registro1 := '';
   }
   if (not dm.cds_empresa.Active) then
     dm.cds_empresa.Open;
   Append(Arquivo);
   Rewrite(arquivo);

   { GERAR REGISTRO-HEADER DA REMESSA }

   Registro := ('01'+ // TIPO DE REGISTRO 1 a 2
            Formatar(cdsBancoAGENCIA.AsString,4,true,' ')+  //AGENCIA 3 a 6
            Formatar(cdsBancoDIGAGEN.AsString,1,true,' ')+ //DIGITO AGENCIA  7 a 7
            Formatar('0000',4)+ // Completar com zeros conta corrente
            Formatar(cdsBancoCONTACORRRENTE.AsString,5,false,'0')+  //CONTA CORRENTE  8 a 16
            Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,true,' ')+ //DIGITO CONTA CORRENTE 17 a 17
            Formatar(cdsBancoCARTEIRA.AsString,3,false,'0')+ // Carteira  18 a 20
            Formatar(cdsBancoVARIACAO.AsString,3,false,'0')+ // Varia??o  21 a 23
            Formatar('000000',6)+ // 24 a 29 6 digitos Display  Numero do convenio com 6 posicoes completar com 0
            Formatar(dm.cds_empresaNOME_EMPRESA.AsString,45,true,' ')+ // Cedente  30 a 74 45 posi??es
            Formatar('LUTO SERRA',10)+ //75 a 84  sigla do cedente
            Formatar('01',2)+ // //85 a 86 Tipo de impress?o bloqueto envelopado e expedido pelo BB
            // Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // Cedente
            //Formatar(dm.cds_empresaENDERECO.AsString,60,true,' ')+//87 a 146 Endere?o para devolu??o
            Formatar(Concat(dm.cds_empresaENDERECO.AsString) + (' ') +
               (dm.cds_empresaNR.AsString)+(' ')+(dm.cds_empresaBAIRRO.AsString),60,true)+
            Formatar(RemoveChar(dm.cds_empresaCEP.AsString),8,true,'0') + //147 a 154 CEP para devolu??o
            Formatar(Concat(dm.cds_empresaCIDADE.AsString,' ') + (dm.cds_empresaESTADO.AsString),20,true) +
            Formatar('0000001',7)+ {175 a 181  SEQUENCIAL DE REMESSA.. Numero da remessa efetuada
                                               pelo cliente. O Sistema nao controla tal numeracao,
                                               admitindo quebra na sequencia e repeticao de numero
                                               ja processado. Pode ser utilizado pelo cliente para
                                               seu proprio controle. }
            Formatar('N',1)+ //182  Indicador de comferencia do sequencial de remessa
                                                { S-confere sequencial N-nao confere }
            Formatar(' ',4)+//183 a 186
            //Formatar('CBR454',8,true,' ')+//187 a 194 Identificador do arquivo CBR454
            Formatar(Edit10.Text,8,true,' ')+//187 a 194 Identificador do arquivo CBR454
            Formatar(' ',46)+//195 a 197 Reservado para o banco
            Formatar(cdsBancoNUMEROCONVENIO.AsString,7,false,'7')+ //241 a 247 espa?os
            Formatar(' ',3)+ //248 a 250 espa?os
                   ''); // NUMERO SEQUENCIAL REGISTRO
   writeln(Arquivo, Registro);
   NumeroRegistro := 2;
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   numerodoc := cdsBancoN_DOC.AsInteger;
   {------------  Arquivo Tipo 02 ---------------}
   Registro := '02'; //  Tipo de registro 1 a 2
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 1 3 a 3
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 2 4 a 4
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 3 5 a 5
   Registro := Registro + Formatar('2',1); // Tipo de fonte da instrucao 4 6 a 6
   Registro := Registro + Formatar(cdsBancoVENCIMENTO.AsString,60,true,' '); // Instrucao 1  7 a 66
   Registro := Registro + Formatar(cdsBancoVENCIMENTO1.AsString,60,true,' '); // Instrucao 2  67 a 126
   Registro := Registro + Formatar(cdsBancoVENCIMENTO2.AsString,60,true,' '); // Instrucao 3  127 a 186
   Registro := Registro + Formatar(cdsBancoVENCIMENTO3.AsString,60,true,' '); // Instrucao 4  187 a 246
   Registro := Registro + Formatar(' ',4); // Espa?os  246 a 250
   NumeroRegistro := NumeroRegistro + 1;
   writeln(Arquivo, Registro);
   Label8.Caption := '';
   Label8.Caption := 'Gerando Remessa...';
   Refresh;
   FlatGauge1.MaxValue := cdsGerar.RecordCount;
   cdsGerar.First;
   while not cdsGerar.Eof do
   begin
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
     {------------  Arquivo Tipo 04 ---------------}
     Registro := '04'; //  IDENT. DO REGISTRO     1 a 2
     Registro := Registro + Formatar('2',1); // Tipo de fonte 3 a 3
     Registro := Registro + Formatar('2',1); // Tipo de fonte 4 a 4
     Registro := Registro + Formatar('2',1); // Tipo de fonte 5 a 5
     Registro := Registro + Formatar('',25); // FILLER - BRANCOS
     Registro := Registro + Formatar('',7); // Grupo
     Registro := Registro + Formatar('',4); // FILLER - BRANCOS
     Registro := Registro + Formatar('',15); // lote
     Registro := Registro + Formatar('',3);// lote
     Registro := Registro + Formatar('',106); // FILLER - BRANCOS
     Registro := Registro + Formatar('',39); // 1? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + Formatar('dd/mm/yy',cds_falecFAL_D1.AsDateTime);  //data 1? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  1? falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 1? falec
     // 2? falicido
     Registro := Registro + Formatar('',39); // 2? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D2.AsDateTime);// 8 campos //data 2? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  2? falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 2? falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 3? falicido
     Registro := Registro + Formatar('',39); // 3? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D3.AsDateTime); //data 3? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  3? falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 3? Falec
     // 4? falecido
     Registro := Registro + Formatar('',39); // 4? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D4.AsDateTime);  //data 4? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 4? falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 4? Falec
     // 5? Falecido
     Registro := Registro + Formatar('',39); // 5? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D5.AsDateTime);  //data 5? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 5? falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 5? Falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 6? Falecido
     Registro := Registro + Formatar('',39); // 6? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D6.AsDateTime);  //data 6? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 6? falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local Falec  6? falec
     // 7? Falecido
     Registro := Registro + Formatar('',39); // 7? falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D7.AsDateTime);  //data 7? falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local Falec  7? falec
     Registro := Registro + Formatar('',100); // FILLER - BRANCOS
     Registro := Registro + Formatar('|A TRANSPARENCIA E A NOSSA CREDIBILIDADE',40);
     Registro := Registro + Formatar('',25); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',245); // FILLER - BRANCOS
     writeln(Arquivo, Registro);
     NumeroRegistro := NumeroRegistro + 1;
     {**------------  Arquivo Tipo 05  ---------------}
     {**Refere-se ? parcelas em atrazo}
    {if (TotalPendente.Active) then
        TotalPendente.Close;
     TotalPendente.Params[0].AsInteger := cdsGerarID_SOCIO.AsInteger;
     TotalPendente.Params[1].AsDate := Now;
     TotalPendente.Open;
     if TotalPendenteCOUNT.AsInteger > 1 then
     begin }
     if (cdsGerarTOT_PENDENTE.AsInteger > 1) then
     begin
       Registro := '05'; //  IDENT. DO REGISTRO
       Registro := Registro + Formatar('2',1); // Tipo de fonte
       Registro := Registro + Formatar('2',1); // Tipo de fonte
       Registro := Registro + Formatar('2',1); // Tipo de fonte
       Registro := Registro + Formatar('2',1); // Tipo de fonte
       Registro := Registro + Formatar('',60); // FILLER - BRANCOS
       Registro := Registro + Formatar('',60); // FILLER - BRANCOS
       Registro := Registro + Formatar('',60); // FILLER - BRANCOS
       Registro := Registro + Formatar('CONTEM ' + IntToStr(cdsGerarTOT_PENDENTE.AsInteger - 1) +
            ' PARCELA(S) EM ATRASO', 60);
       Registro := Registro + Formatar('',4); // FILLER - BRANCOS
       writeln(Arquivo, Registro);
       NumeroRegistro := NumeroRegistro + 1;
     end;
     //TotalPendente.Close;
     if (sqlEndereco.Active) then
         sqlEndereco.Close;
     sqlEndereco.Params[0].AsInteger := cdsGerarID_SOCIO.AsInteger;
     sqlEndereco.Open;
     {------------  Arquivo Tipo 11  ---------------}
     Registro := '11'; //  Tipo de registro 1 a 2
     Registro := Registro + Formatar('3',1); // IDENT.TIPO INSCR.EMPRESA 1-CPF 2-CNPJ 3-Isento 3 a 3
     Registro := Registro + Formatar('000000000000000',15); // Isento preencher com Zeros 4 a 18
     Registro := Registro + Formatar(cdsGerarNOME_SOCIO.AsString,40,true,' '); // NOME DO SACADO  19 a 78 {O Certo ? 60 }
     Registro := Registro + Formatar(cdsGerarGRUPO.AsString + '-' +
          IntToStr(cdsGerarN_INSCRICAO.AsInteger) +
          IntToStr(cdsGerarLOTE.AsInteger) ,20,true,' '); // IDENT. DO TITULO NA EMPRESA  38..62
     Registro := Registro + Formatar(sqlEnderecoENDERECO.AsString + '-' + sqlEnderecoBAIRRO.AsString, 60); // ENDERE?O DO SACADO 79 a 138
     //Registro := Registro + Formatar(cdsCRBAIRRO.AsString,12); // BAIRRO DO SACADO
     Registro := Registro + Formatar(RemoveChar(sqlEnderecoCEP.AsString),8,false,'0'); // CEP DO SACADO 139 a 146
     Registro := Registro + Formatar(sqlEnderecoMUNICIPIO.AsString,18,true); // CIDADE DO SACADO
     Registro := Registro + Formatar(sqlEnderecoESTADO.AsString,2,false); // ESTADO DO SACADO
     Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text)); // DATA DE EMISSAO DO TITULO
     Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit2.Text)); // DATA DE VENCIMENTO DO TITULO  121..126
     Registro := Registro + Formatar('N',1); //  ACEITE DO TITULO  N-sem aceite
     Registro := Registro + Formatar('RC',2); //  Especie de titulo  RC-recibo
     sqlEndereco.Close;

     if cds_CR.Active then
       cds_CR.Close;
     cds_CR.Params[0].AsInteger := cdsGerarID_RECEBIMENTOS.AsInteger;
     cds_CR.Open;
     cds_CR.Edit;
     cds_CRCODIGO.AsInteger := numeroTitulo;
     cds_CR.ApplyUpdates(0);

     Registro := Registro + Formatar(cdsBancoNUMEROCONVENIO.AsString, 7); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     //     Registro := Registro + Formatar(IntToStr(numeroTitulo),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     Registro := Registro + Formatar(IntToStr(cdsGerarTITULO.AsInteger),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     cds_CR.Close;
     //Registro := Registro + Formatar('D',1,true); // DV-nosso numero  193 a 193
     Registro := Registro + Formatar(intTostr(cdsGerarTITULO.AsInteger),10,false,'0'); // Nr do titulo atribuido pelo cedente 15 casa  194 a 208
     Registro := Registro + Formatar('09',2); // Display Tipo de Moeda 209 a 210  09 Real
     Registro := Registro + Formatar('00000000000000000',17); // Quantidade de moeda variavel 211 a 225
     Registro := Registro + FormatCurr('0000000000000',cdsGerarVALOR_NF.AsFloat * 100); // Valor do titulo 226 a 240
     Registro := Registro + Formatar('00',2); // Prazo para protesto o  241 a 242
     Registro := Registro + Formatar('',6); // Espacos P/ Uso do banco  243 a 248
     Registro := Registro + Formatar('00',2); // Total de parcelas  249 a 250
     NumeroRegistro := NumeroRegistro + 1;
     numeroTitulo := numeroTitulo + 1;
     numerodoc := numerodoc + 1;
     writeln(Arquivo, Registro);
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
     cdsGerar.Next;
   end;
   if cdsBanco.State in [dsBrowse] then
     cdsBanco.Edit;
   cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
   cdsBanco.ApplyUpdates(0);
   NumeroRegistro := NumeroRegistro - 1;
   {------------------- Fim do arquivo   ----------------------}
   Registro := '99'; //  IDENT. DO REGISTRO
   Registro := Registro + Formatar(IntToStr(NumeroRegistro),15,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
   Registro := Registro + Formatar(' ',233); // FILLER - BRANCOS
   writeln(Arquivo, Registro);
   CloseFile(arquivo);
   // CloseFile(arquivo1);
   FlatGauge1.Progress := 0;
   Label8.Caption := '';
   Label8.Caption := 'Arquivo Remessa Banco Brasil gerada com SUCESSO...';
   Refresh;
end;

procedure TfGeraTitulosMensais.SpeedButton1Click(Sender: TObject);
var caminho : string;
begin
  fProcurar:=TfProcurar.Create(self,proc_banco);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'BANCO';
   if fProcurar.ShowModal=mrOk then
    begin
      Edit8.Text := proc_bancoBANCO.AsString;
    end;
   finally
    proc_banco.Close;
    fProcurar.Free;
   end;
  {** Abro a tabela parametros pra ver qual o banco que ele usa para imprimir os boletos}
   if (not cds_par.Active) then
     cds_par.Open;
   if ( not cds_par.Locate('PARAMETRO','Banco Lotes', [loPartialKey])) then
   begin
    MessageDlg('insira o par?metro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

  if (not cds_banco.Active) then
   cds_banco.Open;
   if ( not cds_banco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
   caminho := cds_parDESCRICAO.AsString ;
   end;
   if Edit8.Text = 'BANCO SANTANDER' then
  //   Edit5.Text := 'C:\BANCO SANTANDER\Remessa' + '_' + edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt';
    Edit5.Text := caminho  + '_' + edit2.Text + '_' + FormatDateTime('dd_mm_yy', now) + '.txt';
   if Edit8.Text = 'BRASIL' then
     Edit5.Text := 'C:\BancoBrasil\CBR' + '_' + FormatDateTime('dd_mm_yy', now) + '.txt' ;
end;

procedure TfGeraTitulosMensais.BitBtn7Click(Sender: TObject);
var
  contador : integer;
  ano, mes, dia, dia1: word;
  mesano, diaPgto : string;
begin

  decodedate(StrToDate(DateEdit2.Text), ano, mes, dia);
  mesano := IntToStr(mes);
  mesano := mesano + IntToStr(ano);


   contador := 0;
   if MessageDlg('Alterar numero desses Recibos ?',mtConfirmation,
              [mbYes,mbNo],0) = mrYes then
   begin
     if Edit9.Text = '' Then
     begin
        MessageDlg('Informe o numero do Recibo Inicial', mtWarning, [mbOK], 0);
        exit;
     end;
       // Altero o N?mero do T?tulo
       {** Altero o N?mero do T?tulo na tabela recebimentos}
       Label8.Caption := '';
       Label8.Caption := 'Atualizando N? dos Recibos...';
       Refresh;
       FlatGauge1.MaxValue := cdsGerar.RecordCount;
       contador := StrToInt(Edit9.Text);
       cdsGerar.First;
       while not cdsGerar.Eof do
        begin
           if cds_numero.Active then
             cds_numero.Close;
           cds_numero.Params[0].AsInteger := cdsGerarID_RECEBIMENTOS.AsInteger;
           cds_numero.Open;
           cds_numero.Edit;
           cds_numeroTITULO.AsString := IntToStr(contador);
           contador := contador + 1;
           cds_numero.ApplyUpdates(0);
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsGerar.Next;
        end;
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'N? dos Recibos atualizados com SUCESSO...';
        Refresh;
   end;

   // Imprimindo Recibo.....


   VCLReport1.FileName := str_relatorio + 'rec_Mensal.rep';


   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := DM.SQLObitos;

   VCLReport1.Report.Params.ParamByName('ST').Value := mesano;
   VCLReport1.Report.Params.ParamByName('DIA').Value := dia; //lote
   VCLReport1.Report.Params.ParamByName('GP').Value := 't';
   if (Edit2.Text <> '') then
     VCLReport1.Report.Params.ParamByName('GP').Value := Edit2.Text;
   VCLReport1.Report.Params.ParamByName('INSC').Value := StrToInt(Edit3.Text);
   VCLReport1.Report.Params.ParamByName('INSC1').Value := StrToInt(Edit1.Text);
   VCLReport1.Report.Params.ParamByName('COB').Value:= 9999999;
   if Edit4.Text <> '' then
     VCLReport1.Report.Params.ParamByName('COB').Value := StrToInt(Edit4.Text);
   if (RadioGroup1.ItemIndex = 0) then
     VCLReport1.Report.Params.ParamByName('SOMAR').Value := 'sim'
   else
     VCLReport1.Report.Params.ParamByName('SOMAR').Value := 'nao';
   VCLReport1.Report.Params.ParamByName('DATA').Value := DateEdit2.Text;
   VCLReport1.Execute;
   Label8.Caption := '...';

end;

procedure TfGeraTitulosMensais.remessaSANTANDER;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, NomArquivo, Registro , tipodoc : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc : integer;
   valorpendente : double;
   arquivo : TextFile;
begin
   // BANCO SANTANDER  //
   if (cdsbanco.Active) then
    cdsbanco.Close;
   cdsbanco.Params[0].AsString := Edit8.Text;
   cdsbanco.Open;
   {** Verifico se o Banco excolhido existe}
   if (cdsbanco.IsEmpty) then
   begin
     MessageDlg('Banco Inexistente.', mtWarning, [mbOK], 0);
    exit;
   end;
   {** Alimento a variavel para depois us?la no campo nosso numero}
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   //numerodoc := cdsBancoN_DOC.AsInteger;

   {** gero o arquivo remassa para enviar para o BANCO SANTANDER }
   {** verifico se o a tabela recebimentos est? aberta }
   if not cdsGerar.Active then
   begin
      MessageDlg('Antes de gerar Remessa, ? preciso escolher o Cobrador e fazer a Pesquisa para Gerar o Arquivo.', mtWarning, [mbOK], 0);
      exit;
   end;
   {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
   if cdsBanco.Active then
     cdsBanco.Close;
   cdsBanco.Params[0].AsString := Edit8.Text;
   cdsBanco.Open;
   if cdsBanco.IsEmpty then
   begin
     MessageDlg('Favor selecionar um Banco', mtWarning, [mbOK], 0);
     exit;
   end;

   if (Edit6.Text = '')then
   begin
     MessageDlg('Favor Selecionar um Cobrador', mtWarning, [mbOK], 0);
     exit;
   end;

   {** daqui pra baixo gero o arquivo remessa}
   NomArquivo := Edit5.Text;
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);
   Registro := '';

   if (not dm.cds_empresa.Active) then
     dm.cds_empresa.Open;
   Append(Arquivo);
   Rewrite(arquivo);

        // GERAR REGISTRO-HEADER DA REMESSA

        Registro := ('033'+ // 001 - 003	C?digo do Banco na compensa??o	N	003		353 / 008 / 033	o
                    '0000'+ // 004 - 007	Lote de servi?o	N	004		0000
                    '0'+ // 008 - 008	Tipo de registro	N	001		0
                    Formatar('',08)+ // 009 - 016  Reservado (uso Banco)A 008 Brancos
                    '2' +    // 017 - 017	Tipo de inscri??o da empresa	N	001		1 = CPF,  2 = CNPJ
                    '0' +  // este zero ? para ficar o cnpj com 15 casas
                    Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14) + //  018 ? 032	N? de inscri??o da empresa	N	015
                    Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 ? 047 C?digo de Transmiss?o N 015
                    Formatar('',25)+ // 048 - 072 Reservado (uso Banco) A 025 Brancos
                    Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // 073 - 102  Nome da empresa A 030
                    Formatar(cdsBancoBANCO.AsString,30,true,' ')+ //103 - 132 Nome do Banco  A  030
                    Formatar('',10)+  //133 - 142 Reservado (uso Banco) A 010 Brancos
                    '1' +  //143 - 143 C?digo remessa N 001 1 = Remessa
                    FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ // 144 - 151 Data de gera??o do arquivo N  008 DDMMAAAA

                    Formatar('',06)+//152 - 157 Reservado (uso Banco) A 006 Brancos
                    '000001' +  //158 - 163 N? seq?encial do arquivo N  006
                    '040'  +    // 164 - 166 N? da vers?o do layout do arquivo N   003  040
                    Formatar('',74) +
                    '');// 167 - 240 Reservado (uso Banco) A 074 Brancos

         writeln(Arquivo, Registro);

         NumeroRegistro := 2;
         numeroTitulo := cdsBancoID_TITULO.asInteger;
         numerodoc := cdsBancoN_DOC.AsInteger;

        // REGISTRO HEADER DO LOTE  REMESSA

         Registro := '033'+  // 001 - 003	C?digo do Banco na compensa??o	N	003		353 / 008 / 033
         '0001'+ // 004 - 007	Numero do lote remessa	N	004
         '1'+ //  008 - 008	Tipo de registro	N	001		1
         'R' + // 009 - 009	Tipo de opera??o 	A	001		R (Remessa)
         '01'+  // 010 - 011	Tipo de servi?o	N	002		01 (Cobran?a)
         Formatar('',02)+ // 012 - 013	Reservado (uso Banco)	A	002		Brancos
         '030' + //014 - 016	N? da vers?o do layout do lote	N	003		030
         Formatar('',01)+ //017 - 017	Reservado (uso Banco) 	A	001		Brancos
         '2' + //018 - 018	Tipo de inscri??o da empresa	N	001		1 =  CPF, 2 = CNPJ
         '0' +  // este zero ? para ficar o cnpj com 15 casas
         Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14)+ //019 - 033	N? de inscri??o da empresa	N	015
         Formatar('',20)+ //034 ? 053	Reservado (uso Banco) 	A	020		Brancos
         Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 ? 047 C?digo de Transmiss?o N 015
         Formatar('',05)+ //069 ? 073	Reservado uso Banco	A	005		Brancos
         Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ //074 - 103	Nome do Cedente	A	030
         Formatar('',40)+ //104 - 143	Mensagem 1	A	040
         Formatar('',40)+ //144 - 183	Mensagem 2	A	040
         '00000000' + //184 - 191	N?mero remessa/retorno	N	008
         FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ //192 - 199	Data da grava??o remessa/retorno	N	008		DDMMAAAA
         Formatar('',41) ;//200 - 240	Reservado (uso Banco)	A	041		Brancos
         writeln(Arquivo, Registro);


    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsGerar.RecordCount;

     cdsGerar.First;
     while not cdsGerar.Eof do
     begin

       // GERAR REGISTRO DETALHE  - SEGMENTO P        TIPO 3

           ATitulosTipoOcorrencia := '01';
           aTitulosEspecieDocumento := '05';
           aTitulosAceite:='N';
           tipodoc := cdsBancoACEITEDOCUMENTO.AsString ;


           Registro := '033'; // 001 - 003	C?digo do Banco na compensa??o	N	003		353/008
           Registro := Registro + '0001'; //004 - 007 Numero do lote remessa  N  004
           Registro := Registro + '3'; // 008 - 008 Tipo de registro  N    001   3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro - 1),5,false,'0');
           Registro := Registro + 'P'; //014 - 014 C?d. Segmento do registro detalhe A 001 P
           Registro := Registro + Formatar('',01);// 015 - 015 Reservado (uso Banco) A 001  Brancos
           Registro := Registro + '01'; // 016 - 017 C?digo de movimento remessa N 002
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');// 018 ?021	Ag?ncia do Cedente   	N	004			3
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 022 ?022	D?gito da Ag?ncia do Cedente	N	001			3
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');// 023 - 031	N?mero da conta corrente	N	009			3
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); // 032 ? 032	D?gito verificador da conta	N	001			3
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');//  033 - 041	Conta cobran?a  	N	009			3
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); //042 - 042	D?gito da conta cobran?a	N	001			3
           Registro := Registro + Formatar('',2); // 043 - 044	Reservado (uso Banco)	A	002		Brancos
           Registro := Registro + Formatar(IntToStr(cdsGerarTITULO.AsInteger) ,12,false,'0');// 045 ?057	Identifica??o do t?tulo no Banco  	N	013		Nosso N?mero 	15
           Registro := Registro + Formatar(IntToStr(cdsGerarTITULO.AsInteger) + Modulo11(IntToStr(cdsGerarTITULO.AsInteger)),1,false,'0');// // 045 ?057	Identifica??o do t?tulo no Banco  	N	013		Nosso N?mero 	15
           Registro := Registro + '5'; // 058 - 058	Tipo de cobran?a	N	001			5


           Registro := Registro + Formatar(cdsBancoACEITEDOCUMENTO.AsString,1,false,'0'); //059 - 059	Forma de Cadastramento 	N	001			6   1 com registro 2 sem registro
    //     Registro := Registro + '1';// 059 - 059	Forma de Cadastramento 	N	001			6   1 com registro 2 sem registro

           Registro := Registro + '1';// 060 - 060	Tipo de documento 	N	001		1- Tradicional , 2- Escritural
           Registro := Registro + Formatar('',01);// 061 ?061	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + Formatar('',01); // 062 - 062	Reservado (uso Banco) 	A	001		Brancos
           Registro := Registro + Formatar(IntToStr(cdsGerarTITULO.AsInteger) ,15,false,'0');  // 063 - 077	N?  do documento 	A	015		Seu n?mero	16
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit2.Text)); // 078 - 085	Data de vencimento do t?tulo	N	008		DDMMAAAA	17
           Registro := Registro + FormatCurr('000000000000000',cdsGerarVALOR_NF.AsFloat * 100);// 086 - 100	Valor nominal do t?tulo	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');   // 101 - 104	Ag?ncia encarregada da cobran?a	N	004			19
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 105 ? 105	D?gito da Ag?ncia do Cedente	N	001			19
           Registro := Registro + Formatar('',01);// 106 - 106	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '17'; // 107 ? 108	Esp?cie do t?tulo	N	002			20
           Registro := Registro + 'N'; // 109 - 109	Identif. de t?tulo Aceito/N?o Aceito	A	001		A- Aceite, N- N?o Aceite
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text)); // 110 - 117	Data da emiss?o do t?tulo	N	008		DDMMAAAA
           Registro := Registro + '3'; // 118 - 118	C?digo do juros de mora	N	001			21
           Registro := Registro + '00000000' ;// 119 - 126	Data do juros de mora	N	008		DDMMAAAA	22
           Registro := Registro + '000000000000000' ;// 127 - 141	Valor da mora/dia  ou Taxa mensal	N	015	2	Decimais, sem separador	18
           Registro := Registro + '0' ;// 142 - 142	C?digo do desconto 1	N	001			23
           Registro := Registro + '00000000' ; // 143 - 150	Data de desconto 1	N	008		DDMMAAAA	23
           Registro := Registro + '000000000000000' ;// 151 - 165	Valor ou Percentual do desconto concedido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 166 - 180	Valor do IOF a ser recolhido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 181 - 195	Valor do abatimento	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar('',25); // 196 - 220	Identifica??o do t?tulo na empresa	A	025		Uso cedente(opcional)	24
           Registro := Registro + '0' ;// 221 - 221	C?digo para protesto	N	001			25
           Registro := Registro + '00' ;// 222 - 223	N?mero de dias para protesto	N	002
           Registro := Registro + '1';// 224 - 224	C?digo para Baixa/Devolu??o	N	001			26      // 3 at? dia 01/10
           Registro := Registro + '0' ;// 225 ? 225	Reservado (uso Banco)	N	001		Zero Fixo
           Registro := Registro + '05' ;// 226 - 227	N?mero de dias para Baixa/Devolu??o	N	002  // 00 at? dia 01/10
           Registro := Registro + '00' ;//228 - 229	C?digo da moeda	N	002
           Registro := Registro + Formatar('',11);//230 ?240	Reservado (uso Banco)	A	011		Brancos
           NumeroRegistro := NumeroRegistro + 1;
           numeroTitulo := numeroTitulo + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);           



         //GERAR REGISTRO DETALHE - SEGMENTO Q    TIPO 3

           Registro := '033'; // 001 - 003	C?digo do Banco na compensa??o	N	003		353/008
           Registro := Registro + '0001'; //004 - 007 Numero do lote remessa  N  004
           Registro := Registro + '3'; // 008 - 008 Tipo de registro  N    001   3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro-1),5,false,'0');
           Registro := Registro + 'Q'; //014 - 014 C?d. Segmento do registro detalhe A 001 P
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01' ;// 016 - 017	C?digo de movimento remessa	N	002			14


           // 27/12/1
           if(cdsGerarTIPO_DOC.AsString ='F') then
           begin
             Registro := Registro + ('1'); // 018 - 018	Tipo de inscri??o do sacado	N	001			29
           end;

           if(cdsGerarTIPO_DOC.AsString ='J') then
           begin
             Registro := Registro + ('2'); // 018 - 018	Tipo de inscri??o do sacado	N	001			29
           end;


           // dia 27/12/17
           Registro := Registro + Formatar(RemoveChar(cdsGerarCPF_CGC.AsString),15,false,'0') ;//29


           Registro := Registro + Formatar(cdsGerarNOME_SOCIO.AsString, 40,true,' '); // 034 - 073	Nome sacado	A	040
           Registro := Registro + Formatar(cdsGerarRUA.AsString, 40); // 074 - 113	Endere?o  sacado	A	040
           Registro := Registro + Formatar(cdsGerarBAIRRO.AsString,15); // 114 - 128	Bairro  sacado	A	015
           Registro := Registro + Formatar(RemoveChar(cdsGerarCEP.AsString),5,true,'0'); // 129 - 133	Cep  sacado	N	005
           Registro := Registro + Formatar(RemoveChar(cdsGerarCEP.AsString),3,false,'0'); // 134 - 136	Sufixo do Cep do sacado	N	003
           Registro := Registro + Formatar(cdsGerarMUNICIPIO.AsString,15,true); // 137 - 151	Cidade do sacado	A	015
           Registro := Registro + Formatar(cdsGerarUF.AsString,2,false); // 152 - 153	Unidade da federa??o do sacado	A	002
           Registro := Registro + '0';// 154 - 154	Tipode inscri??o sacador/avalista	N	001			29
           Registro := Registro + '000000000000000';// 155 - 169	N? de inscri??o sacador/avalista	N	015			29
           Registro := Registro + Formatar('',40);// 170 - 209	Nome do sacador/avalista	A	040			30
           Registro := Registro + '000' ;// 210 ?212	Identificador de carne	N	003		         	28
           Registro := Registro + '000' ;// 213 ?215	Sequencial da Parcela ou n?mero inicial da parcela	N	003			28
           Registro := Registro + '000' ;// 216 ?218	Quantidade total de parcelas	N	003			28
           Registro := Registro + '000' ;// 219 ? 221	N?mero do plano	N	003			28
           Registro := Registro + Formatar('',19);// 222 - 240	Reservado (uso Banco)	A	019		Brancos

           writeln(Arquivo, Registro);
           NumeroRegistro := NumeroRegistro + 1;
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsGerar.Next;
        end;
        if cdsBanco.State in [dsBrowse] then
          cdsBanco.Edit;
        cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
        cdsBanco.ApplyUpdates(0);
        NumeroRegistro := NumeroRegistro - 1;

        // TRAILER DE LOTE REMESSA      TIPO 5

 
         Registro :=  '033' ; //  001 - 003	C?digo do Banco na compensa??o	N	003		353 / 008 / 033
         Registro := Registro + '0001' ;// 004 - 007	Numero do lote remessa	N	004
         Registro := Registro + '5' ; // 008 - 008	Tipo de registro	N	001		5
         Registro := Registro + Formatar('',9) ;// 009 - 017	Reservado (uso Banco)	N	009		Brancos
         NumeroRegistro := NumeroRegistro + 1;
         Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // 018 - 023	Quantidade de registros do lote	N	006
         Registro := Registro + Formatar('',217) ;// 024 - 240	Reservado (uso Banco)	A	217		Brancos
         writeln(Arquivo, Registro); 

       // TRAILER DE ARQUIVO REMESSA


        Registro :=  '033' ; // 001 - 003 C?digo do Banco na compensa??o N 003 353 / 008 / 033
        Registro := Registro + '9999' ;// 004 - 007  Numero do lote remessa N       004
        Registro := Registro + '9' ; //  008 - 008 Tipo de registro N   001 9
        Registro := Registro + Formatar('',9) ; //009 - 017 Reservado (uso Banco)  N      009  Brancos
        Registro := Registro + '000001' ; // 018 - 023  Quantidade de lotes do arquivo N  006 Registros tipo=1

        NumeroRegistro := NumeroRegistro + 2;  // aqui eu somo todos os tipos de  Linha

        Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO
        Registro := Registro + Formatar('',211) ; //

        writeln(Arquivo, Registro);
        CloseFile(arquivo);
        FlatGauge1.Progress := 0;
        Label8.Caption := '';
        Label8.Caption := 'Remessa gerada com SUCESSO...';

                                    /////// fim do Arquivo Remessa \\\\\\\\\\\
        Refresh;

end;

procedure TfGeraTitulosMensais.Edit2Exit(Sender: TObject);
begin
 Edit8.Text := '';
end;

procedure TfGeraTitulosMensais.Edit2Change(Sender: TObject);
begin
   Edit8.Text := '';
end;

end.
