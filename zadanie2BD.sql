INSERT INTO projekty (p_id, szef_projektu, nazwa, termin_oddania)  VALUES ('odi', 17, 'Inwentaryzacja oddzialu Turzno', '2010-12-30');

SELECT nazwisko, pensja, 'mniejsza' FROM pracownicy WHERE pensja<1800
UNION
SELECT nazwisko, pensja, 'równa' FROM pracownicy WHERE pensja=1800
UNION
SELECT nazwisko, pensja, 'większa' FROM pracownicy WHERE pensja>1800;

SELECT nazwa, termin_oddania, 'ukończony' FROM projekty WHERE termin_oddania<CURRENT_DATE
UNION
SELECT nazwa, termin_oddania, 'trwający' FROM projekty WHERE termin_oddania>CURRENT_DATE;

SELECT id FROM pracownicy WHERE pensja > 3000 
EXCEPT
SELECT szef_projektu FROM projekty;

SELECT id FROM pracownicy WHERE pensja < 2000 
INTERSECT 
SELECT prac_kontaktowy FROM klienci;