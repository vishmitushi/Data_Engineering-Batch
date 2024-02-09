import operator as op 
def unique_list(l):
    unique_list=[]
    for item in l:
        if op.countOf(unique_list,item)==0:
            unique_list.append(item)
        
    for i in unique_list:
        print(i)

l = [1,2,3,4,3,2,2,1,1]
print("the unique values from list are : ")
unique_list(l)