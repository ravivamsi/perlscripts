
#!/usr/bin/perl

use strict;
use warnings;

use XML::XML2JSON;

my $XML = '<test><element foo="bar"/></test>';

my $XML2JSON = XML::XML2JSON->new();

my $JSON = $XML2JSON->convert($XML);

print $JSON;

my $RestoredXML = $XML2JSON->json2xml($JSON);
