use strict;
use 5.18.2;
use Data::Dumper;

my %people = (fred => "flintsone", barney => "rubble", wilma => "flintstone");

print "Enter the name of a person: ";

while(my $line = <STDIN>) {
  chomp($line);
  if($line eq "quit") {
    last;
  }
  if(exists $people{$line}) {
    say "The last name of $line is $people{$line}";
  }
  else {
    say "We don't know any $line";
  }

  print "Enter the name of a person: ";
}


my %words = ();
print "Enter a word: ";

while(my $word = <STDIN>) {
  chomp($word);
  if($word eq "quit") {
    last;
  }
  $words{$word} += 1;
  print "Enter a word: ";
}

say "Summary of word appearances:";
while( my ($word, $times) = each %words ){
  printf "%15s appeared %d times\n", $word, $times;
}

say "Summary of word appearances:";
foreach my $word (sort keys %words) {
  printf "%15s appeared %d times\n", $word, $words{$word};
}


say "Environment Variables:";
foreach my $key (sort keys %ENV) {
  printf "%30s = %s\n", $key, $ENV{$key};
}

my $foo = "Barney";
my $bar = "Fred";
print Data::Dumper->Dump([$foo, $bar],[qw(foo *ary)]);


say "The value of \$foo is $foo" if $foo;
say "I shall call you $foo" if $foo eq "Barney";


