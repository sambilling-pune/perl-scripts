use strict;
use warnings;
#	use Random;
use Data::Dumper;
=cut
my @arr = (23,43,54,12,34,55,66,334,65,7);
my(@arr1,$value,$index);

foreach(1..5){
	$index = rand(@arr);
	$value = $arr[$index];
	push(@arr1,$value);
	splice @arr,$index,1;
}

print Dumper @arr1;

my @array = ('2','3','4','5','6','7','6','3');

my %unique = map{$_,1}@array;
print Dumper keys %unique;
my %hash;

grep(!$hash{$_}++,@array);

print Dumper keys %hash;


my $decimal = 15;

printf "\n%b",$decimal;


my $pid = fork();
if( $pid == 0 ) {
   print "This is child process\n";
   print "Child process is existing\n";
   #exit 0;
}
print "This is parent process PID $$ and child ID is $pid - PID $$($pid)\n";
print "Parent process is existing\n";
#exit 0;

my $string = "abcde";

my @a = split //,$string;

for(1..2){

	my $val = shift(@a);
	push(@a,$val);
}

for(1..1){

	my $val = pop(@a);
	unshift(@a,$val);
}

$string = join ('',@a);
print "\nstring - $string\n";

my $st = "Msys tech , welcome to Msys technology, Pune";
#
#my ($value) = $var =~ m/(?:.*?msys){2}(.*)/is;
my($val) = $st =~ m!(?:.*?msys){2}(.*)!is;

print "\n$val\n";
=cut

=cut
print "\nEnter an ip address\n";

chomp(my $ans = <STDIN>);


if ($ans =~ m/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/)  
{  
   if ( ($1>0) && ($1<=255) && ($2<=255) && ($3<=255) &&($4<=255))  
   {  
       print "An IP Address";  
   }  
   else   
   {  
       print "Not an IP Address";  
   }  
}  
else  
{  
   print "Not an IP Address";  
  
}  

=cut

=cut
print "\nEnter an email address\n";

chomp(my $ans = <STDIN>);

if ($ans =~ m/^[a-zA-Z0-9][\w\_\.]+\@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/){

	print "\nValid IP Address\n";
}

else{
	print "\nInvalid IP Address\n";
}

=cut

=cut
print "\n Enter string:\n";

chomp (my $str = <STDIN>);

print "\ncalculating values: \n";

my @arr = split /\s+/,$str;

my $max_len = 0;
my $word;

foreach my $value(@arr){
	
	my $len = length($value);
	if ($len%2 == 0  && $len>$max_len){
		$max_len = $len;
		$word = $value;
	}
}

print "$word having max even character - $max_len\n";
=cut
my $hash_emp = {
			'1'=> {'Fname' => 'John',
				'Lname' => 'Kane',
				'Age'	=> '24',
				'Gender'=> 'Male',
				'course'=> [{'101'=>'EE',
							 '104' => 'EEC',
							},
							{'102'=>'CS'},
							{'103' => 'IT'},
							],
				},
			'2'=> {'Fname' => 'Jennifer',
				'Lname' => 'Nicholas',
				'Age'	=> '26',
				'Gender'=> 'Female',
				'course'=> [{'102'=>'CS'},
							{'103' => 'IT'},
							],
				},
			};
			
			
			
	foreach my $key (keys %$hash_emp){
		print "\nname of the employee having id ". $key ." is - ";
		my $val;
		my $name;
		foreach my $key_inner (keys %{$hash_emp->{$key}}){
			$name = $hash_emp->{$key}->{$key_inner} if ($key_inner eq 'Fname');
			if ($key_inner eq 'course'){
				$val = "";
				foreach my $course(@{$hash_emp->{$key}->{$key_inner}}){
					foreach my $sub(keys %$course){
						#print Dumper $sub;
						$val .= "\napplied for sub id - $sub and code $course->{$sub}";
					}
				}
				
			}
		}
		print $name.$val;
	}	