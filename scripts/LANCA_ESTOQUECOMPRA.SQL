CREATE OR ALTER trigger lanca_estoquecompra for compra
active before insert position 0
AS
declare variable codmov integer;
declare variable codpro integer;
declare variable qtde integer;
declare variable vlr double precision;
declare variable nomecli varchar(100);
declare variable nomefor varchar(100);
begin
    /* se codigo do cliente não for nulo é venda - retiro qtde do estoque*/
    select ID_MOVIMENTO from movimento where ID_MOVIMENTO = new.ID_MOVIMENTO
    into :codmov;
    if (codmov is not null) then
    begin
      for select ID_PRODUTO, QUANTIDADE from movimentodetalhe where ID_MOVIMENTO = :codmov
      into :codpro, :qtde
      do begin
         update produtos set ESTOQUE = (ESTOQUE + :qtde) where ID_PRODUTO = :codpro;
      end
    end
end
