CREATE OR ALTER PROCEDURE  FU_ONLYDIGIT( WVAR                             VARCHAR( 255 ) )
RETURNS ( R_ONLYDIGIT                      VARCHAR( 255 ) )
AS
declare variable k integer;
declare variable i integer;
begin
   /*
   A partir de um string devolve apenas o que for número
   */
   select r_Len from Fu_Len(:wvar) into :k;
   r_onlydigit = '';
while (:k > 0) do begin
   select result from Fu_Pos(substring(:wvar from 1 for 1), '0123456789') into :i;
 if (:i > 0) then
   r_onlydigit = r_onlydigit || substring(:wvar from 1 for 1);
 wvar = substring(:wvar from 2 for 254);
   k = :k - 1;
   end
suspend;
   end
