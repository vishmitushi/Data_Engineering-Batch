import pandas as pd 
data = pd.read_csv("CSV_files\Employees.csv")
print(data)
print(data.columns) # retreives header names
print(data.Salary) # retrieves rows for Salary column