SET FOREIGN_KEY_CHECKS = 0; 

TRUNCATE TABLE country;
INSERT INTO country (name) VALUES('France');
INSERT INTO country (name) VALUES('Italy');
INSERT INTO country (name) VALUES('Spain');
INSERT INTO country (name) VALUES('United States');
INSERT INTO country (name) VALUES('China');
INSERT INTO country (name) VALUES('Argentina');
INSERT INTO country (name) VALUES('Australia');
INSERT INTO country (name) VALUES('Chile');
INSERT INTO country (name) VALUES('South Africa');
INSERT INTO country (name) VALUES('Russia');
INSERT INTO country (name) VALUES('Portugal');
INSERT INTO country (name) VALUES('Germany');
INSERT INTO country (name) VALUES('Brazil');
INSERT INTO country (name) VALUES('Greece');
INSERT INTO country (name) VALUES('New Zealand');
INSERT INTO country (name) VALUES('Serbia');
INSERT INTO country (name) VALUES('Austria');
INSERT INTO country (name) VALUES('Hungary');
INSERT INTO country (name) VALUES('Ukraine');
INSERT INTO country (name) VALUES('Romania');
INSERT INTO country (name) VALUES('Moldova');
INSERT INTO country (name) VALUES('Georgia');
INSERT INTO country (name) VALUES('Bulgaria');
INSERT INTO country (name) VALUES('Switzerland');
INSERT INTO country (name) VALUES('Japan');
INSERT INTO country (name) VALUES('Macedonia');
INSERT INTO country (name) VALUES('Uruguay');
INSERT INTO country (name) VALUES('Peru');
INSERT INTO country (name) VALUES('Canada');
INSERT INTO country (name) VALUES('Algeria');
INSERT INTO country (name) VALUES('Croatia');
INSERT INTO country (name) VALUES('Czech Republic');
INSERT INTO country (name) VALUES('Mexico');
INSERT INTO country (name) VALUES('Morocco');
INSERT INTO country (name) VALUES('Slovakia');
INSERT INTO country (name) VALUES('Turkey');
INSERT INTO country (name) VALUES('Belarus');
INSERT INTO country (name) VALUES('Slovenia');
INSERT INTO country (name) VALUES('Tunisia');
INSERT INTO country (name) VALUES('Uzbekistan');

