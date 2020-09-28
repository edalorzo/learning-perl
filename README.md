# Learning Perl

## Chapter 2 - Exercises

1) Write a program that computes the circumference of a circle with a radius of 12.5. Circumference is 2π times the radius.

```perl
use Math::Trig ':pi';

my $radius = 12.5;
my $circumference = 2 * pi * $radius;
print "The circumference is $circumference\n";
```

2) Modify the program from the previous exercise to prompt for and accept a radius from a person running the program. So, if the user enteres 12.5 for the radius, she should get the same number as in the previous exercise.

```perl
use Math::Trig ':pi';

print "Enter the radius of the circle: ";
my $radius = <STDIN>;
my $circumference = 2 * pi * $radius;
print "The circumference is $circumference\n";
```

3) Modify the program from the previous exercise so that, if the user enters a number less than zero, the reported circumference will be zero, rather than negative.

```perl
use Math::Trig ':pi';

print "Enter the radius of the circle: ";
my $radius = <STDIN>;
my $circumference = $radius >= 0 ? 2 * pi * $radius : 0;
print "The circumference is $circumference\n";
```

4) Write a program that prompts for and reads two numbers (on seperated lines of input) and prints out the product of the two numbers multiplied together.

```perl
print "Enter the first number: ";
chomp(my $a = <STDIN>);
print "Enter the second number: ";
chomp(my $b = <STDIN>);
my $product = $a * $b;
print "The product of $a * $b is $product\n";
```

5) Write a program that prompts and reads a string and a number (on separate lines of input) and prints ou the string the number of times indicated by the number on separate lines. (Hint use the `x` operator). If the user enteres "fred" and "3", the output should be three lines, each saying "fred". 

```perl
print "Enter a word: ";
my $word = <STDIN>;
print "Enter a number: ";
chomp(my $times = <STDIN>);

my $text = $word x $times;
print "$text";
```

## Chapter 3 - Exercises

1) Write a program that reads a list of strings on a separate lines until end-of-input and prints out the list in reverse order.

```perl
chomp(my @lines = <STDIN>);
@lines = reverse @lines;
print "The input was:\n@lines\n";
```

2) Write a program that reads a list of numbers (on seperate lines) until end of input and then prints for each number the corresponding person's name from a hardcoded list of names.

```perl
my @names = qw(Verne Neruda London Allende Lee);
print "Provided numbers from 0-4: ";
chomp(my @indexes = <STDIN>);
print "Now printing names for @indexes\n";
foreach my $index (@indexes) {
    print "$names[$index]\n";
}
```

3) Write a program that reads a list of strings (on separate lines) until end-of-input. Then it should print the strings in code point order. Are all of the strings on one line in the output or on separate lines? Could you make the ouput appear in etier style?

```perl
chomp(my @words = <STDIN>);
@words = sort @words;
print "The input was:\n@words\n";
foreach my $word (@words) {
    print "$word\n";
}
```

## Chapter 4 - Exercises


