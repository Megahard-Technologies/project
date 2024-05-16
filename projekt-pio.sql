CREATE TABLE IF NOT EXISTS `uslugodawca` (
	`id_uslugodawcy` int AUTO_INCREMENT NOT NULL,
	`nazwa_firmy` varchar(200) NOT NULL,
	`email` varchar(50) NOT NULL,
	`nr_telefonu` varchar(9) NOT NULL,
	PRIMARY KEY (`id_uslugodawcy`)
);

CREATE TABLE IF NOT EXISTS `uslugodawca_szczegoly` (
	`id_uslugodawcy` int AUTO_INCREMENT NOT NULL,
	`adres` varchar(300) NOT NULL,
	`godziny_otwarcia` varchar(1000) NOT NULL,
	`menu` varchar(1000) NOT NULL,
	PRIMARY KEY (`id_uslugodawcy`)
);

CREATE TABLE IF NOT EXISTS `wydarzenia` (
	`id_wydarzenia` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`nazwa` varchar(200) NOT NULL,
	`opis` varchar(1000) NOT NULL,
	`zdjecie` blob NOT NULL,
	`czas_rozpoczecia` datetime NOT NULL,
	`czas_zakonczenia` datetime NOT NULL,
	PRIMARY KEY (`id_wydarzenia`)
);

CREATE TABLE IF NOT EXISTS `opinie` (
	`id_opinii` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`ilosc_gwiazdek` int NOT NULL,
	`opis` varchar(500) NOT NULL,
	`czas` datetime NOT NULL,
	PRIMARY KEY (`id_opinii`)
);


ALTER TABLE `uslugodawca_szczegoly` ADD CONSTRAINT `uslugodawca_szczegoly_fk0` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);
ALTER TABLE `wydarzenia` ADD CONSTRAINT `wydarzenia_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);
ALTER TABLE `opinie` ADD CONSTRAINT `opinie_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `uslugodawca`(`id_uslugodawcy`);