use strict;
use warnings;
use v5.10;

my $a = 5;
my $b = 10;

say "a: $a";
say "b: $b";

$a = $a ^ $b;
$b = $b ^ $a;
$a = $b ^ $a;


say ""simple;
say "a: $a";
say "b: $b";

# reference:
# http://biesnecker.com/2014/10/06/swapping-variables-with-xor/
