CREATE PROCEDURE CHECA_ENDERECO_1 (
    id_s integer)
returns (
    id_socio integer,
    nome_socio varchar(80),
    n_inscricao integer,
    grupo char(1),
    tipoend smallint,
    endereco varchar(80))
as
declare variable tp integer;
BEGIN

  FOR
    select socios.id_socio, socios.nome_socio, socios.n_inscricao, socios.grupo, endereco.tipoend,  endereco.endereco
      from socios
      inner join endereco on (socios.id_socio = endereco.id_socio)
    where ((socios.situacao = 'Ativo') or (socios.situacao = 'Outros'))    and socios.id_socio  =  :ID_S
    INTO :ID_SOCIO,:NOME_SOCIO,:N_INSCRICAO,:GRUPO,:TIPOEND,:ENDERECO
  DO
  BEGIN
     select count(tipoend) from endereco  where id_socio = :ID_S and TIPOEND = 1
     into :tp;
     if (tp = 2 and :TIPOEND = 1)  then
     SUSPEND;

  END
END
