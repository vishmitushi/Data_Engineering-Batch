from functools import reduce
def unique(l):
    result = reduce(lambda y,x:y+[x] if x not in y else y,l,[])
    print(result)

l = [10,20,10,30,40,40]
print('The unique values in list are :')
unique(l)