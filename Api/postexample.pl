#!/usr/bin/perl -w
use strict;
use warnings;

use HTTP::Request;
use LWP::UserAgent;

# TO DO
# Read requests from the request each transaction file line by line
# Pass the req to the $json as request body and loop till we get all the responses.
# Write to a file using - print($response->decoded_content) > something.out

$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;

my $uri = 'https://jsonplaceholder.typicode.com/posts';
my $reqbody = '{"title": "foo", "body": "bar", "userId": 1}';
my $req = HTTP::Request->new( 'POST', $uri );
$req->header( 'Content-Type' => 'application/json; charset=UTF-8' );
$req->content( $reqbody );

my $lwp = LWP::UserAgent->new;
my $response = $lwp->request( $req );

if ( $response->is_success() ) {
    print("Body: " . $response->decoded_content);
    print("\n");
    print("Status Code: " . $response->code());
    print("\n");
    print ("Headers: ". $response->headers()->as_string);
}
else {
    print("ERROR Status Code: " . $response->status_line());
}
