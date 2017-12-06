'''
@group_members: Corentin Marionneau, Merlin Barzilai
This is a python implementation of the Sieve of Erathostene
'''

import syss
argv = sys.argv

def crible(n):
    t = [True for i in range(n+1)]
    for i in range(2,len(t)):
        if (t[i]):
            for j in range(i+1,len(t)):
                if (not j%i):
                    t[j]=False
    return {i if t[i] else 2 for i in range(len(t))}

if(len(argv)!=2):
    print ("missing arguments\nusage: python3 "+argv[0]+" [integer]")
else:
    print (crible(int(argv[1])))
