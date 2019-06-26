#!/usr/bin/perl -w

# A Celsius->Fahrenheit Converter

# Print the prompt
print "Please enter a Celsius degree > ";
# Chop off the trailing newline character
chomp($cel = <STDIN>);

$fah = ($cel * 1.8) + 32;

# print value using variable interpolation
print "The Fahrenheit equivalent of $cel degrees Celsius is $fah\n";