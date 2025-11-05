#a=open("ex", "r")
#b=a.read()
#print(b)
import json
k = []

with open("ex", "r") as f, open("fib", "w") as p:
    for b in f:
        c=b.split()
        date=c[0]
        time=c[1]
        k.append({"Date":date, "time":time})
        p.write(json.dumps(k))

