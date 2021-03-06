CREATE PROCEDURE RECIBO_EXAMES (
    nome varchar(60),
    data date,
    numeros varchar(20))
returns (
    valor double precision,
    tipoexame varchar(100),
    nomecliente varchar(50),
    numero varchar(20),
    rg varchar(24),
    formapgto varchar(30))
as
declare variable nprod integer;
BEGIN
  NPROD = 0;
  FOR

    select 
        labexame.valor,
        labexame.tipoexame,
        labexame.numero,
        clientes.nomecliente,
        clientes.cnpj,
        labexame.formapgto
    from clientes
       inner join labexame on (clientes.codcliente = labexame.codcliente)
       /*inner join labexameresultado on (labexame.codexame = labexameresultado.codexame) */
       where clientes.nomecliente = :nome and labexame.datasolicitacao = :data and labexame.situacao <> 'CANCELADO'
       and labexame.numero = :numeros  and labexame.devolucao is null
    INTO :VALOR,
         :TIPOEXAME,
         :NUMERO,
         :NOMECLIENTE,
         :RG,
         :formapgto
  DO
  BEGIN
    NPROD = NPROD + 1;
    SUSPEND;
  END
  WHILE (NPROD < 21 ) do
          BEGIN
            /* imprimi linhas vazias */
            NPROD = NPROD + 1;
            VALOR = null;
            TIPOEXAME = null;
            NUMERO = null;

            SUSPEND;          
          END
END
