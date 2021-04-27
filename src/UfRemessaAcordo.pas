unit UfRemessaAcordo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, SqlExpr, Provider, DB, DBClient, DBCtrls,
  Buttons, DBLocal, DBLocalS, TFlatGaugeUnit, dxCore, dxButton, ExtCtrls,
  Mask, ToolEdit, gbCobranca, Grids, DBGrids;

type
  TfRemessaAcordo = class(TForm)
    proc_banco: TSQLClientDataSet;
    proc_bancoAGENCIA: TStringField;
    proc_bancoBANCO: TStringField;
    Label10: TLabel;
    Edit8: TEdit;
    Label15: TLabel;
    Edit10: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn4: TSpeedButton;
    Edit5: TEdit;
    Label9: TLabel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn2: TdxButton;
    dxButton5: TdxButton;
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
    sqlParcelas: TSQLDataSet;
    sqlParcelasTOTALPARCELAS: TIntegerField;
    sqlValorPendente: TSQLDataSet;
    sqlValorPendenteVALORPENDENTE: TFloatField;
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
    DateEdit1: TDateEdit;
    Label1: TLabel;
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
    cds_CRPERCENTUALJUROS: TFloatField;
    cds_CRPERCENTUALMULTA: TFloatField;
    cds_CRPERCENTUALDESCONTO: TFloatField;
    cds_CRVALOROUTROSACRESCIMOS: TFloatField;
    cds_CRTITULO: TIntegerField;
    cds_CRSERIE: TStringField;
    cds_CRCODIGO: TIntegerField;
    cds_CRtotal_titulo: TAggregateField;
    cds_CRtotal_pago: TAggregateField;
    gbCobranca1: TgbCobranca;
    gbTitulo1: TgbTitulo;
    DataSource1: TDataSource;
    cdsCR: TClientDataSet;
    dspCR: TDataSetProvider;
    sdsCR: TSQLDataSet;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    Edit6: TEdit;
    Edit4: TEdit;
    BitBtn1: TdxButton;
    sdsCRID_RECEBIMENTOS: TIntegerField;
    sdsCRSTATUS: TStringField;
    sdsCREMISSAO: TDateField;
    sdsCRVENCIMENTO: TDateField;
    sdsCRVALOR_NF: TFloatField;
    sdsCRLOTE: TIntegerField;
    sdsCRGRUPO: TStringField;
    sdsCRNOME_SOCIO: TStringField;
    sdsCRN_INSCRICAO: TIntegerField;
    sdsCRCPF_CGC: TStringField;
    sdsCRNOME: TStringField;
    sdsCRMESANO: TStringField;
    sdsCRN_BOLETO: TStringField;
    sdsCRTITULO: TIntegerField;
    sdsCRID_SOCIO: TIntegerField;
    sdsCRID: TIntegerField;
    sdsCRTOT_PENDENTE: TIntegerField;
    sdsCRRUA: TStringField;
    sdsCRCEP: TStringField;
    sdsCRUF: TStringField;
    sdsCRBAIRRO: TStringField;
    sdsCRMUNICIPIO: TStringField;
    cdsCRID_RECEBIMENTOS: TIntegerField;
    cdsCRSTATUS: TStringField;
    cdsCREMISSAO: TDateField;
    cdsCRVENCIMENTO: TDateField;
    cdsCRVALOR_NF: TFloatField;
    cdsCRLOTE: TIntegerField;
    cdsCRGRUPO: TStringField;
    cdsCRNOME_SOCIO: TStringField;
    cdsCRN_INSCRICAO: TIntegerField;
    cdsCRCPF_CGC: TStringField;
    cdsCRNOME: TStringField;
    cdsCRMESANO: TStringField;
    cdsCRN_BOLETO: TStringField;
    cdsCRTITULO: TIntegerField;
    cdsCRID_SOCIO: TIntegerField;
    cdsCRID: TIntegerField;
    cdsCRTOT_PENDENTE: TIntegerField;
    cdsCRRUA: TStringField;
    cdsCRCEP: TStringField;
    cdsCRUF: TStringField;
    cdsCRBAIRRO: TStringField;
    cdsCRMUNICIPIO: TStringField;
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
    sdsCRTIPO_DOC: TStringField;
    cdsCRTIPO_DOC: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
  private
     procedure remessaBB;
     procedure remessaSANTANDER;     
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRemessaAcordo: TfRemessaAcordo;

