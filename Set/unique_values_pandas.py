import pandas as pd 

def unique_list(l):
    unique_list = pd.Series(l).drop_duplicates().tolist()
    for i in unique_list:
        print(i)


l = [1,2,3,4,3,2,2,1,1]
print("the unique values from list are : ")
unique_list(l)