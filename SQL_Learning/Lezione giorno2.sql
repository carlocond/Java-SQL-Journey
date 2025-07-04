SELECT matricola, nome, cognome, data_nascita
	FROM public.studenti;

-- aggiungo una nuova colonna
alter table studenti
add column cf char(16);

-- modifico il tipo della colonna cf
alter table studenti
alter column cf
set data type varchar(16);

-- assegno un valore di default ad una colonna
alter table studenti
alter column cf set default 'CIURN123MNEU87XX';

-- elimino un valore di default da una colonna
alter table studenti
alter column cf drop default;

-- applico il not null sulla colonna cf
alter table studenti
alter column cf set not null;

-- rinomino una colonna
alter table studenti
rename column cf to codice_fiscale;

-- cancello una colonna
alter table studenti
drop column codice_fiscale;

-- elimino il vincolo di primary key
alter table studenti
drop constraint studenti_pkey; 

-- elimino il vincolo di foreign key
alter table corsi
drop constraint corsi_studente_fkey;

--aggiungo la primary key
alter table studenti
add primary key(matricola);

-- aggiungo la foreign key
alter table corsi
add constraint corsi_studenti_fk FOREIGN KEY(studente)
REFERENCES studenti(matricola)
on update cascade on delete set null;

-- elimino la check sulla tabella studenti
alter table studenti
drop constraint studenti_data_nascita_check;

-- creo la check
alter table studenti
add constraint studenti_data_nascita_check check(data_nascita < '2007-07-04');
