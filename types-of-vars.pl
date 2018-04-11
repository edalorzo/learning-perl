use strict;
use v5.10;

my $jedi  = "Luke";
my @jedis = qw(Luke Yoda Mace-Windu Obi-Wan);
my %jedi_report =
  ( Luke => 10.5, Yoda => 99.99, 'Mace-Windu' => 89.5, 'Obi-Wan' => 85.6 );

say "The Jedi name is: $jedi";

say "The Jedi names are:";
for my $jname (@jedis) {
    say "\t -$jname";
}

say "The index of the last Jedi in the list is: $#jedis";
printf "Therefore there are %d jedis in the jedi list\n", scalar(@jedis);

say "The contents of the %jedi_report are";
while ( my ( $key, $value ) = each %jedi_report ) {
    say "$key => $value";
}

say "The contents of the %jedi_report are";
foreach my $key ( sort keys %jedi_report ) {
    say "The score from $key is $jedi_report{$key}";
}

my @unwound = %jedi_report;
say "The unwound report is (@unwound)";

