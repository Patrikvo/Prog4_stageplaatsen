/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  patrik
 * Created: 10-mei-2018
 */


CREATE DATABASE IF NOT EXISTS StageplaatsenDB;
USE StageplaatsenDB;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS Adres;
DROP TABLE IF EXISTS Bedrijf;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Specialisatie;
DROP TABLE IF EXISTS Situeert;
DROP TABLE IF EXISTS Stageplaats;
DROP TABLE IF EXISTS Student_Stageplaats;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE Adres (
    ID int(10) NOT NULL AUTO_INCREMENT, 
    Straat varchar(255), 
    Nummer varchar(255), 
    Stad varchar(255), 
    Postcode varchar(255), 
    Land varchar(255), 
    AanmaakDatum date NOT NULL, 
    LaatsteWijziging date NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID)
);






CREATE TABLE Bedrijf (
    ID int(10) NOT NULL AUTO_INCREMENT, 
    Naam varchar(255) NOT NULL, 
    AdresID int(10), 
    ContactNaam varchar(255), 
    ContactEmail varchar(255), 
    Activiteiten varchar(1000), 
    Aanwervend varchar(255), 
    AanmaakDatum date NOT NULL, 
    LaatsteWijziging date NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID),
    FOREIGN KEY (AdresID) REFERENCES Adres(ID)
);



CREATE TABLE Student (
    ID int(10) NOT NULL AUTO_INCREMENT, 
    Naam varchar(500) NOT NULL, 
    AdresID int(10), 
    Telefoon varchar(255), 
    Email varchar(255), 
    AanmaakDatum date NOT NULL, 
    LaatsteWijziging date NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID),
    FOREIGN KEY (AdresID) REFERENCES Adres(ID)
);



CREATE TABLE Specialisatie (
    ID int(10) NOT NULL, 
    Beschrijving varchar(255) NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID)
);




CREATE TABLE Situeert (
    ID int(10) NOT NULL, 
    Beschrijving varchar(255) NOT NULL, 
    SpecialisatieID int(10) NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID),
    FOREIGN KEY (SpecialisatieID) REFERENCES Specialisatie(ID)
);






CREATE TABLE Stageplaats (
    ID int(10) NOT NULL AUTO_INCREMENT, 
    Titel varchar(255) NOT NULL, 
    BedrijfID int(10) NOT NULL, 
    Omschrijving varchar(5000), 
    AantalPlaatsen int(10), 
    Periode varchar(255), 
    Begeleiding varchar(5000), 
    ExtraKennisVereist varchar(2000), 
    Voorzieningen varchar(5000), 
    SitueertID int(10) NOT NULL, 
    AanmaakDatum date NOT NULL, 
    LaatsteWijziging date NOT NULL, 
    PRIMARY KEY (ID), UNIQUE INDEX (ID),
    FOREIGN KEY (SitueertID) REFERENCES Situeert(ID),
    FOREIGN KEY (BedrijfID) REFERENCES Bedrijf(ID)
);

    






CREATE TABLE Student_Stageplaats (
    StudentID int(10) NOT NULL, 
    StageplaatsID int(10) NOT NULL, 
    AanmaakDatum date NOT NULL, 
    LaatsteWijziging date NOT NULL, 
    PRIMARY KEY (StudentID, StageplaatsID),
    FOREIGN KEY (StudentID) REFERENCES Student(ID),
    FOREIGN KEY (StageplaatsID) REFERENCES Stageplaats(ID)
);



INSERT INTO Specialisatie(ID, Beschrijving) VALUES (0, "Ongedefineerd");
INSERT INTO Specialisatie(ID, Beschrijving) VALUES (1, "Systeem- en netwerkbeheer");
INSERT INTO Specialisatie(ID, Beschrijving) VALUES (2, "Programmeren");


INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (0, "Ongedefineerd", 0);

INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (1, "Netwerk infrastructuur", 1);
INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (2, "Service Desk ( op niveau van client-server omgeving)", 1);
INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (3, "Praktisch Onderzoeksproject (testomgeving beschikbaar gesteld door stageplaats :Proof of concern)", 1);

INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (4, "Functionele en technische analyse", 2);
INSERT INTO Situeert(ID, Beschrijving, SpecialisatieID) VALUES (5, "Software development en testing", 2);


