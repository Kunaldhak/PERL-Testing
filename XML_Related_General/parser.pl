use strict;
use warnings;

use XML::LibXML;

my $filename = "D:\\EN-US\\dcr_beverage_0701_minute_maid_juice_6_bottl_r_2014_01_06.xml";

my $parser = XML::LibXML->new();
my $xmldoc = $parser->parse_file($filename);

for my $sample ($xmldoc->findnodes('/record/item')) {
    for my $property ($sample->findnodes('./*')) {
        print $property->nodeName(), ": ", $property->textContent(), "\n";
    }
    print "\n";
}

