# reading csv using DictReader()
import csv
with open('CSV_files\Employees.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row)