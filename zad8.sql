--1
SELECT e.numer, c.imie, c.nazwisko FROM egzemplarze e
LEFT JOIN czytelnicy c
ON e.numer_wypozycz=c.numer
WHERE e.numer_wypozycz IS NOT NULL;

--2
SELECT count(*) FROM egzemplarze
WHERE numer_wypozycz IS NULL;

--3
SELECT count(*)/4 FROM egzemplarze
WHERE kod_dziela IN (SELECT kod FROM dziela
                    WHERE nazw_autora='Sienkiewicz');

--4
SELECT tytul FROM dziela
WHERE kod NOT IN (SELECT kod_dziela FROM egzemplarze);

--5
SELECT c1.imie, c1.nazwisko, d.ilosc from 
czytelnicy c1 NATURAL JOIN
        (SELECT imie, nazwisko, count(*) as "ilosc" FROM 
        czytelnicy c LEFT JOIN egzemplarze e
        ON c.numer = e.numer_wypozycz
        group by nazwisko, imie) d
WHERE d.ilosc > c1.quota;

--6
SELECT COUNT(*) FROM egzemplarze e
LEFT JOIN dziela d ON e.kod_dziela=d.kod
WHERE d.nazw_autora='Sienkiewicz';

--7
SELECT tytul, nazw_autora FROM dziela 
WHERE kod IN(SELECT kod_dziela from egzemplarze
            group by kod_dziela
            order by count(*) desc
            limit 1);

--8
SELECT c1.imie, c1.nazwisko, d1.tytul, d.ilosc from 
    czytelnicy as c1 
NATURAL JOIN
    (SELECT imie, nazwisko, count(*) as "ilosc", kod_dziela FROM 
    czytelnicy c LEFT JOIN egzemplarze e
    ON c.numer = e.numer_wypozycz
    group by e.kod_dziela, nazwisko, imie) as d
LEFT JOIN 
    dziela as d1
    ON d1.kod=d.kod_dziela
WHERE d.ilosc > 1;

--9
SELECT c.numer, c.nazwisko, d.tytul, c1.numer, c1.nazwisko FROM
(czytelnicy c LEFT JOIN egzemplarze e
ON c.numer = e.numer_wypozycz)
JOIN
(czytelnicy c1 LEFT JOIN egzemplarze e1
ON c1.numer = e1.numer_wypozycz)
ON e.kod_dziela = e1.kod_dziela
RIGHT JOIN
dziela d ON d.kod = e.kod_dziela
WHERE c.numer != c1.numer;