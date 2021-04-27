CREATE OR ALTER PROCEDURE SP_LOTECOBRANCA (
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
begin
  /* Procedure Text */
  /* Pego a data do sistema e jogo na variavel EMISSAO*/
  SELECT CAST('today' AS DATE) from RDB$DATABASE
  INTO :EMISSAO;

  FOR SELECT ID_SOCIO, GRUPO, DTACADASTRO, CARENCIA, PLANO, FAIXA , id_cob FROM SOCIOS WHERE GRUPO = :grupo_cob
  --and id_socio = 2122
  INTO :codsocio, :GRUPO, :DTA,:DIAS,:plano,:codfaixa , :id_cob
  DO BEGIN



        SELECT first 1 udf_month(VENCIMENTO) From RECEBIMENTOS
        where ID_SOCIO = :codsocio and udf_month(VENCIMENTO) = udf_month(:vencimento) and ((status = 'Pendente') or (status = 'Pago') or (status = 'Renegociado')or (status = 'Acordo') ) and udf_year(VENCIMENTO) = udf_year(:vencimento) and situacao <> 'Cancelado'
        INTO : venc;



        if (venc is null) then
        begin



          SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
           INTO :VALOR;

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
            VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S', :valor,
                  '0',:VALOR,:GRUPO,'Ativo','GM' , :id_cob);
          end
        END
      end
      else
      begin
          if (plano = '7 FALECIMENTO') then
          begin
            INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, LOTE, GEROU, VALOR_1VIA,
                                   VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC, COBRADOR )
            VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S', :valor,
                '0',:valor,:GRUPO,'Ativo','GM', :id_cob);
          end
      end

           end

        venc = null;
       end






end
