SELECT CONCAT(SUBSTRING(nazwisko, 1, 2), SUBSTRING(imie, 1, 1), numer) FROM zawodnik;

SELECT REGEXP_REPLACE(nazwisko, 'A|a', 'o') FROM zawodnik ORDER BY nazwisko;

SELECT nazwisko, ROUND(kwota*1.15) FROM zawodnik;

SELECT *, EXTRACT(MONTH FROM AGE(now(), data)) FROM reha;

SELECT to_char(data, 'DAY') FROM reha WHERE fizjo = 'n1';

SELECT CONCAT(nazwisko, ' trenuje w sekcji ', id_sekcji) FROM zawodnik WHERE id_sekcji is not NULL;

SELECT ROUND(kwota*0.17, 2) FROM zawodnik;

SELECT id_sekcji, COALESCE(szef_sekcji, 0) FROM sekcja;

SELECT COUNT(*) FROM kadra;
SELECT COUNT(*) FROM kadra WHERE pensja IS NOT NULL;
SELECT AVG(pensja) FROM kadra;
SELECT ROUND(AVG(COALESCE(pensja, 0)), 2) FROM kadra;
SELECT ROUND(AVG(COALESCE(pensja, 10000)), 2) FROM kadra;

SELECT ROUND(AVG(COALESCE(pensja*0.83, 0)), -2) FROM kadra;