import pandas as pd 

dict1 = {
    "name" : ['Mitushi','Aayushi','Vishesh','Mohit','Shan','Anushka','Akshi'],
    "roll_no":[2,1,5,3,4,7,8]
}

dict2 = {
    "marks" : [90,91,90,92,93,89,97],
    "roll_no":[1,2,3,4,5,6,9]
}

df1=pd.DataFrame(dict1)
df2=pd.DataFrame(dict2)

#inner join
print("Inner Join")
print(pd.merge(df2,df1,on='roll_no',how='inner'))

# left join
print("Left Join")
print(pd.merge(df2,df1,on='roll_no',how='left'))

# right join
print("Right Join")
print(pd.merge(df2,df1,on='roll_no',how='right'))

# full outer join
print("full outer Join")
print(pd.merge(df2,df1,on='roll_no',how='outer'))

