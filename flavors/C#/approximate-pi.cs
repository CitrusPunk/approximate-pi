// NEED:
// A C#-Compiler e.g. Mono or just use Visual Studio
// USAGE:
// Visual Studio: create project, copy code inside Main into projects Main, press run
// Mono: open terminal in this directory and type "csc approximate-pi.cs", then run executable
using System;

namespace PiApproximation
{
    class Program
    {
        static void Main(string[] args)
        {
            bool repeat = true;

            while(repeat){
              // needed variables to approximate pi
              Random rnd = new Random();
              long iterations = 1000000;
              double total = 0.0;
              double inCircle = 0.0;
              double radius = 1.0;

              // get user input, otherwise use default value
              Console.Write("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
              string its = Console.ReadLine();
              Int64.TryParse(its, out iterations);

              // for-loop that generates random points and checks if they are in circle
              double distance;
              for (long i = 0; i < iterations; i++)
              {
                  double x = rnd.NextDouble() * radius;
                  double y = rnd.NextDouble() * radius;
                  total++;
                  distance = Math.Sqrt(Math.Pow(x, 2) + Math.Pow(y, 2));
                  if (distance < radius)
                      inCircle++;
              }
              // pi approximation
              double pi = 4 * (inCircle / total);

              // user output
              Console.Write("PI-Approximation: " + pi + "\nRestart? [yes/no]  ");
              string restart = Console.ReadLine();
              if( restart == "no" || restart == "No")
                repeat = false;
              Console.WriteLine();
            }
        }
    }
}
