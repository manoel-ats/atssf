CREATE OR ALTER PROCEDURE ENDERECO_NULL 
returns (
    endereco varchar(80),
    nome_socio varchar(80),
    n_inscricao integer,
    grupo char(1),
    plano varchar(20))
as
BEGIN
  FOR
    select 
        udf_len (e.endereco) ,
        s.nome_socio,
        s.n_inscricao,
        s.grupo,
        s.plano
    from endereco e
       inner join socios s on (e.id_socio = s.id_socio)
    where 
       (
          (s.situacao = 'Ativo')
          and
          (cast(udf_len (e.endereco) as integer ) > 40)
       )
    order by 1 desc
    INTO :endereco,
         :NOME_SOCIO,
         :N_INSCRICAO,
         :GRUPO,
         :PLANO
  DO
  BEGIN
    SUSPEND;
  END
END
