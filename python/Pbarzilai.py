'''
@group_members: Corentin Marionneau, Merlin Barzilai
This is a python implementation of the Sieve of Erathostene
'''

from math import sqrt
import sys
argv = sys.argv

'''
the function proceeds as folllows:
    @param n: an integer
    @field t: boolean array of size n filled with True
        t[i] == true implies that i is a prime number
    t is parsed. whenever the next prime is found in it,
    the values of its multiples are set to False.
    multiples are found by constructing ranges with a set step.

    the return value is generated from t. it simply substitutes every
    True value for its index.
    It is made a set, as it allows to remove all the False values.

    it is noticeable that 0 and 1 are set to True by default.
    this can be manually set, if need be.
'''
def crible(n):
    t = [True for i in range(n+1)]
    for i in range(2,int(sqrt(n))):
        if (t[i]):
            for j in range(2*i,len(t),i):
                t[j]=False
    return {i if t[i] else 2 for i in range(len(t))}

if(len(argv)!=2):
    print ("missing arguments\nusage: python3 "+argv[0]+" [integer]")
else:
    print (crible(int(argv[1])))
