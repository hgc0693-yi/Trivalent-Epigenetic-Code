use strict;
use warnings;

open(output_FILE,"> 1k_windows_chrY.txt") or die "$!";

my $chr_length = 59373566;
my $window_start_pos = 1;
my $window_end_pos;

while ($window_start_pos < $chr_length) {
      $window_end_pos = $window_start_pos + 999;
      print output_FILE "chrY\t$window_start_pos\t$window_end_pos\n";
      $window_start_pos = $window_end_pos + 1;  
}

close(output_FILE);



