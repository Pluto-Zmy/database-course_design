create proc [dbo].[cellProc]
@cname nvarchar(100)=NULL,
@cid   nvarchar(100)=NULL
as
begin
select * from tbcell where SECTOR_NAME=@cname or SECTOR_ID=@cid
end
