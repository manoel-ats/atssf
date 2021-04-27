set term ^;

CREATE OR ALTER PROCEDURE SP_LOTECOBRANCA (
    LOTE_COB INTEGER,
    GRUPO_COB VARCHAR(3),
    EMISSAO DATE,
    VENCIMENTO DATE)
AS
DECLARE VARIABLE CODSOCIO INTEGER;
DECLARE VARIABLE VALOR DOUBLE PRECISION;
DECLARE VARIABLE GRUPO CHAR(1);
DECLARE VARIABLE DTA DATE;
DECLARE VARIABLE DIAS INTEGER;
DECLARE VARIABLE RESULT INTEGER;
DECLARE VARIABLE PLANO VARCHAR(20);
DECLARE VARIABLE CODFAIXA INTEGER;
begin
  /* Procedure Text */
  /* Pego a data do sistema e jogo na variavel EMISSAO*/
  SELECT CAST('today' AS DATE) from RDB$DATABASE
  INTO :EMISSAO;

  FOR SELECT ID_SOCIO, GRUPO, DTACADASTRO, CARENCIA, PLANO, FAIXA FROM SOCIOS WHERE GRUPO = :grupo_cob
  INTO :codsocio, :GRUPO, :DTA,:DIAS,:plano,:codfaixa
  DO BEGIN

     /* Pego o Maior Valor da tabela Valores e coloco na variavel VALOR */
     SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
     INTO :VALOR;

     if (DTA is not null) then
      if (dias > 0)  then
      begin
        RESULT = udf_DaySpan(DTA, EMISSAO);
        if (RESULT > DIAS)  then
        BEGIN
          if (plano = '7 FALECIMENTO') then
          begin
            INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, LOTE, GEROU, VALOR_1VIA,
                                     VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC)
            VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S', :valor,
                  '0',:VALOR,:GRUPO,'Ativo','GM');
          end
        END
      end
      else
      begin
          if (plano = '7 FALECIMENTO') then
          begin
            INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, LOTE, GEROU, VALOR_1VIA,
                                   VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC)
            VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :LOTE_COB, 'S', :valor,
                '0',:valor,:GRUPO,'Ativo','GM');
          end
      end
  END
  suspend;
end
