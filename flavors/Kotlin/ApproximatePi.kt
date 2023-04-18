//  NEED:
//  Java & Kotlin Compiler (kotlinc) installed
//  USAGE:
// first type "kotlinc ApproximatePi.kt -include-runtime -d ApproximatePi.jar" to compile to a .jar-file
// second type "java -jar .\ApproximatePi.jar"
package ApproximatePi

fun main(args : Array<String>) {

  var repeat:Boolean = true;
  while (repeat) {
    // needed variables to approximate pi
    var iterations: Long = 10000
    var total: Double = 0.0
    var inCircle: Double = 0.0
    var radius: Double = 1.0

    // get user input, otherwise use default value
    print("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
    val its = readLine()!!
    try{
      iterations = its.toLong()
    } catch (e : Exception){
          println("Wrong input --> use DEFAULT instead")
    }

    // for-loop that generates random points and checks if they are in circle
    var distance: Double;
    for (i in 0..iterations)
    {
        var x:Double = Math.random() * radius
        var y:Double = Math.random() * radius
        total++
        distance = Math.sqrt(Math.pow(x, 2.0) + Math.pow(y, 2.0))
        if (distance < radius)
            inCircle++
    }

    // pi approximation
    var pi:Double = 4 * (inCircle / total)

    // user output
    println("PI-Approximation: $pi\nRestart? [yes/no]  ");
    val restart = readLine()!!
    if( restart.equals("no") || restart.equals("No"))
      repeat = false;
    println();
  }
}
