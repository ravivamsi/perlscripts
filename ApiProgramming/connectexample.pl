#!/usr/bin/perl -w
use strict;
use warnings;

my $uri = 'https://orbit.theplanet.com/Login.aspx?url=/Default.aspx';
my $json = '{"username":"foo","password":"bar"}';
my $req = HTTP::Request->new( 'POST', $uri );
$req->header( 'Content-Type' => 'application/json' );
$req->content( $json );

my $lwp = LWP::UserAgent->new;
my $response = $lwp->request( $req );

if ( $response->is_success() ) {
    print("Body: " . $response->decoded_content);
}
else {
    print("ERROR Status Code: " . $response->status_line());
}
