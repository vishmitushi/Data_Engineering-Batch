import pandas as pd 
header = ['Name','Score', 'Class']
rows = [['Mitushi', 90 , 12],['Aayushi',90,12],['Himanshi',90,12]]
data = pd.DataFrame(rows, columns=header)
data.to_csv('D:\Python\DE\Pandas\Stud_score.csv',index=False)

print(pd.read_csv('D:\Python\DE\Pandas\Stud_score.csv'))