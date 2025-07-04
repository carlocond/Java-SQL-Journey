-- Seleziono tutti gli impiegati
select * from impiegato;

-- Seleziono gli impiegati del dipartimento NO
select
	cognome from impiegato
where
	dipartimento LIKE 'NO';

-- Seleziono gli impiegati con lo stipendio maggiore di 40
select
	cognome from impiegato
where
	stipendio > 40;

-- Seleziono gli impiegati del dipartimento NO con lo stipendio maggiore di 40
select
	cognome from impiegato
where
	dipartimento LIKE 'NO' and stipendio > 40;

-- Seleziono gli impiegati con il cognome che inizia con la lettera scelta
select 
	cognome from impiegato
where
	cognome LIKE 'R%';

-- Seleziono gli impiegati con il cognome che inizia con la lettera scelta e finisce con un'altra
select
	cognome from impiegato
where
	cognome LIKE 'V%i';

-- Seleziono gli impiegati con il cognome che inizia con la lettera scelta e che ha tot caratteri stabiliti
select
	cognome from impiegato
where
	cognome LIKE 'V___i';

-- Seleziono un valore che sta tra un valore e un altro BETWEEN / AND
select
	cognome, stipendio from impiegato
where
	stipendio >=10 and stipendio <=40;
-- Oppure
select
	cognome, stipendio from impiegato
where
	stipendio between 10 and 40;

-- Seleziono dove il dipartimento non è null NOT
select 
	cognome from impiegato
where
	dipartimento is not null;

-- Seleziono gli impiegati del dipartimento o sud o nord OR
select
	cognome, dipartimento from impiegato
where
	dipartimento = 'NO' or dipartimento = 'SU';
-- Oppure
select
	cognome, dipartimento from impiegato
where dipartimento in ('NO', 'SU');

-- Selezionare senza i duplicati
select distinct
	cognome, dipartimento from impiegato
where
	dipartimento in('NO', 'SU');

-- Contare gli impiegati per ogni dipartimento
select dipartimento, count(*)
from impiegato
group by dipartimento;


	