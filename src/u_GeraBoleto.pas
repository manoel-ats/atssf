unit u_GeraBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, ACBrUtil, StdCtrls, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr, DBClient, Provider, DBXpress, u_GeraCobranca;

type
  Tf_GeraBoleto = class(TForm)
    MMJPanel1: TMMJPanel;
    lbl5: TLabel;
    MMJPanel3: TMMJPanel;
    lbl1: TLabel;
    lbl7: TLabel;
    cbb1: TComboBox;
    edt2: TEdit;
    MMJPanel2: TMMJPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    s_banco: TSQLDataSet;
    BancoSelec: TSQLDataSet;
    BancoSelecID_BANCO: TIntegerField;
    BancoSelecCONTA: TStringField;
    BancoSelecBANCO: TStringField;
    BancoSelecCIDADE: TStringField;
    BancoSelecSALDO: TFloatField;
    BancoSelecAGENCIA: TStringField;
    BancoSelecDIGAGEN: TStringField;
    BancoSelecCOD_CED: TStringField;
    BancoSelecID_TITULO: TIntegerField;
    BancoSelecN_DOC: TIntegerField;
    BancoSelecJUROS: TFloatField;
    BancoSelecVENCIMENTO: TStringField;
    BancoSelecVENCIMENTO1: TStringField;
    BancoSelecVENCIMENTO2: TStringField;
    BancoSelecLOCAL_PGTO: TStringField;
    BancoSelecVENCIMENTO3: TStringField;
    BancoSelecCARTEIRA: TStringField;
    BancoSelecCADBANCO: TStringField;
    BancoSelecDESCBANCO: TStringField;
    BancoSelecCONTACORRRENTE: TStringField;
    BancoSelecDIGITOCONTACORRENTE: TStringField;
    BancoSelecINICIONOSSONUMERO: TStringField;
    BancoSelecFIMNOSSONUMERO: TStringField;
    BancoSelecPROXIMONOSSONUMERO: TStringField;
    BancoSelecVARIACAO: TStringField;
    BancoSelecNUMEROCONVENIO: TStringField;
    BancoSelecTIPOIMPRESSAOCARNE: TIntegerField;
    BancoSelecTIPOCARNE: TStringField;
    BancoSelecDEMONSTRATIVO: TStringField;
    BancoSelecINSTRUCOESCAIXA: TStringField;
    BancoSelecINSTRUCAO1: TStringField;
    BancoSelecINSTRUCAO2: TStringField;
    BancoSelecACEITEDOCUMENTO: TStringField;
    BancoSelecESPECIEDOCUMENTO: TStringField;
    BancoSelecINSTRUCAO3: TStringField;
    BancoSelecESPECIEDOC: TStringField;
    BancoSelecACEITE: TStringField;
    BancoSelecCONVENIO: TStringField;
    BancoSelecLOCALPGTO: TStringField;
    BancoSelecN_BANCO: TStringField;
    BancoSelecDIGITOBANCO: TIntegerField;
    BancoSelecLAYOUT_BL: TStringField;
    BancoSelecLAYOUT_RM: TStringField;
    BancoSelecRESP_EMISSAO: TStringField;
    BancoSelecIMP_COMPROVANTE: TStringField;
    BancoSelecPASTA_REMESSA: TStringField;
    BancoSelecPASTA_RETORNO: TStringField;
    BancoSelecNOME_ARQUIVO: TStringField;
    BancoSelecC_BANCO: TIntegerField;
    BancoSelecMORAJUROS: TStringField;
    BancoSelecPERCMULTA: TFloatField;
    BancoSelecCODIGOBOLETO: TStringField;
    BancoSelecPROTESTO: TStringField;
    s_cliente: TSQLDataSet;
    s_clienteID_SOCIO: TIntegerField;
    s_clienteNOME_SOCIO: TStringField;
    s_clienteSOBRENOME: TStringField;
    s_clienteNAT: TStringField;
    s_clienteDTNASC: TDateField;
    s_clientePROFISSAO: TStringField;
    s_clienteCPF_CGC: TStringField;
    s_clienteRG_IE: TStringField;
    s_clienteID_VEN: TIntegerField;
    s_clienteID_COB: TIntegerField;
    s_clienteN_INSCRICAO: TIntegerField;
    s_clienteGRUPO: TStringField;
    s_clienteDTACADASTRO: TDateField;
    s_clienteDTASISTEMA: TDateField;
    s_clienteSTATUS: TStringField;
    s_clienteOBS: TGraphicField;
    s_clienteTIPO_DOC: TStringField;
    s_clienteESTCIV: TIntegerField;
    s_clientePRAZO_PG: TIntegerField;
    s_clienteVENCIMENTO: TDateField;
    s_clienteVALOR_SERVICO: TFloatField;
    s_clientePARCELA: TFloatField;
    s_clienteENTRADA: TFloatField;
    s_clienteCARENCIA: TIntegerField;
    s_clienteCODIGO: TIntegerField;
    s_clienteTIPO_SOCIO: TStringField;
    s_clienteDIAPGTO: TIntegerField;
    s_clienteMESES: TIntegerField;
    s_clienteDATAINICIO: TDateField;
    s_clienteDATAFIM: TDateField;
    s_clientePERCENTUALJUROS: TFloatField;
    s_clientePERCENTUALMULTA: TFloatField;
    s_clientePERCENTUALDESCONTO: TFloatField;
    s_clienteVALOROUTROSACRESCIMOS: TFloatField;
    s_clienteDEMONSTRATIVO: TStringField;
    s_clienteINSTRUCOESCAIXA: TStringField;
    s_clienteINSTRUCAO1: TStringField;
    s_clienteINSTRUCAO2: TStringField;
    s_clienteINSTRUCAO3: TStringField;
    s_clienteTIPOIMPRESSAOCARNE: TIntegerField;
    s_clienteACEITEDOCUMENTO: TStringField;
    s_clienteESPECIEDOCUMENTO: TStringField;
    s_clienteSELECIONOU: TStringField;
    s_clienteGEROU: TStringField;
    s_clienteCODIGO_T: TIntegerField;
    s_clienteCODIGO_C: TIntegerField;
    s_clientePLANO: TStringField;
    s_clienteHISTORICO: TMemoField;
    s_clientePLANO_ANT: TStringField;
    s_clienteDTA_CONTRATO: TDateField;
    s_clienteDTA_CONTRATO_ANT: TDateField;
    s_clienteSITUACAO: TStringField;
    s_clienteDATAEXCLUSAO: TDateField;
    s_clienteEMAIL: TStringField;
    s_clienteDTA_ULTIMA_PARCELA: TDateField;
    s_clienteFAIXA: TIntegerField;
    s_clienteDIAPARAPGTO: TIntegerField;
    s_clienteQUTDE: TIntegerField;
    s_clienteID_ENDERECO: TIntegerField;
    s_clienteID_SOCIO_1: TIntegerField;
    s_clienteENDERECO: TStringField;
    s_clienteCOMPLEMENTO: TStringField;
    s_clienteID_BAIRRO: TIntegerField;
    s_clienteID_MUNICIPIO: TIntegerField;
    s_clienteESTADO: TStringField;
    s_clienteCEP: TStringField;
    s_clienteDDD: TStringField;
    s_clienteFONE: TStringField;
    s_clienteFONE1: TStringField;
    s_clienteFAX: TStringField;
    s_clienteCXP: TStringField;
    s_clienteTIPOEND: TSmallintField;
    s_clienteBAIRRO: TStringField;
    s_clienteMUNICIPIO: TStringField;
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
    s_bancoESPECIEDOC: TStringField;
    s_bancoACEITE: TStringField;
    s_bancoCONVENIO: TStringField;
    s_bancoLOCALPGTO: TStringField;
    s_bancoN_BANCO: TStringField;
    s_bancoDIGITOBANCO: TIntegerField;
    s_bancoLAYOUT_BL: TStringField;
    s_bancoLAYOUT_RM: TStringField;
    s_bancoRESP_EMISSAO: TStringField;
    s_bancoIMP_COMPROVANTE: TStringField;
    s_bancoPASTA_REMESSA: TStringField;
    s_bancoPASTA_RETORNO: TStringField;
    s_bancoNOME_ARQUIVO: TStringField;
    s_bancoC_BANCO: TIntegerField;
    s_bancoMORAJUROS: TStringField;
    s_bancoPERCMULTA: TFloatField;
    s_bancoCODIGOBOLETO: TStringField;
    s_bancoPROTESTO: TStringField;
    s_empresa: TSQLDataSet;
    s_empresaRAZAO_EMPRESA: TStringField;
    s_empresaNCRECI: TStringField;
    s_empresaENDERECO: TStringField;
    s_empresaNR: TStringField;
    s_empresaCOMPLEMENTO: TStringField;
    s_empresaBAIRRO: TStringField;
    s_empresaCIDADE: TStringField;
    s_empresaESTADO: TStringField;
    s_empresaCEP: TStringField;
    s_empresaTELEFONE: TStringField;
    s_empresaFAX: TStringField;
    s_empresaEMAIL: TStringField;
    s_empresaROME_PAGE: TStringField;
    s_empresaLOGOTIPO: TGraphicField;
    s_empresaNOME_EMPRESA: TStringField;
    s_empresaCOD_EMPRESA: TIntegerField;
    s_empresaCELULAR: TStringField;
    s_empresaCNPJ: TStringField;
    s_empresaINSCESTADUAL: TStringField;
    s_empresaBANCO: TStringField;
    s_empresaAGENCIACEDENTE: TStringField;
    s_empresaCONTACORRENTECEDENTE: TStringField;
    s_empresaCODIGOCEDENTE: TStringField;
    s_empresaCNPJCPFCEDENTE: TStringField;
    s_empresaINICIONOSSONUMERO: TStringField;
    s_empresaFIMNOSSONUMERO: TStringField;
    s_empresaPROXIMONOSSONUMERO: TStringField;
    s_empresaIDENTIFICACAOCEDENTEBOLET: TStringField;
    s_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField;
    s_empresaDIGITOAGENCIA: TStringField;
    s_empresaDIGITOCONTA: TStringField;
    s_empresaVARIACAO: TStringField;
    s_empresaNUMEROCONVENIO: TStringField;
    s_empresaTIPOIMPRESSAOCARNE: TIntegerField;
    s_empresaTIPOCARNE: TStringField;
    s_empresaDEMONSTRATIVO: TStringField;
    s_empresaINSTRUCOESCAIXA: TStringField;
    s_empresaINSTRUCAO1: TStringField;
    s_empresaINSTRUCAO2: TStringField;
    s_empresaACEITEDOCUMENTO: TStringField;
    s_empresaESPECIEDOCUMENTO: TStringField;
    s_empresaINSTRUCAO3: TStringField;
    s_clienteNUMERO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    dia, mes, ano : Word;
    v_sql : string;
    { Private declarations }
  public
    procedure BANCO_SELECIONADO;    
    procedure CRIA_BOLETO_MEMORIA;  
    { Public declarations }
  end;

