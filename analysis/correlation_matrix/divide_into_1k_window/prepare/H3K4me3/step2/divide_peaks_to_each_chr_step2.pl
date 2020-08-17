use strict;
use warnings;


## print "Input chr_no\n";         ### kobetsu_nyuryoku
## my $input_chr_no = <STDIN>;     ### kobetsu_nyuryoku
## chomp($input_chr_no);           ### kobetsu_nyuryoku  


my @whole_chr_no = ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'Y');

foreach my $input_chr_no (@whole_chr_no) {

    open(input_FILE,'regions.txt') or die "$!";
    open(output_FILE,"> peaks_in_chr$input_chr_no.txt") or die "$!";

    my $peaks_row;
    my @peaks_col;
    my $chr = "chr$input_chr_no";
    my $start_pos;
    my $end_pos;
    my $normalized_tag_count;

    while ($peaks_row = <input_FILE>) {
	if ($peaks_row =~ /^#/) {
	    next;
	}
	else {
	    chomp($peaks_row);
	    @peaks_col = split(/\t/,$peaks_row);
		
	    if ( $chr eq $peaks_col[1]) {
		$chr = $peaks_col[1];
		$start_pos = $peaks_col[2];
		$end_pos = $peaks_col[3];
		$normalized_tag_count = $peaks_col[5];
		print output_FILE "$chr\t$start_pos\t$end_pos\t$normalized_tag_count\n";
	    }

	}
    }

    close(input_FILE);
    close(output_FILE);

}


