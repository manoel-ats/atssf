CREATE OR ALTER PROCEDURE SP_FLUXO_CAIXA (
    dta1 date,
    dta2 date,
    codgrupo integer)
returns (
    codprod integer,
    codmov integer,
    produto varchar(200),
    saldoiniacum double precision,
    entrada double precision,
    saida double precision,
    saldofimacum double precision,
    precocompra double precision,
    precovenda double precision,
    precounit double precision,
    precounitr double precision,
    valorcompra double precision,
    valorvenda double precision,
    valorestoque double precision,
    dtamov date,
    saldoacumulado double precision,
    valor_compra double precision,
    tipo varchar(2),
    status varchar(1),
    id_obito integer,
    reposicao integer)
as
declare variable cod_grupo integer = 0;
declare variable cod integer = 0;
declare variable entra double precision = 0;
declare variable sai double precision = 0;
declare variable saldoini double precision = 0;
declare variable qtdestoque double precision = 0;
BEGIN
       SALDOINIACUM = 0;
       SALDOfimACUM = 0;
       saldoacumulado = 0;
       VALOR_COMPRA = 0;
        FOR SELECT mov.id_movimento, movdet.id_produto, mov.datamovimento, pro.ID_FAMILIA , mov.tipo , movdet.status , mov.id_obito
        FROM MOVIMENTO mov inner join MOVIMENTODETALHE movdet
        on movdet.id_movimento = mov.id_movimento inner join produtos pro on
         pro.id_produto = movdet.id_produto
         where ((ID_FAMILIA = :CODGRUPO) or(:CODGRUPO = 9999999))    /* and ((cb.id_cob = :cob) or (:cob = 9999999)) */
         AND (mov.datamovimento BETWEEN :DTA1 AND :DTA2)
                group by movdet.id_produto, mov.id_movimento, mov.datamovimento
                , pro.id_familia  ,mov.tipo , movdet.status ,mov.id_obito
        INTO :codmov, :codprod,:dtamov, :cod_grupo , :tipo , :status , :id_obito
        DO BEGIN


         select sum(QUANTIDADE) from movimentodetalhe d
          inner join movimento m on m.id_movimento = d.id_movimento
           where m.natureza = 'Compra'  and d.id_produto = :codprod
            and m.datamovimento < :DTA1
         into :entra;

         select sum(QUANTIDADE) from movimentodetalhe d
          inner join movimento m on m.id_movimento = d.id_movimento
           where m.natureza = 'Vendas'  and d.id_produto = :codprod
            and m.datamovimento < :DTA1
         into :sai;

           if (entra is null) then
             entra = 0;

           if (sai is null) then
             sai = 0;

           saldoini = entra - sai;

         select sum(QUANTIDADE), sum(PRECO_REAL), sum(PRECO_REAL * quantidade) from movimentodetalhe d
          inner join movimento m on m.id_movimento = d.id_movimento
           where m.natureza = 'Compra'  and d.id_produto = :codprod
           and d.id_movimento = :codmov
         into :entrada,:precocompra,:valorcompra;

         select sum(QUANTIDADE), sum(PRECO_REAL), sum(PRECO_REAL * quantidade) from movimentodetalhe d
          inner join movimento m on m.id_movimento = d.id_movimento
           where m.natureza = 'Vendas'  and d.id_produto = :codprod
           and d.id_movimento = :codmov
         into :saida,:precovenda,valorvenda;

         if (precovenda is null) THEN
           precovenda = 0;
        if (precocompra is null) THEN
           precocompra = 0;
         if (valorvenda is null) THEN
           valorvenda = 0;
         if (valorcompra is null) THEN
           valorcompra = 0;

           if (entrada is null) then
             entrada = 0;

           if (saida is null) then
             saida = 0;

          select DESCRICAO, V_VENDA, VC_REAL, V_COMPRA ,REPOSICAO from produtos
          where ID_PRODUTO = :codprod
         into :produto,:PRECOUNIT,:PRECOUNITR,:VALOR_COMPRA ,:REPOSICAO;

         qtdestoque = saldoini + entrada - saida;

         if (codprod = cod) then
         begin
           saldoiniacum = saldofimacum;
           saldofimacum = (saldoiniacum + entrada - saida);
         end

         if (codprod <> cod) then
         begin
           saldoiniacum = saldoini;
           saldofimacum = qtdestoque;
         end
         valorestoque = PRECOUNITR * saldofimacum;
         saldoacumulado = saldoacumulado + valorvenda - valorcompra;
         cod = codprod;
       suspend;

    end

END
