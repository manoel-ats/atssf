CREATE OR ALTER PROCEDURE EMITIDOS_ANO1 (
    dataini date,
    datafin date)
returns (
    valor_receber double precision,
    status varchar(30),
    da date,
    dat date)
as
declare variable mes integer;
BEGIN
  mes = 0 ;
  while(mes < 13) do begin
    mes = mes + 1;
    da = :dataini ;
    dat = :datafin ;
  --  dataini = udf_IncMonth(:dataini , -1);
  --  datafin = udf_IncMonth(:datafin , -1);

    if (MES = 1 ) then
    begin
    --  dataini = udf_IncMonth(:dataini , -1);
    --  datafin = udf_IncMonth(:datafin , -1);
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



    end
    if (MES = 2  ) then
    begin
      dataini = udf_IncMonth(:dataini , -1);
      datafin = udf_IncMonth(:datafin , -1);

    end
    if (MES = 3 ) then
    begin

    end
    if (MES = 4 ) then
    begin

    end
    if (MES = 5 ) then
    begin

    end
    if (MES = 6  )  then
    begin

    end
    if (MES = 7 ) then
    begin

    end
    if (MES = 8 ) then
    begin

    end
    if (MES = 9 ) then
    begin

    end
    if (MES = 10 ) then
    begin

    end
    if (MES = 11 ) then
    begin

    end
    if (MES = 12 ) then
    begin

    end
    if (MES = 12 ) then
     begin

    end







  END

END
