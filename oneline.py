#A copy of oneline of ruby made using python
#Original https://github.com/fdavidcl/oneline

################################################################################
# 1. Print a message (laaame) #
################################################################################

print("Hello World!")

################################################################################
# 2. Swap two objects                                                          #
################################################################################

one,two = two, one

################################################################################
# 3. Cheer up on Fridays                                                       #
################################################################################

#Sadly you need to import datetime

import datetime
if datetime.datetime.today().weekday() == 4: print("Hooray!")

################################################################################
# 4. Print an array as a numbered list                                         #
################################################################################

long_list = ["this","is","not","a","long","list"]
print("\n".join("{}. {}".format(*word) for word in enumerate(long_list)) )

################################################################################
# 5. Find the inner product of two vectors                                     #
################################################################################

v1 = [6, 4, -1]
v2 = [-9, 0, 1]

sum([i*j for (i, j) in zip(v1,v2)])

################################################################################
# BONUS! Check primality                                                       #
################################################################################
from math import sqrt
# True if number is prime
print (not any([True for d in range(2,int(sqrt(p)+1)) if p%d == 0 ]))

################################################################################
# 6. Create your own type of exception                                         #
################################################################################
class MyCustomError(Exception):pass

################################################################################
# 7. Start a web server in the current directory                               #
################################################################################

#From command line

python -m SimpleHTTPServer

################################################################################
# 9. Fibonacci in one line.
# From http://stackoverflow.com/questions/4935957/fibonacci-numbers-with-an-one-liner-in-python-3
#################################################################################

from functools import reduce

fib = lambda n: reduce(lambda x, _: x+[x[-1]+x[-2]], range(n-1), [0, 1])[-1]
