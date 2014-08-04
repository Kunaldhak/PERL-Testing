use strict;
use warnings;

# use module
use XML::Simple;
use Data::Dumper;

# create object
my $xml = new XML::Simple;

# read XML file
my $data = $xml->XMLin("XMLSimpleTest.xml");

# access XML data
print $data->{cd}[0]{country};
print $data->{cd}[0]{artist};
print $data->{cd}[0]{price};
print $data->{cd}[0]{title};