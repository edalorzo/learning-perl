#!/usr/bin/perl -w
use warnings;
use strict;

## exercise 1
chomp( my @lines = <STDIN> );
@lines = reverse @lines;
print "The input was:\n@lines\n";

## exercise 2
my @names = qw(Verne Neruda London Allende Lee);
print "Provided numbers from 0-4: ";
chomp( my @indexes = <STDIN> );
print "Now printing names for @indexes\n";
foreach my $index (@indexes) {
    print "$names[$index]\n";
}

## exercise 3
chomp( my @words = <STDIN> );
@words = sort @words;
print "The input was:\n@words\n";
foreach my $word (@words) {
    print "$word\n";
}