implementation

uses uContasReceber, UDM, uProcurar;

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


procedure TfRemessaAcordo.SpeedButton1Click(Sender: TObject);
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
    MessageDlg('insira o parâmetro "Banco Lotes"  na tabela PARAMETROS ', mtWarning, [mbOK], 0);
    exit;
   end;

  if (not cdsBanco.Active) then
   cdsBanco.Open;
   if ( not cdsBanco.Locate('BANCO',cds_parPARAMETRO1.AsString, [loPartialKey])) then
   begin
   caminho := cds_parDESCRICAO.AsString ;
   end;
   if Edit8.Text = 'BANCO SANTANDER' then


   if Edit8.Text = 'BANCO SANTANDER' then
     Edit5.Text := caminho + '_Acordo'+ Edit2.Text + Edit3.Text +'_' + FormatDateTime('dd_mm_yy', now) + '.txt';

   if Edit8.Text = 'BRASIL' then
     Edit5.Text := 'C:\BancoBrasil\CBR' + '_' + FormatDateTime('dd_mm_yy', now) + '.txt' ;

end;

procedure TfRemessaAcordo.BitBtn4Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  Edit5.Text := SaveDialog1.FileName;
end;

procedure TfRemessaAcordo.BitBtn2Click(Sender: TObject);
begin
  if Edit8.Text = 'BRASIL' then
  begin
    remessaBB;
  end;

    if (Edit8.Text = '') then
  begin
      MessageDlg('Escolha um Banco para Gerar ....', mtWarning, [mbOK], 0);
      edit8.SetFocus;
      exit;
  end;


  if Edit8.Text = 'BANCO SANTANDER' then
  begin
    remessaSANTANDER;
  end;
end;

