--SQL verwendet ab einem best Kstenschwellwert (SQL Dollar im Plan)
--einen oder die MAXDOP Zahl an Kernen..nichts dazwischen
--der Kosteschwellwert wird pro Instanz festgelegt
--default: 5 Kostenschwellert
--MAXDOP = Anzahl der kerne (aber nicht mehr als8 )

--Warteressource =CX...
--Tipp OLAP 25   OLTP = 50



set statistics io, time off




--1,1 MIO Datensätze

set statistics io, time on
select country, sum(freight) from ku
group by country

--40000 Seiten -- CPU 422ms   Dauer 57ms

select country, sum(freight) from ku
group by country option (maxdop 4)
-- 172 ms   174 ms




select country, sum(freight) from ku
group by country option (maxdop 6)

---EXEC sys.sp_configure N'show advanced options', N'1'  RECONFIGURE WITH OVERRIDE
GO
EXEC sys.sp_configure N'cost threshold for parallelism', N'30'
GO
RECONFIGURE WITH OVERRIDE
GO
EXEC sys.sp_configure N'show advanced options', N'0'  RECONFIGURE WITH OVERRIDE
GO

 USE [master]
GO

GO
USE [Northwind]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 1;
GO



