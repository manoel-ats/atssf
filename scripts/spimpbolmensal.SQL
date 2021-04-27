CREATE OR ALTER PROCEDURE SPIMPBOLMENSAL (
    st varchar(10),
    dia integer,
    gp char(1),
    insc integer,
    insc1 integer,
    cob integer,
    somar varchar(3),
    data date)
returns (
    idrec integer,
    id integer,
    nome varchar(80),
    rua varchar(80),
    cep char(9),
    uf char(2),
    bairro varchar(60),
    municipio varchar(60),
    emissao date,
    vencimento date,
    valor double precision,
    valorpendente double precision,
    valordeve double precision,
    n_doc varchar(20),
    instrucoes varchar(300),
    inscricao integer,
    n_lote integer,
    n_grupo char(1),
    status varchar(30),
    vencidos varchar(300),
    d_vencido date,
    tot_pendente integer,
    cod_cobrador integer,
    nome_cobrador varchar(80),
    documento varchar(18),
    gerou char(1),
    n_boleto varchar(30),
    n_titulo integer)
as
declare variable tipo integer;
declare variable hoje date;
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
            ,SC.N_INSCRICAO, sc.ID_SOCIO, sc.CPF_CGC, cb.ID_COB, cb.NOME, rc.gerou, rc.n_boleto, rc.titulo
            FROM recebimentos RC
            LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
            LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob
            WHERE (RC.MESANO = :st)
             and (sc.DIAPARAPGTO = :dia)
             and ((SC.grupo = :gp)  or (:gp = 't'))
             and (SC.N_INSCRICAO between :insc and :insc1)/*and (ed.tipoend = 1)*/
             and ((cb.id_cob = :cob) or (:cob = 9999999))
             and (sc.PLANO = 'MENSAL')
             and rc.situacao = 'Ativo'
             order by sc.GRUPO, SC.N_INSCRICAO


  into :idrec,:status,:emissao,:vencimento,:valor,:n_lote,:n_grupo,:nome,:inscricao
  ,:id,:documento,:cod_cobrador,:nome_cobrador,:gerou,:n_boleto,:n_titulo
  do begin

  select max(TIPOEND) FROM endereco WHERE id_socio = :id
  into :tipo;

  for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
            ,MP.MUNICIPIO FROM ENDERECO ED
            LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
            LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
            WHERE ed.id_socio = :id and ed.tipoend = :tipo
   INTO :rua,:cep,:uf,:bairro,:municipio
   do begin

   end
  tot_pendente = 1;

  /*SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id
  and STATUS = 'Pendente' and VENCIMENTO < :hoje
  INTO :TOT_PENDENTE;*/


  valordeve = 0;
  valorpendente = 0;

/* FAZ uma busca na tabela RECEBIMENTOS pra ver se */
/* tem título pendente */
   if (somar = 'sim') then
   begin
     SELECT sum(VALOR_NF) FROM RECEBIMENTOS WHERE ID_SOCIO = :id
     and STATUS = 'Pendente' and VENCIMENTO <= :DATA
     INTO :VALORPENDENTE;
   end

   valordeve = valordeve + valorpendente;
   if (valordeve > 0) then
    valor = valordeve;
   if (valordeve = 0) then
    valor = valor;
 suspend;
 end
end
