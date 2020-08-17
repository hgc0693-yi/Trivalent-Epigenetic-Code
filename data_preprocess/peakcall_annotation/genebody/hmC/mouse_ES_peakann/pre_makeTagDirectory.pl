use strict;
use warnings;

## open(input_FILE,'/home/yi-maru/hmC/mouse/ES_2/sample/GSM711882_glib_c_1.bed') or die "$!";  
## open(output_FILE,'> pre_makeTagDirectory_mouse_ES_2_sample.bed') or die "$!";

open(input_FILE,'/home/yi-maru/hmC/mouse/ES_2/input/GSM711884_glib_c_1_ctrl.bed') or die "$!";  
open(output_FILE,'> pre_makeTagDirectory_mouse_ES_2_input.bed') or die "$!";

my $row;
my @col;

while ($row = <input_FILE>) {

	chomp($row);
	@col = split(/ /,$row);
	print output_FILE "$col[0]\t$col[1]\t$col[2]\t$col[3]\t$col[4]\t$col[5]\n";

}

close(input_FILE);
close(output_FILE);



