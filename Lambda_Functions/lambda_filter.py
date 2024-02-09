#-----------Example 1
words = ["apple", "banana", "cherry", "date", "elderberry"]

# Using filter with lambda
filtered_words = filter(lambda x: len(x) <= 5, words)

# Converting the filter object to a list for display
result_list = list(filtered_words)

print("Original words:", words)
print("Filtered words with length <= 5:", result_list)

#-----------Example 2
# Filter out all odd numbers
li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
print('Original List',li)
final_list = list(filter(lambda x: (x % 2 != 0), li))
print("list with odd numbers",final_list)

#-----------Example 3
# Filter all people having age more than 18
ages = [13, 90, 17, 59, 21, 60, 5]
adults = list(filter(lambda age: age > 18, ages))

print(adults)

