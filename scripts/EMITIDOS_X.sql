CREATE OR ALTER PROCEDURE EMITIDOS_X (
    dataini date,
    datafin date)
returns (
    valor double precision,
    status varchar(30),
    situacao varchar(30),
    vencimento date,
    meses varchar(30),
    nmes integer)
as
declare variable mes integer;
declare variable primeiro date;
BEGIN
 /* mes = 0 ; */
 for
 select first 1 recebimentos.vencimento from recebimentos
  where  (recebimentos.emissao between :dataini and :datafin)
  ORDER BY recebimentos.vencimento asc
     into
     :primeiro

  do begin

    /*supend; */
 end

  mes = udf_Month (:primeiro);

/*  while(mes < 3) do begin */
 /*   mes = mes;  /*   mes + 1; * / */

    if (MES > 0 ) then
    begin

  FOR

    select sum(
        recebimentos.valor_receber),
        recebimentos.status,
        recebimentos.situacao,
        recebimentos.vencimento
    from recebimentos
    where (recebimentos.emissao between :dataini and :datafin )
    group by
        recebimentos.vencimento,
        recebimentos.status,
        recebimentos.situacao

    INTO :VALOR,
         :STATUS,
         :SITUACAO ,
         :VENCIMENTO
  DO
  BEGIN
      meses =   udf_MonthName (:VENCIMENTO);
      nmes = udf_Month (:VENCIMENTO);
    SUSPEND;
    nmes = null ;
    valor = null;
    status = null ;
   /* meses = null; */
  END



/*


    end
    if (MES = 2  ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);


    end

    if (MES = 3 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 4 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 5 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 6  )  then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 7 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 8 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 9 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 10 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 11 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    if (MES = 12 ) then
    begin
      meses =   udf_MonthName (:dataini);
      nmes = udf_Month (:dataini);

    end
    */
/*
  FOR

    select sum(
        recebimentos.valor_receber),
        recebimentos.status,
        recebimentos.vencimento
    from recebimentos
    where (recebimentos.emissao between :dataini and :datafin )
    group by
        recebimentos.vencimento,
        recebimentos.status

    INTO :VALOR,
         :STATUS,
         :VENCIMENTO
  DO
  BEGIN
    SUSPEND;
    nmes = mes ;
    valor = null;
    status = null ;
   -- meses = null;
  END


 */






  END

END
