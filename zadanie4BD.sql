--1
SELECT p.imie, p.nazwisko, d.nazwa FROM pracownicy p
JOIN dzialy d ON (p.id_dzialu = d.id_dzialu);

--2
SELECT p2.nazwa, p.nazwisko, p.pensja FROM pracownicy p
RIGHT JOIN projekty p2 ON (p.id = p2.szef_projektu);

--3
SELECT DISTINCT (p.imie, p2.imie) FROM pracownicy p
CROSS JOIN pracownicy p2;

--4
SELECT k.nazwa, k.telefon, p.imie, p.nazwisko FROM klienci k
LEFT JOIN pracownicy p ON (k.prac_kontaktowy = p.id);

--5
SELECT p.imie, p.nazwisko, p2.nazwa FROM pracownicy p
LEFT JOIN projekty p2 ON (p.projekt = p2.p_id);