#!/usr/local/bin/perl -w


######################################################################
#
#   Author: Vamsi Ravi
#   Email: ivamsiravi@gmail.com
#
######################################################################
#
#   Run like this:
#   $ perl isemailvalid.pl -e [emailaddress]
#
######################################################################

################### Path to the Local Lib Modules ####################
#   Modules required are installed in ./../library/perl5/
######################################################################

use lib qw(./../library/perl5/);

use strict;
use warnings;
use utf8;

use Email::Valid;
use Getopt::Std qw( getopts );
use vars qw( $opt_e $opt_i );

my $emailaddress;
my $SUPPRESS_IGNORE;
my $returncodeinputoptions;

&main();
exit(0);


###########################################################################
#
#   main()
#
#   Arguments:  none
#   Returns:    nothing
#
###########################################################################


sub main {



    $returncodeinputoptions = getopts('e:i');

    if ( !$returncodeinputoptions ) {
        print "getops had a problem; exiting\n";
        return;
    }


    if ( defined($opt_e) && $opt_e ne "" ) {
        $emailaddress = $opt_e;    # Set file path
    }
    else {
        print "Email Address Required to Validate\n";
        return;
    }

    if ( defined($opt_i) ) {
        $SUPPRESS_IGNORE = 1;
    }
    else {
        $SUPPRESS_IGNORE = 0;
    }
    $SUPPRESS_IGNORE = 1;



my $validation = Email::Valid->address($emailaddress);

print($validation? 'Valid':'Invalid');

}




