#!/usr/bin/perl -w
use strict;
use warnings;

use HTTP::Request;
use LWP::UserAgent;

$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;

my $uri = 'https://jsonplaceholder.typicode.com/todos/1';

my $req = HTTP::Request->new( 'HEAD', $uri );

my $lwp = LWP::UserAgent->new;
my $response = $lwp->request( $req );

if ( $response->is_success() ) {
  print("Body: " . $response->decoded_content);
  print("\n");

  print("Status Code: " . $response->code());
  print("\n");
  print ("Headers: ". $response->headers()->as_string);
}else {
    print("ERROR Status Code: " . $response->status_line());
}
