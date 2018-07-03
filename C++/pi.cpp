// NEED:
// A C++-Compiler with C++11-standard e.g. gcc
// USAGE:
// first type "g++ -std=c++11 ./pi.cpp"
// second run with "./a.out" on Linux or "./a.exe" on Windows 
#include <iostream>
#include <string>
#include <stdlib.h>
#include <cmath>
#include <random>

using namespace std;

int main()
{
  //needed variables to approximate pi
  long iterations;
  double total = 0.0;
  double inCircle = 0.0;
  double radius = 1.0;

  //random generator from C++11
  default_random_engine gen;
  uniform_real_distribution<double> dis(0.0,1.0);
  // get user input, otherwise use default value
  cout << "Type limit of iterations\nIterations: ";
  cin >> iterations;

  // for-loop that generates random points and checks if they are in circle
  double distance;
  for(long i = 0; i < iterations; i++){
    double x = dis(gen) * radius;
    double y = dis(gen) * radius;
    total++;
    distance = sqrt(x*x + y*y);
    if(distance < radius)
      inCircle++;
  }

  //pi approximation
  double pi = 4.0 * (inCircle / total);

  // user output
  cout << "PI-Approximation: " << pi << endl;
  return 0;
}
