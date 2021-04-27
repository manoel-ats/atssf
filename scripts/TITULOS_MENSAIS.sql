CREATE OR ALTER PROCEDURE TITULOS_MENSAIS (
    st varchar(10),
    diapgto integer,
    gp char(1),
    insc integer,
    insc1 integer,
    cb integer,
    venc date)
returns (
    id_recebimentos integer,
    status varchar(30),
    emissao date,
    vencimento date,
    valor_nf double precision,
    valor_receber double precision,
    lote integer,
    grupo char(1),
    nome_socio varchar(80),
    n_inscricao integer,
    cpf_cgc varchar(18),
    nome varchar(80),
    mesano varchar(10),
    n_boleto varchar(30),
    titulo integer,
    id_socio integer,
    id integer,
    tot_pendente integer,
    rua varchar(80),
    cep char(9),
    uf char(2),
    bairro varchar(60),
    municipio varchar(60),
    tipo_doc char(1))
as
declare variable valorpendente double precision;
declare variable tipo integer;
begin
  /* Procedure Text */

/*   SELECT CAST('today' AS DATE) from RDB$DATABASE
 INTO :venc;  */

  FOR SELECT rc.id_recebimentos, RC.STATUS, RC.EMISSAO, RC.VENCIMENTO, RC.valor_nf , RC.valor_receber
            , RC.LOTE, SC.GRUPO, SC.NOME_SOCIO, SC.N_INSCRICAO, SC.CPF_CGC
            , cb.NOME, rc.MESANO, rc.n_boleto, rc.titulo, rc.ID_SOCIO, rc.ID,sc.TIPO_DOC
    FROM recebimentos RC
        LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
        LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob
       WHERE (RC.MESANO = :st) and  (sc.DIAPARAPGTO = :diapgto)
        and  ((sc.GRUPO = :gp) or (:gp = 't')) and  ((sc.N_INSCRICAO between :insc and :insc1))
        and ((sc.ID_COB = :cb) or (:cb = 9999999))
        and (sc.PLANO = 'MENSAL') and (rc.STATUS = 'Pendente')
        and (RC.vencimento = :venc)
        and (RC.situacao <> 'Cancelado')
       /* and rc.tipo_doc <> 'AV' */
     into :id_recebimentos, :status, :emissao, :vencimento, :valor_nf, :valor_receber,
          :lote, :grupo, :nome_socio, :n_inscricao, :cpf_cgc,
          :nome, :mesano, :n_boleto, :titulo, :id_socio, :id ,:TIPO_DOC
     do
     begin
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

        tot_pendente = 0;
        SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id_socio
        and ((STATUS = 'Pendente') or (STATUS = 'Acordo'))  and SITUACAO = 'Ativo' and VENCIMENTO <= :venc
        INTO :TOT_PENDENTE;

        select max(TIPOEND) FROM endereco WHERE id_socio = :id_socio
        into :tipo;

        for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
                ,MP.MUNICIPIO FROM ENDERECO ED
                LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
                LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
                WHERE ed.id_socio = :id and ed.tipoend = :tipo
        INTO :rua,:cep,:uf,:bairro,:municipio
        do begin

        end

       /* FAZ uma busca na tabela RECEBIMENTOS pra ver se */
       /* tem título pendente                          */
       valorpendente = 0;
       SELECT sum(VALOR_NF) FROM RECEBIMENTOS WHERE ID_SOCIO = :id and ((STATUS = 'Pendente') or (STATUS = 'Acordo')) and situacao = 'Ativo' and VENCIMENTO <= :venc
         INTO :VALORPENDENTE;
        valor_nf = valorpendente;
       suspend;
     end
end