procedure TfRemessaAcordo.remessaBB;
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
   {** Alimento a variavel para depois usála no campo nosso numero}
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   //numerodoc := cdsBancoN_DOC.AsInteger;

   {** gero o arquivo remassa para enviar para o Banco Brasil}
   {** verifico se o a tabela recebimentos está aberta }
   if not cdsCR.Active then
   begin
      MessageDlg('antes de gerar os Boletos, selecione os socios para quem será '+#13+#10+'emitida a cobrança.', mtWarning, [mbOK], 0);
      exit;
   end;
   {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
   if cdsBanco.Active then
     cdsBanco.Close;
   cdsBanco.Params[0].AsString := Edit8.Text;
   cdsBanco.Open;
   if cdsBanco.IsEmpty then
   begin
     MessageDlg('pôr favor selecione o banco', mtWarning, [mbOK], 0);
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
            Formatar(cdsBancoVARIACAO.AsString,3,false,'0')+ // Variação  21 a 23
            Formatar('000000',6)+ // 24 a 29 6 digitos Display  Numero do convenio com 6 posicoes completar com 0
            Formatar(dm.cds_empresaNOME_EMPRESA.AsString,45,true,' ')+ // Cedente  30 a 74 45 posições
            Formatar('LUTO SERRA',10)+ //75 a 84  sigla do cedente
            Formatar('01',2)+ // //85 a 86 Tipo de impressão bloqueto envelopado e expedido pelo BB
            // Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // Cedente
            //Formatar(dm.cds_empresaENDERECO.AsString,60,true,' ')+//87 a 146 Endereço para devolução
            Formatar(Concat(dm.cds_empresaENDERECO.AsString) + (' ') +
               (dm.cds_empresaNR.AsString)+(' ')+(dm.cds_empresaBAIRRO.AsString),60,true)+
            Formatar(RemoveChar(dm.cds_empresaCEP.AsString),8,true,'0') + //147 a 154 CEP para devolução
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
            Formatar(cdsBancoNUMEROCONVENIO.AsString,7,false,'7')+ //241 a 247 espaços
            Formatar(' ',3)+ //248 a 250 espaços
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
   Registro := Registro + Formatar(' ',4); // Espaços  246 a 250
   NumeroRegistro := NumeroRegistro + 1;
   writeln(Arquivo, Registro);
   Label8.Caption := '';
   Label8.Caption := 'Gerando Remessa...';
   Refresh;
   FlatGauge1.MaxValue := cdsCR.RecordCount;
   cdsCR.First;
   while not cdsCR.Eof do
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
     Registro := Registro + Formatar('',39); // 1º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + Formatar('dd/mm/yy',cds_falecFAL_D1.AsDateTime);  //data 1º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  1º falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 1º falec
     // 2º falicido
     Registro := Registro + Formatar('',39); // 2º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D2.AsDateTime);// 8 campos //data 2º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  2º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 2º falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 3º falicido
     Registro := Registro + Formatar('',39); // 3º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D3.AsDateTime); //data 3º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente  3º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 3º Falec
     // 4º falecido
     Registro := Registro + Formatar('',39); // 4º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D4.AsDateTime);  //data 4º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 4º falec
     Registro := Registro + Formatar('',15); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 4º Falec
     // 5º Falecido
     Registro := Registro + Formatar('',39); // 5º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D5.AsDateTime);  //data 5º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 5º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local 5º Falec
     Registro := Registro + Formatar('',5); // FILLER - BRANCOS
     NumeroRegistro := NumeroRegistro + 1;
     writeln(Arquivo, Registro);
     Registro := '04'; //  IDENT. DO REGISTRO
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     Registro := Registro + Formatar('2',1); // Tipo de fonte
     // 6º Falecido
     Registro := Registro + Formatar('',39); // 6º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D6.AsDateTime);  //data 6º falec
     Registro := Registro + Formatar('',1); // FILLER - BRANCOS
     Registro := Registro + Formatar('',4);
     Registro := Registro + Formatar('',15); // dependente 6º falec
     Registro := Registro + Formatar('',11); // FILLER - BRANCOS
     Registro := Registro + Formatar('',79); // Local Falec  6º falec
     // 7º Falecido
     Registro := Registro + Formatar('',39); // 7º falecido
     Registro := Registro + Formatar('',11);
     //Registro := Registro + FormatDateTime('dd/mm/yy',cds_falecFAL_D7.AsDateTime);  //data 7º falec
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
     Registro := Registro + Formatar('',79); // Local Falec  7º falec
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
     {**Refere-se à parcelas em atrazo}
     if cdsCRTOT_PENDENTE.AsInteger > 0 then
     begin
         Registro := '05'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('2',1); // Tipo de fonte
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('',60); // FILLER - BRANCOS
         Registro := Registro + Formatar('CONTEM ' + IntToStr(cdsCRTOT_PENDENTE.AsInteger) +
                ' PARCELA(S) EM ATRASO', 60);
         Registro := Registro + Formatar('',4); // FILLER - BRANCOS
         writeln(Arquivo, Registro);
         NumeroRegistro := NumeroRegistro + 1;
     end;
     {------------  Arquivo Tipo 11  ---------------}
     Registro := '11'; //  Tipo de registro 1 a 2
     Registro := Registro + Formatar('3',1); // IDENT.TIPO INSCR.EMPRESA 1-CPF 2-CNPJ 3-Isento 3 a 3
     Registro := Registro + Formatar('000000000000000',15); // Isento preencher com Zeros 4 a 18
     Registro := Registro + Formatar(cdsCRNOME.AsString,40,true,' '); // NOME DO SACADO  19 a 78 {O Certo é 60 }
///     Registro := Registro + Formatar(cdsCRN_GRUPO.AsString + '-' +
///          IntToStr(cdsCRINSCRICAO.AsInteger) +
///          IntToStr(cdsCRN_LOTE.AsInteger) ,20,true,' '); // IDENT. DO TITULO NA EMPRESA  38..62
     Registro := Registro + Formatar(cdsCRRUA.AsString + '-' + cdsCRBAIRRO.AsString, 60); // ENDEREÇO DO SACADO 79 a 138
     //Registro := Registro + Formatar(cdsCRBAIRRO.AsString,12); // BAIRRO DO SACADO
     Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),8,false,'0'); // CEP DO SACADO 139 a 146
     Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,18,true); // CIDADE DO SACADO
     Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // ESTADO DO SACADO
     Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit1.Text)); // DATA DE EMISSAO DO TITULO
     ////////////Registro := Registro + FormatDateTime('ddmmyy',StrToDateTime(DateEdit2.Text)); // DATA DE VENCIMENTO DO TITULO  121..126
     Registro := Registro + Formatar('N',1); //  ACEITE DO TITULO  N-sem aceite
     Registro := Registro + Formatar('RC',2); //  Especie de titulo  RC-recibo
     if cds_CR.Active then
       cds_CR.Close;
