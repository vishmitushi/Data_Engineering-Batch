import pandas as pd 

dict = { 
    'series': ['Friends', 'Money Heist', 'Marvel'], 
    'episodes': [200, 50, 45], 
    'actors': [' David Crane', 'Alvaro', 'Stan Lee'] 
} 
  
# Creating Dataframe 
dataframe = pd.DataFrame(dict) 
print("Pandas DataFrame")
print(dataframe)

# Creating Series
lst = [1,2,4,5,6]
series = pd.Series(lst)
print("Pandas Series")
print(series)

