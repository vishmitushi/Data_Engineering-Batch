import numpy as np

# Default parameters num=50 endpoint=True retstep=False
print(np.linspace(1, 10))

# 7 values between 1 and 10:
print(np.linspace(1, 10, 7))

# excluding the endpoint:
print(np.linspace(1, 10, 7, endpoint=False))

#Specifying the number of samples
print(np.linspace(0, 1, num=5))

#Returning the step between values

arr3, step = np.linspace(0, 1, num=5, retstep=True)
print(arr3)
print(f"Step: {step}")

# Returning the step between values 
samples, spacing = np.linspace(1, 10, 20, endpoint=True, retstep=True)
print(samples)
print("Step:",spacing)

#Returning the step between values and excluding the endpoint
samples, spacing = np.linspace(1, 10, 20, endpoint=False, retstep=True)
print(samples)
print("Step:",spacing)