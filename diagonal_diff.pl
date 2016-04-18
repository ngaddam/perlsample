#!/usr/bin/perl

=begin
Given a square matrix of size N×NN×N, calculate the absolute difference between the sums of its diagonals.

Input Format

The first line contains a single integer, NN. The next NN lines denote the matrix's rows, with each line containing NN space-separated integers describing the columns.

Output Format

Print the absolute difference between the two sums of the matrix's diagonals as a single integer.

Sample Input

3
11 2 4
4 5 6
10 8 -12
Sample Output

15
Explanation

The primary diagonal is: 
11
      5
            -12

Sum across the primary diagonal: 11 + 5 - 12 = 4

The secondary diagonal is:
            4
      5
10
Sum across the secondary diagonal: 4 + 5 + 10 = 19 
Difference: |4 - 19| = 15
=cut



#https://www.hackerrank.com/challenges/diagonal-difference/submissions/code/19495365
# solution 

$n = <STDIN>;
chomp $n;
$a_i = 0;
@a = ();
$prim_diag_sum=0;

while($a_i < $n){
   my $a_temp = <STDIN>;
   my @a_t = split / /,$a_temp;
   chomp @a_t;
   push @a,\@a_t;
   
   # grab the first index number, 2nd array 2nd index number, 3rd array 3rd index number and calculate sum.
   $prim_diag_sum += $a_t[$a_i];
   $sec_diag_sum  += $a_t[$#a_t - $a_i];
   $a_i++;
   
}

if ($sec_diag_sum > $prim_diag_sum)
{
   print $sec_diag_sum - $prim_diag_sum;
}
else
{
  print $prim_diag_sum - $sec_diag_sum;
}
