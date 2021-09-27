# Covid-19 Deaths & Vaccinations Analysis
The purpose of this Analysis is to identify factors that contribute to a lower mortality from COVID-19 worldwide

https://app.diagrams.net/

### Communication Protocols:
- Tuesday Team Meetings @ 7pm
- Ongoing communication through Slack

## Reasons for topic choice
COVID-19 has ripped across the globe and has been a major source of disruption for the majority of the past two years. Data continues to emerge and discoveries about what contributes to a lower death rate are stil being made. Given the amount of damage done it is extremely important learn everything we can about this disease.

## Data selection
https://github.com/owid/covid-19-data
locations.csv
 - This csv had each country and the vaccines that are used. This included the dates that people were vaccinated

https://ourworldindata.org/covid-deaths
owid-covid-data.csv
 - Has number of vaccines, deaths, diabetes prevalence, hospital beds. Basically everything that we would need to cluster together.

## Question to be answered
- What factors significantly contribute to a lower death rate from infections of the COVID-19 pandemic
- What factors would categorize a country as "high_risk"

# Machine Learning Model

## Data exploration
Initially data was chosen from kaggle.com, however some of the data was not complete enough and had to be exchanged for more complete data.

## Data Analysis
Using unsupervised machine learning, a dataset of more that 25 different factors will be processed in order to determine which variables hold the most significant correlation with lower death rates.

## Training and testing
The main thing we are looking at is how many clusters we want to have. While looking at our first iteration, we found that china is in a class of its own, so further analysis will be needed there.

## Why unsupervised machine learning
We chose the unsupervised model mainly because we are looking to cluster up countries based on their overall handling of covid 19 and the vaccinations they use. The major downside of unsupervised learning is the results we receive are less accurate than a supervised model.

![image](https://github.com/bazibuhejm/covid-19_data-set-Group-IV/blob/main/Vac%20VS%20Death%20VS%20GDP.PNG)

![image](https://user-images.githubusercontent.com/81878169/133534532-96aa94fc-6103-479b-9da7-536ebbcb5c5f.png)

![image](https://user-images.githubusercontent.com/81878169/134742417-a85b7f51-e90e-4326-ab32-486e45edd41c.png)


### Unsupervised Learning Flowchart

![image](https://user-images.githubusercontent.com/81878169/132781422-64f37ff3-e194-450e-aeff-baf2d02506b8.png)


### Factors
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
 
#### Example of Map

![image](https://user-images.githubusercontent.com/81878169/134264891-94febe63-fa6e-42c3-8a6f-f60a23e5c690.png)

#### Test Dashboard Images

![image](https://user-images.githubusercontent.com/81878169/134265081-e2d0d6e3-b95a-4adc-86b4-44afc9a6bc1e.png)

![image](https://user-images.githubusercontent.com/81878169/134265114-db269260-b345-46ae-b12e-ddcc8715abdf.png)


#### Database connection example code:
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
