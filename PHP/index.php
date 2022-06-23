
<?php
// NEED:
// A PHP-Compiler e.g. from https://windows.php.net/download
// USAGE:
// php index.php
    function approximatePi() {
        $repeat = true;
        while ($repeat) {
            $iterations = 100000;
            $total = 0.0;
            $inCircle = 0.0;
            $radius = 1.0;

            // get user input, otherwise use default value
            $input = readline("Type limit of iterations, otherwise DEFAULT will be used\nIterations: ");
            try{
                $iterations = (int)$input;
                if($iterations < 1){
                    $iterations = 100000;
                }
            } catch (Exception $ex) {
                echo "\n Couldn't parse your input into a integer...\nusing DEFAULT";
                $iterations = 1000000;
            }

            // for-loop that generates random points and checks if they are in circle
            $distance;
            for ($i = 0; $i < $iterations; $i++) {
                $x = rand() / getrandmax() * $radius;
                $y = rand() / getrandmax() * $radius;
                $total++;
                $distance = sqrt(pow($x,2.0) + pow($y,2.0));
                if ($distance < $radius)
                    $inCircle++;
            }

            // pi approximation
            $pi = 4 * ($inCircle / $total);

            // user output
            $restart = readLine("PI-Approximation: ".$pi."\nRestart? [yes/no]  ");
            if( $restart == "no" || $restart == "No"){
                $repeat = false;
            }
            echo "\n";
        }
    }

    approximatePi();
?>