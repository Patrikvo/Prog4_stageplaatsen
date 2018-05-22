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

INSERT INTO Bedrijf(ID, Naam, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging, Straat, Nummer, Stad, Postcode, Land) VALUES 
(1, "aNaam", "aCont", "aEmail", "a_act", "a_aanw", '2012-01-01', '2013-01-01', "astraat", "15", "astad", "2030", "aland");
INSERT INTO Bedrijf(ID, Naam, ContactNaam, ContactEmail, Activiteiten, Aanwervend, AanmaakDatum, LaatsteWijziging, Straat, Nummer, Stad, Postcode, Land) VALUES 
(2, "bNaam", "bCont", "bEmail", "b_act", "b_aanw", '2012-01-01', '2013-01-01', "bstraat", "16", "bstad", "2040", "bland");


/* tabel student  */

INSERT INTO Student(ID, Naam, Telefoon, Email, AanmaakDatum, LaatsteWijziging,Straat, Nummer, Stad, Postcode, Land) VALUES 
(1, "aStudent", "aTel", "aEmail", '2012-01-01', '2013-01-01', "cstraat", "17", "cstad", "2050", "cland");
INSERT INTO Student(ID, Naam, Telefoon, Email, AanmaakDatum, LaatsteWijziging,Straat, Nummer, Stad, Postcode, Land) VALUES 
(2, "bStudent", "bTel", "bEmail", '2012-01-01', '2013-01-01', "dstraat", "18", "dstad", "2060", "dland");











/* tabel stageplaats */


INSERT INTO Stageplaats(ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging) VALUES 
(1, "aTitel", 1, "aOmschr", 5, "aPeriode", "aBegeleiding", "aKennis", "aVoorzien", 1, '2012-01-01', '2013-01-01');
INSERT INTO Stageplaats(ID, Titel, BedrijfID, Omschrijving, AantalPlaatsen, Periode, Begeleiding, ExtraKennisVereist, Voorzieningen, SitueertID, AanmaakDatum, LaatsteWijziging) VALUES 
(2, "bTitel", 2, "bOmschr", 3, "bPeriode", "bBegeleiding", "bKennis", "bVoorzien", 2, '2012-01-01', '2013-01-01');








/* Student_Stageplaats */

INSERT INTO Student_Stageplaats(StudentID, StageplaatsID, AanmaakDatum, LaatsteWijziging) VALUES 
(1, 1, '2012-01-01', '2013-01-01');

