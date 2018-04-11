use v5.10;
use feature qw(signatures);
no warnings qw(experimental::signatures);


sub marine {
    $n += 1;
    print "Hello, sailor number $n!\n";
}

sub sum_of_fred_and_barney {
    print "Hey, you called the sum of fred_of_fred_and_barney subroutine!\n";
    $fred + $barney; 
}

sub larger_of_fred_or_barney {
    if($fred > $barney) {
	$fred;
    }
    else {
	$barney;
    }
}

sub max {
    my ($max) = shift @_;
    foreach (@_) {
        if ($_ > $max) {
            $max = $_;
        }
    }
    $max;
}


&marine;
&marine;

$fred = "fred";
$barney = "barney";

&sum_of_fred_and_barney;
&sum_of_fred_and_barney;

$res = &larger_of_fred_or_barney;
print $res, "\n";

$n = &max(10,15,2,5,8,16,5,21,12,37,1);
print $n,"\n";

sub running_sum {
    state $sum = 0;
    state @numbers;

    foreach my $number (@_) {
        push @numbers, $number;
        $sum += $number;
    }

    say "The sum of (@numbers) is $sum";
}

running_sum(5,6);
running_sum(1..3);
running_sum(4);

sub maximum($m, $n){
    if ($m > $n) {
        $m
    } else {
        $n;
    }
}

$res = maximum(4,5);
print "The maximums between 4 and 5 is $res\n");
