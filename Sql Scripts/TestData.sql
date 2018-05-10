/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  patrik
 * Created: 10-mei-2018
 */

/*Adres  */

INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES 
(1, "astraat", "15", "2030", "astad", "aland", '2012-01-01', '2013-01-01');
INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES 
(2, "bstraat", "15", "2030", "bstad", "bland", '2012-01-01', '2013-01-01');
INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES 
(3, "cstraat", "15", "2030", "cstad", "cland", '2012-01-01', '2013-01-01');
INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES 
(4, "dstraat", "15", "2030", "dstad", "dland", '2012-01-01', '2013-01-01');
INSERT INTO Adres(ID, Straat, Nummer, Stad, Postcode, Land, AanmaakDatum, LaatsteWijziging) VALUES 
(5, "estraat", "15", "2030", "estad", "eland", '2012-01-01', '2013-01-01');




/* Tabel Bedrijf  */

INSERT INTO Bedrijf(ID, Naam, AdresID, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging) VALUES 
(1, "aNaam", 1, "aCont", "aEmail", "a_act", "a_aanw", '2012-01-01', '2013-01-01');
INSERT INTO Bedrijf(ID, Naam, AdresID, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging) VALUES 
(2, "bNaam", 2, "bCont", "bEmail", "b_act", "b_aanw", '2012-01-01', '2013-01-01');


/* tabel student  */

INSERT INTO Student(ID, Naam, AdresID, Telefoon, Email, AanmaakDatum, LaatsteWijziging) VALUES 
(1, "aStudent", 3, "aTel", "aEmail", '2012-01-01', '2013-01-01');
INSERT INTO Student(ID, Naam, AdresID, Telefoon, Email, AanmaakDatum, LaatsteWijziging) VALUES 
(2, "bStudent", 4, "bTel", "bEmail", '2012-01-01', '2013-01-01');











/* tabel stageplaats */


INSERT INTO Stageplaats(ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging) VALUES 
(1, "aTitel", 1, "aOmschr", 5, "aPeriode", "aBegeleiding", "aKennis", "aVoorzien", 1, '2012-01-01', '2013-01-01');
INSERT INTO Stageplaats(ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging) VALUES 
(2, "bTitel", 2, "bOmschr", 3, "bPeriode", "bBegeleiding", "bKennis", "bVoorzien", 2, '2012-01-01', '2013-01-01');








/* Student_Stageplaats */

INSERT INTO Student_Stageplaats(StudentID, StageplaatsID, AanmaakDatum, LaatsteWijziging) VALUES 
(1, 1, '2012-01-01', '2013-01-01');

