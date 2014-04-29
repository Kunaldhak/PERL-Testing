use strict;
use warnings;
use Data::Dumper;
use XML::Simple;
use XML::LibXML;


#my $filename = "XMLDOC.xml";

my $dir = 'D:\\EN-US';
opendir my $dh, $dir or die "can not open $dir: $!";
foreach my $file ( readdir $dh ) {
	next if($file =~ /^\.$/);
    next if($file =~ /^\.\.$/);
    
#	my $xml = XMLin( $file );
#	say Data::Dumper->Dump( [ $xml ], [ '$xml' ] );
#	print Dumper($xml);
	my $parser = XML::LibXML->new();
    my $xmldoc = $parser->parse_file($file);

   for my $sample ($xmldoc->findnodes('/record/item/value')) {
    for my $property ($sample->findnodes('./*')) {
        print $property->nodeName(), ": ", $property->textContent(), "\n";
    }
    print "\n";
}
	
	
	
	print "one file in $dir is file $file \n";
}
closedir $dh;

