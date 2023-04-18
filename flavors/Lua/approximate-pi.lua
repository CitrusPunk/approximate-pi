--[[
NEED:
Lua installed
USAGE:
open terminal in this directory and type "lua ./approximate-pi.lua" to compile
]]


local answer
repeat
-- needed variables to approximate pi
iterations = 10000
total = 0.0
inCircle = 0.0
radius = 1.0

-- get user input
io.write("Type limit of iterations:")
iterations = tonumber(io.read())

-- for-loop that generates random points and checks if they are in circle
for i = 1, iterations do
  x = math.random() * radius
  y = math.random() * radius
  total = total + 1.0
  distance = math.sqrt(x*x + y*y)
  if distance < radius
  then inCircle = inCircle + 1.0
  end
end

-- pi approximation
pi = 4 * (inCircle / total)

-- user output
io.write("\nPI-Approximation: ", pi)

io.write("\nRestart? [yes/no]   ")
io.flush()
answer=io.read()
until answer=="no" or answer=="No" or answer=="n" or answer=="N"
