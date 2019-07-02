# Automatically enables "strict", "warnings", "utf8" and Perl 5.10 features
#!/usr/local/bin/perl -w


######################################################################
#
#   Author: Vamsi Ravi
#   Email: ivamsiravi@gmail.com
#
######################################################################
#
#   Run like this:
#   $ perl simplemojo.pl daemon -l http://localhost:8080
#
######################################################################

################### Path to the Local Lib Modules ####################
#   Modules required are installed in ./../library/perl5/
######################################################################

use lib qw(./../library/perl5/);

use strict;
use warnings;
use utf8;


use Mojolicious::Lite;
 
# Route with placeholder
get '/:foo' => sub {
  my $c   = shift;
  my $foo = $c->param('foo');
  $c->render(text => "Hello from $foo.");
};
 
# Start the Mojolicious command system
app->start;