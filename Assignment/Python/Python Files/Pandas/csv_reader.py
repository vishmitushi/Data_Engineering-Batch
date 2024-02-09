import csv
import pandas as pd 
rows = []
with open("D:\Python\DE\Pandas\Employees.csv", 'r') as file:
    csvreader = csv.reader(file)
    df = pd.DataFrame([csvreader],index=None)
    # print(list(df))
    # print(df)
    for i in range(0,len(list(df))):
        for data in df[i]:
            print(data)

            
    # df = pd.DataFrame(list(csvreader),index=None)
    # print(df)
    # for index, row in df.iterrows():
    #     print(row)
    #     for data in row:
    #         print(data)