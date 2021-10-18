SELECT * FROM pracownicy;
SELECT * FROM projekty;
SELECT * FROM klienci;

SELECT imie, nazwisko FROM pracownicy WHERE imie = 'Davis'
UNION
SELECT imie, nazwisko FROM pracownicy WHERE imie = 'Erich';

SELECT imie, nazwisko FROM pracownicy
EXCEPT
SELECT imie, nazwisko FROM pracownicy WHERE id_dzialu = 1;

SELECT * FROM 
klienci LEFT JOIN pracownicy
ON klienci.prac_kontaktowy = pracownicy.id;

SELECT * FROM 
(SELECT * FROM klienci WHERE prac_kontaktowy IS NOT NULL) as klienci
RIGHT JOIN pracownicy
ON klienci.prac_kontaktowy = pracownicy.id;

SELECT * FROM 
pracownicy LEFT JOIN 
(SELECT * FROM klienci WHERE prac_kontaktowy IS NOT NULL) as klienci
ON klienci.prac_kontaktowy = pracownicy.id;

SELECT *, COALESCE(prac_kontaktowy, k_id, -1) as prac_kontaktowy FROM klienci;

SELECT prac_kontaktowy, sum(k_id) FROM klienci WHERE prac_kontaktowy IS NOT NULL GROUP BY prac_kontaktowy;

SELECT prac_kontaktowy, sum(k_id) FROM klienci group by klienci.prac_kontaktowy having prac_kontaktowy IS NOT NULL;

SELECT * FROM pracownicy WHERE imie like 'D%';

CREATE TABLE kostki(
    one int,
    two int,
    three int
);
INSERT INTO kostki VALUES (1,1,1);
INSERT INTO kostki VALUES (1,1,2);
INSERT INTO kostki VALUES (1,1,3);
INSERT INTO kostki VALUES (1,2,1);
INSERT INTO kostki VALUES (1,2,2);
INSERT INTO kostki VALUES (1,2,3);
INSERT INTO kostki VALUES (1,3,1);
INSERT INTO kostki VALUES (1,3,2);
INSERT INTO kostki VALUES (1,3,3);

INSERT INTO kostki VALUES (9,1,1);
INSERT INTO kostki VALUES (null,null,9);
INSERT INTO kostki VALUES (1,1,9);


Drop table kostki;

SELECT one, two, sum(three) FROM kostki group by cube(one, two) order by one, two;

