//  NEED:
//  Go-language installed
//  USAGE:
// type "go run approximate-pi.go [iterations]" into terminal/prompt
// or build with "go build approximate-pi.go" and execute with "./approximate-pi.exe [iterations]" on windows and "./approximate-pi [iterations]" on linux
package main

import (
  "time"
  "math/rand"
  "fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	// needed variables to approximate pi
	var total float64 = 0.0
	var inCircle float64 = 0.0
	var radius float64 = 1.0
	var iterations int = 100
  seed := rand.NewSource(time.Now().UnixNano())
  rnd := rand.New(seed)

	// get user input, otherwise use default value
	if len(os.Args) > 1 {
		its, err := strconv.Atoi(os.Args[1])
		if err != nil {
			fmt.Println(err)
			os.Exit(2)
		} else {
			iterations = its
		}
	}

	// for-loop that generates random points and checks if they are in circle
	for i := 0; i < iterations; i++ {
		x := rnd.Float64() * radius
		y := rnd.Float64() * radius
		total++
		distance := math.Sqrt(x*x + y*y)
		if distance < radius {
			inCircle++
		}
	}
  // pi approximation
  pi := 4 * (inCircle / total)

  // user output
  fmt.Println("Iterations: ",iterations)
	fmt.Println("PI-Approximation: ", pi)
}
