SELECT nazwa, telefon, prac_kontaktowy FROM klienci GROUP BY CUBE(nazwa, telefon, prac_kontaktowy);

SELECT nazwa, count(*) FROM pracownicy LEFT JOIN dzialy
USING(id_dzialu) GROUP BY dzialy.nazwa;

SELECT nazwisko, pensja, nazwa FROM pracownicy LEFT JOIN projekty
ON pracownicy.projekt=projekty.p_id WHERE id_dzialu=4;

SELECT imie, nazwisko, projekty.nazwa FROM
pracownicy JOIN dzialy USING(id_dzialu)
LEFT JOIN projekty ON pracownicy.projekt=projekty.p_id
WHERE dzialy.nazwa='Programisci';

SELECT klienci.nazwa, imie, nazwisko, dzialy.nazwa as dzial FROM klienci, pracownicy, dzialy
WHERE klienci.prac_kontaktowy=pracownicy.id AND pracownicy.id_dzialu=dzialy.id_dzialu AND klienci.nazwa='BitBit';

SELECT klienci.nazwa, imie, nazwisko, dzialy.nazwa as dzial FROM
klienci LEFT JOIN pracownicy ON klienci.prac_kontaktowy=pracownicy.id
LEFT JOIN dzialy ON pracownicy.id_dzialu=dzialy.id_dzialu
WHERE klienci.nazwa='BitBit'; 

SELECT nazwa, p2.nazwisko, count(DISTINCT(p1.id_dzialu)) as l_prac FROM 
projekty LEFT JOIN pracownicy as p1 ON projekty.p_id=p1.projekt
LEFT JOIN pracownicy as p2 ON projekty.szef_projektu=p2.id
GROUP BY p_id, nazwa, p2.nazwisko;