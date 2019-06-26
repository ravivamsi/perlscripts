#!/usr/local/bin/perl -w

=begin

chop function is used to trim the last or right end charecter of the line of text 

=cut


print("\n#########################################\n");
print("Enter String :   ");
$stringvalue=<STDIN>;
print("Before chop  :   ");
print($stringvalue);
print("After chop   :   ");
$choppedstring=chop ($stringvalue);
print($choppedstring);
print("\n#########################################\n");



print("\n#########################################\n");
print("Enter Integer :   ");
$integervalue=<STDIN>;
print("Before chop  :   ");
print($integervalue);
print("After chop   :   ");
$choppedinteger=chop ($integervalue);
print($choppedinteger);
print("\n#########################################\n");








