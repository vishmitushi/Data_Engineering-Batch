# using incuilt function len in key
lst = ['Lifelong','bye','fake']
lst.sort(key=len)
print(lst)

# using user defined function which returns 2 character of string
def Func(l):
    return l[1]

# list is sorted according to second character of strings in ascending order
lst.sort(key=Func)
print(lst)

lst.sort(reverse=True,key=Func)
print(lst)




