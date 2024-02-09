import json

json_string = '{ "Name" : "Mitushi","Age" :23,"Hobbies":["Dancing","Sketching","Sports"]}'

details = json.loads(json_string)
print(details)
print(type(details))
print(type(json_string))
print(type(details["Hobbies"]))
print(details["Hobbies"])