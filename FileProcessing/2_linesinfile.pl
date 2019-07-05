#!/usr/local/bin/perl -w


######################################################################
#
#   Author: Vamsi Ravi
#   Email: ivamsiravi@gmail.com
#
######################################################################
#
#   Run like this:
#   $ perl linesinfile.pl -F [input_file]
#
######################################################################

use strict;
use warnings;
use utf8;

use Getopt::Std qw( getopts );
use vars qw( $opt_F $opt_i );

my $returncodeinputoptions;
my $SUPPRESS_IGNORE;
my $FILEPATH;
my $numberoflines;

$returncodeinputoptions = getopts('F:i');

if ( !$returncodeinputoptions ) {
    print "getops had a problem; exiting\n";
    return;
}

if ( defined($opt_F) && $opt_F ne "" ) {
    $FILEPATH = $opt_F;    # Set file path
}else {
    print "file path or file not defined\n";
    return;
}

if ( defined($opt_i) ) {
    $SUPPRESS_IGNORE = 1;
}else {
    $SUPPRESS_IGNORE = 0;
}
$SUPPRESS_IGNORE = 1;


open(my $fh, '<:encoding(UTF-8)', $FILEPATH) or die "Could not open file '$FILEPATH' $!";
$numberoflines++ while <$fh>;
while(my $line = <$fh>){
    chomp $line;
    #   You can manipulate each line here
}

print ("Total Lines :".$numberoflines."\n");

close($fh);
