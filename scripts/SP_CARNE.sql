SET TERM ^ ;
create or ALTER PROCEDURE SP_CARNE (
    DATA_INICIO Date,
    DIAPGTO Integer,
    PARCELA Integer,
    CARENCIA Integer,
    VALOR_MENSAL Double precision,
    ID_SOCIO Integer,
    CODIGO Integer,
    ID_BANCO Integer,
    TIT_BANCO Integer,
    data_emissao date )
AS
DECLARE VARIABLE H INTEGER;
DECLARE VARIABLE I INTEGER;
DECLARE VARIABLE F INTEGER;
DECLARE VARIABLE T INTEGER;
DECLARE VARIABLE G VARCHAR(10);
DECLARE VARIABLE ANO_A INTEGER;
DECLARE VARIABLE MES_A INTEGER;
DECLARE VARIABLE DIA_A INTEGER;
DECLARE VARIABLE MES_B INTEGER;
DECLARE VARIABLE MES_C INTEGER;
DECLARE VARIABLE DIA_B INTEGER;
DECLARE VARIABLE DATA_B DATE;
DECLARE VARIABLE DATA_A DATE;
DECLARE VARIABLE NUM_PARC INTEGER;
DECLARE VARIABLE MESES_CAR INTEGER;
begin
    ANO_A = extract(year from DATA_INICIO);
    MES_A = extract(month from DATA_INICIO);
    DIA_A = extract(DAY from DATA_INICIO);
    MESES_CAR = CARENCIA / 30;
    DIA_B = CAST(DIAPGTO as INTEGER);
    DATA_B = DATA_INICIO;
    NUM_PARC = PARCELA;
    i = 0;
    MES_B = MES_A + 1;
   /* ------------------------------------------------------------------------- */
   /* aumentar o mês p obter a parcela inicial                                  */
   /* ------------------------------------------------------------------------- */
    MES_C = MES_A + MESES_CAR;
    IF (MES_C > 12) THEN
    begin
      MES_C = 1;
      ANO_A = ANO_A + 1;
    end
    DATA_A = CAST((CAST(MES_C AS VARCHAR(2)) || '/' || CAST(DIA_A AS VARCHAR(2)) || '/' || CAST(ANO_A AS VARCHAR(4))) as DATE) ;
    DATA_B = CAST((CAST(MES_C AS VARCHAR(2)) || '/' || CAST(DIA_B AS VARCHAR(2)) || '/' || CAST(ANO_A AS VARCHAR(4))) as DATE) ;

    if (DATA_A > DATA_B) then
      MES_C = MES_C + 1;

    IF (MES_C > 12) THEN
    begin
      MES_C = 1;
      ANO_A = ANO_A + 1;
    end
      DATA_B = CAST((CAST(MES_C AS VARCHAR(2)) || '/' || CAST(DIA_B AS VARCHAR(2)) || '/' || CAST(ANO_A AS VARCHAR(4))) as DATE) ;
    /* ------------------------------------------------------------------------- */
    /*Insere as parcelas                                                         */
    /* ------------------------------------------------------------------------- */
    h = 0;
    while (I < NUM_PARC) do
    begin
     if (H = 0) then
         H = 1;
     F = (:codigo + :I);
    -- T = (:tit_banco + :I);
     G = 'M';
     INSERT INTO recebimentos (ID, VALOR_NF, VALOR_RECEBER, VALOR_A_REC, PARCELA,
       VENCIMENTO, STATUS, VALOR_PAGO, VALOR_DIF, JUROS, DESCONTO, MULTA, EMISSAO,
       TITULO, CODIGO, SERIE,  VALOR_1VIA, ID_SOCIO, ID_BANCO, SITUACAO, TIPO_DOC)
     VALUES
       (:id_socio, :valor_mensal, :valor_mensal, :valor_mensal, :h,
       udf_IncMonth(:DATA_B,:i), 'Pendente', '0', '0', '0', '0', '0', :data_emissao,
       :F,GEN_ID(GEN_CODIGO_BANCO,1),:G, '0', :id_socio, :id_banco, 'Ativo', 'MS');

     if (:H = 12) then
     begin
        update SOCIOS set DTA_ULTIMA_PARCELA = udf_IncMonth(:DATA_B,:i) 
         where ID_SOCIO = :id_socio;
     end


     H = H + 1;
     I = I + 1;
     
    end

   -- UPDATE RDB$GENERATORS set RDB$GENERATOR_ID = :T where RDB$GENERATOR_NAME = 'GEN_CODIGO_BANCO' ;
   
   suspend;

end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE SP_MENSALIDADE TO  SYSDBA;

