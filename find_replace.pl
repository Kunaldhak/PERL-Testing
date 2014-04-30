use strict;
use XML::LibXML;

my $file="replacetest.xml";
my $dom = XML::LibXML->load_xml(location =>$file);


for my $id ($dom->findnodes('//class[string()="CLass"]')) {
    $id->removeChildNodes;
    $id->appendText('DEF');
}

print $dom->toString