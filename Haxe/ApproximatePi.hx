// NEED:
// Haxe installed from https://haxe.org/download/
// USAGE:
// build.hxml defines compilation/transpilation options; main file and output file/direcotry
// Haxe can be transpiled to many different platforms e.g. C#, Java, Python, PHP, JS or Node
// In this example nodejs got used:
// We need a few libraries install them via:
// "haxelib install hxnodejs"
// "haxelib install random 1.4.1"
// Open terminal in this directory and compile via "haxe build.hxml"
// Run transpiled node script via "node approximate-pi.js"

import Random;

class ApproximatePi {
	static function main() {
		var repeat = true;
		while (repeat) {
      repeat = approximatePi();
    }
	}

	static function approximatePi() {
		var inCircle = 0;
		Sys.print("Amount of iterations: ");
		var iterations = Std.parseInt(Sys.stdin().readLine());
		var radius = 1.0;
		for (i in 0...iterations) {
			var x = Random.float(-1, 1);
			var y = Random.float(-1, 1);
			var distance = Math.sqrt(x * x + y * y);
			if (distance < radius)
				inCircle++;
		}
		var pi = 4 * (inCircle / iterations);
		Sys.println("The approximation of pi after " + iterations + " iterations is: " + pi +"\n");
		Sys.print("Do you want to exit? [y/n] ");
		if(Sys.stdin().readLine() == 'y') return false;
    return true;
	}
}
