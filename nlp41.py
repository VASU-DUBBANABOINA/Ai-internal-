import re
input="the 3 biggest animals are 1.Rhino 2.Elephant 3.Dog"
input=input.lower()
res=re.sub(r'\d+',' ',input)
print(input)
print(res)
