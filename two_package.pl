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
sub test{
	my($val1) = @_;
	return sub {
		my($val2) = @_;
		return $val1*$val2;
	};
};

sub test1{
	my($val1) = @_;
	return sub {
		my($val2) = @_;
		return $val1*$val2;
	};
};