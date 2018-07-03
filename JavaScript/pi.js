// NEED:
// A Browser
// USAGE:
// open index.html in browser

// needed variables to approximate pi
var iterations = 10000;
var total = 0.0;
var inCircle = 0.0;
var radius = 1.0;

function approximatePi(){
  // get user input, otherwise use default value
  var input = document.getElementById('iterations')
  if(input.value != "")
    iterations = Number(input.value);

  // for-loop that generates random point and checks if they are in circle or not
  for(var i = 0; i < iterations; i++){
    var point = { 'x': Math.random()*radius, 'y': Math.random()*radius};
    total++;
    var distance = Math.sqrt(Math.pow(point.x,2) + Math.pow(point.y,2));
    if(distance < radius)
        inCircle++;
  }
  // pi approximation
  var pi = 4 * (inCircle / total)

  // write output
  document.getElementById('approximation').innerHTML = "PI-Approximation: " + pi;
}
