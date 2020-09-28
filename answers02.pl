#!/usr/bin/perl -w
use warnings;
use strict;
use Math::Trig ':pi';

print "Enter the radius of the circle: ";
my $radius = <STDIN>;
my $circumference = $radius >= 0 ? 2 * pi * $radius : 0;
print "The circumference is $circumference\n";

print "Enter the first number: ";
chomp( my $a = <STDIN> );
print "Enter the second number: ";
chomp( my $b = <STDIN> );
my $product = $a * $b;
print "The product of $a * $b is $product\n";

print "Enter a word: ";
my $word = <STDIN>;
print "Enter a number: ";
chomp( my $times = <STDIN> );

my $text = $word x $times;
print "$text";

