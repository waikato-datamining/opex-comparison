import sys
import timeit
from opex import ObjectPredictions

path = "image.json"
if len(sys.argv) > 1:
    path = sys.argv[1]

runs = 10
if len(sys.argv) > 2:
    runs = int(sys.argv[2])

with open(path, "r") as fp:
    lines = fp.readlines()
s = "".join(lines)
pred = ObjectPredictions.from_json_string(s)


def from_string():
    ObjectPredictions.from_json_string(s)


def to_string():
    pred.to_json_string()


print("from_string", timeit.timeit(from_string, number=runs))
print("to_string", timeit.timeit(to_string, number=runs))

