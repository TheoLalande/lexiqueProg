-- RACCOURCIS SQLLYOG
ctrl + shift + C => Commenter
ctrl + shift + R => Dé commenter
F9 => RUN
F12 => Format



--Création d'une table (avec clé primaire => Contrainte d'unicité) :________________________________________________________________________

CREATE TABLE entity2 (
	id INTEGER,
	name TEXT NOT NULL,
	jurisdiction TEXT,
	end_date DATE,
	lifetime INTEGER,
	PRIMARY KEY(id)
)

--Création d'une table (avec clé artificielle) :________________________________________________________________________

CREATE TABLE adresse_postale (
    type_logement TEXT,
    superficie INTEGER,
    PRIMARY KEY (numero_logement, numero_voie, complement, intitule_voie, commune, code_postal, pays)
)

--Création d'une table (avec clé étrangère) :________________________________________________________________________

CREATE TABLE entity2 (
	id INTEGER,
	name TEXT NOT NULL,
	jurisdiction TEXT,
	incorporation_date DATE,
	id_address INTEGER,
	PRIMARY KEY(id),
	FOREIGN KEY (id_address) REFERENCES address (id_address)
)


--Insertion dans la table ________________________________________________________________________

INSERT INTO
    entity2 (id, name, jurisdiction, jurisdiction_description, incorporation_date)
VALUES
    (1, 'Une société', 'IMG', 'Le Pays Imaginaire', '2024-01-01'),
    (2, 'Une autre société', 'IMG', 'Le Pays Imaginaire', '2025-01-01'),
    (3, 'Encore une société', 'IMG', 'Le Pays Imaginaire', '2026-01-01');


 --Suppression de la table________________________________________________________________________

 DROP TABLE entity2

 -- SELECT 
SELECT * FROM entity ; --pour tout selectionner
SELECT id, name, status FROM entity ;
SELECT DISTINCT status FROM entity; --Pour éviter les doublons

--Exemples requête SQL avec fonctions et opérateurs________________________________________________________________________

SELECT upper('Bonjour')
SELECT round(3.1416, 2)
SELECT random()
SELECT id * 2, name, status FROM entity ;
SELECT ABS( (- id) *2 ) AS calcul_bizarre, name, status FROM entity ;
SELECT name || '(' || status || ')' AS name_and_status FROM entity ;
SELECT name, lower(name), upper(name) FROM entity
SELECT date() > incorporation_date FROM entity ;

--Filtrer avec WHERE
SELECT * FROM entity WHERE name = 'Big Data Crunchers Ltd.' ; --exemple 1
SELECT * FROM entity WHERE (id < 10000004 AND (NOT id < 10000000)) OR (name = 'Big Data Crunchers Ltd.') --exemple 2


--SELECT depuis plusieurs table________________________________________________________________________

SELECT * FROM table1, table2;

--ALIAS DE TABLE, Renommer, renommage________________________________________________________________________

SELECT
    e.id AS id_entity,
    e.name AS nom_societe,
    a.id_address,
    a.address,
    a.countries
FROM
    entity e, address a ;

--Faire une jointure INTERNE________________________________________________________________________
--exemple1
SELECT
    e.id AS id_entity,
    e.name AS nom_societe,
    e.id_address AS 'e.id_address',
    a.id_address AS 'a.id_address',
    a.address,
    a.countries
FROM
    entity e, address a
WHERE
    e.id_address = a.id_address ;
 --exemple2
 SELECT
    *
FROM
    entity e,
    assoc_officer_entity a,
    officer o
WHERE
    a.entity = e.id AND
    a.officer = o.id AND
    e.name = "Big Data Crunchers Ltd."

--Faire une jointure Externe (la table de gauche est celle correspondant au FROM)______________________________
SELECT *		--Left outer join
FROM entity
LEFT OUTER JOIN address ON entity.id_address = address.id_address;

SELECT *		--Right outer join
FROM entity
RIGHT OUTER JOIN address ON entity.id_address = address.id_address;

SELECT *		--Full outer join
FROM entity
FULL OUTER JOIN address ON entity.id_address = address.id_address;


--Faire une jointure Naturelle ______________________________

SELECT
	e.id AS id_entity,
	e.name AS nom_societe,
	e.id_address AS 'e.id_address',
	a.id_address AS 'a.id_address',
	a.address,
	a.countries
FROM
	entity e
NATURAL JOIN
	address a ;

-- UPDATE ______________________________

UPDATE `table` SET `nomDeLaColonne` = 'valeur que lon veut inserer' WHERE `id` = '1';

-- DELETE ______________________________

DELETE FROM `table` WHERE `id` = '2';
















SELECT
  c.`ContactId`,
  a.`AccountId`,
  c.`FirstName`,
  c.`LastName`,
  a.`LegalName`,
  a.`Name`,
  o.`BusinessAccountId`
FROM
  `CUST_Contact` c
  JOIN `CUST_AccountContact` ac
    ON ac.`ContactId` = c.`ContactId`
  JOIN `CUST_Account` a
    ON a.`AccountId` = ac.`AccountId`
  LEFT JOIN `OM_Order` o
    ON o.`BusinessAccountId` = a.`AccountId`
WHERE 
(UPPER(c.`FirstName`) = "PB"
  OR UPPER(c.`LastName`) = "PB")
  AND a.`AccountId` != 1
  AND (
    (UPPER(a.`LegalName`) = "PB"
    OR UPPER(a.`Name`) = "PB")
    OR (
    a.`LegalName` = "."
    OR a.`Name` = ".")
  )
  AND o.`BusinessAccountId` IS NULL 
  
  GROUP BY c.`ContactId`;
 







 UPDATE `CUST_AccountContact` 
 
SET `CUST_AccountContact`.`AccountId` = 1
FROM
  `CUST_Contact` c
  JOIN `CUST_AccountContact` ac
    ON ac.`ContactId` = c.`ContactId`
  JOIN `CUST_Account` a
    ON a.`AccountId` = ac.`AccountId`
  LEFT JOIN `OM_Order` o
    ON o.`BusinessAccountId` = a.`AccountId`
WHERE 
(UPPER(c.`FirstName`) = "PB"
  OR UPPER(c.`LastName`) = "PB")
  AND a.`AccountId` != 1
  AND (
    (UPPER(a.`LegalName`) = "PB"
    OR UPPER(a.`Name`) = "PB")
    OR (
    a.`LegalName` = "."
    OR a.`Name` = ".")
  )
  AND o.`BusinessAccountId` IS NULL 
  
  GROUP BY c.`ContactId`;
 