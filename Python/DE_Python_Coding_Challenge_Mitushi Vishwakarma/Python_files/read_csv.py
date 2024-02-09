import pandas as pd 
import csv

# using read_csv
print("Method 1 using read_csv:")
csv_file = "Employees.csv" 
data = pd.read_csv(csv_file)
print(data)

print("Method 2 using read_table:")
# using read_table
with open("Employees.csv",'r') as csv_file:
    data1 = pd.read_table(csv_file, delimiter =",")
print(data1)

# using csv_reader
print("Method 3 using csv_reader:")
with open("Employees.csv", 'r') as file:
    csvreader = csv.reader(file)
    df = pd.DataFrame([csvreader],index=None)

    for i in range(0,len(list(df))):
        for data in df[i]:
            print(data)