SELECT min(pensja) , max(pensja) ,max(pensja) - min(pensja) as diff FROM pracownicy;

SELECT id_dzialu, avg(pensja) FROM pracownicy GROUP BY id_dzialu ORDER BY avg DESC;

SELECT count(*) FROM pracownicy WHERE projekt = 'p2';

SELECT id_dzialu, SUM(pensja) FROM pracownicy GROUP BY id_dzialu ORDER BY id_dzialu;

SELECT id_dzialu FROM pracownicy GROUP BY id_dzialu HAVING count(*)>2 ORDER BY count(*) DESC;

SELECT projekt, round(avg(pensja), 2) as srednia_pens, count(*) as l_prac FROM pracownicy WHERE projekt IS NOT NULL GROUP BY projekt; 