use strict;
use warnings;

open(input_FILE,'/home/yi-maru/histone/H4K8ac/fibro/fibro_1/input/GSM521926_UCSD.IMR90.Input.LL-I1.bed') or die "$!";  
open(output_FILE,'> pre_makeTagDirectory_H4K8ac_fibro_1_input.bed') or die "$!";

my $row;
my @col;

while ($row = <input_FILE>) {

	chomp($row);
	@col = split(/\t/,$row);
	print output_FILE "$col[0]\t$col[1]\t$col[2]\t$col[3]\t\*\t$col[4]\n";

}

close(input_FILE);
close(output_FILE);



