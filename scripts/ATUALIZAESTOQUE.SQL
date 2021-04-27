CREATE OR ALTER trigger atualizaestoque for movimentodetalhe
active before update position 0
AS
declare variable vNatureza varchar(10);
begin
    /* se codigo do cliente não for nulo é venda - retiro qtde do estoque*/
    if (new.id_produto <> old.id_produto) then
    begin
       select natureza from MOVIMENTO where ID_MOVIMENTO = new.id_movimento
       into :vNatureza;
       if (vnatureza = 'Vendas') then
       begin
          /* corrijo o estoque do produto anterior e do atual */
          update produtos set ESTOQUE = (ESTOQUE + old.quantidade) where ID_PRODUTO = old.id_produto;
          update produtos set ESTOQUE = (ESTOQUE - old.quantidade) where ID_PRODUTO = new.id_produto;
       end
       else
       begin
          update produtos set ESTOQUE = (ESTOQUE - old.quantidade) where ID_PRODUTO = old.id_produto;
          update produtos set ESTOQUE = (ESTOQUE + old.quantidade) where ID_PRODUTO = new.id_produto;
       end
    end
    else
    begin
      if (new.quantidade <> old.quantidade) then
      begin
           if (vnatureza = 'Vendas') then
           begin
              /* corrijo o estoque do produto anterior e do atual */
              update produtos set ESTOQUE = (ESTOQUE + old.quantidade) where ID_PRODUTO = old.id_produto;
              update produtos set ESTOQUE = (ESTOQUE - old.quantidade) where ID_PRODUTO = new.id_produto;
           end
           else
           begin
              update produtos set ESTOQUE = (ESTOQUE - old.quantidade) where ID_PRODUTO = old.id_produto;
              update produtos set ESTOQUE = (ESTOQUE + old.quantidade) where ID_PRODUTO = new.id_produto;
           end
      end
    end
end
