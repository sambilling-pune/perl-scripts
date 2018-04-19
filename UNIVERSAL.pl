package UNIVERSAL;

    sub AUTOLOAD {

        die("[Error: Missing Function] $AUTOLOAD @_\n");

    }


sub new {
	
	return bless {},UNIVERSAL;
}



package A;

    sub foo {

        print("Inside A::foo\n");

    }



package B;

    #@ISA = (A);
	use base 'A';
	#=cut	
	sub bar {

        print("Inside B::bar\n");

    }
	
	#sub foo {
		#my $self = shift;
		#$self->SUPER::foo(); 
     #   print("Inside B::foo\n");

    #}
#=cut


package main;

    B->foo();

    B->bar();
	
	B->test();
	
	B->rand();