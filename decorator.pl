use strict;
use warnings;
use decorator1;
use Class::Decorator;

my $obj = decorator1->new();

my $decorator = Class::Decorator->new(
	obj => $obj,
	methods => {
		test1 =>{
			pre => sub{print "from pre key\n"},
			post => sub{print "from post key\n"}
		},
		test2 =>{
			pre => sub{print "from pre key\n"},
			post => sub{print "from post key\n"}
		}
	}
);

$decorator->test1();
