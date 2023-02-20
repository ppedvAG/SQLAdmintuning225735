create database testdb

/*


wieviele Fehler:

seit SQL 2016 :
8MB		+64MB
8MB		+64MB

bis 2014
%MB     +1 MB
2MB	    +10%

DB sollte groß genug sein...?

--in 3 Jahren ...?

Wachstumsraten anpassen.. am besten kein Wachstum

_Achten auf VLF	   virtuelle LogFiles
--sollte nicht zuviele sein x-1000

Methode zur Reduzierung:
DB Logda´tein auf kleinste Maß 1 MB verkleinern und  dann vergrößern auf 25% der Datendateien



Die Größen kann man jederzeit zur Laufzeit anpassen



*/


dbcc loginfo()