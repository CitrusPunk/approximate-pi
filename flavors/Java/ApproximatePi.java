// NEED:
// Java installed
// USAGE:
// open terminal in this directory and first type "javac ./ApproximatePi.java" to compile
// second type "java ApproximatePi" to run the program
import java.io.Console;

public class ApproximatePi {
    public static void main(String[] args) {
      boolean repeat = true;

      while(repeat){
        long iterations = 1000000;
        double total = 0.0;
        double inCircle = 0.0;
        double radius = 1.0;

        // get user input, otherwise use default value
        System.out.print("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
        Console console = System.console();
        String its = console.readLine();
        try {
          iterations = Integer.parseInt(its);
        }catch (Exception e) {
          System.out.println("Wrong input --> use DEFAULT instead");
        }

        // for-loop that generates random points and checks if they are in circle
        double distance;
        for (long i = 0; i < iterations; i++)
        {
            double x = Math.random() * radius;
            double y = Math.random() * radius;
            total++;
            distance = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
            if (distance < radius)
                inCircle++;
        }
        // pi approximation
        double pi = 4 * (inCircle / total);

        // user output
        System.out.println("PI-Approximation: " + pi + "\nRestart? [yes/no]  ");
        String restart = console.readLine();
        if( restart.equals("no") || restart.equals("No"))
          repeat = false;
        System.out.println();
    }
  }
}
