use strict;
use warnings;
use TestChild;
use Data::Dumper;

my $obj1 = TestChild->new();
my $self = TestChild->new();

$obj1->firstname('John');
$obj1->_id('1095');

$self->basesub();

$self->basechild();

$self->foo();

$self->foo3();

#$obj1->address->(new Adress())

#print Dumper $obj1;
#print Dumper $self;

#	Testbase->SUPER::foo();

#$self->SUPER::foo();

#$self->temp();

