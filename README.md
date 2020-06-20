# Sommelier ETL Project for Butler Data Analytics
Sommelier Data Obtained from Kaggle </br>
Ben Reiff, Chelsea Snedden, Morgan Bricker
---
# Extract
We began by downloading a CSV from Kaggle open source Wine Review data and located a CSV of scraped data from a website on Napa Valley Wine Locations and Info.</br>
Why we chose this topic:
1. We were interested in wine tourism in California for planning future trips.
2. We found this dataset to be unique in comparison to previous projects.
3. Huge fans of wine, one of us has experience working in fine dining.
---
# Our Extraction process:
- Downloaded CSV file from Wine Reviews Kaggle
- Downloaded CSV file from a web scrape of a Napa Valley wineries list from this Github of Napa Valley Wineries List, based on open source data from Napa Valley Wine Locations and Info.
- In our Github, the files are 'winemag-data-130k-v2.csv' and 'Napa-Winery-List62012.csv'.
- We chose to use CSVs as a format because it made the cleaning of the data more uniform when using the data frames for the next task
---
# Transform
Our Transformation process was centered around what made the data easier to work with.
1. Used Pandas to read in the CSVs into their own data frames and list the columns so we could see which columns we want to clean out.
2. Narrowed the scope of our original wine ratings CSV to focus on Californian wines.
3. Used the .dropna() function to drop blank entries in both datasets.
4. Created a condensed version of each data frame by only stating the columns we wanted to keep using the .copy() function.
5. Used the .to_csv() function to upload our newly cleaned, condensed CSVs so we could upload them into a MongoDB database with ease, (in our Github, these are files 'cleaned_napa_wineries.csv' and 'condensed_wine_rating.csv').
---
# Load
Our Loading process utilized MongoDB.
We created a database named "Sommelier_DB" including two collections (one for each CSV) named 'Wine_Location' and 'Wine_info' so we could query based on:
1. Winery, wine varietals, wine information, and prices.
2. Winery, address, location, and phone number.
---
# So, Why?
The purpose of this exercise was to extract data, transform it to a usable format and load it into MongoDB.
The 'new' aspect of this data can be found when you query one of the Napa Valley Wineries; one collection provides us with winery, wine varietals, and wine info, whereas, another provides us with the winery address, location, and phone number should we wish to visit that winery on a vacation trip to Napa Valley.

