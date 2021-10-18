--1
SELECT id_o, data_prod, char_length(kord) FROM
opony JOIN typ_opon
USING(id_t);

--2
SELECT id_mat, nazwa, dostawca, avg(cena_jedn) FROM materiały
WHERE data_dostawy > '01-01-2021'
GROUP BY ROLLUP(id_mat, dostawca, nazwa);

--3
SELECT distinct(m.nazwa) FROM
opony o left join produkcja p
ON o.id_o = p.id_o
LEFT JOIN materiały m
ON p.id_mat = m.id_mat
WHERE NOT o.data_prod < '2021-03-01';

--4
SELECT t1.rozmiar, t1.kord, t1.rodzaj, t2.ilosc FROM 
typ_opon t1 LEFT JOIN 
(SELECT rozmiar, count(*) as ilosc FROM typ_opon
GROUP BY rozmiar) t2
using(rozmiar)
WHERE rozmiar NOT LIKE '%R';

--5
SELECT ROUND(cena_jedn * 1.23) FROM materiały
WHERE data_dostawy IS NULL;

--6
--W poleceniu była błedna podpowieź, najnowsza data oznacza największą date 2021-04-01
--z taka datą w bazie istnieją dwa materialy o id 1 i 2
SELECT p.id_mat, sum(p.ilosc) FROM
produkcja p LEFT JOIN opony o
ON p.id_o = o.id_o
WHERE o.data_prod >= ALL(SELECT data_prod FROM opony)
GROUP BY p.id_mat;

--7
SELECT m.nazwa, p.ilosc, p.id_o, o.data_prod FROM 
materiały m LEFT JOIN produkcja p
ON m.id_mat = p.id_mat
LEFT JOIN opony o
ON o.id_o = p.id_o
ORDER BY m.nazwa; 