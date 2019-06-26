# Basics
This will cover the basic perl script overview and execution of simple scripts. 


## Quiz


1. What do Perl's fans appreciate about Perl? 
    - Most of the features available in C are in Perl. 
    - Good for quick solution. 
    - sed and awk
2. What does the Perl interpreter do?
    - Read and execute the Perl script line by line. 
3. Define the following terms: 
    a. statement - Collection of tokens as per the legal perl policy
    b. token - basic unit of the statement which can be an operator or scalar variables or value or special variable. 
    c. argument
    d. error recovery
    e. standard input file - Or <STDIN> can be used to input the required values during the perl script execution run time.
4. What is a comment, and where can it appear?
    -   Comment is the line/ block of lines which will not be executed during the run time.
    - Single Line Comments start with #
    - Multi Line Comments start with =begin and end with =cut 
5. Where is Perl usually located on a UNIX machine?
    - Usually it is located in the /usr/local/bin/perl
6. What is a header comment, and where does it appear in a program?
    - Header comment has the description of the perl location. 
    - Header Comment is the first line of code in every perl script. 
    - #!/usr/bin/perl -w
7. What is a library function?
    -   Library function are inbuilt functions provided with interpreter which can be used to perform a useful task.

## Exercises

1. Modify program1_1 to print the input line twice.
    -   Refer to Basics/exercises/1.pl
2. Modify program1_1 to read and print two different input lines.
    -   Refer to Basics/exercises/2.pl
3. Modify program1_1 to read two input lines and print only the second one.
    -   Refer to Basics/exercises/3.pl
4. BUG BUSTER: What is wrong with the following program?
     #!/usr/local/bin/perl
     $inputline = <STDIN>;
     print ($inputline)
    -   Semicolon is missing at the line print ($inputline)
5. BUG BUSTER: What is wrong with the following program?
     #!/usr/local/bin/perl
     $inputline = <STDIN>;
     # print my line! print($inputline);
    -   Nothing wrong with the program, it just doesn't print the value as it is commented. 
6. What does the following program do?
     #!/usr/local/bin/perl
     $inputline = <STDIN>;
     $inputline2 = <STDIN>;
     print ($inputline2);
     print ($inputline);
    -   Print he second value entered first and then the first value entered second.