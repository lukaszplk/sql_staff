CREATE TABLE pojazdy(
    vin VARCHAR(30) UNIQUE,
    marka VARCHAR(30) NOT NULL,
    kolor VARCHAR(30),
    wlasciciel VARCHAR(150) NOT NULL
);

CREATE TABLE filmy(
    tytul VARCHAR(30) PRIMARY KEY UNIQUE,
    wersja_jezykowa VARCHAR(30) NOT NULL,
    rezyser VARCHAR(30),
    scenarzysta VARCHAR(30),
    obsada VARCHAR(150),
    producent INT
);

CREATE TABLE producenci(
    id INT PRIMARY KEY,
    imie VARCHAR(30) ,
    nazwisko VARCHAR(30),
    zdobyte_nagrody VARCHAR(300),
    wyprodukowane_filmy VARCHAR(30) REFERENCES filmy(tytul)
);

CREATE TABLE aktorzy(
    id INT PRIMARY KEY,
    imie VARCHAR(30),
    nazwisko VARCHAR(30),
    zdobyte_nagrody VARCHAR(300),
    gral_w VARCHAR(30) 
);


ALTER TABLE aktorzy
ADD CONSTRAINT constraint1
FOREIGN KEY (gral_w)
REFERENCES filmy(tytul)
ON DELETE CASCADE;

ALTER TABLE filmy
ADD CONSTRAINT constraint2
FOREIGN KEY (obsada)
REFERENCES aktorzy(id)
ON DELETE CASCADE;

ALTER TABLE filmy
ADD CONSTRAINT constraint3
FOREIGN KEY (producent)
REFERENCES producenci(id)
ON DELETE CASCADE;

ALTER TABLE producenci
ADD CONSTRAINT constraint4
FOREIGN KEY (wyprodukowane_filmy)
REFERENCES filmy(tytul)
ON DELETE CASCADE;
