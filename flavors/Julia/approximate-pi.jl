# NEED:
# A Julia JIT Compiler
# USAGE:
# type "julia approximate-pi.jl [iterations]" into terminal/prompt


# needed variables to approximate pi
iterations = 10000
total = 0.0
in_circle = 0.0
radius = 1.0

# get user input, otherwise use default value
if length(ARGS) > 0
    iterations = parse(ARGS[1])
else
    println("No iteration limit specified --> used default: ", iterations)
end


# initialize random 2 dimensional array and square each value for later calculation quadratic
points = (rand!(zeros(iterations,2)) .* radius) .^ 2

# is point in circle/ out of circle
for i = 1:iterations
    total += 1
    distance = sqrt(points[i,1] + points[i,2])
    if distance < radius
        in_circle += 1
    end
end

# pi approximation
pi = 4 * (in_circle / total)

# user output
println("Iterations: ", iterations)
println("PI-Approximation: ", pi)
