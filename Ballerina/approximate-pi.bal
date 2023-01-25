// NEED:
// A Browser
// USAGE:
// open https://play.ballerina.io/ and copy/paste this code and execute it

import ballerina/io;
import ballerina/random;

public function main() {
    float iterations = 10000.0;
    float inCircle = 0.0;
    float radius = 1.0;

    float i = 0.0;
    while i < iterations {
        float x = random:createDecimal();
        float y = random:createDecimal();
        float distance = float:sqrt(float:pow(x, 2.0) + float:pow(y, 2.0));
        if (distance < radius){
            inCircle = inCircle + 1;
        }

        i = i + 1.0;
    }

    // pi approximation
    io:println(4.0 * (inCircle / iterations));
}