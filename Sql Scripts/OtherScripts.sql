/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  patrik
 * Created: 10-mei-2018
 */



/* Tabel Bedrijf  */
SELECT ID, Naam, AdresID, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging FROM Bedrijf;
INSERT INTO Bedrijf(ID, Naam, AdresID, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);
UPDATE Bedrijf SET Naam = ?, AdresID = ?, ContactNaam = ?, ContactEmail = ?, Activiteiten = ?, Aanwervend = ?, AanmaakDatum = ?, LaatsteWijziging = ? WHERE ID = ?;
DELETE FROM Bedrijf WHERE ID = ?;



/* tabel stageplaats */

SELECT ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging FROM Stageplaats;
INSERT INTO Stageplaats(ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
UPDATE Stageplaats SET Titel = ?, BedrijfID = ?, Omschrijving = ?, AantalPlaatsen = ?, Periode = ?, Begeleiding = ?, ExtraKennisVereist = ?, Voorzieningen = ?, SitueertID = ?, AanmaakDatum = ?, LaatsteWijziging = ? WHERE ID = ?;
DELETE FROM Stageplaats WHERE ID = ?;



/* tabel student  */
SELECT ID, Naam, AdresID, Telefoon, Email, AanmaakDatum, LaatsteWijziging FROM Student;
INSERT INTO Student(ID, Naam, AdresID, Telefoon, Email, AanmaakDatum, LaatsteWijziging) VALUES (?, ?, ?, ?, ?, ?, ?);
UPDATE Student SET Naam = ?, AdresID = ?, Telefoon = ?, Email = ?, AanmaakDatum = ?, LaatsteWijziging = ? WHERE ID = ?;
DELETE FROM Student WHERE ID = ?;


/*Adres  */

SELECT ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging FROM Adres;
INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES (?, ?, ?, ?, ?, ?, ?, ?);
UPDATE Adres SET Straat = ?, Nummer = ?, Stad = ?, Postcode = ?, Land = ?, AanmaakDatum = ?, LaatsteWijziging = ? WHERE ID = ?;
DELETE FROM Adres WHERE ID = ?;


/* Student_Stageplaats */
SELECT StudentID, StageplaatsID, AanmaakDatum, LaatsteWijziging FROM Student_Stageplaats;
INSERT INTO Student_Stageplaats(StudentID, StageplaatsID, AanmaakDatum, LaatsteWijziging) VALUES (?, ?, ?, ?);
UPDATE Student_Stageplaats SET AanmaakDatum = ?, LaatsteWijziging = ? WHERE StudentID = ? AND StageplaatsID = ?;
DELETE FROM Student_Stageplaats WHERE StudentID = ? AND StageplaatsID = ?;


/*  Situeert */
SELECT ID, Beschrijving, SpecialisatieID FROM Situeert;
INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (?, ?, ?);
UPDATE Situeert SET Beschrijving = ?, SpecialisatieID = ? WHERE ID = ?;
DELETE FROM Situeert WHERE ID = ?;


/*  Specialisatie  */
SELECT ID, Beschrijving FROM Specialisatie;
INSERT INTO Specialisatie(ID, Beschrijving) VALUES (?, ?);
UPDATE Specialisatie SET Beschrijving = ? WHERE ID = ?;
DELETE FROM Specialisatie WHERE ID = ?;
