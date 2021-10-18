-- LISTA ZADAN NR 3
--1. 
SELECT CONCAT(SUBSTRING(nazwisko, 1,2),SUBSTRING(imie,1,1), id) AS KOD 
FROM PRACOWNICY;
--lub:
SELECT SUBSTRING(nazwisko, 1,2)||SUBSTRING(imie,1,1)||id AS KOD 
FROM PRACOWNICY;
--2.
SELECT nazwisko, REGEXP_REPLACE(nazwisko, 'K|k|W|w|S|s', 'x') AS zmienione 
FROM PRACOWNICY order by nazwisko;
--3.
SELECT nazwisko, ROUND(pensja*1.15,0) AS placa FROM Pracownicy;
--4.
select p_id, termin_oddania, age(current_date,termin_oddania) 
from Projekty;
--5.
select p_id, termin_oddania, extract(year from current_date) - extract(year from termin_oddania)
from Projekty;
--6.
SELECT to_char(termin_oddania, 'DAY') AS "Dzien tygodnia" 
from Projekty 
WHERE p_id='p1';
--7.
SELECT TERMIN_ODDANIA, szef_projektu 
FROM Projekty 
WHERE termin_oddania BETWEEN '2019-08-15' AND '2020-03-30';
--8.
SELECT nazwa||' jest dostępny pod numerem tel.:'||telefon 
FROM Klienci 
where telefon is not null;
--9.
SELECT Pensja, ROUND(Pensja*0.17,2) AS PODATEK FROM Pracownicy;
--10.
SELECT nazwa, COALESCE(PRAC_KONTAKTOWY,'0') AS "ID pracownika kontaktowego" FROM Klienci;
--11.
INSERT INTO Pracownicy VALUES (51, 'Jan', 'Kowalski', 5, null, null);
--12.
SELECT ROUND(AVG(pensja),2), 
ROUND(AVG(COALESCE(pensja,'0')),2), 
ROUND(AVG(COALESCE(pensja,1800)),2) 
FROM Pracownicy;
--13.
SELECT ROUND(AVG(pensja*(0.83)),-2)  FROM Pracownicy; 


