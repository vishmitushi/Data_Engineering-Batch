header = ['Name','Score', 'Class']
rows = [['Mitushi', 90 , 12],['Aayushi',90,12],['Himanshi',90,12]]
filename = 'D:\Python\DE\CSV_files\Student_scores.csv'
with open(filename,'w') as file:
    for value in header:
        file.write(str(value) +', ')
    file.write('\n')
    for row in rows:
        for data in row:
            file.write(str(data)+', ')
        file.write('\n')
    