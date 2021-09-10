--- Create tables


CREATE TABLE owid_covid_data(
	location VARCHAR(20) NOT NULL,
	total_cases INT NOT NULL,
	total_deaths INT NOT NULL,
	population INT NOT NULL,
	population_density INT NOT NULL,
	aged_65_older FLOAT NOT NULL,
	gdp_per_capita INT NOT NULL,
	PRIMARY KEY (location)
);

CREATE TABLE country_vaccinations(
	location VARCHAR(20) NOT NULL,
	total_vaccinations INT NOT NULL,
	people_vaccinated INT NOT NULL,
	PRIMARY KEY(location),
	FOREIGN KEY (location) REFERENCES owid_covid_data(location)
);

CREATE TABLE country_vaccinations_by_manufacturer(
	location VARCHAR(25) NOT NULL,
	JohnsonJohnson VARCHAR(25) NOT NULL,
	Moderna VARCHAR(25) NOT NULL,
	OxfordAstraZeneca VARCHAR(25) NOT NULL,
	PfizerBioNTech VARCHAR(25) NOT NULL,
	SputnikV VARCHAR(25) NOT NULL,
	SinopharmBeijing VARCHAR(25) NOT NULL,
	PRIMARY KEY(location),
	FOREIGN KEY(location) REFERENCES country_vaccinations(location)
);


	