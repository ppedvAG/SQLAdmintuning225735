

--Installation

--Instanzen

Volumewartungstask..	 kein Ausnullen der Dateien beim Vergr��ern

Master: Logins,Konfig, DB
model: 	Vorlage f�r neue DBs
msdb:  Agent (Jobs, Zeitpl�ne, Verlauf)	+ Mailsystem

Trenne Daten von Logfiles pro DB �berlegen

tempdb: eig HDDs sein (Log von Daten trennen)
		#tab
		Auslagerungen
		Zeilenversionierung Schreiben hindert Lesen nicht
		IX Wartung

		Anzahl der Datendateien = Anzahl der Kerne max 8
		-T1117	alle DAteien gleich gro�  autom Wachsen
		-T1118 uniform extents  eine Tabelle nur pro Block (latch)


	MAXDOP: Anzahl der Kerne , nicht mehr als 8

	Grenzwerte: 50 OLTP   25 OLAP  
	MAXDOP = ANzahl der Kerne


	MAX RAM: gilt sofort
	MIN RAM : gilt ab erreicht 

