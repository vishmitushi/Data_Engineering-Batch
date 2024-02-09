import csv
data=[{'Name':'Rudra','Age':25,'Salary':300000},
    {'Name':'Krishna','Age':24,'Salary':400000},
    {'Name':'Ram','Age':21,'Salary':20000}]
with open('CSV_files\Emp_Data.csv','w',newline='') as file:
    field_names=['Name', 'Age', 'Salary']
    writer=csv.DictWriter(file,fieldnames=field_names)
    writer.writeheader()
    writer.writerows(data)