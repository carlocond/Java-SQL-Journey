



-- --------------------------------------------------------

--
-- Table structure for table `es2_marca`
--

CREATE TABLE IF NOT EXISTS marca (
  id serial NOT NULL,
  brand varchar(32) NOT NULL,
  nazionalita varchar(2) NOT NULL,
  PRIMARY KEY (id)
);

--
-- Dumping data for table `es2_marca`
--

INSERT INTO marca (id, brand, nazionalita) VALUES
(1, 'SAMSUNG', 'KR'),
(2, 'ACER', 'KR'),
(3, 'AMOI', 'CH'),
(4, 'HTC', 'KR'),
(5, 'APPLE', 'US'),
(6, 'HP', 'US'),
(7, 'LG', 'KR'),
(8, 'SONY', 'JP'),
(9, 'MOTOROLA', 'US'),
(10, 'NOKIA', 'SW'),
(11, 'BLACKBERRY', 'CA'),
(12, 'BBK', 'CH');

-- --------------------------------------------------------

--
-- Table structure for table `es2_os`
--

CREATE TABLE IF NOT EXISTS os (
  id serial NOT NULL,
  descrizione varchar(64) NOT NULL,
  company varchar(64) NOT NULL,
  open_source smallint NOT NULL,
  PRIMARY KEY (id)
);

--
-- Dumping data for table `es2_os`
--

INSERT INTO os (id, descrizione, company, open_source) VALUES
(1, 'Android', 'Google', 1),
(3, 'iOS', 'Apple Inc.', 0),
(9, 'Windows Phone 8', 'Microsoft', 0),
(11, 'BlackBerry', 'BlackBerry', 0);

-- --------------------------------------------------------

--
-- Table structure for table `es2_smartphone`
--

CREATE TABLE IF NOT EXISTS smartphone (
  id serial NOT NULL,
  nome varchar(64) NOT NULL,
  ram varchar(5) NOT NULL,
  cpu varchar(64) NOT NULL,
  display_ppi integer NOT NULL,
  display_size varchar(12) NOT NULL,
  display_resolution varchar(64) NOT NULL,
  dimensioni varchar(64) NOT NULL,
  peso integer NOT NULL,
  note varchar(1024) NOT NULL,
  id_marca integer NOT NULL,
  id_os integer NOT NULL,
  PRIMARY KEY (id)
);

--
-- Dumping data for table `es2_smartphone`
--

INSERT INTO smartphone (id, nome, ram, cpu, display_ppi, display_size, display_resolution, dimensioni, peso, note, id_marca, id_os) VALUES
(1, 'HTC One M8', '2Gb', '2.3 GHz quad-core CPU', 468, '4.7', '1080x1920', '146x70x9', 160, ' ', 4, 1),
(2, 'Iphone 5S', '1Gb', '1.3 GHz dual-core CPU', 326, '4', '640x1136', '123x58x8', 112, ' ', 5, 3),
(3, 'Galaxy Note 3', '3Gb', '2.3 GHz Quad core CPU', 386, '5.7', '1080x1920', '151x79x8', 168, ' ', 1, 1),
(4, 'Galaxy S4', '2Gb', '1.9 GHz Quad core CPU', 441, '5.0', '1080x1920', '136x69x8', 130, ' ', 1, 1),
(5, 'Galaxy S5', '2Gb', '2.5 GHz Quad core CPU', 432, '5.1', '1080x1920', '142x72x8', 145, 'Water, Dust resistant', 1, 1),
(6, 'Galaxy S4 mini', '1.5Gb', '1.7 GHz dual-core CPU', 256, '4.3', '540x960', '125x61x9', 107, ' ', 1, 1),
(7, 'Moto X', '2Gb', '1.7 GHz dual-core CPU', 326, '4.7', '720x1280', '129x65x6', 130, ' ', 9, 1),
(8, 'Lumia 1020', '2Gb', '1.5 GHz dual-core CPU', 386, '5.7', '768x1280', '130x71x10', 158, ' ', 10, 1),
(9, 'Nexus 5', '2Gb', '2.3 GHz Quad core CPU', 445, '4.95', '1080x1920', '138x69x8', 130, ' ', 7, 1),
(10, 'G2', '2Gb', '2.26 GHz Quad core CPU', 424, '5.2', '1080x1920', '138x71x9', 143, '', 7, 1),
(11, 'Lumia 930', '2Gb', '2.2 GHz quad-core CPU', 441, '5.0', '1080x1920', '137x71x10', 167, ' ', 10, 9),
(12, 'Galaxy S III', '2Gb', '1.5 Ghz dual-core', 306, '4.8', '720x1280', '136x70x8', 133, '', 1, 1),
(13, 'Galaxy S II', '1Gb', '1.2 GHz dual-core', 218, '4.3', '480x800', '123x66x8.5', 116, '', 1, 1),
(14, 'Blackberry Z30', '2Gb', '1.7 Ghz', 295, '5', '1280x768', '140x72x9.4', 170, '', 11, 11),
(15, 'Vivo Xplay 3S', '3Gb', '2.3Ghz Quad core', 490, '6.0', '1440x2560', '158x82x8', 172, '', 12, 1),
(16, 'Lumia 520', '512Mb', '1 GHz dual-core ', 235, '4', '480x800', '119x64x10', 124, '', 10, 9),
(17, '8S', '512Mb', '1 GHz Dual-core', 233, '4', '480x800', '120x63x10', 113, '', 4, 9),
(18, 'Ativ S Neo', '1Gb', '1.4 GHz dual-core', 308, '4.77', '720x1280', '135x69x9', 144, '', 1, 9),
(19, '8X', '1Gb', '1.5 GHz dual-core', 342, '4.3', '720x1280', '32,35 x 66,2 x 10,12', 130, '', 4, 9);


--
-- Constraints for table `es2_smartphone`
--
ALTER TABLE smartphone
  ADD CONSTRAINT smartphone_ibfk FOREIGN KEY (id_marca) REFERENCES marca (id),
  ADD CONSTRAINT smartphone_ibfk_2 FOREIGN KEY (id_os) REFERENCES os (id);

