import numpy as np 

temp_in_celsius = [20.1, 20.8, 21.9, 22.5, 22.7, 22.3, 21.8, 21.2, 20.9, 20.1]

# creating numpy array 
C = np.array(temp_in_celsius)
print("Temp in Celius : ",C)

# converting numpy array celsius values into farhenite in concise way
print("Temp in Farhenite : ",C * 9 / 5 + 32)

