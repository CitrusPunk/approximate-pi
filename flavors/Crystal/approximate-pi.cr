# REQUIREMENTS
# Browser and Internet connection
# USAGE
# Go to https://play.crystal-lang.org/#/cr
# Copy paste this code into the editor and hit "Compile & run code"

r = Random.new
iterations = 10000000
in_circle = 0.0
 
counter = 0
until counter >= iterations
  counter += 1
  x = r.rand
  y = r.rand
  distance = Math.sqrt(x*x + y*y)
  if distance < 1
    in_circle += 1.0
  end
end
 
pi_approximation = 4.0 * in_circle / iterations
 
puts "iterations: ", iterations   
puts "pi approximation: ", pi_approximation 