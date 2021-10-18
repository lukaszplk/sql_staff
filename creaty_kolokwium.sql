CREATE TABLE Typ_opon (
    id_t INTEGER PRIMARY KEY,
    rodzaj VARCHAR(50),
    rozmiar VARCHAR(20),
    kord VARCHAR(30)
);

CREATE TABLE Opony (
    id_o INTEGER PRIMARY KEY,
    id_t INTEGER REFERENCES TYP_OPON(ID_T),
    data_prod	DATE
);

CREATE TABLE Materiały (
    id_mat INTEGER PRIMARY KEY,
    nazwa VARCHAR(50),
    cena_jedn NUMERIC(8,2),
    dostawca VARCHAR(50),
    data_dostawy DATE
);

CREATE TABLE Produkcja (
    id_o INTEGER REFERENCES OPONY(ID_O),
    id_mat INTEGER REFERENCES Materiały(id_mat),
    ilosc NUMERIC(8,2)
);


INSERT INTO Typ_opon VALUES (1,'radialna','225/55/18R','wiskoza');
INSERT INTO Typ_opon VALUES (2,'diagonalna','225/55/18','wiskoza');
INSERT INTO Typ_opon VALUES (3,'radialna','205/55 R16','wiskoza');
INSERT INTO Typ_opon VALUES (4,'diagonalna','205/55 16','wiskoza');
INSERT INTO Typ_opon VALUES (6,'radialna','225/55/18R','poliester');
INSERT INTO Typ_opon VALUES (5,'diagonalna','225/55/18','włókno szklane');
INSERT INTO Typ_opon VALUES (7,'diagonalna','225/55/18','poliester');
INSERT INTO Typ_opon VALUES (8,'radialna','205/55 R16','poliester');
INSERT INTO Typ_opon VALUES (9,'diagonalna','205/55 16','poliester');
INSERT INTO Typ_opon VALUES (10,'radialna','195/65 R15','stal');
INSERT INTO Typ_opon VALUES (11,'diagonalna','195/65 15','stal');
INSERT INTO Typ_opon VALUES (12,'radialna','205/55 R16','włókno szklane');
INSERT INTO Typ_opon VALUES (13,'diagonalna','205/55 16','włókno szklane');
INSERT INTO Typ_opon VALUES (14,'radialna','195/65 R15','poliamid');
INSERT INTO Typ_opon VALUES (15,'diagonalna','195/65 15','poliamid');

INSERT INTO Opony VALUES (1,5,'2020-10-01');
INSERT INTO Opony VALUES (2,1,'2021-02-20');
INSERT INTO Opony VALUES (3,2,'2020-11-01');
INSERT INTO Opony VALUES (4,3,'2021-01-11');
INSERT INTO Opony VALUES (5,4,'2020-11-01');
INSERT INTO Opony VALUES (6,6,'2021-03-08');
INSERT INTO Opony VALUES (7,7,'2021-02-12');
INSERT INTO Opony VALUES (8,8,'2020-10-01');
INSERT INTO Opony VALUES (9,10,'2020-10-01');
INSERT INTO Opony VALUES (10,9,'2020-10-01');
INSERT INTO Opony VALUES (11,2,'2021-04-01');
INSERT INTO Opony VALUES (12,15,'2020-10-01');
INSERT INTO Opony VALUES (13,1,'2021-04-01');
INSERT INTO Opony VALUES (14,3,'2021-03-13');
INSERT INTO Opony VALUES (15,2,'2021-04-01');


INSERT INTO Materiały VALUES (1,'V13isf',102.3, 'FZ1', '2021-01-15');
INSERT INTO Materiały VALUES (2,'AH1',220, 'FZ1', '2021-04-15');
INSERT INTO Materiały VALUES (3,'KL11',318.5, 'AH1', '2021-02-11');
INSERT INTO Materiały VALUES (4,'MNH11',218, 'PHU2', '2021-03-18');
INSERT INTO Materiały VALUES (5,'KL10',318.5, 'AH1', NULL);
INSERT INTO Materiały VALUES (6,'MNH11',200.67, 'AH1', '2021-04-18');
INSERT INTO Materiały VALUES (7,'V13isf-1',110, 'PHU2', '2021-04-28');
INSERT INTO Materiały VALUES (8,'KL10',318.5, 'AH1', NULL);

INSERT INTO Produkcja VALUES (1,4,110);
INSERT INTO Produkcja VALUES (2,1,500);
INSERT INTO Produkcja VALUES (4,3,100);
INSERT INTO Produkcja VALUES (11,7,1000);
INSERT INTO Produkcja VALUES (6,3,550);
INSERT INTO Produkcja VALUES (3,2,700);
INSERT INTO Produkcja VALUES (5,1,500);
INSERT INTO Produkcja VALUES (9,6,100);
INSERT INTO Produkcja VALUES (12,4,600);
INSERT INTO Produkcja VALUES (8,3,800);
INSERT INTO Produkcja VALUES (7,2,800);
INSERT INTO Produkcja VALUES (10,6,100);
INSERT INTO Produkcja VALUES (13,4,300);
INSERT INTO Produkcja VALUES (14,4,340);
INSERT INTO Produkcja VALUES (15,7,600);
INSERT INTO Produkcja VALUES (15,7,200);