// NEED:
// A D-Compiler e.g. dmd
// USAGE:
// first type "dmd ./pi.d"
// second run with "./pi.out" on Linux or "./pi.exe" on Windows
//
import std.stdio;
import std.string;
import std.random;
import std.math;
import std.conv : parse;

void main()
{
    bool repeat = true;
    while (repeat) {
      // needed variables to approximate pi
      int iterations = 10000;
      double total = 0.0;
      double inCircle = 0.0;
      double radius = 1.0;

      // get user input, otherwise use default value
      write("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
      string its = stdin.readln();
      auto iteras = parse!int(its);
      iterations = iteras;

      // for-loop that generates random points and checks if they are in circle
      double distance;
      for (int i = 0; i < iterations; i++)
      {
          double x = uniform01() * radius;
          double y = uniform01()  * radius;
          total++;
          distance = sqrt(pow(x, 2.0) + pow(y, 2.0));
          if (distance < radius)
              inCircle++;
      }

      // pi approximation
      double pi = 4 * (inCircle / total);

      // user output
      writef("PI-Approximation: %s\nRestart? [yes/no]  ", pi);
      string restart = strip(stdin.readln());
      if( restart == "no" || restart == "No" )
        break;
      writeln();
    }
}
