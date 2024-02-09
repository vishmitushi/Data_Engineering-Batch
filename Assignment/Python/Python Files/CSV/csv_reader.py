
import csv
rows = []
with open("D:\Python\DE\CSV_files\Employees.csv", 'r') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)
    print(header)
    print(rows)

