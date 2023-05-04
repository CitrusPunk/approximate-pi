// REQUIREMENTS:
// Go to https://www.rust-lang.org/learn/get-started
// Install Cargo
// USAGE:
// cd to this directory
// cargo run

extern crate rand;
use std::{
    io::{
        self,
        Write,
    },
    process,
};
use rand::Rng;

fn main() {
    let mut repeat: bool = true;

    while repeat {
        // needed variables to approximate pi
        let mut iterations: i32 = 100000;
        let mut total: f64 = 0.0;
        let mut in_circle: f64 = 0.0;
        const RADIUS: f64 = 1.0;

        // get user input, otherwise use default value
        println!("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
        io::stdout().flush().unwrap();
 
        let mut input = String::new();
     
        io::stdin().read_line(&mut input).unwrap();
     
        let user_input = input.trim().parse::<i32>().unwrap_or_else(|_| {
            eprintln!("- Entered input is not Integer!");
            drop(input);
            process::exit(1);
        });

        iterations = user_input;

        // for-loop that generates random points and checks if they are in circle
        let mut distance: f64;
        for _i in 1..iterations {
            let x: f64 = rand::thread_rng().gen_range(0.0..1.0) * RADIUS;
            let y: f64 = rand::thread_rng().gen_range(0.0..1.0) * RADIUS;
            total += 1.0;

            distance = f64::sqrt(x.powi(2) + y.powi(2));
            if distance < RADIUS {
                in_circle += 1.0;
            }
        }

        // pi approximation
        let pi: f64 = 4.0 * (in_circle / total);

        // user output
        println!("PI-Approximation: {}\nRestart? [yes/no]  ", pi.to_string());
        input = String::new();
        io::stdin()
            .read_line(&mut input)
            .expect("failed to read from stdin");
        if input == "no" || input == "No" {
            repeat = false;
        }
        println!();
    }
}
