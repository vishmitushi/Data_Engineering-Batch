# reading csv using DictReader()
import csv
with open('D:\Python\DE\CSV_files\Employees.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row)