var
   f_GeraBoleto: Tf_GeraBoleto;
   Titulo    : TACBrTitulo;
   Cedente_Agencia : String;
   Cedente_AgenciaDigito : String;
   Cedente_CodigoCedente : String;
   Cedente_Conta   : String;
   Cedente_ContaDigito : String;
   Cedente_Nome    : String;
   TotalParcelas   : Integer;
   Parcela         : Integer;
   Titulo_LocalPagamento  : String;
   Vencimento      : TDate;
   DataDocumento   : TDate;
   NumeroDocumento : String;
   EspecieDoc      : String;
   Aceite          : String;
   DataProcessamento : TDate;
   varNossoNumero     : Int64;
   Carteira        : String;
   ValorDocumento  : Double;
   NomeSacado      : String;
   CNPJCPF         : String;
   Logradouro      : String;
   Numero          : String;
   Bairro          : String;
   Cidade          : String;
   UF              : String;
   CEP             : String;
   ValorAbatimento : Double;
   DataAbatimento  : TDate;
   Mensagem        : String;
   form_ativo      : string;
   dia, mes,ano    : word;
   especie_DOC     : string;

implementation

uses UDM, DateUtils;

{$R *.dfm}

{ TForm1 }

// Remove caracteres de uma string deixando apenas numeros
Function RemoveChar(Const Texto:String):String;
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

