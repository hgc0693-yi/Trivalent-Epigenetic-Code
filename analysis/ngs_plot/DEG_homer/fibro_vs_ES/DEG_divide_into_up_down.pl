use strict;
use warnings;

open(input_FILE,'DEG_homer_fibro_vs_ES.txt') or die "$!";  
open(output_FILE1,'> DEG_homer_ES_up.txt') or die "$!";
open(output_FILE2,'> DEG_homer_ES_down.txt') or die "$!";
open(output_FILE3,'> non_DEG_homer.txt') or die "$!";

my $input_row;
my @input_col;

while ($input_row = <input_FILE>) {
        chomp($input_row);
        @input_col = split(/\t/,$input_row);

	if ($input_col[4] eq "gene_id") {
	    next;
	}

	elsif ($input_col[10] == 1) {                    ##### DEG

	    if ($input_col[6] >= 0) {                   ##### up 
		print output_FILE1 "$input_col[4]\n";
	    }

	    else {                                      ##### down
		print output_FILE2 "$input_col[4]\n";
	    }
	}

        elsif (abs($input_col[6]) < 1) {                ##### m.value -- log2(FC)
            print output_FILE3 "$input_col[4]\n";       ###### almost not change 
        }
}


close(input_FILE);
close(output_FILE1);
close(output_FILE2);
close(output_FILE3);


