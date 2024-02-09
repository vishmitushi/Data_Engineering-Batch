import csv
header = ['Name', 'M1 Score', 'M2 Score']
data = [['Mitushi', 62, 80], ['Vaishali', 45, 56], ['Rohit', 85, 98]]
filename = 'D:\Python\DE\CSV_files\Students_Data.csv'
with open(filename, 'w', newline="") as file:
    csvwriter = csv.writer(file) # create a csvwriter object
    csvwriter.writerow(header) #  write the header
    csvwriter.writerows(data) # write the rest of the data