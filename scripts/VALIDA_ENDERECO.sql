CREATE OR ALTER PROCEDURE VALIDA_ENDERECO 
returns (
    id_socio integer,
    nome_socio varchar(80),
    n_inscricao integer,
    grupo char(1),
    tipoend smallint,
    endereco varchar(80))
as
declare variable TP integer ;
BEGIN

  FOR
    select socios.id_socio, socios.nome_socio, socios.n_inscricao, socios.grupo, endereco.tipoend,  endereco.endereco
      from socios
      inner join endereco on (socios.id_socio = endereco.id_socio)
    where  socios.situacao = 'Ativo'   and  socios.plano = 'TRIMESTRAL ' --and socios.id_socio  =  267
    INTO :ID_SOCIO,:NOME_SOCIO,:N_INSCRICAO,:GRUPO,:TIPOEND,:ENDERECO
  DO
  BEGIN

     select count(tipoend) from endereco  where id_socio = :id_socio
     into :tp;

     if (tP < 2 and  :TIPOEND = 1 ) then
       SUSPEND;

  END
END
