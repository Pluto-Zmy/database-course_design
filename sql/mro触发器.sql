create TRIGGER [dbo].[trigger1]
   ON  [dbo].[tbMROData]
   INSTEAD OF insert
AS 
declare @TS nvarchar(30)
declare @SS nvarchar(50)
declare @IS nvarchar(50)
declare @LSR FLOAT
declare @LNR FLOAT
declare @LNE INT
declare @LNP SMALLINT
select @TS=TimeStamp,@SS=ServingSector,@IS=InterferingSector,@LSR=LteScRSRP,@LNR=LteNcRSRP,@LNE=LteNcEarfcn,@LNP=LteNcPci from inserted
if((select count(*) from tbMROData where (TimeStamp=@TS and ServingSector =@SS and InterferingSector=@IS))>0)
begin

      
	   --INSERT INTO tbMROData VALUES ( @TS,@SS,@IS ,@LSR , @LNR ,@LNE ,@LNP)
	   PRINT'11!'
	   --delete from tbMROData where (TimeStamp=@TS and ServingSector =@SS and InterferingSector=@IS)
       UPDATE tbMROData SET LteScRSRP=@LSR,LteNcRSRP=@LNR,LteNcEarfcn=@LNE,LteNcPci=@LNP WHERE (TimeStamp=@TS and ServingSector =@SS and InterferingSector=@IS)
       PRINT'1111!'
	   --select * from tbMROData
	   --rollback tran
	   PRINT'UPDATE!'
end
ELSE
INSERT INTO tbMROData VALUES ( @TS,@SS,@IS ,@LSR , @LNR ,@LNE ,@LNP)
print 'success!'

