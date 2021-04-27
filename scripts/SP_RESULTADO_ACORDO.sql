CREATE OR ALTER PROCEDURE SP_RESULTADO_ACORDO (
    dataini date,
    datafin date)
returns (
    id_socio integer,
    grupo char(1),
    n_inscricao integer,
    nome_socio varchar(80),
    "SUM" double precision,
    status varchar(30),
    desconto double precision,
    id_acordo integer,
    vencimento date,
    pendente double precision)
as
BEGIN
  FOR
    select 
        socios.id_socio,
        socios.grupo,
        socios.n_inscricao,
        socios.nome_socio,
        sum(recebimentos.valor_nf),
        recebimentos.status,
        recebimentos.id_acordo,
        recebimentos.desconto--,
       -- recebimentos.vencimento
    from recebimentos
       inner join socios on (recebimentos.id_socio = socios.id_socio)
    where 
  (
      (recebimentos.data_doc between :dataini and :datafin)
   -- and socios.id_socio = 4168
   )

       group by
           socios.id_socio,
           socios.n_inscricao,
           socios.grupo,
           socios.nome_socio,
           recebimentos.status,
           recebimentos.id_acordo,
           recebimentos.desconto--,
          -- recebimentos.vencimento
    INTO :ID_SOCIO,
         :GRUPO,
         :N_INSCRICAO,
         :NOME_SOCIO,
         :"SUM",
         :STATUS,
         :ID_ACORDO,
         :DESCONTO--,
        -- :VENCIMENTO
  DO
  BEGIN
    SUSPEND;
  END
  FOR
    select 
        socios.id_socio,
        socios.grupo,
        socios.n_inscricao,
        socios.nome_socio,
        sum(recebimentos.valor_nf),
        recebimentos.status,
        recebimentos.id_acordo,
        recebimentos.desconto,
        recebimentos.vencimento
    from recebimentos
       inner join socios on (recebimentos.id_socio = socios.id_socio)
    where 
  (

     --  socios.id_socio = 4168
      --and
      recebimentos.vencimento between :dataini and :datafin
      and recebimentos.status = 'Acordo'
   )

       group by
           socios.id_socio,
           socios.n_inscricao,
           socios.grupo,
           socios.nome_socio,
           recebimentos.status,
           recebimentos.id_acordo,
           recebimentos.desconto,
           recebimentos.vencimento
    INTO :ID_SOCIO,
         :GRUPO,
         :N_INSCRICAO,
         :NOME_SOCIO,
         :"SUM",
         :STATUS,
         :ID_ACORDO,
         :DESCONTO,
         :VENCIMENTO
  DO
  BEGIN
    SUSPEND;
  END
  FOR
    select 

        sum(recebimentos.valor_nf)

    from recebimentos
       inner join socios on (recebimentos.id_socio = socios.id_socio)
    where 
  (

      recebimentos.vencimento between :dataini and :datafin
      and recebimentos.status = 'Acordo'
   )


    INTO :PENDENTE
  DO
  BEGIN
    ID_SOCIO = null;
    GRUPO = null;
    N_INSCRICAO = null;
    NOME_SOCIO = null;
    "SUM" = null;
    STATUS = null;
    ID_ACORDO = null;
    DESCONTO = null;
    VENCIMENTO = null;
    SUSPEND;
  END

END
