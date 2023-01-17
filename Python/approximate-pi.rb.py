# NEED:
# A Python Interpreter e.g. terminal, prompt or some online interpreter
# USAGE:
# type "python approximate-pi.py [iterations]" into terminal/prompt
import sys
import random as rnd

# needed variables to approximate pi
iterations = 10000
total = 0.0
in_circle = 0.0
radius = 1.0

# get user input, otherwise use default value
if len(sys.argv) > 1:
    iterations = int(sys.argv[1])
else:
    print("No iteration limit specified --> used default: " + str(iterations))



# for-loop that generates random points and checks if they are in circle
for i in range(iterations):
    point = { 'x': rnd.random()*radius, 'y': rnd.random()*radius}
    total += 1
    distance = (point['x']**2 + point['y']**2)**(1/2)
    if distance < radius:
        in_circle += 1
# pi approximation
pi = 4 * (in_circle / total)

# user output
print("Iterations: " + str(iterations))
print("PI-Approximation: " +str(pi))
