DROP DATABASE kck_pio_db;

CREATE DATABASE kck_pio_db;

USE kck_pio_db;

CREATE TABLE IF NOT EXISTS `uslugodawca` (
	`id_uslugodawcy` int AUTO_INCREMENT NOT NULL,
	`nazwa_firmy` nvarchar(200),
	`email` varchar(50),
	`nr_telefonu` varchar(9),
	`adres` nvarchar(300),
	PRIMARY KEY (`id_uslugodawcy`)
);

CREATE TABLE IF NOT EXISTS `wydarzenia` (
	`id_wydarzenia` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`nazwa` nvarchar(200) NOT NULL,
	`opis` nvarchar(1000) NOT NULL,
	`zdjecie` LONGTEXT,
	`czas_rozpoczecia` datetime NOT NULL,
	`czas_zakonczenia` datetime NOT NULL,
	PRIMARY KEY (`id_wydarzenia`)
);

CREATE TABLE IF NOT EXISTS `opinie` (
	`id_opinii` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`ilosc_gwiazdek` int NOT NULL,
	`opis` nvarchar(500) NOT NULL,
	`czas` datetime NOT NULL,
	PRIMARY KEY (`id_opinii`)
);

CREATE TABLE IF NOT EXISTS `godziny_otwarcia` (
	`id_godziny` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`dzien_tygodnia` nvarchar(100) NOT NULL,
	`otwarcie` time NOT NULL,
	`zamkniecie` time NOT NULL,
	PRIMARY KEY (`id_godziny`)
);


ALTER TABLE `wydarzenia` ADD CONSTRAINT `wydarzenia_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);
ALTER TABLE `opinie` ADD CONSTRAINT `opinie_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);
ALTER TABLE `godziny_otwarcia` ADD CONSTRAINT `godziny_otwarcia_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);
