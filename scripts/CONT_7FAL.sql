CREATE OR ALTER PROCEDURE CONT_7FAL (
    venc date)
returns (
    id_socio integer,
    valor_nf double precision,
    tot_pendente integer)
as
BEGIN
  FOR
    select 
        socios.id_socio
    from socios
         where socios.plano = '7 FALECIMENTO'
           and socios.situacao = 'Ativo'
         /*  and socios.id_socio = 3744 */
    INTO :ID_SOCIO
  DO
  BEGIN
  FOR SELECT sum(VALOR_NF)

    FROM recebimentos RC

       WHERE (rc.STATUS = 'Pendente')
        and (RC.situacao = 'Ativo' )
        and rc.id_socio = :ID_SOCIO
        and VENCIMENTO <= :venc
        into :valor_nf
     do
     begin
        SELECT COUNT(STATUS) FROM RECEBIMENTOS WHERE ID_SOCIO = :id_socio
        and STATUS = 'Pendente' and VENCIMENTO <= :venc  and situacao = 'Ativo'
        INTO :TOT_PENDENTE;

    if(:valor_nf > 0 ) then
    SUSPEND;

  end

  END
END
