CREATE TABLE sekcja (
    id_sekcji   VARCHAR(2) NOT NULL PRIMARY KEY,
    nazwa       VARCHAR(30) NOT NULL,
    rodzaj      VARCHAR(30) NOT NULL,
    szef_sekcji INTEGER
);

CREATE TABLE kadra (
    id_prac     INTEGER NOT NULL PRIMARY KEY,
    nazwisko           VARCHAR(40) NOT NULL,
    imie               VARCHAR(30) NOT NULL,
    stanowisko         VARCHAR(40),
    pensja	NUMERIC(8,2),	
    id_sekcji   Varchar(2) REFERENCES sekcja
);

CREATE TABLE zawodnik (
    numer              INTEGER NOT NULL PRIMARY KEY,
    nazwisko           VARCHAR(40) NOT NULL,
    imie               VARCHAR(30) NOT NULL,
    id_sekcji	VARCHAR(2) REFERENCES sekcja,
    kwota      NUMERIC(8, 2) NOT NULL
);

CREATE TABLE fizjo (
    kod_fizjo        VARCHAR(3) NOT NULL PRIMARY KEY,
    nazwisko   VARCHAR(40) NOT NULL,
    imie       VARCHAR(30) NOT NULL,
    stawka     NUMERIC(5, 2)
);

CREATE TABLE reha (
    id_sesji	INTEGER PRIMARY KEY,		
    fizjo   VARCHAR(3)  REFERENCES fizjo(kod_fizjo),
    zawodnik      INTEGER REFERENCES zawodnik(numer),
    data          DATE
);

INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('sz', 'siatkowka', 'zenska', 4);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('sm', 'siatkowka', 'meska', NULL);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('kz', 'koszykowka', 'zenska', 2);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('km', 'koszykowka', 'meska', NULL);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('p1', 'pilka nozna', 'zenska', NULL);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('p2', 'pilka nozna', 'meska', NULL);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('r1', 'pilka reczna', 'zenska', NULL);
INSERT INTO SEKCJA(ID_SEKCJI, NAZWA, RODZAJ, SZEF_SEKCJI) VALUES ('r2', 'pilka reczna', 'meska', 7);
INSERT INTO SEKCJA VALUES('tk', 'tenis ziemny', 'zenska', null);
INSERT INTO SEKCJA VALUES ('tm', 'tenis ziemny', 'meska', 5);

INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (1, 'Johnson', 'Ted', 'trener', NULL, 'sz');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (3, 'Pickand', 'Noel', 'asystent', 10000, 'sz');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (2, 'Baker', 'John', 'trener', 12000,'sm');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (4, 'Mounteney', 'Nicolas', 'asystent', NULL,'km');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (5, 'Killy', 'Michael', 'trener', 9200,'p1');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (6, 'Jonas', 'Tom', 'trener', 14000,'p2');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (8, 'Hopkins', 'Calvin', 'asystent', 1300, 'p2');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (7, 'Loudry', 'Robert', 'trener', 12000,'r1');
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (9, 'Nikolas', 'Bob', NULL, NULL, NULL);
INSERT INTO KADRA(ID_PRAC, NAZWISKO, IMIE, STANOWISKO, PENSJA, ID_SEKCJI) VALUES (10, 'Toddler', 'John', NULL, NULL, 'sz');
INSERT INTO KADRA (nazwisko, imie, id_sekcji, id_prac) VALUES ('Novak', 'Robert', 'p2', 11);

INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (1, 'Kowalski', 'Tomasz', 'sm', 5200);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (2, 'Juszczyk', 'Adam', 'sm', 5400);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (3, 'Nowak', 'Tomasz', 'sm', 5400);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (4, 'Rowinski', 'Jan', 'sm', 5000);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (5, 'Puszczyk', 'Andrzej', 'sm', 4200);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (6, 'Dworczyk', 'Andrzej', 'km', 4200);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (7, 'Janicki', 'Krzysztof','km', 4400);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (8, 'Jaworski', 'Ariel', 'p2', 5645);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (9, 'Zaborski', 'Tomasz', 'p2', 5230);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (10, 'Jakubowski', 'Natan', 'p2', 6100);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (11, 'Kowalczykowski', 'Mateusz', 'r2', 3400);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (12, 'Nowinska', 'Renata', 'km', 5400.60);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (13, 'Uminski', 'Mariusz', 'r2', 2850);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (14, 'Janiak', 'Jedrzej', 'r2', 5200);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (15, 'Kowalczyk', 'Anna', 'km', 3400);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (16, 'Jaworska', 'Natalia', 'kz', 4500);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (17, 'Niewiadomska', 'Zaneta', 'r1', 5600);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (18, 'Zubowska', 'Anna', 'r1', 2500);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (19, 'Natalenko', 'Joanna', 'r1', 5850);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (20, 'Kowlarska', 'Anna', NULL, 5850);
INSERT INTO ZAWODNIK(NUMER, NAZWISKO,IMIE, ID_SEKCJI, KWOTA) VALUES (21, 'Nowinski', 'Tomasz', NULL, 6200);
INSERT INTO ZAWODNIK VALUES (22, 'Kowalski', 'Krzysztof', 'sm', 6000);

INSERT INTO FIZJO VALUES (12, 'Ponikiewicz', 'Jonasz', 80);
INSERT INTO FIZJO VALUES (24, 'Jakubczyk', 'Przemyslaw', 75);
INSERT INTO FIZJO VALUES ('n1', 'Artunska', 'Joanna', NULL);
INSERT INTO FIZJO VALUES (14, 'Lubowski', 'Grzegorz', 85);
INSERT INTO FIZJO VALUES (20, 'Ankiewicz', 'Ryszard', 60);
INSERT INTO FIZJO VALUES (11, 'Lodowska', 'Arleta', NULL);

INSERT INTO REHA (id_sesji,fizjo,zawodnik,data) VALUES (4, 'n1', 12, '2020-10-01');
INSERT INTO REHA (ID_SESJI, FIZJO, ZAWODNIK, DATA) VALUES (1, '12', 11, NULL);
INSERT INTO REHA (ID_SESJI, FIZJO, ZAWODNIK, DATA) VALUES (2, '14', 9, TO_DATE('2020-09-09','YYYY-MM-DD'));
INSERT INTO REHA (ID_SESJI, FIZJO, ZAWODNIK, DATA) VALUES (3, '12', 10, '2020-09-12');
INSERT INTO REHA VALUES(5,'11',9,'2020-11-26');
INSERT INTO REHA VALUES (6, 'n1', 11, '2020-12-12');
INSERT INTO REHA VALUES (7, 24, 17, '2021-01-15');
INSERT INTO REHA VALUES (8, 24, 17, '2021-05-15');
INSERT INTO REHA VALUES (9, 24, 17, '2021-09-15');


