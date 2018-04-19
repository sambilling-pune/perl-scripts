use strict;
use warnings;
use rebless1;
use rebless2;
use rebless3;
use Class::Rebless;

my $a = rebless1->new();
my $b = rebless2->new($a);
my $c = rebless3->new($b);

Class::Rebless->foo($c, "rebless3");


#$c->foo();

