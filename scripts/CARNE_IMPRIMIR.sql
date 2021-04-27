CREATE OR ALTER PROCEDURE CARNE_IMPRIMIR (
    gr char(1),
    data1 date,
    data2 date,
    insc integer,
    insc1 integer)
returns (
    parcelas integer,
    status varchar(30),
    soma double precision,
    nome_socio varchar(80),
    soc integer,
    grupo char(1),
    n_inscricao integer)
as
BEGIN
  FOR
    select distinct(rec.ID_SOCIO)

    from recebimentos rec 
    left outer join SOCIOS soc on
    soc.ID_SOCIO = rec.ID_SOCIO 
    where (recebimentos.emissao between :data1 and :data2)
      and  soc.N_INSCRICAO between :insc and :insc1
      and  soc.grupo = :gr

   /* and  rec.ID_SOCIO = 213 */

    INTO :SOC
  DO
  BEGIN
    /*SUSPEND; */


  FOR
    select  count(rec.EMISSAO)
                ,rec.STATUS
                ,sum(rec.VALOR_RECEBER)
                ,soc.NOME_SOCIO
                ,soc.grupo
                ,soc.N_INSCRICAO
    from recebimentos rec 
    left outer join SOCIOS soc on  soc.ID_SOCIO = rec.ID_SOCIO
              where (recebimentos.emissao between :data1 and :data2)
                and rec.ID_SOCIO = :soc
           group by soc.N_INSCRICAO,soc.grupo ,rec.STATUS ,soc.NOME_SOCIO
           order by  soc.N_INSCRICAO
   INTO :PARCELAS,
         :STATUS,
         :SOMA,
         :NOME_SOCIO,
         :GRUPO,
         :N_INSCRICAO
  DO
  BEGIN
    SUSPEND;
  END
  END
END
