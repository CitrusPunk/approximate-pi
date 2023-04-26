# REQUIREMENTS:
# NodeJs from https://nodejs.org/en/download
# The Nim compiler from https://nim-lang.org/install.html
# USAGE:
# Open prompt in this directory and run via "nim js -r -d:release approximatePi"
# This will transpile the nim code to js and run it instantly
# You can run the transpiled js file afterwards via "node approximatePi.js" if you have node installed
# You can compile the code using gcc if installed like "nim c -r approximatePi"

import std/math
import std/random

randomize()
let iterations = 1000000
var inCircle = 0

for i in 1..iterations:
    let x = rand(1.0)
    let y = rand(1.0)
    let distance = sqrt(x*x + y*y)
    if distance < 1.0:
        inCircle = inCircle + 1
    
let piApproximation = 4 * inCircle / iterations
echo "Pi Approximation at ", iterations, " iterations: ", piApproximation
