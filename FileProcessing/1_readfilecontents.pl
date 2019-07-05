#!/usr/local/bin/perl -w


######################################################################
#
#   Author: Vamsi Ravi
#   Email: ivamsiravi@gmail.com
#
######################################################################
#
#   Run like this:
#   $ perl readfilecontents.pl -F [input_file]
#
######################################################################

use strict;
use warnings;
use utf8;

use Getopt::Std qw( getopts );
use vars qw( $opt_F $opt_i );
# use File::Slurp;

my $returncodeinputoptions;
my $SUPPRESS_IGNORE;
my $FILEPATH;
my $content;

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

# $content = read_file( $FILEPATH ) ;

open(my $fh, '<:encoding(UTF-8)', $FILEPATH) or die "Could not open file '$FILEPATH' $!";
local $/;
$content = <$fh>;
close($fh);

print ("File Content    :   ".$content."\n");
