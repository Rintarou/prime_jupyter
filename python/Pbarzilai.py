'''
@author: Merlin Barzilai
@group_members: Corentin Marionneau
This is a python implementation of the Sieve of Erathostene
'''

import sys
argv = sys.argv

def crible(n):
    t = [True for i in range(n+1)]
    for i in range(2,len(t)):
        if (t[i]):
            for j in range(i+1,len(t)):
                if (not j%i):
                    t[j]=False
    return {i if t[i] else 2 for i in range(len(t))}

'''
def crible2(n):
    t = [j if k%j else False for j in range(2,n+1) for k in range (j+1, n+1)]
    return t;
    return [i if t[i] else 0 for i in range(len(t))]
'''

if(len(argv)!=2):
    print ("missing arguments\nusage: python3 "+argv[0]+" [integer]")
else:
    print (crible(int(argv[1])))
