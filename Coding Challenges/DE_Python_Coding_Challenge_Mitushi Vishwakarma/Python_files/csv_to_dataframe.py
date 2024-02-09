import pandas as pd 

with open("Employees.csv",'r') as csv_file:
    df = pd.read_csv(csv_file)

    dataframe = pd.DataFrame(df)
    print(dataframe)
    print(type(dataframe))