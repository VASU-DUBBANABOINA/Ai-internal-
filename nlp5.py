from nltk import ngrams
sen="this is my sentence and i want to ngramize it"
n=6
n_grams=ngrams(sen.split(),n)
for grams in n_grams:
    print(grams)
'''for grams1 in n_grams:
    print(''.join(grams1))'''
    
