#!/usr/bin/perl

# https://www.hackerrank.com/challenges/staircase/copy-from/19497509
=begin
Your teacher has given you the task of drawing a staircase structure. Being an expert programmer, you decided to make a program to draw it for you instead. Given the required height, can you print a staircase as shown in the example?

Input 
You are given an integer NN depicting the height of the staircase.

Output 
Print a staircase of height NN that consists of # symbols and spaces. For example for N=6N=6, here's a staircase of that height:

     #
    ##
   ###
  ####
 #####
######
Note: The last line has 0 spaces before it.
=cut
#solution :

$n = <STDIN>;
chomp $n;

for ($i=1; $i<= $n; $i++)
{
  my $str = '';
  for ($j=1; $j<=$i; $j++)
  {
    $str .= "#";
  }
  printf ("%${n}s", $str);
  print "\n";
}
