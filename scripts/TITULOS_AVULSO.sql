CREATE OR ALTER PROCEDURE TITULOS_AVULSO (
    gp char(1),
    insc integer,
    insc1 integer,
    cb integer,
    emi date,
    emi2 date,
    venc date)
returns (
    id_recebimentos integer,
    status varchar(30),
    emissao date,
    vencimento date,
    valor_nf double precision,
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

for SELECT rc.id_recebimentos, RC.STATUS, RC.EMISSAO, RC.VENCIMENTO, RC.valor_nf
            , RC.LOTE, SC.GRUPO, SC.NOME_SOCIO, SC.N_INSCRICAO, SC.CPF_CGC
            , cb.NOME, rc.MESANO, rc.n_boleto, rc.titulo, rc.ID_SOCIO, SC.id_cob, SC.TIPO_DOC
    FROM recebimentos RC
        LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
        LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob
       WHERE ((sc.GRUPO = :gp) or (:gp = 't'))  and (sc.N_INSCRICAO between :insc and :insc1)
           and (rc.TIPO_DOC = 'AV') and (rc.STATUS = 'Pendente') and rc.situacao = 'Ativo'
           and (rc.EMISSAO between :emi and :emi2)
           and RC.VENCIMENTO = :venc and SC.id_cob = :cb
     into :id_recebimentos, :status, :emissao, :vencimento, :valor_nf,
          :lote, :grupo, :nome_socio, :n_inscricao, :cpf_cgc,
          :nome, :mesano, :n_boleto, :titulo, :id_socio, :id , :TIPO_DOC
     do
     begin
        select max(TIPOEND) FROM endereco WHERE id_socio = :id_socio
        into :tipo;

        for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
                ,MP.MUNICIPIO FROM ENDERECO ED
                LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
                LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
                WHERE ed.id_socio = :id_socio and ed.tipoend = :tipo
        INTO :rua,:cep,:uf,:bairro,:municipio
        do begin

        end

        tot_pendente = 0;
        SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id_socio
        and STATUS = 'Pendente' and Emissao <= :emi
        INTO :TOT_PENDENTE;

        select max(TIPOEND) FROM endereco WHERE id_socio = :id_socio
        into :tipo;

        for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
                ,MP.MUNICIPIO FROM ENDERECO ED
                LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
                LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
                WHERE ed.id_socio = :id_socio and ed.tipoend = :tipo
        INTO :rua,:cep,:uf,:bairro,:municipio
        do begin

        end

       /* FAZ uma busca na tabela RECEBIMENTOS pra ver se */
       /* tem título pendente                          */
    /*   valorpendente = 0;
       SELECT VALOR_NF FROM RECEBIMENTOS
          WHERE ID_SOCIO = :id and STATUS = 'Acordo' /* so os titulos anteriores e o atual */
    /*      and Emissao <= :emi AND TIPO_DOC = 'AC'
         INTO :VALORPENDENTE;
        valor_nf = valorpendente;
   */
       suspend;
     end
end
