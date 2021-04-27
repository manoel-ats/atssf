ALTER PROCEDURE  SP_PLANO_MENSAL( DIAPGTO                          INTEGER
                                , EMISSAO                          DATE
                                , VENCIMENTO                       DATE
                                , GEROUMES                         VARCHAR( 10 )
                                , PARCELAS                         INTEGER )
AS
declare variable codsocio integer;
declare variable valor double precision;
declare variable gp char(1);
declare variable codfaixa integer;
declare variable codcob integer;
declare variable meseano varchar(10);
declare variable i integer;
declare variable venc integer;
declare variable x integer;
declare variable val_dep double precision;
begin
  /* Procedure Text */
  /*
   SELECT cast(PARAMETRO1 as double precision) FROM PARAMETROS   where PARAMETRO = 'Valor Dep'

   into : val_dep;



   SELECT count (dep.COBRA_DEP) FROM SOCIOS soc
   inner join dependente dep on dep.ID_SOCIO = soc.ID_SOCIO
   where soc.PLANO = 'MENSAL' and  dep.COBRA_DEP = 'S'
   into : x ;

      if( x <> 0) then
      begin
        val_dep = (x * val_dep) ;
      end

      if( x = 0) then
      begin
        val_dep = 0 ;
      end
   */
  FOR SELECT ID_SOCIO, GRUPO, FAIXA, ID_COB  FROM SOCIOS
    where PLANO = 'MENSAL'  --and ID_SOCIO = 3460
    and (SITUACAO = 'Ativo') and (DIAPARAPGTO = :diapgto)
  INTO :codsocio, :gp, :codfaixa, :codcob


  do Begin
     SELECT MESANO From RECEBIMENTOS where ID_SOCIO = :codsocio and MESANO = :geroumes and situacao <> 'Cancelado'
     INTO :meseano;
       IF ((meseano is null) or (meseano = '')) then
       begin

        SELECT first 1 udf_month(VENCIMENTO) From RECEBIMENTOS
        where ID_SOCIO = :codsocio and udf_month(VENCIMENTO) = udf_month(:vencimento) and ((status = 'Pendente') or (status = 'Pago') or (status = 'Renegociado')or (status = 'Acordo') ) and udf_year(VENCIMENTO) = udf_year(:vencimento) and situacao <> 'Cancelado'
        INTO : venc;



        if (venc is null) then
        begin



          SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
           INTO :VALOR;
           i = 0;

 SELECT cast(PARAMETRO1 as double precision) FROM PARAMETROS   where PARAMETRO = 'Valor Dep'

   into : val_dep;



   SELECT count (dep.COBRA_DEP) FROM SOCIOS soc
   inner join dependente dep on dep.ID_SOCIO = soc.ID_SOCIO
   where soc.PLANO = 'MENSAL' and  dep.COBRA_DEP = 'S' and dep.ID_SOCIO = :codsocio
   into : x ;

      if( x <> 0) then
      begin
        val_dep = (x * val_dep) ;
      end

      if( x = 0) then
      begin
        val_dep = 0 ;
      end

           /*parcelas = parcelas + 1; */
           while (i < :parcelas) do
           begin
             INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO,
                    VENCIMENTO, STATUS, MESANO, VALOR_1VIA, VALOR_PAGO,
                   VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC, COBRADOR)
             VALUES (:codsocio, :valor, :codsocio, :EMISSAO,
                  udf_IncMonth(:vencimento, (:i)), 'Pendente',
             udf_month(udf_IncMonth(:vencimento, (:i))) || udf_year(udf_IncMonth(:vencimento, (:i))),
                  :valor, 0,(:VALOR + :val_dep),:gp,'Ativo','ME',:codcob);
             i = i + 1;
             /* EXCEPTION EXCEPTMENSALIDADE; */

           end
        end
        venc = null;
       end
       meseano = null;
  end
end

