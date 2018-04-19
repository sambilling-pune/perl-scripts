#! /usr/bin/perl
package test;
use strict;
#use App;
use warnings;
use Data::Dumper;
use MIME::Base64;
use URI::Escape;
use LWP::UserAgent;
use WWW::Mechanize;
use MIME::Lite;
use Net::SMTP;
use IO::Socket;
use Mail::Sendmail;

##using use
use Testnew;

##if EXPORT_OK is used instead:
#use Testnew qw(repo);

##Exporting using require
#require Testnew;
#Testnew->import;


#use Encode qw(Encode,decode);
#use UTF;
use Log::Log4perl qw(:easy);
#Log::Log4perl->easy_init($WARN);
Log::Log4perl->easy_init($ERROR,$WARN);
use Excel::Writer::XLSX;
use Spreadsheet::WriteExcel;

repo();
newclass();
print my $res = test(10,2);

my $a = "abcdefghij@\n";  
my $b = chomp($a);


DEBUG "This doesn't go anywhere";
ERROR "This gets logged";
#use Data::Random;
my $logger = get_logger();
$logger->error("Foreach loop ends");

#$agent->ssl_opts(SSL_verify_mode => 0x00, verify_hostname => 0);
sub new{
	my $obj = {};
	bless $obj,"test";
}

#sub repo{
#print "\nTest:::Hello from repo\n";
#}

###create obejct
my $obj = new();

####main ends here
&main();
####

#cut
use App::Options (
options => [ "dbname", "dbuser", "dbpass" ],
	option => {
		dbname => {
			env => "DBNAME",
			default => "devel",
		},
		dbuser => {
			env => "DBUSER;DBI_USER",
			default => "Nimble",
		},
		dbpass => {
			env => "", # password in %ENV is security breach
		},
	},
);
print %App::options{'dbname'};
print "\n\n";
print %App::options{'dbuser'}; 
print "\n\n";
#=cut

#split by character
my $name = "Happy";
my @splitted_arr = split //,$name;

#split by word
$name = "Happy Birthday";
@splitted_arr = split /\s+/,$name;

#join in array
$name = join(',',@splitted_arr);

print "\nname = $name\n";

