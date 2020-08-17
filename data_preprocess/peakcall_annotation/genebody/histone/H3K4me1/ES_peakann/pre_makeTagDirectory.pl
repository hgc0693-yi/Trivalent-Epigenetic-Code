use strict;
use warnings;

## open(input_FILE,'/home/yi-maru/histone/H3K4me1/ES/ES_5_H1/sample/GSM605312_UCSD.H1.H3K4me1.YL131.bed') or die "$!";
open(input_FILE,'/home/yi-maru/histone/H3K4me1/ES/ES_5_H1/input/GSM605335_UCSD.H1.Input.YL208.bed') or die "$!";

## open(output_FILE,'> pre_makeTagDirectory_H3AK4me1_ES_H1.bed') or die "$!";
open(output_FILE,'> pre_makeTagDirectory_H3AK4me1_ES_H1_input.bed') or die "$!";

my $row;
my @col;

while ($row = <input_FILE>) {

	chomp($row);
	@col = split(/\t/,$row);
	print output_FILE "$col[0]\t$col[1]\t$col[2]\t$col[3]\t\*\t$col[4]\n";

}

close(input_FILE);
close(output_FILE);



