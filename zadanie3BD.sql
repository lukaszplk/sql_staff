SELECT * FROM Pracownicy 
WHERE projekt IN
    (SELECT p_id FROM Projekty 
      WHERE nazwa='Statistica');

SELECT nazwisko, pensja FROM Pracownicy 
  WHERE id_dzialu IN 
    (SELECT id_dzialu FROM Pracownicy 
      WHERE nazwisko='Cook' and imie='Ian');

SELECT nazwa FROM Projekty 
  WHERE p_id IN
    (SELECT projekt FROM Pracownicy 
      WHERE id_dzialu IN
        (SELECT id_dzialu FROM Dzialy 
          WHERE nazwa='Programisci'
        )
    );

SELECT nazwa FROM Dzialy 
  WHERE id_dzialu IN
    (SELECT id_dzialu FROM Pracownicy 
      WHERE projekt IN 
        (SELECT p_id FROM Projekty 
          WHERE nazwa='Inwentaryzacja'
        )
    );

SELECT imie, nazwisko, id_dzialu, pensja FROM Pracownicy 
  WHERE (id_dzialu, pensja) IN
    (SELECT id_dzialu, MIN(pensja) FROM Pracownicy 
     GROUP BY id_dzialu
     );

SELECT * FROM pracownicy
WHERE id NOT IN 
     (SELECT prac_kontaktowy FROM klienci
     WHERE prac_kontaktowy IS NOT NULL);




SELECT nazwisko, imie FROM Pracownicy p1 
WHERE pensja > (SELECT 0.5*max(pensja) FROM Pracownicy p2
                WHERE p2.id_dzialu=p1.id_dzialu
                GROUP BY id_dzialu)
ORDER BY id_DZIALU, PENSJA;

SELECT * FROM Dzialy D
WHERE NOT EXISTS(SELECT id_dzialu
                FROM Pracownicy P 
                WHERE D.id_dzialu=P.id_dzialu and P.projekt='p1');

SELECT nazwisko, pensja FROM Pracownicy p1 
WHERE 3> (SELECT COUNT(*) FROM Pracownicy p2
            WHERE p2.pensja>p1.pensja)
AND pensja IS NOT NULL
ORDER BY pensja DESC;

SELECT * FROM Pracownicy P
WHERE EXISTS (SELECT nazwa FROM Projekty PR
                WHERE P.projekt=PR.p_id and termin_oddania<current_date)
AND projekt IS NOT NULL;