sub find_division{
   my ($self,$a,$b) = @_;
   ##print Dumper $self;
   #exit;
   my $c = $a*$b;
   print "\noutput is $c\n\n";
}
sub main{
=cut	
	my $ob = WWW::Mechanize->new();
	$ob->add_header("Accept" => "text/html,application/xhtml+xm…plication/xml;q=0.9,*/*;q=0.8");
	$ob->add_header("Accept-Encoding" => "gzip, deflate, br");
	$ob->add_header("Accept-Language" => "en-US,en;q=0.5");
	$ob->add_header("Host" => "www.cleartrip.com");
	$ob->add_header("Upgrade-Insecure-Requests" => "1");
	$ob->add_header("User-Agent" => "Mozilla/5.0 (Windows NT 10.0; …) Gecko/20100101 Firefox/59.0");
	
	my $result = $ob->get("https://www.cleartrip.com/");
	
	#$result = ($result,UT)
	my $content = decode_UTF8($result->content());
	#my $content = decode('iso-8859-1', $result->content());
	#print Dumper $content;
	open(FILE,">result.txt");
	#while($result){
		print FILE $content;
	#}
	close(FILE);
	exit;
=cut
	
	my $firstVar = 15;
	my $secondVar = $firstVar << 1; #### left-shift operator moves bit in left, generally each left-shift double the value
	my $thirdVar = $firstVar >> 1;  #### Right-shift operator moves bit in Right, generally each right-shift half the value
	#print $thirdVar;
	#exit;
   #print Dumper %SIG;
   #print "\nAll modules\n";
   #print Dumper %INC;
   
   #exit;
   print "\nIn main program---->started execution##\n\n";
   $logger->warn("file continue");
   my $pid = fork();
   if( $pid == 0 ) {
      print "This is child process\n";
      print "Child process is existing\n";
      exit 0;
   }
   my $hash = {
         'abc' => '123',
         'def' => '456',
      };
   
   print Dumper $hash;
   foreach my $key (keys %$hash){
      $hash->{$key} = "my key" if ($hash->{$key} =~ m!\d+!);
   }
   my @array = ('a','b','c','d');
   print Dumper scalar(@array);
   print "\nthe other way around is to calculate length\n";
   print $#array;
   #exit;
   print "\n\n";
   print Dumper $hash;
   print "This is parent process and child ID is $pid\n";
   print "Parent process is existing\n";
   $obj->find_division(5,10);
   my $string  = "Hello from MSys technologies";
   $string =~ m!Msys!is;
   print "\nExact match - ";
   print $&;
   print "\npost match - ";
   print $';
   print "\npre match - ";
   print $`;
   my $password = "temp123";
   print "\nencoded password - ".encode_base64($password);
   print "\n\n";
   print my $str  = uri_escape("10% is good enough");
   my $hash_emp = {
			'1'=> {'Fname' => 'Uttam',
				'Lname' => 'Agarwal',
				'Age'	=> '24',
				'Gender'=> 'Male',
				'course'=> [{'101'=>'EE',
							 '104' => 'EEC',
							},
							{'102'=>'CS'},
							{'103' => 'IT'},
							],
				},
			'2'=> {'Fname' => 'Atul',
				'Lname' => 'Rasekar',
				'Age'	=> '26',
				'Gender'=> 'Male',
				'course'=> [{'102'=>'CS'},
							{'103' => 'IT'},
							],
				},
			};
	#print "\nHash size". scalar keys %$hash_emp."\n";
	foreach my $key (keys %$hash_emp){
		print "\nname of the employee having id ". $key ." is - ";
		foreach my $key_inner (keys %{$hash_emp->{$key}}){
			print $hash_emp->{$key}->{$key_inner} if ($key_inner eq 'Fname');
			if ($key_inner eq 'course'){
				foreach my $course(@{$hash_emp->{$key}->{$key_inner}}){
					foreach my $sub(keys %$course){
						#print Dumper $sub;
						print "\napplied for sub id - $sub and code $course->{$sub}";
					}
				}
				
			}
		}
		
	#$logger->debug("foreach");
	}
	
}
#my $result = system("ls -ltr");
#exec("ls");
#`ls`;
#print $result;
my @array = ('2','3','4','5','6');
my @larger_number = grep {$_>3}@array;
print "\n@larger_number\n";
my %hash = map{$_=>1}@array;
@array = ('uttam','ramesh','praveen','atul','akshay','bharat');
my @sorted_arry = sort(@array);
#print "\nlogger dumper : \n";
#print Dumper $logger;
#print "\n\n";
print "\nsorted array - @sorted_arry\n";
my @a1 = ('1','2','3'); 
my @a2 = ('4','5','6');
print "\na3 is  - ";
my (@a3) = join (',',@a1,@a2);
print @a3;
my $var = "Welcome to msys technologies - msys is growing organization in storage and virtualization domain";
my $count = 0;

my ($value) = $var =~ m/(?:.*?msys){2}(.*)/is;
#my ($value) = $var =~ m/(msys.*)/is;
my @a4 = (23,43,54,12,34,55,66,334,65,7);
print "\nlength is $#a4";
#exit;

my @a5;
my $number;
for(my $i=0; $i<5 ; $i++){
	my $offset = rand @a4;
	$number = $a4[$offset];
	splice @a4,$offset,1;
	#print "\n$number\n";
	push(@a5, $number);
}
######LWP::UserAgent
my $agent = LWP::UserAgent->new;
#my $response = $agent->get("https://google.co.in");
#print "\n\n################################\n\n";
#print Dumper $response;
#use LWP::UserAgent;
#use Data::Dumper;
#my $url = "https://www.google.com";
#my $agent = LWP::UserAgent->new();
#my $content = $agent->get($url);
#print Dumper $content;

print "\n\n################################\n\n";

####################
print Dumper @a5;
print "\n$value\n";
print "\n\n";
######sent mail using perl Script
=cut
###getting error may be not working with straberry Perl - don't know
my $to = 'utagarwal510@gmail.com';
my $cc = '';
my $from = 'noreply@gmail.com';
my $subject = 'Test Email';
my $message = 'This is test email sent by Perl Script';
my $host = 'smtp.gmail.com';

my $msg = MIME::Lite->new(
                 From     => $from,
                 To       => $to,
                 Cc       => $cc,
                 Subject  => $subject,
                 Data     => $message
                 );
                 
#MIME::Lite->send('smtp', $host, Timeout=>60);
$msg->send;

my %mail = (To      => 'utagarwal510@gmail.com',
            From    => 'test@gmail.com',
            Message => "This is a very short message"
           );

  sendmail(%mail) or die $Mail::Sendmail::error;

print "OK. Log says:\n", $Mail::Sendmail::log;
print "\nEmail Sent Successfully\n";
#################################
=cut
print "Enter a number to convert: ";
chomp(my $decimal = <STDIN>);
#my $decimal=23;
print "\nConverting number to binary...\n";
my $decimal1 = $decimal;
my $binary = '';
while($decimal>1){
my $reminder = $decimal%2;
$decimal = $decimal/2;
$binary = $reminder.$binary;
print "\n###########binary = $binary#########\n";
} 
print "\n\n";
print $binary;
print "\n\n";
my $str=16;
#print "\n\n$str\n";

my $bytes=unpack("b*",$str); # hex string 
#print "\n\n##########$bytes#########\n";

my $str2 = pack("B*", $bytes);
#print "\n\n###$str2#########\n";

printf "%b\n", $decimal1;
my %hash_temp1 = (
				"name" =>	"Uttam",
				"DOB"	=>	"12 Aug",
				"Age"	=>	"24",
				"ID"	=>	"1095",
			);

my $key1 = keys  %hash_temp1;
print "\n\n";
print Dumper $key1;
print "\n\n";
print "hash size - ".scalar values %hash_temp1;
my %hash12 = reverse %hash_temp1;
print Dumper %hash12;

exit;
#print my $size = scalar@$key1; 
#print my $size = scalar@$key1; 
#print "\n using pack $decimal-----> \n";
#my $decimal_1 = pack("H*",$decimal);
#print "\n\n converted value = $decimal_1";
print Dumper @ARGV;	

######reverse each word of a string########
my $str_to_rev = "I am a human being";

my @arr = split(/\s+/,$str_to_rev);
my @reverse_arr;
foreach my $val(@arr){
	$val = reverse($val);
	push(@reverse_arr,$val);
	}
$str_to_rev = join(' ',@reverse_arr);
print "\nreverse string = $str_to_rev\n";
############################################

#############################################
#convert a  number into words - eg - 15 : one five
#############################################

print "\nInput a number\n";
chomp(my $num1 = <STDIN>);
my $hash = {
	1 	=> 	'one',
	2 	=> 	'two',
	3	=>	'three',
	4	=>	'four',
	5	=>	'five',
	6	=>	'six',
	7	=>	'seven',
	8	=>	'eight',
	9	=>	'nine',
};
my @a = split(//,$num1);
$num1 = join(' ',map{$hash->{$_}}@a);
print "\n$num1\n";
##############################################
#Find the subset from below array having sum of element of array equal to input number. 
##############################################

my $element = [0,1,2,3,5,6,7,11,12,14,20];

print "\nEnter a number for sum: \n";
chomp(my $num = <STDIN>);
my $len = scalar(@$element);
my $c = 0;
foreach my $val(@$element){	
	for(my $i = $c; $i<$len; $i++){
		print "($val,$element->[$i])" if($val + $element->[$i] == $num);
	}
	$c++;
}
exit;
##############################################
opendir(DIR,".");
my (@files) = readdir(DIR);
print "\nall files - @files\n";
closedir(DIR);

foreach my $file(@files){
	print "\n$file\n";
	next if ($file !~ m!logger!is);
	open(FILE,$file);
	binmode(FILE);
	while(<FILE>){
		print $_;
		#print "\n";
	}
	close(FILE);
}
#####create a xlsx sheet
#my $workbook  = Excel::Writer::XLSX->new( 'simple.xlsx' );
#my $worksheet = $workbook->add_worksheet("Employee");
#$workbook->close();

# Create a new Excel file
my $FileName = "Report.xls";
my $workbook1 = Spreadsheet::WriteExcel->new($FileName);

# Add a worksheet
my $worksheet1 = $workbook1->add_worksheet('Employee_data');

# Define the format and add it to the worksheet
my $format = $workbook1->add_format(
center_across => 1,
bold => 5,
size => 10,
border => 2,
color => 'black',
#bg_color => 'blue',
border_color => 'black',
align => 'vcenter',
);

# Change width for only first column
$worksheet1->set_column(0,0,20);

# Write a formatted and unformatted string, row and column
# notation.
my @data = (['Uttam','Agarwal','25','Perl'],['Akshay','Kathole','27','Perl'],['Anik','Jha','25','PHP'],['Mudit','Mathur','27','Salesforce']);
my @header = ('Fname','Lname','Age','Technology');
my $row = 0;
my $column = 0;
foreach my $value(@header){
	$worksheet1->write($row,$column,$value,$format);
	$column++;
}
$row = 1;
foreach my $value(@data){
	$column = 0;
	foreach my $single_value(@$value){
		$worksheet1->write($row,$column,$single_value,$format);
		$column++;
	}	
	$row++;
}
#$worksheet1->write(0,0, "PERL FLAVOURS", $format);
#$worksheet1->write(1,0,"Active State PERL");
#$worksheet1->write(2,0,"Strawberry PERL");
#$worksheet1->write(3,0,"Vannila PERL");
$workbook1->close();

print "\nend from script\n\n";
#exit 0;
1;