CREATE OR ALTER PROCEDURE CHECA_END_DUPLO 
returns (
    id_socio integer,
    nome_socio varchar(80),
    n_inscricao integer,
    grupo char(1),
    tipoend smallint,
    endereco varchar(80),
    tipo varchar(10))
as
declare variable tp integer;
declare variable inscricao integer;
BEGIN
 for
  select 
        socios.id_socio

    from socios       where

          (socios.situacao = 'Ativo') /*and socios.id_socio = 30 */

    INTO inscricao
  DO
  BEGIN

  FOR
    select socios.id_socio, socios.nome_socio, socios.n_inscricao, socios.grupo, endereco.tipoend,  endereco.endereco
      from socios
      inner join endereco on (socios.id_socio = endereco.id_socio)
    where  socios.situacao = 'Ativo'   and socios.id_socio  =  :inscricao
    INTO :ID_SOCIO,:NOME_SOCIO,:N_INSCRICAO,:GRUPO,:TIPOEND,:ENDERECO
  DO
  BEGIN

     select count(tipoend) from endereco  where id_socio = :inscricao and tipoend = 0
     into :tp;
     if( tipoend = 0) then
     tipo = 'Principal';

     if (tp = 2 ) then

       SUSPEND;

   select count(tipoend) from endereco  where id_socio = :inscricao and tipoend = 1
     into :tp;
        if( tipoend = 1) then
     tipo = 'Cobrança';

      if (tp = 2 ) then
       SUSPEND;

  END
 end
END
