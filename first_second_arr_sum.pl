#!/usr/bin/perl
    use POSIX;

# https://www.hackerrank.com/challenges/sherlock-and-array
=begin
Watson gives Sherlock an array AA of length NN. Then he asks him to determine if there exists an element in the array such that the sum of the elements on its left is equal to the sum of the elements on its right. If there are no elements to the left/right, then the sum is considered to be zero. 
Formally, find an ii, such that, AA1+A+A2...A...Ai-1 =A=Ai+1+A+Ai+2...A...AN.

Input Format 
The first line contains TT, the number of test cases. For each test case, the first line contains NN, the number of elements in the array AA. The second line for each test case contains NN space-separated integers, denoting the array AA.

Output Format 
For each test case print YES if there exists an element in the array, such that the sum of the elements on its left is equal to the sum of the elements on its right; otherwise print NO.

Constraints 
1≤T≤101≤T≤10 
1≤N≤1051≤N≤105 
1≤A1≤Ai ≤2×104≤2×104 
1≤i≤N1≤i≤N
Sample Input

2
3
1 2 3
4
1 2 3 3
Sample Output

NO
YES
=cut

    my $cnt = 0;
    my $in  = 0;
    print "Enter number of test cases and then size of each array and then array and then next testcase...\n";
    while (<STDIN>) {
         
         if ($cnt == 0) 
         { 
            $cnt = $_ ;
            next;
         }
         
        last if ($in++ == ($cnt*2));
         
        if (($in % 2) == 0)
        {
           my @arr = split (/\s/, $_);
           
           #calculate mid index ;
           my $mid_in = floor(scalar(@arr) / 2);
           
           @tmp_arr = @arr;
           my $first_sum = eval join '+', splice(@tmp_arr, 0, $mid_in);
         
           @tmp_arr = @arr;
           my $second_sum = eval join '+', splice(@tmp_arr, ($mid_in+1));
          
           ($first_sum == $second_sum) ? print "YES\n" : print "NO\n";
          
        }

        
    }