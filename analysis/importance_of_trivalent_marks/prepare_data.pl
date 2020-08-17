#!/bin/perl
use strict;
use warnings;

my $file = "combined_whole_factors.txt";

####
my @data;
my $gene_name;
my $fibro_exp;
my $es_exp;
my $fibro_5hmC;
my $es_5hmC;
my $fibro_H3K4me1;
my $es_H3K4me1;
my $fibro_H4K8ac;
my $es_H4K8ac;
my $exp_fc;
my $factor_fc;
my $line;
my $sudo = 0.0001;
#####

open(IN, $file);
$line = <IN>;
open(output_FILE,'> prepared_data_for_5hmC.txt') or die "$!";
print output_FILE "gene_name fc es_exp fibro_exp\n";
while($line = <IN>){
    chop($line);
    undef(@data);
    @data = split(/\s+/, $line);

    $gene_name = $data[0];

    $fibro_exp = $data[1];
    $es_exp = $data[2];

    $fibro_5hmC = $data[7];
    $es_5hmC = $data[3];

    if($fibro_5hmC == 0 && $es_5hmC == 0){ next; }      ### Important
    $factor_fc = log( ($es_5hmC +  $sudo) / ($fibro_5hmC + $sudo) ) / log(2);
    $factor_fc = sprintf("%.3f", $factor_fc);   ## cut off to 3 decimal places

    if($factor_fc < 1){ next; };      ### threshold

    if($fibro_exp == 0 && $es_exp == 0){ next; }      ### Important
    $exp_fc = log( ($es_exp +  $sudo) / ($fibro_exp + $sudo) ) / log(2);
    $exp_fc = sprintf("%.3f", $exp_fc);   ## cut off to 3 decimal places

    print output_FILE $gene_name . "\t" . $exp_fc . "\t" . $es_exp . "\t" . $fibro_exp . "\n";

}
close(IN);
close(output_FILE);

##################################

open(IN, $file);
$line = <IN>;
open(output_FILE,'> prepared_data_for_H3K4me1.txt') or die "$!";
print output_FILE "gene_name fc es_exp fibro_exp\n";
while($line = <IN>){
    chop($line);
    undef(@data);
    @data = split(/\s+/, $line);

    $gene_name = $data[0];

    $fibro_exp = $data[1];
    $es_exp = $data[2];

    $fibro_H3K4me1 = $data[9];
    $es_H3K4me1 = $data[5];

    if($fibro_H3K4me1 == 0 && $es_H3K4me1 == 0){ next; }      ### Important

    $factor_fc = log( ($es_H3K4me1 +  $sudo) / ($fibro_H3K4me1 + $sudo) ) / log(2);
    $factor_fc = sprintf("%.3f", $factor_fc);   ## cut off to 3 decimal places

    if($factor_fc < 1){ next; };      ### threshold

    if($fibro_exp == 0 && $es_exp == 0){ next; }      ### Important
    $exp_fc = log( ($es_exp +  $sudo) / ($fibro_exp + $sudo) ) / log(2);
    $exp_fc = sprintf("%.3f", $exp_fc);   ## cut off to 3 decimal places
    
    print output_FILE $gene_name . "\t" . $exp_fc . "\t" . $es_exp . "\t" . $fibro_exp . "\n";

}
close(IN);
close(output_FILE);

##################################

open(IN, $file);
$line = <IN>;
open(output_FILE,'> prepared_data_for_H4K8ac.txt') or die "$!";
print output_FILE "gene_name fc es_exp fibro_exp\n";
while($line = <IN>){
    chop($line);
    undef(@data);
    @data = split(/\s+/, $line);

    $gene_name = $data[0];

    $fibro_exp = $data[1];
    $es_exp = $data[2];

    $fibro_H4K8ac = $data[10];
    $es_H4K8ac = $data[6];

    if($fibro_H4K8ac == 0 && $es_H4K8ac == 0){ next; }      ### Important

    $factor_fc = log( ($es_H4K8ac +  $sudo) / ($fibro_H4K8ac + $sudo) ) / log(2);
    $factor_fc = sprintf("%.3f", $factor_fc);   ## cut off to 3 decimal places

    if($factor_fc < 1){ next; };      ### threshold

    if($fibro_exp == 0 && $es_exp == 0){ next; }      ### Important
    $exp_fc = log( ($es_exp +  $sudo) / ($fibro_exp + $sudo) ) / log(2);
    $exp_fc = sprintf("%.3f", $exp_fc);   ## cut off to 3 decimal places

    print output_FILE $gene_name . "\t" . $exp_fc . "\t" . $es_exp . "\t" . $fibro_exp . "\n";

}
close(IN);
close(output_FILE);

##################################
