ALTER PROCEDURE  SP_N_OBITOS( PID                              INTEGER )
RETURNS ( CODIGO                           INTEGER
        , FALECIDO                         VARCHAR( 100 )
        , SEXO                             CHAR( 1 )
        , COR                              VARCHAR( 40 )
        , DATA_NASC                        DATE
        , IDADE                            INTEGER
        , ESTADO_CIVIL                     VARCHAR( 30 )
        , PROFISSAO                        VARCHAR( 40 )
        , NATURALIDADE                     VARCHAR( 40 )
        , ENDERECO_FAL                     VARCHAR( 100 )
        , NUMERO                           VARCHAR( 5 )
        , BAIRRO                           VARCHAR( 60 )
        , CIDADE                           VARCHAR( 60 )
        , UF                               CHAR( 2 )
        , CEP                              CHAR( 10 )
        , NOME_PAI                         VARCHAR( 80 )
        , NOME_MAE                         VARCHAR( 80 )
        , ESTCIVIL_PAI                     VARCHAR( 50 )
        , ESTCIVIL_MAE                     VARCHAR( 50 )
        , ENDERECO_PAIS                    VARCHAR( 100 )
        , NUMERO_PAIS                      VARCHAR( 5 )
        , BAIRRO_PAIS                      VARCHAR( 50 )
        , CIDADE_PAIS                      VARCHAR( 50 )
        , UF_PAIS                          CHAR( 2 )
        , DEIXA_BENS                       CHAR( 1 )
        , DEIXA_TESTAMENTO                 CHAR( 1 )
        , ELEITOR                          CHAR( 1 )
        , CIDADE_ELEITORAL                 VARCHAR( 50 )
        , CEMITERIO                        VARCHAR( 100 )
        , DATA_SEP                         DATE
        , HORA_SEP                         TIME
        , LOCAL_FAL                        VARCHAR( 100 )
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
        , NUM                              VARCHAR( 5 )
        , DOC_APRESENTADO                  VARCHAR( 200 )
        , REGISTRO                         VARCHAR( 100 )
        , DECLARANTE                       VARCHAR( 80 )
        , RG_CPF                           VARCHAR( 20 )
        , PROFISSAO_DECL                   VARCHAR( 30 )
        , GRAU_PARENTESCO                  VARCHAR( 30 )
        , FONE_DECL                        VARCHAR( 16 )
        , ENDERECO_DECL                    VARCHAR( 100 )
        , LINHA                            INTEGER
        , NACIONALIDADE                    VARCHAR( 40 )
        , CPF_DECLARANTE                   VARCHAR( 14 )
        , SSP_DECLARANTE                   VARCHAR( 14 )
        , IMSS                             CHAR( 1 )
        , N_BENEFICIO                      VARCHAR( 30 )
        , CPF_FALECIDO                     VARCHAR( 15 )
        , RG_FALECIDO                      VARCHAR( 15 )
        , SSP_FALECIDO                     VARCHAR( 6 )
        , DTA_EXPDICAO                     DATE
        , ZONA_ELEITORAL                   VARCHAR( 40 )
        , ZONA_NUMERO                      VARCHAR( 20 )
        , SECAO                            VARCHAR( 20 )
        , RESERVISTA                       VARCHAR( 15 )
        , CATEGORIA                        VARCHAR( 10 )
        , CATEGORIA_NUM                    VARCHAR( 10 )
        , SERIE_RESERV                     VARCHAR( 10 )
        , CIDADE_1                         VARCHAR( 50 )
        , ENDERECO_CAR                     VARCHAR( 80 )
        , FONE_CAR                         VARCHAR( 15 )
        , NOME_FUN                         VARCHAR( 50 )
        , CPF_FUN                          VARCHAR( 14 )
        , RG_FUN                           VARCHAR( 25 )
        , DTA_REGISTRO                     DATE
        , NUMERO_OBITO                     VARCHAR( 30 )
        , DATA_NASC_DECL                   DATE
        , DECLA_ESTCIVIL                   VARCHAR( 30 )
        , ENDERECO_MAE                     VARCHAR( 100 )
        , NUMERO_MAE                       VARCHAR( 5 )
        , BAIRRO_MAE                       VARCHAR( 40 )
        , CIDADE_MAE                       VARCHAR( 40 )
        , UF_MAE                           CHAR( 2 )
        , CEP_MAE                          VARCHAR( 10 )
        , AUT                              VARCHAR( 100 )
        , REG_AUT                          VARCHAR( 16 )
        , CPF_AUT                          VARCHAR( 16 )
        , PARENTESCO_AUT                   VARCHAR( 30 )
        , SSP_AUT                          VARCHAR( 30 )
        , CIDADE_ASS                       VARCHAR( 60 )
        , DATA_ASS                         DATE
        , ENDERECO                         VARCHAR( 50 )
        , NR                               VARCHAR( 10 )
        , TELEFONE                         VARCHAR( 15 )
        , CARGO                            VARCHAR( 70 )
        , NECROPICIADO                     CHAR( 1 )
        , BARBEAR                          CHAR( 1 )
        , BIGODE                           CHAR( 1 )
        , CAVANHAQUE                       CHAR( 1 )
        , UNHAS                            CHAR( 1 )
        , MAQUIAR                          CHAR( 1 )
        , FACIAL                           CHAR( 1 )
        , TEMPO                            CHAR( 2 )
        , TRANSPORTE                       VARCHAR( 80 )
        , CIDADE_T                         VARCHAR( 80 )
        , DATA_T                           DATE
        , TEST_1                           VARCHAR( 100 )
        , TEST_2                           VARCHAR( 100 )
        , FONE_T                           VARCHAR( 16 )
        , ENDERECO_T                       VARCHAR( 100 )
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
        , FAL_CARTORIO_CIDADE              VARCHAR( 100 )
        , FAL_ESCOLARIDADE                 VARCHAR( 50 ) )
