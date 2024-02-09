import pandas as pd 

with open("D:\Python\DE\Pandas\Employees.csv",'r') as csv_file:
    data = pd.read_csv(csv_file)

print(data)
print(data.columns)
print(data.head()) # to get the data of specified count. Default 5 rows will  be displayed
print(type(data))