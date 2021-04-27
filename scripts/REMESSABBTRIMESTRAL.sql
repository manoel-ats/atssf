CREATE OR ALTER PROCEDURE  REMESSABBTRIMESTRAL( PDATA1                           DATE
                                    , GP                               CHAR( 1 )
                                    , INSC                             INTEGER
                                    , INSC1                            INTEGER
                                    , COB                              INTEGER )
RETURNS ( IDREC                            INTEGER
        , ID                               INTEGER
        , NOME                             VARCHAR( 80 )
        , RUA                              VARCHAR( 80 )
        , CEP                              CHAR( 9 )
        , UF                               CHAR( 2 )
        , BAIRRO                           VARCHAR( 60 )
        , MUNICIPIO                        VARCHAR( 60 )
        , EMISSAO                          DATE
        , VENCIMENTO                       DATE
        , VALOR                            DOUBLE PRECISION
        , VALORPENDENTE                    DOUBLE PRECISION
        , VALORDEVE                        DOUBLE PRECISION
        , N_DOC                            VARCHAR( 20 )
        , INSTRUCOES                       VARCHAR( 300 )
        , INSCRICAO                        INTEGER
        , N_LOTE                           INTEGER
        , N_GRUPO                          CHAR( 1 )
        , STATUS                           VARCHAR( 30 )
        , VENCIDOS                         VARCHAR( 300 )
        , D_VENCIDO                        DATE
        , TOT_PENDENTE                     INTEGER
        , COD_COBRADOR                     INTEGER
        , NOME_COBRADOR                    VARCHAR( 80 )
        , DOCUMENTO                        VARCHAR( 18 )
        , GEROU                            CHAR( 1 )
        , N_BOLETO                         VARCHAR( 30 )
        , N_TITULO                         INTEGER
        , CPF_CGC                          VARCHAR( 18 )
        , TIPO_DOC                         CHAR( 1 ) )
AS
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
            ,SC.N_INSCRICAO, sc.ID_SOCIO, sc.CPF_CGC, cb.ID_COB, cb.NOME, rc.gerou, rc.n_boleto, rc.titulo,sc.CPF_CGC, sc.TIPO_DOC  FROM recebimentos RC
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
  ,:id,:documento,:cod_cobrador,:nome_cobrador,:gerou,:n_boleto,:n_titulo ,:CPF_CGC,:TIPO_DOC
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
