CREATE or ALter PROCEDURE SP_REL_CIRCULAR (
    plote integer,
    pgrupo char(1))
returns (
    falec1 varchar(60),
    nasc1 date,
    resid1 varchar(100),
    num1 varchar(5),
    bairro1 varchar(40),
    cidade1 varchar(40),
    uf1 varchar(2),
    cep1 varchar(10),
    cemiterio1 varchar(100),
    sep_d1 date,
    sep_h1 time,
    fal_l1 varchar(100),
    fal_d1 date,
    fal_h1 time,
    lote1 integer,
    grupo1 char(1),
    inscricao1 integer,
    registro1 varchar(100),
    id_dep1 integer,
    socio1 varchar(80),
    dependente1 varchar(80),
    parentesco1 varchar(30),
    falec2 varchar(60),
    nasc2 date,
    resid2 varchar(100),
    num2 varchar(5),
    bairro2 varchar(40),
    cidade2 varchar(40),
    uf2 varchar(2),
    cep2 varchar(10),
    cemiterio2 varchar(100),
    sep_d2 date,
    sep_h2 time,
    fal_l2 varchar(100),
    fal_d2 date,
    fal_h2 time,
    lote2 integer,
    grupo2 char(1),
    inscricao2 integer,
    registro2 varchar(100),
    id_dep2 integer,
    socio2 varchar(80),
    dependente2 varchar(80),
    parentesco2 varchar(30),
    falec3 varchar(60),
    nasc3 date,
    resid3 varchar(100),
    num3 varchar(5),
    bairro3 varchar(40),
    cidade3 varchar(40),
    uf3 varchar(2),
    cep3 varchar(10),
    cemiterio3 varchar(100),
    sep_d3 date,
    sep_h3 time,
    fal_l3 varchar(100),
    fal_d3 date,
    fal_h3 time,
    lote3 integer,
    grupo3 char(1),
    inscricao3 integer,
    registro3 varchar(100),
    id_dep3 integer,
    socio3 varchar(80),
    dependente3 varchar(80),
    parentesco3 varchar(30),
    falec4 varchar(60),
    nasc4 date,
    resid4 varchar(100),
    num4 varchar(5),
    bairro4 varchar(40),
    cidade4 varchar(40),
    uf4 varchar(2),
    cep4 varchar(10),
    cemiterio4 varchar(100),
    sep_d4 date,
    sep_h4 time,
    fal_l4 varchar(100),
    fal_d4 date,
    fal_h4 time,
    lote4 integer,
    grupo4 char(1),
    inscricao4 integer,
    registro4 varchar(100),
    id_dep4 integer,
    socio4 varchar(80),
    dependente4 varchar(80),
    parentesco4 varchar(30),
    falec5 varchar(60),
    nasc5 date,
    resid5 varchar(100),
    num5 varchar(5),
    bairro5 varchar(40),
    cidade5 varchar(40),
    uf5 varchar(2),
    cep5 varchar(10),
    cemiterio5 varchar(100),
    sep_d5 date,
    sep_h5 time,
    fal_l5 varchar(100),
    fal_d5 date,
    fal_h5 time,
    lote5 integer,
    grupo5 char(1),
    inscricao5 integer,
    registro5 varchar(100),
    id_dep5 integer,
    socio5 varchar(80),
    dependente5 varchar(80),
    parentesco5 varchar(30),
    falec6 varchar(60),
    nasc6 date,
    resid6 varchar(100),
    num6 varchar(5),
    bairro6 varchar(40),
    cidade6 varchar(40),
    uf6 varchar(2),
    cep6 varchar(10),
    cemiterio6 varchar(100),
    sep_d6 date,
    sep_h6 time,
    fal_l6 varchar(100),
    fal_d6 date,
    fal_h6 time,
    lote6 integer,
    grupo6 char(1),
    inscricao6 integer,
    registro6 varchar(100),
    id_dep6 integer,
    socio6 varchar(80),
    dependente6 varchar(80),
    parentesco6 varchar(30),
    falec7 varchar(60),
    nasc7 date,
    resid7 varchar(100),
    num7 varchar(5),
    bairro7 varchar(40),
    cidade7 varchar(40),
    uf7 varchar(2),
    cep7 varchar(10),
    cemiterio7 varchar(100),
    sep_d7 date,
    sep_h7 time,
    fal_l7 varchar(100),
    fal_d7 date,
    fal_h7 time,
    lote7 integer,
    grupo7 char(1),
    inscricao7 integer,
    registro7 varchar(100),
    id_dep7 integer,
    socio7 varchar(80),
    dependente7 varchar(80),
    parentesco7 varchar(30))
