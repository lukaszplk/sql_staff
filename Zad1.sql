SELECT * FROM zawodnik;
SELECT * FROM zawodnik WHERE nazwisko like '%ski' ORDER BY nazwisko;
SELECT * FROM zawodnik WHERE imie = 'Tomasz' ORDER BY kwota DESC;
SELECT * FROM zawodnik WHERE kwota<4000 ORDER BY nazwisko;
SELECT * FROM zawodnik  WHERE id_sekcji = 'sm';
SELECT nazwisko, stawka*0.83 FROM fizjo;
SELECT * FROM reha WHERE data >= '2020-10-1';
SELECT * FROM sekcja WHERE szef_sekcji is NULL;
