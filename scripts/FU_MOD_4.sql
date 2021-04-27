CREATE OR ALTER PROCEDURE  FU_MOD( WRAD                             INTEGER
                       , WDIV                             INTEGER )
RETURNS ( R_MOD                            INTEGER )
AS
begin
   /*
   Resto da divisão entre inteiros
   */
   if(:wrad < :wdiv) then
   r_mod = :wdiv;
   else
   R_MOD = :WRAD - ((:WRAD / :WDIV) * :WDIV);
suspend;
   end
