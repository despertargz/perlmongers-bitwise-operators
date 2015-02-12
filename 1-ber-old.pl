use strict;
use warnings;
use v5.10;

# [10]100011
# 10[1]00011
# 101[00011]

sub get_class {
	my $byte = shift;

	my $bitstring = unpack("B*", $byte);
	my $bitstring_substr = substr($bitstring, 0, 2);
	my $bitstring_padded = "000000" . $bitstring_substr;
	my $byte_again = pack("B*", $bitstring_padded);	
	my $number = unpack("C", $byte_again);
	return $number;
}

sub get_constructed {
	my $byte = shift;	

	my $bitstring = unpack("B*", $byte);
	my $bitstring_substr = substr($bitstring, 2, 1);
	my $bitstring_padded = "0000000" . $bitstring_substr;
	my $byte_again = pack("B*", $bitstring_padded);	
	my $number = unpack("C", $byte_again);
	return $number;
}

sub get_tag {
	my $byte = shift;

	my $bitstring = unpack("B*", $byte);
	my $bitstring_substr = substr($bitstring, 3, 5);
	my $bitstring_padded = "000" . $bitstring_substr;
	my $byte_again = pack("B*", $bitstring_padded);	
	my $number = unpack("C", $byte_again);
	return $number;
}

my $byte = 0b10100011; 
$byte = pack("C", $byte);

say get_class($byte);
say get_constructed($byte);
say get_tag($byte);
