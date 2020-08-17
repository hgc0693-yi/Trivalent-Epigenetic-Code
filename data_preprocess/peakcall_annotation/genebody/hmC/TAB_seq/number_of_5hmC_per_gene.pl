use strict;
use warnings;

open(input_FILE,'5hMC_annotated_H1_sorted.txt') or die "$!";

open(output_FILE,'> number_of_5hmC_per_gene.txt') or die "$!";

my $peaks_row;
my @peaks_col;
my $gene_name = "";
my $counter = 0;


while ($peaks_row = <input_FILE>) {

        chomp($peaks_row);
        @peaks_col = split(/\t/,$peaks_row);

        if (($peaks_col[7] =~ /^exon/) or ($peaks_col[7] =~ /^intron/) or ($peaks_col[7] =~ /^non-coding/)) {
                
             if ( $gene_name eq $peaks_col[15]) {
                $gene_name = $peaks_col[15];
                $counter++;
             }

             elsif ($gene_name ne "") {
                print output_FILE "$gene_name $counter\n";
                $gene_name = $peaks_col[15];
                $counter = 1;
             }

             else {
                $gene_name = $peaks_col[15];
                $counter = 1;
             }
         }
}

print output_FILE "$gene_name $counter\n";  # print final row

close(input_FILE);
close(output_FILE);

