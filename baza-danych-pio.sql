CREATE TABLE IF NOT EXISTS `Uzytkownik` (
	`id_uzytkownika` int AUTO_INCREMENT NOT NULL,
	`imie` varchar(10) NOT NULL,
	`nazwisko` varchar(20) NOT NULL,
	`email` varchar(50) NOT NULL,
	`login` varchar(20) NOT NULL,
	`haslo` varchar(30) NOT NULL,
	`uczelnia` varchar(50) NOT NULL,
	`rok_urodzenia` date NOT NULL,
	`awatar` blob NOT NULL,
	`bio` varchar(200) NOT NULL,
	`widocznosc` int NOT NULL,
	PRIMARY KEY (`id_uzytkownika`)
);

CREATE TABLE IF NOT EXISTS `Znajomy` (
	`id_uzytkownika` int NOT NULL,
	`id_znajomego` int NOT NULL
);

CREATE TABLE IF NOT EXISTS `Usługodawca` (
	`id_uslugodawcy` int AUTO_INCREMENT NOT NULL,
	`nazwa_firmy` varchar(200) NOT NULL,
	`email` varchar(50) NOT NULL,
	`login` varchar(20) NOT NULL,
	`haslo` varchar(30) NOT NULL,
	`nr_telefonu` varchar(9) NOT NULL,
	PRIMARY KEY (`id_uslugodawcy`)
);

CREATE TABLE IF NOT EXISTS `Uslugodawca_Szczegoly` (
	`id_uslugodawcy` int AUTO_INCREMENT NOT NULL,
	`adres` varchar(300) NOT NULL,
	`godziny_otwarcia` varchar(1000) NOT NULL,
	`menu` varchar(1000) NOT NULL,
	PRIMARY KEY (`id_uslugodawcy`)
);

CREATE TABLE IF NOT EXISTS `Powiadomienia_Uzytkownik` (
	`id_powiadomienia` int AUTO_INCREMENT NOT NULL,
	`opis` varchar(500) NOT NULL,
	`czas` datetime NOT NULL,
	`id_uzytkownika` int NOT NULL,
	PRIMARY KEY (`id_powiadomienia`)
);

CREATE TABLE IF NOT EXISTS `Wydarzenia` (
	`id_wydarzenia` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`nazwa` varchar(200) NOT NULL,
	`opis` varchar(1000) NOT NULL,
	`cena` int NOT NULL,
	`zdjecie` blob NOT NULL,
	`czas_rozpoczecia` datetime NOT NULL,
	`czas_zakonczenia` datetime NOT NULL,
	PRIMARY KEY (`id_wydarzenia`)
);

CREATE TABLE IF NOT EXISTS `Kalendarz` (
	`id_uzytkownika` int AUTO_INCREMENT NOT NULL,
	`czas_rozpoczecia` datetime NOT NULL,
	`czas_zakonczenia` datetime NOT NULL,
	`nazwa` varchar(200) NOT NULL,
	`notatka` varchar(1000) NOT NULL,
	`widocznosc` int NOT NULL,
	`id_wydarzenia` int,
	PRIMARY KEY (`id_uzytkownika`)
);

CREATE TABLE IF NOT EXISTS `To-Do` (
	`id_todo` int AUTO_INCREMENT NOT NULL,
	`id_uzytkownika` int NOT NULL,
	`nazwa` int NOT NULL,
	`czy_zrobione` boolean NOT NULL,
	PRIMARY KEY (`id_todo`)
);

CREATE TABLE IF NOT EXISTS `Opinie` (
	`id_opinii` int AUTO_INCREMENT NOT NULL,
	`id_uslugodawcy` int NOT NULL,
	`id_uzytkownika` int NOT NULL,
	`ilosc_gwiazdek` int NOT NULL,
	`opis` varchar(500) NOT NULL,
	`czas` datetime NOT NULL,
	PRIMARY KEY (`id_opinii`)
);


ALTER TABLE `Znajomy` ADD CONSTRAINT `Znajomy_fk0` FOREIGN KEY (`id_uzytkownika`) REFERENCES `Uzytkownik`(`id_uzytkownika`);

ALTER TABLE `Znajomy` ADD CONSTRAINT `Znajomy_fk1` FOREIGN KEY (`id_znajomego`) REFERENCES `Uzytkownik`(`id_uzytkownika`);

ALTER TABLE `Uslugodawca_Szczegoly` ADD CONSTRAINT `Uslugodawca_Szczegoly_fk0` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `Usługodawca`(`id_uslugodawcy`);
ALTER TABLE `Powiadomienia_Uzytkownik` ADD CONSTRAINT `Powiadomienia_Uzytkownik_fk3` FOREIGN KEY (`id_uzytkownika`) REFERENCES `Uzytkownik`(`id_uzytkownika`);

ALTER TABLE `Kalendarz` ADD CONSTRAINT `Kalendarz_fk0` FOREIGN KEY (`id_uzytkownika`) REFERENCES `Uzytkownik`(`id_uzytkownika`);

ALTER TABLE `Kalendarz` ADD CONSTRAINT `Kalendarz_fk6` FOREIGN KEY (`id_wydarzenia`) REFERENCES `Wydarzenia`(`id_wydarzenia`);
ALTER TABLE `To-Do` ADD CONSTRAINT `To-Do_fk1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `Uzytkownik`(`id_uzytkownika`);
ALTER TABLE `Opinie` ADD CONSTRAINT `Opinie_fk1` FOREIGN KEY (`id_uslugodawcy`) REFERENCES `Usługodawca`(`id_uslugodawcy`);

ALTER TABLE `Opinie` ADD CONSTRAINT `Opinie_fk2` FOREIGN KEY (`id_uzytkownika`) REFERENCES `Uzytkownik`(`id_uzytkownika`);