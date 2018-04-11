use v5.10;

## print @ARGV;
## print "@ARGV";

foreach $arg (@ARGV) {
  print "The argument is: $arg\n";
}


my $format = "The items are:\n" . ("%10s\n" x @ARGV);
printf $format, @ARGV;

print "\nFRUITS:\n";
open FRUITS, 'fruits.txt';
while(<FRUITS>) {
  print "$_";
}

close FRUITS;

say "Hello";
