CREATE OR ALTER PROCEDURE EMITIDOS_X_TIPOS (
    dataini date,
    datafin date)
returns (
    valor double precision,
    titulo integer,
    status varchar(30),
    situacao varchar(30),
    vencimento date,
    meses varchar(30),
    nmes integer,
    cobrador varchar(60),
    nomearquivo varchar(60))
as
declare variable mes integer;
declare variable primeiro date;
BEGIN

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



    if (MES > 0 ) then
    begin

  FOR

    select sum(
        recebimentos.valor_receber),
        recebimentos.titulo,
        recebimentos.status,
        recebimentos.situacao,
        recebimentos.vencimento,
        cobranca.nome,
        recebimentos.nomearquivoretorno
    from recebimentos
    left outer join cobranca co on co.id_cob = recebimentos.cobrador
    where (recebimentos.emissao between :dataini and :datafin )

    group by
        recebimentos.vencimento,
        recebimentos.titulo,
        recebimentos.status,
        recebimentos.situacao,
        cobranca.nome,
        recebimentos.nomearquivoretorno

    INTO :VALOR,
         :TITULO,
         :STATUS,
         :SITUACAO ,
         :VENCIMENTO ,
         :COBRADOR,
         :NOMEARQUIVO
  DO
  BEGIN
      meses =   udf_MonthName (:VENCIMENTO);
      nmes = udf_Month (:VENCIMENTO);
    SUSPEND;
    nmes = null ;
    valor = null;
    status = null ;

  END


  END

END
