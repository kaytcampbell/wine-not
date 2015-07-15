DROP TABLE IF EXISTS country;
CREATE TABLE country
(
	name 		VARCHAR(25),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS varietal;
CREATE TABLE varietal
(
	name 		VARCHAR(25),
	color		CHAR(1),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS wine;
CREATE TABLE wine
(
	vineyard		VARCHAR(100),
	label			VARCHAR(100),
	varietal_id		INT,
	country_id		INT,
	description		VARCHAR(250),

	FOREIGN KEY (varietal_id) 	REFERENCES varietal(id),
	FOREIGN KEY (country_id) 	REFERENCES country(id),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS review;
CREATE TABLE review
(
	username		VARCHAR(25),
	wine_id			INT,
	year			INT,
	rating			INT,
	description		VARCHAR(250),
	timestamp		TIMESTAMP,

	FOREIGN KEY (wine_id) 	REFERENCES wine(id),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);