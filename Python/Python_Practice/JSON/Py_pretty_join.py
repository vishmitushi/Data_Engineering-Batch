import json 

string ='{"Name": "Mitushi", "Age": 23, "College": "UIT-BHOPAL", "Subjects": ["CMC", "IE", "DE", "VDC"]}'

Student_data = json.loads(string)

print('Total subjects : ',len(Student_data["Subjects"]))
for i in Student_data["Subjects"]:
    print(i)


print(json.dumps(Student_data,indent=4,sort_keys=True))