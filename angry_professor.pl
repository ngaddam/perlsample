#!/usr/bin/perl

#https://www.hackerrank.com/challenges/angry-professor/submissions/code/19524410
=begin
A Discrete Mathematics professor has a class of NN students. Frustrated with their lack of discipline, he decides to cancel class if fewer than KK students are present when class starts.

Given the arrival time of each student, determine if the class is canceled.

Input Format

The first line of input contains TT, the number of test cases.

Each test case consists of two lines. The first line has two space-separated integers, NN (students in the class) and KK (the cancelation threshold). 
The second line contains NN space-separated integers (a1,a2,…,aNa1,a2,…,aN) describing the arrival times for each student.

Note: Non-positive arrival times (ai≤0ai≤0) indicate the student arrived early or on time; positive arrival times (ai>0ai>0) indicate the student arrived aiai minutes late.

Output Format

For each test case, print the word YES if the class is canceled or NO if it is not.

Constraints

1≤T≤101≤T≤10
1≤N≤10001≤N≤1000
1≤K≤N1≤K≤N
−100≤ai≤100,where i∈[1,N]−100≤ai≤100,where i∈[1,N]
Note 
If a student arrives exactly on time (ai=0)(ai=0), the student is considered to have entered before the class started.

Sample Input

2
4 3
-1 -3 4 2
4 2
0 -1 2 1
Sample Output

YES
NO
Explanation

For the first test case, K=3K=3. The professor wants at least 33 students in attendance, but only 22 have arrived on time (−3−3 and −1−1). Thus, the class is canceled.

For the second test case, K=2K=2. The professor wants at least 22 students in attendance, and there are 22 who have arrived on time (00 and −1−1). Thus, the class is not canceled.
=cut

$t = <STDIN>;
chomp $t;
for my $a0 (0..$t-1){
    $n_temp = <STDIN>;
    @n_arr = split / /,$n_temp;
    $n = $n_arr[0]; 
    chomp $n;
    $k = $n_arr[1];
    chomp $k;
    $a_temp = <STDIN>;
    @arr = split / /,$a_temp;
    chomp @arr;
    
    my @zero_less = grep {$_ <=0} @arr;
    my @zero_great = grep {$_ > 0} @arr;
    
    if (scalar(@zero_less) >= $k)
    {
       print "NO\n";
    }
    else
    {
      print "YES\n";
    }
}
