use strict;
use warnings;
=cut
use File::Slurp;

my $text = read_file('a.txt');

open(FILE,'a.txt');


my @doc = <FILE>;


scalar(@arr);

$#arr + 1;
=cut
my $size = qw(1 2 3 4 5 6 8);
print "\nsize = $size\n";
exit;
my %hash;
#while(<FILE>){

my $line = "msys technology , msys works in storage domain";

my @arr = split /\s+/, $line;
#$hash{'msys'};
foreach my $value(@arr){
	$hash{$value}++ if ($value =~ m!msys!i);
}

#my ($count)  = $line =~ s/the/the/i;

#}

foreach my $key(keys %hash){
	print "$key occured at $hash{$key} no of times\n";
}
#close(FILE);