TRUNCATE TABLE varietal;
INSERT INTO varietal (name, color, isBlend) VALUES("Brut", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Brut Cava", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Brut Prosecco", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Brut Sparkling", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet & Merlot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet Franc, Merlot, Cabernet & Malbec", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet Sauvignon", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet, Cabernet Franc, Petit Verdot, Merlot & Malbec", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet, Merlot & Cabernet Franc", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet, Merlot & Malbec", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet, Merlot & Petit Verdot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Cabernet, Petit Verdot & Cabernet Franc", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Carmenere & Petit Verdot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Chardonnay", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Chardonnay & Grenacio", "W", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Chardonnay, Sauvignon Blanc, Muscat & Viognier", "W", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Chardonnay, Viognier & Pinot Gris", "W", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Chardonnay, Viognier, Riesling, Gewürtraminer", "W", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Corvina & Rodinella", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Dry Rosé Tempraniollo", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Gewürztraminer", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Grenache, Petite Sirah & Syrah", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Malbec", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Malbec, Merlot & Cabernet", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Merlot", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Merlot and Cabernet Franc", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Merlot, Cabernet & Petit Verdot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Merlot, Cabernet, Petit Verdot & Malbec", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Merlot, Syrah & Cabernet", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Nebbiolo", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Petit Verdot, Petite Sirah, Malbec, Merlot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Petite Sirah", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Petite Syrah & Petit Verdot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Pinot Grigio", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Pinot Gris", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Pinot Noir", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Prosecco", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Reisling", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Rosé Brut", "C", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Sangiovese", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Sangiovese & Cabernet", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Sangiovese & Cabernet", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Sangiovese & Syrah", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Sauvignon Blanc", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Shiraz", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Shiraz, Cabernet, Zinfandel, Mataro", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Shiraz, Petit Verdot & Mourvedre", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Syrah", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Syrah, Cabernet & Grenache", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Syrah, Granche & Mourvèdre", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Syrah, Malbec, Cabernet, Merlot", "R", 1);
INSERT INTO varietal (name, color, isBlend) VALUES("Tempranillo", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("White Zinfandel", "W", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Zinfandel", "R", 0);
INSERT INTO varietal (name, color, isBlend) VALUES("Zinfandel, Cabernet, Syrah & Petite Sirah", "R", 1);

TRUNCATE TABLE wine;
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Strike", "Jet", (SELECT id FROM varietal WHERE name LIKE "Shiraz, Cabernet, Zinfandel, Mataro" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Domaine Bousquet", "Los Cuatro", (SELECT id FROM varietal WHERE name LIKE "Syrah, Malbec, Cabernet, Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Argentina" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("J Lohr", "Home Ranch", (SELECT id FROM varietal WHERE name LIKE "Petit Verdot, Petite Sirah, Malbec, Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Concannon", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Quail's Gate", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Veramonte", "Ritual", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Chile" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Tantalus Vineyards", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Belle Glos", "Meiomi", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Panther Creek", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Noir" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Jackson Triggs", "", (SELECT id FROM varietal WHERE name LIKE "Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Santa Carolina", "", (SELECT id FROM varietal WHERE name LIKE "Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Chile" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Nk/Mip Cellars", "", (SELECT id FROM varietal WHERE name LIKE "Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("J Lohr Estates", "", (SELECT id FROM varietal WHERE name LIKE "Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Wild Goose Vineyards", "Horizon", (SELECT id FROM varietal WHERE name LIKE "Merlot, Cabernet & Petit Verdot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Jean Pierre Moueix", "", (SELECT id FROM varietal WHERE name LIKE "Merlot and Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Chateau Ste Michelle", "", (SELECT id FROM varietal WHERE name LIKE "Merlot, Syrah & Cabernet" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Blasted Church", "", (SELECT id FROM varietal WHERE name LIKE "Merlot, Cabernet, Petit Verdot & Malbec" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Oosoyoos Larose", "", (SELECT id FROM varietal WHERE name LIKE "Merlot, Cabernet & Petit Verdot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Duckhorn", "", (SELECT id FROM varietal WHERE name LIKE "Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Inception", "", (SELECT id FROM varietal WHERE name LIKE "Shiraz, Petit Verdot & Mourvedre" LIMIT 1), (SELECT id FROM country WHERE name LIKE "South Africa" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Jacob's Creek", "", (SELECT id FROM varietal WHERE name LIKE "Shiraz" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Blasted Church", "", (SELECT id FROM varietal WHERE name LIKE "Syrah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("E. Guigal", "", (SELECT id FROM varietal WHERE name LIKE "Syrah, Granche & Mourvèdre" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("MollyDooker", "The Boxer", (SELECT id FROM varietal WHERE name LIKE "Shiraz" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Louis Bernard", "", (SELECT id FROM varietal WHERE name LIKE "Syrah, Granche & Mourvèdre" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Painted Rock", "", (SELECT id FROM varietal WHERE name LIKE "Syrah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Orin Swift", "Abstract", (SELECT id FROM varietal WHERE name LIKE "Grenache, Petite Sirah & Syrah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("The Chocolate Book", "", (SELECT id FROM varietal WHERE name LIKE "Syrah, Cabernet & Grenache" LIMIT 1), (SELECT id FROM country WHERE name LIKE "South Africa" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("D'Arenberg", "The Dead Arm", (SELECT id FROM varietal WHERE name LIKE "Shiraz" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Painter's Bridge", "", (SELECT id FROM varietal WHERE name LIKE "Zinfandel" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Ravenswood", "Vinters Blend", (SELECT id FROM varietal WHERE name LIKE "Zinfandel" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Michael David", "", (SELECT id FROM varietal WHERE name LIKE "Petite Syrah & Petit Verdot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Casajus", "Old Vines", (SELECT id FROM varietal WHERE name LIKE "Tempranillo" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Spain" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Pazzo", "", (SELECT id FROM varietal WHERE name LIKE "Sangiovese & Cabernet" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Caymus Vineyards", "", (SELECT id FROM varietal WHERE name LIKE "Zinfandel" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Stags' Leap Winery", "", (SELECT id FROM varietal WHERE name LIKE "Petite Sirah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("The Prisoner", "", (SELECT id FROM varietal WHERE name LIKE "Zinfandel, Cabernet, Syrah & Petite Sirah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Domaine Bousquet", "", (SELECT id FROM varietal WHERE name LIKE "Malbec" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Argentina" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Masi", "Bonnacosta", (SELECT id FROM varietal WHERE name LIKE "Corvina & Rodinella" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Rocca delle Macie", "Sasyr", (SELECT id FROM varietal WHERE name LIKE "Sangiovese & Syrah" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Machesi de Frescobaldi", "Nipzano", (SELECT id FROM varietal WHERE name LIKE "Sangiovese" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Norton", "Privada", (SELECT id FROM varietal WHERE name LIKE "Malbec, Merlot & Cabernet" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Argentina" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Young & Wyse", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Franc, Merlot, Cabernet & Malbec" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Castello Banfi", "Rooso di Montalcino", (SELECT id FROM varietal WHERE name LIKE "Sangiovese" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Batasiolo", "Barolo", (SELECT id FROM varietal WHERE name LIKE "Nebbiolo" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Masi", "Amarone", (SELECT id FROM varietal WHERE name LIKE "Corvina & Rodinella" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Arigiano", "Brunelle di Montalcino", (SELECT id FROM varietal WHERE name LIKE "Sangiovese" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Montes", "Purple Angel", (SELECT id FROM varietal WHERE name LIKE "Carmenere & Petit Verdot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Chile" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Antinori", "Tiganello", (SELECT id FROM varietal WHERE name LIKE "Sangiovese & Cabernet" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sumac Ridge", "Cellers Selection", (SELECT id FROM varietal WHERE name LIKE "Cabernet & Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Robert Mondavi", "Woodbridge", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sandhill Estate Vineyard", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet & Merlot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Wolf Blass", "Yellow Label", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("J Lohr Estates", "Seven Oaks", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Chateau Ste Michelle", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sebastiani", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Burrowing Owl Estate", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Cedar Creek", "Platinum Meritage", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Malbec" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("J Lohr", "Hilltop", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("De Toren", "Fusion V", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Cabernet Franc, Petit Verdot, Merlot & Malbec" LIMIT 1), (SELECT id FROM country WHERE name LIKE "South Africa" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Vineyard 29", "Cru", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Black Hills", "Nota Bene", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sequoia Grove", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Chateau Meyney", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Mine", "Stagecoach Vineyard", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Guado Al Tasso", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Joseph Phelps", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Cakebread Cellars", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Caymus", "Special Selection", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Cain Five", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Petit Verdot" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Dominus", "Estate", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Petit Verdot & Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Orin Swift", "Papillon", (SELECT id FROM varietal WHERE name LIKE "Cabernet, Merlot & Cabernet Franc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Silver Oak", "", (SELECT id FROM varietal WHERE name LIKE "Cabernet Sauvignon" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Knotted Vines", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay, Viognier, Riesling, Gewürtraminer" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Danzante", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Grigio" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Pffaf", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Gris" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Burrowing Owl Estate", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Gris" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Abbazio di Novacella", "", (SELECT id FROM varietal WHERE name LIKE "Pinot Grigio" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Robert Mondavi", "Woodbridge", (SELECT id FROM varietal WHERE name LIKE "White Zinfandel" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("See Ya Later Ranch", "Unleashed", (SELECT id FROM varietal WHERE name LIKE "Gewürztraminer" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Marques de Caceres", "", (SELECT id FROM varietal WHERE name LIKE "Dry Rosé Tempraniollo" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Spain" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Wild Goose Vineyards", "", (SELECT id FROM varietal WHERE name LIKE "Reisling" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Blasted Church", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay, Viognier & Pinot Gris" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Conundrum", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay, Sauvignon Blanc, Muscat & Viognier" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sumac Ridge", "Cellar Selection", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Santa Carolina", "", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Chile" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Chateau Cailleteau Bergeron", "", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Stoneleigh", "", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "New Zealand" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Benzinger", "", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Cloudy Bay", "", (SELECT id FROM varietal WHERE name LIKE "Sauvignon Blanc" LIMIT 1), (SELECT id FROM country WHERE name LIKE "New Zealand" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Jackson Triggs", "Proprietor's Selection", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sumac Ridge", "Cellar Selection", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Robert Mondavi", "Woodbridge", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Casa Planeta", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay & Grenacio" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Wolf Blass", "Yellow Label", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Australia" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Louis Latour", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("J Lohr Estates", "Riverstone", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sonoma-Cutrer", "Russian River Ranches", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Mer Soleil", "", (SELECT id FROM varietal WHERE name LIKE "Chardonnay" LIMIT 1), (SELECT id FROM country WHERE name LIKE "United States" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Cristalino", "", (SELECT id FROM varietal WHERE name LIKE "Brut Cava" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Spain" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Mionetto", "", (SELECT id FROM varietal WHERE name LIKE "Prosecco" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Piper-Heidsieck", "", (SELECT id FROM varietal WHERE name LIKE "Brut" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Danzante", "", (SELECT id FROM varietal WHERE name LIKE "Brut Sparkling" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Italy" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Sumac Ridge", "Steller's Jay", (SELECT id FROM varietal WHERE name LIKE "Brut Prosecco" LIMIT 1), (SELECT id FROM country WHERE name LIKE "Canada" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Nicolas Feuillate", "", (SELECT id FROM varietal WHERE name LIKE "Rosé Brut" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Veuve Clicquot", "Yellow Label", (SELECT id FROM varietal WHERE name LIKE "Brut" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES("Dom Perignon", "", (SELECT id FROM varietal WHERE name LIKE "Brut" LIMIT 1), (SELECT id FROM country WHERE name LIKE "France" LIMIT 1), "");
SET FOREIGN_KEY_CHECKS = 1;