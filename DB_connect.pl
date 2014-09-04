#use DBI;
use strict;
my $driver = "mysql";
my $database = "teamsite_test";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "";

#my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;