#!/bin/perl
use strict;
use warnings;

my $file = "CLS_norm_15.dat";
my $file2 = "combined_whole_factors.txt";

my @CLS1=`cat $file`;
chop(@CLS1);
#print join("\n", @CLS1);

####
my %EXPRE;
my @data;
my $gene;
my $fibro_ppm;
my $es_ppm;
my $sudo;
my $fc;
my $row;
my @col;
my $line;
#####

undef(%EXPRE);      ### delete all key and value from hash "EXPRE"
open(IN, $file2);
$line = <IN>;
while($line = <IN>){
    chop($line);
    undef(@data);
    @data = split(/\s+/, $line);

    $gene = $data[0];
    $fibro_ppm = $data[1];
    $es_ppm = $data[2];

    $EXPRE{ $gene } = $es_ppm . "\t". $fibro_ppm;

##    print "$EXPRE{ $gene }";
}
close(IN);


##################################


open(output_FILE,'> for_box_plot_norm_15.txt') or die "$!";

$sudo = 0.0001;
foreach $row (@CLS1){

#####

    @col = split(/\t/, $row);
    $gene = $col[0];

#####

    if($EXPRE{ $gene } eq ""){
	print $gene . " was not found from $file2"  . "\n";
	next;
    }

    ($es_ppm, $fibro_ppm ) = split(/\t/, $EXPRE{ $gene });

    if($es_ppm == 0 && $fibro_ppm == 0){ next; }      ### Important

    $fc = log( ($es_ppm + $sudo) / ($fibro_ppm + $sudo) ) / log(2);
    $fc = sprintf("%.3f", $fc);                       ### cut off to 3 decimal places(refer http://d.hatena.ne.jp/kaz-coz/20120104/1325692066)

    print output_FILE $gene . "\t" . $EXPRE{ $gene } . "\t" . $fc . "\n";


}
exit;

close(output_FILE);


