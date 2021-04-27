CREATE OR ALTER PROCEDURE EMITIDOS (
    dataini date,
    datafin date)
returns (
    valor_receber double precision,
    vencimento date,
    emissao date,
    status varchar(30),
    situacao varchar(30))
as
BEGIN

  FOR

    select sum(
        recebimentos.valor_receber ),
        recebimentos.vencimento,
        recebimentos.emissao,
        recebimentos.status ,
        recebimentos.situacao
    from recebimentos
    where (recebimentos.emissao between :dataini and :datafin) /*and recebimentos.situacao = 'Ativo'  */
    group by
        recebimentos.emissao,
        recebimentos.vencimento,
        recebimentos.status,
        recebimentos.situacao

    INTO :VALOR_RECEBER,
         :VENCIMENTO,
         :EMISSAO,
         :STATUS,
         :SITUACAO
  DO
  BEGIN

    SUSPEND;
  END


END
