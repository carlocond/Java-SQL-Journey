create table corsi(
	id integer primary key,
	nome varchar(30),
	crediti integer,
	studente integer references studenti(matricola)
	on update cascade on delete set null
	--Procedura a cascata
);

drop table corsi;