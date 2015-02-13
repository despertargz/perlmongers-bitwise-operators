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


say "";
say "a: $a";
say "b: $b";
