use strict;
use warnings;
use Data::Dumper;

=cut
You can store anonymous subs in arrays, hashes and scalars.
You can build them at runtime
You can pass them as arguments to other functions.
You get to keep variables in the surrounding scope.
=cut

sub outer
{
  my $a = 123;
  print "checkpoint 1---->$a\n";
  sub inner
  {
    print "checkpoint 2---->$a\n";
	print $a, "\n";
  }

  # At this point, $a is 123, so this call should always print 123, right?
  print "checkpoint 3---->$a\n";
  inner();
  
  print "checkpoint 4---->$a\n";
  $a = 456;
}

outer(); # prints 123
outer(); # prints 456! Surprise!


########But change "inner" from a named subroutine to a reference to an anonymous subroutine and it works is a much less surprising manner:

sub outer1
{
  my $a = 123;

  my $inner1 = sub
  {
    print $a, "\n";
  };

  # At this point, $a is 123, and since the anonymous subroutine 
  # whose reference is stored in $inner closes over $a in the 
  # "expected" way...
  $inner1->();

  $a = 456;
}

# ...we see the "expected" results
outer1(); # prints 123
outer1(); # prints 123


############################################################################################################
############################################################################################################


sub test{
	my($val1) = @_;
	return sub {
		my($val2) = @_;
		return $val1*$val2;
	};
};

##$ob return the reference of anonymous object
my $ob = test(5);

print $ob->(4);


