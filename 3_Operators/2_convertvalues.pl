#!/usr/local/bin/perl -w

=begin Description
Simple script to convert the value with conversion factor
=cut 


=begin Usage
$ perl 2_convertkmstomiles.pl
=cut


print("Enter the Value to Convert  :");
$valuetoconvert=<STDIN>;

print("Enter the Conversion Factor :");
$conversionfactor=<STDIN>;

$convertedvalue=$valuetoconvert*$conversionfactor;

print("Converted Value              :");
print($convertedvalue);

