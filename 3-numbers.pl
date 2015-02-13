use strict;
use warnings;
use v5.10; 

my $base = 0b11111111;

say $base & 0b00001111;
say $base & 15;
say $base & 0x0F;
say $base & 017;


