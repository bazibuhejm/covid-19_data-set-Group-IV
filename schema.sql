--- Create tables

CREATE TABLE country_vaccinations(
	location VARCHAR(20) NOT NULL,
	date date NOT NULL,
	total_vaccinations INT NOT NULL,
	people_vaccinated INT NOT NULL,
	PRIMARY KEY(location)
);


CREATE TABLE country_vaccinations_by_manufacturer(
	location VARCHAR(20) NOT NULL,
	date date NOT NULL,
	vaccine VARCHAR(20) NOT NULL,
	total_vaccinations INT NOT NULL,
	PRIMARY KEY(location),
	FOREIGN KEY (location) REFERENCES country_vaccinations(location)
);


CREATE TABLE owid_covid_data(
	location VARCHAR(20) NOT NULL,
	date DATE NOT NULL,
	total_cases INT NOT NULL,
	total_deaths INT NOT NULL,
	population INT NOT NULL,
	population_density INT NOT NULL,
	aged_65_older INT NOT NULL,
	gdp_per_capita INT NOT NULL,
	PRIMARY KEY (location),
	FOREIGN KEY (location) REFERENCES country_vaccinations(location)
);

	