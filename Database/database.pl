#!/usr/bin/perl 
use warnings ;
use strict ;
use DBI;

$\="\n";

print "Connecting to DB..";

my $dbh = DBI->connect('dbi:Oracle:xe',  'scott', 'tiger') or
          die "Cannot connect to DB => " . DBI->errstr;
my $sth = $dbh->prepare("select first_name, last_name from students where id = 10000") or
          die "Couldn't prepare statement: " . $dbh->errstr;
$sth->execute();

while (my ($f_name, $l_name) = $sth->fetchrow_array()){
    printf "First Name : %-10s Last Name : %-20s\n" , $f_name,  $l_name;
}
#$sth->finish();
$dbh->disconnect();