as
declare variable i integer;
declare variable falecido varchar(100);
declare variable d_nasc date;
declare variable resid varchar(100);
declare variable numero varchar(5);
declare variable bair varchar(40);
declare variable cidade varchar(40);
declare variable uf varchar(2);
declare variable cep varchar(10);
declare variable cemiterio varchar(100);
declare variable d_sep date;
declare variable h_sep time;
declare variable l_fal varchar(100);
declare variable d_fal date;
declare variable h_fal time;
declare variable lote integer;
declare variable gp char(1);
declare variable inscricao integer;
declare variable registro varchar(100);
declare variable id_dep integer;
declare variable id_soc integer;
declare variable socio varchar(80);
declare variable dep varchar(80);
declare variable ptco varchar(30);
declare variable gp_lt char(1);
BEGIN

   I=1;

/* ISSO BUSCA O NOME DO FILHO E JOGA NA VARIAVEL NOME_FILHO */

   FOR SELECT ob.FALECIDO, ob.DATA_NASC, ob.ENDERECO_FAL 
             ,ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.CEP
             ,ob.CEMITERIO, ob.DATA_SEP, ob.HORA_SEP, ob.LOCAL_FAL
             ,ob.DATA_FAL, ob.HORA_FAL, ob.LOTE, ob.GRUPO, ob.INSCRICAO
             ,ob.REGISTRO, ob.ID_DEP, sc.NOME_SOCIO, dp.NOME_DEP, pr.DESCRICAO
             , ob.ID_SOCIO, ob.GRUPO_LOTE
  FROM OBITOS ob LEFT OUTER JOIN SOCIOS sc ON sc.ID_SOCIO = ob.ID_SOCIO 
  LEFT OUTER JOIN DEPENDENTE dp ON dp.ID_DEP = ob.ID_DEP 
  LEFT OUTER JOIN PARENTESCO pr ON pr.ID_PAR = dp.ID_PAR 
  WHERE ob.LOTE= :PLOTE AND ob.GRUPO_LOTE= :PGRUPO
  INTO :FALECIDO,:D_NASC,:RESID,:NUMERO,:BAIR,:CIDADE,:UF,:CEP,:CEMITERIO,
       :D_SEP,:H_SEP,:L_FAL,:D_FAL,:H_FAL,:LOTE,:GP,:INSCRICAO,:REGISTRO,
       :ID_DEP,:SOCIO,:DEP,:PTCO, :ID_SOC, :gp_lt
  DO BEGIN

       IF (I = 1) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO FROM SOCIOS_CANCELADOS sc
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO_CANCEL
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO;
         end
         FALEC1 = FALECIDO;
         NASC1  = D_NASC;
         RESID1 = RESID;
         NUM1   = NUMERO;
         BAIRRO1 = BAIR;
         CIDADE1 = CIDADE;
         UF1     = UF;
         CEP1   = CEP;
         CEMITERIO1 = CEMITERIO;
         SEP_D1   = D_SEP;
         SEP_H1   = H_SEP;
         FAL_L1  = L_FAL;
         FAL_D1  = D_FAL;
         FAL_H1  = H_FAL;
         LOTE1  = LOTE;
         GRUPO1 = GP;
         INSCRICAO1 = INSCRICAO;
         REGISTRO1 = REGISTRO;
         ID_DEP1 = ID_DEP;
         SOCIO1 = SOCIO;
         DEPENDENTE1 = DEP;
         PARENTESCO1 = PTCO;
       END

       IF (I = 2) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;
         end
         FALEC2 = FALECIDO;
         NASC2  = D_NASC;
         RESID2 = RESID;
         NUM2   = NUMERO;
         BAIRRO2 = BAIR;
         CIDADE2 = CIDADE;
         UF2     = UF;
         CEP2   = CEP;
         CEMITERIO2 = CEMITERIO;
         SEP_D2   = D_SEP;
         SEP_H2   = H_SEP;
         FAL_L2  = L_FAL;
         FAL_D2  = D_FAL;
         FAL_H2  = H_FAL;
         LOTE2  = LOTE;
         GRUPO2 = GP;
         INSCRICAO2 = INSCRICAO;
         REGISTRO2 = REGISTRO;
         ID_DEP2 = ID_DEP;
         SOCIO2 = SOCIO;
         DEPENDENTE2 = DEP;
         PARENTESCO2 = PTCO;
       END


       IF (I = 3) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;
         end
         FALEC3 = FALECIDO;
         NASC3  = D_NASC;
         RESID3 = RESID;
         NUM3   = NUMERO;
         BAIRRO3 = BAIR;
         CIDADE3 = CIDADE;
         UF3     = UF;
         CEP3   = CEP;
         CEMITERIO3 = CEMITERIO;
         SEP_D3   = D_SEP;
         SEP_H3   = H_SEP;
         FAL_L3  = L_FAL;
         FAL_D3  = D_FAL;
         FAL_H3  = H_FAL;
         LOTE3  = LOTE;
         GRUPO3 = GP;
         INSCRICAO3 = INSCRICAO;
         REGISTRO3 = REGISTRO;
         ID_DEP3 = ID_DEP;
         SOCIO3 = SOCIO;
         DEPENDENTE3 = DEP;
         PARENTESCO3 = PTCO;
       END



       IF (I = 4) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;
         end
         FALEC4 = FALECIDO;
         NASC4  = D_NASC;
         RESID4 = RESID;
         NUM4   = NUMERO;
         BAIRRO4 = BAIR;
         CIDADE4 = CIDADE;
         UF4     = UF;
         CEP4   = CEP;
         CEMITERIO4 = CEMITERIO;
         SEP_D4   = D_SEP;
         SEP_H4   = H_SEP;
         FAL_L4  = L_FAL;
         FAL_D4  = D_FAL;
         FAL_H4  = H_FAL;
         LOTE4  = LOTE;
         GRUPO4 = GP;
         INSCRICAO4 = INSCRICAO;
         REGISTRO4 = REGISTRO;
         ID_DEP4 = ID_DEP;
         SOCIO4 = SOCIO;
         DEPENDENTE4 = DEP;
         PARENTESCO4 = PTCO;
       END


       IF (I = 5) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;
         end
         FALEC5 = FALECIDO;
         NASC5  = D_NASC;
         RESID5 = RESID;
         NUM5   = NUMERO;
         BAIRRO5 = BAIR;
         CIDADE5 = CIDADE;
         UF5     = UF;
         CEP5   = CEP;
         CEMITERIO5 = CEMITERIO;
         SEP_D5   = D_SEP;
         SEP_H5   = H_SEP;
         FAL_L5  = L_FAL;
         FAL_D5  = D_FAL;
         FAL_H5  = H_FAL;
         LOTE5  = LOTE;
         GRUPO5 = GP;
         INSCRICAO5 = INSCRICAO;
         REGISTRO5 = REGISTRO;
         ID_DEP5 = ID_DEP;
         SOCIO5 = SOCIO;
         DEPENDENTE5 = DEP;
         PARENTESCO5 = PTCO;
       END


       IF (I = 6) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;             
         end
         FALEC6 = FALECIDO;
         NASC6  = D_NASC;
         RESID6 = RESID;
         NUM6   = NUMERO;
         BAIRRO6 = BAIR;
         CIDADE6 = CIDADE;
         UF6     = UF;
         CEP6   = CEP;
         CEMITERIO6 = CEMITERIO;
         SEP_D6   = D_SEP;
         SEP_H6   = H_SEP;
         FAL_L6  = L_FAL;
         FAL_D6  = D_FAL;
         FAL_H6  = H_FAL;
         LOTE6  = LOTE;
         GRUPO6 = GP;
         INSCRICAO6 = INSCRICAO;
         REGISTRO6 = REGISTRO;
         ID_DEP6 = ID_DEP;
         SOCIO6 = SOCIO;
         DEPENDENTE6 = DEP;
         PARENTESCO6 = PTCO;
       END


       IF (I = 7) THEN
       BEGIN
         IF (SOCIO is null) then
         BEGIN
              SELECT sc.NOME_SOCIO,   ende.ENDERECO, bai.BAIRRO       
                FROM SOCIOS_CANCELADOS sc 
                left outer join ENDERECO_DESL ende on ende.ID_SOCIO_DESL = sc.ID_SOCIO 
                left outer join BAIRRO bai on bai.ID_BAIRRO = ende.ID_BAIRRO 
                WHERE  sc.ID_SOCIO_CANCEL = :ID_SOC
             INTO :SOCIO ,:RESID,:BAIR;
             
         end
         FALEC7 = FALECIDO;
         NASC7  = D_NASC;
         RESID7 = RESID;
         NUM7   = NUMERO;
         BAIRRO7 = BAIR;
         CIDADE7 = CIDADE;
         UF7     = UF;
         CEP7   = CEP;
         CEMITERIO7 = CEMITERIO;
         SEP_D7   = D_SEP;
         SEP_H7   = H_SEP;
         FAL_L7  = L_FAL;
         FAL_D7  = D_FAL;
         FAL_H7  = H_FAL;
         LOTE7  = LOTE;
         GRUPO7 = GP;
         INSCRICAO7 = INSCRICAO;
         REGISTRO7 = REGISTRO;
         ID_DEP7 = ID_DEP;
         SOCIO7 = SOCIO;
         DEPENDENTE7 = DEP;
         PARENTESCO7 = PTCO;
       END


         I = I + 1;
    END
    SUSPEND;

END
