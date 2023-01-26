// NEED:
// A Browser
// USAGE:
// open https://www.typescriptlang.org/play and copy/paste this code and execute it

type Point = {
    x: number;
    y: number;
};

const iterations: number = 10000000;

function approximatePi(iterations: number): number {
    const radius: number = 1.0;
    let total: number = 0.0;
    let inCircle: number = 0.0;
    // for-loop that generates random points and checks if they are in the inside of the circle or the outside
    for (let i = 0; i < iterations; i++) {
        const point: Point = { x: Math.random() * radius, y: Math.random() * radius };
        const distance: number = Math.sqrt(Math.pow(point.x, 2) + Math.pow(point.y, 2));
        if (distance < radius)
            inCircle++;
        total++;
    }

    // pi approximation
    return 4 * (inCircle / total);
}

console.log("Pi is approximately: ", approximatePi(iterations));