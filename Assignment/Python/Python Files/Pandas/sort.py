import pandas as pd 

with open("D:\Python\DE\Pandas\Employees.csv",'r') as csv_file:
    data = pd.read_csv(csv_file)

df_sorted_age = data.sort_values(by='Salary')
print(df_sorted_age)