# Covid-19 Deaths & Vaccinations Analysis
The purpose of this Analysis is to identify factors that contribute to a lower mortality from COVID-19 worldwide.

Presentation outline - https://docs.google.com/presentation/d/1YLNVc4fpKc0PblaciqoOllDkWbz_0_rzXldT66eyRGU/edit?usp=sharing
https://app.diagrams.net/


## Reasons for topic choice
COVID-19 has ripped across the globe and has been a major source of disruption for the majority of the past two years. Data continues to emerge and discoveries about what contributes to a lower death rate are stil being made. Given the amount of damage done it is extremely important we learn everything we can about this disease.

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

## Data preprocessing
The data preprocessing included removing columns where data was mostly incomplete. For the purpose of the machine learning model the locations.csv had to be one hot encoded. Other considerations for the preprocesing were removing columns that were labeled "new". The data was tablulated in a cumulative fashion so we only took the most recent numbers available. The "new" columns had data that only represented a small segment of time and thus were not usable for our analysis.

## Data Analysis
Using unsupervised machine learning, a dataset of more that 25 different factors will be processed in order to determine which variables hold the most significant correlation with lower death rates.

## Training and testing
The main thing we are looking at is how many clusters we want to have. While looking at our first iteration, we found that china is in a class of its own, so further analysis will be needed there.

## Why unsupervised machine learning
We chose the unsupervised model mainly because we are looking to cluster up countries based on their overall handling of covid 19 and the vaccinations they use. The major downside of unsupervised learning is the results we receive are less accurate than a supervised model.

## Update on training and testing
After looking at our output, we decided to run our program again but with different amounts of clusters. Some interesting things to note, United States and India were always paired together until the clusters were brought down to 2. China was usually by themselves which we think is due to unfaithful reporting on their part. We decided to stick with our 5 clusters as it has some strong outliers that can be some good focus points.

![image](https://github.com/bazibuhejm/covid-19_data-set-Group-IV/blob/main/Resources/PNG%20files/GDP%20vs%20Deaths.PNG)

![image](https://github.com/bazibuhejm/covid-19_data-set-Group-IV/blob/main/Resources/PNG%20files/All%20Class%20vs%20Deaths%20vs%20Vax.PNG)

![image](https://github.com/bazibuhejm/covid-19_data-set-Group-IV/blob/main/Resources/PNG%20files/Deaths%20vs%20Median%20Age.PNG)

![image](https://github.com/bazibuhejm/covid-19_data-set-Group-IV/blob/main/Resources/PNG%20files/Smokers%20vs%20Deaths.PNG)

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


# Dashboard

https://public.tableau.com/views/Covid19_16333961680110/COVID-19Analysis?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
