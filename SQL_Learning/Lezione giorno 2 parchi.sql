CREATE TABLE parchi (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    indirizzosede VARCHAR(30) NOT NULL
);
CREATE TABLE ordini (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);
CREATE TABLE specie (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    rischioestinzione CHAR(1) NOT NULL CHECK (rischioestinzione IN ('N', 'B', 'M', 'E')),
    codiceordine INT NOT NULL,
    FOREIGN KEY (codiceordine) REFERENCES ordini(codice)
);
CREATE TABLE animali (
    codice SERIAL PRIMARY KEY,
    descrizione VARCHAR(30),
    sesso CHAR(1),
    salute CHAR(1) CHECK (salute IN ('O', 'B', 'C', 'P')),
    anzianità CHAR(1) CHECK (anzianità IN ('C', 'A')),
    annonascita SMALLINT,
    codiceparco INT NOT NULL,
    codicespecie INT NOT NULL,
    FOREIGN KEY (codiceparco) REFERENCES parchi(codice),
    FOREIGN KEY (codicespecie) REFERENCES specie(codice)
);
CREATE TABLE speciepiante (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);
CREATE TABLE piante (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
	categoria CHAR(1) NOT NULL CHECK (categoria IN ('A', 'B', 'P')),
    stagionefioritura CHAR(1) CHECK (stagionefioritura IN ('I', 'P', 'E', 'A')),
    codicespecie INT NOT NULL,
    FOREIGN KEY (codicespecie) REFERENCES speciepiante(codice)
);
CREATE TABLE sitrova (
    codicespecie INT NOT NULL,
    codiceparco INT NOT NULL,
    codicepianta INT NOT NULL,
    FOREIGN KEY (codicespecie) REFERENCES speciepiante(codice),
    FOREIGN KEY (codiceparco) REFERENCES parchi(codice),
    FOREIGN KEY (codicepianta) REFERENCES piante(codice),
    PRIMARY KEY (codicespecie, codiceparco, codicepianta)
);