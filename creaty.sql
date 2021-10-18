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


CREATE TABLE moja(
    id SERIAL,
    num1 INT,
    num2 INT,
    num3 INT
);