#!/usr/bin/env io
# REQUIREMENTS:
# Io Interpreter installed via https://iolanguage.org/guide/guide.html
# USAGE:
# Open prompt in this directory and run the file with 'io approximate-pi.io'

Random setSeed(Date clone now asNumber)
iterations := 1000000
inCircle := 0

for(i, 1, iterations, 
    x := Random value
    y := Random value
    distance := (x**2 + y**2) sqrt
    if(distance < 1.0, inCircle = inCircle + 1)
  )

pi := 4.0 * inCircle / iterations

writeln("Iterations: ", iterations)
writeln("Approximation of Pi: ", pi)
