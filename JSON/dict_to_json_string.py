import json
dictionary = {"Name":"Mitushi","age":23,"Hobbies":["Dance","Sports","Sketch"]} 

json_object = json.dumps(dictionary)
print(json_object)
print(type(json_object))
json_indent = json.dumps(dictionary,indent=4)
print(json_indent)