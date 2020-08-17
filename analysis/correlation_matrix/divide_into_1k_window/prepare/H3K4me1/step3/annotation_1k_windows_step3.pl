use strict;
use warnings;

my @whole_chr_no = ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'Y');

foreach my $input_chr_no (@whole_chr_no) {

    open(window_FILE,"/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/hmC/step1/1k_windows_chr$input_chr_no.txt") or die "$!";
    open(annotate_FILE,"> annotate_1k_windows_chr$input_chr_no.txt") or die "$!";

    while (my $window_row = <window_FILE>) {
	chomp($window_row);
	my @window_col = split(/\t/,$window_row);
        my $chr = $window_col[0];
	my $start_pos = $window_col[1];
	my $end_pos = $window_col[2];

	&check_peak_file($chr, $start_pos, $end_pos, $input_chr_no);
    }
    
    close(window_FILE);
    close(annotate_FILE);

}




sub check_peak_file {
    my ($chr, $start_pos, $end_pos, $input_chr_no) = @_;
    open(peak_FILE,"/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K4me1/step2/peaks_in_chr$input_chr_no.txt") or die "$!";
    my $normalized_tag_count = 0;

    while (my $peak_row = <peak_FILE>) {
	chomp($peak_row);
	my @peak_col = split(/\t/,$peak_row);

	if ($start_pos < $peak_col[2] and $end_pos > $peak_col[1]) {
	    $normalized_tag_count += $peak_col[3];
	}

    }

    print annotate_FILE "$chr\t$start_pos\t$end_pos\t$normalized_tag_count\n";
    close(peak_FILE);

}


### combine all chr files ###

open(output_FILE,"> annotate_1k_windows_whole_chr.txt") or die "$!";     ## file clear ##
close(output_FILE);                                                       ## file clear ##

foreach my $input_chr_no (@whole_chr_no) {

    open(input_FILE,"annotate_1k_windows_chr$input_chr_no.txt") or die "$!";
    open(output_FILE,">> annotate_1k_windows_whole_chr.txt") or die "$!";
    
    while (my $line = <input_FILE>) {
	print output_FILE $line;
    }

    close(input_FILE);
    close(output_FILE);
    
}







