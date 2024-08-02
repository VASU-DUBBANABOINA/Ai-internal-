def punctuations(raw_review):
    text=raw_review
    text=text.replace("n't","not")
    text=text.replace("'s"," is")
    text=text.replace("in","ing")
    text=text.replace("'re"," are")
    text=text.replace("'ve"," have")
    text=text.replace("'m"," am")
    text=text.replace("'ll"," will")
    text=text.replace("'id"," would")
    import re
    letters_only=re.sub("[^a-zA-Z]",' ',text)
    return(''.join(letters_only))
text="how's my team doin' you're supposed to be losin"
p=punctuations(text)
print(p)


