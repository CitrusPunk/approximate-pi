// REQUIREMENTS:
// Web Browser
// USAGE:
// Open https://try.fsharp.org/
// Copy this code and paste it into the editor
// To run it, click run in the left-upper corner

open System

let radius = 1.0
let iterations = 10000000

let mutable in_circle = 0

for i in 1..iterations do
    let rnd = new Random()
    let x = rnd.NextDouble() * 2.0 - radius |> float
    let y = rnd.NextDouble() * 2.0 - radius |> float
    let distance = sqrt (x*x + y*y)
    if float distance < radius then
        in_circle <- in_circle + 1
    
let pi = 4.0 * float in_circle / float iterations 
printfn "Random float value: %f" pi
