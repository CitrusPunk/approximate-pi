# NEED:
# Perl compiler installed
# USAGE:
# open terminal in this directory and type "perl ./approximate-pi.pl" to compile

#!/usr/bin/perl -w
use strict;
use warnings;

my $iterations;
my $total; 
my $inCircle;
my $radius;
my $input;
my $x;
my $y;
my $pi;

$iterations = 10000;
$total = 0.0;
$inCircle = 0.0;
$radius = 1.0;
# get user input, otherwise use default value
print "Enter number of iterations: ";
$input = <>;
chomp($input);
if(int($input)){
  $iterations = $input;
}
# for-loop that generates random point and checks if they are in circle or not
my @a = (1..$iterations);
for(@a){
  $x = rand(1)*$radius;
  $y = rand(1)*$radius;
  $total++;
  my $distance = sqrt($x**2 + $y**2);
  if($distance < $radius){
      $inCircle++;
  }
}
# pi approximation
$pi = 4 * ($inCircle / $total);
# write output
print "Approximation of pi is: ".$pi;