///     cds_CR.Params[0].AsInteger := cdsCRIDREC.AsInteger;
     cds_CR.Open;
     cds_CR.Edit;
     cds_CRCODIGO.AsInteger := numeroTitulo;
     cds_CR.ApplyUpdates(0);
     Registro := Registro + Formatar(cdsBancoNUMEROCONVENIO.AsString, 7); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     //     Registro := Registro + Formatar(IntToStr(numeroTitulo),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
///     Registro := Registro + Formatar(IntToStr(cdsCRN_TITULO.AsInteger),10,false,'0'); // IDENT. DO TITULO NO BANCO S/ DIG VERIFICADOR
     cds_CR.Close;
     //Registro := Registro + Formatar('D',1,true); // DV-nosso numero  193 a 193
///     Registro := Registro + Formatar(intTostr(cdsCRN_TITULO.AsInteger),10,false,'0'); // Nr do titulo atribuido pelo cedente 15 casa  194 a 208
     Registro := Registro + Formatar('09',2); // Display Tipo de Moeda 209 a 210  09 Real
     Registro := Registro + Formatar('00000000000000000',17); // Quantidade de moeda variavel 211 a 225
///     Registro := Registro + FormatCurr('0000000000000',cdsCRVALOR.AsFloat * 100); // Valor do titulo 226 a 240
     Registro := Registro + Formatar('00',2); // Prazo para protesto o  241 a 242
     Registro := Registro + Formatar('',6); // Espacos P/ Uso do banco  243 a 248
     Registro := Registro + Formatar('00',2); // Total de parcelas  249 a 250
     NumeroRegistro := NumeroRegistro + 1;
     numeroTitulo := numeroTitulo + 1;
     numerodoc := numerodoc + 1;
     writeln(Arquivo, Registro);
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
     cdsCR.Next;
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

procedure TfRemessaAcordo.SpeedButton2Click(Sender: TObject);
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
   end;


end;

procedure TfRemessaAcordo.BitBtn1Click(Sender: TObject);
var
   ano, mes, dia, dia1: word;

