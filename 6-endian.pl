use strict;
use warnings;
use v5.10;

my $x = 0xAABBCCDD;
my $reverse = 0xDDCCBBAA;

say $x;
say $reverse;
say swap($x); 

sub swap {
	my $number = shift;

	my $result = 
		(($number & 0xFF000000) >> 24) |
		(($number & 0x00FF0000) >> 8 ) |
		(($number & 0x0000FF00) << 8 ) |
		(($number & 0x000000FF) << 24);

	return $result;
}
