ALTER PROCEDURE  SP_DECL_OBITOS( PID                              INTEGER )
RETURNS ( CODIGO                           INTEGER
        , FALECIDO                         VARCHAR( 100 )
        , SEXO                             CHAR( 1 )
        , COR                              VARCHAR( 40 )
        , DATA_NASC                        DATE
        , IDADE                            INTEGER
        , ESTADO_CIVIL                     VARCHAR( 30 )
        , PROFISSAO                        VARCHAR( 40 )
        , NATURALIDADE                     VARCHAR( 80 )
        , ENDERECO_FAL                     VARCHAR( 100 )
        , NUMERO                           VARCHAR( 5 )
        , BAIRRO                           VARCHAR( 40 )
        , CIDADE                           VARCHAR( 40 )
        , UF                               CHAR( 2 )
        , NOME_PAI                         VARCHAR( 80 )
        , NOME_MAE                         VARCHAR( 80 )
        , ESTCIVIL_PAI                     VARCHAR( 30 )
        , ESTCIVIL_MAE                     VARCHAR( 30 )
        , ENDERECO_PAIS                    VARCHAR( 100 )
        , NUMERO_PAIS                      VARCHAR( 5 )
        , BAIRRO_PAIS                      VARCHAR( 40 )
        , CIDADE_PAIS                      VARCHAR( 40 )
        , UF_PAIS                          CHAR( 2 )
        , DEIXA_BENS                       CHAR( 1 )
        , DEIXA_TESTAMENTO                 CHAR( 1 )
        , ELEITOR                          CHAR( 1 )
        , CIDADE_ELEITORAL                 VARCHAR( 40 )
        , CEMITERIO                        VARCHAR( 100 )
        , DATA_SEP                         DATE
        , HORA_SEP                         TIME
        , LOCAL_FAL                        VARCHAR( 80 )
        , DATA_FAL                         DATE
        , HORA_FAL                         TIME
        , MEDICO_1                         VARCHAR( 80 )
        , MEDICO_2                         VARCHAR( 80 )
        , CRM_1                            VARCHAR( 15 )
        , CRM_2                            VARCHAR( 15 )
        , CAUSA_MORTE                      VARCHAR( 300 )
        , OBS                              VARCHAR( 200 )
        , NUPCIAS                          VARCHAR( 80 )
        , DATA_CASAMENTO                   DATE
        , CONJUGE                          VARCHAR( 80 )
        , LIVRO                            VARCHAR( 5 )
        , FOLHAS                           VARCHAR( 5 )
        , NUM                              VARCHAR( 10 )
        , DOC_APRESENTADO                  VARCHAR( 400 )
        , REGISTRO                         VARCHAR( 100 )
        , ENDERECO_REG                     VARCHAR( 100 )
        , DECLARANTE                       VARCHAR( 80 )
        , RG_CPF                           VARCHAR( 20 )
        , PROFISSAO_DECL                   VARCHAR( 30 )
        , GRAU_PARENTESCO                  VARCHAR( 30 )
        , FONE_DECL                        VARCHAR( 14 )
        , ENDERECO_DECL                    VARCHAR( 100 )
        , NATURAL_PAI                      VARCHAR( 80 )
        , PROFISSAO_PAI                    VARCHAR( 40 )
        , NATURAL_MAE                      VARCHAR( 80 )
        , PROFISSAO_MAE                    VARCHAR( 40 )
        , ZONA_ELEITORAL                   VARCHAR( 40 )
        , ZONA_NUMERO                      VARCHAR( 40 )
        , SECAO                            VARCHAR( 20 )
        , ESTCIVIL_DECL                    VARCHAR( 30 )
        , RESERVISTA                       VARCHAR( 15 )
        , CATEGORIA                        VARCHAR( 10 )
        , CATEGORIA_NUM                    VARCHAR( 10 )
        , SERIE_RESERV                     VARCHAR( 10 )
        , CSM                              VARCHAR( 10 )
        , RM                               VARCHAR( 10 )
        , NUPCIAS_2                        VARCHAR( 80 )
        , DATA_CASAMENTO_2                 DATE
        , CONJUGE_2                        VARCHAR( 80 )
        , LIVRO_2                          VARCHAR( 5 )
        , FOLHAS_2                         VARCHAR( 5 )
        , NUM_2                            VARCHAR( 10 )
        , AGENCIA                          VARCHAR( 25 )
        , PRECO                            DOUBLE PRECISION
        , NOTAFISCAL                       SMALLINT
        , TIPO_OBITO                       VARCHAR( 10 )
        , CPF_FAL                          VARCHAR( 15 )
        , RG_FAL                           VARCHAR( 15 )
        , SSP                              CHAR( 15 )
        , EXPEDICAO                        DATE
        , CARTORIO_END                     INTEGER
        , FUNCIONARIO                      VARCHAR( 80 )
        , TIPO                             CHAR( 1 )
        , IMSS                             CHAR( 1 )
        , N_BENEFICIO                      VARCHAR( 30 )
        , DECLARANTE_NACIONALIDADE         VARCHAR( 30 )
        , FALECIDO_ESTCIVIL                VARCHAR( 30 )
        , DATA_DECLARACAO                  DATE
        , CPF_DECLARANTE                   VARCHAR( 14 )
        , SSP_DECLARANTE                   VARCHAR( 15 )
        , NACIONALIDADE                    VARCHAR( 30 )
        , LINHA                            INTEGER
        , CEP                              VARCHAR( 10 )
        , PIS                              VARCHAR( 14 )
        , CTPS                             VARCHAR( 7 )
        , CTPS_SERIE                       VARCHAR( 5 )
        , CTPS_UF                          VARCHAR( 2 )
        , FAL_LIVRO                        VARCHAR( 5 )
        , FAL_FOLHA                        VARCHAR( 5 )
        , FAL_NUM                          VARCHAR( 10 )
        , FAL_ID_CARTORIO                  INTEGER
        , FAL_CARTORIO                     VARCHAR( 100 )
        , FAL_CARTORIO_END                 VARCHAR( 100 )
        , FAL_CARTORIO_CIDADE              VARCHAR( 100 ) )
