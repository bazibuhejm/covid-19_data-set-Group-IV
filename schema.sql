--- Create tables



CREATE TABLE vax_manuf_filtered(
	
	location VARCHAR(40) NOT NULL,
	Abdala                  int,
	COVIran_Barekat         int,
	CanSino                 int,
	Covaxin                 int,
	EpiVacCorona            int,
	Johnson_Johnson         int,
	Medigen                 int,
	Moderna                 int,
	Oxford_AstraZeneca      int,
	Pfizer_BioNTech         int,
	QazVac                  int,
	Sinopharm_Beijing       int,
	Sinopharm_HayatVax      int,
	Sinopharm_Wuhan         int,
	Sinovac                 int,
	Soberana02              int,
	Sputnik_V               int,
	ZF2001                  int,
	PRIMARY KEY(location)


CREATE TABLE owid_covid_data_filtered(

	location VARCHAR(40) NOT NULL,
	total_cases float               ,        
	total_deaths     float           ,            
	total_cases_per_million   float ,               
	total_deaths_per_million  float  ,            
	reproduction_rate         float   ,             
	total_vaccinations             float ,         
	people_vaccinated                   float ,    
	people_fully_vaccinated                float  ,
	total_vaccinations_per_hundred         float ,  
	people_vaccinated_per_hundred          float  , 
	people_fully_vaccinated_per_hundred    float   ,
	population                             float   ,
	population_density                     float   ,
	median_age                             float   ,
	aged_65_older                          float   ,
	aged_70_older                          float   ,
	gdp_per_capita                         float   ,
	extreme_poverty                         float   ,
	cardiovasc_death_rate                  float   ,
	diabetes_prevalence                    float   ,
	female_smokers                         float   ,
	male_smokers                           float   ,
	handwashing_facilities                  float   ,
	hospital_beds_per_thousand              float   ,
	life_expectancy                        float   ,
	human_development_index float   ,
	PRIMARY KEY (location)
);