# A sum of all elements in a list
import functools
li = [5, 8, 10, 20, 50, 100]
sum = functools.reduce((lambda x, y: x + y), li)
print(sum)

# Find the maximum element in a list
lis = [1, 3, 5, 6, 2, ]
print("The maximum element of the list is : ", end="")
print(functools.reduce(lambda a, b: a if a > b else b, lis))