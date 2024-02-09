from collections import Counter
def unique(l):
 counter = Counter(l)
 print(*counter)

l1 = [10, 20, 10, 30, 40, 40]
print("the unique values from the list is")
unique(l1)
