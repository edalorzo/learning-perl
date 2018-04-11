#!/usr/bin/env perl
#use warnings; #equivalent to perl -w scalars.pl
#use strict;
#use diagnostics; #equivalent to perl -Mdiagnostics scalars.pl

print "Hello World\n\r";

#my $number = "12" * "fred" * "34";

$line = <STDIN>;
if($line eq "\n") {
  print "That was just a blank line!\n"
}
else {
  print "That line input was: $line";
}
