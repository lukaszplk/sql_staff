create table autobusy(
    nr_aut integer,
    nr_linii integer,
    kierowca varchar(50)
    );
    
create table linie(
  nr_linii integer,
  rodzaj varchar(10)
);

create table przystanki(
nr_przyst integer,
nazwa_ulicy varchar(40)
);

create table przyst_linii(
  nr_linii integer,
  nr_przyst integer,
  nr_kolejny integer
);

insert into autobusy (nr_aut, nr_linii, kierowca) values (356,22, 'Nowak');
insert into autobusy values(127,22, 'Wolowski');
insert into autobusy values(418,15, 'Nowaczynski');
insert into autobusy values(118,1, 'Jablonski');

insert into linie values(22, 'dzienna');
insert into linie values(15, 'dzienna');
insert into linie values(1, 'nocna');

insert into przystanki values (1, 'Olimpijska');
insert into przystanki values (2, 'Konstytucji');
insert into przyst_linii values (22,1, 2);