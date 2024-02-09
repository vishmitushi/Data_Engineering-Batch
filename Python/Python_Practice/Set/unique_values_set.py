def unique(lst):
 
    list_set = set(lst)
    unique_list = (list(list_set))
    for x in unique_list:
        print(x),
 
 
lst = [10, 20, 10, 30, 40, 40]
print("the unique values from thelist is")
unique(lst)