procedure Tf_GeraBoleto.BANCO_SELECIONADO;
var
  bancosel : string;
  id_banco : integer;
begin
  if (s_banco.Active) then
     s_banco.Close;
  s_banco.Params[0].Clear;
  id_banco := 0;
  if (BancoSelec.Active) then
      BancoSelec.Close;
  BancoSelec.Open;
  while not BancoSelec.Eof do
  begin
    bancosel := BancoSelecN_BANCO.AsString + '-' + BancoSelecBANCO.AsString + '  '  + BancoSelecCARTEIRA.AsString;
    if (bancosel = cbb1.Text) then
    begin
       id_banco := BancoSelecID_BANCO.AsInteger;
    end;
    BancoSelec.Next;
  end;
  BancoSelec.Close;

  if (id_banco = 0) then
  begin
    showmessage('Banco não Localizado/Cadastrado');
    exit;
  end;

  if (s_banco.Active) then
     s_banco.Close;
  s_banco.Params[0].AsInteger := id_banco;
  s_banco.Open;
  if (s_banco.IsEmpty) then
  begin
    showmessage('Banco não cadastrado');
    exit;
  end;

  ACBrBoleto1.Banco.Numero := StrToInt(s_bancoN_BANCO.AsString);
  ACBrBoleto1.Banco.Digito := s_bancoDIGITOBANCO.AsInteger;
  ACBrBoleto1.Banco.Nome := s_bancoBANCO.AsString;

