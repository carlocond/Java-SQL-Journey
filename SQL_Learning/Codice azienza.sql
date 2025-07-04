--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-12-20 10:19:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--






SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 223267)
-- Name: dipartimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dipartimento (
    codice character(2) NOT NULL,
    nome character varying(20),
    sede character varying(20),
    direttore integer
);


ALTER TABLE public.dipartimento OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 223272)
-- Name: impiegato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.impiegato (
    matricola integer NOT NULL,
    cognome character varying(20),
    stipendio integer,
    dipartimento character(2)
);


ALTER TABLE public.impiegato OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 223292)
-- Name: partecipazione; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partecipazione (
    impiegato integer NOT NULL,
    progetto character varying(20) NOT NULL
);


ALTER TABLE public.partecipazione OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 223282)
-- Name: progetto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.progetto (
    sigla character varying(20) NOT NULL,
    nome character varying(20) NOT NULL,
    bilancio integer,
    responsabile integer
);


ALTER TABLE public.progetto OWNER TO postgres;

--
-- TOC entry 4801 (class 0 OID 223267)
-- Dependencies: 215
-- Data for Name: dipartimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dipartimento VALUES ('NO', 'Nord', 'Milano', 101);
INSERT INTO public.dipartimento VALUES ('SU', 'Sud', 'Napoli', 201);
INSERT INTO public.dipartimento VALUES ('IS', 'Isole', 'Palermo', 301);


--
-- TOC entry 4802 (class 0 OID 223272)
-- Dependencies: 216
-- Data for Name: impiegato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.impiegato VALUES (101, 'Sili', 60, 'NO');
INSERT INTO public.impiegato VALUES (102, 'Rossi', 40, 'NO');
INSERT INTO public.impiegato VALUES (103, 'Neri', 40, 'NO');
INSERT INTO public.impiegato VALUES (201, 'Neri', 40, 'SU');
INSERT INTO public.impiegato VALUES (202, 'Verdi', 50, 'SU');
INSERT INTO public.impiegato VALUES (301, 'Bisi', 70, 'IS');


--
-- TOC entry 4804 (class 0 OID 223292)
-- Dependencies: 218
-- Data for Name: partecipazione; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.partecipazione VALUES (101, 'Alpha');
INSERT INTO public.partecipazione VALUES (101, 'Beta');
INSERT INTO public.partecipazione VALUES (103, 'Alpha');
INSERT INTO public.partecipazione VALUES (103, 'Beta');
INSERT INTO public.partecipazione VALUES (201, 'Beta');
INSERT INTO public.partecipazione VALUES (202, 'Beta');


--
-- TOC entry 4803 (class 0 OID 223282)
-- Dependencies: 217
-- Data for Name: progetto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.progetto VALUES ('Alpha', 'Vendite', 30, 202);
INSERT INTO public.progetto VALUES ('Beta', 'Inventario', 50, 301);
INSERT INTO public.progetto VALUES ('Gamma', 'Distribuzione', 18, 301);


--
-- TOC entry 4646 (class 2606 OID 223271)
-- Name: dipartimento dipartimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dipartimento
    ADD CONSTRAINT dipartimento_pkey PRIMARY KEY (codice);


--
-- TOC entry 4648 (class 2606 OID 223276)
-- Name: impiegato impiegato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impiegato
    ADD CONSTRAINT impiegato_pkey PRIMARY KEY (matricola);


--
-- TOC entry 4652 (class 2606 OID 223296)
-- Name: partecipazione partecipazione_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partecipazione
    ADD CONSTRAINT partecipazione_pkey PRIMARY KEY (impiegato, progetto);


--
-- TOC entry 4650 (class 2606 OID 223286)
-- Name: progetto progetto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progetto
    ADD CONSTRAINT progetto_pkey PRIMARY KEY (sigla);


--
-- TOC entry 4653 (class 2606 OID 223307)
-- Name: dipartimento dipartimento_direttore_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dipartimento
    ADD CONSTRAINT dipartimento_direttore_fkey FOREIGN KEY (direttore) REFERENCES public.impiegato(matricola);


--
-- TOC entry 4654 (class 2606 OID 223277)
-- Name: impiegato impiegato_dipartimento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.impiegato
    ADD CONSTRAINT impiegato_dipartimento_fkey FOREIGN KEY (dipartimento) REFERENCES public.dipartimento(codice);


--
-- TOC entry 4656 (class 2606 OID 223297)
-- Name: partecipazione partecipazione_impiegato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partecipazione
    ADD CONSTRAINT partecipazione_impiegato_fkey FOREIGN KEY (impiegato) REFERENCES public.impiegato(matricola);


--
-- TOC entry 4657 (class 2606 OID 223302)
-- Name: partecipazione partecipazione_progetto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partecipazione
    ADD CONSTRAINT partecipazione_progetto_fkey FOREIGN KEY (progetto) REFERENCES public.progetto(sigla);


--
-- TOC entry 4655 (class 2606 OID 223287)
-- Name: progetto progetto_responsabile_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progetto
    ADD CONSTRAINT progetto_responsabile_fkey FOREIGN KEY (responsabile) REFERENCES public.impiegato(matricola);


-- Completed on 2024-12-20 10:19:48

--
-- PostgreSQL database dump complete
--

