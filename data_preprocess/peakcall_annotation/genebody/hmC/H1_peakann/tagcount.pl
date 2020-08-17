use strict;
use warnings;

open(homer_FILE,'peak_annotation_result_genebody_sorted.txt') or die "$!";
open(output_FILE,'> H1_5hmC_tagcount_only_genebody.txt') or die "$!";

my $peaks_row;
my @peaks_col;
my $gene_name = "";
my $tag_count = 0;

while ($peaks_row = <homer_FILE>) {

	chomp($peaks_row);
        @peaks_col = split(/\t/,$peaks_row);

	if (($peaks_col[7] =~ /^exon/) or ($peaks_col[7] =~ /^intron/) or ($peaks_col[7] =~ /^non-coding/)) {
		
	     if ( $gene_name eq $peaks_col[15]) {
        	$gene_name = $peaks_col[15];
	       	$tag_count += $peaks_col[19];
	     }

	     elsif ($gene_name ne "") {
		print output_FILE "$gene_name $tag_count\n";
		$gene_name = $peaks_col[15];
		$tag_count = $peaks_col[19];
	     }

	     else {
		$gene_name = $peaks_col[15];
		$tag_count = $peaks_col[19];
	     }
         }
}

print output_FILE "$gene_name $tag_count\n";  # print final row

close(homer_FILE);
close(output_FILE);



