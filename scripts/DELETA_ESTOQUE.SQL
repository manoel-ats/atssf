CREATE OR ALTER trigger deleta_estoque for venda
active after delete position 0
AS
declare variable codmov integer;
declare variable codpro integer;
declare variable qtde integer;
declare variable qtdeest integer;
declare variable estatual integer;
begin
  qtde = 0;
  qtdeest = 0;
  estatual = 0;
  /* se codigo do cliente não for nulo é venda - retiro qtde ao estoque*/
     select ID_MOVIMENTO from movimento where ID_MOVIMENTO = old.id_movimento
     into :codmov;
     if (codmov is not null) then
     begin
        for select ID_PRODUTO, QUANTIDADE from movimentodetalhe where ID_MOVIMENTO = :codmov
        into :codpro, :qtde
        do begin
           qtdeest = 0;
           estatual = 0;
           select ESTOQUE from produtos where ID_PRODUTO = :codpro
           into :qtdeest;
           estatual = (qtdeest + qtde);
           update produtos set ESTOQUE = :estatual where ID_PRODUTO = :codpro;
        end
        /*delete from fluxo_caixa where codmov_final = old.codmov_final;*/
     end

end
