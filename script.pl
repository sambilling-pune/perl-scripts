#! /usr/bin/perl
use strict;
use lib "C:/Strawberry/cpan";
use lib "C:/Strawberry/lib";
#use App;
#use App::Options;
#my $option;
use warnings;
use Data::Dumper;

use App::Options (
 options => [ "dbname", "dbuser", "dbpass" ],
	option => {
		dbname => {
			env => "DBNAME",
			default => "devel",
		},
		dbuser => {
			env => "DBUSER;DBI_USER",
			default => "Oracle",
		},
		dbpass => {
			env => "", # password in %ENV is security breach
		},
	},
);
print "\n$App::options{dbname}\n";
print "\n$App::options{dbuser}\n"; 
#my %option1 = %App::options;
#print Dumper %option1;
#print "\n$option1{dbname}\n";
#print "\n$option1{dbuser}\n";
#print %option1;
#exit;
 BEGIN {
        use App::Options;
        #App::Options->init();  # reads into %App::options by default
    }

    print "Options:\n";
    foreach my $var (sort keys %App::options) {
        printf "    %-20s => [%s]\n", $var, $App::options{$var};
    }
exit;
	#print "\nHello\n";
#print @ARGV;
#print "\n$dbname\n";
my $pid = fork();
if( $pid == 0 ) {
   print "This is child process\n";
   print "Child process is existing\n";
   exit 0;
}
print "This is parent process and child ID is $pid\n";
print "Parent process is existing\n";
exit 0;