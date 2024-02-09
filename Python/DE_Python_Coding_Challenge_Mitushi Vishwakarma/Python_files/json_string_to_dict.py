import json

json_string = '{ "Name" : "Mitushi","Age" :23,"Hobbies":["Dancing","Sketching","Sports"]}'

python_dict = json.loads(json_string)
print(python_dict)
print(type(python_dict))

json_array = '''[{ "Name" : "Mitushi","Age" :23,"Hobbies":["Dancing","Sketching","Sports"]},
{ "Name" : "aayushi","Age" :29,"Hobbies":["Singing","Sketching","Sports"]},
{ "Name" : "Vishesh","Age" :24,"Hobbies":["Travelling","Sketching","Sports"]}]'''

python_list = json.loads(json_array)
print(python_list)
print(type(python_list))