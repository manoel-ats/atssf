CREATE OR ALTER PROCEDURE REMESSABBTRIMESTRAL_FONE (
    pdata1 date,
    gp char(1),
    insc integer,
    insc1 integer,
    cob integer)
returns (
    n_grupo char(1),
    inscricao integer,
    nome varchar(80),
    rua varchar(80),
    cep char(9),
    uf char(2),
    fone varchar(15),
    fone1 varchar(15),
    fax varchar(15),
    bairro varchar(60),
    municipio varchar(60),
    emissao date,
    vencimento date,
    tot_pendente integer)
as
declare variable tipo integer;
declare variable hoje date;
declare variable idrec integer;
declare variable id integer;
declare variable valorpendente double precision;
declare variable valordeve double precision;
declare variable n_doc varchar(20);
declare variable instrucoes varchar(300);
declare variable cod_cobrador integer;
declare variable nome_cobrador varchar(80);
declare variable documento varchar(18);
declare variable gerou char(1);
declare variable n_boleto varchar(30);
declare variable n_titulo integer;
declare variable status varchar(30);
declare variable vencidos varchar(300);
declare variable d_vencido date;
declare variable valor double precision;
declare variable n_lote integer;
begin
  /* Procedure Text */
   /* Pego a data do sistema e jogo na variavel EMISSAO*/
 SELECT CAST('today' AS DATE) from RDB$DATABASE
 INTO :hoje;
  valordeve = 0;
  valorpendente = 0;

  SELECT MAX(VALOR) FROM VALORES
  INTO :VALOR;

  FOR SELECT rc.id_recebimentos, RC.STATUS, RC.EMISSAO, RC.VENCIMENTO, RC.valor_nf, RC.LOTE, SC.GRUPO, SC.NOME_SOCIO
            ,SC.N_INSCRICAO, sc.ID_SOCIO, sc.CPF_CGC, cb.ID_COB, cb.NOME, rc.gerou, rc.n_boleto, rc.titulo FROM recebimentos RC
            LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
            LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob 
            WHERE (RC.VENCIMENTO =:pdata1)
             and (SC.grupo = :gp)
             and (SC.N_INSCRICAO between :insc and :insc1)
             and ((cb.id_cob = :cob) or (:cob = 9999999))
             and (sc.plano = 'TRIMESTRAL')
             and rc.status = 'Pendente'
             AND SC.situacao = 'Ativo'
             AND rc.situacao = 'Ativo'
             order by rc.GEROU, SC.N_INSCRICAO

  into :idrec,:status,:emissao,:vencimento,:valor,:n_lote,:n_grupo,:nome,:inscricao
  ,:id,:documento,:cod_cobrador,:nome_cobrador,:gerou,:n_boleto,:n_titulo  
  do begin

  select max(TIPOEND) FROM endereco WHERE id_socio = :id
  into :tipo;

  for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
            ,MP.MUNICIPIO , ed.fone , ed.fone1 , ed.fax FROM ENDERECO ED
            LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
            LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
            WHERE ed.id_socio = :id and ed.tipoend = :tipo
   INTO :rua,:cep,:uf,:bairro,:municipio , :FONE, :FONE1, :FAX
   do begin

   end

  SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id
  and STATUS = 'Pendente' and VENCIMENTO < :hoje AND situacao = 'Ativo'
  INTO :TOT_PENDENTE;


  valordeve = 0;
  valorpendente = 0;

/* FAZ uma busca na tabela RECEBIMENTOS pra ver se */
/* tem título pendente                          */
  SELECT sum(VALOR_NF) FROM RECEBIMENTOS WHERE ID_SOCIO = :id
  and STATUS = 'Pendente'   AND situacao = 'Ativo'
  INTO :VALORPENDENTE;
    valordeve = valordeve + valorpendente;
   if (valordeve > 0) then
    valor = valordeve;
   if (valordeve = 0) then
    valor = valor;
 suspend;
 end
end