end;

procedure Tf_GeraBoleto.CRIA_BOLETO_MEMORIA;
var
  numero_ano, vartitulo, N_BOLETO : string;
begin
   DecodeDate(now, ano, mes, dia);
   numero_ano := copy(IntToStr(ano),3,2);
    // DADOS DO BANCO
    with ACBrBoleto1.Banco do
    begin
       case StrToInt(s_bancoN_BANCO.AsString) of
          237: TipoCobranca := cobBradesco;
          001: TipoCobranca := cobBancoDoBrasil;
          341: TipoCobranca := cobItau;
          748: TipoCobranca := cobSicred;
          104: TipoCobranca := cobCaixaEconomica;
       else
          TipoCobranca := cobNenhum;
       end;
    end;
   ACBrBoleto1.Cedente.Convenio := s_bancoCONVENIO.AsString;
   ACBrBoleto1.Cedente.Agencia := s_bancoAGENCIA.AsString;
   ACBrBoleto1.Cedente.AgenciaDigito := s_bancoDIGAGEN.AsString;
   ACBrBoleto1.Cedente.CodigoCedente := s_bancoCOD_CED.AsString;
   ACBrBoleto1.Cedente.Conta := s_bancoCONTACORRRENTE.AsString;
   ACBrBoleto1.Cedente.ContaDigito := s_bancoDIGITOCONTACORRENTE.AsString;
   ACBrBoleto1.Cedente.Nome := s_empresaRAZAO_EMPRESA.AsString + '-' + s_empresaCNPJ.AsString;
   if (s_bancoRESP_EMISSAO.AsString = 'Cliente Emite') then
     ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite
   else
     ACBrBoleto1.Cedente.ResponEmissao := tbBancoEmite;
   ACBrBoleto1.Cedente.TipoInscricao := pJuridica;
   ACBrBoleto1.Cedente.CNPJCPF := s_empresaCNPJ.AsString;
  f_GeraCobranca.dsConsulta.First;
  while not f_GeraCobranca.dsConsulta.Eof do
  begin
     f_GeraCobranca.mostraCR;
     f_GeraCobranca.ds_CR.First;
     While not f_GeraCobranca.ds_CR.Eof do
     begin
         Titulo := ACBrBoleto1.CriarTituloNaLista;
         Titulo.NossoNumero := '';
         with Titulo do
         begin
            //Abro os dados do cliente com endereço de cobrança se não existir busco pelo endereço principal
            if (s_cliente.Active) then
              s_cliente.Close;
            s_cliente.Params[0].AsInteger := f_GeraCobranca.dsConsultaR_IDSOCIO.AsInteger;
            s_cliente.Params[1].AsInteger := 1; // Endereço de Cobrqança
            s_cliente.Open;
            if (s_cliente.IsEmpty) then
            begin
              if (s_cliente.Active) then
                s_cliente.Close;
              s_cliente.Params[0].AsInteger := f_GeraCobranca.dsConsultaR_IDSOCIO.AsInteger;
              s_cliente.Params[1].AsInteger := 0; // Endereço Principal
              s_cliente.Open;
            end;

            Titulo.TotalParcelas := f_GeraCobranca.ds_CR.RecordCount; //TotalParcelas;
            Titulo.Parcela := f_GeraCobranca.ds_CR.RecNo; //Parcela; //I;
            Titulo.LocalPagamento := s_bancoLOCALPGTO.AsString;
            Titulo.Vencimento :=  f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime;
            Titulo.DataDocumento     := f_GeraCobranca.ds_CREMISSAO.AsDateTime; //EncodeDate(2010,04,10);
            Titulo.EspecieDoc        := s_bancoESPECIEDOC.AsString; //EspecieDoc;
            if (especie_DOC = 'REMESSA') then
            begin
               // if (s_bancoN_BANCO.AsString = '001') then // Banco do Brasil
               // begin
                   if (s_bancoLAYOUT_RM.AsString = 'c240') then
                     if (s_bancoESPECIEDOC.AsString = 'DM') then
                       Titulo.EspecieDoc        := '02'; //EspecieDoc;
                  // Passo valores iniciais
                  Titulo.ValorMoraJuros := 3; // Isento
                  Titulo.PercentualMulta := 0;

                  case StrToInt(s_bancoPROTESTO.AsString) of
                    // 00: TItulo.DataProtesto := cobBradesco;// 00 - Sem de instruções
                    01: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,1); //01 - Cobrar juros (Dispensável se informado o valor a ser cobrado por dia de atraso).
                    03: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,3);//03 - Protestar no 3º dia útil após vencido
                    04: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,4);//04 - Protestar no 4º dia útil após vencido
                    05: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,5);//05 - Protestar no 5º dia útil após vencido
                    //06: TItulo.DataProtesto :=  //06 - Indica Protesto em dias corridos, com prazo de 6 a 29, 35 ou 40 dias Corridos.
                    //07: TItulo.DataProtesto :=  //07 - Não protestar
                    10: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVALOR_RECEBER.AsDateTime,10);//10 - Protestar no 10º dia corrido após vencido
                    15: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,15);//15 - Protestar no 15º dia corrido após vencido
                    20: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,20);//20 - Protestar no 20º dia corrido após vencido
                    //22: TItulo.DataProtesto :=  IncDay(ds_crDATAVENCIMENTO.AsDateTime,21)//22 - Conceder desconto só até a data estipulada
                    25: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,25);//25 - Protestar no 25º dia corrido após vencido
                    30: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,30);//30 - Protestar no 30º dia corrido após vencido
                    45: TItulo.DataProtesto :=  IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,45);//45 - Protestar no 45º dia corrido após vencido
                  else
                    TItulo.DataProtesto := f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime;
                  end;

                 // TItulo.DataProtesto :=

                  if (s_bancoMORAJUROS.AsString = '1-Diario') then
                     Titulo.ValorMoraJuros := 1;
                  if (s_bancoMORAJUROS.AsString = '2-Mensal') then
                     Titulo.ValorMoraJuros := 2;
                  if (s_bancoMORAJUROS.AsString = '3-Isento') then
                     Titulo.ValorMoraJuros := 3; // Isento

                  Titulo.DataMoraJuros := IncDay(f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime,1);

                  if (s_bancoPERCMULTA.Value > 0) then
                    Titulo.PercentualMulta := s_bancoPERCMULTA.Value;

                  Titulo.Instrucao1 := s_bancoPROTESTO.AsString;

               // end;
            end;

            if (s_bancoACEITE.AsString = 'S') then
              Titulo.Aceite            := atSim
            else
              Titulo.Aceite            := atNao;

            Titulo.DataProcessamento := Now;

            //varNossoNumero := StrToInt(RemoveChar(ds_crTITULO.AsString));
            if (f_GeraCobranca.ds_CRN_BOLETO.AsString = '') then
              varNossoNumero := StrToInt64(s_bancoCODIGOBOLETO.AsString) + 1
            else
              varNossoNumero := StrToInt64(f_GeraCobranca.ds_CRN_BOLETO.AsString);

            // Atualizo o codigo do Boleto

            vartitulo := RemoveChar(f_GeraCobranca.ds_CRTITULO.AsString) + '-' + RemoveChar(f_GeraCobranca.ds_CRPARCELA.AsString);
            //Titulo.NumeroDocumento   := padR(vartitulo,6,'0');
            //varNossoNumero := StrToInt(RemoveChar(vartitulo));

            Titulo.NumeroDocumento   := padR(vartitulo,8,'0');
            if (s_bancoRESP_EMISSAO.AsString = 'Cliente Emite') then
            begin
              case StrToInt(s_bancoN_BANCO.AsString) of
                001: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);//  001 - Banco do Brasil
                104: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 104 - Caixa Economica
                237: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 237 - Banco Bradesco
                275: Titulo.NossoNumero := IntToStrZero(varNossoNumero,11);// 275 - Banco Real
                341: Titulo.NossoNumero := IntToStrZero(varNossoNumero,8);// 341 - Banco Itau
                399: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 399 - Banco HSBC
                409: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 409 - Banco Unicanco
                748: Titulo.NossoNumero := IntToStrZero(varNossoNumero,6);// 748 - Banco Sicredi
                353: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 353 - SANTANDER
              end;
            end;

            if (s_bancoRESP_EMISSAO.AsString = 'Banco Emite') then      // Passo zero poque o banco numera
            begin
              case StrToInt(s_bancoN_BANCO.AsString) of
                001: Titulo.NossoNumero := IntToStrZero(0,10);//  001 - Banco do Brasil
                104: Titulo.NossoNumero := IntToStrZero(0,10);// 104 - Caixa Economica
                237: Titulo.NossoNumero := IntToStrZero(0,10);// 237 - Banco Bradesco
                275: Titulo.NossoNumero := IntToStrZero(0,11);// 275 - Banco Real
                341: Titulo.NossoNumero := IntToStrZero(0,8);// 341 - Banco Itau
                399: Titulo.NossoNumero := IntToStrZero(0,10);// 399 - Banco HSBC
                409: Titulo.NossoNumero := IntToStrZero(0,10);// 409 - Banco Unicanco
                748: Titulo.NossoNumero := IntToStrZero(0,6);// 748 - Banco Sicredi
                353: Titulo.NossoNumero := IntToStrZero(0,10);// 353 - SANTANDER
              end;
            end;

            //Variavel usada para gravar o nosso numero na tabela recebimento
            N_BOLETO := Titulo.NossoNumero;

            if ((s_bancoN_BANCO.AsString = '748')) then
            begin
               ACBrBoleto1.Cedente.AgenciaDigito := padR(s_bancoDIGAGEN.AsString, 2, '0');
               if (s_bancoRESP_EMISSAO.AsString = 'Cliente Emite') then
                  ACBrBoleto1.Cedente.Modalidade := '3';
               Titulo.NossoNumero := numero_ano + '2' + IntToStrZero(varNossoNumero,5);
                  //Titulo.Carteira := '1';
            end;

            Titulo.Carteira  := s_bancoCARTEIRA.AsString;
            //Titulo.Carteira  := s_bancoCARTEIRA.AsString;
            if ((s_bancoN_BANCO.AsString = '104')) then
            begin
              if (s_bancoCARTEIRA.AsString = '14 ') then
                 Titulo.Carteira  := 'RG'
              else
                 Titulo.Carteira  := 'SR';
            end;

            Titulo.ValorDocumento    := f_GeraCobranca.ds_CRVALOR_RECEBER.AsFloat; //ValorDocumento;
            Titulo.Sacado.NomeSacado := s_clienteNOME_SOCIO.AsString; // NomeSacado;

            if (s_clienteTIPO_DOC.AsString = 'F') then
               Titulo.Sacado.Pessoa := pFisica
            else
               Titulo.Sacado.Pessoa := pJuridica;


            Titulo.Sacado.CNPJCPF    := s_clienteCPF_CGC.AsString; //CNPJCPF;
            Titulo.Sacado.Logradouro := s_clienteENDERECO.AsString; //Logradouro;
            Titulo.Sacado.Numero     := s_clienteNUMERO.AsString; //Numero;
            Titulo.Sacado.Bairro     := s_clienteBAIRRO.AsString; //Bairro;
            Titulo.Sacado.Cidade     := s_clienteMUNICIPIO.AsString; //Cidade;
            Titulo.Sacado.UF         := s_clienteESTADO.AsString; //UF;
            Titulo.Sacado.CEP        := s_clienteCEP.AsString; //CEP;
            Titulo.ValorAbatimento   := 0; //ValorAbatimento;
            Titulo.DataAbatimento    := f_GeraCobranca.ds_CRVENCIMENTO.AsDateTime;// - 5;
            Titulo.Mensagem.Text  := s_bancoINSTRUCAO1.AsString;
            Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO2.AsString;
            Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO3.AsString;
           // Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO4.AsString;

            Titulo.LocalPagamento := s_bancoLOCALPGTO.AsString;

            if (s_bancoN_BANCO.AsString = '001') then
            begin
              Titulo.LocalPagamento :=  'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
              ACBrBoleto1.Cedente.Modalidade := '19';
            end;

            if (s_bancoN_BANCO.AsString = '341') then
            begin
              Titulo.LocalPagamento :=  'Até o vencimento, preferencialmente no Itaú e Após o vencimento, somente no Itaú';
            end;
            //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
         end;

         // Atualizo o Codigo do Boleto
         if (f_GeraCobranca.ds_CRN_BOLETO.AsString = '') then
         begin
           v_sql := 'UPDATE BANCO SET CODIGOBOLETO = ' + QuotedStr(IntToStr(varNossoNumero)) +
           ' where ID_BANCO = ' + IntToStr(s_bancoID_BANCO.AsInteger);
           dm.SQLObitos.StartTransaction(TD);
           dm.SQLObitos.ExecuteDirect(v_sql);
           Try
              dm.SQLObitos.Commit(TD);
              BANCO_SELECIONADO;
           except
              dm.SQLObitos.Rollback(TD); //on failure, undo the changes}
              MessageDlg('Erro no sistema, o Codigo do Boleto não foi atualizado'+#13+#10+'        abra o cadastro do banco e digite o numero '+#13+#10+'                        do ultimo boleto.', mtError,
                  [mbOk], 0);
           end;
         end;
         // Atualizo o Codigo do Boleto no RECEBIMENTO
         v_sql := 'UPDATE RECEBIMENTOS SET N_BOLETO = ' + QuotedStr(N_BOLETO) +
         ', ID_BANCO = ' + IntToStr(s_bancoID_BANCO.AsInteger) +
         ' where ID_RECEBIMENTOS = ' + IntToStr(f_GeraCobranca.ds_CRID_RECEBIMENTOS.AsInteger);
         dm.SQLObitos.StartTransaction(TD);
         dm.SQLObitos.ExecuteDirect(v_sql);
         Try
            dm.SQLObitos.Commit(TD);
         except
            dm.SQLObitos.Rollback(TD); //on failure, undo the changes}
            MessageDlg('Erro no sistema, o Codigo do Boleto não foi atualizado'+#13+#10+'        abra o cadastro do banco e digite o numero '+#13+#10+'                        do ultimo boleto.', mtError,
                [mbOk], 0);
         end;
        // if(s_banco.Active) then
        //   s_banco.Close;
        // s_banco.Open;
         f_GeraCobranca.ds_CR.Next;
     end; // WILE RECEBIMENTO
     f_GeraCobranca.dsConsulta.Next;
  end; // WILE SOCIO
