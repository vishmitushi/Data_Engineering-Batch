even_list = [lambda arg=x: arg * 10 for x in range(1, 5)]
for item in even_list:
    print(item())