begin
  {** Verifico se os campos referentes a Lote e Grupo forão preenchidos se ñ cancelo a operação}
  if DateEdit1.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Emissão do Título que deseja Localizar.', mtWarning, [mbOK], 0);
    DateEdit1.SetFocus;
    exit;
  end;

 {
  if DateEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Informe a data de Vencimento do Título que deseja Localizar.', mtWarning, [mbOK], 0);
    DateEdit2.SetFocus;
    exit;
  end;
  }

  if (Edit3.Text = '') then
  begin
      MessageDlg('Informe a Inscrição : De ....', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      exit;
  end;

  if (Edit1.Text = '') then
  begin
      MessageDlg('Informe a Inscrição : Até.....', mtWarning, [mbOK], 0);
      edit1.SetFocus;
      exit;
  end;
  if (Edit6.Text = '') then
  begin
      MessageDlg('Informe o Cobrador.', mtWarning, [mbOK], 0);
      edit6.SetFocus;
      exit;
  end;
 if Edit2.Text = '' then
 begin
   MessageDlg('Preencha o campo Grupo ', mtWarning, [mbOK], 0);
   Edit2.SetFocus;
   exit;
 end;

 if cdsCR.Active then
   cdsCR.Close;
  cdsCR.Params[0].Clear;
  cdsCR.Params[1].Clear;
  cdsCR.Params[2].Clear;
  cdsCR.Params[3].Clear;
  cdsCR.Params[4].Clear;

  cdsCR.Params[0].AsString := Edit2.Text;
  cdsCR.Params[1].AsInteger := StrToInt(Edit3.Text);
  cdsCR.Params[2].AsInteger := StrToInt(Edit1.Text);
  cdsCR.Params[3].AsInteger:= StrToInt(Edit4.Text);
  cdsCR.Params[4].AsDate := StrToDate(DateEdit1.Text);
  cdsCR.Open;
end;

procedure TfRemessaAcordo.dxButton5Click(Sender: TObject);
begin
  close;
end;

procedure TfRemessaAcordo.remessaSANTANDER;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, NomArquivo, Registro : string;
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
   {** Alimento a variavel para depois usála no campo nosso numero}
   numeroTitulo := cdsBancoID_TITULO.asInteger;
   //numerodoc := cdsBancoN_DOC.AsInteger;

   {** gero o arquivo remassa para enviar para o BANCO SANTANDER }
   {** verifico se o a tabela recebimentos está aberta }
   if not cdsCR.Active then
   begin
      MessageDlg('antes de gerar Remessa, é preciso fazer a procura e gerar os titulos.', mtWarning, [mbOK], 0);
      exit;
   end;
   {** verifico se foi selecionado o banco e se ele existe na tabela BANCOS}
   if cdsBanco.Active then
     cdsBanco.Close;
   cdsBanco.Params[0].AsString := Edit8.Text;
   cdsBanco.Open;
   if cdsBanco.IsEmpty then
   begin
     MessageDlg('Favor Selecionar um Banco', mtWarning, [mbOK], 0);
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

        Registro := ('033'+ // 001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033	o
                    '0000'+ // 004 - 007	Lote de serviço	N	004		0000
                    '0'+ // 008 - 008	Tipo de registro	N	001		0
                    Formatar('',08)+ // 009 - 016  Reservado (uso Banco)A 008 Brancos
                    '2' +    // 017 - 017	Tipo de inscrição da empresa	N	001		1 = CPF,  2 = CNPJ
                    '0' +  // este zero é para ficar o cnpj com 15 casas
                    Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14,true,'0') + //  018 – 032	Nº de inscrição da empresa	N	015
                    Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 – 047 Código de Transmissão N 015
                    Formatar('',25)+ // 048 - 072 Reservado (uso Banco) A 025 Brancos
                    Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ // 073 - 102  Nome da empresa A 030
                    Formatar(cdsBancoBANCO.AsString,30,true,' ')+ //103 - 132 Nome do Banco  A  030
                    Formatar('',10)+  //133 - 142 Reservado (uso Banco) A 010 Brancos
                    '1' +  //143 - 143 Código remessa N 001 1 = Remessa
                    FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ // 144 - 151 Data de geração do arquivo N  008 DDMMAAAA

                    Formatar('',06)+//152 - 157 Reservado (uso Banco) A 006 Brancos
                    '000001' +  //158 - 163 Nº seqüencial do arquivo N  006
                    '040'  +    // 164 - 166 Nº da versão do layout do arquivo N   003  040
                    Formatar('',74) +
                    '');// 167 - 240 Reservado (uso Banco) A 074 Brancos

         writeln(Arquivo, Registro);     

         NumeroRegistro := 2;
         numeroTitulo := cdsBancoID_TITULO.asInteger;
         numerodoc := cdsBancoN_DOC.AsInteger;

        // REGISTRO HEADER DO LOTE  REMESSA

         Registro := '033'+  // 001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033
         '0001'+ // 004 - 007	Numero do lote remessa	N	004
         '1'+ //  008 - 008	Tipo de registro	N	001		1
         'R' + // 009 - 009	Tipo de operação 	A	001		R (Remessa)
         '01'+  // 010 - 011	Tipo de serviço	N	002		01 (Cobrança)
         Formatar('',02)+ // 012 - 013	Reservado (uso Banco)	A	002		Brancos
         '030' + //014 - 016	Nº da versão do layout do lote	N	003		030
         Formatar('',01)+ //017 - 017	Reservado (uso Banco) 	A	001		Brancos
         '2' + //018 - 018	Tipo de inscrição da empresa	N	001		1 =  CPF, 2 = CNPJ

         '0' +  // este zero é para ficar o cnpj com 15 casas
         Formatar(RemoveChar(dm.cds_empresaCNPJ.AsString),14)+ //019 - 033	Nº de inscrição da empresa	N	015

         Formatar('',20)+ //034 – 053	Reservado (uso Banco) 	A	020		Brancos
         Formatar(cdsBancoCONTA.AsString,15,true,' ')+ //  033 – 047 Código de Transmissão N 015
         Formatar('',05)+ //069 – 073	Reservado uso Banco	A	005		Brancos
         Formatar(dm.cds_empresaNOME_EMPRESA.AsString,30,true,' ')+ //074 - 103	Nome do Cedente	A	030
         Formatar('',40)+ //104 - 143	Mensagem 1	A	040
         Formatar('',40)+ //144 - 183	Mensagem 2	A	040
         '00000000' + //184 - 191	Número remessa/retorno	N	008
         FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text))+ //192 - 199	Data da gravação remessa/retorno	N	008		DDMMAAAA
         Formatar('',41) ;//200 - 240	Reservado (uso Banco)	A	041		Brancos

         writeln(Arquivo, Registro);


    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsCR.RecordCount;

     cdsCR.First;
     while not cdsCR.Eof do
     begin

       // GERAR REGISTRO DETALHE  - SEGMENTO P        TIPO 3

           ATitulosTipoOcorrencia := '01';
           aTitulosEspecieDocumento := '05';
           aTitulosAceite:='N';

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; //004 - 007 Numero do lote remessa  N  004
           Registro := Registro + '3'; // 008 - 008 Tipo de registro  N    001   3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro - 1),5,false,'0');
           Registro := Registro + 'P'; //014 - 014 Cód. Segmento do registro detalhe A 001 P
           Registro := Registro + Formatar('',01);// 015 - 015 Reservado (uso Banco) A 001  Brancos
           Registro := Registro + '01'; // 016 - 017 Código de movimento remessa N 002
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');// 018 –021	Agência do Cedente   	N	004			3
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 022 –022	Dígito da Agência do Cedente	N	001			3
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');// 023 - 031	Número da conta corrente	N	009			3
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); // 032 – 032	Dígito verificador da conta	N	001			3
           Registro := Registro + Formatar(cdsBancoCONTACORRRENTE.AsString,9,false,'0');//  033 - 041	Conta cobrança  	N	009			3
           Registro := Registro + Formatar(cdsBancoDIGITOCONTACORRENTE.AsString,1,false,'0'); //042 - 042	Dígito da conta cobrança	N	001			3
           Registro := Registro + Formatar('',2); // 043 - 044	Reservado (uso Banco)	A	002		Brancos
           Registro := Registro + Formatar(IntToStr(cdsCRTITULO.AsInteger) ,12,false,'0');// 045 –057	Identificação do título no Banco  	N	013		Nosso Número 	15
           Registro := Registro + Formatar(IntToStr(cdsCRTITULO.AsInteger) + Modulo11(IntToStr(cdsCRTITULO.AsInteger)),1,false,'0');// // 045 –057	Identificação do título no Banco  	N	013		Nosso Número 	15
           Registro := Registro + '5'; // 058 - 058	Tipo de cobrança	N	001			5
           Registro := Registro + '1';// 059 - 059	Forma de Cadastramento 	N	001			6   1 com registro 2 sem registro
           Registro := Registro + '1';// 060 - 060	Tipo de documento 	N	001		1- Tradicional , 2- Escritural
           Registro := Registro + Formatar('',01);// 061 –061	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + Formatar('',01); // 062 - 062	Reservado (uso Banco) 	A	001		Brancos

           Registro := Registro + Formatar(IntToStr(cdsCRTITULO.AsInteger) ,15,false,'0');  // 063 - 077	Nº  do documento 	A	015		Seu número	16

    //AVULSO  tem   que pegar a data no bd

           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(cdsCRVENCIMENTO.AsString)); // 078 - 085	Data de vencimento do título	N	008		DDMMAAAA	17

           Registro := Registro + FormatCurr('000000000000000',cdsCRVALOR_NF.AsFloat * 100);// 086 - 100	Valor nominal do título	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar(cdsBancoAGENCIA.AsString,4,false,'0');   // 101 - 104	Agência encarregada da cobrança	N	004			19
           Registro := Registro + Formatar(cdsBancoDIGAGEN.AsString,1,false,'0');// 105 – 105	Dígito da Agência do Cedente	N	001			19
           Registro := Registro + Formatar('',01);// 106 - 106	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '17'; // 107 – 108	Espécie do título	N	002			20
           Registro := Registro + 'N'; // 109 - 109	Identif. de título Aceito/Nào Aceito	A	001		A- Aceite, N- Não Aceite
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit1.Text)); // 110 - 117	Data da emissão do título	N	008		DDMMAAAA
           Registro := Registro + '3'; // 118 - 118	Código do juros de mora	N	001			21
           Registro := Registro + '00000000' ;// 119 - 126	Data do juros de mora	N	008		DDMMAAAA	22
           Registro := Registro + '000000000000000' ;// 127 - 141	Valor da mora/dia  ou Taxa mensal	N	015	2	Decimais, sem separador	18
           Registro := Registro + '0' ;// 142 - 142	Código do desconto 1	N	001			23
           Registro := Registro + '00000000' ; // 143 - 150	Data de desconto 1	N	008		DDMMAAAA	23
           Registro := Registro + '000000000000000' ;// 151 - 165	Valor ou Percentual do desconto concedido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 166 - 180	Valor do IOF a ser recolhido	N	015	2	Decimais sem separador	18
           Registro := Registro + '000000000000000' ;// 181 - 195	Valor do abatimento	N	015	2	Decimais sem separador	18
           Registro := Registro + Formatar('',25); // 196 - 220	Identificação do título na empresa	A	025		Uso cedente(opcional)	24
           Registro := Registro + '0' ;// 221 - 221	Código para protesto	N	001			25
           Registro := Registro + '00' ;// 222 - 223	Número de dias para protesto	N	002
           Registro := Registro + '1';// 224 - 224	Código para Baixa/Devolução	N	001			26       // 3 até dia 01/10
           Registro := Registro + '0' ;// 225 – 225	Reservado (uso Banco)	N	001		Zero Fixo
           Registro := Registro + '05' ;// 226 - 227	Número de dias para Baixa/Devolução	N	002    // 00 até dia 01/10
           Registro := Registro + '00' ;//228 - 229	Código da moeda	N	002
           Registro := Registro + Formatar('',11);//230 –240	Reservado (uso Banco)	A	011		Brancos
           NumeroRegistro := NumeroRegistro + 1;
           numeroTitulo := numeroTitulo + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);


           //GERAR REGISTRO DETALHE - SEGMENTO Q    TIPO 3

           Registro := '033'; // 001 - 003	Código do Banco na compensação	N	003		353/008
           Registro := Registro + '0001'; //004 - 007 Numero do lote remessa  N  004
           Registro := Registro + '3'; // 008 - 008 Tipo de registro  N    001   3
           Registro := Registro + Formatar(IntToStr(NumeroRegistro-1),5,false,'0');
           Registro := Registro + 'Q'; //014 - 014 Cód. Segmento do registro detalhe A 001 P
           Registro := Registro + Formatar('',01);// 015 - 015	Reservado (uso Banco)	A	001		Brancos
           Registro := Registro + '01' ;// 016 - 017	Código de movimento remessa	N	002			14



           // 27/12/1
           if(cdsCRTIPO_DOC.AsString ='F') then
           begin
             Registro := Registro + ('1'); // 018 - 018	Tipo de inscrição do sacado	N	001			29
           end;

           if(cdsCRTIPO_DOC.AsString ='J') then
           begin
             Registro := Registro + ('2'); // 018 - 018	Tipo de inscrição do sacado	N	001			29
           end;

           Registro := Registro + Formatar(RemoveChar(cdsCRCPF_CGC.AsString),15,false,'0'); // 019 - 033	Número de inscrição do sacado	N	015			29

           Registro := Registro + Formatar(cdsCRNOME_SOCIO.AsString, 40,true,' '); // 034 - 073	Nome sacado	A	040
           Registro := Registro + Formatar(cdsCRRUA.AsString, 40); // 074 - 113	Endereço  sacado	A	040
           Registro := Registro + Formatar(cdsCRBAIRRO.AsString,15); // 114 - 128	Bairro  sacado	A	015
           Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),5,true,'0'); // 129 - 133	Cep  sacado	N	005
           Registro := Registro + Formatar(RemoveChar(cdsCRCEP.AsString),3,false,'0'); // 134 - 136	Sufixo do Cep do sacado	N	003
           Registro := Registro + Formatar(cdsCRMUNICIPIO.AsString,15,true); // 137 - 151	Cidade do sacado	A	015
           Registro := Registro + Formatar(cdsCRUF.AsString,2,false); // 152 - 153	Unidade da federação do sacado	A	002
           Registro := Registro + '0';// 154 - 154	Tipode inscrição sacador/avalista	N	001			29
           Registro := Registro + '000000000000000';// 155 - 169	Nº de inscrição sacador/avalista	N	015			29
           Registro := Registro + Formatar('',40);// 170 - 209	Nome do sacador/avalista	A	040			30
           Registro := Registro + '000' ;// 210 –212	Identificador de carne	N	003		         	28
           Registro := Registro + '000' ;// 213 –215	Sequencial da Parcela ou número inicial da parcela	N	003			28
           Registro := Registro + '000' ;// 216 –218	Quantidade total de parcelas	N	003			28
           Registro := Registro + '000' ;// 219 – 221	Número do plano	N	003			28
           Registro := Registro + Formatar('',19);// 222 - 240	Reservado (uso Banco)	A	019		Brancos
           writeln(Arquivo, Registro);
           NumeroRegistro := NumeroRegistro + 1;
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           cdsCR.Next;
        end;
        if cdsBanco.State in [dsBrowse] then
          cdsBanco.Edit;
        cdsBancoID_TITULO.asInteger := numeroTitulo + 1;
        cdsBanco.ApplyUpdates(0);
        NumeroRegistro := NumeroRegistro - 1;

         //   TRAILER DE LOTE REMESSA      TIPO 5

         Registro :=  '033' ; //  001 - 003	Código do Banco na compensação	N	003		353 / 008 / 033
         Registro := Registro + '0001' ;// 004 - 007	Numero do lote remessa	N	004
         Registro := Registro + '5' ; // 008 - 008	Tipo de registro	N	001		5
         Registro := Registro + Formatar('',9) ;// 009 - 017	Reservado (uso Banco)	N	009		Brancos
         NumeroRegistro := NumeroRegistro + 1;
         Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // 018 - 023	Quantidade de registros do lote	N	006
         Registro := Registro + Formatar('',217) ;// 024 - 240	Reservado (uso Banco)	A	217		Brancos
         writeln(Arquivo, Registro);

       // TRAILER DE ARQUIVO REMESSA


         Registro :=  '033' ; // 001 - 003 Código do Banco na compensação N 003 353 / 008 / 033
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

end.
