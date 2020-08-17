use strict;
use warnings;

## open(input_FILE,'/home/yi-maru/histone/H3K27ac/ES/H1/H1_3/sample/GSM466732_UCSD.H1.H3K27ac.LL313.bed') or die "$!";
open(input_FILE,'/home/yi-maru/histone/H3K27ac/ES/H1/H1_3/input/GSM605333_UCSD.H1.Input.LL-H1-I1.bed') or die "$!";

## open(output_FILE,'> pre_makeTagDirectory_H3AK27ac_ES_H1.bed') or die "$!";
open(output_FILE,'> pre_makeTagDirectory_H3AK27ac_ES_H1_input.bed') or die "$!";

my $row;
my @col;

while ($row = <input_FILE>) {

	chomp($row);
	@col = split(/\t/,$row);
	print output_FILE "$col[0]\t$col[1]\t$col[2]\t$col[3]\t\*\t$col[4]\n";

}

close(input_FILE);
close(output_FILE);



