// NEED:
// A browser
// USAGE:
// Open online scala editor: https://scastie.scala-lang.org/
// Copy/Paste code and run it

@main def run () =
// constants for setup
  val iterations = 1000000;
  val radius = 1.0;
  val rnd = new scala.util.Random;
	
  var total = 0.0;
  var inCircle = 0.0;

// for-loop that generates random points and checks if they are in circle
  for (i <- 0 until iterations) {
    val x = rnd.nextFloat () * radius;
    val y = rnd.nextFloat () * radius;
    total = total + 1;
    val distance = Math.sqrt (Math.pow (x, 2) + Math.pow (y, 2));
    if (distance < radius)
      inCircle = inCircle + 1;
  }

// pi approximation
  val pi = 4 * (inCircle / total);
  println (pi)
