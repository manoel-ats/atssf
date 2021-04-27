CREATE OR ALTER PROCEDURE CARNE_IMPR_TODOS (
    data1 date,
    data2 date)
returns (
    parcelas integer,
    status varchar(30),
    soma double precision,
    nome_socio varchar(80),
    soc integer)
as
BEGIN
  FOR
    select distinct(rec.ID_SOCIO)

    from recebimentos rec 
    left outer join SOCIOS soc on
    soc.ID_SOCIO = rec.ID_SOCIO 
    where (recebimentos.emissao between :data1 and :data2)
   -- and  rec.ID_SOCIO = 213

    INTO :SOC
  DO
  BEGIN
    --SUSPEND;


  FOR
    select  count(rec.PARCELA)
    
             ,rec.STATUS
             ,sum(rec.VALOR_RECEBER)
    
             ,soc.NOME_SOCIO 
    
    from recebimentos rec 
    left outer join SOCIOS soc on
    soc.ID_SOCIO = rec.ID_SOCIO 
    where (recebimentos.emissao between :data1 and :data2)
    and
   -- and rec.ID_SOCIO = :soc
   ((rec.ID_SOCIO = :soc) or (:soc = 9999999))
    
    group by rec.STATUS
    
    
             ,soc.NOME_SOCIO
    INTO :PARCELAS,
         :STATUS,
         :SOMA,
         :NOME_SOCIO
  DO
  BEGIN
    SUSPEND;
  END
  END
END
