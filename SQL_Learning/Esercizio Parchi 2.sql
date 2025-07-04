-- Modifico la colonna sesso di animali con constraint m f o altro
alter table animali
add constraint sesso_check
check(sesso IN ('M', 'F', 'Altro'));

-- Elimino le tabelle ordini e specie
drop table ordini;

drop table specie CASCADE;

CREATE TABLE ordini (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);

-- Ricreo le tabelle ordini e specie
CREATE TABLE specie (
    codice SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    rischioestinzione CHAR(1) NOT NULL CHECK (rischioestinzione IN ('N', 'B', 'M', 'E')),
    codiceordine INT NOT NULL,
    FOREIGN KEY (codiceordine) REFERENCES ordini(codice)
);