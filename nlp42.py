from nltk import PorterStemmer
Stemmer=PorterStemmer()
print(Stemmer.stem('eating'))
print(Stemmer.stem('ate'))
print(Stemmer.stem('running'))
