--Aggiungere not null a tutti i campi
ALTER TABLE tecnici
ALTER COLUMN nome SET NOT NULL,
ALTER COLUMN telefono SET NOT NULL,
ALTER COLUMN email SET NOT NULL,
ALTER COLUMN passw SET NOT NULL;

--Aggiungere i campi data inserimento
ALTER TABLE tecnici ADD COLUMN data_inserimento DATE;
ALTER TABLE clienti ADD COLUMN data_inserimento DATE;

-- Cambiare il nome del campo stato
ALTER TABLE ticket RENAME COLUMN stato TO stato_ticket;

--Eliminare referente
ALTER TABLE clienti DROP COLUMN referente;

-- Eliminare tabella clienti
DROP TABLE clienti;

-- Eliminare tabella ticket
DROP TABLE ticket;

-- Eliminare tabella report
DROP TABLE report;

-- Ricreare la tabella report
CREATE TABLE report (
    id_report SERIAL PRIMARY KEY,
    data_report DATE,
    attivita TEXT,
    tempo_impiegato DECIMAL,
    distanza_km INTEGER,
    lista_materiali TEXT,
    costo_materiali DECIMAL,
    data_convalida DATE,
    commento_cliente TEXT,
    cod_ticket INTEGER NOT NULL,
    cod_tecnico INTEGER NOT NULL,
    cod_cliente INTEGER NOT NULL,
    FOREIGN KEY (cod_ticket) REFERENCES ticket(id_ticket),
    FOREIGN KEY (cod_tecnico) REFERENCES tecnici(id_tecnico),
    FOREIGN KEY (cod_cliente) REFERENCES clienti(id_cliente)
);

-- Ricreare la tabella ticket con stato ticket
CREATE TABLE ticket (
    id_ticket SERIAL PRIMARY KEY,
    problema TEXT,
    data_apertura DATE,
    data_chiusura DATE,
    stato_ticket INTEGER NOT NULL CHECK (stato_ticket IN (0, 1)),
    cod_cliente INTEGER NOT NULL,
    cod_tipo INTEGER NOT NULL,
    cod_tecnico INTEGER NOT NULL,
    FOREIGN KEY (cod_cliente) REFERENCES clienti(id_cliente),
    FOREIGN KEY (cod_tipo) REFERENCES tipi(id_tipo),
    FOREIGN KEY (cod_tecnico) REFERENCES tecnici(id_tecnico)
);

--Ricreare la tabella clienti senza referente ma con data inserimento
CREATE TABLE clienti (
    id_cliente SERIAL PRIMARY KEY,
    ragione_sociale VARCHAR(60),
    indirizzo VARCHAR(80),
    telefono VARCHAR(30),
    email VARCHAR(30),
    passw VARCHAR(32),
    data_inserimento DATE
);


