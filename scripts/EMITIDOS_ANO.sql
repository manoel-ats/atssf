CREATE OR ALTER PROCEDURE EMITIDOS_ANO (
    dataini date,
    datafin date)
returns (
    valor_receber double precision,
    status varchar(30),
    valor_receber1 double precision,
    status1 varchar(30))
as
BEGIN

  FOR

    select sum(
        recebimentos.valor_receber),
        recebimentos.status
    from recebimentos
    where (recebimentos.emissao between :dataini and :datafin )
    group by
        recebimentos.status


    INTO :VALOR_RECEBER,
         :STATUS
  DO
  BEGIN
    SUSPEND;
    valor_receber = null;
    status = null ;
  END

   FOR

    select sum(
        recebimentos.valor_receber),
        recebimentos.status
    from recebimentos
    where (recebimentos.emissao between :dataini and :datafin )
    group by
        recebimentos.status


    INTO :VALOR_RECEBER1,
         :STATUS1
  DO
  BEGIN
    SUSPEND;
    valor_receber1 = null;
    status1 = null ;
  END



END
