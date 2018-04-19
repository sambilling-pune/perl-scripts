use strict;
use warnings;
use POSIX;

my @arr = qw(1 2 3 4 6 7 8 9 10 11 13 14 15);

my $largest_index = $#arr;
my $low_index = 0;
my $mid_index;
my $flag = 'False';
my $count = 0;
while($flag eq 'false'){
	my @a=();
	$mid_index = floor($low_index + $largest_index)/2;
	print "mid_index = $mid_index\n";
	
	if ($mid_index != $arr[$mid_index]-1){
		
		$largest_index = $mid_index;
		print "\n$largest_index";
		@a = for(0..$largest_index){@arr[$_]};
		#exit;
		@arr = @a; 
	}
	else{
	
		$low_index = $mid_index;
		print "\n$low_index";
		@a = for($low_index..$largest_index){@arr[$_]};
		#exit;
		@arr = @a; 
	
	}
	$flag= 'true';
	print Dumper @arr;
	#else{
	#	$low_index = $mid_index;
	#}
	#if ($largest_index == $low_index){
	#	$flag = 'true';
	#	print "\nelement is $arr[$low_index]";
	
	#}
	#$count++;
	
}