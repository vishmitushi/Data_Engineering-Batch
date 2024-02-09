import pandas as pd 
import json
dict = { 
    'series': ['Friends', 'Money Heist', 'Marvel'], 
    'episodes': [200, 50, 45], 
    'actors': [' David Crane', 'Alvaro', 'Stan Lee'] 
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
df.to_json('DE/Pandas/test1.json') # creates a dictionary of dictionaries
df.to_json('DE/Pandas/test2.json',orient='records') # creates a array of dictionaries