import pandas as pd 

with open("Employees.csv",'r') as csv_file:
    df = pd.read_csv(csv_file)
    print("Without Filtering")
    print(df)
    print("With Filtering")
    print(df.query("Salary > 1700000"))