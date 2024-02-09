import json

dictionary = {
    "Name":'Mitushi',
    "Age":23,
    "College":"UIT-BHOPAL",
    "Subjects":["CMC","IE","DE","VDC"]
    }
with open('JSON/test.json','w') as json_file:
    data = json.dump(dictionary,json_file)

