#!/usr/local/bin/perl -w

######################################################################
#
#   Author: Vamsi Ravi
#   Email: ivamsiravi@gmail.com
#
######################################################################
#
#   Run like this:
#   $ perl mergefiles.pl -F <filename> -S <filename>  > newfile
#
######################################################################

use strict;
use warnings;
use utf8;

use Getopt::Std qw( getopts );
use vars qw( $opt_F $opt_S $opt_i );
# use File::Slurp;

my $returncodeinputoptions;
my $SUPPRESS_IGNORE;
my $F_FILEPATH;
my $S_FILEPATH;
my $content;
my $F_numberoflines;
my $S_numberoflines;
my @F_lines;
my @S_lines;

$returncodeinputoptions = getopts('F:S:i');

if ( !$returncodeinputoptions ) {
    print "getops had a problem; exiting\n";
    return;
}

if ( defined($opt_F) && $opt_F ne "" ) {
    $F_FILEPATH = $opt_F;    # Set file path
}else {
    print "file path or file not defined\n";
    return;
}

if ( defined($opt_S) && $opt_F ne "" ) {
    $S_FILEPATH = $opt_S;    # Set file path
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

#   TODO - Yet to Implement

# Count Lines in $F_FILEPATH
open(my $F_fh, '<:encoding(UTF-8)', $F_FILEPATH) or die "Could not open file '$F_FILEPATH' $!";
$F_numberoflines++ while <$F_fh>;
@F_lines = <$F_fh>;
close $F_fh;


# Count Lines in $S_FILEPATH
open(my $S_fh, '<:encoding(UTF-8)', $S_FILEPATH) or die "Could not open file '$S_FILEPATH' $!";
$S_numberoflines++ while <$S_fh>;
@S_lines = <$S_fh>;
close $S_fh;

# Loop through the highest number 

if($F_numberoflines >= $S_numberoflines){
    for (my $i=0; $i <= $F_numberoflines; $i++) {

        if($i>=$S_numberoflines){
            print $F_lines[$i];
        }else{
            print $F_lines[$i];
            print $S_lines[$i];
        }
        
    }
}else{
    for (my $i=0; $i <= $S_numberoflines; $i++) {

        if($i>=$S_numberoflines){
            print $S_lines[$i];
        }else{
            print $F_lines[$i];
            print $S_lines[$i];
        }
        
    }
}

