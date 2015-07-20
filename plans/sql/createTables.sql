DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS varietal;
DROP TABLE IF EXISTS country;

CREATE TABLE country
(
	name 		VARCHAR(25),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);

CREATE TABLE varietal
(
	name 		VARCHAR(100),
	color		CHAR(1),
	isBlend		BIT,

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);

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

CREATE TABLE review
(
	wine_id			INT,
	username		VARCHAR(25),
	year			INT,
	rating			INT,
	description		VARCHAR(250),
	timestamp		TIMESTAMP DEFAULT CURRENT_TIMSTAMP,

	FOREIGN KEY (wine_id) 	REFERENCES wine(id),

	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
);