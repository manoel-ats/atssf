CREATE OR ALTER PROCEDURE  FU_POS( SUB                              VARCHAR( 8192 )
                       , STR                              VARCHAR( 8192 ) )
RETURNS ( RESULT                           SMALLINT )
AS
declare variable sub2 varchar(8192);
declare variable tmp varchar(8192);
BEGIN
   /*
   Devolve a primeira posição de "SUB" dentro de "STR"
   */
   if ((Sub is null) or (Str is null)) then begin
   result = 0;
   exit;
   end
Sub2   = Sub || '%';
   Tmp    = '';
   result = 1;
while ((Str not like Sub2) and (Str not like Tmp)) do begin
   Sub2    = '_' || Sub2;
   Tmp     = Tmp || '_';
   result  = :result + 1;
   end
if (Str like Tmp) then
   result = 0;
suspend;
   end
