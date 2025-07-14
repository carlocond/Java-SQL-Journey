-- Esercizio 1: Impiegati che guadagnano più di 50
SELECT Matricola, Cognome
FROM impiegato
WHERE Stipendio > 50;

-- Esercizio 2: Impiegati che lavorano a Roma
SELECT Cognome, Stipendio
FROM impiegato i
JOIN dipartimento d ON i.Dipartimento = d.Codice
WHERE d.Sede = 'Roma';

-- Esercizio 3: Cognome impiegati e nome dipartimento
SELECT i.Cognome, d.Nome
FROM impiegato i
JOIN dipartimento d ON i.Dipartimento = d.Codice;

-- Esercizio 4: Impiegati che sono direttori di dipartimento
SELECT DISTINCT i.Cognome
FROM impiegato i
JOIN dipartimento d ON i.Matricola = d.Direttore;

-- Esercizio 5: Nomi progetti e cognomi responsabili
SELECT p.Nome, i.Cognome
FROM progetto p
JOIN impiegato i ON p.Responsabile = i.Matricola;

-- Esercizio 6: Progetti con bilancio > 100 e impiegati che ci lavorano
SELECT DISTINCT p.Nome, i.Cognome
FROM progetto p
JOIN partecipazione pa ON p.Sigla = pa.Progetto
JOIN impiegato i ON pa.Impiegato = i.Matricola
WHERE p.Bilancio > 100;

-- Esercizio 7: Impiegati che guadagnano più del loro direttore
SELECT i.Cognome
FROM impiegato i
JOIN dipartimento d ON i.Dipartimento = d.Codice
JOIN impiegato dir ON d.Direttore = dir.Matricola
WHERE i.Stipendio > dir.Stipendio;

-- Esercizio 8: Cognome dei direttori e dei responsabili
SELECT DISTINCT i.Cognome
FROM impiegato i
WHERE i.Matricola IN (
    SELECT Direttore FROM dipartimento
    UNION
    SELECT Responsabile FROM progetto
);

-- Esercizio 9: Dipartimenti con impiegati che guadagnano più di 60
SELECT DISTINCT d.Nome
FROM impiegato i
JOIN dipartimento d ON i.Dipartimento = d.Codice
WHERE i.Stipendio > 60;

-- Esercizio 10: Dipartimenti in cui tutti gli impiegati guadagnano più di 60
SELECT d.Nome
FROM dipartimento d
WHERE NOT EXISTS (
    SELECT 1
    FROM impiegato i
    WHERE i.Dipartimento = d.Codice AND i.Stipendio <= 60
);

-- Esercizio 11: Impiegati di stipendio massimo
SELECT Cognome
FROM impiegato
WHERE Stipendio = (SELECT MAX(Stipendio) FROM impiegato);

-- Esercizio 12: Impiegati che non lavorano a nessun progetto
SELECT i.Matricola, i.Cognome
FROM impiegato i
WHERE NOT EXISTS (
    SELECT 1 FROM partecipazione p WHERE p.Impiegato = i.Matricola
);

-- Esercizio 13: Impiegati che lavorano a più di un progetto
SELECT i.Matricola, i.Cognome
FROM impiegato i
JOIN partecipazione p ON i.Matricola = p.Impiegato
GROUP BY i.Matricola, i.Cognome
HAVING COUNT(DISTINCT p.Progetto) > 1;

-- Esercizio 14: Impiegati che lavorano a un solo progetto
SELECT i.Matricola, i.Cognome
FROM impiegato i
JOIN partecipazione p ON i.Matricola = p.Impiegato
GROUP BY i.Matricola, i.Cognome
HAVING COUNT(DISTINCT p.Progetto) = 1;

-- Esercizio 15: Stipendio medio per dipartimento
SELECT d.Nome, AVG(i.Stipendio) AS StipendioMedio
FROM impiegato i
JOIN dipartimento d ON i.Dipartimento = d.Codice
GROUP BY d.Nome;

-- Esercizio 16: Impiegati con stipendio superiore almeno del 10% rispetto alla media del dipartimento
SELECT i.Matricola, i.Cognome
FROM impiegato i
JOIN (
    SELECT Dipartimento, AVG(Stipendio) AS Media
    FROM impiegato
    GROUP BY Dipartimento
) m ON i.Dipartimento = m.Dipartimento
WHERE i.Stipendio > m.Media * 1.1;


