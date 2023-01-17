// NEED:
// A Browser
// USAGE:
// go to "https://dartpad.dartlang.org/" and paste this code into the editor window then hit run

import 'dart:math';

void main(){
  // needed variables to approximate pi
  int iterations = 10000;
  double total = 0.0;
  double inCircle = 0.0;
  double radius = 1.0;
  var rnd = new Random();

  // get user input, otherwise use default value

  // for-loop that generates random point and checks if they are in circle or not
  for(var i = 0; i < iterations; i++){
    double x = rnd.nextDouble()*radius;
    double y = rnd.nextDouble()*radius;
    total++;
    double distance = sqrt(x*x + y*y);
    if(distance < radius)
      inCircle++;
  }
  // pi approximation
  double pi = 4 * (inCircle / total);
  print(pi);
}
