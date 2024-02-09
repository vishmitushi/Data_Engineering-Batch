import pandas as pd

csv_file_path = 'DE/Pandas/Employees.csv'

dynamic_columns = ['EmpID', 'Name']

df = pd.read_csv(csv_file_path, usecols=dynamic_columns)

print(df)