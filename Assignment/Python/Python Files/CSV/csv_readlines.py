with open('D:\Python\DE\CSV_files\Employees.csv') as file:
    content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)