AS
declare variable i integer;
BEGIN

   I=0;
   LINHA=1;

   SELECT f.NOME FROM FUNCIONARIOS f INNER JOIN OBITOS o ON
     o.COD_FUNCIONARIO = f.COD_FUNCIONARIO WHERE (o.ID = :PID)
   INTO :FUNCIONARIO;
   FOR SELECT CODIGO, FALECIDO, SEXO, COR, DATA_NASC,udf_age(DATA_NASC), ESTADO_CIVIL, PROFISSAO, NATURALIDADE
        , ENDERECO_FAL, NUMERO, BAIRRO, CIDADE, UF, NOME_PAI, NOME_MAE, ESTCIVIL_PAI
        , ESTCIVIL_MAE, ENDERECO_PAIS, NUMERO_PAIS, BAIRRO_PAIS, CIDADE_PAIS, UF_PAIS
        , DEIXA_BENS, DEIXA_TESTAMENTO, ELEITOR, CIDADE_ELEITORAL, CEMITERIO, DATA_SEP
        , HORA_SEP, LOCAL_FAL, DATA_FAL, HORA_FAL, MEDICO_1, MEDICO_2, CRM_1, CRM_2
        , CAUSA_MORTE, OBS, NUPCIAS, DATA_CASAMENTO, CONJUGE, LIVRO, FOLHAS, NUM
        , DOC_APRESENTADO, REGISTRO, ENDERECO , DECLARANTE, RG_CPF, PROFISSAO_DECL, GRAU_PARENTESCO
        , FONE_DECL, ENDERECO_DECL, NATURAL_PAI, PROFISSAO_PAI, NATURAL_MAE, PROFISSAO_MAE
        , ZONA_ELEITORAL, ZONA_NUMERO, SECAO, DECLA_ESTCIVIL,RESERVISTA, CATEGORIA, CATEGORIA_NUM, SERIE_RESERV
        , CSM, RM, NUPCIAS_2, DATA_CASAMENTO_2, CONJUGE_2, LIVRO_2, FOLHAS_2, NUM_2, AGENCIA
        , VALOR_SERVICO, NOTAFISCAL, TIPO_OBITO, CPF_FALECIDO, RG_FALECIDO
        , SSP_FALECIDO, DTA_EXPDICAO, ID_CARTORIO, TIPO, IMSS, N_BENEFICIO
        , DECLA_NACIONALIDADE, FALEC_ESTCIVIL, DATA_SISTEMA , CPF_DECLARANTE, SSP_DECLARANTE, NACIONALIDADE , CEP,
        PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE

        FROM OBITOS WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:endereco_reg,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL,:NATURAL_PAI,:PROFISSAO_PAI,:NATURAL_MAE,:PROFISSAO_MAE
        ,:ZONA_ELEITORAL,:ZONA_NUMERO,:secao,:estcivil_decl,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV
        ,:CSM,:RM,:NUPCIAS_2,:DATA_CASAMENTO_2,:CONJUGE_2,:LIVRO_2,:FOLHAS_2,:NUM_2,:AGENCIA,:PRECO
        ,:NOTAFISCAL,:TIPO_OBITO,:CPF_FAL,:RG_FAL,:SSP,:EXPEDICAO,:CARTORIO_END,:TIPO
        ,:IMSS,:n_beneficio,:declarante_nacionalidade,:falecido_estcivil, :DATA_DECLARACAO , :CPF_DECLARANTE, :SSP_DECLARANTE, :NACIONALIDADE, :CEP ,
        :PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE
   DO
   BEGIN
  SUSPEND;
