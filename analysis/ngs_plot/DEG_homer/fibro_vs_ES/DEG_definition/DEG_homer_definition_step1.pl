use strict;
use warnings;

open(input_FILE,'DEG_homer_fibro_vs_ES.txt') or die "$!";  
open(output_FILE,'> DEG_homer_fibro_vs_ES_color') or die "$!";

my $input_row;
my @input_col;

while ($input_row = <input_FILE>) {
        chomp($input_row);
        @input_col = split(/\t/,$input_row);

	$input_col[11] = 1;  ##### color_code

	if (abs($input_col[6]) > 1) {                 ##### m.value -- log2(FC)
###	    $input_col[15] = 1;

	    if ($input_col[8] < 0.05) {              ##### q-value
		$input_col[11] = 4;  ##### color_code

###		if (abs($input_col[14]) > 2) {
###		    $input_col[15] = 5;                   ##### difference

                print output_FILE "$input_col[6]\t$input_col[8]\t$input_col[11]\n";  ##### log2(FC) , q-value , color_code ##### 

###		}

	    }

	    else {
		print output_FILE "$input_col[6]\t$input_col[8]\t$input_col[11]\n";  ##### log2(FC) , q-value , color_code #####
	    }

	}

        elsif ($input_col[10] > 0.05) { 
###	       $input_col[12] = 6;
	       print output_FILE "$input_col[6]\t$input_col[8]\t$input_col[11]\n";  ##### log2(FC) , q-value , color_code #####
	}

	else {
	       print output_FILE "$input_col[6]\t$input_col[8]\t$input_col[11]\n";  ##### log2(FC) , q-value , color_code #####
	}

}


close(input_FILE);
close(output_FILE);



