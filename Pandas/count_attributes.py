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

# counting all the attributes along columns
print("Count of all values wrt columns")
print(df.count())

#counting all the attributes along rows
print("Count of all values wrt rows")
print(df.count(axis=1)) # instead of 1 we can use 'columns'

# counting values where episodes count are > 12
print("Count of series where episodes are > 12 :",df[df['episodes'] > 12]['series'].count())
print(df.query('episodes > 12'))
print(df.query('episodes > 12').count())

# Counting null values
print("Null Values Count :")
print(df.isnull().sum())
print("Total Null : ",df.isnull().sum().sum())