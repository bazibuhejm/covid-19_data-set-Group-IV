# Covid-19 Deaths & Vaccinations Analysis
https://app.diagrams.net/

## Communication Protocols:
- Tuesday Team Meeting @ 7pm
- Continual communication through Slack
- Team meeting 9/9 @ 7pm

## Roles (Segment 1)
- GitHub: Jean-Marie
- Database: Dillon
- ML Model: Logan
- Database to ML Model connection: Chris
- Data ETL: All


## Selected Topic: Covid-19 Death Rates: 
Determine principal components most likely to contribute to a higher death rate in a particular country.
- PCA
- K-Means 

## Reasons for topic choice
We want to try and find a correlation between different vaccines, their effectiveness, and each countrys "covid prepardness".

## .csv's used
Country_vaccinations_by_manufacturer.csv
 - This csv had each country and the vaccines that are used. This included the dates that people were vaccinated
 
owid-covid-data.csv
 - Has number of vaccines, deaths, diabetes prevalence, hospital beds. Basically everything that we would need to cluster together.
 - Filtered and correlated:
 
 ![image](https://user-images.githubusercontent.com/81878169/133195849-1ec4ac83-f59f-44d9-9a4f-8a5d7e5e1c2e.png)


country_vaccinations.csv
 - Thsi csv has daily vaccinations and country/iso_code.

## Unsupervised Learning Flowchart

![image](https://user-images.githubusercontent.com/81878169/132781422-64f37ff3-e194-450e-aeff-baf2d02506b8.png)


## Factors
- POPULATION
- POPULATION DENSITY
- AGE OF POPULATION
- DEATH RATE
- COUNTRY
- VAX MANUFACTURER
- AS OF DATE
- TOTAL VACCINATIONS
- TOTAL CASES
- TOTAL DEATHS
- EXCESS MORTALITY
- GDP PER CAPITA
- HOSPITAL BEDS PER THOUSAND
 
## Questions to be answered
What factors determine a country as high_risk for covid related deaths?
-          Hospital beds
-          Commorbidity
-          Vax rate
-          Vaccine Manufacturer


## Questions to ask for week 2.
- Where does the Postsql database "live"?
  - Do we need our own copy on each of our computers?

### Database connection example code:
    # Database engine connection
    db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5434/movie_data"
    engine = create_engine(db_string)
    movies_df.to_sql(name='movies', con=engine, if_exists='replace')
    
    # Opening a connection
    connection = engine.raw_connection()
    # Creating a cursor object using the cursor() method
    cursor = connection.cursor()
    # Droping ratings table if already exists
    cursor.execute("DROP TABLE IF EXISTS ratings")
    # Commit your changes in the database
    connection.commit()
    # Closing the connection
    connection.close()
