CREATE TABLE pojazdy(
    vin VARCHAR(30) UNIQUE,
    marka VARCHAR(30) NOT NULL,
    kolor VARCHAR(30),
    wlasciciel VARCHAR(150) NOT NULL
);

CREATE TYPE tak_nie as ENUM('tak','nie');

CREATE TABLE zlecenia(
    id INT PRIMARY KEY,
    data_rozpoczecia DATE DEFAULT CURRENT_DATE,
    nazwa VARCHAR(30),
    zespol INT,
    termin DATE NOT NULL CHECK(termin > data_rozpoczecia),
    ukonczone tak_nie NOT NULL,
    koszt INT CHECK(koszt>=0),
    pojazd VARCHAR(30) REFERENCES pojazdy(vin)
);



INSERT INTO pojazdy 
VALUES('S9867F7618','Ford Mondeo', 'czarny', 'Tomasz Nowak'),
('J7126G7821','Mazda',NULL,'Jan Kowalski');

INSERT INTO zlecenia 
VALUES(1,'08-01-2021','rejestracja pojazdu',1,'12-02-2021','nie',12000,'J7126G7821'),
(2,'01-02-2021','naprawa pojazdu',2,'12-03-2021','tak',200,'J7126G7821'),
(3,'12-02-2021','rejestracja pojazdu',1,'15-02-2021','tak',200,'S9867F7618');

INSERT INTO zlecenia(id,nazwa,zespol,termin,ukonczone,koszt)
VALUES(4,'rejestracja pojazdu',1,CURRENT_DATE + INTERVAL '3 DAYS','tak',200);



SELECT * FROM zlecenia WHERE nazwa like 'n%';
DELETE FROM zlecenia WHERE ukonczone='tak' AND termin < CURRENT_DATE;
DELETE FROM zlecenia WHERE pojazd is NULL;
UPDATE zlecenia SET termin = CURRENT_DATE + INTERVAL '25 DAYS', koszt = koszt*1.2 WHERE termin<CURRENT_DATE AND ukonczone='nie';
DELETE FROM zlecenia;
DROP TABLE zlecenia, pojazdy;
