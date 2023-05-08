# NEED:
# A Python Interpreter e.g. terminal, prompt or some online interpreter
# USAGE:
# type "python approximate-pi.py [iterations]" into terminal/prompt

# TODO: implement parallelization to really utilize mojos potential

from Random import random_f64
from Math import sqrt

# needed variables to approximate pi
let iterations = 100000000
var in_circle = 0.0

fn is_in_radius(x: F64, y: F64) -> Bool:
    if sqrt(x**2 + y**2) < 1.0: 
        return True
    return False

# for-loop that generates random points and checks if they are in circle
for i in range(iterations):
    let x = random_f64(0.0, 1.0)
    let y = random_f64(0.0, 1.0)
    if  is_in_radius(x,y): 
        in_circle += 1
        
# pi approximation
pi = 4 * (in_circle / iterations)

# user output
print("Iterations: ", iterations)
print("PI-Approximation: ", pi)
