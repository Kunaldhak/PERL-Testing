use strict;
use warnings;

use XML::LibXML;

my $filename = "XMLDOC.xml";

my $parser = XML::LibXML->new();
my $xmldoc = $parser->parse_file($filename);

for my $sample ($xmldoc->findnodes('/Statistics/Stats/Sample')) {
    for my $property ($sample->findnodes('./*')) {
        print $property->nodeName(), ": ", $property->textContent(), "\n";
    }
    print "\n";
}
