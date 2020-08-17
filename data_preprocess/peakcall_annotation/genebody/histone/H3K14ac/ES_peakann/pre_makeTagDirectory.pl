use strict;
use warnings;

open(input_FILE,'/home/yi-maru/histone/H3K14ac/ES/ES_2_H1/input/GSM605334_UCSD.H1.Input.LL-H1-I2.bed') or die "$!";  
open(output_FILE,'> pre_makeTagDirectory_H3K14ac_ES_2_H1_input.bed') or die "$!";

my $row;
my @col;

while ($row = <input_FILE>) {

	chomp($row);
	@col = split(/\t/,$row);
	print output_FILE "$col[0]\t$col[1]\t$col[2]\t$col[3]\t\*\t$col[4]\n";

}

close(input_FILE);
close(output_FILE);



