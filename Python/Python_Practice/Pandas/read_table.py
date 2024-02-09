import pandas as pd 

with open("D:\Python\DE\Pandas\Employees.csv",'r') as csv_file:
    data = pd.read_table(csv_file, delimiter =",")

print(data)
print(data.head()) # to get the data of specified count. Default 5 rows will  be displayed
print(type(data))