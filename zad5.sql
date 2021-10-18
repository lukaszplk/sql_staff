SELECT min(pensja), max(pensja), max(pensja)-min(pensja) FROM kadra;

SELECT avg(kwota), coalesce(id_sekcji, 'brak przypisania') FROM zawodnik GROUP BY id_sekcji ORDER BY avg(kwota) DESC;

SELECT count(*) FROM zawodnik WHERE id_sekcji = 'sm';

SELECT sum(kwota), id_sekcji FROM zawodnik WHERE id_sekcji IS NOT NULL GROUP BY id_sekcji ORDER BY id_sekcji;

SELECT id_sekcji, count(*) FROM zawodnik WHERE id_sekcji IS NOT NULL GROUP BY id_sekcji HAVING count(*) < 4 ORDER BY count DESC;

SELECT id_sekcji, round(avg(kwota), 2), count(*) FROM zawodnik WHERE id_sekcji IS NOT NULL GROUP BY id_sekcji;

SELECT stanowisko, id_sekcji, round(avg(COALESCE(pensja, 0)),2) FROM kadra WHERE stanowisko IS NOT NULL GROUP BY ROLLUP(stanowisko, id_sekcji) ORDER BY stanowisko;

SELECT stanowisko, id_sekcji, round(avg(COALESCE(pensja, 0)),2) FROM kadra WHERE stanowisko IS NOT NULL AND id_sekcji IS NOT NULL GROUP BY CUBE(id_sekcji, stanowisko) ORDER BY (stanowisko, id_sekcji);