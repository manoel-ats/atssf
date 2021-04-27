CREATE OR ALTER PROCEDURE DMED (
    dataini date,
    datafin date,
    codcli integer)
returns (
    razaosocial varchar(50),
    nomecliente varchar(50),
    produto varchar(300),
    nomefornecedor varchar(50),
    cnpj varchar(18),
    valor double precision,
    cpf varchar(11))
as
BEGIN
  FOR
    select
     cli.RAZAOSOCIAL,cli.nomecliente ,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj , sum(movd.VALTOTAL)as valor , rep.cpf
    
     from Venda ven 
          left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
          left outer join Clientes cli on cli.codcliente = movd.controle 
          left outer join Produtos prod on prod.CodProduto = movd.CodProduto
          left outer join Fornecedor forn on forn.CodFornecedor = movd.cod_comissao
          left outer join repr_fornecedor rep on rep.cod_fornecedor = forn.codfornecedor
    
          where
             (ven.codCliente = :codcli)  and (ven.CODCCUSTO = 51) and ven.datavencimento between :dataini and :datafin
    group by 
     cli.RAZAOSOCIAL, prod.PRODUTO ,cli.nomecliente ,forn.NOMEFORNECEDOR , forn.cnpj ,cpf
    INTO :RAZAOSOCIAL,
         :NOMECLIENTE,
         :PRODUTO,
         :NOMEFORNECEDOR,
         :CNPJ,
         :VALOR,
         :CPF
  DO
  BEGIN
    SUSPEND;
  END
END
