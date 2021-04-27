CREATE OR ALTER PROCEDURE SPGERATITULO (
    grupo_cob varchar(3),
    emissao date,
    vencimento date,
    geroumes varchar(10),
    insc integer,
    insc1 integer,
    cob integer)
as
declare variable codsocio integer;
declare variable valor double precision;
declare variable grupo char(1);
declare variable dta date;
declare variable dias integer;
declare variable result integer;
declare variable plano varchar(20);
declare variable codfaixa integer;
declare variable codcob integer;
begin
  /* Procedure Text */

  FOR SELECT ID_SOCIO, GRUPO, DTACADASTRO, CARENCIA, PLANO, FAIXA, ID_COB FROM SOCIOS
  WHERE GRUPO = :grupo_cob
  INTO :codsocio, :GRUPO, :DTA,:DIAS,:plano,:codfaixa,:codcob 
  DO
  BEGIN
     /* Pego o Maior Valor da tabela Valores e coloco na variavel VALOR */
     SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
     INTO :VALOR;


     INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, MESANO, VALOR_1VIA,
                           VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC, COBRADOR, PARCELA)
     VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :geroumes, :valor,
                  '0',:VALOR,:GRUPO,'Ativo','TM',:codcob,udf_Left(udf_PadL(:geroumes,'0',6),2) );
   end
   suspend;
end
