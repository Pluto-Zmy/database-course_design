create PROCEDURE [dbo].[KPI2]
@NAME NVARCHAR(100),
@sDATE NVARCHAR(100),
@eDATE NVARCHAR(100),
@ATTR NVARCHAR(255)
AS
BEGIN
declare @sql nvarchar(300)
--SELECT* FROM tbKPI WHERE (起始时间 BETWEEN @sDATE AND @eDATE) AND 网元名称=@NAME
set @sql='SELECT avg( '+@ATTR+') FROM tbKPI group by 网元名称,起始时间 having 网元名称='''+@NAME+'''and(substring(起始时间,1,10)  BETWEEN '''+@sDATE+'''AND'''+@eDATE+''')'
print @sql
exec(@sql)
end