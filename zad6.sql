SELECT * FROM kadra 
WHERE id_prac IN
    (SELECT szef_sekcji FROM sekcja 
    WHERE szef_sekcji IS NOT NULL)
AND stanowisko != 'trener';

SELECT nazwisko, kwota FROM zawodnik
WHERE id_sekcji IN
    (SELECT id_sekcji FROM kadra
    WHERE nazwisko = 'Jonas');

SELECT nazwisko, stanowisko FROM kadra
WHERE id_sekcji IN
    (SELECT id_sekcji FROM sekcja
    WHERE nazwa='siatkowka');
                    
SELECT nazwa, rodzaj FROM sekcja
WHERE id_sekcji IN
    (SELECT id_sekcji FROM zawodnik
    WHERE numer IN
        (SELECT zawodnik FROM reha
        WHERE fizjo IN
            (SELECT kod_fizjo FROM fizjo
            WHERE nazwisko='Ponikiewicz')));

SELECT * FROM sekcja
WHERE id_sekcji NOT IN
    (SELECT id_sekcji FROM zawodnik
    WHERE id_sekcji IS NOT NULL);

SELECT nazwisko FROM kadra
WHERE id_prac IN
    (SELECT szef_sekcji FROM sekcja
    WHERE id_sekcji NOT IN
        (SELECT id_sekcji FROM zawodnik
        WHERE numer IN
            (SELECT zawodnik FROM reha
            WHERE fizjo IN
                (SELECT kod_fizjo FROM fizjo
                WHERE nazwisko='Artunska'))));

SELECT nazwa, rodzaj FROM sekcja
WHERE szef_sekcji IN
    (SELECT id_prac FROM kadra
    WHERE id_prac IN
        (SELECT szef_sekcji FROM sekcja
        WHERE szef_sekcji IS NOT NULL)
    AND pensja>=ALL
        (SELECT pensja FROM kadra
        WHERE pensja IS NOT NULL AND id_prac IN
            (SELECT szef_sekcji FROM sekcja
            WHERE szef_sekcji IS NOT NULL)));

SELECT nazwisko, imie
FROM zawodnik z1
    WHERE kwota > (SELECT 0.9*max(kwota) FROM zawodnik z2
                    WHERE z2.id_sekcji=z1.id_sekcji
                    GROUP BY id_sekcji);

SELECT nazwisko, pensja From kadra k1
WHERE 2 >
    (
    SELECT count(*)
    FROM kadra k2
    WHERE k2.pensja>k1.pensja
    )
AND pensja IS NOT NULL;

SELECT * FROM zawodnik z1
WHERE EXISTS
    (SELECT zawodnik FROM reha r1
    WHERE  r1.zawodnik = z1.numer);              