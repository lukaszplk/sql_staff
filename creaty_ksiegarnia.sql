CREATE TABLE Dziela (
    Kod INTEGER PRIMARY KEY,
    tytul VARCHAR(50),
    Im_autora VARCHAR(50),
    Nazw_autora VARCHAR(50)
);

CREATE TABLE Czytelnicy (
  Numer INTEGER PRIMARY KEY,
  Imie VARCHAR(30),
  Nazwisko VARCHAR(50),
  Adres VARCHAR(50),
  Quota INTEGER
);

CREATE TABLE Egzemplarze (
    Numer INTEGER PRIMARY KEY,
    Kod_dziela INTEGER REFERENCES Dziela(Kod),
    Numer_wypozycz INTEGER REFERENCES Czytelnicy (Numer)
);


INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('1','consequat enim diam','Naomi','commodo');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('2','Morbi neque tellus,','Tanya','dolor.');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('3','congue a, aliquet','September','Quisque');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('4','vitae, orci. Phasellus','Sybill','dui');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('5','ultrices. Vivamus rhoncus.','Erasmus','elit.');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('6','primis in faucibus','Shellie','ultrices');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('7','ligula eu enim.','Josiah','Duis');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('8','egestas. Aliquam nec','Cullen','laoreet,');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('9','dapibus rutrum, justo.','Ryder','Aliquam');
INSERT INTO Dziela (Kod,Tytul,Im_autora,Nazw_autora) VALUES ('10','tempor diam dictum','Wylie','semper');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (11, 'Potop', 'Henryk', 'Sienkiewicz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (12, 'Kordian', 'Juliusz', 'Slowacki');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (13, 'Inferno', 'Dan', 'Brown');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (14, 'Ogniem i Mieczem', 'Henryk', 'Sienkiewicz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (15, 'Krzyzacy', 'Henryk', 'Sienkiewicz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (16, 'Zbrodnia i Kara', 'Fiodor', 'Dostojewski');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (17, 'Lalka', 'Boleslaw', 'Prus');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (18, 'Pan Tadeusz', 'Adam', 'Mickiewicz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (19, 'Pan Wolodyjowski', 'Henryk', 'Sienkiewicz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (20, 'Wesele', 'Stanislaw', 'Wyspianski');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (21, 'Sklepy Cynamonowe', 'Bruno', 'Schulz');
INSERT INTO DZIELA (KOD, TYTUL, IM_AUTORA, NAZW_AUTORA) VALUES (22, 'Książka Commodo', 'Bruno', 'commodo');



INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('1','Mallory','Convallis','Toruń, ul. Lubicka','4');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('2','Eden','Ullamcorper.','Toruń, ul. Konstytucji 3 Maja','3');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('3','Allegra','Tellus','Toruń, ul. Mostowa','5');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('4','Genevieve','Euismod','Toruń, ul. Moniuszki','2');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('5','Uta','Turpis','Toruń, ul. Kwiatowa','1');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('6','Tucker','Aliquam','Toruń, ul. Chełmińska','1');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('7','Vincent','Libero','Toruń, ul. Szeroka','3');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('8','Skyler','Lectus','Toruń, ul. Kraszewskiego,','3');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('9','Amena','Tristique','Toruń, ul. Fredry','2');
INSERT INTO Czytelnicy (Numer,Imie,Nazwisko,Adres,Quota) VALUES ('10','Ramona','Convallis','Toruń, ul. Uniwersytecka','5');
INSERT INTO CZYTELNICY (NUMER, IMIE, NAZWISKO, ADRES, QUOTA) VALUES (11, 'Piotr', 'Kowalski', 'Slowackiego 3, Torun', 3);
INSERT INTO CZYTELNICY (NUMER, IMIE, NAZWISKO, ADRES, QUOTA) VALUES (12, 'Marta', 'Nowak', 'Falata 23, Torun', 3);
INSERT INTO CZYTELNICY (NUMER, IMIE, NAZWISKO, ADRES, QUOTA) VALUES (13, 'Natalia', 'Mielnikow', 'Uniwersytecka 5, Torun', 3);

INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (1, 11, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (2, 11, 10);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (3, 12, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (4, 12, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (5, 13, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (6, 13, 7);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (7, 14, 7);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (8, 14, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (9, 15, 7);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (10, 15, NULL);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (11, 16, 10);
INSERT INTO Egzemplarze (Numer, Kod_dziela, Numer_wypozycz) VALUES (12, 16, 1);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (21, 11, 1);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (22, 11, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (23, 12, 1);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (24, 12, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (25, 13, 1);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (26, 13, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (27, 14, 1);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (28, 14, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (29, 15, 2);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (30, 15, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (31, 16, 2);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (32, 16, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (33, 17, 2);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (34, 17, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (35, 18, 3);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (36, 18, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (37, 19, 3);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (38, 19, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (39, 11, 3);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (40, 21, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (41, 21, 6);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (42, 21, null);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (43, 21, 6);
INSERT INTO EGZEMPLARZE (NUMER, KOD_DZIELA, NUMER_WYPOZYCZ) VALUES (44, 21, 6);