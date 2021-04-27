CREATE OR ALTER PROCEDURE EMITIDOS_U (
    dataini date,
    datafin date)
returns (
    valor_receber double precision,
    status varchar(30))
as
BEGIN

  FOR

    select sum(
        recebimentos.valor_receber ) ,
        recebimentos.status--,
     --   cobranca.nome
    from recebimentos
 --   left outer join cobranca on cobranca.id_cob = recebimentos.cobrador
    where ((recebimentos.emissao between :dataini and :datafin) and ( recebimentos.vencimento between :dataini and :datafin )) /*and recebimentos.situacao = 'Ativo'  */

   group by
        recebimentos.status--,
     --   cobranca.nome
    INTO :VALOR_RECEBER,
         :status--,
      --   :COBRADOR
  DO
  BEGIN

    SUSPEND;
  END


END
