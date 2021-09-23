# Covid-19 Deaths & Vaccinations Analysis
https://app.diagrams.net/

## Communication Protocols:
- Tuesday Team Meetings @ 7pm
- Continual communication through Slack

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
![image](https://user-images.githubusercontent.com/81878169/133534532-96aa94fc-6103-479b-9da7-536ebbcb5c5f.png)



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
### Example of Map

![image](https://user-images.githubusercontent.com/81878169/134264891-94febe63-fa6e-42c3-8a6f-f60a23e5c690.png)

### Test Dashboard Images

![image](https://user-images.githubusercontent.com/81878169/134265081-e2d0d6e3-b95a-4adc-86b4-44afc9a6bc1e.png)

![image](https://user-images.githubusercontent.com/81878169/134265114-db269260-b345-46ae-b12e-ddcc8715abdf.png)


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
