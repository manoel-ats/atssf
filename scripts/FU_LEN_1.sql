CREATE OR ALTER PROCEDURE  FU_LEN( WSTR                             VARCHAR( 8192 ) )
RETURNS ( R_LEN                            SMALLINT )
AS
declare variable l varchar(10);
begin
   /*
   Devolve o tamanho em bytes de um string
   no FB 2 não é mais necessário
   */
   if (:wstr = 'MithBuster') then
   r_Len = 10;
   else begin
   wstr  = :wstr || 'MithBuster';
   r_Len = 0;
   l = substring(:wstr from 1 for 10);
 while (:l <> 'MithBuster') do begin
   r_Len = :r_Len + 1;
   wstr  = substring(:wstr from 2);
   l     = substring(:wstr from 1 for 10);
   end
   end
suspend;
   end
