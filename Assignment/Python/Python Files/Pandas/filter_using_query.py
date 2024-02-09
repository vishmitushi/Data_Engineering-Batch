import pandas as pd 

with open("D:\Python\DE\Pandas\Employees.csv",'r') as csv_file:
    df = pd.read_csv(csv_file)
    print(df.query("Salary > 1700000"))