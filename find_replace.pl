use strict;
use XML::LibXML;

my $file="D:\\EN-US\\dcr_beverage_0701_minute_maid_juice_6_bottl_r_2014_01_06.xml";
my $dom = XML::LibXML->load_xml(location =>$file);
for my $id ($dom->findnodes('//value[string()="Bottle"]')) {
    $id->removeChildNodes;
    $id->appendText('DEF');
}

print $dom->toString


