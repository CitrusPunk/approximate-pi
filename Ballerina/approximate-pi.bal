// NEED:
// A Browser
// USAGE:
// open https://play.ballerina.io/ and copy/paste this code and execute it

import ballerina/io;
import ballerina/random;


//TODO: add input iteration possibility for users and rerun loop

public function main() {
    int iterations = 100000;
    int inCircle = 0;
    float radius = 1.0;

    int i = 0;
    while i < iterations {
        float x = random:createDecimal();
        float y = random:createDecimal();
        float distance = float:sqrt(float:pow(x, 2.0) + float:pow(y, 2.0));
        if (distance < radius){
            inCircle = inCircle + 1;
        }

        i = i + 1;
    }

    // pi approximation
    io:println(4.0 * (<float>inCircle / <float>iterations));
}