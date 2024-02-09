format = lambda num: f"{num:e}" if isinstance(num,int) else f"{num:.2f}"
print("Int formatting",format(10000))
print("Float Formatting",format(20.2434444444))