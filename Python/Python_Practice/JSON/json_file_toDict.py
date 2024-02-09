import json
with open('D:\Python\DE\JSON\data.json') as json_file:
    data = json.load(json_file)
    print(type(data))
    print(data)
    print(data['employee'][0]['name'])
    for i in data['employee']:
        print(i)