import csv
with open("CSV_files\Employees.csv", 'r') as file:
    csvreader = csv.reader(file)
    print(csvreader)
    list_csv = list(csvreader)
    print(list_csv)