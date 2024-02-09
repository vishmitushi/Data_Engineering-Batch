import json 
  
data='''{   
   "Student":[   
      {   
         "enrollment_no":"9915103000", 
         "name":"Mitushi", 
         "subject":[   
            {   
               "code":"DBMS", 
               "grade":"C" 
            } 
         ] 
      }, 
      {   
         "enrollment_no":"8815103057", 
         "name":"Aayushi", 
         "subject":[   
            {   
               "code":"COA", 
               "grade":"A" 
            }, 
            {   
               "code":"CN", 
               "grade":"A+" 
            } 
         ] 
      } 
   ] 
}'''
  
json_parse = json.loads(data)

for it in json_parse['Student']: 
    for y in it['subject']: 
        print(y['code'],y['grade'],it['enrollment_no'],it['name']) 
