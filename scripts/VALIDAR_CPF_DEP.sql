CREATE OR ALTER PROCEDURE VALIDAR_CPF_DEP 
returns (
    ok char(1),
    id_dep integer,
    nome_dep varchar(80),
    cpf varchar(18),
    grupo char(1),
    n_inscricao integer,
    nome_socio varchar(80),
    situacao varchar(10))
as
declare variable trab varchar(2);
declare variable wcal varchar(12);
declare variable wsom integer;
declare variable wdig smallint;
declare variable wint smallint;
declare variable codcliente integer;
declare variable nomecliente varchar(50);
declare variable wcpf varchar(18);
declare variable cnpj varchar(18);
declare variable x integer;
BEGIN
  FOR
    select d.id_dep, d.nome_dep, d.cpf, s.grupo, s.n_inscricao, s.nome_socio , strlen(d.cpf )
    from dependente d
       inner join socios s on (d.id_socio = s.id_socio)
    where s.cpf_cgc <> '' and d.cpf <> '' and s.situacao = 'Ativo'
 /* where s.status = 'A'  and s.situacao = 'Ativo' and s.cpf_cgc <> '' and d.cpf <> ''  */

    INTO :ID_DEP,:NOME_DEP,:wcpf,:GRUPO,:N_INSCRICAO,:NOME_SOCIO, :X
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

   if(ok = 'N') then

    SUSPEND;
  END
END
