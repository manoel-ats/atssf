CREATE OR ALTER PROCEDURE VALIDAR_CPF 
returns (
    ok char(1),
    grupo varchar(10),
    n_inscricao varchar(10),
    nomecliente varchar(50),
    situacao varchar(10))
as
declare variable trab varchar(2);
declare variable wcal varchar(12);
declare variable wsom integer;
declare variable wdig smallint;
declare variable wint smallint;
declare variable codcliente integer;
declare variable wcpf varchar(18);
declare variable x integer;
begin 
   /*
   Valida um CPF
   */
for
select id_socio , grupo , N_INSCRICAO, NOME_SOCIO , CPF_CGC  , strlen(CPF_CGC )
   from socios
   where status = 'A' and situacao = 'Ativo'
   and CPF_CGC <> ''
order by id_socio
   INTO :CODCLIENTE,:grupo , :N_INSCRICAO ,:NOMECLIENTE,:wcpf , :X
  DO
  BEGIN

   if (:X <> 14) then
   begin
     situacao = 'ERRADO';
     wcpf = '000.070.080-00';
   end
   select r_OnlyDigit from Fu_OnlyDigit(:wcpf) into :wcpf;
   wsom = 0;
   wcal = substring(:wcpf from 1 for 9);
   wint = 1;
while (:wint <= 9) do begin
   select r_Copy from Fu_Copy(:wcpf, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (11 - :wint);
   wint = :wint + 1;
   end
select r_mod from Fu_mod(:wsom, 11) into :wdig;
   wdig = 11 - :wdig;
if ((:wdig = 10) or (:wdig = 11)) then
   wcal = :wcal || '0';
   else
   wcal = :wcal || cast(:wdig as char(1));
wsom = 0;
   wint = 1;
while (:wint <= 10) do begin
   select r_Copy from Fu_Copy(:wcpf, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (12 - :wint);
   wint = :wint + 1;
   end
select r_mod from Fu_mod(:wsom, 11) into :wdig;
   wdig = 11 - :wdig;
if ((:wdig = 10) or (:wdig = 11)) then
   wcal = :wcal || '0';
   else
   wcal = :wcal || cast(:wdig as char(1));
if (:wcpf <> :wcal) then
   ok = 'N';
   else
   ok = 'S';

   if( ok = 'N') then
suspend;

   end
end
