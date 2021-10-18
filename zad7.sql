SELECT s.nazwa, s.rodzaj, k.pensja
FROM sekcja s LEFT OUTER JOIN kadra k
ON s.szef_sekcji = k.id_prac;

SELECT s.nazwa, s.rodzaj, count(z.numer) AS "liczba zawodnikow"
FROM sekcja s NATURAL JOIN zawodnik z
GROUP BY id_sekcji
ORDER BY "liczba zawodnikow";

SELECT  z.nazwisko, z.kwota, s.nazwa
FROM zawodnik z LEFT OUTER JOIN sekcja s
ON z.id_sekcji = s.id_sekcji;

SELECT  z.nazwisko, z.kwota, s.nazwa, s.rodzaj, k.pensja as "pensja trenera"
FROM zawodnik z LEFT OUTER JOIN sekcja s 
ON z.id_sekcji = s.id_sekcji
LEFT JOIN kadra k 
ON s.szef_sekcji = k.id_prac
ORDER BY z.nazwisko;

SELECT k.imie, k.nazwisko, k.stanowisko, k1.nazwisko as "szef sekcji"
FROM kadra k
LEFT JOIN sekcja s ON k.id_sekcji=s.id_sekcji
LEFT JOIN kadra k1 ON s.szef_sekcji=k1.id_prac; 

SELECT f.nazwisko, f.imie, z.nazwisko, s.nazwa
FROM fizjo f
LEFT JOIN reha r ON f.kod_fizjo = r.fizjo
LEFT JOIN zawodnik z ON r.zawodnik = z.numer 
LEFT JOIN sekcja s ON z.id_sekcji = s.id_sekcji;

SELECT s.nazwa, s.rodzaj, k1.nazwisko as "Szef sekcji", count(k.id_prac)
FROM sekcja s
LEFT JOIN kadra k ON s.id_sekcji = k.id_sekcji
LEFT JOIN kadra k1 ON s.szef_sekcji = k1.id_prac
GROUP BY s.id_sekcji, k1.nazwisko;