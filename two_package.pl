use strict;
use warnings;
#use a_test;
use test1;


my $self = test1->new();

#######one way
#test1::foo();

#####another way
$self->foo();
$self->test2::foo1();

################if Export and Export_OK are used, then to call the subroutine from test1, no need to create object
#foo();
