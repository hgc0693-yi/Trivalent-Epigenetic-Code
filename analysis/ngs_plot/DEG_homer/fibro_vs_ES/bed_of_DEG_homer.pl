use strict;
use warnings;

open(input_FILE1,'DEG_homer_ES_up_locusplus.txt') or die "$!";
open(input_FILE2,'DEG_homer_ES_down_locusplus.txt') or die "$!";
open(input_FILE3,'non_DEG_homer_locusplus.txt') or die "$!";

open(output_FILE1,'> DEG_homer_ES_up_locusplus.bed') or die "$!";
open(output_FILE2,'> DEG_homer_ES_down_locusplus.bed') or die "$!";
open(output_FILE3,'> non_DEG_homer_locusplus.bed') or die "$!";

my $input_row;
my @input_col;

my @split_col_1;
my @split_col_2;



while ($input_row = <input_FILE1>) {
        chomp($input_row);
        @input_col = split(/ /,$input_row);          ### gene_name, chr number:start_position-end_position
	@split_col_1 = split(/\:/,$input_col[1]);     ### chr number, start_position-end_position
	@split_col_2 = split(/-/,$split_col_1[1]);    ### start_position, end_position

	if ($input_col[0] eq "Gene_name") {
	    next;
	}


	if ($split_col_1[0] =~ /_+/) {               ### remove rows which contains chr*_... 
	    next;
	}


	else {

	    print output_FILE1 "$split_col_1[0]\t$split_col_2[0]\t$split_col_2[1]\t$input_col[0]\n";   ### chr_number, start_pos, end_pos, gene_name(bed format) ###
	}

}

while ($input_row = <input_FILE2>) {
        chomp($input_row);
        @input_col = split(/ /,$input_row);          ### gene_name, chr number:start_position-end_position
	@split_col_1 = split(/\:/,$input_col[1]);     ### chr number, start_position-end_position
	@split_col_2 = split(/-/,$split_col_1[1]);    ### start_position, end_position

	if ($input_col[0] eq "Gene_name") {
	    next;
	}


	if ($split_col_1[0] =~ /_+/) {
	    next;
	}


	else {

	    print output_FILE2 "$split_col_1[0]\t$split_col_2[0]\t$split_col_2[1]\t$input_col[0]\n";   ### chr_number, start_pos, end_pos, gene_name(bed format) ###
	}

}

while ($input_row = <input_FILE3>) {
        chomp($input_row);
        @input_col = split(/ /,$input_row);          ### gene_name, chr number:start_position-end_position
	@split_col_1 = split(/\:/,$input_col[1]);     ### chr number, start_position-end_position
	@split_col_2 = split(/-/,$split_col_1[1]);    ### start_position, end_position

	if ($input_col[0] eq "Gene_name") {
	    next;
	}


	if ($split_col_1[0] =~ /_+/) {
	    next;
	}


	else {

	    print output_FILE3 "$split_col_1[0]\t$split_col_2[0]\t$split_col_2[1]\t$input_col[0]\n";   ### chr_number, start_pos, end_pos, gene_name(bed format) ###
	}

}


close(input_FILE1);
close(input_FILE2);
close(input_FILE3);
close(output_FILE1);
close(output_FILE2);
close(output_FILE3);


