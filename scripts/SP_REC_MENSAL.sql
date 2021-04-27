CREATE OR ALTER PROCEDURE  SP_REC_MENSAL( CODCLI                           INTEGER
                              , CODREC                           INTEGER
                              , CODREC1                          INTEGER
                              , SELEC                            CHAR( 1 ) )
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
        , N_BOLETO                         VARCHAR( 18 )
        , CAIXA                            VARCHAR( 50 )
        , DATA_PAG                         DATE
)
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

  FOR SELECT rc.id_recebimentos, RC.status, RC.emissao, RC.vencimento,/*rc.valor_pago*/RC.valor_nf, RC.lote, SC.grupo, SC.nome_socio
            ,SC.n_inscricao, sc.id_socio, sc.cpf_cgc, cb.id_cob, cb.nome, rc.gerou, rc.titulo,rc.caixa, rc.data_pag FROM recebimentos RC
            LEFT OUTER JOIN socios SC ON SC.id_socio = RC.id_socio
            LEFT OUTER JOIN cobranca CB ON CB.id_cob = SC.id_cob
            WHERE (RC.id_socio = :CODCLI)
             and ((rc.id_recebimentos between :CODREC and :CODREC1)
             or (rc.selecionou =:selec))

  into :idrec,:status,:emissao,:vencimento,:valor,:n_lote,:n_grupo,:nome,:inscricao
  ,:id,:documento,:cod_cobrador,:nome_cobrador,:gerou,:n_boleto,:caixa,:data_pag
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

 suspend;
 end
end