END
   LINHA=2;

   SELECT f.NOME FROM FUNCIONARIOS f INNER JOIN OBITOS o ON
     o.COD_FUNCIONARIO = f.COD_FUNCIONARIO WHERE (o.ID = :PID)
   INTO :FUNCIONARIO;
   FOR SELECT CODIGO, FALECIDO, SEXO, COR, DATA_NASC, udf_age(DATA_NASC), ESTADO_CIVIL, PROFISSAO, NATURALIDADE
        , ENDERECO_FAL, NUMERO, BAIRRO, CIDADE, UF, NOME_PAI, NOME_MAE, ESTCIVIL_PAI
        , ESTCIVIL_MAE, ENDERECO_PAIS, NUMERO_PAIS, BAIRRO_PAIS, CIDADE_PAIS, UF_PAIS
        , DEIXA_BENS, DEIXA_TESTAMENTO, ELEITOR, CIDADE_ELEITORAL, CEMITERIO, DATA_SEP
        , HORA_SEP, LOCAL_FAL, DATA_FAL, HORA_FAL, MEDICO_1, MEDICO_2, CRM_1, CRM_2
        , CAUSA_MORTE, OBS, NUPCIAS, DATA_CASAMENTO, CONJUGE, LIVRO, FOLHAS, NUM
        , DOC_APRESENTADO, REGISTRO, ENDERECO , DECLARANTE, RG_CPF, PROFISSAO_DECL, GRAU_PARENTESCO
        , FONE_DECL, ENDERECO_DECL, NATURAL_PAI, PROFISSAO_PAI, NATURAL_MAE, PROFISSAO_MAE
        , ZONA_ELEITORAL, ZONA_NUMERO, SECAO, DECLA_ESTCIVIL,RESERVISTA, CATEGORIA, CATEGORIA_NUM, SERIE_RESERV
        , CSM, RM, NUPCIAS_2, DATA_CASAMENTO_2, CONJUGE_2, LIVRO_2, FOLHAS_2, NUM_2, AGENCIA
        , VALOR_SERVICO, NOTAFISCAL, TIPO_OBITO, CPF_FALECIDO, RG_FALECIDO
        , SSP_FALECIDO, DTA_EXPDICAO, ID_CARTORIO, TIPO, IMSS, N_BENEFICIO
        , DECLA_NACIONALIDADE, FALEC_ESTCIVIL, DATA_SISTEMA , CPF_DECLARANTE, SSP_DECLARANTE, NACIONALIDADE , CEP,
        PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE

        FROM OBITOS WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:endereco_reg,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL,:NATURAL_PAI,:PROFISSAO_PAI,:NATURAL_MAE,:PROFISSAO_MAE
        ,:ZONA_ELEITORAL,:ZONA_NUMERO,:secao,:estcivil_decl,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV
        ,:CSM,:RM,:NUPCIAS_2,:DATA_CASAMENTO_2,:CONJUGE_2,:LIVRO_2,:FOLHAS_2,:NUM_2,:AGENCIA,:PRECO
        ,:NOTAFISCAL,:TIPO_OBITO,:CPF_FAL,:RG_FAL,:SSP,:EXPEDICAO,:CARTORIO_END,:TIPO
        ,:IMSS,:n_beneficio,:declarante_nacionalidade,:falecido_estcivil, :DATA_DECLARACAO , :CPF_DECLARANTE, :SSP_DECLARANTE, :NACIONALIDADE, :CEP ,
        :PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE
   DO
   BEGIN
  SUSPEND;
