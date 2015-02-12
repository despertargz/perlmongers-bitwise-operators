use strict;
use warnings;
use v5.10;

# [10]100011
# 10[1]00011
# 101[00011]

sub get_class {
    my $byte = shift;

    return $byte >> 6;
}

sub get_constructed {
    my $byte = shift;

    return ($byte & 0b00100000) == 0b00100000;
}

sub get_tag {
    my $byte = shift;

    return $byte & 0b00011111;
}

my $byte = 0b10100011;

say get_class($byte);
say get_constructed($byte);
say get_tag($byte);


