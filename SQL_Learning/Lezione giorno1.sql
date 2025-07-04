create table studenti(
	matricola integer primary key,
	nome varchar(30) default 'Mario' not null,
	cognome varchar(30),
	data_nascita date check(data_nascita<'2007-07-03')
);

drop table studenti;

create table corsi(
	id integer primary key,
	nome varchar(30),
	crediti integer,
	studente integer references studenti(matricola)
);
