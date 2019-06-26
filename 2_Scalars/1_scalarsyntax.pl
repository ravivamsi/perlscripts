#!/usr/local/bin/perl -w

=begin Description

Scalar Definition:
Variable consists of charecter $ followed by atleast one letter and first letter followed by $ should be alphabet. 

letters after the first letter can have any combination of alphabets [A-Z],digits [0,9] and underscore [_] .

letter can't have special charecters like ! or . 

Perl variables are case sensitive. Ex: $VAR, $var, $Var are treated as different. 

=cut


$VAR="This value is a string";
$VAR="This string is overrided";
$var=1;
$Var=1.26;

print("\n#########################################\n");
print('Overrided value of $VAR  :   '.$VAR);
print("\n#########################################\n");
print('Integer value of $var    :   ' .$var);
print("\n#########################################\n");
print('Float value of $Var      :   ' .$var);
print("\n#########################################\n");