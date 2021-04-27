CREATE PROCEDURE DEP_PARA_SOC 
returns (
    id_socio integer,
    valor_dep char(1),
    status char(1),
    plano varchar(20))
as
BEGIN
  FOR
    select 
        dependente.id_socio,
        dependente.valor_dep,
        socios.status,
        socios.plano
    from socios
       inner join dependente on (socios.id_socio = dependente.id_socio)
    where 
       (
       (dependente.valor_dep = 'S')
       and
       (dependente.id_par = 0)
       and
       (socios.status = 'A' )
       and
       (socios.plano = 'MENSAL' )
       )
    INTO :ID_SOCIO,
         :VALOR_DEP,
         :STATUS,
         :PLANO
  DO
  BEGIN
   if(VALOR_DEP = 'S') then
   begin
   update socios  set socios.PRAZO_PG = 1
      where socios.id_socio = :ID_SOCIO and socios.plano = :PLANO and socios.status =:STATUS ;
   end
  END
END
