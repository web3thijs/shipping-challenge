#!/usr/bin/perl -w

use CGI;
use DBI;
print CGI::header();

my $dsn = "DBI:mysql:database=test_db;host=mysql;port=3306";
my $dbh = DBI->connect( $dsn, "root", "password" );

my $query = $dbh->prepare("SELECT name FROM Users") ;
$query->execute;

# retrieve the results
while(  my $ref = $query->fetchrow_hashref() ) {
        print $ref->{'name'};
}

print("\n");
print("zzz");
exit;