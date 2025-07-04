create table tipi(
id_tipo SERIAL primary key,
tipo_problema varchar(40)
);

create table tecnici(
id_tecnico SERIAL primary key,
nome varchar(40),
telefono varchar(30),
email varchar(30),
passw varchar(32)
);

create table clienti(
id_cliente SERIAL primary key,
ragione_sociale varchar(60),
indirizzo varchar(80),
telefono varchar(30),
email varchar(30),
passw varchar(32),
referente varchar(40)
);

create table ticket(
id_ticket SERIAL primary key,
problema text,
data_apertura date,
data_chiusura date,
stato INTEGER NOT NULL CHECK (stato IN (0, 1)),
cod_cliente integer not null,
cod_tipo integer not null,
cod_tecnico integer not null,
FOREIGN KEY (cod_cliente) references clienti(id_cliente),
FOREIGN KEY (cod_tipo) references tipi(id_tipo),
FOREIGN KEY (cod_tecnico) references tecnici(id_tecnico)
);

create table report(
id_report SERIAL primary key,
data_report date,
attivita text,
tempo_impiegato decimal,
distanza_km integer,
lista_materiali text,
costo_materiali decimal,
data_convalida date,
commento_cliente text,
cod_ticket integer not null,
cod_tecnico integer not null,
cod_cliente integer not null,
FOREIGN KEY (cod_ticket) references ticket(id_ticket),
FOREIGN KEY (cod_tecnico) references tecnici(id_tecnico),
FOREIGN KEY (cod_cliente) references clienti(id_cliente)
);