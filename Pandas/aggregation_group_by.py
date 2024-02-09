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

aggregated_df = df.groupby('language')['series'].count().reset_index()
print(aggregated_df)