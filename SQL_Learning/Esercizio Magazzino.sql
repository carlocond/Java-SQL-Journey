CREATE TABLE Reparti(
codice_r bigserial primary key not null,
nome char(30) not null
);

CREATE TABLE Fornitori(
partita_iva char(11) primary key not null,
ragione_sociale char(40) not null,
indirizzo char(50),
telefono char(30),
email char(30),
sito_web char(30)
);

CREATE TABLE Prodotti(
codice_p char(20) primary key not null,
descrizione char(40) not null,
prezzo_vendita decimal,
prezzo_acquisto decimal,
giacenza integer,
cod_reparto bigint not null references Reparti(codice_r),
cod_fornitore char(11) not null references Fornitori(partita_iva)
);
