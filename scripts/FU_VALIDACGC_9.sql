CREATE OR ALTER PROCEDURE  FU_VALIDACGC( WCGC                             VARCHAR( 14 ) )
RETURNS ( OK                               CHAR( 1 ) )
AS
declare variable trab varchar(2);
declare variable wcal varchar(12);
declare variable wsom integer;
declare variable wdig smallint;
declare variable wint smallint;
begin 
   /*
   Valida um CNPJ
   */
   select r_OnlyDigit from Fu_OnlyDigit(:wcgc) into :wcgc;
   wsom = 0;
   wcal = substring(:wcgc from 1 for 12);
   wint = 1;
while (:wint <= 4) do begin
   select r_Copy from Fu_Copy(:wcgc, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (6 - :wint);
   wint = :wint + 1;
   end
wint = 1;
while (:wint <= 8) do begin
   select r_Copy from Fu_Copy(:wcgc, (:wint + 4), 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (10 - :wint);
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
while (:wint <= 5) do begin
   select r_Copy from Fu_Copy(:wcgc, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (7 - :wint);
   wint = :wint + 1;
   end
wint = 1;
while (:wint <= 8) do begin
   select r_Copy from Fu_Copy(:wcgc, (:wint + 5), 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (10 - :wint);
   wint = :wint + 1;
   end
select r_mod from Fu_mod(:wsom, 11) into :wdig;
   wdig = 11 - :wdig;
if ((:wdig = 10) or (:wdig = 11)) then
   wcal = :wcal || '0';
   else
   wcal = :wcal || cast(:wdig as char(1));
if (:wcgc <> :wcal) then
   ok = 'N';
   else
   ok = 'S';
suspend;
   end
