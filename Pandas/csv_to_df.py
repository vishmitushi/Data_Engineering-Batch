import pandas as pd 

with open("D:\Python\DE\Pandas\Employees.csv",'r') as csv_file:
    df = pd.read_csv(csv_file)
    print(df)


# import pandas as pd

# # Specify the path to your CSV file
# csv_file_path = r"D:\Python\DE\CSV_files\Employees.csv"

# # Read the CSV file into a Pandas DataFrame
# df = pd.read_csv(csv_file_path)

# # Display the DataFrame
# print(df)