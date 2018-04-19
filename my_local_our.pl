use strict;
use warnings;
our $a=50;
my $b=10;

sub add{
	local $a = 20;
	print $a+$b;
};

print "\n$a\n";

add();