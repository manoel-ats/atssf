CREATE or ALTER PROCEDURE SP_LOTECOBRANCA (
    lote_cob integer,
    grupo_cob varchar(3),
    emissao date,
    vencimento date)
as
declare variable codsocio integer;
declare variable valor double precision;
declare variable grupo char(1);
declare variable dta date;
declare variable dias integer;
declare variable result integer;
declare variable plano varchar(20);
declare variable codfaixa integer;
declare variable id_cob integer;
declare variable venc integer;
declare variable x integer;
declare variable val_dep double precision;
begin
  /* Procedure Text */
  /* Pego a data do sistema e jogo na variavel EMISSAO*/
  SELECT CAST('today' AS DATE) from RDB$DATABASE
  INTO :EMISSAO;

  FOR SELECT ID_SOCIO, GRUPO, DTACADASTRO, CARENCIA, PLANO, FAIXA , id_cob FROM SOCIOS WHERE GRUPO = :grupo_cob
  /*and id_socio = 2122 */
  INTO :codsocio, :GRUPO, :DTA,:DIAS,:plano,:codfaixa , :id_cob
  DO BEGIN

        SELECT first 1 udf_month(VENCIMENTO) From RECEBIMENTOS
        where ID_SOCIO = :codsocio and udf_month(VENCIMENTO) = udf_month(:vencimento)
        and ((status = 'Pendente') or (status = 'Pago') or (status = 'Renegociado')or (status = 'Acordo') )
        and udf_year(VENCIMENTO) = udf_year(:vencimento) and situacao <> 'Cancelado'
        and tipo_doc <> 'OB'

        INTO : venc;

        if (venc is null) then
        begin
          SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
          INTO :VALOR;

   SELECT cast(PARAMETRO1 as double precision) FROM PARAMETROS   where PARAMETRO = 'Valor Dep,' and PARAMETRO2 = '7 FALECIMENTO'

   into : val_dep;



   SELECT count (dep.COBRA_DEP) FROM SOCIOS soc
   inner join dependente dep on dep.ID_SOCIO = soc.ID_SOCIO
   where soc.PLANO = '7 FALECIMENTO' and  dep.COBRA_DEP = 'S' and dep.ID_SOCIO = :codsocio
   into : x ;

      if( x <> 0) then
      begin
        val_dep = (x * val_dep) ;
      end

      if( x = 0) then
      begin
        val_dep = 0 ;
      end

      if( x is null) then
      begin
        val_dep = 0 ;
      end

      if (DTA is not null) then
      if (dias > 0)  then
      begin
        RESULT = udf_DaySpan(DTA, EMISSAO);
        if ((RESULT > DIAS ) and (venc is null))  then
        BEGIN
          if (plano = '7 FALECIMENTO') then
          begin
            INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, LOTE, GEROU, VALOR_1VIA,
                                     VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC , COBRADOR )
            VALUES (:codsocio, (:valor + :val_dep), :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S',(:valor + :val_dep),
                  '0',(:VALOR + :val_dep),:GRUPO,'Ativo','GM' , :id_cob);
          end
        END
      end
      else
      begin
          if (plano = '7 FALECIMENTO') then
          begin
            INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, LOTE, GEROU, VALOR_1VIA,
                                   VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC, COBRADOR )
            VALUES (:codsocio, (:valor + :val_dep), :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S', (:valor + :val_dep),
                '0',(:valor + :val_dep),:GRUPO,'Ativo','GM', :id_cob);
          end
         venc = null;
         val_dep = null;
         x = null ;

      end

           end
         venc = null;
         val_dep = null;
         x =  null;
       end

end
