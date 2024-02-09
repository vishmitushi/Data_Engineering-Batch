import pandas as pd 

NaN = pd.NA
dict = { 
    'series': ['Friends', 'Money Heist', 'Marvel','Dark','Class','Elite'], 
    'episodes': [200, 50, 45, NaN, 12, 8], 
    'actors': [' David Crane', NaN, 'Stan Lee', 'Alvaro','Suhani','Pedro'],
    'language':['English','Spanish','English','German',NaN,'Spanish']
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
print(df)

# Counting the values where language is English and Episodes are >50
print('Count of the series where language is English and Episodes are >50 : ')
print(df[(df['language'] == "English") & (df['episodes']>50)]['series'].count())