AS
declare variable i integer;
BEGIN

   I=0;

   LINHA=1;
   FOR SELECT o.CODIGO, o.FALECIDO, o.SEXO, o.COR, o.DATA_NASC, udf_age(o.DATA_NASC), o.ESTADO_CIVIL, o.PROFISSAO, o.NATURALIDADE
        , o.ENDERECO_FAL, o.NUMERO, o.BAIRRO, o.CIDADE, o.UF, o.CEP ,o.NOME_PAI, o.NOME_MAE, o.ESTCIVIL_PAI
        , o.ESTCIVIL_MAE, o.ENDERECO_PAIS, o.NUMERO_PAIS, o.BAIRRO_PAIS, o.CIDADE_PAIS, o.UF_PAIS
        , o.DEIXA_BENS, o.DEIXA_TESTAMENTO, o.ELEITOR, o.CIDADE_ELEITORAL, o.CEMITERIO, o.DATA_SEP
        , o.HORA_SEP, o.LOCAL_FAL, o.DATA_FAL, o.HORA_FAL, o.MEDICO_1, o.MEDICO_2, o.CRM_1, o.CRM_2
        , o.CAUSA_MORTE, o.OBS, o.NUPCIAS, o.DATA_CASAMENTO, o.CONJUGE, o.LIVRO, o.FOLHAS, o.NUM
        , o.DOC_APRESENTADO, o.REGISTRO, o.DECLARANTE, o.RG_CPF, o.PROFISSAO_DECL, o.GRAU_PARENTESCO
        , o.FONE_DECL, o.ENDERECO_DECL ,o.NACIONALIDADE ,o.CPF_DECLARANTE ,O.SSP_DECLARANTE , o.IMSS , o.N_BENEFICIO
        , o.CPF_FALECIDO, o.RG_FALECIDO , o.SSP_FALECIDO , o.DTA_EXPDICAO ,o.ZONA_ELEITORAL,o.ZONA_NUMERO,SECAO
        , o.RESERVISTA,o.CATEGORIA,o.CATEGORIA_NUM,o.SERIE_RESERV , C.CIDADE , c.endereco , c.fone , F.NOME , f.cpf,f.rg ,o.data_sistema ,o.via
        , o.DATA_NASC_DECL , o.DECLA_ESTCIVIL ,o.ENDERECO_MAE,o.NUMERO_MAE,o.BAIRRO_MAE,o.CIDADE_MAE,o.UF_MAE,o.CEP_MAE ,o.aut,o.reg_aut,o.cpf_aut
        , o.parentesco_aut,o.ssp_aut , o.CIDADE_ASS , o.DATA_ASS ,f.endereco ,f.nr ,f.telefone , f.cargo
        ,o.necropiciado ,o.barbear ,o.bigode ,o.cavanhaque ,o.unhas ,o.maquiar ,o.facial ,o.tempo ,o.transporte ,o.cidade_t ,o.data_t  ,o.test_1  ,o.test_2 ,o.fone_t ,o.endereco_t
        , PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE , FAL_ESCOLARIDADE
   FROM OBITOS o
         left outer join CARTORIO c on c.ID_CARTORIO = o.ID_CARTORIO
         left outer join funcionarios F on F.cod_funcionario = o.cod_funcionario
         WHERE (o.ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:CEP ,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL , :NACIONALIDADE ,:CPF_DECLARANTE ,:SSP_DECLARANTE, :IMSS , :N_BENEFICIO
        ,:CPF_FALECIDO, :RG_FALECIDO , :SSP_FALECIDO , :DTA_EXPDICAO ,:ZONA_ELEITORAL,:ZONA_NUMERO,:SECAO
        ,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV  ,:CIDADE_1  , :endereco_car  , :fone_car , :NOME_FUN
        ,:cpf_fun ,:rg_fun ,:DTA_REGISTRO ,:numero_obito ,:DATA_NASC_DECL ,:DECLA_ESTCIVIL ,:ENDERECO_MAE,:NUMERO_MAE,:BAIRRO_MAE,:CIDADE_MAE,:UF_MAE,:CEP_MAE
        ,:aut,:reg_aut,:cpf_aut,:parentesco_aut ,:ssp_aut , :CIDADE_ASS , :DATA_ASS ,:endereco ,:nr ,:telefone ,:cargo
        ,:necropiciado ,:barbear ,:bigode ,:cavanhaque ,:unhas ,:maquiar ,:facial ,:tempo,:transporte ,:cidade_t ,:data_t  ,:test_1  ,:test_2 ,:fone_t ,:endereco_t
        ,:PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE, :FAL_ESCOLARIDADE
   DO
   BEGIN
  SUSPEND;
END

   LINHA=2;
   FOR SELECT o.CODIGO, o.FALECIDO, o.SEXO, o.COR, o.DATA_NASC, udf_age(o.DATA_NASC), o.ESTADO_CIVIL, o.PROFISSAO, o.NATURALIDADE
        , o.ENDERECO_FAL, o.NUMERO, o.BAIRRO, o.CIDADE, o.UF, o.CEP ,o.NOME_PAI, o.NOME_MAE, o.ESTCIVIL_PAI
        , o.ESTCIVIL_MAE, o.ENDERECO_PAIS, o.NUMERO_PAIS, o.BAIRRO_PAIS, o.CIDADE_PAIS, o.UF_PAIS
        , o.DEIXA_BENS, o.DEIXA_TESTAMENTO, o.ELEITOR, o.CIDADE_ELEITORAL, o.CEMITERIO, o.DATA_SEP
        , o.HORA_SEP, o.LOCAL_FAL, o.DATA_FAL, o.HORA_FAL, o.MEDICO_1, o.MEDICO_2, o.CRM_1, o.CRM_2
        , o.CAUSA_MORTE, o.OBS, o.NUPCIAS, o.DATA_CASAMENTO, o.CONJUGE, o.LIVRO, o.FOLHAS, o.NUM
        , o.DOC_APRESENTADO, o.REGISTRO, o.DECLARANTE, o.RG_CPF, o.PROFISSAO_DECL, o.GRAU_PARENTESCO
        , o.FONE_DECL, o.ENDERECO_DECL ,o.NACIONALIDADE ,o.CPF_DECLARANTE ,O.SSP_DECLARANTE , o.IMSS , o.N_BENEFICIO
        , o.CPF_FALECIDO, o.RG_FALECIDO , o.SSP_FALECIDO , o.DTA_EXPDICAO ,o.ZONA_ELEITORAL,o.ZONA_NUMERO,SECAO
        , o.RESERVISTA,o.CATEGORIA,o.CATEGORIA_NUM,o.SERIE_RESERV , C.CIDADE , c.endereco , c.fone , F.NOME , f.cpf,f.rg ,o.data_sistema ,o.via
        , o.DATA_NASC_DECL , o.DECLA_ESTCIVIL ,o.ENDERECO_MAE,o.NUMERO_MAE,o.BAIRRO_MAE,o.CIDADE_MAE,o.UF_MAE,o.CEP_MAE ,o.aut,o.reg_aut,o.cpf_aut
        , o.parentesco_aut,o.ssp_aut , o.CIDADE_ASS , o.DATA_ASS ,f.endereco ,f.nr ,f.telefone , f.cargo
        ,o.necropiciado ,o.barbear ,o.bigode ,o.cavanhaque ,o.unhas ,o.maquiar ,o.facial ,o.tempo ,o.transporte ,o.cidade_t ,o.data_t  ,o.test_1  ,o.test_2 ,o.fone_t ,o.endereco_t
        , PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE , FAL_ESCOLARIDADE
   FROM OBITOS o
         left outer join CARTORIO c on c.ID_CARTORIO = o.ID_CARTORIO
         left outer join funcionarios F on F.cod_funcionario = o.cod_funcionario
         WHERE (o.ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:CEP ,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL , :NACIONALIDADE ,:CPF_DECLARANTE ,:SSP_DECLARANTE, :IMSS , :N_BENEFICIO
        ,:CPF_FALECIDO, :RG_FALECIDO , :SSP_FALECIDO , :DTA_EXPDICAO ,:ZONA_ELEITORAL,:ZONA_NUMERO,:SECAO
        ,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV  ,:CIDADE_1  , :endereco_car  , :fone_car , :NOME_FUN
        ,:cpf_fun ,:rg_fun ,:DTA_REGISTRO ,:numero_obito ,:DATA_NASC_DECL ,:DECLA_ESTCIVIL ,:ENDERECO_MAE,:NUMERO_MAE,:BAIRRO_MAE,:CIDADE_MAE,:UF_MAE,:CEP_MAE
        ,:aut,:reg_aut,:cpf_aut,:parentesco_aut ,:ssp_aut , :CIDADE_ASS , :DATA_ASS ,:endereco ,:nr ,:telefone ,:cargo
        ,:necropiciado ,:barbear ,:bigode ,:cavanhaque ,:unhas ,:maquiar ,:facial ,:tempo,:transporte ,:cidade_t ,:data_t  ,:test_1  ,:test_2 ,:fone_t ,:endereco_t
        ,:PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE, :FAL_ESCOLARIDADE
   DO
   BEGIN
  SUSPEND;
END

   LINHA=3;
   FOR SELECT o.CODIGO, o.FALECIDO, o.SEXO, o.COR, o.DATA_NASC, udf_age(o.DATA_NASC), o.ESTADO_CIVIL, o.PROFISSAO, o.NATURALIDADE
        , o.ENDERECO_FAL, o.NUMERO, o.BAIRRO, o.CIDADE, o.UF, o.CEP ,o.NOME_PAI, o.NOME_MAE, o.ESTCIVIL_PAI
        , o.ESTCIVIL_MAE, o.ENDERECO_PAIS, o.NUMERO_PAIS, o.BAIRRO_PAIS, o.CIDADE_PAIS, o.UF_PAIS
        , o.DEIXA_BENS, o.DEIXA_TESTAMENTO, o.ELEITOR, o.CIDADE_ELEITORAL, o.CEMITERIO, o.DATA_SEP
        , o.HORA_SEP, o.LOCAL_FAL, o.DATA_FAL, o.HORA_FAL, o.MEDICO_1, o.MEDICO_2, o.CRM_1, o.CRM_2
        , o.CAUSA_MORTE, o.OBS, o.NUPCIAS, o.DATA_CASAMENTO, o.CONJUGE, o.LIVRO, o.FOLHAS, o.NUM
        , o.DOC_APRESENTADO, o.REGISTRO, o.DECLARANTE, o.RG_CPF, o.PROFISSAO_DECL, o.GRAU_PARENTESCO
        , o.FONE_DECL, o.ENDERECO_DECL ,o.NACIONALIDADE ,o.CPF_DECLARANTE ,O.SSP_DECLARANTE , o.IMSS , o.N_BENEFICIO
        , o.CPF_FALECIDO, o.RG_FALECIDO , o.SSP_FALECIDO , o.DTA_EXPDICAO ,o.ZONA_ELEITORAL,o.ZONA_NUMERO,SECAO
        , o.RESERVISTA,o.CATEGORIA,o.CATEGORIA_NUM,o.SERIE_RESERV , C.CIDADE , c.endereco , c.fone , F.NOME , f.cpf,f.rg ,o.data_sistema ,o.via
        , o.DATA_NASC_DECL , o.DECLA_ESTCIVIL ,o.ENDERECO_MAE,o.NUMERO_MAE,o.BAIRRO_MAE,o.CIDADE_MAE,o.UF_MAE,o.CEP_MAE ,o.aut,o.reg_aut,o.cpf_aut
        , o.parentesco_aut,o.ssp_aut , o.CIDADE_ASS , o.DATA_ASS ,f.endereco ,f.nr ,f.telefone , f.cargo
        ,o.necropiciado ,o.barbear ,o.bigode ,o.cavanhaque ,o.unhas ,o.maquiar ,o.facial ,o.tempo ,o.transporte ,o.cidade_t ,o.data_t  ,o.test_1  ,o.test_2 ,o.fone_t ,o.endereco_t
        , PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE , FAL_ESCOLARIDADE
   FROM OBITOS o
         left outer join CARTORIO c on c.ID_CARTORIO = o.ID_CARTORIO
         left outer join funcionarios F on F.cod_funcionario = o.cod_funcionario
         WHERE (o.ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:CEP ,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL , :NACIONALIDADE ,:CPF_DECLARANTE ,:SSP_DECLARANTE, :IMSS , :N_BENEFICIO
        ,:CPF_FALECIDO, :RG_FALECIDO , :SSP_FALECIDO , :DTA_EXPDICAO ,:ZONA_ELEITORAL,:ZONA_NUMERO,:SECAO
        ,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV  ,:CIDADE_1  , :endereco_car  , :fone_car , :NOME_FUN
        ,:cpf_fun ,:rg_fun ,:DTA_REGISTRO ,:numero_obito ,:DATA_NASC_DECL ,:DECLA_ESTCIVIL ,:ENDERECO_MAE,:NUMERO_MAE,:BAIRRO_MAE,:CIDADE_MAE,:UF_MAE,:CEP_MAE
        ,:aut,:reg_aut,:cpf_aut,:parentesco_aut ,:ssp_aut , :CIDADE_ASS , :DATA_ASS ,:endereco ,:nr ,:telefone ,:cargo
        ,:necropiciado ,:barbear ,:bigode ,:cavanhaque ,:unhas ,:maquiar ,:facial ,:tempo,:transporte ,:cidade_t ,:data_t  ,:test_1  ,:test_2 ,:fone_t ,:endereco_t
        ,:PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE, :FAL_ESCOLARIDADE
   DO
   BEGIN
  SUSPEND;
END
   LINHA=4;
   FOR SELECT o.CODIGO, o.FALECIDO, o.SEXO, o.COR, o.DATA_NASC, udf_age(o.DATA_NASC), o.ESTADO_CIVIL, o.PROFISSAO, o.NATURALIDADE
        , o.ENDERECO_FAL, o.NUMERO, o.BAIRRO, o.CIDADE, o.UF, o.CEP ,o.NOME_PAI, o.NOME_MAE, o.ESTCIVIL_PAI
        , o.ESTCIVIL_MAE, o.ENDERECO_PAIS, o.NUMERO_PAIS, o.BAIRRO_PAIS, o.CIDADE_PAIS, o.UF_PAIS
        , o.DEIXA_BENS, o.DEIXA_TESTAMENTO, o.ELEITOR, o.CIDADE_ELEITORAL, o.CEMITERIO, o.DATA_SEP
        , o.HORA_SEP, o.LOCAL_FAL, o.DATA_FAL, o.HORA_FAL, o.MEDICO_1, o.MEDICO_2, o.CRM_1, o.CRM_2
        , o.CAUSA_MORTE, o.OBS, o.NUPCIAS, o.DATA_CASAMENTO, o.CONJUGE, o.LIVRO, o.FOLHAS, o.NUM
        , o.DOC_APRESENTADO, o.REGISTRO, o.DECLARANTE, o.RG_CPF, o.PROFISSAO_DECL, o.GRAU_PARENTESCO
        , o.FONE_DECL, o.ENDERECO_DECL ,o.NACIONALIDADE ,o.CPF_DECLARANTE ,O.SSP_DECLARANTE , o.IMSS , o.N_BENEFICIO
        , o.CPF_FALECIDO, o.RG_FALECIDO , o.SSP_FALECIDO , o.DTA_EXPDICAO ,o.ZONA_ELEITORAL,o.ZONA_NUMERO,SECAO
        , o.RESERVISTA,o.CATEGORIA,o.CATEGORIA_NUM,o.SERIE_RESERV , C.CIDADE , c.endereco , c.fone , F.NOME , f.cpf,f.rg ,o.data_sistema ,o.via
        , o.DATA_NASC_DECL , o.DECLA_ESTCIVIL ,o.ENDERECO_MAE,o.NUMERO_MAE,o.BAIRRO_MAE,o.CIDADE_MAE,o.UF_MAE,o.CEP_MAE ,o.aut,o.reg_aut,o.cpf_aut
        , o.parentesco_aut,o.ssp_aut , o.CIDADE_ASS , o.DATA_ASS ,f.endereco ,f.nr ,f.telefone , f.cargo
        ,o.necropiciado ,o.barbear ,o.bigode ,o.cavanhaque ,o.unhas ,o.maquiar ,o.facial ,o.tempo ,o.transporte ,o.cidade_t ,o.data_t  ,o.test_1  ,o.test_2 ,o.fone_t ,o.endereco_t
        , PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE , FAL_ESCOLARIDADE
   FROM OBITOS o
         left outer join CARTORIO c on c.ID_CARTORIO = o.ID_CARTORIO
         left outer join funcionarios F on F.cod_funcionario = o.cod_funcionario
         WHERE (o.ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:CEP ,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL , :NACIONALIDADE ,:CPF_DECLARANTE ,:SSP_DECLARANTE, :IMSS , :N_BENEFICIO
        ,:CPF_FALECIDO, :RG_FALECIDO , :SSP_FALECIDO , :DTA_EXPDICAO ,:ZONA_ELEITORAL,:ZONA_NUMERO,:SECAO
        ,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV  ,:CIDADE_1  , :endereco_car  , :fone_car , :NOME_FUN
        ,:cpf_fun ,:rg_fun ,:DTA_REGISTRO ,:numero_obito ,:DATA_NASC_DECL ,:DECLA_ESTCIVIL ,:ENDERECO_MAE,:NUMERO_MAE,:BAIRRO_MAE,:CIDADE_MAE,:UF_MAE,:CEP_MAE
        ,:aut,:reg_aut,:cpf_aut,:parentesco_aut ,:ssp_aut , :CIDADE_ASS , :DATA_ASS ,:endereco ,:nr ,:telefone ,:cargo
        ,:necropiciado ,:barbear ,:bigode ,:cavanhaque ,:unhas ,:maquiar ,:facial ,:tempo,:transporte ,:cidade_t ,:data_t  ,:test_1  ,:test_2 ,:fone_t ,:endereco_t
        ,:PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE, :FAL_ESCOLARIDADE
   DO
   BEGIN
  SUSPEND;
END
   LINHA=5;
   FOR SELECT o.CODIGO, o.FALECIDO, o.SEXO, o.COR, o.DATA_NASC, udf_age(o.DATA_NASC), o.ESTADO_CIVIL, o.PROFISSAO, o.NATURALIDADE
        , o.ENDERECO_FAL, o.NUMERO, o.BAIRRO, o.CIDADE, o.UF, o.CEP ,o.NOME_PAI, o.NOME_MAE, o.ESTCIVIL_PAI
        , o.ESTCIVIL_MAE, o.ENDERECO_PAIS, o.NUMERO_PAIS, o.BAIRRO_PAIS, o.CIDADE_PAIS, o.UF_PAIS
        , o.DEIXA_BENS, o.DEIXA_TESTAMENTO, o.ELEITOR, o.CIDADE_ELEITORAL, o.CEMITERIO, o.DATA_SEP
        , o.HORA_SEP, o.LOCAL_FAL, o.DATA_FAL, o.HORA_FAL, o.MEDICO_1, o.MEDICO_2, o.CRM_1, o.CRM_2
        , o.CAUSA_MORTE, o.OBS, o.NUPCIAS, o.DATA_CASAMENTO, o.CONJUGE, o.LIVRO, o.FOLHAS, o.NUM
        , o.DOC_APRESENTADO, o.REGISTRO, o.DECLARANTE, o.RG_CPF, o.PROFISSAO_DECL, o.GRAU_PARENTESCO
        , o.FONE_DECL, o.ENDERECO_DECL ,o.NACIONALIDADE ,o.CPF_DECLARANTE ,O.SSP_DECLARANTE , o.IMSS , o.N_BENEFICIO
        , o.CPF_FALECIDO, o.RG_FALECIDO , o.SSP_FALECIDO , o.DTA_EXPDICAO ,o.ZONA_ELEITORAL,o.ZONA_NUMERO,SECAO
        , o.RESERVISTA,o.CATEGORIA,o.CATEGORIA_NUM,o.SERIE_RESERV , C.CIDADE , c.endereco , c.fone , F.NOME , f.cpf,f.rg ,o.data_sistema ,o.via
        , o.DATA_NASC_DECL , o.DECLA_ESTCIVIL ,o.ENDERECO_MAE,o.NUMERO_MAE,o.BAIRRO_MAE,o.CIDADE_MAE,o.UF_MAE,o.CEP_MAE ,o.aut,o.reg_aut,o.cpf_aut
        , o.parentesco_aut,o.ssp_aut , o.CIDADE_ASS , o.DATA_ASS ,f.endereco ,f.nr ,f.telefone , f.cargo
        ,o.necropiciado ,o.barbear ,o.bigode ,o.cavanhaque ,o.unhas ,o.maquiar ,o.facial ,o.tempo ,o.transporte ,o.cidade_t ,o.data_t  ,o.test_1  ,o.test_2 ,o.fone_t ,o.endereco_t
        , PIS,CTPS,CTPS_SERIE ,CTPS_UF ,FAL_LIVRO ,FAL_FOLHA ,FAL_NUM ,FAL_ID_CARTORIO ,FAL_CARTORIO,FAL_CARTORIO_END, FAL_CARTORIO_CIDADE , FAL_ESCOLARIDADE
   FROM OBITOS o
         left outer join CARTORIO c on c.ID_CARTORIO = o.ID_CARTORIO
         left outer join funcionarios F on F.cod_funcionario = o.cod_funcionario
         WHERE (o.ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:CEP ,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL , :NACIONALIDADE ,:CPF_DECLARANTE ,:SSP_DECLARANTE, :IMSS , :N_BENEFICIO
        ,:CPF_FALECIDO, :RG_FALECIDO , :SSP_FALECIDO , :DTA_EXPDICAO ,:ZONA_ELEITORAL,:ZONA_NUMERO,:SECAO
        ,:RESERVISTA,:CATEGORIA,:CATEGORIA_NUM,:SERIE_RESERV  ,:CIDADE_1  , :endereco_car  , :fone_car , :NOME_FUN
        ,:cpf_fun ,:rg_fun ,:DTA_REGISTRO ,:numero_obito ,:DATA_NASC_DECL ,:DECLA_ESTCIVIL ,:ENDERECO_MAE,:NUMERO_MAE,:BAIRRO_MAE,:CIDADE_MAE,:UF_MAE,:CEP_MAE
        ,:aut,:reg_aut,:cpf_aut,:parentesco_aut ,:ssp_aut , :CIDADE_ASS , :DATA_ASS ,:endereco ,:nr ,:telefone ,:cargo
        ,:necropiciado ,:barbear ,:bigode ,:cavanhaque ,:unhas ,:maquiar ,:facial ,:tempo,:transporte ,:cidade_t ,:data_t  ,:test_1  ,:test_2 ,:fone_t ,:endereco_t
        ,:PIS,:CTPS,:CTPS_SERIE ,:CTPS_UF ,:FAL_LIVRO ,:FAL_FOLHA ,:FAL_NUM ,:FAL_ID_CARTORIO ,:FAL_CARTORIO,:FAL_CARTORIO_END,:FAL_CARTORIO_CIDADE, :FAL_ESCOLARIDADE
   DO
   BEGIN
  SUSPEND;
END

END

