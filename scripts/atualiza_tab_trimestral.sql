SET TERM ^ ;
CREATE OR ALTER PROCEDURE INSERETRIMESTRAL
/*returns (
  idsocio INTEGER,
  idsocio1 INTEGER
)*/
AS
  DECLARE VARIABLE TEM INTEGER;
  DECLARE VARIABLE TIPO CHAR(1);
  DECLARE VARIABLE ID INTEGER;
  DECLARE VARIABLE IDSOC INTEGER;
  DECLARE VARIABLE DATAC DATE;
BEGIN 
   -- Pego todos os Sócios
   FOR SELECT ID_SOCIO, DTACADASTRO, TIPO_SOCIO FROM SOCIOS
   INTO :IDSOC, :DATAC, :TIPO
   DO BEGIN
     -- Só vou fazer alguma coisa se for do Tipo = T -Trimestral
     IF (TIPO = 'T') THEN
     begin
       -- Vejo se ele já existe na tabela trimestral
       TEM = null; 
       SELECT ID_SOCIO FROM TRIMESTRAL WHERE ID_SOCIO = :IDSOC
       INTO :TEM;
       IF (TEM IS NULL) THEN 
       BEGIN 
         -- Faço uma busca na tabela RECEBIMENTOS para ver se já existe lançamento
   --      IDSOCIO = null;
   --      IDSOCIO1 = null;
         ID = null; 
         FOR SELECT ID_SOCIO, MAX(VENCIMENTO) from RECEBIMENTOS WHERE ID_SOCIO = :IDSOC AND TIPO_DOC = 'TM' 
         GROUP BY ID_SOCIO
         INTO :ID, :DATAC
         DO BEGIN
           -- Se não existe então insiro o último título na tabela TRIMESTRAL           
           INSERT INTO TRIMESTRAL (ID_SOCIO, ULTIMOTRIM) values (:ID, :DATAC);
   --        IDSOCIO = ID;
         end
   --      IDSOCIO1 = IDSOC; 
         -- Se não existe na tabela RECEBIMENTOS, então insiro pela data do cadastro  
         IF (ID IS NULL) THEN
         BEGIN          
           INSERT INTO TRIMESTRAL (ID_SOCIO, ULTIMOTRIM) values (:IDSOC, :DATAC);        
         END
       END
     END
   END  
END^
SET TERM ; ^