END

   LINHA=3;

   SELECT f.NOME FROM FUNCIONARIOS f INNER JOIN OBITOS o ON
     o.COD_FUNCIONARIO = f.COD_FUNCIONARIO WHERE (o.ID = :PID)
   INTO :FUNCIONARIO;
   FOR SELECT CODIGO, FALECIDO, SEXO, COR, DATA_NASC, udf_age(DATA_NASC), ESTADO_CIVIL, PROFISSAO, NATURALIDADE
        , ENDERECO_FAL, NUMERO, BAIRRO, CIDADE, UF, NOME_PAI, NOME_MAE, ESTCIVIL_PAI
        , ESTCIVIL_MAE, ENDERECO_PAIS, NUMERO_PAIS, BAIRRO_PAIS, CIDADE_PAIS, UF_PAIS
        , DEIXA_BENS, DEIXA_TESTAMENTO, ELEITOR, CIDADE_ELEITORAL, CEMITERIO, DATA_SEP
        , HORA_SEP, LOCAL_FAL, DATA_FAL, HORA_FAL, MEDICO_1, MEDICO_2, CRM_1, CRM_2
        , CAUSA_MORTE, OBS, NUPCIAS, DATA_CASAMENTO, CONJUGE, LIVRO, FOLHAS, NUM
        , DOC_APRESENTADO, REGISTRO, ENDERECO , DECLARANTE, RG_CPF, PROFISSAO_DECL, GRAU_PARENTESCO
        , FONE_DECL, ENDERECO_DECL, NATURAL_PAI, PROFISSAO_PAI, NATURAL_MAE, PROFISSAO_MAE
        , ZONA_ELEITORAL, ZONA_NUMERO, SECAO, DECLA_ESTCIVIL,RESERVISTA, CATEGORIA, CATEGORIA_NUM, SERIE_RESERV
        , CSM, RM, NUPCIAS_2, DATA_CASAMENTO_2, CONJUGE_2, LIVRO_2, FOLHAS_2, NUM_2, AGENCIA
        , VALOR_SERVICO, NOTAFISCAL, TIPO_OBITO, CPF_FALECIDO, RG_FALECIDO
        , SSP_FALECIDO, DTA_EXPDICAO, ID_CARTORIO, TIPO, IMSS, N_BENEFICIO
        , DECLA_NACIONALIDADE, FALEC_ESTCIVIL, DATA_SISTEMA , CPF_DECLARANTE, SSP_DECLARANTE, NACIONALIDADE , CEP,
        PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE

        FROM OBITOS WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:endereco_reg,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL,:NATURAL_PAI,:PROFISSAO_PAI,:NATURAL_MAE,:PROFISSAO_MAE
        ,:ZONA_ELEITORAL,:ZONA_NUMERO,:secao,:estcivil_decl,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV
        ,:CSM,:RM,:NUPCIAS_2,:DATA_CASAMENTO_2,:CONJUGE_2,:LIVRO_2,:FOLHAS_2,:NUM_2,:AGENCIA,:PRECO
        ,:NOTAFISCAL,:TIPO_OBITO,:CPF_FAL,:RG_FAL,:SSP,:EXPEDICAO,:CARTORIO_END,:TIPO
        ,:IMSS,:n_beneficio,:declarante_nacionalidade,:falecido_estcivil, :DATA_DECLARACAO , :CPF_DECLARANTE, :SSP_DECLARANTE, :NACIONALIDADE, :CEP ,
        :PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE
   DO
   BEGIN
  SUSPEND;
