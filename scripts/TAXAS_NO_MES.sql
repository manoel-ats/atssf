CREATE OR ALTER PROCEDURE TAXAS_NO_MES (
    codsocio integer,
    vencimento date)
returns (
    udf_month smallint,
    grup char(1),
    insc integer,
    nome varchar(60),
    venc date)
as
BEGIN
  FOR
    select 
          udf_month(recebimentos.vencimento) ,socios.grupo , socios.n_inscricao , socios.nome_socio ,recebimentos.vencimento
    from socios
       inner join recebimentos on (socios.id_socio = recebimentos.id_socio)
    where 
       (
          ((recebimentos.id_socio = :codsocio)or(:codsocio = 9999999))
    
       and 
          (
             (recebimentos.status = 'Pendente')
          or 
             (recebimentos.status = 'Pago')
          or 
             (recebimentos.status = 'Renegociado')
          or 
             (recebimentos.status = 'Acordo')
          )
       and
           udf_month(recebimentos.VENCIMENTO) = udf_month(:vencimento)
       and 
           udf_year(recebimentos.VENCIMENTO) = udf_year(:vencimento)
       )
     order  by socios.grupo , socios.n_inscricao , socios.nome_socio
    INTO :UDF_MONTH , :grup ,:insc , :nome , venc
  DO
  BEGIN
        if((UDF_MONTH is not null) and (:insc is not null)) then

    SUSPEND;
  END
END
