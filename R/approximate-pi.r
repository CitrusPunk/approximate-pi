# NEED:
# A browser and internet connection
# USAGE:
# Go to: 
# Copy/Paste Code:

# needed variables to approximate pi
amountOfIterations <- 10000000
xs <- runif(amountOfIterations)
ys <- runif(amountOfIterations)
inCircle <- 0.0
radius <- 1.0

# for-loop that generates random points and checks if they are in circle
for (iteration in 1:amountOfIterations) 
{
    distance <- sqrt(xs[iteration]**2 + ys[iteration]**2)
if(distance < radius)
    {
        inCircle <- inCircle + 1
    }     
}
 
# Pi approximation
pi <- 4 * (inCircle / amountOfIterations);
print(pi)