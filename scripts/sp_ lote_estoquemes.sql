CREATE OR ALTER PROCEDURE LOTE_ESTOQUEMES (
    codigo integer)
returns (
    codlote integer,
    codproduto integer,
    lote varchar(60),
    datafabricacao date,
    datavencimento date,
    estoque double precision,
    preco double precision,
    notafiscal varchar(60),
    serieini integer,
    seriefim integer,
    produto varchar(300),
    codpro varchar(15))
as
declare variable varlote varchar(60);
BEGIN
  varlote = '';
  FOR
    select 
        1 codlote,lote.lote,lote.codproduto,lote.mesano datafabricacao,lote.mesano datavencimento,lote.saldoestoque estoque,
        lote.precocusto preco,lote.lote notafiscal,1 serieini,2 seriefim,prod.produto,prod.codpro
    from estoquemes lote
    inner join produtos prod on (lote.codproduto = prod.codproduto)
    where  lote.codproduto = :codigo
    /*(lote.codproduto = 15) */
   /* and   (lote.saldoestoque > 0.009) */
    order by lote.codproduto,lote.lote, lote.mesano desc
    INTO :CODLOTE,:LOTE,:CODPRODUTO,:DATAFABRICACAO,:DATAVENCIMENTO,:ESTOQUE,:PRECO,
         :NOTAFISCAL,:SERIEINI,:SERIEFIM,:PRODUTO,:CODPRO
  DO
  BEGIN
    if((varlote <> lote) and (estoque > 0.009 ))then
    SUSPEND;

    varlote = :lote;
  END
END
