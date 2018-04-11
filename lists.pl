
@names = qw( fred barney wilma betty dino );

print "The list contains ", scalar(@names), "\n";

foreach $name (@names) {
    print "$name\n";
}

print "\n";

foreach (@names) {
    print "$_\n";
}

print "\n";

while( ($index, $name) = each @names ) {
    print "$index $name\n";
}

print "\n";

($fred, $barney, $wilma, $betty, $dino) = @names;

print "The names are $fred, $barney, $wilma and $dino\n\n";

@family = qw( Karla Alonso Felipe Vilma Yami );

@everyone = (@family, @names, "Casper");

print "Everyone is: @everyone\n\n";

@lines = <STDIN>;

print "\n\nThe reversed list is:\n";
print (reverse @lines), "\n";


@found = ();
print "\nThe corresponding names are:\n";
foreach $index (@lines) {
    print "$names[$index]\n";
    push(@found, $names[$index]);
}
print "\n";

@sorted = sort @found;
print "\nThe sorted list is: @sorted\n";








