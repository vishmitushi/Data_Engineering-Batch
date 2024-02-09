# Multiply all elements of a list by 2 

li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(map(lambda x: x*2, li))
print(final_list)

# Squaring numbers
numbers = [1, 2, 3, 4, 5]

# Using map with lambda to square each number
squared_numbers = map(lambda x: x ** 2, numbers)

# Converting the map object to a list for display
result_list = list(squared_numbers)

print("Original numbers:", numbers)
print("Squared numbers:", result_list)

# Transform all elements of a list to upper case
animals = ['dog', 'cat', 'parrot', 'rabbit']
uppered_animals = list(map(lambda animal: animal.upper(), animals))
 
print(uppered_animals)