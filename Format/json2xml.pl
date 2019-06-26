
#!/usr/bin/perl

use strict;
use warnings;

binmode STDOUT, ":utf8";
use utf8;

use JSON;
use XML::Simple;

# Read input file in json format
my $json;
{
    local $/; #Enable 'slurp' mode
    open my $fh, "<", "data.json";
    $json = <$fh>;
    close $fh;
}

# Convert JSON format to perl structures
my $data = decode_json($json);

# Output as XML
print "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n";
print XMLout($data);
print "\n";
 
