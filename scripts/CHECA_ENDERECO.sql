CREATE or alter PROCEDURE CHECA_ENDERECO (
    id_s integer)
returns (
    id_socio integer,
    tp0 integer,
    tp1 integer)
as
declare variable nome_socio varchar(80);
declare variable n_inscricao integer;
declare variable grupo char(1);
declare variable tipoend smallint;
declare variable endereco varchar(80);
BEGIN

  FOR
    select socios.id_socio, socios.nome_socio, socios.n_inscricao, socios.grupo, endereco.tipoend,  endereco.endereco
      from socios
      inner join endereco on (socios.id_socio = endereco.id_socio)
    where  socios.id_socio  =  :ID_S
    INTO :ID_SOCIO,:NOME_SOCIO,:N_INSCRICAO,:GRUPO,:TIPOEND,:ENDERECO
  DO
  BEGIN

     select count(tipoend) from endereco  where id_socio = :ID_S and TIPOEND = 1
     into :tp1;
     if(tp0 is null)then
     tp0 = 0;

     if (tP1 = 1 and  :TIPOEND = 1 ) then
     SUSPEND;

     select count(tipoend) from endereco  where id_socio = :ID_S and TIPOEND = 0
     into :tp0;
     if (tP0 = 1 and :TIPOEND = 0)  then
     SUSPEND;

  END
END
