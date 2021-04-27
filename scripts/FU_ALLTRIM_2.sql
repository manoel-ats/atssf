CREATE OR ALTER PROCEDURE  FU_ALLTRIM( WVAR                             VARCHAR( 8192 ) )
RETURNS ( R_ALLTRIM                        VARCHAR( 8192 ) )
AS
declare variable t smallint;
begin
   /*
   Devolve um string sem espaços
   */
   select r_Len from Fu_Len(:wvar) into :t;
   r_alltrim = '';
while ((:wvar is not null) and (:t > 0)) do begin
   if (substring(:wvar from 1 for 1) <> ' ') then
   r_alltrim = :r_alltrim || substring(:wvar from 1 for 1);
 wvar = substring(:wvar from 2 for 8191);
   t = :t - 1;
   end
suspend;
   end
