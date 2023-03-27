-- NEED:
-- A browser
-- USAGE:
-- Go to "https://orc.csres.utexas.edu/tryorc.shtml" and copy paste this code
-- To run the program click "run" on the bottom right

val iterations = 100
val radius = 1.0

def approximatePi(iterations) =
 def distance(x,y) = sqrt(x*x + y*y)
 signals(iterations) >> distance(URandom()*radius ,URandom() * radius )

approximatePi(iterations)
