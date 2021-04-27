SET TERM ^ ;
CREATE OR ALTER PROCEDURE SP_LISTA_COB (
    P_PLANO Varchar(20),
    P_PERIODO_INI Date,
    P_PERIODO_FIN Date,
    P_GRUPO Char(1),
    P_INSC_INI Integer,
    P_INSC_FIN Integer,
    P_TOTAL_TITULOS Integer,
    P_SOMAR_TITULO Char(1),
    P_ID_COBRADOR Integer,
    P_ID_CC Integer )
RETURNS (
    R_ID_SOCIO Integer,
    R_NOME_SOCIO Varchar(100),
    R_GRUPO Char(1),
    R_INSCRICAO Integer,
    R_EMISSAO Date,
    R_VENCIMENTO Date,
    R_VALOR_TITULO Double precision,
    R_TOTAL_PEND Integer,
    R_VALOR_PEND Double precision,
    R_STATUS Varchar(20) )
AS
--DECLARE VARIABLE variable_name < datatype>; 
BEGIN
  /* write your code here */ 
  FOR select s.ID_SOCIO, s.NOME_SOCIO, s.GRUPO,s.N_INSCRICAO, r.EMISSAO, r.VENCIMENTO, r.VALOR_NF, r.STATUS 
        from RECEBIMENTOS r inner join SOCIOS s on s.ID_SOCIO = r.ID_SOCIO
       where (s.GRUPO = :P_GRUPO)
         and (s.PLANO = :P_PLANO)
         and (r.STATUS = 'Pendente')
         and ((S.N_INSCRICAO between :P_INSC_INI and :P_INSC_FIN))
         and ((r.VENCIMENTO between :P_PERIODO_INI and :P_PERIODO_FIN)) 
   into :R_ID_SOCIO, :R_NOME_SOCIO, :R_GRUPO, :R_INSCRICAO, :R_EMISSAO, :R_VENCIMENTO,:R_VALOR_TITULO, :R_STATUS DO 
   begin
   
     select sum(r.VALOR_NF) from RECEBIMENTOS r  
        where r.STATUS = 'Pendente'
          and r.ID_SOCIO = :R_ID_SOCIO
        into :R_VALOR_PEND;
        
     select count(r.VALOR_NF) from RECEBIMENTOS r  
        where r.STATUS = 'Pendente'
          and r.ID_SOCIO = :R_ID_SOCIO
        into :R_TOTAL_PEND;
     if (R_TOTAL_PEND <= P_TOTAL_TITULOS) then 
     suspend;
   end
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE SP_LISTA_COB TO  SYSDBA;