END
   LINHA=4;

   SELECT f.NOME FROM FUNCIONARIOS f INNER JOIN OBITOS o ON
     o.COD_FUNCIONARIO = f.COD_FUNCIONARIO WHERE (o.ID = :PID)
   INTO :FUNCIONARIO;
   FOR SELECT CODIGO, FALECIDO, SEXO, COR, DATA_NASC, udf_age(DATA_NASC), ESTADO_CIVIL, PROFISSAO, NATURALIDADE
        , ENDERECO_FAL, NUMERO, BAIRRO, CIDADE, UF, NOME_PAI, NOME_MAE, ESTCIVIL_PAI
        , ESTCIVIL_MAE, ENDERECO_PAIS, NUMERO_PAIS, BAIRRO_PAIS, CIDADE_PAIS, UF_PAIS
        , DEIXA_BENS, DEIXA_TESTAMENTO, ELEITOR, CIDADE_ELEITORAL, CEMITERIO, DATA_SEP
        , HORA_SEP, LOCAL_FAL, DATA_FAL, HORA_FAL, MEDICO_1, MEDICO_2, CRM_1, CRM_2
        , CAUSA_MORTE, OBS, NUPCIAS, DATA_CASAMENTO, CONJUGE, LIVRO, FOLHAS, NUM
        , DOC_APRESENTADO, REGISTRO, ENDERECO , DECLARANTE, RG_CPF, PROFISSAO_DECL, GRAU_PARENTESCO
        , FONE_DECL, ENDERECO_DECL, NATURAL_PAI, PROFISSAO_PAI, NATURAL_MAE, PROFISSAO_MAE
        , ZONA_ELEITORAL, ZONA_NUMERO, SECAO, DECLA_ESTCIVIL,RESERVISTA, CATEGORIA, CATEGORIA_NUM, SERIE_RESERV
        , CSM, RM, NUPCIAS_2, DATA_CASAMENTO_2, CONJUGE_2, LIVRO_2, FOLHAS_2, NUM_2, AGENCIA
        , VALOR_SERVICO, NOTAFISCAL, TIPO_OBITO, CPF_FALECIDO, RG_FALECIDO
        , SSP_FALECIDO, DTA_EXPDICAO, ID_CARTORIO, TIPO, IMSS, N_BENEFICIO
        , DECLA_NACIONALIDADE, FALEC_ESTCIVIL, DATA_SISTEMA , CPF_DECLARANTE, SSP_DECLARANTE, NACIONALIDADE , CEP,
        PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE

        FROM OBITOS WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:endereco_reg,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL,:NATURAL_PAI,:PROFISSAO_PAI,:NATURAL_MAE,:PROFISSAO_MAE
        ,:ZONA_ELEITORAL,:ZONA_NUMERO,:secao,:estcivil_decl,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV
        ,:CSM,:RM,:NUPCIAS_2,:DATA_CASAMENTO_2,:CONJUGE_2,:LIVRO_2,:FOLHAS_2,:NUM_2,:AGENCIA,:PRECO
        ,:NOTAFISCAL,:TIPO_OBITO,:CPF_FAL,:RG_FAL,:SSP,:EXPEDICAO,:CARTORIO_END,:TIPO
        ,:IMSS,:n_beneficio,:declarante_nacionalidade,:falecido_estcivil, :DATA_DECLARACAO , :CPF_DECLARANTE, :SSP_DECLARANTE, :NACIONALIDADE, :CEP ,
        :PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE
   DO
   BEGIN
  SUSPEND;
