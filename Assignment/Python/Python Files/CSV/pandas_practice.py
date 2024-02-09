import pandas as pd
import numpy as np

# creating Series using numpy array
ser = pd.Series()
print("Pandas Series: ", ser)
data = np.array([1,2,3,4])
ser =pd.Series(data)
print("Pandas Series: ", ser)


# creating dataframe using dictionary
# Creating Dictionary 
dict = { 
    'series': ['Friends', 'Money Heist', 'Marvel'], 
    'episodes': [200, 50, 45], 
    'actors': [' David Crane', 'Alvaro', 'Stan Lee'] 
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
print(df)