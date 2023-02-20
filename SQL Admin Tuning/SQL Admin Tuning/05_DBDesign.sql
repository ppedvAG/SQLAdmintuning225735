
drop table test1

create table 
		test1 
		(id int identity, spx char(4100))


insert into test1
select 'XY'
GO 20000

--Normalisierung... 
--Redundanz
--OTTO

--varchar(50) 'Otto'   4
--char(50)    'Otto                 ' 50
--nvarchar(50) 'Otto' 4 * 2
--nchar(50)	 'Otto      ' 50 *2


--Datum
--date
--smalldatetime SEK
--datetime		 MS
--datetime2		 NS
--datetimeoffset ms + Zeitzone
--text seit 2005 depricated

select 20000*4


create table test2 (id int,sp1 char(4100), sp2 varchar(4100))


dbcc showcontig('test1')
--- Gescannte Seiten.............................: 20000
--- Mittlere Seitendichte (voll).....................: 50.79%

set statistics io, time on
select * from test1 where id = 2


select 132000*0.3*8














