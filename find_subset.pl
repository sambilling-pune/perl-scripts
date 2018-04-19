use Data::Dumper;
##############################################
#Find the subset from below array having sum of element of array equal to input number. 
##############################################

my $element = [0,1,2,3,5,6,7,11,12,14,20];

print "\nEnter a number for sum: \n";
chomp(my $num = <STDIN>);

################### each subset has size 2
my $len = scalar(@$element);
my $c = 0;
foreach my $val(@$element){	
	for(my $i = $c; $i<$len; $i++){
		print "($val,$element->[$i])" if($val + $element->[$i] == $num);
	}
	$c++;
}
#################

################### find all size subsets
my $set = [0,1,2,3,5,6,7,11,12,14,20];
my @subsets;

for my $count ( 1..(1<<@$set)-2 ) {
    push @subsets, [ map $count & (1<<$_) ? $set->[$_] : (), 0..$#$set ];
}

foreach my $arr(@subsets){
	my $total;
	foreach my $val(@$arr){
		$total += $val;
	}
	print Dumper $arr if ($total == $num);
}