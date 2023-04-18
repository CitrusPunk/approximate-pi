# NEED:
# Install a Ruby-Compiler e.g. from here https://www.ruby-lang.org/en/downloads/
# USAGE:
# open command line in this directory and run
# ruby approximate-pi.rb

def approximatePi
    repeat = true
    while repeat
        iterations = 100000 
        total = 0.0
        inCircle = 0.0
        radius = 1.0

        puts "Type limit of iterations, otherwise DEFAULT will be used\nIterations:"
        input = gets.chomp

        begin Integer(input)
            iterations = input.to_i
        rescue
            puts "Incorrect format for iterations...\nusing DEFAULT"
        end

        for i in 1..iterations do
            x = rand * radius
            y = rand * radius
            total = total + 1.0
            distance = Math.sqrt(x**2+y**2)
            if distance < radius
                inCircle = inCircle + 1.0
            end
        end
        pi = 4.0 * (inCircle/total)

        #user output
        puts "Pi-Approximation: " + pi.to_s + "\nRestart? [yes/no]  "
        restart = gets.chomp;
        if restart == "no" || restart == "No"
            repeat = false;
        end
        puts "\n";
    end
end

approximatePi