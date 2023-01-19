// NEED:
// Install zig compile via installation steps from https://ziglang.org/learn/getting-started/#installing-zig
// USAGE:
// Compile via  zig build-exe .\approximate-pi.zig
// Execute via .\approximate-pi.exe (Windows only)

const std = @import("std");
const math = std.math;
const Rng = std.rand.DefaultPrng;
const Point = struct {
    x: f128,
    y: f128,
};

pub fn main() !void {
    const iterations = 100000;
    const radius = 1.0;
    const seed = 0;
    var rnd = Rng.init(seed);
    var inCircle : i32 = 0.0;

    var fancy_array = init: {
    var initial_value: [iterations]Point = undefined;
    for (initial_value) |*pt| {
        pt.* = Point{
            .x = rnd.random().float(f64),
            .y = rnd.random().float(f64),
        };
    }
        break :init initial_value;
    };

    for (fancy_array) |point| {
        const distance = math.sqrt(point.x * point.x + point.y * point.y);
        if(distance < radius) inCircle = inCircle +  1;
    }
    const pi = 4.0 * ( @intToFloat(f64,inCircle)  /   @intToFloat(f64,iterations));

    std.debug.print("pi approximation: {}", .{pi});





}

