CREATE OR ALTER PROCEDURE SPGERATITULOMENSAL (
    diapgto integer,
    emissao date,
    vencimento date,
    geroumes varchar(10),
    id integer)
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
declare variable quatde integer;
begin
  /* Procedure Text */
  SELECT ID_SOCIO, GRUPO, DTACADASTRO, CARENCIA, PLANO, FAIXA, ID_COB, QUTDE FROM SOCIOS
  WHERE ID_SOCIO = :id
  INTO :codsocio, :GRUPO, :DTA,:DIAS,:plano,:codfaixa,:codcob, :quatde;
     if (quatde = 1) then
     begin
         /* Pego o Maior Valor da tabela Valores e coloco na variavel VALOR */
         SELECT MAX(VALOR) FROM VALORES  where FAIXA = :codfaixa
         INTO :VALOR;
      INSERT INTO recebimentos (ID_SOCIO, VALOR_NF, ID, EMISSAO, VENCIMENTO, STATUS, MESANO, VALOR_1VIA,
                               VALOR_PAGO, VALOR_RECEBER, GRUPO, SITUACAO, TIPO_DOC, COBRADOR)
         VALUES (:codsocio, :valor, :codsocio, :EMISSAO, :vencimento, 'Pendente', :geroumes, :valor,
                      0,:VALOR,:GRUPO,'Ativo','ME',:codcob);
     end
  suspend;
end
