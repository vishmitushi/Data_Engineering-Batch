import pandas as pd 

csv_data = pd.read_csv('DE\Pandas\Employees.csv')

print(csv_data)

dynamic_column_list = ['EmpID','Name']

new_data = csv_data[dynamic_column_list]

print(new_data)