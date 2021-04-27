CREATE OR ALTER PROCEDURE TITULOS_PENDENTES_TRI (
    diapgto integer,
    gp char(1),
    insc integer,
    insc1 integer,
    cb integer,
    venc date)
returns (
    grupo char(1),
    nome_socio varchar(80),
    n_inscricao integer,
    cpf_cgc varchar(18),
    nome varchar(80),
    id_socio integer,
    id integer,
    tot_pendente integer,
    valor_nf double precision,
    rua varchar(80),
    cep char(9),
    uf char(2),
    bairro varchar(60),
    municipio varchar(60),
    fone varchar(15),
    fone1 varchar(15))
as
declare variable valorpendente double precision;
declare variable tipo integer;
declare variable id_recebimentos integer;
declare variable status varchar(30);
declare variable emissao date;
declare variable lote integer;
declare variable n_boleto varchar(30);
declare variable titulo integer;
declare variable mesano varchar(10);
declare variable vencimento date;
begin
  /* Procedure Text */

/*   SELECT CAST('today' AS DATE) from RDB$DATABASE
 INTO :venc;  */

  FOR SELECT rc.id_recebimentos, RC.STATUS, RC.EMISSAO, RC.VENCIMENTO, RC.valor_nf
            , RC.LOTE, SC.GRUPO, SC.NOME_SOCIO, SC.N_INSCRICAO, SC.CPF_CGC
            , cb.NOME, rc.MESANO, rc.n_boleto, rc.titulo, rc.ID_SOCIO, rc.ID
    FROM recebimentos RC
        LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
        LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob
       WHERE
        ((sc.DIAPARAPGTO = :diapgto) or (:diapgto = 0))
        and  ((sc.GRUPO = :gp) or (:gp = 't'))
        and  ((sc.N_INSCRICAO between :insc and :insc1))
        and ((sc.ID_COB = :cb) or (:cb = 9999999))
        and (sc.PLANO = 'TRIMESTRAL') and ((rc.STATUS = 'Pendente')or(rc.STATUS = 'Acordo' ))
        and (RC.situacao = 'Ativo' )

        into :id_recebimentos, :status, :emissao, :vencimento, :valor_nf,
          :lote, :grupo, :nome_socio, :n_inscricao, :cpf_cgc,
          :nome, :mesano, :n_boleto, :titulo, :id_socio, :id
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
      /* */
        end

        tot_pendente = 0;
        SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id_socio
        and ((STATUS = 'Pendente')or(STATUS = 'Acordo' )) and VENCIMENTO <= :venc  and situacao = 'Ativo'
        INTO :TOT_PENDENTE;

        select max(TIPOEND) FROM endereco WHERE id_socio = :id_socio
        into :tipo;

        for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
                ,MP.MUNICIPIO ,ED.fone , ED.fone1  FROM ENDERECO ED
                LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
                LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
                WHERE ed.id_socio = :id and ed.tipoend = :tipo
        INTO :rua,:cep,:uf,:bairro,:municipio , :fone , :fone1
        do begin

        end

       /* FAZ uma busca na tabela RECEBIMENTOS pra ver se */
       /* tem título pendente                          */
       valorpendente = 0;
       SELECT sum(VALOR_NF) FROM RECEBIMENTOS WHERE ID_SOCIO = :id and ((STATUS = 'Pendente')or(STATUS = 'Acordo' )) and situacao = 'Ativo'
         INTO :VALORPENDENTE;
        valor_nf = valorpendente;
       suspend;
     end
end
