CREATE OR ALTER PROCEDURE  FU_IIF_DEC( STR1                             DECIMAL ( 18, 4 )
                           , WSIG                             VARCHAR( 2 )
                           , STR2                             DECIMAL ( 18, 4 )
                           , STR3                             DECIMAL ( 18, 4 )
                           , STR4                             DECIMAL ( 18, 4 ) )
RETURNS ( R_DEC                            DECIMAL ( 18, 4 ) )
AS
begin
   if (:wsig = '=') then
   begin
   if (:str1 = :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
   else if (:wsig = '<') then
   begin
   if (:str1 < :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
   else if (:wsig = '>') then
   begin
   if (:str1 > :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
   else if (:wsig = '>=') then
   begin
   if (:str1 >= :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
   else if (:wsig = '<=') then
   begin
   if (:str1 <= :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
   else if (:wsig = '<>') then begin
   if (:str1 <> :str2) then
   r_dec = :str3;
   else
   r_dec = :str4;
   end
suspend;
   end
