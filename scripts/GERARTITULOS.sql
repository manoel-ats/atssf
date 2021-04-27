CREATE OR ALTER PROCEDURE GERARTITULOS(
  plano varchar(20),
  MA VARCHAR(10),
  DiaPgto INTEGER,
  lt integer,
  GP CHAR(1),
  INSC INTEGER,
  INSC1 INTEGER,
  Cob INTEGER,
  TotalPendente integer,
  VENC DATE
  )
RETURNS(
  ID_RECEBIMENTOS INTEGER,
  STATUS VARCHAR(30),
  EMISSAO DATE,
  VENCIMENTO DATE,
  VALOR_NF DOUBLE PRECISION,
  LOTE INTEGER,
  GRUPO CHAR(1),
  NOME_SOCIO VARCHAR(80),
  N_INSCRICAO INTEGER,
  CPF_CGC VARCHAR(18),
  NOME VARCHAR(80),
  MESANO VARCHAR(10),
  N_BOLETO VARCHAR(30),
  TITULO INTEGER,
  ID_SOCIO INTEGER,
  ID INTEGER,
  TOT_PENDENTE INTEGER,
  RUA VARCHAR(80),
  CEP CHAR(9),
  UF CHAR(2),
  BAIRRO VARCHAR(60),
  MUNICIPIO VARCHAR(60)
  )
AS
declare variable valorpendente double precision;
declare variable tipo integer;
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
       WHERE (sc.PLANO = :plano)
         and ((RC.MESANO = :MA) or (:MA = 'todosmeses'))
         and ((sc.DIAPARAPGTO = :diapgto) or (:diapgto = 9999999))
         and ((rc.LOTE = :lt) or (:lt = 9999999))
         and ((sc.GRUPO = :gp) or (:gp = 't'))
         and ((sc.N_INSCRICAO between :insc and :insc1))
         and ((sc.ID_COB = :Cob) or (:Cob = 9999999))
         and (rc.STATUS = 'Pendente')
         and (rc.VENCIMENTO <= :venc)
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

        end
        tot_pendente = 0;
        SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id_socio
        and STATUS = 'Pendente' and VENCIMENTO <= :venc
        INTO :TOT_PENDENTE;
        if (TOT_PENDENTE <= TotalPendente) then
        begin
          /*select max(TIPOEND) FROM endereco WHERE id_socio = :id_socio
          into :tipo;
          for SELECT ED.ENDERECO, ED.CEP, ED.ESTADO, BR.BAIRRO
                ,MP.MUNICIPIO FROM ENDERECO ED
                LEFT OUTER JOIN bairro BR ON BR.id_bairro = ED.id_bairro
                LEFT OUTER JOIN municipio MP ON MP.id_municipio = ED.id_municipio
                WHERE ed.id_socio = :id and ed.tipoend = :tipo
          INTO :rua,:cep,:uf,:bairro,:municipio
          do begin
          end
          valorpendente = 0;
          SELECT sum(VALOR_NF) FROM RECEBIMENTOS WHERE ID_SOCIO = :id
          and STATUS = 'Pendente' and VENCIMENTO <= :venc
          INTO :VALORPENDENTE;
           valor_nf = valorpendente; */
          suspend;
        end
     end
end
