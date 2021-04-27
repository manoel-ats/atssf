CREATE OR ALTER PROCEDURE  FU_COPY( WVAR                             VARCHAR( 8192 )
                        , WINI                             INTEGER
                        , WTAM                             INTEGER )
RETURNS ( R_COPY                           VARCHAR( 8192 ) )
AS
declare variable i integer;
declare variable j integer;
declare variable k integer;
begin
   /*
   Copia de "WINI" "WTAM" bytes de "WVAR"
   Este recurso não é mais necessário no FB 2
   Pois já aceita o substring com variáveis
   */
   select r_Len from Fu_Len(:wvar) into :i;
   j = 1;
   k = 1;
   r_copy = '';
while ((:wvar is not null) and (:i > 0) and (j <= :wtam)) do begin
   if (:k >= :wini) then begin
   r_copy = :r_copy || substring(:wvar from 1 for 1);
   j = j + 1;
   end
 wvar = substring(:wvar from 2 for 8191);
   k = :k + 1;
   i = :i - 1;
   end
suspend;
   end
