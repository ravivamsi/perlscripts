#!/usr/bin/perl -w

=begin usage
Run the script as below
$ perl runtimeinput.pl
=cut

=begin sampleoutput
$ perl runtimeinput.pl
What
You have entered : What
=cut

$input = <STDIN>;

print("You have entered : ".$input);