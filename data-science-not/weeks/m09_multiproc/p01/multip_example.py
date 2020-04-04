"""
Write a program that takes a string as input and returns a string in which each character is followed by **
e.g. bob >> b**o**b**

The solution provided uses parallelism
"""

from multiprocessing import cpu_count, Pool


def slice_data(s):
    out = []
    for ch in s:
        out.append(ch)
    return out

def work(ch):
    return ch+"**"

def integrate(results):
    out = ""
    for r in results:
        out += r
    return out

data = "hello"

# slicing data
slices = slice_data(data)
print("\nSlice list: {0}\n\n".format(slices))

# mapping
cores = cpu_count()
pool = Pool(cores)
results = pool.map(work, slices)
pool.close()
pool.join

print("Results returned from map: {0}\n\n".format(results))


r = integrate(results)
print("Integrated result: {0}".format(r))