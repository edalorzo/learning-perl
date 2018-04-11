
sub total {
    my $sum = 0;
    foreach $number (@_) {
        $sum += $number;
    }
    $sum;
}

sub average {
    my $sum = total(@_);
    $sum / @_;
}

sub above_average {
    $average = average(@_);
    @above = ();
    foreach (@_) {
        push(@above, $_) if $_ > $average;
    }
    @above
}


my $fred = qw( 1 3 5 7 9 );
my $fred_total = total($fred);
print "The total of \$fred is $fred_total.\n";

# print "Ented some numbers on separate lines: ";
# my $user_total = total(<STDIN>);
# print "The total 0f those numbers is $user_total\n";

my $thousand_sum = total(1..1000);
print "The sum of the numbers from 1..1000 is $thousand_sum\n";

my @numbers = (1..5);
my $avg1 = average(@numbers);
print "The average of numbers from 1..5 is $avg1\n";
my @superior = above_average(@numbers);
print "The numbers above average in that list are: @superior\n"; 

my @barney = above_average(1..10);
print "\$barney is @barney\n";

my @wilma = above_average(100, 1..10);
print "\@wilma is @wilma\n";