END
   LINHA=5;

   SELECT f.NOME FROM FUNCIONARIOS f INNER JOIN OBITOS o ON
     o.COD_FUNCIONARIO = f.COD_FUNCIONARIO WHERE (o.ID = :PID)
   INTO :FUNCIONARIO;
   FOR SELECT CODIGO, FALECIDO, SEXO, COR, DATA_NASC, udf_age(DATA_NASC), ESTADO_CIVIL, PROFISSAO, NATURALIDADE
        , ENDERECO_FAL, NUMERO, BAIRRO, CIDADE, UF, NOME_PAI, NOME_MAE, ESTCIVIL_PAI
        , ESTCIVIL_MAE, ENDERECO_PAIS, NUMERO_PAIS, BAIRRO_PAIS, CIDADE_PAIS, UF_PAIS
        , DEIXA_BENS, DEIXA_TESTAMENTO, ELEITOR, CIDADE_ELEITORAL, CEMITERIO, DATA_SEP
        , HORA_SEP, LOCAL_FAL, DATA_FAL, HORA_FAL, MEDICO_1, MEDICO_2, CRM_1, CRM_2
        , CAUSA_MORTE, OBS, NUPCIAS, DATA_CASAMENTO, CONJUGE, LIVRO, FOLHAS, NUM
        , DOC_APRESENTADO, REGISTRO, ENDERECO , DECLARANTE, RG_CPF, PROFISSAO_DECL, GRAU_PARENTESCO
        , FONE_DECL, ENDERECO_DECL, NATURAL_PAI, PROFISSAO_PAI, NATURAL_MAE, PROFISSAO_MAE
        , ZONA_ELEITORAL, ZONA_NUMERO, SECAO, DECLA_ESTCIVIL,RESERVISTA, CATEGORIA, CATEGORIA_NUM, SERIE_RESERV
        , CSM, RM, NUPCIAS_2, DATA_CASAMENTO_2, CONJUGE_2, LIVRO_2, FOLHAS_2, NUM_2, AGENCIA
        , VALOR_SERVICO, NOTAFISCAL, TIPO_OBITO, CPF_FALECIDO, RG_FALECIDO
        , SSP_FALECIDO, DTA_EXPDICAO, ID_CARTORIO, TIPO, IMSS, N_BENEFICIO
        , DECLA_NACIONALIDADE, FALEC_ESTCIVIL, DATA_SISTEMA , CPF_DECLARANTE, SSP_DECLARANTE, NACIONALIDADE , CEP,
        PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE

        FROM OBITOS WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:endereco_reg,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL,:NATURAL_PAI,:PROFISSAO_PAI,:NATURAL_MAE,:PROFISSAO_MAE
        ,:ZONA_ELEITORAL,:ZONA_NUMERO,:secao,:estcivil_decl,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV
        ,:CSM,:RM,:NUPCIAS_2,:DATA_CASAMENTO_2,:CONJUGE_2,:LIVRO_2,:FOLHAS_2,:NUM_2,:AGENCIA,:PRECO
        ,:NOTAFISCAL,:TIPO_OBITO,:CPF_FAL,:RG_FAL,:SSP,:EXPEDICAO,:CARTORIO_END,:TIPO
        ,:IMSS,:n_beneficio,:declarante_nacionalidade,:falecido_estcivil, :DATA_DECLARACAO , :CPF_DECLARANTE, :SSP_DECLARANTE, :NACIONALIDADE, :CEP ,
        :PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE
   DO
   BEGIN
  SUSPEND;
END
END