end;

procedure Tf_GeraBoleto.FormShow(Sender: TObject);
begin
  edt2.Text := ExtractFilePath(Application.ExeName) + 'LogoBanco';
  if (not BancoSelec.Active) then
      BancoSelec.Open;
  BancoSelec.First;
  cbb1.Items.Clear;
   while not BancoSelec.Eof do
   begin
      cbb1.Items.Add(BancoSelecN_BANCO.AsString + '-' + BancoSelecBANCO.AsString + '  '  + BancoSelecCARTEIRA.AsString);
      BancoSelec.Next;
   end;
end;

procedure Tf_GeraBoleto.btn2Click(Sender: TObject);
begin
  especie_DOC := '';
  ACBrBoleto1.ListadeBoletos.Clear;
  ACBrBoleto1.ACBrBoletoFC.DirLogo := edt2.Text;
  if (not s_empresa.Active) then
    s_empresa.Open;
  // Busco os dados do Banco
  BANCO_SELECIONADO;
  if (s_bancoLAYOUT_BL.AsString = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (s_bancoLAYOUT_BL.AsString = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (s_bancoLAYOUT_BL.AsString = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;
  // if (s_bancoIMP_COMPROVANTE.AsString = 'SIM') then
  //    ACBrBoleto1.ComprovanteEntrega := True
  // else
  //    ACBrBoleto1.ComprovanteEntrega := False;
  CRIA_BOLETO_MEMORIA;
  ACBrBoleto1.Imprimir;
  if (s_empresa.Active) then
    s_empresa.Close;
  if (s_banco.Active) then
    s_banco.Close;
  s_banco.Params[0].Clear;
end;

procedure Tf_GeraBoleto.btn3Click(Sender: TObject);
var Dia_atual : string;
begin
  especie_DOC := 'REMESSA';
  if (not s_empresa.Active) then
     s_empresa.Open;

  BANCO_SELECIONADO;

  if (s_bancoLAYOUT_BL.AsString = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (s_bancoLAYOUT_BL.AsString = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (s_bancoLAYOUT_BL.AsString = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;

  try
     ACBrBoleto1.ListadeBoletos.Clear;
     DecodeDate(Now,ano,mes,dia);
     Dia_atual := IntToStr(dia) + IntToStr(mes) + IntToStr(ano);
     ACBrBoleto1.DirArqRemessa := s_bancoPASTA_REMESSA.AsString;
     ACBrBoleto1.NomeArqRemessa := s_bancoNOME_ARQUIVO.AsString + Dia_atual;

     if (s_bancoLAYOUT_RM.AsString = 'c400') then
       ACBrBoleto1.LayoutRemessa := c400;
     if (s_bancoLAYOUT_RM.AsString = 'c240') then
       ACBrBoleto1.LayoutRemessa := c240;

     if (s_bancoRESP_EMISSAO.AsString = 'Cliente Emite') then
         ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
     if (s_bancoRESP_EMISSAO.AsString = 'Banco Emite') then //
         ACBrBoleto1.Cedente.ResponEmissao := tbBancoEmite;

     CRIA_BOLETO_MEMORIA;

     ACBrBoleto1.GerarRemessa( 1 );
     ShowMessage('Remessa gerada com Sucesso.');
     
  except
     ShowMessage('Erro ao gerar Remessa');
  end;

   if (s_empresa.Active) then
     s_empresa.Close;
   if (s_banco.Active) then
     s_banco.Close;
   s_banco.Params[0].Clear;
end;

procedure Tf_GeraBoleto.btn4Click(Sender: TObject);
begin
   Close;
end;

end.
