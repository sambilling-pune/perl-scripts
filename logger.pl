use strict;
use warnings;
use Data::Dumper;
use Log::Log4perl qw(:easy);

#Log::Log4perl->easy_init($ERROR);
Log::Log4perl->easy_init($ERROR,$INFO);

#ERROR "This gets logged";
#INFO "Info gets logged";

drink();
drink("Soda");

sub drink {
    my($what) = @_;

    my $logger = get_logger();

    if(defined $what) {
        $logger->info("Drinking ", $what);
    } else {
        $logger->error("No drink defined");
    }
}

print "\nLogger progream end here\n";

my $hash = {
	'FName' => 'John',
	'Emp_id' => '11703',
	'LName'	=> 'Scarfer'
};

print "\n\n";
print Dumper $hash;